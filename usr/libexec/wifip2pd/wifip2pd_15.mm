uint64_t sub_10012CD54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_100143300(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_10004AF78(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = Data._Representation.subscript.getter();
    v14 = v13;
    result = sub_1000124C8(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10012CEA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v21 = a3;
  v7 = *(a4 + 40);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v10 = *(v19 + 64);
  __chkstk_darwin();
  v12 = &v18 - v11;
  v22[0] = a1;
  v22[1] = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 16);
  sub_10000AB0C(a1, a2);
  v15 = v22[3];
  result = v14(v22, &type metadata for Data, &protocol witness table for Data, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v15)
  {
    v17 = v19;
    (*(v7 + 40))(v12, v8, v7);
    return (*(v17 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint8_t *sub_10012D044(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v77 = a5;
  v78 = a6;
  *&v76 = a1;
  *(&v76 + 1) = a2;
  v13 = sub_10005DC58(&qword_10058CB98, &unk_100488540);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v75 = &v62 - v16;
  v74 = type metadata accessor for SymmetricKey();
  v17 = *(v74 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v73 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for String.Encoding();
  v20 = *(v80 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v79 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = HIBYTE(a4) & 0xF;
  v81 = a3;
  v82 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v23 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v54 = "Invalid label passed to KDF";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v52, v53, v54, v7, 2u);
    }

LABEL_34:

    sub_10000B02C();
    swift_allocError();
    *v57 = xmmword_1004881C0;
    *(v57 + 16) = 1;
    swift_willThrow();
    return v7;
  }

  if (a7 < 1)
  {
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v54 = "Invalid output bit length passed to KDF";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v24 = static SHA256Digest.byteCount.getter();
  if ((v24 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_39;
  }

  v25 = ceil(a7 / (8 * v24));
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v70 = xmmword_100480A90;
  v89 = xmmword_100480A90;
  if (a7 >> 16)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v26 = v25;
  LOWORD(v86) = a7;
  v71 = sub_10004F3B0(&v86, &v86 + 2);
  v72 = v27;
  v69 = v26;
  if (v26 < 1)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  v62 = a7;
  p_dst = &__dst;
  v67 = (v20 + 8);
  v66 = (v14 + 16);
  v65 = (v14 + 8);
  v64 = (v17 + 8);
  v28 = 1;
  v29 = v73;
  while (1)
  {
    v84 = v28;
    v87 = &type metadata for UnsafeRawBufferPointer;
    v88 = &protocol witness table for UnsafeRawBufferPointer;
    *&v86 = &v84;
    *(&v86 + 1) = p_dst;
    v30 = sub_100029B34(&v86, &type metadata for UnsafeRawBufferPointer);
    v31 = *v30;
    v83 = v9;
    if (v31 && (v32 = v30[1], v33 = v32 - v31, v32 != v31))
    {
      if (v33 <= 14)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v32 - v31;
        memcpy(&__dst, v31, v32 - v31);
        v34 = __dst;
        v35 = v63 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v63 = v35;
      }

      else
      {
        v43 = type metadata accessor for __DataStorage();
        v44 = *(v43 + 48);
        v45 = *(v43 + 52);
        swift_allocObject();
        v46 = __DataStorage.init(bytes:length:)();
        v47 = v46;
        if (v33 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v34 = swift_allocObject();
          *(v34 + 16) = 0;
          *(v34 + 24) = v33;
          v35 = v47 | 0x8000000000000000;
        }

        else
        {
          v34 = v33 << 32;
          v35 = v46 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v34 = 0;
      v35 = 0xC000000000000000;
    }

    sub_100002A00(&v86);
    __dst = v70;
    Data.append(_:)();
    v36 = v79;
    static String.Encoding.ascii.getter();
    v37 = String.data(using:allowLossyConversion:)();
    v39 = v38;
    (*v67)(v36, v80);
    if (v39 >> 60 == 15)
    {
      goto LABEL_45;
    }

    Data.append(_:)();
    sub_100017554(v37, v39);
    Data.append(_:)();
    Data.append(_:)();
    v86 = v76;
    sub_10000AB0C(v76, *(&v76 + 1));
    SymmetricKey.init<A>(data:)();
    v86 = __dst;
    sub_10000AB0C(__dst, *(&__dst + 1));
    type metadata accessor for SHA256();
    sub_10014400C(&qword_10059AB90, &type metadata accessor for SHA256);
    sub_1000BA0A4();
    v40 = v75;
    static HMAC.authenticationCode<A>(for:using:)();
    sub_1000124C8(v86, *(&v86 + 1));
    v87 = v13;
    v88 = sub_10000CADC(&qword_10058DF80, &qword_10058CB98, &unk_100488540);
    v41 = sub_1000297D4(&v86);
    (*v66)(v41, v40, v13);
    sub_100029B34(&v86, v87);
    __chkstk_darwin();
    *(&v62 - 2) = &v89;
    v42 = v83;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v9 = v42;
    sub_1000124C8(v34, v35);
    (*v65)(v40, v13);
    (*v64)(v29, v74);
    sub_1000124C8(__dst, *(&__dst + 1));
    sub_100002A00(&v86);
    if (v69 == v28)
    {
      break;
    }

    if (++v28 == 0x10000)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  v48 = v62;
  v49 = v89;
  sub_10000AB0C(v89, *(&v89 + 1));
  sub_1002B9AE4((v48 + 7) >> 3, v49, *(&v49 + 1), &__dst);
  if ((v48 & 7) == 0 || (v50 = sub_1001433B4(__dst, *(&__dst + 1)), (v50 & 0x100) != 0))
  {
    sub_1000124C8(v89, *(&v89 + 1));
    v55 = v71;
    v56 = v72;
  }

  else
  {
    v51 = v50 & ~(-1 << (v62 & 7));
    sub_10012D9F0();
    if (*(&__dst + 1) >> 62 == 2)
    {
      v58 = *(__dst + 24);
    }

    v59 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
    v87 = v59;
    v88 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
    LOBYTE(v86) = v51;
    LOBYTE(v84) = *sub_100029B34(&v86, v59);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_100002A00(&v86);
    sub_1000124C8(v71, v72);
    v56 = *(&v89 + 1);
    v55 = v89;
  }

  sub_1000124C8(v55, v56);
  v60 = *(&__dst + 1);
  v7 = __dst;
  sub_10000AB0C(__dst, *(&__dst + 1));
  sub_1000124C8(v7, v60);
  return v7;
}

void sub_10012D9F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }

    if (v7 == v6)
    {
      goto LABEL_22;
    }
  }

  if ((sub_100143218() & 0x100) == 0)
  {
    return;
  }

  v8 = *v0;
  v9 = v0[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(v8 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v9);
    v12 = v8 >> 32;
    if (!v10)
    {
      v12 = v11;
    }
  }

  if (__OFSUB__(v12, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_10014316C(v12 - 1);
}

uint64_t sub_10012DAB4(uint64_t a1)
{
  v248 = type metadata accessor for Logger();
  v246 = *(v248 - 8);
  v3 = *(v246 + 64);
  __chkstk_darwin();
  *&v250 = &v222 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v229 = *(AssociatedTypeWitness - 8);
  v230 = AssociatedTypeWitness;
  v8 = *(v229 + 64);
  __chkstk_darwin();
  v228 = &v222 - v9;
  *&v231 = type metadata accessor for NANPairing.SharedAssociation(0);
  v10 = *(*(v231 - 8) + 64);
  __chkstk_darwin();
  v238 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(_s3SAEVMa(0) - 8) + 64);
  __chkstk_darwin();
  v241 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for NANPairing.Mode(0);
  v14 = *(*(v245 - 8) + 64);
  __chkstk_darwin();
  v243 = v5;
  v244 = &v222 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 24);
  v242 = v6;
  *&v17 = v6;
  v240 = v16;
  *(&v17 + 1) = v16;
  *&v18 = v5;
  v239 = *(a1 + 40);
  *(&v18 + 1) = v239;
  v258 = v17;
  v259 = v18;
  v19 = type metadata accessor for NANPairing.PASN.State();
  v20 = *(v19 - 8);
  v21 = v20[8];
  __chkstk_darwin();
  v236 = &v222 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v249 = &v222 - v23;
  __chkstk_darwin();
  v25 = &v222 - v24;
  __chkstk_darwin();
  v227 = (&v222 - v26);
  __chkstk_darwin();
  v28 = &v222 - v27;
  v29 = (v1 + *(a1 + 80));
  v235 = *v29;
  v30 = v29[1];
  v233 = *(v29 + 2);
  v234 = v30;
  v31 = *(a1 + 96);
  v247 = v20[2];
  v247(&v222 - v27, v1 + v31, v19);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v281 = v20[1];
    v281(v28, v19);
    v53 = v247;
    v247(v25, v1 + v31, v19);
    v54 = v246;
    v55 = v248;
    (*(v246 + 16))(v250, v1, v248);
    v53(v249, v25, v19);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      LODWORD(v244) = v57;
      v58 = v233 << 16;
      v59 = swift_slowAlloc();
      v60 = v19;
      v245 = v25;
      v243 = v56;
      v61 = v59;
      v242 = swift_slowAlloc();
      *&v258 = v242;
      *v61 = 136315394;
      v62 = WiFiAddress.description.getter(v235 | (v234 << 8) | v58);
      v64 = sub_100002320(v62, v63, &v258);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2080;
      v65 = v236;
      v66 = v249;
      v247(v236, v249, v60);
      v67 = v281;
      v281(v66, v60);
      v226 = v20 + 1;
      v68 = sub_10012BF38(v60);
      v70 = v69;
      v67(v65, v60);
      v71 = sub_100002320(v68, v70, &v258);

      *(v61 + 14) = v71;
      v72 = v243;
      _os_log_impl(&_mh_execute_header, v243, v244, "Cannot generate a PASN request for %s when in state: %s", v61, 0x16u);
      swift_arrayDestroy();

      v25 = v245;
      v19 = v60;

      (*(v54 + 8))(v250, v248);
    }

    else
    {
      v67 = v281;
      v281(v249, v19);

      (*(v54 + 8))(v250, v55);
    }

    sub_10000B02C();
    swift_allocError();
    *v73 = xmmword_1004881C0;
    *(v73 + 16) = 1;
    swift_willThrow();
    v67(v25, v19);
    return v19;
  }

  v234 = v31;
  v235 = v19;
  (v20[1])(v28, v19);
  sub_10005DC58(&qword_10058DF88, &unk_100488550);
  v32 = swift_allocObject();
  v33 = *(a1 + 52);
  v34 = v1;
  v35 = *(v1 + *(a1 + 56));
  v250 = xmmword_100480F40;
  v32[1] = xmmword_100480F40;
  v36 = *(v1 + *(a1 + 84));
  *(v32 + 32) = v35;
  v247 = v32;
  *(v32 + 33) = v36;
  v37 = v1 + v33;
  v38 = v244;
  sub_10012A6E4(v37, v244, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v237 = v34;
  v226 = v20;
  v232 = a1;
  if (!EnumCaseMultiPayload)
  {
    v74 = *(v38 + 80);
    v262 = *(v38 + 64);
    v263 = v74;
    v264 = *(v38 + 96);
    v75 = *(v38 + 16);
    v258 = *v38;
    v259 = v75;
    v76 = *(v38 + 48);
    v260 = *(v38 + 32);
    v261 = v76;
    v77 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(v38 + *(v77 + 48), v241, _s3SAEVMa);
    v78 = v261;
    if (v261 == 0x8000)
    {
      v79 = 0;
    }

    else
    {
      *&v265 = 0;
      swift_stdlib_random();
      v79 = v265;
    }

    sub_1000449CC(0, 0, 0, 0xF000000000000000);
    LOBYTE(v253) = v79;
    *(&v253 + 1) = 1;
    *(&v253 + 1) = 0;
    v254[0] = 0uLL;
    *&v254[1] = 0xF000000000000000;
    WORD4(v254[1]) = v78;
    LOBYTE(v255) = v79;
    *(&v255 + 1) = 1;
    *(&v255 + 1) = 0;
    v256 = 0uLL;
    *&v257 = 0xF000000000000000;
    WORD4(v257) = v78;
    sub_10012A628(&v253, &v265);
    sub_1001440B0(&v255);
    sub_10005DC58(&unk_100597530, &qword_100482F50);
    v132 = type metadata accessor for NANAttribute(0);
    v133 = *(*(v132 - 8) + 72);
    v245 = (*(*(v132 - 8) + 80) + 32) & ~*(*(v132 - 8) + 80);
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_100480F30;
    if (qword_10058AB40 != -1)
    {
      v221 = v134;
      swift_once();
      v134 = v221;
    }

    v130 = static NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled;
    v246 = v134;
    if (v258 == 1)
    {
      v135 = qword_10058AB48;

      if (v135 != -1)
      {
        swift_once();
      }

      v128 = static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
    }

    else
    {
      v128 = _swiftEmptyArrayStorage;
    }

    v252 = v130;
    v136 = *(v130 + 16);
    v137 = *(v128 + 2);
    v248 = v133;
    v249 = v132;
    if (v136 && v137)
    {
      v138 = 0;
      v127 = v137 - 1;
      v117 = v136 - 1;
      while (1)
      {
        v50 = v128[v138 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_1000C28C4(v130);
        }

        v136 = *(v130 + 16);
        if (v138 >= v136)
        {
          goto LABEL_115;
        }

        *(v130 + v138 + 32) |= v50;
        if (v117 != v138)
        {
          v131 = v127 == v138++;
          if (!v131)
          {
            continue;
          }
        }

        break;
      }
    }

    v139 = (v246 + v245);
    v252 = v130;
    if (v136 >= v137)
    {
    }

    else
    {
      sub_100234FC0(v128, (v128 + 32), v136, (2 * v137) | 1);
      v130 = v252;
    }

    v19 = v281;
    v157 = v247;
    *v139 = v130;
    swift_storeEnumTagMultiPayload();
    v158 = v248;
    v159 = (v139 + v248);
    v160 = v254[0];
    *v159 = v253;
    v159[1] = v160;
    *(v159 + 26) = *(v254 + 10);
    swift_storeEnumTagMultiPayload();
    v161 = v139 + 2 * v158;
    *v161 = 0;
    *(v161 + 1) = v157;
    swift_storeEnumTagMultiPayload();
    sub_10012A628(&v253, v251);
    v162 = v241;
    v163 = sub_1002210A4();
    if (v19)
    {
      sub_10012A684(v162, _s3SAEVMa);

      sub_1001440B0(&v253);
      sub_100141458(&v258);
      return v19;
    }

    v199 = v163;
    v200 = v164;
    v19 = v165;
    v201 = v166;
    v202 = sub_100033AA8(_swiftEmptyArrayStorage);
    v281 = 0;
    v203 = v202;
    v204 = type metadata accessor for BinaryEncoder();
    v205 = swift_allocObject();
    *(v205 + 16) = xmmword_100480A90;
    *(v205 + 32) = v203;
    v251[3] = v204;
    v251[4] = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v251[0] = v205;

    v206 = v281;
    IEEE80211Frame.Management.Authentication.encode(to:)(v251, v199, v200, v19, v201);
    if (v206)
    {
      sub_1001440B0(&v253);
      sub_100141458(&v258);

      sub_1000B21F4(v199, v200, v19, v201);
      sub_10012A684(v241, _s3SAEVMa);
      sub_100002A00(v251);
      return v19;
    }

    sub_1000B21F4(v199, v200, v19, v201);
    sub_100002A00(v251);
    swift_beginAccess();
    v216 = *(v205 + 16);
    v217 = *(v205 + 24);
    sub_10000AB0C(v216, v217);

    v218 = v217 >> 62;
    v124 = v246;
    if ((v217 >> 62) > 1)
    {
      v117 = v237;
      if (v218 != 2)
      {
        goto LABEL_111;
      }

      result = *(v216 + 16);
      v219 = *(v216 + 24);
    }

    else
    {
      v117 = v237;
      if (!v218)
      {
        goto LABEL_111;
      }

      result = v216;
      v219 = v216 >> 32;
    }

    if (v219 < result)
    {
      __break(1u);
      goto LABEL_119;
    }

LABEL_111:
    v281 = 0;
    v118 = Data.subdata(in:)();
    v119 = v220;
    sub_1000124C8(v216, v217);
    sub_100141458(&v258);
    sub_1001440B0(&v253);
    sub_10012A684(v241, _s3SAEVMa);
    v116 = v232;
    if (*(v117 + v232[23]))
    {
      LODWORD(v245) = 0;
      v123 = 0;
      v269 = v265;
      v270 = v266;
      v271 = v267;
      v249 = 0xF000000000000000;
      LODWORD(v244) = 3;
      v120 = 5;
      goto LABEL_76;
    }

    LODWORD(v245) = 0;
    v123 = 0;
    v272 = v265;
    v273 = v266;
    v274 = v267;
    v249 = 0xF000000000000000;
    LODWORD(v244) = 3;
    v120 = 5;
    goto LABEL_79;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v40 = *(v38 + 80);
    v262 = *(v38 + 64);
    v263 = v40;
    v264 = *(v38 + 96);
    v41 = *(v38 + 16);
    v258 = *v38;
    v259 = v41;
    v42 = *(v38 + 48);
    v260 = *(v38 + 32);
    v261 = v42;
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v236 = swift_allocObject();
    *(v236 + 1) = v250;
    v43 = sub_10005DC58(&unk_100597530, &qword_100482F50);
    v44 = type metadata accessor for NANAttribute(0);
    v45 = *(*(v44 - 8) + 80);
    v46 = (v45 + 32) & ~v45;
    v248 = *(*(v44 - 8) + 72);
    v233 = 3 * v248;
    v238 = v45;
    v47 = swift_allocObject();
    v231 = xmmword_100480F30;
    *(v47 + 16) = xmmword_100480F30;
    v241 = v46;
    v225 = v47;
    v48 = (v47 + v46);
    *(v48 + 26) = *(v38 + 34);
    v49 = *(v38 + 24);
    *v48 = *(v38 + 8);
    v48[1] = v49;
    v249 = v44;
    swift_storeEnumTagMultiPayload();
    sub_10012A628(&v258 + 8, &v265);
    if (qword_10058AB40 != -1)
    {
      swift_once();
    }

    v50 = static NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled;
    LODWORD(v244) = v258;
    if (v258 == 1)
    {
      v51 = qword_10058AB48;

      if (v51 != -1)
      {
        swift_once();
      }

      v52 = static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
    }

    else
    {
      v52 = _swiftEmptyArrayStorage;
    }

    *&v253 = v50;
    v125 = *(v50 + 16);
    v126 = v52[2];
    v245 = &v258 + 8;
    v246 = v43;
    v223 = v126;
    *&v224 = v52;
    if (v125 && v126)
    {
      v127 = 0;
      v128 = (v126 - 1);
      v129 = v125 - 1;
      v130 = v50;
      while (1)
      {
        LODWORD(v117) = *(v52 + v127 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_1000C28C4(v130);
        }

        v125 = *(v130 + 16);
        if (v127 >= v125)
        {
          break;
        }

        *(v130 + v127 + 32) |= v117;
        if (v129 != v127)
        {
          v131 = v128 == v127++;
          if (!v131)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v130 = v50;
LABEL_31:
    *&v253 = v130;
    if (v125 >= v223)
    {
    }

    else
    {
      sub_100234FC0(v224, v224 + 32, v125, (2 * v223) | 1);
      v130 = v253;
    }

    v142 = v247;
    v143 = v245;
    v144 = v248;
    *(v48 + v248) = v130;
    swift_storeEnumTagMultiPayload();
    v145 = 2 * v144;
    v146 = v48 + v145;
    *v146 = 0;
    *(v146 + 1) = v142;
    swift_storeEnumTagMultiPayload();
    v147 = v236;
    *(v236 + 4) = v225;
    v148 = v266;
    *(v147 + 40) = v265;
    *(v147 + 56) = v148;
    *(v147 + 72) = v267;
    v147[88] = 8;
    v149 = v241;
    v150 = swift_allocObject();
    *(v150 + 16) = v231;
    v128 = (v150 + v149);
    *(v128 + 26) = *(v143 + 26);
    v151 = v143[1];
    *v128 = *v143;
    *(v128 + 1) = v151;
    swift_storeEnumTagMultiPayload();
    if (v244)
    {
      sub_10012A628(v143, &v255);
      v152 = qword_10058AB48;

      if (v152 != -1)
      {
        swift_once();
      }

      v153 = static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
    }

    else
    {
      sub_10012A628(v143, &v255);

      v153 = _swiftEmptyArrayStorage;
    }

    v251[0] = v50;
    v154 = *(v50 + 16);
    v130 = v153[2];
    v245 = v153;
    v246 = v150;
    *&v224 = v145;
    if (v154 && v130)
    {
      v127 = 0;
      v117 = (v153 + 4);
      v155 = v154 - 1;
      while (1)
      {
        v156 = *(v117 + v127);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1000C28C4(v50);
        }

        v154 = *(v50 + 16);
        if (v127 >= v154)
        {
          goto LABEL_116;
        }

        *(v50 + v127 + 32) |= v156;
        if (v155 != v127)
        {
          v131 = v130 - 1 == v127++;
          if (!v131)
          {
            continue;
          }
        }

        break;
      }
    }

    v251[0] = v50;
    if (v154 >= v130)
    {
    }

    else
    {
      sub_100234FC0(v245, v245 + 32, v154, (2 * v130) | 1);
      v50 = v251[0];
    }

    v117 = v237;
    v116 = v232;
    v124 = v246;
    v167 = v247;
    *&v128[v248] = v50;
    swift_storeEnumTagMultiPayload();
    v168 = &v128[v224];
    *v168 = 0;
    *(v168 + 1) = v167;
    swift_storeEnumTagMultiPayload();
    sub_100141458(&v258);
    if (*(v117 + v116[23]))
    {
      v118 = 0;
      v119 = 0;
      LODWORD(v244) = 0;
      v123 = 0;
      v269 = v255;
      v270 = v256;
      v271 = v257;
      v249 = 0xF000000000000000;
      LODWORD(v245) = 1;
      v120 = -1;
LABEL_76:
      v122 = v239;
      v121 = v240;
      goto LABEL_77;
    }

    v118 = 0;
    v119 = 0;
    LODWORD(v244) = 0;
    v123 = 0;
    v272 = v255;
    v273 = v256;
    v274 = v257;
    v249 = 0xF000000000000000;
    LODWORD(v245) = 1;
    v120 = -1;
LABEL_79:
    v141 = v239;
    v140 = v240;
    goto LABEL_80;
  }

  v80 = v38;
  v81 = v238;
  sub_100142410(v80, v238, type metadata accessor for NANPairing.SharedAssociation);
  v82 = (v81 + *(v231 + 24));
  v83 = v81 + *(v231 + 20);
  v84 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(*(v34 + *(a1 + 76)) | (*(v34 + *(a1 + 76) + 2) << 16), *v82, v82[1]);
  v86 = v85;
  v88 = v87;
  v90 = v89;
  *&v265 = v84;
  *(&v265 + 1) = v85;
  *(&v259 + 1) = &type metadata for Data;
  *&v260 = &protocol witness table for Data;
  *&v258 = v87;
  *(&v258 + 1) = v89;
  v91 = sub_100029B34(&v258, &type metadata for Data);
  v92 = *v91;
  v93 = v91[1];
  v233 = v84;
  v241 = v86;
  sub_10000AB0C(v84, v86);
  v244 = v88;
  v245 = v90;
  sub_10000AB0C(v88, v90);
  v94 = v281;
  sub_100178A18(v92, v93);
  v281 = v94;
  sub_100002A00(&v258);
  result = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v265, *(&v265 + 1));
  v248 = result;
  v249 = v96;
  if (v96 >> 60 != 15)
  {
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v97 = swift_allocObject();
    *(v97 + 16) = v250;
    v246 = sub_10005DC58(&unk_100597530, &qword_100482F50);
    v98 = *(type metadata accessor for NANAttribute(0) - 8);
    v99 = *(v98 + 72);
    v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    *&v231 = v100 + 2 * v99;
    v101 = v99;
    v225 = v99;
    v102 = swift_allocObject();
    v224 = xmmword_100483520;
    *(v102 + 16) = xmmword_100483520;
    v103 = (v102 + v100);
    v104 = v233;
    v105 = v241;
    *v103 = v233;
    v103[1] = v105;
    v106 = v245;
    v103[2] = v244;
    v103[3] = v106;
    swift_storeEnumTagMultiPayload();
    v107 = v102 + v100 + v101;
    *v107 = 0;
    v108 = v247;
    *(v107 + 8) = v247;
    swift_storeEnumTagMultiPayload();
    *(v97 + 32) = v102;
    v109 = v266;
    *(v97 + 40) = v265;
    *(v97 + 56) = v109;
    *(v97 + 72) = v267;
    v236 = v97;
    *(v97 + 88) = 8;
    v110 = swift_allocObject();
    *(v110 + 16) = v224;
    v246 = v110;
    v111 = (v110 + v100);
    v112 = v241;
    *v111 = v104;
    v111[1] = v112;
    v113 = v244;
    v114 = v245;
    v111[2] = v244;
    v111[3] = v114;
    swift_storeEnumTagMultiPayload();
    v115 = v111 + v225;
    *v115 = 0;
    *(v115 + 1) = v108;
    swift_storeEnumTagMultiPayload();

    sub_10000AB0C(v104, v112);
    sub_10000AB0C(v113, v114);
    sub_10012A684(v238, type metadata accessor for NANPairing.SharedAssociation);
    v116 = v232;
    v117 = v237;
    if (*(v237 + v232[23]) == 1)
    {
      v118 = 0;
      v119 = 0;
      LODWORD(v244) = 0;
      v269 = v258;
      v270 = v259;
      v271 = v260;
      LODWORD(v245) = 1;
      v120 = -1;
      v122 = v239;
      v121 = v240;
      v123 = v248;
      v124 = v246;
LABEL_77:
      LODWORD(v241) = sub_100143BF0(v117 + v116[22], v242, v121, v243, v122);
      v246 = v170;
      v247 = v169;
      v171 = &v269;
      goto LABEL_81;
    }

    v118 = 0;
    v119 = 0;
    LODWORD(v244) = 0;
    v272 = v258;
    v273 = v259;
    v274 = v260;
    LODWORD(v245) = 1;
    v120 = -1;
    v141 = v239;
    v140 = v240;
    v123 = v248;
    v124 = v246;
LABEL_80:
    LODWORD(v241) = sub_100143A98(v117 + v116[22], v242, v140, v243, v141);
    v246 = v173;
    v247 = v172;
    v171 = &v272;
LABEL_81:
    v276 = 0u;
    v277 = 0u;
    v174 = v171[1];
    *&v280[8] = *v171;
    *&v275 = v118;
    *(&v275 + 1) = v119;
    v278 = 0;
    v279 = v120;
    *v280 = v124;
    *&v280[24] = v174;
    *&v280[40] = v171[2];
    v280[56] = 8;
    sub_10005DC58(&qword_10058CC88, &unk_100482F90);
    v130 = swift_allocObject();
    *(v130 + 16) = v250;
    *(v130 + 32) = *(v117 + v116[15]);
    sub_10005DC58(&qword_10058CC80, &qword_100482F88);
    v50 = swift_allocObject();
    *(v50 + 16) = v250;
    LODWORD(v117) = *(v117 + v116[18]);
    *(v50 + 32) = v117;
    sub_10005DC58(&qword_10058CC08, &unk_100488510);
    v175 = swift_allocObject();
    *(v175 + 32) = v123;
    v127 = v175 + 32;
    v176 = v249;
    *(v175 + 40) = v249;
    sub_10005D67C(v123, v176);
    v248 = v123;
    if (v176 >> 60 == 15)
    {
      v128 = _swiftEmptyArrayStorage;
LABEL_87:
      v181 = v281;
      swift_setDeallocating();
      sub_100016290(v127, &qword_10058CC10, &qword_100482F10);
      swift_deallocClassInstance();
      if (v117 == 7)
      {
        v182 = v237;
        if (qword_10058AAE8 != -1)
        {
          swift_once();
        }

        v183 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
      }

      else
      {
        v183 = _swiftEmptyArrayStorage;
        v182 = v237;
      }

      v184 = *(v182 + v232[16]);
      LOBYTE(v253) = 0;
      sub_10005DC58(&qword_10058D640, &unk_100488520);
      v185 = swift_allocObject();
      *(v185 + 16) = xmmword_100480F30;
      *(v185 + 32) = 1;
      *(v185 + 34) = 6;
      *(v185 + 40) = v130;
      *(v185 + 48) = v50;
      *(v185 + 56) = 16576;
      *(v185 + 64) = v128;
      *(v185 + 72) = 6;
      *(v185 + 88) = 0;
      v186 = *&v280[16];
      *(v185 + 96) = *v280;
      *(v185 + 112) = v186;
      *(v185 + 128) = *&v280[32];
      *(v185 + 137) = *&v280[41];
      *(v185 + 160) = v183;
      *(v185 + 216) = 1;
      v265 = v275;
      v266 = v276;
      v267 = v277;
      v268 = v278;
      v187 = v279;
      v188 = v246;
      sub_10005D67C(v247, v246);
      sub_1000C2DC8(v280, &v258);
      if (v187 != 255)
      {
        sub_100012400(&v275, &v258, &qword_10058DF90, &unk_100488560);
        v185 = sub_10011727C(1, 4, 1, v185);
        *(v185 + 16) = 4;
        v189 = v266;
        *(v185 + 224) = v265;
        *(v185 + 240) = v189;
        *(v185 + 256) = v267;
        *(v185 + 272) = v268;
        *(v185 + 280) = v187;
      }

      v190 = swift_allocObject();
      *(v190 + 16) = v250;
      v191 = v253;
      *(v190 + 32) = v244;
      *(v190 + 40) = 0;
      *(v190 + 48) = 0;
      *(v190 + 56) = 0xF000000000000000;
      *(v190 + 64) = v184;
      *(v190 + 65) = v241;
      *(v190 + 66) = v191;
      v192 = v247;
      *(v190 + 72) = v247;
      *(v190 + 80) = v188;
      *(v190 + 88) = 6;
      *&v258 = v185;

      sub_1002353A8(v190);
      v19 = v258;

      v193 = sub_100033AA8(_swiftEmptyArrayStorage);
      v194 = v188;
      v195 = type metadata accessor for BinaryEncoder();
      v196 = swift_allocObject();
      *(v196 + 16) = xmmword_100480A90;
      *(v196 + 32) = v193;
      *(&v259 + 1) = v195;
      *&v260 = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      *&v258 = v196;

      IEEE80211Frame.Management.Authentication.encode(to:)(&v258, v19, 0, 0, 0);
      if (v181)
      {

        sub_100016290(&v275, &qword_10058DF90, &unk_100488560);
        sub_1000C2E24(v280);
        sub_100017554(v192, v194);
        sub_100017554(v248, v249);

        sub_100002A00(&v258);
        if (v245)
        {
        }
      }

      else
      {
        sub_100002A00(&v258);
        swift_beginAccess();
        v197 = *(v196 + 16);
        v198 = *(v196 + 24);
        sub_10000AB0C(v197, v198);

        *&v255 = sub_10012996C(v197, v198);
        *(&v255 + 1) = v207;
        sub_1000BA0A4();
        v247 = v192;
        v208 = v228;
        static HashFunction.hash<A>(data:)();
        sub_1000124C8(v255, *(&v255 + 1));
        v209 = v230;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v211 = sub_1001434FC(v208, v209, *(AssociatedConformanceWitness + 32));
        v213 = v212;
        (*(v229 + 8))(v208, v209);
        sub_100017554(v248, v249);
        sub_1000C2E24(v280);
        sub_100016290(&v275, &qword_10058DF90, &unk_100488560);
        sub_100017554(v247, v246);
        sub_1000124C8(v197, v198);
        v214 = v227;
        *v227 = v211;
        v214[1] = v213;
        v215 = v235;
        swift_storeEnumTagMultiPayload();
        (v226[5])(v237 + v234, v214, v215);
        if (v245)
        {
        }
      }

      return v19;
    }

    sub_10000AB0C(v123, v176);
    v128 = _swiftEmptyArrayStorage;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_84:
      v178 = *(v128 + 2);
      v177 = *(v128 + 3);
      if (v178 >= v177 >> 1)
      {
        v128 = sub_100117388((v177 > 1), v178 + 1, 1, v128);
      }

      *(v128 + 2) = v178 + 1;
      v179 = &v128[16 * v178];
      v180 = v249;
      *(v179 + 4) = v248;
      *(v179 + 5) = v180;
      goto LABEL_87;
    }

LABEL_117:
    v128 = sub_100117388(0, *(v128 + 2) + 1, 1, v128);
    goto LABEL_84;
  }

LABEL_119:
  __break(1u);
  return result;
}

uint64_t sub_10012F7D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v6 = v5;
  LODWORD(v721) = a4;
  v720 = a3;
  v682 = a2;
  v715 = a1;
  v8 = *(a5 + 4);
  v9 = *(a5 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v686 = *(AssociatedTypeWitness - 8);
  v687 = AssociatedTypeWitness;
  v11 = *(v686 + 64);
  __chkstk_darwin();
  v683 = &v650 - v12;
  v13 = type metadata accessor for HashedAuthenticationCode();
  v680 = *(v13 - 8);
  v681 = v13;
  v14 = *(v680 + 64);
  __chkstk_darwin();
  v679 = &v650 - v15;
  v674 = sub_10005DC58(&qword_10058DF68, &unk_1004884F0);
  v16 = *(*(v674 - 8) + 64);
  __chkstk_darwin();
  v675 = &v650 - v17;
  v18 = type metadata accessor for SymmetricKeySize();
  v672 = *(v18 - 8);
  v673 = v18;
  v19 = *(v672 + 64);
  __chkstk_darwin();
  v671 = &v650 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v693 = type metadata accessor for SymmetricKey();
  v688 = *(v693 - 8);
  v21 = v688[8];
  __chkstk_darwin();
  v677 = &v650 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v689 = &v650 - v23;
  __chkstk_darwin();
  v690 = &v650 - v24;
  __chkstk_darwin();
  v691 = &v650 - v25;
  __chkstk_darwin();
  v692 = &v650 - v26;
  v27 = *(*(_s3SAEVMa(0) - 8) + 64);
  __chkstk_darwin();
  v670 = &v650 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v660 = type metadata accessor for NANPairing.SharedAssociation(0);
  v29 = *(*(v660 - 1) + 64);
  __chkstk_darwin();
  v666 = (&v650 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v699 = &v650 - v31;
  v769 = type metadata accessor for Logger();
  v731 = *(v769 - 8);
  v32 = *(v731 + 64);
  __chkstk_darwin();
  *&v710 = &v650 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v730 = &v650 - v34;
  __chkstk_darwin();
  v718 = (&v650 - v35);
  __chkstk_darwin();
  v717 = (&v650 - v36);
  __chkstk_darwin();
  v714 = &v650 - v37;
  __chkstk_darwin();
  v712 = &v650 - v38;
  __chkstk_darwin();
  v711 = &v650 - v39;
  __chkstk_darwin();
  v703 = &v650 - v40;
  __chkstk_darwin();
  v676 = &v650 - v41;
  __chkstk_darwin();
  v662 = &v650 - v42;
  __chkstk_darwin();
  v661 = &v650 - v43;
  __chkstk_darwin();
  v663 = &v650 - v44;
  __chkstk_darwin();
  v664 = &v650 - v45;
  __chkstk_darwin();
  v665 = &v650 - v46;
  __chkstk_darwin();
  v697 = &v650 - v47;
  __chkstk_darwin();
  v658 = &v650 - v48;
  __chkstk_darwin();
  v657 = &v650 - v49;
  __chkstk_darwin();
  v701 = (&v650 - v50);
  __chkstk_darwin();
  v696 = &v650 - v51;
  v52 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v656 = (&v650 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v700 = &v650 - v54;
  __chkstk_darwin();
  v698 = &v650 - v55;
  v702 = type metadata accessor for NANPairing.Mode(0);
  v56 = *(*(v702 - 8) + 64);
  __chkstk_darwin();
  v659 = &v650 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  *&v704 = &v650 - v58;
  v59 = type metadata accessor for SharedSecret();
  v60 = *(v59 - 8);
  v706 = v59;
  v707 = v60;
  v61 = *(v60 + 64);
  __chkstk_darwin();
  *&v709 = &v650 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  *(&v704 + 1) = &v650 - v63;
  __chkstk_darwin();
  v705 = &v650 - v64;
  v65 = *(a5 + 3);
  v684 = v9;
  v685 = v8;
  *&v66 = v9;
  v668 = v65;
  *(&v66 + 1) = v65;
  *&v67 = v8;
  v667 = *(a5 + 5);
  *(&v67 + 1) = v667;
  v694 = v67;
  v695 = v66;
  *v742 = v66;
  *&v742[16] = v67;
  v68 = type metadata accessor for NANPairing.PASN.State();
  v69 = *(v68 - 8);
  v70 = v69[8];
  __chkstk_darwin();
  *&v729 = &v650 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v650 - v72;
  __chkstk_darwin();
  v716 = &v650 - v74;
  __chkstk_darwin();
  v76 = &v650 - v75;
  v77 = (v6 + a5[19]);
  v723 = *v77;
  v722 = v77[1];
  v724 = v77[2];
  v725 = v77[3];
  v726 = v77[4];
  v669 = v77;
  *&v727 = v77[5];
  v713 = a5;
  v78 = a5[24];
  v79 = v6;
  v728 = v69[2];
  v728(&v650 - v75, &v78[v6], v68);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();
  v678 = v69;
  v81 = v69[1];
  v80 = v69 + 1;
  v82 = v76;
  v83 = v68;
  v719 = v81;
  (v81)(v82, v68);
  if (v6 != 3)
  {
    v721 = v80;
    v94 = v728;
    v728(v73, &v78[v79], v68);
    v95 = v731;
    v96 = v79;
    v97 = v769;
    (*(v731 + 16))(v730, v96, v769);
    v94(v729, v73, v83);
    v88 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v98))
    {
      v99 = swift_slowAlloc();
      v720 = v73;
      v717 = v88;
      v88 = v83;
      v100 = v99;
      v718 = swift_slowAlloc();
      *v742 = v718;
      *v100 = 136315394;
      v101 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v103 = sub_100002320(v101, v102, v742);

      *(v100 + 4) = v103;
      *(v100 + 12) = 2080;
      v104 = v716;
      v105 = v729;
      v728(v716, v729, v88);
      v106 = v719;
      (v719)(v105, v88);
      v107 = sub_10012BF38(v88);
      v109 = v108;
      (v106)(v104, v88);
      v110 = sub_100002320(v107, v109, v742);

      *(v100 + 14) = v110;
      v111 = v717;
      _os_log_impl(&_mh_execute_header, v717, v98, "Cannot generate a PASN response to %s when in state: %s", v100, 0x16u);
      swift_arrayDestroy();

      v83 = v88;
      v73 = v720;

      (*(v731 + 8))(v730, v769);
    }

    else
    {
      v106 = v719;
      (v719)(v729, v83);

      (*(v95 + 8))(v730, v97);
    }

    sub_10000B02C();
    swift_allocError();
    *v112 = xmmword_1004881C0;
    *(v112 + 16) = 1;
    swift_willThrow();
    (v106)(v73, v83);
    return v88;
  }

  v730 = v78;
  if (((v720 & 0x1000000000000000) != 0) | (2 * v721))
  {
    v84 = v731;
    v85 = v718;
    v86 = v769;
    (*(v731 + 16))(v718, v79, v769);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v742 = v90;
      *v89 = 136315138;
      v91 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v93 = sub_100002320(v91, v92, v742);

      *(v89 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v87, v88, "Cannot generate a PASN response to %s because the authentication frame received was not a PASN request frame", v89, 0xCu);
      sub_100002A00(v90);

      (*(v84 + 8))(v85, v769);
    }

    else
    {

      (*(v84 + 8))(v85, v86);
    }

LABEL_21:
    sub_10000B02C();
    swift_allocError();
    *v134 = xmmword_1004881C0;
    *(v134 + 16) = 1;
    swift_willThrow();
    return v88;
  }

  v113 = v715;
  sub_100135CC0(v715, &v749);
  v114 = v750;
  if (!v750)
  {
LABEL_17:
    v126 = v731;
    v88 = v717;
    v127 = v769;
    (*(v731 + 16))(v717, v79, v769);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v130 = 136315138;
      v131 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v133 = sub_100002320(v131, v132, v742);

      *(v130 + 4) = v133;
      _os_log_impl(&_mh_execute_header, v128, v129, "Cannot generate a PASN response for the PASN request from %s because the RSN capabilities, extended RSN capabilities or PASN parameters are missing", v130, 0xCu);
      sub_100002A00(v88);

      (*(v126 + 8))(v717, v127);
    }

    else
    {

      (*(v126 + 8))(v88, v127);
    }

    goto LABEL_21;
  }

  v728 = v68;
  v88 = v749;
  v115 = v751;
  v116 = v752;
  *&v729 = v753;
  v117 = v754;
  v118 = v113 - 32;
  v119 = *(v113 + 16) + 1;
  do
  {
    if (!--v119)
    {
      goto LABEL_16;
    }

    v120 = (v118 + 64);
    v121 = *(v118 + 120);
    v118 += 64;
  }

  while (v121 != 1);
  v122 = *v120;

  if (!v123)
  {
LABEL_16:
    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
    goto LABEL_17;
  }

  v718 = (v113 + 32);
  v719 = v123;
  sub_100135D74(v113, &v755);
  v124 = v757;
  v125 = v757;
  if (v757 == 3)
  {

    goto LABEL_16;
  }

  v760[0] = *v756;
  *(v760 + 15) = *&v756[15];
  if (v88 != 1 || (v88 & 0xFF0000) != 0x60000 || v117 != 6)
  {

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
    v136 = v731;
    goto LABEL_30;
  }

  v136 = v731;
  if ((v116 & 0x80) == 0 || (v116 & 0x40) == 0)
  {
LABEL_28:

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
LABEL_30:
    v137 = v79;
    goto LABEL_31;
  }

  v654 = v755;
  v655 = v758;
  v717 = v759;
  v88 = v713;
  v653 = v713[18];
  if (!sub_1001B4ED4(*(v79 + v653), v115))
  {

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
    v137 = v79;
    goto LABEL_31;
  }

  v147 = *(v88 + 60);
  if (!sub_1001B4F04(*(v79 + v147), v114))
  {
    goto LABEL_28;
  }

  if (v125 == 2)
  {
    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    goto LABEL_30;
  }

  v651 = v147;
  v652 = v79;
  v148 = *(v88 + 64);
  if (*(v79 + v148))
  {
    v149 = 20;
  }

  else
  {
    v149 = 19;
  }

  if ((v124 & 1) + 19 != v149)
  {
    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

LABEL_52:
    v137 = v652;
    v136 = v731;
LABEL_31:
    v138 = v714;
    v139 = v769;
    (*(v136 + 16))(v714, v137, v769);
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v142 = 136315138;
      v143 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v145 = sub_100002320(v143, v144, v742);

      *(v142 + 4) = v145;
      _os_log_impl(&_mh_execute_header, v140, v141, "Cannot generate a PASN response for the PASN request from %s because the RSN capabilities or PASN parameters do not match", v142, 0xCu);
      sub_100002A00(v88);

      (*(v136 + 8))(v714, v139);
    }

    else
    {

      (*(v136 + 8))(v138, v139);
    }

LABEL_34:
    sub_10000B02C();
    swift_allocError();
    *v146 = xmmword_1004881C0;
    *(v146 + 16) = 1;
    swift_willThrow();
    sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
    return v88;
  }

  v761 = *(v760 + 7);
  v762 = *(&v760[1] + 7);
  if (*(&v760[1] + 7) >> 60 != 15)
  {
    sub_100012400(&v761, v742, &qword_10058DF78, &unk_100488530);
    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    sub_100016290(&v761, &qword_10058DF78, &unk_100488530);
    goto LABEL_52;
  }

  if (v717 >> 60 == 15)
  {

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
    (*(v731 + 16))(v712, v652, v769);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v152 = 136315138;
      v153 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v155 = sub_100002320(v153, v154, v742);

      *(v152 + 4) = v155;
      _os_log_impl(&_mh_execute_header, v150, v151, "Cannot generate a PASN response for the PASN request from %s because the public key in the request could not be found", v152, 0xCu);
      sub_100002A00(v88);
    }

    (*(v731 + 8))(v712, v769);
    goto LABEL_34;
  }

  if ((v124 & 0x10000) != 0)
  {
    sub_10005D67C(v655, v717);

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
    (*(v731 + 16))(v711, v652, v769);
    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v160 = 136315138;
      v161 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v163 = sub_100002320(v161, v162, v742);

      *(v160 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v158, v159, "Cannot generate a PASN response for the PASN request from %s because the public key type in the request could not be found", v160, 0xCu);
      sub_100002A00(v88);
    }

    (*(v731 + 8))(v711, v769);
    sub_10000B02C();
    swift_allocError();
    *v164 = xmmword_1004881C0;
    *(v164 + 16) = 1;
    goto LABEL_64;
  }

  v156 = v713[22];
  sub_10000AB0C(v655, v717);
  if ((v124 & 0xFF00) == 0x400)
  {
    v157 = v708;
    sub_10012CBB0(v655, v717, v652 + v156, v713, *(&v704 + 1));
    v714 = v157;
    if (!v157)
    {
      *&v709 = *(&v704 + 1);
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  v165 = v708;
  sub_10012CEA0(v655, v717, v652 + v156, v713, v709);
  v714 = v165;
  if (v165)
  {
LABEL_61:

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
    (*(v731 + 16))(v710, v652, v769);
    swift_errorRetain();
    v166 = Logger.logObject.getter();
    v167 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v168 = 136315394;
      v170 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v172 = sub_100002320(v170, v171, v742);

      *(v168 + 4) = v172;
      *(v168 + 12) = 2112;
      swift_errorRetain();
      v173 = _swift_stdlib_bridgeErrorToNSError();
      *(v168 + 14) = v173;
      *v169 = v173;
      _os_log_impl(&_mh_execute_header, v166, v167, "Cannot generate a PASN response for the PASN request from %s because the shared secret agreement failed with error: %@", v168, 0x16u);
      sub_100016290(v169, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v88);
    }

    (*(v731 + 8))(v710, v769);
LABEL_64:
    swift_willThrow();
    sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
    sub_100017554(v655, v717);
    return v88;
  }

LABEL_65:
  (*(v707 + 32))(v705, v709, v706);
  v712 = sub_100135E3C(v715);
  if (!v712)
  {

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
    (*(v731 + 16))(v703, v652, v769);
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v185 = 136315138;
      v186 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v188 = sub_100002320(v186, v187, v742);

      *(v185 + 4) = v188;
      _os_log_impl(&_mh_execute_header, v183, v184, "Cannot generate a PASN response for the PASN request from %s because no NAN information element was carried in the request", v185, 0xCu);
      sub_100002A00(v88);
    }

    (*(v731 + 8))(v703, v769);
    goto LABEL_108;
  }

  sub_10005DC58(&qword_10058DF88, &unk_100488550);
  v174 = swift_allocObject();
  v175 = v713;
  v176 = v713[13];
  v177 = v652;
  v178 = *(v652 + v713[14]);
  v709 = xmmword_100480F40;
  *(v174 + 16) = xmmword_100480F40;
  LOBYTE(v175) = *(v177 + v175[21]);
  *(v174 + 32) = v178;
  v711 = v174;
  *(v174 + 33) = v175;
  *&v710 = v176;
  sub_10012A6E4(v177 + v176, v704, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v189 = v704;
    v180 = *v704;
    v190 = *(v704 + 24);
    v745 = *(v704 + 8);
    v746[0] = v190;
    *(v746 + 10) = *(v704 + 34);
    v191 = *(v704 + 72);
    *v742 = *(v704 + 56);
    *&v742[16] = v191;
    *&v742[26] = *(v704 + 82);
    v192 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_10012A684(v189 + *(v192 + 48), _s3SAEVMa);
    v747 = *v742;
    v748[0] = *&v742[16];
    *(v748 + 10) = *&v742[26];
    goto LABEL_73;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100142410(v704, v699, type metadata accessor for NANPairing.SharedAssociation);
    v199 = v712;

    v200 = v700;
    Array<A>.retrieve(attribute:)(34, v199, v700);

    v201 = type metadata accessor for NANAttribute(0);
    v202 = *(*(v201 - 8) + 48);
    if (v202(v200, 1, v201) == 1)
    {

      sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

      sub_100016290(v700, &unk_100595C00, &qword_10048F790);
    }

    else if (swift_getEnumCaseMultiPayload() == 30)
    {
      v708 = &v650;
      v207 = *(v700 + 8);
      __chkstk_darwin();
      v208 = v694;
      *(&v650 - 3) = v695;
      *(&v650 - 2) = v208;
      *(&v650 - 2) = v652;
      v209 = *(v207 + 16);
      if (v209)
      {
        v88 = v207 + 33;
        while (1)
        {
          *v742 = *(v88 - 1);
          v210 = v714;
          v211 = sub_100144120(v742);
          v714 = v210;
          if (v210 || v211)
          {
            break;
          }

          v88 += 2;
          if (!--v209)
          {
            goto LABEL_88;
          }
        }

        v235 = v712;

        v236 = v656;
        Array<A>.retrieve(attribute:)(43, v235, v656);

        if (v202(v236, 1, v201) == 1)
        {

          sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

          sub_100016290(v656, &unk_100595C00, &qword_10048F790);
        }

        else if (swift_getEnumCaseMultiPayload() == 38)
        {
          v240 = *v656;
          v239 = v656[1];
          v88 = v656[2];
          v708 = v656[3];
          v241 = v699 + v660[5];
          v242 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(*v669 | (*(v669 + 2) << 16), v240, v239);
          v244 = v243;
          v246 = v245;
          v248 = v247;
          *&v704 = v240;
          *(&v704 + 1) = v239;
          if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v242, v243, v240, v239))
          {
            v249 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v246, v248, v88, v708);
            sub_1000124C8(v242, v244);
            sub_1000124C8(v246, v248);
            if (v249)
            {
              *&v729 = sub_1001F8188(v729);
              sub_10005DC58(&qword_10058CC08, &unk_100488510);
              v250 = swift_allocObject();
              *(v250 + 16) = v709;
              v215 = *(&v704 + 1);
              v251 = v704;
              v739 = v704;
              *&v742[24] = &type metadata for Data;
              *&v742[32] = &protocol witness table for Data;
              *v742 = v88;
              v252 = v708;
              *&v742[8] = v708;
              v253 = sub_100029B34(v742, &type metadata for Data);
              v254 = *v253;
              v255 = v253[1];
              sub_10000AB0C(v251, v215);
              sub_10000AB0C(v88, v252);
              v256 = v714;
              sub_100178A18(v254, v255);
              v714 = v256;
              sub_100002A00(v742);
              *(v250 + 32) = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v739, *(&v739 + 1));
              *(v250 + 40) = v257;
              v206 = sub_1000BFCF4(v729, v250);

              swift_setDeallocating();
              v258 = *(v250 + 16);
              sub_10005DC58(&qword_10058CC10, &qword_100482F10);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              if (v206)
              {
                sub_10012A684(v699, type metadata accessor for NANPairing.SharedAssociation);
                sub_1000124C8(v704, *(&v704 + 1));
                sub_1000124C8(v88, v708);
                *&v729 = _swiftEmptyArrayStorage;
                goto LABEL_139;
              }

              sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

              (*(v731 + 16))(v657, v652, v769);
              v467 = Logger.logObject.getter();
              v468 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v467, v468))
              {
                v469 = swift_slowAlloc();
                v470 = swift_slowAlloc();
                *v742 = v470;
                *v469 = 136315138;
                v471 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
                v473 = sub_100002320(v471, v472, v742);

                *(v469 + 4) = v473;
                _os_log_impl(&_mh_execute_header, v467, v468, "Cannot generate a PASN response for the PASN request from %s because the RSN capability PMK ID was invalid", v469, 0xCu);
                sub_100002A00(v470);
              }

              (*(v731 + 8))(v657, v769);
              sub_10000B02C();
              swift_allocError();
              *v474 = xmmword_1004881C0;
              *(v474 + 16) = 1;
              swift_willThrow();
              sub_100017554(v655, v717);
              sub_1000124C8(v704, *(&v704 + 1));
              sub_1000124C8(v88, v708);
LABEL_101:
              sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
              v226 = type metadata accessor for NANPairing.SharedAssociation;
              v227 = v699;
LABEL_102:
              sub_10012A684(v227, v226);
LABEL_109:
              (*(v707 + 8))(v705, v706);
              return v88;
            }

            sub_1000124C8(v704, *(&v704 + 1));
            sub_1000124C8(v88, v708);
            sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
          }

          else
          {

            sub_1000124C8(v704, *(&v704 + 1));
            sub_1000124C8(v88, v708);
            sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

            sub_1000124C8(v242, v244);
            sub_1000124C8(v246, v248);
          }
        }

        else
        {

          sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

          sub_10012A684(v656, type metadata accessor for NANAttribute);
        }

        (*(v731 + 16))(v658, v652, v769);
        v350 = Logger.logObject.getter();
        v351 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v350, v351))
        {
          v352 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *v742 = v88;
          *v352 = 136315138;
          v353 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
          v355 = sub_100002320(v353, v354, v742);

          *(v352 + 4) = v355;
          _os_log_impl(&_mh_execute_header, v350, v351, "Cannot generate a PASN response for the PASN request from %s because the pairing identity resolution attribute was invalid", v352, 0xCu);
          sub_100002A00(v88);
        }

        (*(v731 + 8))(v658, v769);
LABEL_100:
        sub_10000B02C();
        swift_allocError();
        *v225 = xmmword_1004881C0;
        *(v225 + 16) = 1;
        swift_willThrow();
        sub_100017554(v655, v717);
        goto LABEL_101;
      }

LABEL_88:

      sub_100016290(&v749, &qword_10058DF70, &unk_100488500);
    }

    else
    {

      sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

      sub_10012A684(v700, type metadata accessor for NANAttribute);
    }

    (*(v731 + 16))(v697, v652, v769);
    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v221 = 136315138;
      v222 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v224 = sub_100002320(v222, v223, v742);

      *(v221 + 4) = v224;
      _os_log_impl(&_mh_execute_header, v219, v220, "Cannot generate a PASN response for the PASN request from %s because the cipher suites information attribute was invalid", v221, 0xCu);
      sub_100002A00(v88);
    }

    (*(v731 + 8))(v697, v769);
    goto LABEL_100;
  }

  v180 = *v704;
  v181 = *(v704 + 24);
  v745 = *(v704 + 8);
  v746[0] = v181;
  *(v746 + 10) = *(v704 + 34);
  v182 = *(v704 + 72);
  v747 = *(v704 + 56);
  v748[0] = v182;
  *(v748 + 10) = *(v704 + 82);
LABEL_73:
  v742[0] = v180;
  *&v742[34] = *(v746 + 10);
  *&v742[24] = v746[0];
  *&v742[8] = v745;
  *&v742[56] = v747;
  *&v742[72] = v748[0];
  *&v742[82] = *(v748 + 10);
  if (*(v729 + 16))
  {

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    (*(v731 + 16))(v701, v652, v769);
    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v739 = v88;
      *v195 = 136315138;
      v196 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v198 = sub_100002320(v196, v197, &v739);

      *(v195 + 4) = v198;
      sub_100141458(v742);
      _os_log_impl(&_mh_execute_header, v193, v194, "Cannot generate a PASN response for the PASN request from %s because the RSN capability included a PMK ID", v195, 0xCu);
      sub_100002A00(v88);
    }

    else
    {
      sub_100141458(v742);
    }

    (*(v731 + 8))(v701, v769);
LABEL_108:
    sub_10000B02C();
    swift_allocError();
    *v234 = xmmword_1004881C0;
    *(v234 + 16) = 1;
    swift_willThrow();
    sub_100017554(v655, v717);
    sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
    goto LABEL_109;
  }

  v203 = v712;

  v204 = v698;
  Array<A>.retrieve(attribute:)(34, v203, v698);

  v205 = type metadata accessor for NANAttribute(0);
  v206 = *(v205 - 8);
  if ((*(v206 + 48))(v204, 1, v205) == 1)
  {

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    sub_100016290(v698, &unk_100595C00, &qword_10048F790);
LABEL_104:
    (*(v731 + 16))(v696, v652, v769);
    v228 = Logger.logObject.getter();
    v229 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v228, v229))
    {
      v230 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v739 = v88;
      *v230 = 136315138;
      v231 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v233 = sub_100002320(v231, v232, &v739);

      *(v230 + 4) = v233;
      sub_100141458(v742);
      _os_log_impl(&_mh_execute_header, v228, v229, "Cannot generate a PASN response for the PASN request from %s because the cipher suites information attribute was invalid", v230, 0xCu);
      sub_100002A00(v88);
    }

    else
    {
      sub_100141458(v742);
    }

    (*(v731 + 8))(v696, v769);
    goto LABEL_108;
  }

  if (swift_getEnumCaseMultiPayload() != 30)
  {

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    sub_10012A684(v698, type metadata accessor for NANAttribute);
    goto LABEL_104;
  }

  *&v729 = &v650;
  v212 = *(v698 + 8);
  __chkstk_darwin();
  v214 = v694;
  *(&v650 - 3) = v695;
  *(&v650 - 2) = v214;
  *(&v650 - 2) = v652;
  v215 = v213;
  v216 = *(v213 + 16);
  if (!v216)
  {
LABEL_95:

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    goto LABEL_104;
  }

  v88 = v213 + 33;
  while (1)
  {
    LOWORD(v739) = *(v88 - 1);
    v217 = v714;
    v218 = sub_100144274(&v739);
    v714 = v217;
    if (v217 || v218)
    {
      break;
    }

    v88 += 2;
    if (!--v216)
    {
      goto LABEL_95;
    }
  }

  sub_10005DC58(&unk_100597530, &qword_100482F50);
  v237 = *(v206 + 72);
  v703 = (*(v206 + 80) + 32) & ~*(v206 + 80);
  *&v704 = v237;
  *(&v704 + 1) = swift_allocObject();
  *(*(&v704 + 1) + 16) = xmmword_100480F30;
  if (qword_10058AB40 != -1)
  {
    swift_once();
  }

  v238 = static NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled;
  if (v180)
  {
    if (qword_10058AB48 != -1)
    {
      swift_once();
    }

    v708 = static NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled;
  }

  else
  {
    v708 = _swiftEmptyArrayStorage;
  }

  *&v739 = v238;
  v259 = *(v238 + 2);
  *&v729 = v708[2];

  if (v259 && v729)
  {
    v215 = 0;
    v260 = v708 + 4;
    v88 = v729 - 1;
    v261 = v259 - 1;
    while (1)
    {
      v206 = *(v260 + v215);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v238 = sub_1000C28C4(v238);
      }

      v259 = *(v238 + 2);
      if (v215 >= v259)
      {
        break;
      }

      v238[v215 + 32] |= v206;
      if (v261 != v215 && v88 != v215++)
      {
        continue;
      }

      goto LABEL_133;
    }

    __break(1u);
    goto LABEL_256;
  }

LABEL_133:
  v263 = (*(&v704 + 1) + v703);
  *&v739 = v238;
  if (v259 >= v729)
  {
  }

  else
  {
    sub_100234FC0(v708, (v708 + 4), v259, (2 * v729) | 1);
    v238 = v739;
  }

  *v263 = v238;
  swift_storeEnumTagMultiPayload();
  v264 = v704;
  v265 = (v263 + v704);
  v266 = v748[0];
  *v265 = v747;
  v265[1] = v266;
  *(v265 + 26) = *(v748 + 10);
  swift_storeEnumTagMultiPayload();
  v267 = v263 + 2 * v264;
  *v267 = 0;
  *(v267 + 1) = v711;
  swift_storeEnumTagMultiPayload();
  sub_10012A628(&v747, &v739);

  sub_100141458(v742);
  v268 = sub_10011727C(0, 1, 1, _swiftEmptyArrayStorage);
  v270 = *(v268 + 2);
  v269 = *(v268 + 3);
  *&v729 = v268;
  if (v270 >= v269 >> 1)
  {
    *&v729 = sub_10011727C((v269 > 1), v270 + 1, 1, v729);
  }

  v271 = v729;
  *(v729 + 16) = v270 + 1;
  v272 = v271 + (v270 << 6);
  *(v272 + 32) = *(&v704 + 1);
  *(v272 + 88) = 8;
LABEL_139:
  sub_10012A6E4(v652 + v710, v659, type metadata accessor for NANPairing.Mode);
  v273 = swift_getEnumCaseMultiPayload();
  if (!v273)
  {
    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    v280 = v659;
    v281 = *(v659 + 80);
    *&v742[64] = *(v659 + 64);
    *&v742[80] = v281;
    *&v742[96] = *(v659 + 96);
    v282 = *(v659 + 16);
    *v742 = *v659;
    *&v742[16] = v282;
    v283 = *(v659 + 48);
    *&v742[32] = *(v659 + 32);
    *&v742[48] = v283;
    sub_100141458(v742);
    v284 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(v280 + *(v284 + 48), v670, _s3SAEVMa);
    if (qword_10058AAE8 != -1)
    {
      swift_once();
    }

    v205 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    *&v739 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    v285 = *(static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement + 16);
    v261 = *(v719 + 16);

    if (v285 <= v261)
    {
      v286 = v205;
    }

    else
    {
      sub_100235DAC((v285 - v261));
      v286 = v739;
      v285 = *(v739 + 16);
    }

    if (v285)
    {
      v294 = 0;
      v88 = v719 + 32;
      while (1)
      {
        if (v261 == v294)
        {
          goto LABEL_162;
        }

        v206 = *(v88 + v294);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v286 = sub_1000C28C4(v286);
        }

        if (v294 >= *(v286 + 2))
        {
          break;
        }

        v286[v294 + 32] &= v206;
        *&v739 = v286;
        if (v285 == ++v294)
        {
          goto LABEL_162;
        }
      }

      __break(1u);
      goto LABEL_259;
    }

LABEL_162:

    v295 = sub_1000C2E80(v286, v205);

    if ((v295 & 1) != 0 && v654 == 3)
    {
      v296 = *(v715 + 16);
      if (v296)
      {
        while (1)
        {
          v297 = *v718;
          v298 = v718[1];
          v299 = v718[2];
          *(v741 + 9) = *(v718 + 41);
          v740 = v298;
          v741[0] = v299;
          v739 = v297;
          if (BYTE8(v741[1]) == 5)
          {
            break;
          }

          v718 += 4;
          if (!--v296)
          {
            goto LABEL_167;
          }
        }

        v356 = v739;
        sub_1000C2DC8(&v739, &v736);
        sub_1000C2DC8(&v739, &v736);
        v357 = sub_100033AA8(_swiftEmptyArrayStorage);
        v358 = type metadata accessor for BinaryDecoder();
        swift_allocObject();
        v359 = BinaryDecoder.init(data:userInfo:)(v356, *(&v356 + 1), v357);
        v734 = v358;
        v735 = sub_10014400C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v732 = v359;
        sub_1000C2DC8(&v739, &v736);

        v360 = v714;
        v361 = sub_1001F5414(&v732);
        v294 = v360;
        if (v360)
        {
          sub_100017554(v655, v717);

          sub_1000C2E24(&v739);
          sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
          sub_1000C2E24(&v739);
          sub_10012A684(v670, _s3SAEVMa);
          (*(v707 + 8))(v705, v706);

          return v88;
        }

        v206 = v361;
        v88 = v362;
        v261 = v363;
        LOBYTE(v205) = v364;

        sub_1000C2E24(&v739);
        if ((((v261 & 0x1000000000000000) != 0) | (2 * v205)) != 3 || (v261 & 0x2000000000000000) != 0)
        {
          sub_1000B21F4(v206, v88, v261, v205);

LABEL_246:
          (*(v731 + 16))(v665, v652, v769);
          v501 = Logger.logObject.getter();
          v502 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v501, v502))
          {
            v503 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *&v736 = v88;
            *v503 = 136315138;
            v504 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
            v506 = sub_100002320(v504, v505, &v736);

            *(v503 + 4) = v506;
            _os_log_impl(&_mh_execute_header, v501, v502, "Cannot generate a PASN response for the PASN request from %s because the SAE wrapped data could not be decoded", v503, 0xCu);
            sub_100002A00(v88);
          }

          (*(v731 + 8))(v665, v769);
          sub_10000B02C();
          swift_allocError();
          *v507 = xmmword_1004881C0;
          *(v507 + 16) = 1;
          swift_willThrow();
          sub_100017554(v655, v717);
          sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
          sub_1000C2E24(&v739);
          goto LABEL_174;
        }

        if (*(v652 + v148))
        {
          v497 = 20;
        }

        else
        {
          v497 = 19;
        }

        if ((v206 & 1) + 19 != v497)
        {
LABEL_256:

          sub_1000B21F4(v206, v88, v261, v205);
          goto LABEL_246;
        }

        v711 = sub_1002210A4();
        v712 = v498;
        v719 = v499;
        LODWORD(v704) = v500;
LABEL_259:
        sub_100144000(v206, v88, v261 & 0xEFFFFFFFFFFFFFFFLL);
        v700 = sub_100221278(v88, v261 & 0xEFFFFFFFFFFFFFFFLL);
        v701 = v528;
        v702 = v529;
        LODWORD(v703) = v530;
        v714 = v294;
        if (v294)
        {
          sub_100017554(v655, v717);
          v531 = v206;
          v532 = v88;
          v533 = v261;
          v534 = v205;
        }

        else
        {
          sub_1000B21F4(v206, v88, v261, v205);
          v718 = sub_100033AA8(_swiftEmptyArrayStorage);
          v539 = type metadata accessor for BinaryEncoder();
          v540 = swift_allocObject();
          v710 = xmmword_100480A90;
          *(v540 + 16) = xmmword_100480A90;
          *(v540 + 32) = v718;
          v718 = v539;
          *(&v737 + 1) = v539;
          v708 = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
          v738 = v708;
          *&v736 = v540;

          v541 = v714;
          IEEE80211Frame.Management.Authentication.encode(to:)(&v736, v711, v712, v719, v704);
          v714 = v541;
          if (v541)
          {
            sub_100017554(v655, v717);
            sub_1000B21F4(v700, v701, v702, v703);
            sub_1000B21F4(v711, v712, v719, v704);
LABEL_265:
            sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);

            sub_1000B21F4(v206, v88, v261, v205);
            sub_1000C2E24(&v739);
            sub_10012A684(v670, _s3SAEVMa);
            (*(v707 + 8))(v705, v706);
            sub_100002A00(&v736);
            goto LABEL_266;
          }

          sub_100002A00(&v736);
          swift_beginAccess();
          v580 = *(v540 + 16);
          v581 = *(v540 + 24);
          sub_10000AB0C(v580, v581);

          v582 = v714;
          v699 = sub_1000D4CB4(v580, v581);
          *(&v704 + 1) = v583;
          v714 = v582;
          if (!v582)
          {
            v698 = sub_100033AA8(_swiftEmptyArrayStorage);
            v613 = v718;
            v314 = swift_allocObject();
            *(v314 + 16) = v710;
            *(v314 + 32) = v698;
            v738 = v708;
            *(&v737 + 1) = v613;
            *&v736 = v314;

            v614 = v714;
            sub_100142A80(&v736, v699, *(&v704 + 1));
            v714 = v614;
            if (v614)
            {
              sub_100017554(v655, v717);
              sub_1000B21F4(v700, v701, v702, v703);
              sub_1000B21F4(v711, v712, v719, v704);
              v615 = v699;
              v616 = *(&v704 + 1);
LABEL_289:
              sub_1000124C8(v615, v616);
              goto LABEL_265;
            }

LABEL_287:
            sub_1000124C8(v699, *(&v704 + 1));
            sub_100002A00(&v736);
            swift_beginAccess();
            v617 = *(v314 + 24);
            *(&v704 + 1) = *(v314 + 16);
            v698 = v617;
            sub_10000AB0C(*(&v704 + 1), v617);

            v699 = sub_100033AA8(_swiftEmptyArrayStorage);
            v618 = v718;
            v619 = swift_allocObject();
            *(v619 + 16) = v710;
            *(v619 + 32) = v699;
            v738 = v708;
            *(&v737 + 1) = v618;
            *&v736 = v619;

            v620 = v714;
            IEEE80211Frame.Management.Authentication.encode(to:)(&v736, v700, v701, v702, v703);
            v714 = v620;
            if (v620)
            {
              sub_100017554(v655, v717);
              sub_1000B21F4(v700, v701, v702, v703);
              sub_1000B21F4(v711, v712, v719, v704);
              v615 = *(&v704 + 1);
              v616 = v698;
              goto LABEL_289;
            }

            sub_100002A00(&v736);
            swift_beginAccess();
            v621 = *(v619 + 16);
            v622 = *(v619 + 24);
            sub_10000AB0C(v621, v622);

            v623 = v714;
            v697 = sub_1000D4CB4(v621, v622);
            v699 = v624;
            v714 = v623;
            if (v623)
            {
              sub_100017554(v655, v717);
              sub_1000B21F4(v700, v701, v702, v703);
              sub_1000B21F4(v711, v712, v719, v704);
              sub_1000124C8(*(&v704 + 1), v698);
              goto LABEL_262;
            }

            v696 = sub_100033AA8(_swiftEmptyArrayStorage);
            v625 = v718;
            v626 = swift_allocObject();
            *(v626 + 16) = v710;
            *(v626 + 32) = v696;
            v738 = v708;
            *(&v737 + 1) = v625;
            *&v736 = v626;

            v627 = v714;
            sub_100142A80(&v736, v697, v699);
            v714 = v627;
            if (v627)
            {
              sub_100017554(v655, v717);
              sub_1000B21F4(v700, v701, v702, v703);
              sub_1000B21F4(v711, v712, v719, v704);
              sub_1000124C8(*(&v704 + 1), v698);
              v615 = v697;
              v616 = v699;
              goto LABEL_289;
            }

            sub_1000124C8(v697, v699);
            sub_100002A00(&v736);
            swift_beginAccess();
            v628 = *(v626 + 16);
            v708 = *(v626 + 24);
            sub_10000AB0C(v628, v708);

            v732 = *(&v704 + 1);
            v215 = v698;
            v733 = v698;
            *(&v737 + 1) = &type metadata for Data;
            v738 = &protocol witness table for Data;
            *&v736 = v628;
            v629 = v708;
            *(&v736 + 1) = v708;
            v630 = sub_100029B34(&v736, &type metadata for Data);
            v631 = v630[1];
            v718 = *v630;
            *&v710 = v631;
            sub_10000AB0C(*(&v704 + 1), v215);
            sub_10000AB0C(v628, v629);
            v632 = v714;
            sub_100178A18(v718, v710);
            v718 = v632;
            sub_1000124C8(v628, v629);
            sub_1000124C8(*(&v704 + 1), v215);
            sub_100002A00(&v736);
            v633 = v732;
            v634 = v733;
            v635 = v733 >> 62;
            if ((v733 >> 62) > 1)
            {
              if (v635 != 2)
              {
                goto LABEL_301;
              }

              v636 = *(v732 + 16);
              v637 = *(v732 + 24);
            }

            else
            {
              if (!v635)
              {
                goto LABEL_301;
              }

              v636 = v732;
              v637 = v732 >> 32;
            }

            if (v637 < v636)
            {
              goto LABEL_312;
            }

LABEL_301:
            v215 = Data.subdata(in:)();
            v714 = v638;
            sub_1000124C8(v633, v634);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_302;
            }

            goto LABEL_313;
          }

LABEL_273:
          sub_100017554(v655, v717);
          v531 = v700;
          v532 = v701;
          v533 = v702;
          v534 = v703;
        }

        sub_1000B21F4(v531, v532, v533, v534);
        sub_1000B21F4(v711, v712, v719, v704);
LABEL_262:
        sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
        sub_1000B21F4(v206, v88, v261, v205);
        sub_1000C2E24(&v739);
        sub_10012A684(v670, _s3SAEVMa);
        (*(v707 + 8))(v705, v706);
LABEL_266:

        return v88;
      }

LABEL_167:

      (*(v731 + 16))(v664, v652, v769);
      v300 = Logger.logObject.getter();
      v301 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v300, v301))
      {
        v302 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v739 = v88;
        *v302 = 136315138;
        v303 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
        v305 = sub_100002320(v303, v304, &v739);

        *(v302 + 4) = v305;
        _os_log_impl(&_mh_execute_header, v300, v301, "Cannot generate a PASN response for the PASN request from %s because no SAE wrapped data was included", v302, 0xCu);
        sub_100002A00(v88);
      }

      (*(v731 + 8))(v664, v769);
    }

    else
    {

      (*(v731 + 16))(v663, v652, v769);
      v306 = Logger.logObject.getter();
      v307 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v306, v307))
      {
        v308 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v739 = v88;
        *v308 = 136315138;
        v309 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
        v311 = sub_100002320(v309, v310, &v739);

        *(v308 + 4) = v311;
        _os_log_impl(&_mh_execute_header, v306, v307, "Cannot generate a PASN response for the PASN request from %s because the SAE parameters were invalid", v308, 0xCu);
        sub_100002A00(v88);
      }

      (*(v731 + 8))(v663, v769);
    }

    sub_10000B02C();
    swift_allocError();
    *v312 = xmmword_1004881C0;
    *(v312 + 16) = 1;
    swift_willThrow();
    sub_100017554(v655, v717);
    sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
LABEL_174:
    v226 = _s3SAEVMa;
    v227 = v670;
    goto LABEL_102;
  }

  if (v273 != 1)
  {
    sub_100142410(v659, v666, type metadata accessor for NANPairing.SharedAssociation);
    if (!v654)
    {
      v324 = v666 + v660[7];
      v325 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(*(v652 + v713[20]) | (*(v652 + v713[20] + 2) << 16), *(v666 + v660[8]), *(v666 + v660[8] + 8));
      v327 = v326;
      v329 = v328;
      v331 = v330;
      v718 = sub_10005DC58(&unk_100597530, &qword_100482F50);
      v332 = *(type metadata accessor for NANAttribute(0) - 8);
      v333 = *(v332 + 72);
      v334 = (*(v332 + 80) + 32) & ~*(v332 + 80);
      v335 = swift_allocObject();
      *(v335 + 16) = xmmword_100483520;
      v708 = v335;
      v336 = (v335 + v334);
      *v336 = v325;
      v336[1] = v327;
      v336[2] = v329;
      v336[3] = v331;
      swift_storeEnumTagMultiPayload();
      v337 = v336 + v333;
      *v337 = 0;
      *(v337 + 1) = v711;
      swift_storeEnumTagMultiPayload();

      *&v704 = v325;
      *&v710 = v327;
      sub_10000AB0C(v325, v327);
      v718 = v329;
      v88 = v331;
      sub_10000AB0C(v329, v331);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v729 = sub_10011727C(0, *(v729 + 16) + 1, 1, v729);
      }

      v205 = *(v729 + 16);
      v338 = *(v729 + 24);
      if (v205 >= v338 >> 1)
      {
        *&v729 = sub_10011727C((v338 > 1), v205 + 1, 1, v729);
      }

      v339 = v729;
      *(v729 + 16) = v205 + 1;
      v340 = v339 + (v205 << 6);
      *(v340 + 32) = v708;
      v341 = *v742;
      v342 = *&v742[16];
      *(v340 + 72) = *&v742[32];
      *(v340 + 56) = v342;
      *(v340 + 40) = v341;
      *(v340 + 88) = 8;
      v215 = v704;
      *&v736 = v704;
      v343 = v710;
      *(&v736 + 1) = v710;
      *(&v740 + 1) = &type metadata for Data;
      *&v741[0] = &protocol witness table for Data;
      v344 = v718;
      *&v739 = v718;
      *(&v739 + 1) = v88;
      v345 = sub_100029B34(&v739, &type metadata for Data);
      v261 = *v345;
      v206 = v345[1];
      sub_10000AB0C(v215, v343);
      sub_10000AB0C(v344, v88);
      v346 = v714;
      sub_100178A18(v261, v206);
      v714 = v346;
      sub_100002A00(&v739);
      *(&v704 + 1) = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v736, *(&v736 + 1));
      v708 = v347;
      if (v347 >> 60 == 15)
      {
        goto LABEL_311;
      }

      sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

      sub_1000124C8(v704, v710);
      sub_1000124C8(v718, v88);
      v348 = v666;
      v349 = v666[1];
      v718 = *v666;
      *&v710 = v349;
      sub_10000AB0C(v718, v349);
      sub_10012A684(v348, type metadata accessor for NANPairing.SharedAssociation);
      goto LABEL_199;
    }

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    (*(v731 + 16))(v662, v652, v769);
    v287 = Logger.logObject.getter();
    v288 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v289 = 136315138;
      v290 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v292 = sub_100002320(v290, v291, v742);

      *(v289 + 4) = v292;
      _os_log_impl(&_mh_execute_header, v287, v288, "Cannot generate a PASN response for the PASN request from %s because a wrapped data format was provided for pair verification", v289, 0xCu);
      sub_100002A00(v88);
    }

    (*(v731 + 8))(v662, v769);
    sub_10000B02C();
    swift_allocError();
    *v293 = xmmword_1004881C0;
    *(v293 + 16) = 1;
    swift_willThrow();
    sub_100017554(v655, v717);
    sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
    (*(v707 + 8))(v705, v706);
    sub_10012A684(v666, type metadata accessor for NANPairing.SharedAssociation);
    return v88;
  }

  sub_10012A684(v659, type metadata accessor for NANPairing.Mode);
  if (v654)
  {

    sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

    (*(v731 + 16))(v661, v652, v769);
    v274 = Logger.logObject.getter();
    v275 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v274, v275))
    {
      v276 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v742 = v88;
      *v276 = 136315138;
      v277 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
      v279 = sub_100002320(v277, v278, v742);

      *(v276 + 4) = v279;
      _os_log_impl(&_mh_execute_header, v274, v275, "Cannot generate a PASN response for the PASN request from %s because a wrapped data format was provided for opportunistic pair setup", v276, 0xCu);
      sub_100002A00(v88);
    }

    (*(v731 + 8))(v661, v769);
    goto LABEL_108;
  }

  v205 = sub_10016FD40(2051755344, 0xE400000000000000);
  v314 = v313;
  v315 = type metadata accessor for __DataStorage();
  v316 = *(v315 + 48);
  v317 = *(v315 + 52);
  swift_allocObject();
  v318 = __DataStorage.init(length:)();
  *&v739 = v205;
  *(&v739 + 1) = v314;
  *&v742[24] = &type metadata for Data;
  *&v742[32] = &protocol witness table for Data;
  *v742 = 0x1C00000000;
  *&v742[8] = v318 | 0x4000000000000000;
  v319 = sub_100029B34(v742, &type metadata for Data);
  v320 = *v319;
  v261 = v319[1];
  sub_10000AB0C(v205, v314);
  v321 = v714;
  sub_100178A18(v320, v261);
  v714 = v321;
  sub_1000124C8(v205, v314);
  sub_100002A00(v742);
  *&v710 = *(&v739 + 1);
  v718 = v739;
  v322 = *(&v739 + 1) >> 62;
  if ((*(&v739 + 1) >> 62) > 1)
  {
    if (v322 != 2)
    {
      goto LABEL_310;
    }

    v366 = *(v718 + 2);
    v365 = *(v718 + 3);
    v367 = __OFSUB__(v365, v366);
    v323 = v365 - v366;
    if (!v367)
    {
      goto LABEL_197;
    }

    __break(1u);
    goto LABEL_195;
  }

  if (v322)
  {
LABEL_195:
    LODWORD(v323) = HIDWORD(v718) - v718;
    if (!__OFSUB__(HIDWORD(v718), v718))
    {
      v323 = v323;
      goto LABEL_197;
    }

    __break(1u);
    goto LABEL_287;
  }

  v323 = BYTE6(v710);
LABEL_197:
  if (v323 != 32)
  {
    goto LABEL_310;
  }

  sub_100016290(&v749, &qword_10058DF70, &unk_100488500);

  *(&v704 + 1) = 0;
  v708 = 0xF000000000000000;
  while (1)
  {
LABEL_199:
    sub_10005DC58(&qword_10058CC88, &unk_100482F90);
    v368 = swift_allocObject();
    *(v368 + 16) = v709;
    v369 = v652;
    v370 = *(v652 + v651);
    v712 = v368;
    *(v368 + 32) = v370;
    sub_10005DC58(&qword_10058CC80, &qword_100482F88);
    v371 = swift_allocObject();
    *(v371 + 16) = v709;
    v372 = *(v369 + v653);
    v711 = v371;
    *(v371 + 32) = v372;
    sub_10005DC58(&qword_10058CC08, &unk_100488510);
    v373 = swift_allocObject();
    v374 = *(&v704 + 1);
    *(v373 + 32) = *(&v704 + 1);
    v375 = (v373 + 32);
    v376 = v708;
    *(v373 + 40) = v708;
    sub_10005D67C(v374, v376);
    v377 = *(v373 + 40);
    if (v377 >> 60 == 15)
    {
      v719 = _swiftEmptyArrayStorage;
    }

    else
    {
      v378 = *v375;
      sub_10000AB0C(*v375, *(v373 + 40));
      v719 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v719 = sub_100117388(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v380 = *(v719 + 16);
      v379 = *(v719 + 24);
      if (v380 >= v379 >> 1)
      {
        v719 = sub_100117388((v379 > 1), v380 + 1, 1, v719);
      }

      v381 = v719;
      *(v719 + 16) = v380 + 1;
      v382 = &v381[16 * v380];
      *(v382 + 4) = v378;
      *(v382 + 5) = v377;
    }

    swift_setDeallocating();
    sub_100016290(v375, &qword_10058CC10, &qword_100482F10);
    swift_deallocClassInstance();
    if (v372 == 7)
    {
      if (qword_10058AAE8 != -1)
      {
        swift_once();
      }

      *&v709 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    }

    else
    {
      *&v709 = _swiftEmptyArrayStorage;
    }

    v700 = v713[25];
    v383 = sub_10014345C(*(v652 + v700));
    v384 = v383;
    v386 = v385;
    v387 = v385 >> 62;
    if ((v385 >> 62) > 1)
    {
      if (v387 != 2)
      {
        goto LABEL_219;
      }

      v383 = *(v383 + 16);
      v388 = *(v384 + 24);
    }

    else
    {
      if (!v387)
      {
        goto LABEL_219;
      }

      v383 = v383;
      v388 = v384 >> 32;
    }

    if (v388 < v383)
    {
      __break(1u);
    }

LABEL_219:
    v389 = Data.subdata(in:)();
    v391 = v390;
    sub_1000124C8(v384, v386);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v729 = sub_10011727C(0, *(v729 + 16) + 1, 1, v729);
    }

    v393 = *(v729 + 16);
    v392 = *(v729 + 24);
    if (v393 >= v392 >> 1)
    {
      *&v729 = sub_10011727C((v392 > 1), v393 + 1, 1, v729);
    }

    v394 = v729;
    *(v729 + 16) = v393 + 1;
    v395 = v394 + (v393 << 6);
    *(v395 + 32) = v389;
    *(v395 + 40) = v391;
    v396 = v739;
    v397 = v740;
    *(v395 + 80) = *&v741[0];
    *(v395 + 48) = v396;
    *(v395 + 64) = v397;
    *(v395 + 88) = 7;
    v398 = v713[22];
    if (*(v652 + v713[23]) == 1)
    {
      v399 = sub_100143BF0(v652 + v398, v684, v668, v685, v667);
    }

    else
    {
      v399 = sub_100143A98(v652 + v398, v684, v668, v685, v667);
    }

    v402 = v399;
    v703 = v400;
    *&v704 = v401;
    v403 = *(v652 + v148);
    v404 = v652;
    v744 = 0;
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v405 = swift_allocObject();
    LOWORD(v766) = 1;
    BYTE2(v766) = 6;
    *(&v766 + 1) = v712;
    *&v767 = v711;
    WORD4(v767) = 16576;
    *v768 = v719;
    v768[8] = 6;
    v768[24] = 0;
    v406 = v766;
    v407 = v767;
    *(v405 + 16) = xmmword_100480F30;
    *(v405 + 32) = v406;
    v408 = *v768;
    *(v405 + 48) = v407;
    *(v405 + 64) = v408;
    *(v405 + 73) = *&v768[9];
    *&v763 = v709;
    v765[24] = 1;
    v409 = v763;
    v410 = v764;
    v411 = *v765;
    *(v405 + 137) = *&v765[9];
    *(v405 + 112) = v410;
    *(v405 + 128) = v411;
    *(v405 + 96) = v409;
    v412 = v744;
    *(v405 + 160) = v654;
    *(v405 + 168) = 0;
    *(v405 + 176) = 0;
    *(v405 + 184) = 0xF000000000000000;
    *(v405 + 192) = v403;
    *(v405 + 193) = v402;
    *(v405 + 194) = v412;
    v414 = v703;
    v413 = v704;
    *(v405 + 200) = v703;
    *(v405 + 208) = v413;
    *(v405 + 216) = 6;
    *v742 = v405;
    sub_10005D67C(v414, v413);

    sub_1002353A8(v729);
    v88 = *v742;
    v415 = v669;
    v416 = *(v669 + 2);
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v417 = swift_allocObject();
    v729 = xmmword_1004817D0;
    *(v417 + 16) = xmmword_1004817D0;
    *(v417 + 32) = *v415;
    *(v417 + 36) = v416;
    v418 = sub_10002D874(v417);
    v420 = v419;

    v421 = (v404 + v713[20]);
    v422 = v421[2];
    v423 = swift_allocObject();
    *(v423 + 16) = v729;
    v701 = v421;
    *(v423 + 32) = *v421;
    *(v423 + 36) = v422;
    v424 = sub_10002D874(v423);
    v426 = v425;

    v732 = v418;
    v733 = v420;
    *&v742[24] = &type metadata for Data;
    *&v742[32] = &protocol witness table for Data;
    *v742 = v424;
    *&v742[8] = v426;
    v427 = sub_100029B34(v742, &type metadata for Data);
    v428 = *v427;
    v429 = v427[1];
    sub_10000AB0C(v418, v420);
    sub_10000AB0C(v424, v426);
    v430 = v714;
    sub_100178A18(v428, v429);
    sub_1000124C8(v424, v426);
    sub_1000124C8(v418, v420);
    sub_100002A00(v742);
    v431 = v732;
    v432 = v733;
    SharedSecret.withUnsafeBytes<A>(_:)();
    *&v729 = v430;
    v433 = *v742;
    v434 = *&v742[8];
    *&v736 = v431;
    *(&v736 + 1) = v432;
    *&v742[24] = &type metadata for Data;
    *&v742[32] = &protocol witness table for Data;
    v435 = sub_100029B34(v742, &type metadata for Data);
    v215 = *v435;
    v436 = v435[1];
    sub_10000AB0C(v431, v432);
    sub_10000AB0C(v433, v434);
    v437 = v729;
    sub_100178A18(v215, v436);
    *&v729 = v437;
    sub_1000124C8(v433, v434);
    sub_1000124C8(v431, v432);
    sub_100002A00(v742);
    v261 = *(&v736 + 1);
    v206 = v736;
    v438 = v671;
    static SymmetricKeySize.bits256.getter();
    v439 = SymmetricKeySize.bitCount.getter();
    v440 = *(v672 + 8);
    v148 = v672 + 8;
    (v440)(v438, v673);
    v714 = v713[17];
    v441 = SymmetricKeySize.bitCount.getter();
    v367 = __OFADD__(v439, v441);
    v442 = v439 + v441;
    if (v367)
    {
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      v579 = v719;
      v205 = v719 >> 32;
      goto LABEL_277;
    }

    v443 = v671;
    static SymmetricKeySize.bits256.getter();
    v215 = SymmetricKeySize.bitCount.getter();
    (v440)(v443, v673);
    if (__OFADD__(v442, v215))
    {
      goto LABEL_275;
    }

    v444 = v729;
    v702 = sub_10012D044(v718, v710, 0xD000000000000013, 0x80000001004B9950, v206, v261, v442 + v215);
    *&v729 = v445;
    if (v444)
    {
      sub_100017554(v655, v717);
      sub_100017554(*(&v704 + 1), v708);
      sub_100017554(v703, v704);
      sub_1000124C8(v206, v261);
      sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);

      (*(v707 + 8))(v705, v706);

LABEL_230:
      sub_1000124C8(v718, v710);
      return v88;
    }

    sub_1000124C8(v206, v261);
    __chkstk_darwin();
    v446 = v694;
    *(&v650 - 3) = v695;
    *(&v650 - 2) = v446;
    *(&v650 - 2) = v652;
    v447 = v675;
    sub_100143034(sub_10014413C, (&v650 - 8), v702, v729);
    v448 = *(v674 + 48);
    v449 = *(v674 + 64);
    v450 = v688[4];
    v451 = v693;
    v450(v691, v447, v693);
    v450(v690, &v447[v448], v451);
    v450(v692, &v447[v449], v451);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v698 = *&v742[8];
    v699 = *v742;
    v696 = *v669 | (*(v669 + 2) << 16);
    v697 = "PASN PTK Derivation";
    v452 = WiFiAddress.data.getter(v696);
    v454 = v453;
    v701 = (*v701 | (*(v701 + 1) << 16));
    v455 = WiFiAddress.data.getter(v701);
    v457 = v456;
    *&v736 = v452;
    *(&v736 + 1) = v454;
    *&v742[24] = &type metadata for Data;
    *&v742[32] = &protocol witness table for Data;
    *v742 = v455;
    *&v742[8] = v456;
    v458 = sub_100029B34(v742, &type metadata for Data);
    v460 = *v458;
    v459 = v458[1];
    sub_10000AB0C(v452, v454);
    sub_10000AB0C(v455, v457);
    sub_100178A18(v460, v459);
    sub_1000124C8(v455, v457);
    sub_1000124C8(v452, v454);
    sub_100002A00(v742);
    v461 = v736;
    v462 = SymmetricKeySize.bitCount.getter();
    v463 = v699;
    v464 = v698;
    v465 = sub_10012D044(v699, v698, 0xD00000000000001DLL, v697 | 0x8000000000000000, v461, *(&v461 + 1), v462);
    v714 = 0;
    v475 = v465;
    v476 = v466;
    sub_1000124C8(v461, *(&v461 + 1));
    sub_1000124C8(v463, v464);
    *v742 = v475;
    *&v742[8] = v476;
    SymmetricKey.init<A>(data:)();
    v477 = v714;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v698 = v477;
    v699 = *v742;
    v478 = *&v742[8];
    v714 = "NAN Management KEK Derivation";
    v479 = WiFiAddress.data.getter(v696);
    v481 = v480;
    v482 = WiFiAddress.data.getter(v701);
    v484 = v483;
    v732 = v479;
    v733 = v481;
    *&v742[24] = &type metadata for Data;
    *&v742[32] = &protocol witness table for Data;
    *v742 = v482;
    *&v742[8] = v483;
    v485 = sub_100029B34(v742, &type metadata for Data);
    v486 = *v485;
    v487 = v485[1];
    sub_10000AB0C(v479, v481);
    sub_10000AB0C(v482, v484);
    v488 = v698;
    sub_100178A18(v486, v487);
    sub_1000124C8(v482, v484);
    sub_1000124C8(v479, v481);
    sub_100002A00(v742);
    v489 = v732;
    v490 = v733;
    v491 = v699;
    v492 = v478;
    v493 = sub_10012D044(v699, v478, 0xD000000000000012, v714 | 0x8000000000000000, v732, v733, 256);
    v714 = v488;
    if (v488)
    {

      sub_100017554(v655, v717);
      sub_1000124C8(v489, v490);
      sub_1000124C8(v491, v478);
      sub_1000124C8(v702, v729);
      sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
      sub_100017554(v703, v704);
      sub_100017554(*(&v704 + 1), v708);
      v495 = v688[1];
      v496 = v693;
      v495(v689, v693);
      v495(v690, v496);
      v495(v691, v496);
      v495(v692, v496);
      (*(v707 + 8))(v705, v706);
      goto LABEL_237;
    }

    v508 = v493;
    v509 = v494;
    sub_1000124C8(v489, v490);
    sub_1000124C8(v491, v492);
    *v742 = v508;
    *&v742[8] = v509;
    v510 = v677;
    SymmetricKey.init<A>(data:)();
    sub_10005DC58(&qword_10058DF50, &qword_1004884C8);
    v511 = v714;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v215 = (v688 + 1);
    v206 = v688[1];
    (v206)(v510, v693);
    v713 = *(&v736 + 1);
    if (*(&v736 + 1) >> 60 == 15)
    {

      (*(v731 + 16))(v676, v652, v769);
      v512 = Logger.logObject.getter();
      v513 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v512, v513))
      {
        v514 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v742 = v88;
        *v514 = 136315138;
        v515 = WiFiAddress.description.getter(v723 | (v722 << 8) | (v724 << 16) | (v725 << 24) | (v726 << 32) | (v727 << 40));
        v517 = sub_100002320(v515, v516, v742);

        *(v514 + 4) = v517;
        _os_log_impl(&_mh_execute_header, v512, v513, "Cannot generate a PASN confirmation for the PASN response from %s because the ND-PMK derivation failed", v514, 0xCu);
        sub_100002A00(v88);
      }

      (*(v731 + 8))(v676, v769);
      sub_10000B02C();
      swift_allocError();
      *v518 = xmmword_1004881C0;
      *(v518 + 16) = 1;
      swift_willThrow();
      sub_100017554(v655, v717);
      sub_1000124C8(v702, v729);
      sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
      sub_100017554(v703, v704);
      sub_100017554(*(&v704 + 1), v708);
      v519 = v693;
      (v206)(v689, v693);
      (v206)(v690, v519);
      (v206)(v691, v519);
      (v206)(v692, v519);
      (*(v707 + 8))(v705, v706);
      goto LABEL_230;
    }

    v769 = v736;
    v520 = sub_100033AA8(_swiftEmptyArrayStorage);
    v521 = type metadata accessor for BinaryEncoder();
    v522 = swift_allocObject();
    v727 = xmmword_100480A90;
    *(v522 + 16) = xmmword_100480A90;
    *(v522 + 32) = v520;
    v731 = v521;
    *&v742[24] = v521;
    v726 = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    *&v742[32] = v726;
    *v742 = v522;

    IEEE80211Frame.Management.Authentication.encode(to:)(v742, v88, 0, 0x1000000000000000, 0);
    if (v511)
    {

      sub_100017554(v655, v717);
      sub_1000124C8(v702, v729);
      sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
      sub_100017554(v769, v713);

      sub_100017554(v703, v704);
      sub_100017554(*(&v704 + 1), v708);
      v527 = v693;
      (v206)(v689, v693);
      (v206)(v690, v527);
      (v206)(v691, v527);
      (v206)(v692, v527);
      (*(v707 + 8))(v705, v706);
      sub_100002A00(v742);

      sub_1000124C8(v718, v710);
      return v88;
    }

    sub_100002A00(v742);
    swift_beginAccess();
    v523 = *(v522 + 24);
    v724 = *(v522 + 16);
    v725 = v523;
    sub_10000AB0C(v724, v523);

    v524 = sub_100033AA8(_swiftEmptyArrayStorage);
    v525 = v731;
    v526 = swift_allocObject();
    *(v526 + 16) = v727;
    *(v526 + 32) = v524;
    *&v742[32] = v726;
    *&v742[24] = v525;
    *v742 = v526;

    IEEE80211InformationElement.encode(to:)(v742);

    sub_100002A00(v742);
    swift_beginAccess();
    v535 = *(v526 + 24);
    v722 = *(v526 + 16);
    v723 = v535;
    sub_10000AB0C(v722, v535);

    v536 = sub_100033AA8(_swiftEmptyArrayStorage);
    v537 = v731;
    v538 = swift_allocObject();
    *(v538 + 16) = v727;
    *(v538 + 32) = v536;
    *&v742[32] = v726;
    *&v742[24] = v537;
    *v742 = v538;

    IEEE80211InformationElement.encode(to:)(v742);
    v714 = 0;

    sub_100002A00(v742);
    swift_beginAccess();
    v542 = *(v538 + 24);
    *&v709 = *(v538 + 16);
    v711 = v542;
    sub_10000AB0C(v709, v542);

    v543 = WiFiAddress.data.getter(v701);
    v545 = v544;
    v546 = WiFiAddress.data.getter(v696);
    v548 = v547;
    *&v743 = v543;
    *(&v743 + 1) = v545;
    *&v742[24] = &type metadata for Data;
    *&v742[32] = &protocol witness table for Data;
    *v742 = v546;
    *&v742[8] = v547;
    v549 = sub_100029B34(v742, &type metadata for Data);
    v550 = v549[1];
    v719 = *v549;
    v712 = v550;
    sub_10000AB0C(v543, v545);
    sub_10000AB0C(v546, v548);
    v551 = v714;
    sub_100178A18(v719, v712);
    v719 = v551;
    sub_1000124C8(v546, v548);
    sub_1000124C8(v543, v545);
    sub_100002A00(v742);
    v553 = *(&v743 + 1);
    v552 = v743;
    v736 = v743;
    *&v742[24] = &type metadata for Data;
    *&v742[32] = &protocol witness table for Data;
    v554 = v722;
    *v742 = v722;
    v555 = v723;
    *&v742[8] = v723;
    v556 = sub_100029B34(v742, &type metadata for Data);
    v557 = v556[1];
    v714 = *v556;
    v712 = v557;
    sub_10000AB0C(v554, v555);
    sub_10000AB0C(v552, v553);
    v558 = v719;
    sub_100178A18(v714, v712);
    v719 = v558;
    sub_1000124C8(v552, v553);
    sub_100002A00(v742);
    v560 = *(&v736 + 1);
    v559 = v736;
    v743 = v736;
    *&v742[24] = &type metadata for Data;
    *&v742[32] = &protocol witness table for Data;
    v561 = v709;
    *v742 = v709;
    v562 = v711;
    *&v742[8] = v711;
    v563 = sub_100029B34(v742, &type metadata for Data);
    v564 = *v563;
    v714 = v563[1];
    sub_10000AB0C(v561, v562);
    sub_10000AB0C(v559, v560);
    v565 = v719;
    sub_100178A18(v564, v714);
    v719 = v565;
    sub_1000124C8(v559, v560);
    sub_100002A00(v742);
    v567 = *(&v743 + 1);
    v566 = v743;
    v736 = v743;
    *&v742[24] = &type metadata for Data;
    *&v742[32] = &protocol witness table for Data;
    v568 = v724;
    *v742 = v724;
    v569 = v725;
    *&v742[8] = v725;
    v148 = &type metadata for Data;
    v570 = sub_100029B34(v742, &type metadata for Data);
    v571 = v570[1];
    v714 = *v570;
    v712 = v571;
    sub_10000AB0C(v568, v569);
    sub_10000AB0C(v566, v567);
    v572 = v719;
    sub_100178A18(v714, v712);
    v714 = v572;
    sub_1000124C8(v566, v567);
    sub_100002A00(v742);
    *v742 = v736;
    v573 = sub_1000BA0A4();
    v261 = v679;
    v701 = v573;
    static HMAC.authenticationCode<A>(for:using:)();
    sub_1000124C8(*v742, *&v742[8]);
    v574 = v681;
    v575 = HashedAuthenticationCode.rawRepresentation.getter();
    v577 = v576;
    (*(v680 + 8))(v261, v574);
    sub_1002B9AE4(*(v652 + v700), v575, v577, v742);
    v719 = *v742;
    v440 = *(v88 + 16);
    v712 = *&v742[8];
    v578 = *&v742[8] >> 62;
    if ((*&v742[8] >> 62) <= 1)
    {
      if (!v578)
      {
        break;
      }

      goto LABEL_276;
    }

    if (v578 != 2)
    {
      break;
    }

    v579 = *(v719 + 16);
    v205 = *(v719 + 24);
LABEL_277:
    sub_10000AB0C(v719, v712);
    if (v205 >= v579)
    {
      break;
    }

LABEL_309:
    __break(1u);
LABEL_310:
    sub_1000124C8(v718, v710);
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    *&v729 = sub_10011727C(0, *(v729 + 16) + 1, 1, v729);
LABEL_302:
    v640 = *(v729 + 16);
    v639 = *(v729 + 24);
    if (v640 >= v639 >> 1)
    {
      *&v729 = sub_10011727C((v639 > 1), v640 + 1, 1, v729);
    }

    v641 = v729;
    *(v729 + 16) = v640 + 1;
    v642 = v641 + (v640 << 6);
    v643 = v714;
    *(v642 + 32) = v215;
    *(v642 + 40) = v643;
    v644 = v736;
    v645 = v737;
    *(v642 + 80) = v738;
    *(v642 + 48) = v644;
    *(v642 + 64) = v645;
    *(v642 + 88) = 5;
    v646 = v718;
    v718 = sub_1002217CC();
    *&v710 = v647;
    *(&v704 + 1) = v648;
    v708 = v649;
    v714 = v646;
    if (v646)
    {
      goto LABEL_273;
    }

    sub_10012A684(v670, _s3SAEVMa);
    sub_1000C2E24(&v739);
    sub_1000B21F4(v700, v701, v702, v703);
    sub_1000B21F4(v711, v712, v719, v704);
    sub_1000B21F4(v206, v88, v261, v205);
  }

  v261 = v719;
  v148 = v712;
  v584 = Data.subdata(in:)();
  v205 = v585;
  sub_1000124C8(v261, v148);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v440)
    {
      goto LABEL_280;
    }

LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  v88 = sub_1000C2B78(v88);
  if (!v440)
  {
    goto LABEL_307;
  }

LABEL_280:
  if (v440 > *(v88 + 16))
  {
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  v586 = v88 + (v440 << 6);
  v587 = *(v586 - 32);
  v588 = *(v586 - 16);
  v589 = *v586;
  *&v742[41] = *(v586 + 9);
  *&v742[16] = v588;
  *&v742[32] = v589;
  *v742 = v587;
  *(v586 - 32) = v584;
  *(v586 - 24) = v205;
  *(v586 + 24) = 7;
  sub_1000C2E24(v742);
  v590 = sub_100033AA8(_swiftEmptyArrayStorage);
  v591 = v731;
  v592 = swift_allocObject();
  *(v592 + 16) = v727;
  *(v592 + 32) = v590;
  v738 = v726;
  *(&v737 + 1) = v591;
  *&v736 = v592;

  v593 = v714;
  IEEE80211Frame.Management.Authentication.encode(to:)(&v736, v715, v682, v720, v721);
  v714 = v593;
  if (v593)
  {
    sub_100017554(v655, v717);
    sub_1000124C8(v702, v729);
    sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
    sub_100017554(v769, v713);

    sub_1000124C8(v719, v712);
    sub_1000124C8(v724, v725);
    sub_1000124C8(v709, v711);
    sub_1000124C8(v722, v723);
    sub_100017554(v703, v704);
    sub_100017554(*(&v704 + 1), v708);
    v594 = v693;
    (v206)(v689, v693);
    (v206)(v690, v594);
    (v206)(v691, v594);
    (v206)(v692, v594);
    (*(v707 + 8))(v705, v706);
    sub_100002A00(&v736);
LABEL_237:

    sub_1000124C8(v718, v710);
  }

  else
  {
    sub_100002A00(&v736);
    swift_beginAccess();
    v595 = *(v592 + 24);
    v731 = *(v592 + 16);
    *&v727 = v595;
    sub_10000AB0C(v731, v595);

    v596 = sub_10005DC58(&qword_10058DF58, &qword_1004884E0);
    v726 = &v716[*(v596 + 48)];
    v597 = v688[2];
    v598 = v716;
    v599 = v693;
    v597();
    v600 = type metadata accessor for NANPairing.GeneratedKeys(0);
    (v597)(&v598[v600[5]], v691, v599);
    (v597)(&v598[v600[6]], v690, v599);
    (v597)(&v598[v600[8]], v689, v599);
    v601 = &v598[v600[7]];
    v602 = v769;
    v603 = v713;
    *v601 = v769;
    *(v601 + 1) = v603;
    *&v743 = v731;
    *(&v743 + 1) = v727;
    sub_10000AB0C(v602, v603);
    v604 = v683;
    static HashFunction.hash<A>(data:)();
    v605 = v687;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v607 = sub_1001434FC(v604, v605, *(AssociatedConformanceWitness + 32));
    v721 = v608;
    (*(v686 + 8))(v604, v605);
    sub_100017554(v655, v717);
    sub_1000124C8(v731, v727);
    sub_1000124C8(v702, v729);
    sub_100016290(&v755, &qword_10058DF60, &qword_1004884E8);
    sub_100017554(v769, v603);
    sub_1000124C8(v719, v712);
    sub_1000124C8(v724, v725);
    sub_1000124C8(v709, v711);
    sub_1000124C8(v722, v723);
    sub_100017554(v703, v704);
    sub_100017554(*(&v704 + 1), v708);
    (v206)(v689, v599);
    (v206)(v690, v599);
    (v206)(v691, v599);
    (v206)(v692, v599);
    (*(v707 + 8))(v705, v706);
    sub_1000124C8(v718, v710);
    v609 = v726;
    v610 = v721;
    *v726 = v607;
    *(v609 + 8) = v610;
    v611 = v716;
    v612 = v728;
    swift_storeEnumTagMultiPayload();
    (v678[5])(&v730[v652], v611, v612);
  }

  return v88;
}

uint64_t sub_100135CC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v4 = result + 64;
    v5 = *(result + 88);
    result += 64;
    if (!v5)
    {
      v6 = *(v4 - 24);
      v7 = *(v4 - 16);
      v8 = *(v4 - 8);
      v9 = *v4;
      v10 = *(v4 + 8);
      v11 = *(v4 - 32) & 0xFFFFFFLL;

      goto LABEL_6;
    }
  }

  v11 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_6:
  *a2 = v11;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_100135D74@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16) + 1;
  v4 = 3;
  while (--v3)
  {
    v5 = (result + 64);
    v6 = *(result + 88);
    result += 64;
    if (v6 == 6)
    {
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v4 = *v5;
      v11 = v5[1];
      v12 = v5[2];
      v14[0] = v7;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v4;
      v14[5] = v11;
      v14[6] = v12;
      v15 = 6;
      result = sub_100144054(v14, v13);
      goto LABEL_6;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
LABEL_6:
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v4;
  a2[5] = v11;
  a2[6] = v12;
  return result;
}

uint64_t sub_100135E3C(uint64_t a1)
{
  v1 = a1 - 32;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = (v1 + 64);
    v4 = *(v1 + 120);
    v1 += 64;
    if (v4 == 8)
    {
      v5 = *v3;
    }
  }

  return 0;
}

unint64_t sub_100135E8C(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v809) = a4;
  *&v808 = a3;
  v771 = a2;
  v806 = a1;
  v7 = *(a5 + 16);
  v8 = *(a5 + 32);
  v9 = type metadata accessor for HashedAuthenticationCode();
  v778 = *(v9 - 8);
  v779 = v9;
  v10 = *(v778 + 64);
  __chkstk_darwin();
  v775 = &v736[-v11];
  v766 = sub_10005DC58(&qword_10058DF68, &unk_1004884F0);
  v12 = *(*(v766 - 8) + 64);
  __chkstk_darwin();
  v767 = &v736[-v13];
  v14 = type metadata accessor for SymmetricKeySize();
  v764 = *(v14 - 8);
  v765 = v14;
  v15 = *(v764 + 64);
  __chkstk_darwin();
  v763 = &v736[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v785 = type metadata accessor for SymmetricKey();
  v780 = *(v785 - 8);
  v17 = v780[8];
  __chkstk_darwin();
  *&v769 = &v736[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v781 = &v736[-v19];
  __chkstk_darwin();
  v782 = &v736[-v20];
  __chkstk_darwin();
  v783 = &v736[-v21];
  __chkstk_darwin();
  v784 = &v736[-v22];
  v23 = *(*(_s3SAEVMa(0) - 8) + 64);
  __chkstk_darwin();
  v770 = &v736[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v750 = type metadata accessor for NANPairing.SharedAssociation(0);
  v25 = *(*(v750 - 8) + 64);
  __chkstk_darwin();
  v759 = &v736[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v789 = &v736[-v27];
  v869 = type metadata accessor for Logger();
  v821 = *(v869 - 1);
  v28 = *(v821 + 64);
  __chkstk_darwin();
  v761 = &v736[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v801 = &v736[-v30];
  __chkstk_darwin();
  v820 = &v736[-v31];
  __chkstk_darwin();
  v811 = &v736[-v32];
  __chkstk_darwin();
  *&v810 = &v736[-v33];
  __chkstk_darwin();
  v805 = &v736[-v34];
  __chkstk_darwin();
  v803 = &v736[-v35];
  __chkstk_darwin();
  v802 = &v736[-v36];
  __chkstk_darwin();
  v768 = &v736[-v37];
  __chkstk_darwin();
  *(&v769 + 1) = &v736[-v38];
  __chkstk_darwin();
  v774 = &v736[-v39];
  __chkstk_darwin();
  v773 = &v736[-v40];
  __chkstk_darwin();
  v772 = &v736[-v41];
  __chkstk_darwin();
  v755 = &v736[-v42];
  __chkstk_darwin();
  v756 = &v736[-v43];
  __chkstk_darwin();
  v757 = &v736[-v44];
  __chkstk_darwin();
  v758 = &v736[-v45];
  __chkstk_darwin();
  v760 = &v736[-v46];
  __chkstk_darwin();
  v762 = &v736[-v47];
  __chkstk_darwin();
  v788 = &v736[-v48];
  __chkstk_darwin();
  v752 = &v736[-v49];
  __chkstk_darwin();
  v753 = &v736[-v50];
  __chkstk_darwin();
  *&v792 = &v736[-v51];
  __chkstk_darwin();
  v751 = &v736[-v52];
  v53 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v748 = &v736[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v790 = &v736[-v55];
  __chkstk_darwin();
  v749 = &v736[-v56];
  __chkstk_darwin();
  *(&v792 + 1) = &v736[-v57];
  v791 = type metadata accessor for NANPairing.Mode(0);
  v58 = *(*(v791 - 8) + 64);
  __chkstk_darwin();
  v754 = &v736[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v793 = &v736[-v60];
  v61 = type metadata accessor for SharedSecret();
  v62 = *(v61 - 8);
  v796 = v61;
  v797 = v62;
  v63 = *(v62 + 64);
  __chkstk_darwin();
  *(&v800 + 1) = &v736[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v794 = &v736[-v65];
  __chkstk_darwin();
  v795 = &v736[-v66];
  v67 = *(a5 + 24);
  v776 = v7;
  v777 = v8;
  *&v68 = v7;
  *&v800 = v67;
  *(&v68 + 1) = v67;
  *&v69 = v8;
  v799 = *(a5 + 40);
  *(&v69 + 1) = v799;
  v786 = v69;
  v787 = v68;
  v822[0] = v68;
  v822[1] = v69;
  v70 = type metadata accessor for NANPairing.PASN.State();
  v71 = *(v70 - 8);
  v72 = *(v71 + 64);
  __chkstk_darwin();
  v807 = &v736[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v819 = &v736[-v74];
  __chkstk_darwin();
  v76 = &v736[-v75];
  __chkstk_darwin();
  v78 = &v736[-v77];
  v79 = &v5[*(a5 + 80)];
  v813 = *v79;
  v812 = v79[1];
  v814 = v79[2];
  v815 = v79[3];
  v816 = v79[4];
  v817 = v79[5];
  v804 = a5;
  v80 = *(a5 + 96);
  v818 = v5;
  v81 = &v5[v80];
  v82 = v71;
  v85 = *(v71 + 16);
  v84 = v71 + 16;
  v83 = v85;
  v85(&v736[-v77], v81, v70);
  if (swift_getEnumCaseMultiPayload())
  {
    v811 = *(v82 + 8);
    (v811)(v78, v70);
    v83(v76, v81, v70);
    v86 = v821;
    v87 = v869;
    (*(v821 + 16))(v820, v818, v869);
    v818 = v76;
    v83(v819, v76, v70);
    v88 = Logger.logObject.getter();
    LODWORD(v810) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v810))
    {
      v89 = swift_slowAlloc();
      *&v808 = v88;
      v90 = v89;
      v809 = swift_slowAlloc();
      *&v822[0] = v809;
      *v90 = 136315394;
      v91 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v93 = sub_100002320(v91, v92, v822);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2080;
      v94 = v807;
      v95 = v819;
      v83(v807, v819, v70);
      v96 = v811;
      (v811)(v95, v70);
      v97 = sub_10012BF38(v70);
      v99 = v98;
      v96(v94, v70);
      v100 = sub_100002320(v97, v99, v822);

      *(v90 + 14) = v100;
      v101 = v808;
      _os_log_impl(&_mh_execute_header, v808, v810, "Cannot generate a PASN confirmation to %s when in state: %s", v90, 0x16u);
      swift_arrayDestroy();

      (*(v821 + 8))(v820, v869);
    }

    else
    {
      v96 = v811;
      (v811)(v819, v70);

      (*(v86 + 8))(v820, v87);
    }

    sub_10000B02C();
    swift_allocError();
    *v130 = xmmword_1004881C0;
    *(v130 + 16) = 1;
    swift_willThrow();
    v96(v818, v70);
    return v84;
  }

  v84 = v810;
  v819 = v79;
  v746 = v81;
  v747 = v82;
  v807 = v70;
  v103 = *v78;
  v102 = v78[1];
  if ((((v808 & 0x1000000000000000) != 0) | (2 * v809)) != 1)
  {
    v131 = v821;
    v132 = v811;
    v133 = v869;
    (*(v821 + 16))(v811, v818, v869);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v820 = v102;
      v138 = v137;
      *&v822[0] = v137;
      *v136 = 136315138;
      v139 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v84 = v103;
      v141 = v131;
      v142 = sub_100002320(v139, v140, v822);

      *(v136 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v134, v135, "Cannot generate a PASN confirmation to %s because the authentication frame received was not a PASN response frame", v136, 0xCu);
      sub_100002A00(v138);
      v102 = v820;

      (*(v141 + 8))(v811, v869);
    }

    else
    {

      (*(v131 + 8))(v132, v133);
    }

    goto LABEL_21;
  }

  v104 = v806;
  sub_100135CC0(v806, &v844);
  v105 = v846;
  v106 = v821;
  v820 = v102;
  if (!v846)
  {
LABEL_13:
    v119 = v869;
    (*(v106 + 16))(v84, v818, v869);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v822[0] = v123;
      *v122 = 136315138;
      v124 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v126 = v106;
      v127 = v103;
      v128 = sub_100002320(v124, v125, v822);
      v102 = v820;

      *(v122 + 4) = v128;
      v103 = v127;
      _os_log_impl(&_mh_execute_header, v120, v121, "Cannot generate a PASN confirmation for the PASN response from %s because the RSN capabilities, extended RSN capabilities or PASN parameters are missing", v122, 0xCu);
      sub_100002A00(v123);

      v129 = *(v126 + 8);
      v84 = v126 + 8;
      v129(v810, v869);
    }

    else
    {

      (*(v106 + 8))(v84, v119);
    }

LABEL_21:
    sub_10000B02C();
    swift_allocError();
    *v143 = xmmword_1004881C0;
    *(v143 + 16) = 1;
    swift_willThrow();
    v144 = v103;
    goto LABEL_22;
  }

  v107 = v844;
  v108 = v845;
  LODWORD(v811) = v848;
  v743 = v849;
  v109 = v850;
  v110 = *(v104 + 2);
  v744 = (v104 + 32);
  v745 = v847;
  v111 = v104 - 32;
  v112 = v110 + 1;
  do
  {
    if (!--v112)
    {
      goto LABEL_12;
    }

    v113 = (v111 + 64);
    v114 = v111[120];
    v111 += 64;
  }

  while (v114 != 1);
  v115 = *v113;

  if (!v116)
  {
LABEL_12:
    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    v102 = v820;
    goto LABEL_13;
  }

  v740 = v105;
  v741 = v103;
  v742 = v116;
  sub_100135D74(v104, &v851);
  v117 = v853;
  v118 = v853;
  if (v853 == 3)
  {

    v103 = v741;
    goto LABEL_12;
  }

  v856[0] = *v852;
  *(v856 + 15) = *&v852[15];
  if (v107 != 1)
  {

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    v102 = v820;
LABEL_35:
    v84 = v818;
    goto LABEL_36;
  }

  v102 = v820;
  v84 = v818;
  if (v108 != 6)
  {
    goto LABEL_33;
  }

  if (v109 != 6)
  {
    goto LABEL_33;
  }

  if ((v811 & 0x80) == 0)
  {
    goto LABEL_33;
  }

  if ((v811 & 0x40) == 0)
  {
    goto LABEL_33;
  }

  v737 = v851;
  v738 = v854;
  v739 = v855;
  sub_10005DC58(&qword_10058CC80, &qword_100482F88);
  v147 = swift_allocObject();
  v810 = xmmword_100480F40;
  *(v147 + 16) = xmmword_100480F40;
  *(v147 + 32) = *(v84 + v804[18]);
  v148 = sub_1000C2E80(v745, v147);
  swift_setDeallocating();
  swift_deallocClassInstance();
  if ((v148 & 1) == 0 || (sub_10005DC58(&qword_10058CC88, &unk_100482F90), v149 = swift_allocObject(), *(v149 + 16) = v810, *(v149 + 32) = *(v84 + v804[15]), v150 = sub_1000BC9A4(v740, v149), swift_setDeallocating(), swift_deallocClassInstance(), (v150 & 1) == 0) || v118 == 2)
  {
LABEL_33:

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
LABEL_36:
    v151 = v805;
    v152 = v84;
    v84 = v869;
    (*(v106 + 16))(v805, v152, v869);
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *&v822[0] = v156;
      *v155 = 136315138;
      v157 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v84 = v102;
      v159 = sub_100002320(v157, v158, v822);

      *(v155 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v153, v154, "Cannot generate a PASN confirmation for the PASN response from %s because the RSN capabilities or PASN parameters do not match", v155, 0xCu);
      sub_100002A00(v156);

      (*(v106 + 8))(v805, v869);
    }

    else
    {

      (*(v106 + 8))(v151, v84);
    }

    v160 = v741;
    sub_10000B02C();
    swift_allocError();
    *v161 = xmmword_1004881C0;
    *(v161 + 16) = 1;
    swift_willThrow();
    sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
    v144 = v160;
LABEL_22:
    v145 = v102;
LABEL_23:
    sub_1000124C8(v144, v145);
    return v84;
  }

  v162 = v804[16];
  if (*(v84 + v162))
  {
    v163 = 20;
  }

  else
  {
    v163 = 19;
  }

  if ((v117 & 1) + 19 != v163)
  {

    v174 = &qword_10058DF70;
    v175 = &unk_100488500;
    v176 = &v844;
LABEL_51:
    sub_100016290(v176, v174, v175);
    v102 = v820;
    v106 = v821;
    goto LABEL_35;
  }

  v857 = *(v856 + 7);
  v858 = *(&v856[1] + 7);
  if (*(&v856[1] + 7) >> 60 != 15)
  {
    sub_100012400(&v857, v822, &qword_10058DF78, &unk_100488530);

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    v176 = &v857;
    v174 = &qword_10058DF78;
    v175 = &unk_100488530;
    goto LABEL_51;
  }

  if (v739 >> 60 == 15)
  {

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    (*(v821 + 16))(v803, v818, v869);
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      *&v822[0] = swift_slowAlloc();
      *v166 = 136315394;
      v167 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v169 = sub_100002320(v167, v168, v822);

      *(v166 + 4) = v169;
      *(v166 + 12) = 2080;
      swift_getAssociatedTypeWitness();
      v170 = _typeName(_:qualified:)();
      v172 = sub_100002320(v170, v171, v822);

      *(v166 + 14) = v172;
      _os_log_impl(&_mh_execute_header, v164, v165, "Cannot generate a PASN confirmation for the PASN response from %s because the public key in the response could not be decoded into a %s", v166, 0x16u);
      swift_arrayDestroy();
    }

    (*(v821 + 8))(v803, v869);
    sub_10000B02C();
    swift_allocError();
    *v173 = xmmword_1004881C0;
    *(v173 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(v741, v820);
    sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
    return v84;
  }

  if ((v117 & 0x10000) != 0)
  {
    sub_10005D67C(v738, v739);

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    (*(v821 + 16))(v802, v818, v869);
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *&v822[0] = v182;
      *v181 = 136315138;
      v183 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v185 = sub_100002320(v183, v184, v822);

      *(v181 + 4) = v185;
      _os_log_impl(&_mh_execute_header, v179, v180, "Cannot generate a PASN confirmation for the PASN request from %s because the public key type in the request could not be found", v181, 0xCu);
      sub_100002A00(v182);
    }

    (*(v821 + 8))(v802, v869);
    sub_10000B02C();
    swift_allocError();
    *v186 = xmmword_1004881C0;
    *(v186 + 16) = 1;
    goto LABEL_63;
  }

  v177 = v804[22];
  sub_10000AB0C(v738, v739);
  if ((v117 & 0xFF00) == 0x400)
  {
    v178 = v798;
    sub_10012CBB0(v738, v739, &v818[v177], v804, v794);
    v805 = v178;
    if (!v178)
    {
      *(&v800 + 1) = v794;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  v187 = v798;
  sub_10012CEA0(v738, v739, &v818[v177], v804, *(&v800 + 1));
  v805 = v187;
  if (v187)
  {
LABEL_60:

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    (*(v821 + 16))(v801, v818, v869);
    swift_errorRetain();
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v822[0] = v192;
      *v190 = 136315394;
      v193 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v195 = sub_100002320(v193, v194, v822);

      *(v190 + 4) = v195;
      *(v190 + 12) = 2112;
      swift_errorRetain();
      v196 = _swift_stdlib_bridgeErrorToNSError();
      *(v190 + 14) = v196;
      *v191 = v196;
      _os_log_impl(&_mh_execute_header, v188, v189, "Cannot generate a PASN confirmation for the PASN response from %s because the shared secret agreement failed with error: %@", v190, 0x16u);
      sub_100016290(v191, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v192);
    }

    (*(v821 + 8))(v801, v869);
LABEL_63:
    swift_willThrow();
    sub_1000124C8(v741, v820);
    sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
    sub_100017554(v738, v739);
    return v84;
  }

LABEL_64:
  (*(v797 + 32))(v795, *(&v800 + 1), v796);
  v803 = sub_100135E3C(v806);
  if (!v803)
  {

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
LABEL_86:
    sub_10000B02C();
    swift_allocError();
    *v230 = xmmword_1004881C0;
    *(v230 + 16) = 1;
    swift_willThrow();
    sub_100017554(v738, v739);
    sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
    sub_1000124C8(v741, v820);
LABEL_101:
    (*(v797 + 8))(v795, v796);
    return v84;
  }

  v801 = v804[13];
  sub_10012A6E4(&v818[v801], v793, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v201 = v793;
    v198 = *v793;
    v202 = *(v793 + 24);
    v839 = *(v793 + 8);
    v840[0] = v202;
    *(v840 + 10) = *(v793 + 34);
    v203 = *(v793 + 72);
    v841 = *(v793 + 56);
    v842 = v203;
    v843 = *(v793 + 11);
    LODWORD(v802) = *(v793 + 48);
    v204 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_10012A684(&v201[*(v204 + 48)], _s3SAEVMa);
    goto LABEL_70;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100142410(v793, v789, type metadata accessor for NANPairing.SharedAssociation);
    v218 = v803;

    v219 = v790;
    Array<A>.retrieve(attribute:)(34, v218, v790);

    v220 = type metadata accessor for NANAttribute(0);
    v221 = *(v220 - 8);
    v222 = *(v221 + 48);
    v84 = v221 + 48;
    if (v222(v219, 1, v220) == 1)
    {

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

      sub_100016290(v790, &unk_100595C00, &qword_10048F790);
    }

    else if (swift_getEnumCaseMultiPayload() == 30)
    {
      v802 = v736;
      v231 = *(v790 + 1);
      __chkstk_darwin();
      v233 = v786;
      *&v736[-48] = v787;
      *&v736[-32] = v233;
      *&v736[-16] = v818;
      v234 = *(v232 + 16);
      if (v234)
      {
        v235 = v232 + 33;
        while (1)
        {
          LOWORD(v822[0]) = *(v235 - 1);
          v236 = v805;
          v237 = sub_100144274(v822);
          v805 = v236;
          if (v236 || v237)
          {
            break;
          }

          v235 += 2;
          if (!--v234)
          {
            goto LABEL_93;
          }
        }

        v251 = v803;

        v252 = v748;
        Array<A>.retrieve(attribute:)(43, v251, v748);

        if (v222(v252, 1, v220) == 1)
        {

          sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

          sub_100016290(v748, &unk_100595C00, &qword_10048F790);
        }

        else if (swift_getEnumCaseMultiPayload() == 38)
        {
          v254 = *v748;
          v253 = v748[1];
          v214 = v748[3];
          v802 = v748[2];
          v255 = v789 + *(v750 + 28);
          v84 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(*v819 | (*(v819 + 2) << 16), v254, v253);
          v257 = v256;
          v259 = v258;
          v261 = v260;
          *&v800 = v254;
          *(&v800 + 1) = v253;
          if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v84, v256, v254, v253))
          {
            v262 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v259, v261, v802, v214);
            sub_1000124C8(v84, v257);
            sub_1000124C8(v259, v261);
            if (v262)
            {
              v799 = sub_1001F8188(v743);
              sub_10005DC58(&qword_10058CC08, &unk_100488510);
              v263 = swift_allocObject();
              *(v263 + 16) = v810;
              v209 = v800;
              v835 = v800;
              v264 = *(&v800 + 1);
              *(&v822[1] + 1) = &type metadata for Data;
              *&v822[2] = &protocol witness table for Data;
              v210 = v802;
              *&v822[0] = v802;
              *(&v822[0] + 1) = v214;
              v265 = sub_100029B34(v822, &type metadata for Data);
              v266 = *v265;
              v267 = v265[1];
              sub_10000AB0C(v209, v264);
              sub_10000AB0C(v210, v214);
              v268 = v805;
              sub_100178A18(v266, v267);
              v805 = v268;
              sub_100002A00(v822);
              *(v263 + 32) = _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v835, *(&v835 + 1));
              *(v263 + 40) = v269;
              v84 = sub_1000BFCF4(v799, v263);

              swift_setDeallocating();
              v270 = *(v263 + 16);
              sub_10005DC58(&qword_10058CC10, &qword_100482F10);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              if (v84)
              {
                sub_10012A684(v789, type metadata accessor for NANPairing.SharedAssociation);
                sub_1000124C8(v800, *(&v800 + 1));
                sub_1000124C8(v802, v214);
                goto LABEL_120;
              }

              sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

              (*(v821 + 16))(v753, v818, v869);
              v470 = Logger.logObject.getter();
              v471 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v470, v471))
              {
                v472 = swift_slowAlloc();
                v473 = swift_slowAlloc();
                *&v822[0] = v473;
                *v472 = 136315138;
                v474 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
                v84 = v475;
                v476 = sub_100002320(v474, v475, v822);

                *(v472 + 4) = v476;
                _os_log_impl(&_mh_execute_header, v470, v471, "Cannot generate a PASN confirmation for the PASN response from %s because the RSN capability PMK ID was invalid", v472, 0xCu);
                sub_100002A00(v473);
              }

              (*(v821 + 8))(v753, v869);
              sub_10000B02C();
              swift_allocError();
              *v477 = xmmword_1004881C0;
              *(v477 + 16) = 1;
              swift_willThrow();
              sub_100017554(v738, v739);
              sub_1000124C8(v800, *(&v800 + 1));
              sub_1000124C8(v802, v214);
LABEL_99:
              sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
              sub_1000124C8(v741, v820);
              v246 = type metadata accessor for NANPairing.SharedAssociation;
              v247 = v789;
LABEL_100:
              sub_10012A684(v247, v246);
              goto LABEL_101;
            }

            sub_1000124C8(v800, *(&v800 + 1));
            sub_1000124C8(v802, v214);

            sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
          }

          else
          {
            sub_1000124C8(v800, *(&v800 + 1));
            sub_1000124C8(v802, v214);

            sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

            sub_1000124C8(v84, v257);
            sub_1000124C8(v259, v261);
          }
        }

        else
        {

          sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

          sub_10012A684(v748, type metadata accessor for NANAttribute);
        }

        (*(v821 + 16))(v752, v818, v869);
        v463 = Logger.logObject.getter();
        v464 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v463, v464))
        {
          v465 = swift_slowAlloc();
          v466 = swift_slowAlloc();
          *&v822[0] = v466;
          *v465 = 136315138;
          v467 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
          v469 = sub_100002320(v467, v468, v822);

          *(v465 + 4) = v469;
          _os_log_impl(&_mh_execute_header, v463, v464, "Cannot generate a PASN confirmation for the PASN response from %s because the pairing identity resolution attribute was invalid", v465, 0xCu);
          sub_100002A00(v466);
        }

        (*(v821 + 8))(v752, v869);
LABEL_98:
        sub_10000B02C();
        swift_allocError();
        *v245 = xmmword_1004881C0;
        *(v245 + 16) = 1;
        swift_willThrow();
        sub_100017554(v738, v739);
        goto LABEL_99;
      }

LABEL_93:

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    }

    else
    {

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

      sub_10012A684(v790, type metadata accessor for NANAttribute);
    }

    (*(v821 + 16))(v788, v818, v869);
    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      *&v822[0] = v241;
      *v240 = 136315138;
      v242 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v244 = sub_100002320(v242, v243, v822);

      *(v240 + 4) = v244;
      _os_log_impl(&_mh_execute_header, v238, v239, "Cannot generate a PASN confirmation for the PASN response from %s because the cipher suites information attribute was invalid", v240, 0xCu);
      sub_100002A00(v241);
    }

    (*(v821 + 8))(v788, v869);
    goto LABEL_98;
  }

  v198 = *v793;
  v199 = *(v793 + 24);
  v839 = *(v793 + 8);
  v840[0] = v199;
  *(v840 + 10) = *(v793 + 34);
  v200 = *(v793 + 72);
  v841 = *(v793 + 56);
  v842 = v200;
  v843 = *(v793 + 11);
  LODWORD(v802) = *(v793 + 48);
LABEL_70:
  LOBYTE(v822[0]) = v198;
  *(v822 + 8) = v839;
  *(&v822[1] + 8) = v840[0];
  *(&v822[2] + 2) = *(v840 + 10);
  *(&v822[3] + 8) = v841;
  *(&v822[4] + 8) = v842;
  *(&v822[5] + 1) = v843;
  v823 = v802;
  v205 = v803;

  v206 = *(&v792 + 1);
  Array<A>.retrieve(attribute:)(34, v205, *(&v792 + 1));

  v207 = type metadata accessor for NANAttribute(0);
  v208 = *(v207 - 8);
  v209 = *(v208 + 48);
  v210 = (v208 + 48);
  if ((v209)(v206, 1, v207) == 1)
  {

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

    sub_100016290(*(&v792 + 1), &unk_100595C00, &qword_10048F790);
LABEL_82:
    (*(v821 + 16))(v792, v818, v869);
    v223 = Logger.logObject.getter();
    v224 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      *&v835 = v226;
      *v225 = 136315138;
      v227 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v229 = sub_100002320(v227, v228, &v835);

      *(v225 + 4) = v229;
      sub_100141458(v822);
      _os_log_impl(&_mh_execute_header, v223, v224, "Cannot generate a PASN confirmation for the PASN response from %s because the cipher suites information attribute was invalid", v225, 0xCu);
      sub_100002A00(v226);
    }

    else
    {
      sub_100141458(v822);
    }

    (*(v821 + 8))(v792, v869);
    goto LABEL_86;
  }

  if (swift_getEnumCaseMultiPayload() != 30)
  {

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

    sub_10012A684(*(&v792 + 1), type metadata accessor for NANAttribute);
    goto LABEL_82;
  }

  *(&v800 + 1) = v736;
  v211 = *(*(&v792 + 1) + 8);
  __chkstk_darwin();
  v213 = v786;
  *&v736[-48] = v787;
  *&v736[-32] = v213;
  *&v736[-16] = v818;
  v214 = v212;
  v84 = *(v212 + 16);
  if (!v84)
  {
LABEL_78:

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

    goto LABEL_82;
  }

  v215 = v212 + 33;
  while (1)
  {
    LOWORD(v835) = *(v215 - 1);
    v216 = v805;
    v217 = sub_100144274(&v835);
    v805 = v216;
    if (v216 || v217)
    {
      break;
    }

    v215 += 2;
    if (!--v84)
    {
      goto LABEL_78;
    }
  }

  v248 = v803;

  v249 = v749;
  Array<A>.retrieve(attribute:)(44, v248, v749);

  if ((v209)(v249, 1, v207) == 1)
  {
    sub_100141458(v822);
    sub_100016290(v749, &unk_100595C00, &qword_10048F790);
  }

  else if (swift_getEnumCaseMultiPayload() == 39)
  {
    *(v836 + 10) = *(v749 + 26);
    v250 = v749[1];
    v835 = *v749;
    v836[0] = v250;
    if (WORD4(v836[1]) == v802)
    {
      sub_100141458(v822);
      sub_1001440B0(&v835);
    }

    else
    {
      (*(v821 + 16))(v751, v818, v869);
      v214 = Logger.logObject.getter();
      v271 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v214, v271))
      {
        v272 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        *&v829 = v209;
        *v272 = 136315138;
        v273 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
        v84 = v274;
        v275 = sub_100002320(v273, v274, &v829);

        *(v272 + 4) = v275;
        sub_100141458(v822);
        _os_log_impl(&_mh_execute_header, v214, v271, "Cannot generate a PASN confirmation for the PASN response from %s because the pairing bootstraping attribute was invalid", v272, 0xCu);
        sub_100002A00(v209);

        sub_1001440B0(&v835);
      }

      else
      {
        sub_100141458(v822);
        sub_1001440B0(&v835);
      }

      (*(v821 + 8))(v751, v869);
    }
  }

  else
  {
    sub_100141458(v822);
    sub_10012A684(v749, type metadata accessor for NANAttribute);
  }

LABEL_120:
  sub_10012A6E4(&v818[v801], v754, type metadata accessor for NANPairing.Mode);
  v276 = swift_getEnumCaseMultiPayload();
  if (!v276)
  {

    v294 = v754;
    v295 = *(v754 + 5);
    v822[4] = *(v754 + 4);
    v822[5] = v295;
    v823 = *(v754 + 48);
    v296 = *(v754 + 1);
    v822[0] = *v754;
    v822[1] = v296;
    v297 = *(v754 + 3);
    v822[2] = *(v754 + 2);
    v822[3] = v297;
    sub_100141458(v822);
    v298 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(&v294[*(v298 + 48)], v770, _s3SAEVMa);
    if (qword_10058AAE8 != -1)
    {
      swift_once();
    }

    v214 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    *&v835 = static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
    v299 = *(static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement + 16);
    v286 = *(v742 + 16);

    if (v299 <= v286)
    {
      v285 = v214;
    }

    else
    {
      sub_100235DAC((v299 - v286));
      v285 = v835;
      v299 = *(v835 + 16);
    }

    if (v299)
    {
      v84 = 0;
      v210 = (v742 + 32);
      do
      {
        if (v286 == v84)
        {
          break;
        }

        v277 = v210[v84];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v285 = sub_1000C28C4(v285);
        }

        v318 = v285[2];
        if (v84 >= v318)
        {
          __break(1u);
          goto LABEL_227;
        }

        *(v285 + v84 + 32) &= v277;
        *&v835 = v285;
        ++v84;
      }

      while (v299 != v84);
    }

    v319 = sub_1000C2E80(v285, v214);

    if ((v319 & 1) != 0 && v737 == 3)
    {
      v320 = *(v806 + 2);
      if (v320)
      {
        while (1)
        {
          v321 = *v744;
          v322 = v744[1];
          v323 = v744[2];
          *(&v836[1] + 9) = *(v744 + 41);
          v836[0] = v322;
          v836[1] = v323;
          v835 = v321;
          if (BYTE8(v836[2]) == 5)
          {
            break;
          }

          v744 += 4;
          if (!--v320)
          {
            goto LABEL_151;
          }
        }

        v418 = v835;
        sub_1000C2DC8(&v835, &v829);
        sub_1000C2DC8(&v835, &v829);
        v419 = sub_100033AA8(_swiftEmptyArrayStorage);
        v420 = type metadata accessor for BinaryDecoder();
        swift_allocObject();
        v421 = BinaryDecoder.init(data:userInfo:)(v418, *(&v418 + 1), v419);
        *(&v830 + 1) = v420;
        v84 = sub_10014400C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        *&v831[0] = v84;
        *&v829 = v421;

        v422 = v805;
        v423 = sub_1001427AC(&v829);
        v805 = v422;
        if (v422)
        {
          goto LABEL_191;
        }

        v425 = v423;
        v426 = v424;
        v427 = sub_100033AA8(_swiftEmptyArrayStorage);
        swift_allocObject();
        v428 = BinaryDecoder.init(data:userInfo:)(v425, v426, v427);
        *&v831[0] = v84;
        *(&v830 + 1) = v420;
        *&v829 = v428;
        v429 = v805;
        *&v800 = sub_1001F5414(&v829);
        v799 = v430;
        v803 = v431;
        DWORD2(v800) = v432;
        v805 = v429;
        if (v429)
        {
LABEL_191:

          sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
          v433 = 0;
LABEL_192:
          (*(v821 + 16))(v761, v818, v869);
          v434 = Logger.logObject.getter();
          v435 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v434, v435))
          {
            v436 = swift_slowAlloc();
            v437 = swift_slowAlloc();
            *&v829 = v437;
            *v436 = 136315138;
            v438 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
            v84 = sub_100002320(v438, v439, &v829);

            *(v436 + 4) = v84;
            _os_log_impl(&_mh_execute_header, v434, v435, "Cannot generate a PASN confirmation for the PASN response from %s because the SAE wrapped data could not be decoded into a commit and confirmation", v436, 0xCu);
            sub_100002A00(v437);
          }

          (*(v821 + 8))(v761, v869);
          swift_willThrow();
          sub_100017554(v738, v739);
          sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
          sub_1000C2E24(&v835);
          sub_1000124C8(v741, v820);
          sub_10012A684(v770, _s3SAEVMa);
          (*(v797 + 8))(v795, v796);
          if (v433)
          {
            sub_1000B21F4(v800, v799, v803, SBYTE8(v800));
          }

          return v84;
        }

        *&v831[0] = v84;
        *(&v830 + 1) = v420;
        *&v829 = v421;

        v504 = v805;
        v505 = sub_1001427AC(&v829);
        v805 = v504;
        if (v504)
        {

LABEL_222:
          sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
          v433 = 1;
          goto LABEL_192;
        }

        v507 = v505;
        v508 = v506;
        v509 = sub_100033AA8(_swiftEmptyArrayStorage);
        swift_allocObject();
        v510 = BinaryDecoder.init(data:userInfo:)(v507, v508, v509);
        *&v831[0] = v84;
        *(&v830 + 1) = v420;
        *&v829 = v510;
        sub_10000AB0C(v507, v508);
        v511 = v805;
        *(&v792 + 1) = sub_1001F5414(&v829);
        v793 = v512;
        v798 = v513;
        LODWORD(v794) = v514;
        v805 = v511;
        if (v511)
        {

          sub_1000124C8(v507, v508);

          goto LABEL_222;
        }

        sub_1000124C8(v507, v508);
        if ((((v803 & 0x1000000000000000) != 0) | (2 * BYTE8(v800))) == 3 && (v803 & 0x2000000000000000) == 0 && (!v818[v162] ? (v522 = 19) : (v522 = 20), (v800 & 1) + 19 == v522))
        {
          if ((((v798 & 0x1000000000000000) != 0) | (2 * v794)) == 3 && (v798 & 0x2000000000000000) != 0)
          {
            v606 = v800;
            v607 = v799;
            v608 = v803;
            v609 = BYTE8(v800);
            sub_100143FBC(v800, v799, v803, SBYTE8(v800));
            sub_100143FBC(v606, v607, v608, v609);
            sub_100143FBC(*(&v792 + 1), v793, v798, v794);
            v610 = v805;
            v288 = sub_100221278(v607, v608 & 0xEFFFFFFFFFFFFFFFLL);
            v805 = v610;
            if (v610)
            {

              sub_100017554(v738, v739);
              v611 = v800;
              v612 = v799;
              v613 = v803;
              v614 = BYTE8(v800);
              sub_1000B21F4(v800, v799, v803, SBYTE8(v800));
              sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
              sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
              v615 = *(&v792 + 1);
              v84 = v793;
              v616 = v798;
              v617 = v794;
              sub_1000B21F4(*(&v792 + 1), v793, v798, v794);
              sub_1000B21F4(v611, v612, v613, v614);
              sub_1000B21F4(v615, v84, v616, v617);
              sub_1000C2E24(&v835);
              sub_1000124C8(v741, v820);
              sub_1000B21F4(v611, v612, v613, v614);
              sub_10012A684(v770, _s3SAEVMa);
              (*(v797 + 8))(v795, v796);
              return v84;
            }

            goto LABEL_271;
          }

          v523 = v803;
          v524 = v800;
          v525 = v799;
          sub_100144000(v800, v799, v803 & 0xEFFFFFFFFFFFFFFFLL);

          sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
          sub_1000B21F4(v524, v525, v523, SBYTE8(v800));
        }

        else
        {

          sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
        }

        (*(v821 + 16))(v760, v818, v869);
        v526 = Logger.logObject.getter();
        v527 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v526, v527))
        {
          v528 = swift_slowAlloc();
          v529 = swift_slowAlloc();
          *&v829 = v529;
          *v528 = 136315138;
          v530 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
          v84 = v531;
          v532 = sub_100002320(v530, v531, &v829);

          *(v528 + 4) = v532;
          _os_log_impl(&_mh_execute_header, v526, v527, "Cannot generate a PASN confirmation for the PASN response from %s because SAE wrapped data could not be decoded into a valid commit and confirmation", v528, 0xCu);
          sub_100002A00(v529);
        }

        (*(v821 + 8))(v760, v869);
        sub_10000B02C();
        swift_allocError();
        *v533 = xmmword_1004881C0;
        *(v533 + 16) = 1;
        swift_willThrow();
        sub_100017554(v738, v739);
        sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
        sub_1000B21F4(*(&v792 + 1), v793, v798, v794);
        sub_1000C2E24(&v835);
        sub_1000124C8(v741, v820);
        sub_1000B21F4(v800, v799, v803, SBYTE8(v800));
        goto LABEL_158;
      }

LABEL_151:

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
      (*(v821 + 16))(v758, v818, v869);
      v324 = Logger.logObject.getter();
      v325 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v324, v325))
      {
        v326 = swift_slowAlloc();
        v327 = swift_slowAlloc();
        *&v835 = v327;
        *v326 = 136315138;
        v328 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
        v330 = sub_100002320(v328, v329, &v835);

        *(v326 + 4) = v330;
        _os_log_impl(&_mh_execute_header, v324, v325, "Cannot generate a PASN confirmation for the PASN response from %s because no SAE wrapped data was included", v326, 0xCu);
        sub_100002A00(v327);
      }

      (*(v821 + 8))(v758, v869);
    }

    else
    {

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
      (*(v821 + 16))(v757, v818, v869);
      v331 = Logger.logObject.getter();
      v332 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v331, v332))
      {
        v333 = swift_slowAlloc();
        v334 = swift_slowAlloc();
        *&v835 = v334;
        *v333 = 136315138;
        v335 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
        v337 = sub_100002320(v335, v336, &v835);

        *(v333 + 4) = v337;
        _os_log_impl(&_mh_execute_header, v331, v332, "Cannot generate a PASN confirmation for the PASN response from %s because the SAE parameters were invalid", v333, 0xCu);
        sub_100002A00(v334);
      }

      (*(v821 + 8))(v757, v869);
    }

    sub_10000B02C();
    swift_allocError();
    *v338 = xmmword_1004881C0;
    *(v338 + 16) = 1;
    swift_willThrow();
    sub_100017554(v738, v739);
    sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
    sub_1000124C8(v741, v820);
LABEL_158:
    v246 = _s3SAEVMa;
    v247 = v770;
    goto LABEL_100;
  }

  if (v276 == 1)
  {
    sub_10012A684(v754, type metadata accessor for NANPairing.Mode);
    if (*(v743 + 16) || v737)
    {

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

      (*(v821 + 16))(v756, v818, v869);
      v308 = Logger.logObject.getter();
      v309 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v308, v309))
      {
        v310 = swift_slowAlloc();
        *&v822[0] = swift_slowAlloc();
        *v310 = 136315394;
        v311 = v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40);
        v312 = WiFiAddress.description.getter(v311);
        v314 = sub_100002320(v312, v313, v822);

        *(v310 + 4) = v314;
        *(v310 + 12) = 2080;
        v315 = WiFiAddress.description.getter(v311);
        v317 = sub_100002320(v315, v316, v822);

        *(v310 + 14) = v317;
        _os_log_impl(&_mh_execute_header, v308, v309, "Cannot generate a PASN confirmation for the PASN response from %s from %s because a wrapped data format or PMK ID was provided for opportunistic pair setup", v310, 0x16u);
        swift_arrayDestroy();
      }

      (*(v821 + 8))(v756, v869);
      goto LABEL_86;
    }

    v277 = sub_10016FD40(2051755344, 0xE400000000000000);
    v279 = v278;
    v280 = type metadata accessor for __DataStorage();
    v281 = *(v280 + 48);
    v282 = *(v280 + 52);
    swift_allocObject();
    v283 = __DataStorage.init(length:)();
    *&v835 = v277;
    *(&v835 + 1) = v279;
    *(&v822[1] + 1) = &type metadata for Data;
    *&v822[2] = &protocol witness table for Data;
    *&v822[0] = 0x1C00000000;
    *(&v822[0] + 1) = v283 | 0x4000000000000000;
    v284 = sub_100029B34(v822, &type metadata for Data);
    v285 = *v284;
    v286 = v284[1];
    sub_10000AB0C(v277, v279);
    v287 = v805;
    sub_100178A18(v285, v286);
    v805 = v287;
    sub_1000124C8(v277, v279);
    v288 = sub_100002A00(v822);
    v801 = *(&v835 + 1);
    v802 = v835;
    v292 = *(&v835 + 1) >> 62;
    if ((*(&v835 + 1) >> 62) > 1)
    {
      if (v292 != 2)
      {
        goto LABEL_300;
      }

      v342 = *(v802 + 2);
      v341 = *(v802 + 3);
      v343 = __OFSUB__(v341, v342);
      v293 = v341 - v342;
      if (!v343)
      {
LABEL_167:
        if (v293 == 32)
        {

          goto LABEL_169;
        }

LABEL_300:
        sub_1000124C8(v802, v801);
        __break(1u);
        goto LABEL_301;
      }

      __break(1u);
    }

    else if (!v292)
    {
      v293 = BYTE6(v801);
      goto LABEL_167;
    }

    LODWORD(v293) = HIDWORD(v802) - v802;
    if (!__OFSUB__(HIDWORD(v802), v802))
    {
      v293 = v293;
      goto LABEL_167;
    }

    __break(1u);
LABEL_271:
    v636 = v288;
    v210 = v289;
    v637 = v290;
    v638 = v291;
    sub_1000B21F4(v800, v799, v803, SBYTE8(v800));
    v639 = sub_100033AA8(_swiftEmptyArrayStorage);
    v277 = type metadata accessor for BinaryEncoder();
    v285 = swift_allocObject();
    *(v285 + 1) = xmmword_100480A90;
    v286 = (v285 + 2);
    v285[4] = v639;
    *(&v830 + 1) = v277;
    *&v831[0] = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    *&v829 = v285;

    v640 = v805;
    IEEE80211Frame.Management.Authentication.encode(to:)(&v829, v636, v210, v637, v638);
    v805 = v640;
    if (!v640)
    {
      sub_1000B21F4(v636, v210, v637, v638);
      sub_100002A00(&v829);
      swift_beginAccess();
      v214 = v285[2];
      v84 = v285[3];
      sub_10000AB0C(v214, v84);

      v536 = v84 >> 62;
      if ((v84 >> 62) > 1)
      {
        if (v536 != 2)
        {
          goto LABEL_292;
        }

        v691 = *(v214 + 16);
        v692 = *(v214 + 24);
        goto LABEL_291;
      }

      if (!v536)
      {
        goto LABEL_292;
      }

      goto LABEL_290;
    }

    sub_100017554(v738, v739);
    sub_1000B21F4(v636, v210, v637, v638);
    sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    v641 = *(&v792 + 1);
    v84 = v793;
    v642 = v798;
    v643 = v794;
    sub_1000B21F4(*(&v792 + 1), v793, v798, v794);

    v644 = v800;
    v645 = v799;
    v646 = v803;
    v647 = BYTE8(v800);
    sub_1000B21F4(v800, v799, v803, SBYTE8(v800));
    sub_1000B21F4(v641, v84, v642, v643);
    sub_1000C2E24(&v835);
    sub_1000124C8(v741, v820);
    sub_1000B21F4(v644, v645, v646, v647);
    sub_10012A684(v770, _s3SAEVMa);
    (*(v797 + 8))(v795, v796);
    sub_100002A00(&v829);
    return v84;
  }

  sub_100142410(v754, v759, type metadata accessor for NANPairing.SharedAssociation);
  if (v737)
  {

    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    (*(v821 + 16))(v755, v818, v869);
    v300 = Logger.logObject.getter();
    v301 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v300, v301))
    {
      v302 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      *&v822[0] = v303;
      *v302 = 136315138;
      v304 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
      v306 = sub_100002320(v304, v305, v822);

      *(v302 + 4) = v306;
      _os_log_impl(&_mh_execute_header, v300, v301, "Cannot generate a PASN confirmation for the PASN response from %s because a wrapped data format was provided for pair verification", v302, 0xCu);
      sub_100002A00(v303);
    }

    (*(v821 + 8))(v755, v869);
    sub_10000B02C();
    swift_allocError();
    *v307 = xmmword_1004881C0;
    *(v307 + 16) = 1;
    swift_willThrow();
    sub_100017554(v738, v739);
    sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
    sub_1000124C8(v741, v820);
    v246 = type metadata accessor for NANPairing.SharedAssociation;
    v247 = v759;
    goto LABEL_100;
  }

  v339 = v759;
  v340 = v759[1];
  v802 = *v759;
  v801 = v340;
  sub_10000AB0C(v802, v340);
  sub_10012A684(v339, type metadata accessor for NANPairing.SharedAssociation);
LABEL_169:
  v210 = _swiftEmptyArrayStorage;
  while (1)
  {
    v794 = v804[25];
    v344 = sub_10014345C(*&v818[v794]);
    v345 = v344;
    v347 = v346;
    v348 = v346 >> 62;
    if ((v346 >> 62) > 1)
    {
      if (v348 != 2)
      {
        goto LABEL_178;
      }

      v344 = *(v344 + 16);
      v349 = *(v345 + 24);
    }

    else
    {
      if (!v348)
      {
        goto LABEL_178;
      }

      v344 = v344;
      v349 = v345 >> 32;
    }

    if (v349 < v344)
    {
      __break(1u);
    }

LABEL_178:
    v350 = Data.subdata(in:)();
    v352 = v351;
    sub_1000124C8(v345, v347);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v210 = sub_10011727C(0, *(v210 + 2) + 1, 1, v210);
    }

    v354 = *(v210 + 2);
    v353 = *(v210 + 3);
    if (v354 >= v353 >> 1)
    {
      v210 = sub_10011727C((v353 > 1), v354 + 1, 1, v210);
    }

    *(v210 + 2) = v354 + 1;
    v355 = &v210[64 * v354];
    *(v355 + 4) = v350;
    *(v355 + 5) = v352;
    v356 = v836[3];
    v357 = v836[4];
    *(v355 + 10) = v837;
    *(v355 + 3) = v356;
    *(v355 + 4) = v357;
    v355[88] = 7;
    v838 = 1;
    sub_10005DC58(&qword_10058D640, &unk_100488520);
    v358 = swift_allocObject();
    *(v358 + 16) = v810;
    v359 = v838;
    *(v358 + 32) = v737;
    *(v358 + 40) = 0;
    *(v358 + 48) = 0;
    *(v358 + 56) = 0xF000000000000000;
    *(v358 + 64) = 2;
    *(v358 + 66) = v359;
    *(v358 + 72) = xmmword_100483C50;
    *(v358 + 88) = 6;
    *&v822[0] = v358;
    sub_1002353A8(v210);
    v803 = *&v822[0];
    v360 = &v818[v804[19]];
    v361 = *(v360 + 2);
    v362 = sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v363 = swift_allocObject();
    v810 = xmmword_1004817D0;
    *(v363 + 16) = xmmword_1004817D0;
    v798 = v360;
    *(v363 + 32) = *v360;
    *(v363 + 36) = v361;
    v364 = sub_10002D874(v363);
    v366 = v365;

    v367 = v819;
    LOWORD(v360) = *(v819 + 2);
    v799 = v362;
    v368 = swift_allocObject();
    *(v368 + 16) = v810;
    *(v368 + 32) = *v367;
    *(v368 + 36) = v360;
    v369 = sub_10002D874(v368);
    v371 = v370;

    *&v829 = v364;
    *(&v829 + 1) = v366;
    v277 = &type metadata for Data;
    *(&v822[1] + 1) = &type metadata for Data;
    *&v822[2] = &protocol witness table for Data;
    *&v822[0] = v369;
    *(&v822[0] + 1) = v371;
    v372 = sub_100029B34(v822, &type metadata for Data);
    v373 = *v372;
    v374 = v372[1];
    sub_10000AB0C(v364, v366);
    sub_10000AB0C(v369, v371);
    v375 = v805;
    sub_100178A18(v373, v374);
    sub_1000124C8(v369, v371);
    sub_1000124C8(v364, v366);
    sub_100002A00(v822);
    v376 = v829;
    SharedSecret.withUnsafeBytes<A>(_:)();
    v378 = *(&v822[0] + 1);
    v377 = *&v822[0];
    v835 = v376;
    *(&v822[1] + 1) = &type metadata for Data;
    *&v822[2] = &protocol witness table for Data;
    v379 = sub_100029B34(v822, &type metadata for Data);
    v381 = *v379;
    v380 = v379[1];
    sub_10000AB0C(v376, *(&v376 + 1));
    sub_10000AB0C(v377, v378);
    sub_100178A18(v381, v380);
    sub_1000124C8(v377, v378);
    sub_1000124C8(v376, *(&v376 + 1));
    sub_100002A00(v822);
    v382 = *(&v835 + 1);
    v84 = v835;
    v383 = v763;
    static SymmetricKeySize.bits256.getter();
    v384 = SymmetricKeySize.bitCount.getter();
    v385 = *(v764 + 8);
    v385(v383, v765);
    v805 = v804[17];
    v386 = SymmetricKeySize.bitCount.getter();
    v343 = __OFADD__(v384, v386);
    v387 = v384 + v386;
    if (v343)
    {
      __break(1u);
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    v388 = v763;
    static SymmetricKeySize.bits256.getter();
    v277 = SymmetricKeySize.bitCount.getter();
    v385(v388, v765);
    if (__OFADD__(v387, v277))
    {
      goto LABEL_252;
    }

    *&v800 = sub_10012D044(v802, v801, 0xD000000000000013, 0x80000001004B9950, v84, v382, v387 + v277);
    *(&v800 + 1) = v389;
    if (v375)
    {
      (*(v797 + 8))(v795, v796);
      sub_100017554(v738, v739);
      sub_1000124C8(v741, v820);
      sub_1000124C8(v84, v382);
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

      goto LABEL_186;
    }

    sub_1000124C8(v84, v382);
    __chkstk_darwin();
    v390 = v786;
    *&v736[-48] = v787;
    *&v736[-32] = v390;
    *&v736[-16] = v818;
    v391 = v767;
    sub_100143034(sub_100144254, &v736[-64], v800, *(&v800 + 1));
    v392 = *(v766 + 48);
    v393 = *(v766 + 64);
    v394 = v780 + 4;
    v395 = v780[4];
    v396 = v785;
    (v395)(v783, v391, v785);
    (v395)(v782, &v391[v392], v396);
    v760 = v395;
    v761 = v394;
    (v395)(v784, &v391[v393], v396);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    *(&v792 + 1) = *(&v822[0] + 1);
    v793 = *&v822[0];
    v791 = 0;
    *&v792 = "PASN PTK Derivation";
    LODWORD(v393) = *v798;
    LODWORD(v396) = *(v798 + 1);
    LODWORD(v391) = *(v798 + 2);
    LODWORD(v395) = *(v798 + 3);
    v397 = *(v798 + 4);
    LODWORD(v392) = *(v798 + 5);
    v398 = swift_allocObject();
    *(v398 + 16) = v810;
    LODWORD(v789) = v393;
    *(v398 + 32) = v393;
    LODWORD(v788) = v396;
    *(v398 + 33) = v396;
    LODWORD(v787) = v391;
    *(v398 + 34) = v391;
    LODWORD(v786) = v395;
    *(v398 + 35) = v395;
    LODWORD(v770) = v397;
    *(v398 + 36) = v397;
    LODWORD(v767) = v392;
    *(v398 + 37) = v392;
    v798 = sub_10002D874(v398);
    v790 = v399;

    LODWORD(v392) = *v819;
    LODWORD(v391) = v819[1];
    LODWORD(v395) = v819[2];
    v400 = v819[3];
    LODWORD(v393) = v819[4];
    LODWORD(v396) = v819[5];
    v401 = swift_allocObject();
    *(v401 + 16) = v810;
    LODWORD(v819) = v392;
    *(v401 + 32) = v392;
    LODWORD(v766) = v391;
    *(v401 + 33) = v391;
    LODWORD(v765) = v395;
    *(v401 + 34) = v395;
    LODWORD(v764) = v400;
    *(v401 + 35) = v400;
    LODWORD(v763) = v393;
    *(v401 + 36) = v393;
    LODWORD(v762) = v396;
    *(v401 + 37) = v396;
    v402 = sub_10002D874(v401);
    v404 = v403;

    v405 = v798;
    *&v835 = v798;
    v406 = v790;
    *(&v835 + 1) = v790;
    *(&v822[1] + 1) = &type metadata for Data;
    *&v822[2] = &protocol witness table for Data;
    *&v822[0] = v402;
    *(&v822[0] + 1) = v404;
    v407 = sub_100029B34(v822, &type metadata for Data);
    v408 = *v407;
    v409 = v407[1];
    sub_10000AB0C(v405, v406);
    sub_10000AB0C(v402, v404);
    v410 = v791;
    sub_100178A18(v408, v409);
    sub_1000124C8(v402, v404);
    sub_1000124C8(v405, v406);
    sub_100002A00(v822);
    v411 = v835;
    v412 = SymmetricKeySize.bitCount.getter();
    v84 = v793;
    v413 = *(&v792 + 1);
    v414 = sub_10012D044(v793, *(&v792 + 1), 0xD00000000000001DLL, v792 | 0x8000000000000000, v411, *(&v411 + 1), v412);
    v805 = v410;
    if (v410)
    {

      sub_100017554(v738, v739);
      sub_1000124C8(v411, *(&v411 + 1));
      sub_1000124C8(v84, v413);
      sub_1000124C8(v800, *(&v800 + 1));
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
      sub_1000124C8(v741, v820);
      v416 = v780[1];
      v417 = v785;
      v416(v782, v785);
      v416(v783, v417);
      v416(v784, v417);
      (*(v797 + 8))(v795, v796);

      sub_1000124C8(v802, v801);
      return v84;
    }

    v440 = v414;
    v441 = v415;
    sub_1000124C8(v411, *(&v411 + 1));
    sub_1000124C8(v84, v413);
    *&v822[0] = v440;
    *(&v822[0] + 1) = v441;
    SymmetricKey.init<A>(data:)();
    v442 = v805;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v793 = v442;
    v443 = *(&v822[0] + 1);
    v805 = *&v822[0];
    v798 = "NAN Management KEK Derivation";
    v444 = swift_allocObject();
    *(v444 + 16) = v810;
    *(v444 + 32) = v789;
    *(v444 + 33) = v788;
    *(v444 + 34) = v787;
    *(v444 + 35) = v786;
    *(v444 + 36) = v770;
    *(v444 + 37) = v767;
    v445 = sub_10002D874(v444);
    v447 = v446;

    v448 = swift_allocObject();
    *(v448 + 16) = v810;
    *(v448 + 32) = v819;
    *(v448 + 33) = v766;
    *(v448 + 34) = v765;
    *(v448 + 35) = v764;
    *(v448 + 36) = v763;
    *(v448 + 37) = v762;
    v449 = sub_10002D874(v448);
    v451 = v450;

    *&v829 = v445;
    *(&v829 + 1) = v447;
    *(&v822[1] + 1) = &type metadata for Data;
    *&v822[2] = &protocol witness table for Data;
    *&v822[0] = v449;
    *(&v822[0] + 1) = v451;
    v452 = sub_100029B34(v822, &type metadata for Data);
    v453 = *v452;
    v454 = v452[1];
    sub_10000AB0C(v445, v447);
    sub_10000AB0C(v449, v451);
    v455 = v793;
    sub_100178A18(v453, v454);
    v84 = v455;
    sub_1000124C8(v449, v451);
    sub_1000124C8(v445, v447);
    sub_100002A00(v822);
    v456 = v829;
    v457 = v805;
    v458 = v443;
    v459 = sub_10012D044(v805, v443, 0xD000000000000012, v798 | 0x8000000000000000, v829, *(&v829 + 1), 256);
    if (v455)
    {

      sub_100017554(v738, v739);
      sub_1000124C8(v456, *(&v456 + 1));
      sub_1000124C8(v457, v443);
      sub_1000124C8(v800, *(&v800 + 1));
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
      sub_1000124C8(v741, v820);
      v461 = v780[1];
      v462 = v785;
      v461(v781, v785);
      v461(v782, v462);
      v461(v783, v462);
      v461(v784, v462);
      (*(v797 + 8))(v795, v796);

      sub_1000124C8(v802, v801);
      return v84;
    }

    v478 = v459;
    v479 = v460;
    sub_1000124C8(v456, *(&v456 + 1));
    sub_1000124C8(v457, v458);
    *&v822[0] = v478;
    *(&v822[0] + 1) = v479;
    v480 = v769;
    SymmetricKey.init<A>(data:)();
    sub_10005DC58(&qword_10058DF50, &qword_1004884C8);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v285 = 0;
    v481 = v780[1];
    ++v780;
    v804 = v481;
    (v481)(v480, v785);
    v277 = *(&v835 + 1);
    if (*(&v835 + 1) >> 60 == 15)
    {

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

      (*(v821 + 16))(v768, v818, v869);
      v482 = Logger.logObject.getter();
      v483 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v482, v483))
      {
        v484 = swift_slowAlloc();
        v485 = swift_slowAlloc();
        *&v822[0] = v485;
        *v484 = 136315138;
        v486 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
        v488 = sub_100002320(v486, v487, v822);

        *(v484 + 4) = v488;
        _os_log_impl(&_mh_execute_header, v482, v483, "Cannot generate a PASN confirmation for the PASN response from %s because the ND-PMK derivation failed", v484, 0xCu);
        sub_100002A00(v485);
      }

      (*(v821 + 8))(v768, v869);
      sub_10000B02C();
      swift_allocError();
      *v489 = xmmword_1004881C0;
      *(v489 + 16) = 1;
      swift_willThrow();
      sub_100017554(v738, v739);
      sub_1000124C8(v800, *(&v800 + 1));
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v741, v820);
      v490 = v785;
      v491 = v804;
      (v804)(v781, v785);
      v491(v782, v490);
      v491(v783, v490);
      v491(v784, v490);
      goto LABEL_210;
    }

    v798 = v835;
    v492 = *(v806 + 2);
    if (!v492)
    {
LABEL_215:
      sub_100143FBC(v806, v771, v808, v809);

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

      (*(v821 + 16))(*(&v769 + 1), v818, v869);
      v494 = Logger.logObject.getter();
      v495 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v494, v495))
      {
        v496 = swift_slowAlloc();
        v497 = swift_slowAlloc();
        *&v822[0] = v497;
        *v496 = 136315138;
        v498 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
        v500 = sub_100002320(v498, v499, v822);

        *(v496 + 4) = v500;
        _os_log_impl(&_mh_execute_header, v494, v495, "Cannot generate a PASN confirmation for the PASN response from %s because no MIC element was found", v496, 0xCu);
        sub_100002A00(v497);
      }

      (*(v821 + 8))(*(&v769 + 1), v869);
      sub_10000B02C();
      swift_allocError();
      *v501 = xmmword_1004881C0;
      *(v501 + 16) = 1;
      swift_willThrow();
      sub_100017554(v738, v739);
      sub_100017554(v798, v277);
      sub_1000124C8(v800, *(&v800 + 1));
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v741, v820);
      v502 = v785;
      v503 = v804;
      (v804)(v781, v785);
      v503(v782, v502);
      v503(v783, v502);
      v503(v784, v502);
      (*(v797 + 8))(v795, v796);
      sub_1000124C8(v802, v801);
      sub_1000B21F4(v806, v771, v808, v809);
      return v84;
    }

    v210 = 0;
    v299 = 0;
    while (1)
    {
      v493 = &v210[v806];
      if (v210[v806 + 88] == 7)
      {
        break;
      }

      ++v299;
      v210 += 64;
      if (v492 == v299)
      {
        goto LABEL_215;
      }
    }

    v515 = *(v493 + 2);
    v516 = *(v493 + 3);
    v517 = *(v493 + 4);
    *(&v822[2] + 9) = *(v493 + 73);
    v822[1] = v516;
    v822[2] = v517;
    v822[0] = v515;
    v518 = *&v818[v794];
    sub_100143FBC(v806, v771, v808, v809);
    sub_1000C2DC8(v822, &v835);
    v793 = v518;
    v519 = sub_10014345C(v518);
    v214 = v519;
    v286 = v520;
    v318 = v520 >> 62;
    if ((v520 >> 62) > 1)
    {
LABEL_227:
      if (v318 != 2)
      {
        goto LABEL_245;
      }

      v519 = *(v214 + 16);
      v521 = *(v214 + 24);
    }

    else
    {
      if (!v318)
      {
        goto LABEL_245;
      }

      v519 = v519;
      v521 = v214 >> 32;
    }

    if (v521 < v519)
    {
      __break(1u);
    }

LABEL_245:
    v84 = Data.subdata(in:)();
    v535 = v534;
    sub_1000124C8(v214, v286);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v806 = sub_1000C2B78(v806);
    }

    v536 = *(v806 + 2);
    if (v299 < v536)
    {
      break;
    }

    __break(1u);
LABEL_290:
    v691 = v214;
    v692 = v214 >> 32;
LABEL_291:
    if (v692 >= v691)
    {
LABEL_292:
      v285 = Data.subdata(in:)();
      v286 = v693;
      sub_1000124C8(v214, v84);
      v210 = sub_10011727C(0, 1, 1, _swiftEmptyArrayStorage);
      v277 = *(v210 + 2);
      v536 = *(v210 + 3);
      v214 = v277 + 1;
      if (v277 < v536 >> 1)
      {
        goto LABEL_293;
      }

      goto LABEL_306;
    }

LABEL_305:
    __break(1u);
LABEL_306:
    v210 = sub_10011727C((v536 > 1), v214, 1, v210);
LABEL_293:
    *(v210 + 2) = v214;
    v694 = &v210[64 * v277];
    *(v694 + 4) = v285;
    *(v694 + 5) = v286;
    v694[88] = 5;
    v695 = v798;
    v697 = WORD4(v792);
    v696 = v793;
    sub_100144000(*(&v792 + 1), v793, v798 & 0xEFFFFFFFFFFFFFFFLL);
    v698 = v805;
    sub_100221C40(v697, v696, v695 & 0xCFFFFFFFFFFFFFFFLL);
    if (v698)
    {

      sub_100017554(v738, v739);
      v700 = *(&v792 + 1);
      v699 = v793;
      v701 = v798;
      v702 = v794;
      sub_1000B21F4(*(&v792 + 1), v793, v798, v794);
      sub_1000B21F4(v700, v699, v701, v702);
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
      sub_1000B21F4(v700, v699, v701, v702);
      v703 = v800;
      v704 = v799;
      v705 = v803;
      v706 = BYTE8(v800);
      sub_1000B21F4(v800, v799, v803, SBYTE8(v800));
      sub_1000C2E24(&v835);
      sub_1000124C8(v741, v820);
      sub_1000B21F4(v703, v704, v705, v706);
      sub_10012A684(v770, _s3SAEVMa);
      (*(v797 + 8))(v795, v796);
      goto LABEL_269;
    }

    sub_1000B21F4(*(&v792 + 1), v793, v798, v794);
    v802 = sub_1002217CC();
    v801 = v707;
    v805 = 0;
    v709 = v708;
    v711 = v710;
    sub_10005DC58(&qword_10058CC78, &qword_100482F80);
    v712 = swift_allocObject();
    *(v712 + 16) = v810;
    *(v712 + 32) = v709;
    *(v712 + 40) = v711;
    sub_10000AB0C(v709, v711);
    v713 = _s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(v743, v712);
    swift_setDeallocating();
    v714 = *(v712 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v713 & 1) == 0)
    {

      sub_100016290(&v844, &qword_10058DF70, &unk_100488500);

      (*(v821 + 16))(v762, v818, v869);
      v722 = Logger.logObject.getter();
      v723 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v722, v723))
      {
        v724 = swift_slowAlloc();
        v725 = swift_slowAlloc();
        *&v829 = v725;
        *v724 = 136315138;
        v726 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
        v728 = sub_100002320(v726, v727, &v829);

        *(v724 + 4) = v728;
        _os_log_impl(&_mh_execute_header, v722, v723, "Cannot generate a PASN confirmation for the PASN response from %s because the RSN capability PMK ID was invalid", v724, 0xCu);
        sub_100002A00(v725);
      }

      (*(v821 + 8))(v762, v869);
      sub_10000B02C();
      swift_allocError();
      *v729 = xmmword_1004881C0;
      *(v729 + 16) = 1;
      swift_willThrow();
      sub_100017554(v738, v739);
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v709, v711);
      v730 = *(&v792 + 1);
      v84 = v793;
      v731 = v798;
      v732 = v794;
      sub_1000B21F4(*(&v792 + 1), v793, v798, v794);
      v733 = v800;
      v734 = v799;
      v735 = v803;
      sub_1000B21F4(v800, v799, v803, SBYTE8(v800));
      sub_1000B21F4(v730, v84, v731, v732);
      sub_1000C2E24(&v835);
      sub_1000124C8(v741, v820);
      sub_1000B21F4(v733, v734, v735, SBYTE8(v800));
      sub_10012A684(v770, _s3SAEVMa);
LABEL_210:
      (*(v797 + 8))(v795, v796);
LABEL_186:
      v144 = v802;
      v145 = v801;
      goto LABEL_23;
    }

    sub_1000124C8(v709, v711);
    v715 = *(&v792 + 1);
    v716 = v793;
    v717 = v798;
    v718 = v794;
    sub_1000B21F4(*(&v792 + 1), v793, v798, v794);
    v719 = v800;
    v720 = v799;
    v721 = v803;
    sub_1000B21F4(v800, v799, v803, SBYTE8(v800));
    sub_1000B21F4(v715, v716, v717, v718);
    sub_1000C2E24(&v835);
    sub_1000B21F4(v719, v720, v721, SBYTE8(v800));
    sub_10012A684(v770, _s3SAEVMa);
  }

  v537 = v806;
  v538 = &v210[v806];
  v539 = *&v210[v806 + 32];
  v540 = *&v210[v806 + 48];
  v541 = *&v210[v806 + 64];
  *(&v836[1] + 9) = *&v210[v806 + 73];
  v836[0] = v540;
  v836[1] = v541;
  v835 = v539;
  *(v538 + 4) = v84;
  *(v538 + 5) = v535;
  v538[88] = 7;
  sub_1000C2E24(&v835);
  v542 = sub_100033AA8(_swiftEmptyArrayStorage);
  v543 = type metadata accessor for BinaryEncoder();
  v84 = swift_allocObject();
  v808 = xmmword_100480A90;
  *(v84 + 16) = xmmword_100480A90;
  *(v84 + 32) = v542;
  v809 = v543;
  v834[3] = v543;
  v794 = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v834[4] = v794;
  v834[0] = v84;

  IEEE80211Frame.Management.Authentication.encode(to:)(v834, v537, 0, 0x1000000000000000, 0);
  if (v285)
  {

    sub_100017554(v738, v739);
    sub_100017554(v798, v277);
    sub_1000124C8(v800, *(&v800 + 1));
    sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
    sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
    sub_1000124C8(v741, v820);
    sub_1000C2E24(v822);

    v544 = v785;
    v545 = v804;
    (v804)(v781, v785);
    v545(v782, v544);
    v545(v783, v544);
    v545(v784, v544);
    (*(v797 + 8))(v795, v796);
    sub_100002A00(v834);

    sub_1000124C8(v802, v801);

    return v84;
  }

  sub_100002A00(v834);
  swift_beginAccess();
  v546 = *(v84 + 24);
  *&v792 = *(v84 + 16);
  *(&v792 + 1) = v546;
  sub_10000AB0C(v792, v546);

  v861 = 1;
  v862 = 6;
  v863 = v740;
  v864 = v745;
  v865 = v811;
  v866 = v743;
  v867 = 6;
  v868 = 0;
  v547 = sub_100033AA8(_swiftEmptyArrayStorage);
  v548 = v809;
  v549 = swift_allocObject();
  *(v549 + 16) = v808;
  *(v549 + 32) = v547;
  v833[4] = v794;
  v833[3] = v548;
  v833[0] = v549;

  IEEE80211InformationElement.encode(to:)(v833);
  sub_100016290(&v844, &qword_10058DF70, &unk_100488500);
  sub_100002A00(v833);
  swift_beginAccess();
  v550 = *(v549 + 24);
  v791 = *(v549 + 16);
  v811 = v550;
  sub_10000AB0C(v791, v550);

  v859 = v742;
  v860 = 1;
  v551 = sub_100033AA8(_swiftEmptyArrayStorage);
  v552 = v809;
  v84 = swift_allocObject();
  *(v84 + 16) = v808;
  *(v84 + 32) = v551;
  v832[4] = v794;
  v832[3] = v552;
  v832[0] = v84;

  IEEE80211InformationElement.encode(to:)(v832);
  v805 = 0;
LABEL_253:

  sub_100002A00(v832);
  swift_beginAccess();
  v553 = *(v84 + 24);
  *&v769 = *(v84 + 16);
  *(&v769 + 1) = v553;
  sub_10000AB0C(v769, v553);

  v554 = swift_allocObject();
  *(v554 + 16) = v810;
  *(v554 + 32) = v819;
  *(v554 + 33) = v766;
  *(v554 + 34) = v765;
  *(v554 + 35) = v764;
  *(v554 + 36) = v763;
  *(v554 + 37) = v762;
  v555 = sub_10002D874(v554);
  v557 = v556;

  v558 = swift_allocObject();
  *(v558 + 16) = v810;
  *(v558 + 32) = v789;
  *(v558 + 33) = v788;
  *(v558 + 34) = v787;
  *(v558 + 35) = v786;
  *(v558 + 36) = v770;
  *(v558 + 37) = v767;
  v559 = sub_10002D874(v558);
  v561 = v560;

  *&v828 = v555;
  *(&v828 + 1) = v557;
  *(&v830 + 1) = &type metadata for Data;
  *&v831[0] = &protocol witness table for Data;
  *&v829 = v559;
  *(&v829 + 1) = v561;
  v562 = sub_100029B34(&v829, &type metadata for Data);
  v563 = *v562;
  v564 = v562[1];
  sub_10000AB0C(v555, v557);
  sub_10000AB0C(v559, v561);
  v565 = v805;
  sub_100178A18(v563, v564);
  sub_1000124C8(v559, v561);
  sub_1000124C8(v555, v557);
  sub_100002A00(&v829);
  v566 = v828;
  v824 = v828;
  *(&v830 + 1) = &type metadata for Data;
  *&v831[0] = &protocol witness table for Data;
  v567 = v791;
  *&v829 = v791;
  v568 = v811;
  *(&v829 + 1) = v811;
  v569 = sub_100029B34(&v829, &type metadata for Data);
  v570 = *v569;
  v571 = v569[1];
  sub_10000AB0C(v567, v568);
  sub_10000AB0C(v566, *(&v566 + 1));
  sub_100178A18(v570, v571);
  sub_1000124C8(v566, *(&v566 + 1));
  sub_100002A00(&v829);
  v572 = v824;
  v828 = v824;
  *(&v830 + 1) = &type metadata for Data;
  *&v831[0] = &protocol witness table for Data;
  v574 = *(&v769 + 1);
  v573 = v769;
  v829 = v769;
  v575 = sub_100029B34(&v829, &type metadata for Data);
  v576 = *v575;
  v577 = v575[1];
  sub_10000AB0C(v573, v574);
  sub_10000AB0C(v572, *(&v572 + 1));
  sub_100178A18(v576, v577);
  sub_1000124C8(v572, *(&v572 + 1));
  sub_100002A00(&v829);
  v578 = v828;
  v824 = v828;
  *(&v830 + 1) = &type metadata for Data;
  *&v831[0] = &protocol witness table for Data;
  v579 = *(&v792 + 1);
  v84 = v792;
  v829 = v792;
  v580 = sub_100029B34(&v829, &type metadata for Data);
  v581 = *v580;
  v582 = v580[1];
  sub_10000AB0C(v84, v579);
  sub_10000AB0C(v578, *(&v578 + 1));
  sub_100178A18(v581, v582);
  v768 = v565;
  sub_1000124C8(v578, *(&v578 + 1));
  sub_100002A00(&v829);
  v829 = v824;
  v583 = sub_1000BA0A4();
  v584 = v775;
  v759 = v583;
  static HMAC.authenticationCode<A>(for:using:)();
  sub_1000124C8(v829, *(&v829 + 1));
  v585 = v779;
  v586 = HashedAuthenticationCode.rawRepresentation.getter();
  v588 = v587;
  v589 = *(v778 + 8);
  v778 += 8;
  v758 = v589;
  (v589)(v584, v585);
  sub_1002B9AE4(v793, v586, v588, &v829);
  v790 = *(&v829 + 1);
  v771 = v829;
  if (BYTE8(v822[3]) != 7)
  {

    v805 = *(v821 + 16);
    (v805)(v774, v818, v869);
    goto LABEL_266;
  }

  v590 = v822[0];
  v805 = *(v821 + 16);
  (v805)(v772, v818, v869);
  sub_10000AB0C(*&v822[0], *(&v822[0] + 1));
  v591 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v591, v84))
  {
    v592 = swift_slowAlloc();
    v593 = swift_slowAlloc();
    *&v829 = v593;
    *v592 = 136315138;
    v594 = Data.hexString.getter(v590, *(&v590 + 1));
    v596 = sub_100002320(v594, v595, &v829);

    *(v592 + 4) = v596;
    _os_log_impl(&_mh_execute_header, v591, v84, "Responder MIC: %s", v592, 0xCu);
    sub_100002A00(v593);
  }

  v597 = v772;
  v772 = *(v821 + 8);
  (v772)(v597, v869);
  (v805)(v773, v818, v869);
  v598 = v771;
  v599 = v790;
  sub_10000AB0C(v771, v790);
  v600 = Logger.logObject.getter();
  v601 = static os_log_type_t.error.getter();
  sub_1000124C8(v598, v599);
  if (os_log_type_enabled(v600, v601))
  {
    v602 = swift_slowAlloc();
    v603 = swift_slowAlloc();
    *&v829 = v603;
    *v602 = 136315138;
    v604 = Data.hexString.getter(v771, v790);
    v84 = sub_100002320(v604, v605, &v829);

    *(v602 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v600, v601, "Expected responder MIC: %s", v602, 0xCu);
    sub_100002A00(v603);

    sub_1000C2E24(v822);
  }

  else
  {
    sub_1000C2E24(v822);
  }

  (v772)(v773, v869);
  v618 = *(&v822[0] + 1);
  v619 = *&v822[0];
  sub_1000C2DC8(v822, &v829);
  if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v619, v618, v771, v790))
  {
    v620 = sub_100033AA8(_swiftEmptyArrayStorage);
    v621 = v809;
    v622 = swift_allocObject();
    *(v622 + 16) = v808;
    *(v622 + 32) = v620;
    *&v831[0] = v794;
    *(&v830 + 1) = v621;
    *&v829 = v622;

    v623 = v768;
    IEEE80211Frame.Management.Authentication.encode(to:)(&v829, v803, 0, 0, 1);
    v805 = v623;
    if (v623)
    {
      sub_100017554(v738, v739);
      sub_100017554(v798, v277);
      sub_1000124C8(v800, *(&v800 + 1));
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v771, v790);
      sub_1000124C8(v741, v820);

      sub_1000C2E24(v822);
      sub_1000C2E24(v822);
      sub_1000124C8(v792, *(&v792 + 1));
      sub_1000124C8(v769, *(&v769 + 1));
      sub_1000124C8(v791, v811);
      v624 = v785;
      v625 = v804;
      (v804)(v781, v785);
      v625(v782, v624);
      v625(v783, v624);
      v625(v784, v624);
      (*(v797 + 8))(v795, v796);
      sub_100002A00(&v829);

      sub_1000124C8(v802, v801);
      goto LABEL_269;
    }

    sub_100002A00(&v829);
    swift_beginAccess();
    v648 = *(v622 + 24);
    v869 = *(v622 + 16);
    v821 = v648;
    sub_10000AB0C(v869, v648);

    v649 = swift_allocObject();
    *(v649 + 16) = v810;
    *(v649 + 32) = v789;
    *(v649 + 33) = v788;
    *(v649 + 34) = v787;
    *(v649 + 35) = v786;
    *(v649 + 36) = v770;
    *(v649 + 37) = v767;
    v650 = sub_10002D874(v649);
    v652 = v651;

    v653 = swift_allocObject();
    *(v653 + 16) = v810;
    *(v653 + 32) = v819;
    *(v653 + 33) = v766;
    *(v653 + 34) = v765;
    *(v653 + 35) = v764;
    *(v653 + 36) = v763;
    *(v653 + 37) = v762;
    v654 = sub_10002D874(v653);
    v656 = v655;

    *&v824 = v650;
    *(&v824 + 1) = v652;
    *(&v830 + 1) = &type metadata for Data;
    *&v831[0] = &protocol witness table for Data;
    *&v829 = v654;
    *(&v829 + 1) = v656;
    v657 = sub_100029B34(&v829, &type metadata for Data);
    v658 = *v657;
    v659 = v657[1];
    sub_10000AB0C(v650, v652);
    sub_10000AB0C(v654, v656);
    v660 = v805;
    sub_100178A18(v658, v659);
    sub_1000124C8(v654, v656);
    sub_1000124C8(v650, v652);
    sub_100002A00(&v829);
    v662 = *(&v824 + 1);
    v661 = v824;
    v827 = v824;
    *(&v830 + 1) = &type metadata for Data;
    *&v831[0] = &protocol witness table for Data;
    v663 = v741;
    *&v829 = v741;
    v664 = v820;
    *(&v829 + 1) = v820;
    v665 = sub_100029B34(&v829, &type metadata for Data);
    v666 = *v665;
    v667 = v665[1];
    sub_10000AB0C(v661, v662);
    sub_10000AB0C(v663, v664);
    sub_100178A18(v666, v667);
    sub_1000124C8(v661, v662);
    sub_100002A00(&v829);
    v669 = *(&v827 + 1);
    v668 = v827;
    v824 = v827;
    *(&v830 + 1) = &type metadata for Data;
    *&v831[0] = &protocol witness table for Data;
    v210 = v869;
    *&v829 = v869;
    v670 = v821;
    *(&v829 + 1) = v821;
    v671 = sub_100029B34(&v829, &type metadata for Data);
    v672 = *v671;
    v673 = v671[1];
    sub_10000AB0C(v210, v670);
    sub_10000AB0C(v668, v669);
    sub_100178A18(v672, v673);
    v805 = v660;
    sub_1000124C8(v668, v669);
    sub_100002A00(&v829);
    v829 = v824;
    v674 = v775;
    static HMAC.authenticationCode<A>(for:using:)();
    sub_1000124C8(v829, *(&v829 + 1));
    v675 = v779;
    v676 = HashedAuthenticationCode.rawRepresentation.getter();
    v678 = v677;
    (v758)(v674, v675);
    sub_1002B9AE4(v793, v676, v678, &v829);
    v279 = *(&v829 + 1);
    v285 = v829;
    v84 = *(v803 + 16);
    v679 = *(&v829 + 1) >> 62;
    if ((*(&v829 + 1) >> 62) > 1)
    {
      v286 = 0;
      v214 = 0;
      if (v679 == 2)
      {
        v286 = *(v829 + 16);
        v214 = *(v829 + 24);
        goto LABEL_282;
      }

LABEL_283:
      v209 = Data.subdata(in:)();
      v210 = v680;
      sub_1000124C8(v285, v279);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_301:
        v803 = sub_1000C2B78(v803);
      }

      sub_100017554(v738, v739);
      sub_1000124C8(v800, *(&v800 + 1));
      sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v771, v790);
      sub_1000124C8(v285, v279);
      sub_1000124C8(v869, v821);
      sub_1000124C8(v741, v820);
      sub_1000C2E24(v822);
      sub_1000C2E24(v822);
      sub_1000124C8(v792, *(&v792 + 1));
      sub_1000124C8(v769, *(&v769 + 1));
      sub_1000124C8(v791, v811);
      (*(v797 + 8))(v795, v796);
      if (v84)
      {
        v536 = *(v803 + 16);
        if (v84 <= v536)
        {
          v681 = (v803 + (v84 << 6));
          v84 = v803;
          v682 = *(v681 - 2);
          v683 = *(v681 - 1);
          v684 = *v681;
          *(v831 + 9) = *(v681 + 9);
          v830 = v683;
          v831[0] = v684;
          v829 = v682;
          *(v681 - 4) = v209;
          *(v681 - 3) = v210;
          v685 = v825;
          *(v681 - 1) = v824;
          *v681 = v685;
          *(v681 + 2) = v826;
          *(v681 + 24) = 7;
          sub_1000C2E24(&v829);
          v686 = v746;
          (*(v747 + 8))(v746, v807);
          v687 = v785;
          v688 = v760;
          (v760)(v686, v784, v785);
          v689 = type metadata accessor for NANPairing.GeneratedKeys(0);
          v688(&v686[v689[5]], v783, v687);
          v688(&v686[v689[6]], v782, v687);
          v688(&v686[v689[8]], v781, v687);
          sub_1000124C8(v802, v801);
          v690 = &v686[v689[7]];
          *v690 = v798;
          v690[1] = v277;
          swift_storeEnumTagMultiPayload();

          return v84;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      if (!v679)
      {
        v286 = 0;
        v214 = BYTE14(v829);
        goto LABEL_283;
      }

      v286 = v829;
      v214 = v829 >> 32;
LABEL_282:
      sub_10000AB0C(v829, *(&v829 + 1));
      if (v214 >= v286)
      {
        goto LABEL_283;
      }
    }

    __break(1u);
    goto LABEL_305;
  }

  sub_1000C2E24(v822);
  (v805)(v774, v818, v869);
LABEL_266:
  v626 = Logger.logObject.getter();
  v627 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v626, v627))
  {
    v628 = swift_slowAlloc();
    v629 = swift_slowAlloc();
    *&v829 = v629;
    *v628 = 136315138;
    v630 = WiFiAddress.description.getter(v813 | (v812 << 8) | (v814 << 16) | (v815 << 24) | (v816 << 32) | (v817 << 40));
    v632 = sub_100002320(v630, v631, &v829);

    *(v628 + 4) = v632;
    _os_log_impl(&_mh_execute_header, v626, v627, "Cannot generate a PASN confirmation for the PASN response from %s because the MIC was invalid", v628, 0xCu);
    sub_100002A00(v629);
  }

  (*(v821 + 8))(v774, v869);
  sub_10000B02C();
  swift_allocError();
  *v633 = xmmword_1004881C0;
  *(v633 + 16) = 1;
  swift_willThrow();
  sub_100017554(v738, v739);
  sub_100017554(v798, v277);
  sub_1000124C8(v800, *(&v800 + 1));
  sub_100016290(&v851, &qword_10058DF60, &qword_1004884E8);
  sub_1000124C8(v771, v790);
  sub_1000124C8(v741, v820);
  sub_1000C2E24(v822);
  sub_1000124C8(v792, *(&v792 + 1));
  sub_1000124C8(v769, *(&v769 + 1));
  sub_1000124C8(v791, v811);
  v634 = v785;
  v635 = v804;
  (v804)(v781, v785);
  v635(v782, v634);
  v635(v783, v634);
  v635(v784, v634);
  (*(v797 + 8))(v795, v796);
  sub_1000124C8(v802, v801);
LABEL_269:

  return v84;
}

uint64_t sub_10013CED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a8;
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v51 = a3;
  v10 = type metadata accessor for SymmetricKey();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  __chkstk_darwin();
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v41 - v13;
  v15 = type metadata accessor for SymmetricKeySize();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SymmetricKeySize.bits256.getter();
  v20 = SymmetricKeySize.bitCount.getter();
  v21 = *(v16 + 8);
  result = v21(v19, v15);
  v23 = a2;
  if (a1)
  {
    v24 = a2 - a1;
  }

  else
  {
    v24 = 0;
  }

  v25 = v20 + 7;
  if (v20 >= 0)
  {
    v25 = v20;
  }

  v26 = v25 >> 3;
  v58 = v24;
  if (v20 < -7 || v24 < v26)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v54 = 0;
  v55 = v25 >> 3;
  v52 = a1;
  v53 = v23;
  v56 = a1;
  v57 = v23;
  sub_10005DC58(&qword_10058C7F8, &unk_100482000);
  sub_1000B2394();
  v42 = v14;
  SymmetricKey.init<A>(data:)();
  v54 = v47;
  v55 = v48;
  v56 = v49;
  v57 = v50;
  v28 = type metadata accessor for NANPairing.PASN();
  (*(v16 + 16))(v19, v51 + *(v28 + 68), v15);
  v29 = SymmetricKeySize.bitCount.getter();
  result = v21(v19, v15);
  v30 = v29 + 7;
  if (v29 >= 0)
  {
    v30 = v29;
  }

  v31 = v26 + (v30 >> 3);
  if (v31 < 0 || v58 < v31)
  {
    goto LABEL_20;
  }

  if (v29 < -7)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v54 = v26;
  v55 = v26 + (v30 >> 3);
  v56 = v52;
  v57 = v53;
  v32 = v46;
  SymmetricKey.init<A>(data:)();
  static SymmetricKeySize.bits256.getter();
  v33 = SymmetricKeySize.bitCount.getter();
  result = v21(v19, v15);
  v34 = v31 + v33 / 8;
  if (v34 < 0 || v58 < v34)
  {
    goto LABEL_22;
  }

  if (v33 >= -7)
  {
    v54 = v31;
    v55 = v31 + v33 / 8;
    v56 = v52;
    v57 = v53;
    v35 = sub_10005DC58(&qword_10058DF68, &unk_1004884F0);
    v36 = v45;
    v37 = v45 + *(v35 + 64);
    SymmetricKey.init<A>(data:)();
    v38 = *(v35 + 48);
    v39 = *(v43 + 32);
    v40 = v44;
    v39(v36, v42, v44);
    return (v39)(v36 + v38, v32, v40);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10013D264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21[3] = &type metadata for UnsafeRawBufferPointer;
  v21[4] = &protocol witness table for UnsafeRawBufferPointer;
  v21[0] = a1;
  v21[1] = a2;
  v4 = sub_100029B34(v21, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (!*v4 || (v6 = v4[1], v7 = v6 - v5, v6 == v5))
  {
    result = sub_100002A00(v21);
LABEL_4:
    v9 = 0;
    v10 = 0xF000000000000000;
LABEL_5:
    *a3 = v9;
    a3[1] = v10;
    return result;
  }

  if (v7 <= 14)
  {
    v9 = sub_10000AD84(v5, v6);
    v14 = BYTE6(v13);
    v10 = v13 & 0xFFFFFFFFFFFFFFLL;
    result = sub_100002A00(v21);
    if (v14 == 32)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (v7 >= 0x7FFFFFFF)
  {
    v9 = sub_100178EFC(v5, v6);
    v16 = v15;
    result = sub_100002A00(v21);
    v18 = *(v9 + 16);
    v17 = *(v9 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (v19)
    {
      goto LABEL_17;
    }

    v10 = v16 | 0x8000000000000000;
    if (v20 == 32)
    {
      goto LABEL_5;
    }

LABEL_15:
    result = sub_1000124C8(v9, v10);
    goto LABEL_4;
  }

  v9 = sub_10004F46C(v5, v6);
  v12 = v11;
  result = sub_100002A00(v21);
  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    v10 = v12 | 0x4000000000000000;
    if (HIDWORD(v9) - v9 == 32)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10013D3A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v346) = a4;
  *&v345 = a3;
  v326 = a2;
  v335 = a1;
  v7 = (a5 + 24);
  v8 = *(a5 + 16);
  v9 = *(a5 + 32);
  v10 = (a5 + 40);
  v11 = type metadata accessor for HashedAuthenticationCode();
  v317 = *(v11 - 8);
  v318 = v11;
  v12 = *(v317 + 64);
  __chkstk_darwin();
  v314 = &v311 - v13;
  v367 = type metadata accessor for Logger();
  v350 = *(v367 - 8);
  v14 = *(v350 + 64);
  __chkstk_darwin();
  v349 = &v311 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v336 = (&v311 - v16);
  __chkstk_darwin();
  v333 = &v311 - v17;
  __chkstk_darwin();
  v331 = &v311 - v18;
  __chkstk_darwin();
  v323 = &v311 - v19;
  __chkstk_darwin();
  v319 = &v311 - v20;
  __chkstk_darwin();
  v324 = &v311 - v21;
  __chkstk_darwin();
  v325 = &v311 - v22;
  __chkstk_darwin();
  v322 = &v311 - v23;
  __chkstk_darwin();
  v320 = &v311 - v24;
  __chkstk_darwin();
  v312 = &v311 - v25;
  v26 = *(*(_s3SAEVMa(0) - 8) + 64);
  __chkstk_darwin();
  v328 = &v311 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = type metadata accessor for NANPairing.Mode(0);
  v28 = *(*(v329 - 8) + 64);
  __chkstk_darwin();
  v332 = (&v311 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v315 = v8;
  v316 = v9;
  *&v30 = v8;
  *(&v30 + 1) = *v7;
  *&v31 = v9;
  *(&v31 + 1) = *v10;
  v351 = v30;
  v352 = v31;
  v32 = type metadata accessor for NANPairing.PASN.State();
  v33 = *(v32 - 1);
  v34 = v33[8];
  __chkstk_darwin();
  v334 = &v311 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v343 = &v311 - v36;
  __chkstk_darwin();
  v348 = (&v311 - v37);
  __chkstk_darwin();
  v39 = &v311 - v38;
  v313 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v40 = *(*(v313 - 8) + 64);
  __chkstk_darwin();
  v42 = &v311 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = &v5[*(a5 + 76)];
  v338 = *v43;
  v337 = v43[1];
  v339 = v43[2];
  v340 = v43[3];
  v44 = v43[4];
  v45 = v43[5];
  v341 = v44;
  v342 = v45;
  v330 = a5;
  v46 = *(a5 + 96);
  v47 = v5;
  v347 = v33[2];
  (v347)(v39, &v46[v5], v32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v346 = v33[1];
    v64 = v32;
    v344 = v33 + 1;
    (v346)(v39, v32);
    v65 = &v46[v5];
    v67 = v347;
    v66 = v348;
    (v347)(v348, v65, v32);
    v68 = v350;
    v69 = v367;
    (*(v350 + 16))(v349, v5, v367);
    v70 = v343;
    v67(v343, v66, v64);
    v71 = Logger.logObject.getter();
    LODWORD(v345) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v345))
    {
      v72 = swift_slowAlloc();
      v336 = v71;
      v73 = v72;
      *&v351 = swift_slowAlloc();
      *v73 = 136315394;
      v74 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
      v76 = sub_100002320(v74, v75, &v351);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      v77 = v334;
      (v347)(v334, v70, v64);
      v78 = v346;
      (v346)(v70, v64);
      v79 = sub_10012BF38(v64);
      v81 = v80;
      v78(v77, v64);
      v82 = sub_100002320(v79, v81, &v351);

      *(v73 + 14) = v82;
      v83 = v336;
      _os_log_impl(&_mh_execute_header, v336, v345, "Cannot verify a PASN confirmation from %s when in state: %s", v73, 0x16u);
      swift_arrayDestroy();

      v66 = v348;
      (*(v350 + 8))(v349, v367);
    }

    else
    {
      (v346)(v70, v64);

      (*(v68 + 8))(v349, v69);
    }

    sub_10000B02C();
    swift_allocError();
    *v96 = xmmword_1004881C0;
    *(v96 + 16) = 1;
    swift_willThrow();
    return (v346)(v66, v64);
  }

  v347 = v46;
  v348 = v32;
  v344 = v33;
  v48 = &v39[*(sub_10005DC58(&qword_10058DF58, &qword_1004884E0) + 48)];
  v49 = v48[1];
  v349 = *v48;
  sub_100142410(v39, v42, type metadata accessor for NANPairing.GeneratedKeys);
  v327 = v42;
  if ((((v345 & 0x1000000000000000) != 0) | (2 * v346)) != 2)
  {
    v84 = v350;
    v85 = v336;
    v86 = v367;
    (*(v350 + 16))(v336, v47, v367);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v351 = v90;
      *v89 = 136315138;
      v91 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
      v93 = v49;
      v94 = sub_100002320(v91, v92, &v351);

      *(v89 + 4) = v94;
      v49 = v93;
      _os_log_impl(&_mh_execute_header, v87, v88, "Cannot verify a PASN confirmation from %s because the authentication frame received was not a PASN confirm frame", v89, 0xCu);
      sub_100002A00(v90);
      v95 = v349;

      (*(v84 + 8))(v336, v367);
    }

    else
    {

      (*(v84 + 8))(v85, v86);
      v95 = v349;
    }

    sub_10000B02C();
    swift_allocError();
    *v112 = xmmword_1004881C0;
    *(v112 + 16) = 1;
    swift_willThrow();
    v113 = v95;
    goto LABEL_26;
  }

  v50 = v335;
  sub_100135D74(v335, v364);
  v51 = v367;
  if (v365 == 3)
  {
    v52 = v350;
    v53 = v333;
    (*(v350 + 16))(v333, v5, v367);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v351 = v57;
      *v56 = 136315138;
      v58 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
      v60 = v52;
      v61 = v49;
      v62 = sub_100002320(v58, v59, &v351);
      v63 = v349;

      *(v56 + 4) = v62;
      v49 = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Cannot verify a PASN confirmation from %s because the PASN parameters are missing", v56, 0xCu);
      sub_100002A00(v57);

      (*(v60 + 8))(v333, v367);
    }

    else
    {

      (*(v52 + 8))(v53, v51);
      v63 = v349;
    }

    sub_10000B02C();
    swift_allocError();
    *v125 = xmmword_1004881C0;
    *(v125 + 16) = 1;
    swift_willThrow();
    v113 = v63;
LABEL_26:
    v126 = v49;
LABEL_27:
    sub_1000124C8(v113, v126);
LABEL_28:
    v127 = type metadata accessor for NANPairing.GeneratedKeys;
    v128 = v327;
    return sub_10012A684(v128, v127);
  }

  if (v365 != 2 || v366 >> 60 != 15 || v364[3] >> 60 != 15)
  {
    v114 = v327;
    v115 = v350;
    v116 = v331;
    (*(v350 + 16))();
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v348 = swift_slowAlloc();
      *&v351 = v348;
      *v119 = 136315138;
      v120 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
      v122 = v115;
      v123 = sub_100002320(v120, v121, &v351);
      v124 = v349;
      v114 = v327;

      *(v119 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v117, v118, "Cannot verify a PASN confirmation from %s because the PASN parameters are invalid", v119, 0xCu);
      sub_100002A00(v348);

      (*(v122 + 8))(v331, v367);
    }

    else
    {

      (*(v115 + 8))(v116, v51);
      v124 = v349;
    }

    sub_10000B02C();
    swift_allocError();
    *v129 = xmmword_1004881C0;
    *(v129 + 16) = 1;
    swift_willThrow();
    sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
    sub_1000124C8(v124, v49);
    v127 = type metadata accessor for NANPairing.GeneratedKeys;
    v128 = v114;
    return sub_10012A684(v128, v127);
  }

  v343 = v49;
  v98 = LOBYTE(v364[0]);
  sub_10012A6E4(&v47[v330[13]], v332, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v130 = v332;
    v131 = v332[5];
    v353[2] = v332[4];
    v353[3] = v131;
    v354 = *(v332 + 48);
    v132 = v332[1];
    v351 = *v332;
    v352 = v132;
    v133 = v332[3];
    v353[0] = v332[2];
    v353[1] = v133;
    sub_100141458(&v351);
    v134 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(v130 + *(v134 + 48), v328, _s3SAEVMa);
    if (v98 == 3)
    {
      v135 = *(v50 + 16);
      v136 = v350;
      if (v135)
      {
        v137 = (v50 + 32);
        while (1)
        {
          v138 = *v137;
          v139 = v137[1];
          v140 = v137[2];
          *&v363[9] = *(v137 + 41);
          v362 = v139;
          *v363 = v140;
          v361 = v138;
          if (v363[24] == 5)
          {
            break;
          }

          v137 += 4;
          if (!--v135)
          {
            goto LABEL_37;
          }
        }

        v202 = v361;
        sub_10000AB0C(v361, *(&v361 + 1));
        sub_10000AB0C(v202, *(&v202 + 1));
        v203 = sub_100033AA8(_swiftEmptyArrayStorage);
        v204 = type metadata accessor for BinaryDecoder();
        v205 = swift_allocObject();
        v206 = 0;
        *(v205 + 40) = &_swiftEmptyDictionarySingleton;
        *(v205 + 16) = v202;
        v207 = *(&v202 + 1) >> 62;
        if ((*(&v202 + 1) >> 62) > 1)
        {
          v208 = v321;
          v209 = v328;
          if (v207 == 2)
          {
            v206 = *(v202 + 16);
          }
        }

        else
        {
          v208 = v321;
          v209 = v328;
          if (v207)
          {
            v206 = v202;
          }
        }

        *(v205 + 32) = v206;
        swift_beginAccess();
        *(v205 + 40) = v203;
        v356 = v204;
        v357 = sub_10014400C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        *&v355 = v205;
        v211 = v208;
        v212 = sub_1001F5414(&v355);
        v216 = v350;
        if (v211)
        {
          sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
          sub_1000C2E24(&v361);
          sub_1000124C8(v349, v343);
          sub_10012A684(v209, _s3SAEVMa);
          return sub_10012A684(v327, type metadata accessor for NANPairing.GeneratedKeys);
        }

        if ((((v214 & 0x1000000000000000) != 0) | (2 * v215)) == 3 && (v214 & 0x2000000000000000) != 0)
        {
          LODWORD(v336) = v215;
          v334 = v47;
          v287 = v214;
          v288 = v212;
          v289 = v213;
          sub_100144000(v212, v213, v214 & 0xEFFFFFFFFFFFFFFFLL);
          v333 = v287;
          sub_100221C40(v288, v289, v287 & 0xCFFFFFFFFFFFFFFFLL);
          v321 = 0;
          sub_1000C2E24(&v361);
          v309 = v333;
          v310 = v336;
          sub_1000B21F4(v288, v289, v333, v336);
          sub_1000B21F4(v288, v289, v309, v310);
          sub_10012A684(v209, _s3SAEVMa);
          v47 = v334;
          v50 = v335;
          v100 = v350;
          v172 = *(v335 + 16);
          if (v172)
          {
            goto LABEL_50;
          }

LABEL_53:
          v176 = v323;
          v177 = v367;
          (*(v100 + 16))(v323, v47, v367);
          v178 = v326;
          sub_100143FBC(v50, v326, v345, v346);
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            *&v351 = v182;
            *v181 = 136315138;
            v183 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
            v185 = v100;
            v186 = sub_100002320(v183, v184, &v351);
            v187 = v349;

            *(v181 + 4) = v186;
            _os_log_impl(&_mh_execute_header, v179, v180, "Cannot verify a PASN confirmation from %s because no MIC element was found", v181, 0xCu);
            sub_100002A00(v182);
            v178 = v326;

            (*(v185 + 8))(v323, v367);
            v188 = v327;
            v189 = v343;
          }

          else
          {

            (*(v100 + 8))(v176, v177);
            v188 = v327;
            v189 = v343;
            v187 = v349;
          }

          sub_10000B02C();
          swift_allocError();
          *v192 = xmmword_1004881C0;
          *(v192 + 16) = 1;
          swift_willThrow();
          sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
          sub_1000124C8(v187, v189);
          sub_10012A684(v188, type metadata accessor for NANPairing.GeneratedKeys);
          return sub_1000B21F4(v335, v178, v345, v346);
        }

        sub_1000B21F4(v212, v213, v214, v215);
        v295 = v312;
        v296 = v367;
        (*(v216 + 16))(v312, v47, v367);
        v297 = Logger.logObject.getter();
        v298 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v297, v298))
        {
          v299 = v295;
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          *&v355 = v301;
          *v300 = 136315138;
          v302 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
          v304 = v216;
          v305 = sub_100002320(v302, v303, &v355);
          v209 = v328;

          *(v300 + 4) = v305;
          _os_log_impl(&_mh_execute_header, v297, v298, "Cannot verify a PASN confirmation from %s because the SAE wrapped data could not be decoded into a confirmation", v300, 0xCu);
          sub_100002A00(v301);

          (*(v304 + 8))(v299, v367);
        }

        else
        {

          (*(v216 + 8))(v295, v296);
        }

        v306 = v343;
        v307 = v349;
        sub_10000B02C();
        swift_allocError();
        *v308 = xmmword_1004881C0;
        *(v308 + 16) = 1;
        swift_willThrow();
        sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
        sub_1000C2E24(&v361);
        sub_1000124C8(v307, v306);
        v171 = v209;
LABEL_47:
        sub_10012A684(v171, _s3SAEVMa);
        goto LABEL_28;
      }

LABEL_37:
      v141 = v320;
      (*(v350 + 16))(v320, v47, v51);
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v361 = v145;
        *v144 = 136315138;
        v146 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
        v148 = v136;
        v149 = sub_100002320(v146, v147, &v361);
        v150 = v349;

        *(v144 + 4) = v149;
        _os_log_impl(&_mh_execute_header, v142, v143, "Cannot verify a PASN confirmation from %s because no SAE wrapped data was included", v144, 0xCu);
        sub_100002A00(v145);

        (*(v148 + 8))(v320, v367);
LABEL_44:
        v169 = v343;
LABEL_46:
        sub_10000B02C();
        swift_allocError();
        *v170 = xmmword_1004881C0;
        *(v170 + 16) = 1;
        swift_willThrow();
        sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
        sub_1000124C8(v150, v169);
        v171 = v328;
        goto LABEL_47;
      }
    }

    else
    {
      v136 = v350;
      v141 = v322;
      (*(v350 + 16))(v322, v47, v51);
      v142 = Logger.logObject.getter();
      v162 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v142, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v361 = v164;
        *v163 = 136315138;
        v165 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
        v167 = v136;
        v168 = sub_100002320(v165, v166, &v361);
        v150 = v349;

        *(v163 + 4) = v168;
        _os_log_impl(&_mh_execute_header, v142, v162, "Cannot verify a PASN confirmation from %s because the SAE parameters were invalid", v163, 0xCu);
        sub_100002A00(v164);

        (*(v167 + 8))(v322, v367);
        goto LABEL_44;
      }
    }

    (*(v136 + 8))(v141, v51);
    v169 = v343;
    v150 = v349;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10012A684(v332, type metadata accessor for NANPairing.Mode);
    v100 = v350;
    if (v98)
    {
      v101 = v325;
      (*(v350 + 16))(v325, v47, v51);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v351 = v105;
        *v104 = 136315138;
        v106 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
        v108 = v100;
        v109 = sub_100002320(v106, v107, &v351);
        v110 = v349;

        *(v104 + 4) = v109;
        _os_log_impl(&_mh_execute_header, v102, v103, "Cannot verify a PASN confirmation from %s because a wrapped data format was provided for opportunistic pair setup", v104, 0xCu);
        sub_100002A00(v105);

        (*(v108 + 8))(v325, v367);
        v111 = v343;
      }

      else
      {

        (*(v100 + 8))(v101, v51);
        v111 = v343;
        v110 = v349;
      }

      sub_10000B02C();
      swift_allocError();
      *v190 = xmmword_1004881C0;
      *(v190 + 16) = 1;
      swift_willThrow();
      sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
      v113 = v110;
      v126 = v111;
      goto LABEL_27;
    }
  }

  else
  {
    v100 = v350;
    if (v98)
    {
      v151 = v324;
      (*(v350 + 16))(v324, v47, v51);
      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v351 = v155;
        *v154 = 136315138;
        v156 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
        v158 = v100;
        v159 = sub_100002320(v156, v157, &v351);
        v160 = v349;

        *(v154 + 4) = v159;
        _os_log_impl(&_mh_execute_header, v152, v153, "Cannot verify a PASN confirmation from %s because a wrapped data format was provided for pair verification", v154, 0xCu);
        sub_100002A00(v155);

        (*(v158 + 8))(v324, v367);
        v161 = v343;
      }

      else
      {

        (*(v100 + 8))(v151, v51);
        v161 = v343;
        v160 = v349;
      }

      sub_10000B02C();
      swift_allocError();
      *v191 = xmmword_1004881C0;
      *(v191 + 16) = 1;
      swift_willThrow();
      sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
      sub_1000124C8(v160, v161);
      sub_10012A684(v327, type metadata accessor for NANPairing.GeneratedKeys);
      v127 = type metadata accessor for NANPairing.Mode;
      v128 = v332;
      return sub_10012A684(v128, v127);
    }

    sub_10012A684(v332, type metadata accessor for NANPairing.Mode);
  }

  v172 = *(v50 + 16);
  if (!v172)
  {
    goto LABEL_53;
  }

LABEL_50:
  v173 = 0;
  v174 = 0;
  while (1)
  {
    v175 = (v50 + v173);
    if (*(v50 + v173 + 88) == 7)
    {
      break;
    }

    ++v174;
    v173 += 64;
    if (v172 == v174)
    {
      goto LABEL_53;
    }
  }

  v193 = v175[2];
  v194 = v175[3];
  v195 = v175[4];
  *(v353 + 9) = *(v175 + 73);
  v352 = v194;
  v353[0] = v195;
  v351 = v193;
  v196 = *&v47[v330[25]];
  sub_100143FBC(v50, v326, v345, v346);
  sub_1000C2DC8(&v351, &v361);
  v197 = sub_10014345C(v196);
  v198 = v197;
  v200 = v199;
  v201 = v199 >> 62;
  v336 = v196;
  if ((v199 >> 62) <= 1)
  {
    if (!v201)
    {
      goto LABEL_76;
    }

    v197 = v197;
    v210 = v198 >> 32;
LABEL_74:
    if (v210 < v197)
    {
      __break(1u);
    }

    goto LABEL_76;
  }

  if (v201 == 2)
  {
    v197 = *(v197 + 16);
    v210 = *(v198 + 24);
    goto LABEL_74;
  }

LABEL_76:
  v217 = Data.subdata(in:)();
  v219 = v218;
  sub_1000124C8(v198, v200);
  v220 = v335;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C2B78(v220);
    v220 = result;
  }

  if (v174 >= *(v220 + 16))
  {
    __break(1u);
  }

  else
  {
    v221 = v220 + v173;
    v222 = *(v220 + v173 + 32);
    v223 = *(v220 + v173 + 48);
    v224 = *(v220 + v173 + 64);
    *&v363[9] = *(v220 + v173 + 73);
    v362 = v223;
    *v363 = v224;
    v361 = v222;
    *(v221 + 32) = v217;
    *(v221 + 40) = v219;
    *(v221 + 88) = 7;
    sub_1000C2E24(&v361);
    v225 = sub_100033AA8(_swiftEmptyArrayStorage);
    v226 = type metadata accessor for BinaryEncoder();
    v227 = swift_allocObject();
    *(v227 + 16) = xmmword_100480A90;
    *(v227 + 32) = v225;
    v360[3] = v226;
    v360[4] = sub_10014400C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v360[0] = v227;

    v228 = v321;
    IEEE80211Frame.Management.Authentication.encode(to:)(v360, v220, 0, 0, 1);
    v229 = v327;
    if (v228)
    {
      sub_1000124C8(v349, v343);
      sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
      sub_1000C2E24(&v351);

      sub_10012A684(v229, type metadata accessor for NANPairing.GeneratedKeys);
      sub_100002A00(v360);
    }

    else
    {
      v335 = v220;
      sub_100002A00(v360);
      swift_beginAccess();
      v230 = *(v227 + 24);
      v346 = *(v227 + 16);
      sub_10000AB0C(v346, v230);

      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v231 = swift_allocObject();
      v345 = xmmword_1004817D0;
      *(v231 + 16) = xmmword_1004817D0;
      v232 = v337;
      *(v231 + 32) = v338;
      *(v231 + 33) = v232;
      v233 = v340;
      *(v231 + 34) = v339;
      *(v231 + 35) = v233;
      v234 = v342;
      *(v231 + 36) = v341;
      *(v231 + 37) = v234;
      v235 = sub_10002D874(v231);
      v321 = 0;
      v236 = v235;
      v238 = v237;

      v239 = v330[20];
      v334 = v47;
      v240 = &v47[v239];
      v241 = *&v47[v239 + 4];
      v242 = swift_allocObject();
      *(v242 + 16) = v345;
      *(v242 + 32) = *v240;
      *(v242 + 36) = v241;
      v243 = sub_10002D874(v242);
      v245 = v244;

      *&v359 = v236;
      *(&v359 + 1) = v238;
      v356 = &type metadata for Data;
      v357 = &protocol witness table for Data;
      *&v355 = v243;
      *(&v355 + 1) = v245;
      v246 = sub_100029B34(&v355, &type metadata for Data);
      v248 = *v246;
      v247 = v246[1];
      sub_10000AB0C(v236, v238);
      sub_10000AB0C(v243, v245);
      v249 = v321;
      sub_100178A18(v248, v247);
      *&v345 = v249;
      sub_1000124C8(v243, v245);
      sub_1000124C8(v236, v238);
      sub_100002A00(&v355);
      v250 = v359;
      v358 = v359;
      v356 = &type metadata for Data;
      v357 = &protocol witness table for Data;
      v251 = v349;
      v252 = v343;
      *&v355 = v349;
      *(&v355 + 1) = v343;
      v253 = sub_100029B34(&v355, &type metadata for Data);
      v254 = *v253;
      v255 = v253[1];
      sub_10000AB0C(v250, *(&v250 + 1));
      sub_10000AB0C(v251, v252);
      sub_100178A18(v254, v255);
      sub_1000124C8(v250, *(&v250 + 1));
      sub_100002A00(&v355);
      v257 = *(&v358 + 1);
      v256 = v358;
      v359 = v358;
      v356 = &type metadata for Data;
      v357 = &protocol witness table for Data;
      v258 = v346;
      *&v355 = v346;
      *(&v355 + 1) = v230;
      v259 = sub_100029B34(&v355, &type metadata for Data);
      v261 = *v259;
      v260 = v259[1];
      *&v345 = v230;
      sub_10000AB0C(v258, v230);
      sub_10000AB0C(v256, v257);
      sub_100178A18(v261, v260);
      sub_1000124C8(v256, v257);
      sub_100002A00(&v355);
      v355 = v359;
      v262 = v327;
      v263 = *(v313 + 20);
      sub_1000BA0A4();
      v264 = v314;
      static HMAC.authenticationCode<A>(for:using:)();
      sub_1000124C8(v355, *(&v355 + 1));
      v265 = v318;
      v266 = HashedAuthenticationCode.rawRepresentation.getter();
      v268 = v267;
      (*(v317 + 8))(v264, v265);
      sub_1002B9AE4(v336, v266, v268, &v355);
      v270 = *(&v355 + 1);
      v269 = v355;
      if (BYTE8(v353[1]) == 7 && (v271 = *(&v351 + 1), v272 = v351, sub_1000C2DC8(&v351, &v355), LOBYTE(v271) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v272, v271, v269, v270), sub_1000C2E24(&v351), (v271 & 1) != 0))
      {
        sub_1000124C8(v349, v343);
        sub_1000C2E24(&v351);
        sub_1000124C8(v269, v270);
        sub_1000124C8(v346, v345);
        sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
        v273 = v334;
        v274 = v347;
        (v344[1])(&v347[v334], v348);
        sub_100142410(v262, &v274[v273], type metadata accessor for NANPairing.GeneratedKeys);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v275 = v350;
        v276 = v319;
        v277 = v367;
        (*(v350 + 16))(v319, v334, v367);
        v278 = Logger.logObject.getter();
        v279 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v278, v279))
        {
          v280 = swift_slowAlloc();
          v281 = swift_slowAlloc();
          v348 = v269;
          v282 = v281;
          *&v355 = v281;
          *v280 = 136315138;
          v283 = WiFiAddress.description.getter(v338 | (v337 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40));
          v285 = v270;
          v286 = sub_100002320(v283, v284, &v355);

          *(v280 + 4) = v286;
          v270 = v285;
          v262 = v327;
          _os_log_impl(&_mh_execute_header, v278, v279, "Cannot verify a PASN confirmation from %s because the MIC was invalid", v280, 0xCu);
          sub_100002A00(v282);
          v269 = v348;

          (*(v275 + 8))(v319, v367);
        }

        else
        {

          (*(v275 + 8))(v276, v277);
        }

        v290 = v343;
        v291 = v349;
        v292 = v346;
        v293 = v345;
        sub_10000B02C();
        swift_allocError();
        *v294 = xmmword_1004881C0;
        *(v294 + 16) = 1;
        swift_willThrow();
        sub_1000124C8(v269, v270);
        sub_100016290(v364, &qword_10058DF60, &qword_1004884E8);
        sub_1000C2E24(&v351);
        sub_1000124C8(v292, v293);
        sub_1000124C8(v291, v290);
        sub_10012A684(v262, type metadata accessor for NANPairing.GeneratedKeys);
      }
    }
  }

  return result;
}

uint64_t sub_10013F878@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a2;
  v103 = a1;
  v100 = a4;
  v134 = type metadata accessor for SymmetricKey();
  v113 = *(v134 - 8);
  v6 = *(v113 + 8);
  __chkstk_darwin();
  v101 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v99 - v8;
  __chkstk_darwin();
  v112 = &v99 - v9;
  v10 = *(*(sub_10005DC58(&unk_10059A690, &unk_1004884D0) - 8) + 64);
  __chkstk_darwin();
  v104 = &v99 - v11;
  v12 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v14 = &v99 - v13;
  v15 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v107 = *(v15 - 8);
  v16 = *(v107 + 64);
  __chkstk_darwin();
  v108 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = (&v99 - v18);
  __chkstk_darwin();
  v102 = (&v99 - v19);
  v20 = *(a3 + 32);
  *v132 = *(a3 + 16);
  *&v132[16] = v20;
  v21 = type metadata accessor for NANPairing.PASN.State();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v25 = &v99 - v24;
  v105 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v26 = *(*(v105 - 8) + 64);
  __chkstk_darwin();
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v4 + *(a3 + 96), v21);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v22 + 8))(v25, v21);
    sub_10000B02C();
    swift_allocError();
    *v37 = xmmword_1004881C0;
    *(v37 + 16) = 1;
    return swift_willThrow();
  }

  sub_100142410(v25, v28, type metadata accessor for NANPairing.GeneratedKeys);
  v29 = sub_10012C0E8(a3);
  v30 = v28;
  v99 = a3;
  if ((v29 & 1) != 0 && (v31 = type metadata accessor for NANIdentityKey(0), v32 = *(*(v31 - 8) + 48), v33 = v103, v32(v103, 1, v31) != 1))
  {
    sub_100012400(v33, v14, &unk_100595C50, &unk_1004AFD20);
    result = v32(v14, 1, v31);
    if (result == 1)
    {
      goto LABEL_30;
    }

    v39 = v102;
    *v102 = 26898256;
    sub_100142410(v14, v39 + *(v15 + 24), type metadata accessor for NANIdentityKey);
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
    swift_storeEnumTagMultiPayload();
    v34 = sub_100117494(0, 1, 1, _swiftEmptyArrayStorage);
    v41 = v34[2];
    v40 = v34[3];
    if (v41 >= v40 >> 1)
    {
      v34 = sub_100117494(v40 > 1, v41 + 1, 1, v34);
    }

    v35 = v134;
    v36 = v113;
    v34[2] = v41 + 1;
    sub_100142410(v39, v34 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v41, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "NIK: Adding NIK", v44, 2u);
    }
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
    v35 = v134;
    v36 = v113;
  }

  v45 = *(v36 + 6);
  v46 = v110;
  v47 = v45(v110, 1, v35);
  v48 = v111;
  if (v47 != 1)
  {
    v50 = v46;
    v51 = v104;
    sub_100012400(v50, v104, &unk_10059A690, &unk_1004884D0);
    result = v45(v51, 1, v35);
    if (result != 1)
    {
      v52 = v109;
      NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.init(keyID:iGTK:)(1, v51, v109);
      sub_10012A6E4(v52, v108, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
      v49 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100117494(0, v34[2] + 1, 1, v34);
      }

      v54 = v34[2];
      v53 = v34[3];
      if (v54 >= v53 >> 1)
      {
        v34 = sub_100117494(v53 > 1, v54 + 1, 1, v34);
      }

      v34[2] = v54 + 1;
      sub_100142410(v108, v34 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v54, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "IGTK: Adding iGTKKDE", v57, 2u);
        v48 = v111;
      }

      sub_10012A684(v109, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
      goto LABEL_22;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v49 = v30;
LABEL_22:
  v58 = v112;
  if (v34[2])
  {
    LODWORD(v108) = *(v4 + *(v99 + 84));
    v59 = v113;
    v60 = *(v113 + 2);
    v107 = *(v105 + 32);
    v61 = v49 + v107;
    v111 = v49;
    v62 = v134;
    v60(v112, v61, v134);
    v60(v48, v58, v62);
    v63 = type metadata accessor for __DataStorage();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();

    v110 = __DataStorage.init(length:)() | 0x4000000000000000;
    v66 = *(v63 + 48);
    v67 = *(v63 + 52);
    swift_allocObject();
    v109 = (__DataStorage.init(length:)() | 0x4000000000000000);
    v68 = *(v63 + 48);
    v69 = *(v63 + 52);
    swift_allocObject();
    v70 = __DataStorage.init(length:)() | 0x4000000000000000;
    v71 = v34;
    v72 = v106;
    v73 = sub_100275C0C(v34, v48);
    v75 = v48;
    v76 = v59;
    v77 = v111;
    if (v72)
    {
      v78 = *(v76 + 1);
      v78(v48, v62);

      sub_1000124C8(0x2000000000, v110);
      sub_1000124C8(0x1000000000, v109);
      sub_1000124C8(0x1000000000, v70);
      v78(v112, v62);
      sub_10012A684(v77, type metadata accessor for NANPairing.GeneratedKeys);
    }

    else
    {
      v83 = v73;
      v84 = v74;
      v85 = *(v76 + 1);
      v85(v75, v62);

      LOBYTE(v115[0]) = 1;
      *(v115 + 2) = 4232;
      *(v115 + 8) = xmmword_1004881D0;
      *(&v115[1] + 1) = v110;
      *&v116 = 0x1000000000;
      *(&v116 + 1) = v109;
      v117 = 0uLL;
      *&v118 = 0x1000000000;
      *(&v118 + 1) = v70;
      *&v119 = v83;
      *(&v119 + 1) = v84;
      v120[0] = 1;
      v121 = 4232;
      v122 = xmmword_1004881D0;
      v123 = v110;
      v124 = 0x1000000000;
      v125 = v109;
      v126 = 0;
      v127 = 0;
      v128 = 0x1000000000;
      v129 = v70;
      v130 = v83;
      v131 = v84;
      sub_100143E5C(v115, v114);
      sub_100143EB8(v120);
      v113 = v85;
      v85(v112, v134);
      *&v133[7] = v115[0];
      *&v133[23] = v115[1];
      *&v133[39] = v116;
      *&v133[87] = v119;
      *&v133[71] = v118;
      *&v133[55] = v117;
      v132[0] = v108;
      *&v132[33] = *&v133[32];
      *&v132[17] = *&v133[16];
      *&v132[1] = *v133;
      *&v132[96] = *(&v119 + 1);
      *&v132[81] = *&v133[80];
      *&v132[65] = *&v133[64];
      *&v132[49] = *&v133[48];
      sub_100143F0C(v132, v114);
      v86 = sub_100276A4C(v71);
      v88 = v87;

      sub_100143F68(v132);
      v114[0] = v86;
      v114[1] = v88;
      sub_10000AB0C(v86, v88);
      v89 = v101;
      SymmetricKey.init<A>(data:)();
      v90 = v111;
      v91 = static AES.KeyWrap.wrap(_:using:)();
      v92 = v86;
      v94 = v93;
      sub_1000124C8(v92, v88);
      v113(v89, v134);
      sub_10012A684(v90, type metadata accessor for NANPairing.GeneratedKeys);
      result = sub_1000124C8(v91, v94);
      v95 = *&v132[80];
      v96 = v100;
      *(v100 + 64) = *&v132[64];
      *(v96 + 80) = v95;
      *(v96 + 96) = *&v132[96];
      v97 = *&v132[16];
      *v96 = *v132;
      *(v96 + 16) = v97;
      v98 = *&v132[48];
      *(v96 + 32) = *&v132[32];
      *(v96 + 48) = v98;
    }
  }

  else
  {

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "No KDEs found for generating the shared key descriptor!", v81, 2u);
    }

    sub_10000B02C();
    swift_allocError();
    *v82 = xmmword_1004881C0;
    *(v82 + 16) = 1;
    swift_willThrow();
    return sub_10012A684(v49, type metadata accessor for NANPairing.GeneratedKeys);
  }

  return result;
}

uint64_t sub_100140548(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for SymmetricKey();
  v29 = *(v30 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin();
  v41 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 32);
  v32 = *(a2 + 16);
  v33 = v8;
  v9 = type metadata accessor for NANPairing.PASN.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v29 - v12;
  v14 = type metadata accessor for NANPairing.GeneratedKeys(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin();
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v2 + *(a2 + 96), v9);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100142410(v13, v17, type metadata accessor for NANPairing.GeneratedKeys);
    v18 = *(a1 + 56);
    v36 = *(a1 + 40);
    v37 = v18;
    v19 = *(a1 + 88);
    v38 = *(a1 + 72);
    v39 = v19;
    v20 = *(a1 + 24);
    v34 = *(a1 + 8);
    v35 = v20;
    v21 = *(v14 + 32);
    v22 = NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.decryptKeyData(using:)();
    if (v3)
    {
      sub_10012A684(v17, type metadata accessor for NANPairing.GeneratedKeys);
    }

    else
    {
      a1 = v22;
      if (!*(v22 + 16))
      {
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "verify: No KDEs in the SKD", v25, 2u);
        }
      }

      v40 = v39;
      v32 = v39;
      sub_100142478(&v40, v31);
      sub_1000BA0A4();
      v26 = v41;
      static AES.KeyWrap.unwrap<A>(_:using:)();
      sub_1000124C8(v32, *(&v32 + 1));
      SymmetricKey.withUnsafeBytes<A>(_:)();
      (*(v29 + 8))(v26, v30);
      sub_10012A684(v17, type metadata accessor for NANPairing.GeneratedKeys);
      sub_1000124C8(v32, *(&v32 + 1));
    }
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    sub_10000B02C();
    swift_allocError();
    *v27 = xmmword_1004881C0;
    *(v27 + 16) = 1;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100140958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a2;
  v73 = a1;
  v74 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v5 = *(*(v74 - 8) + 64);
  __chkstk_darwin();
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SymmetricKey();
  v78 = *(v79 - 8);
  v7 = *(v78 + 64);
  __chkstk_darwin();
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(_s3SAEVMa(0) - 8) + 64);
  __chkstk_darwin();
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(type metadata accessor for NANPairing.Mode(0) - 8) + 64);
  __chkstk_darwin();
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 32);
  v80 = *(a3 + 16);
  v81 = v15;
  v16 = type metadata accessor for NANPairing.PASN.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v70 - v19;
  v21 = *(*(type metadata accessor for NANPairing.GeneratedKeys(0) - 8) + 64);
  __chkstk_darwin();
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v3 + *(a3 + 96), v16);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v17 + 8))(v20, v16);
    sub_10000B02C();
    swift_allocError();
    *v48 = xmmword_1004881C0;
    *(v48 + 16) = 1;
    return swift_willThrow();
  }

  sub_100142410(v20, v23, type metadata accessor for NANPairing.GeneratedKeys);
  sub_10012A6E4(v3 + *(a3 + 52), v14, type metadata accessor for NANPairing.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v3;
  v26 = v23;
  if (!EnumCaseMultiPayload)
  {
    v50 = *(v14 + 5);
    v84 = *(v14 + 4);
    v85 = v50;
    v86 = *(v14 + 48);
    v51 = *(v14 + 1);
    v80 = *v14;
    v81 = v51;
    v52 = *(v14 + 3);
    v82 = *(v14 + 2);
    v83 = v52;
    sub_100141458(&v80);
    v53 = sub_10005DC58(&qword_10058DBB8, &qword_100488200);
    sub_100142410(&v14[*(v53 + 48)], v11, _s3SAEVMa);
    v54 = v92;
    v55 = sub_1002217CC();
    if (v54)
    {
      v59 = _s3SAEVMa;
LABEL_15:
      sub_10012A684(v11, v59);
      return sub_10012A684(v26, type metadata accessor for NANPairing.GeneratedKeys);
    }

    v60 = v55;
    v46 = v56;
    v61 = v57;
    v62 = v58;
    sub_10012A684(v11, _s3SAEVMa);
    sub_1000124C8(v61, v62);
LABEL_12:
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Paired Peer: Installing peer NIK", v65, 2u);
    }

    v66 = *(v25 + *(a3 + 72));
    v67 = *(v25 + *(a3 + 56));
    v11 = v75;
    sub_10012A6E4(v73, v75, type metadata accessor for NANIdentityKey);
    v68 = v74;
    v11[*(v74 + 20)] = v66;
    v11[v68[6]] = v67;
    v69 = &v11[v68[7]];
    *v69 = v60;
    v69[1] = v46;
    *&v11[v68[8]] = 0;
    sub_10000AB0C(v60, v46);
    LongTermPairingKeyStore.installPairedPeer(with:)(v11);
    sub_1000124C8(v60, v46);
    v59 = type metadata accessor for NANPairedDeviceSharedAssociation;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10012A684(v23, type metadata accessor for NANPairing.GeneratedKeys);
    return sub_10012A684(v14, type metadata accessor for NANPairing.Mode);
  }

  sub_10012A684(v14, type metadata accessor for NANPairing.Mode);
  v88 = sub_10016FD40(0xD000000000000020, 0x80000001004B9920);
  v89 = v27;
  v28 = v3 + *(a3 + 76);
  v29 = *(v28 + 4);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v30 = swift_allocObject();
  v72 = xmmword_1004817D0;
  *(v30 + 16) = xmmword_1004817D0;
  *(v30 + 32) = *v28;
  *(v30 + 36) = v29;
  v31 = sub_10002D874(v30);
  v33 = v32;

  v34 = *(a3 + 80);
  v71 = v3;
  v35 = (v3 + v34);
  v36 = *(v3 + v34 + 4);
  v37 = swift_allocObject();
  *(v37 + 16) = v72;
  *(v37 + 32) = *v35;
  *(v37 + 36) = v36;
  v38 = sub_10002D874(v37);
  v40 = v39;

  *&v87 = v31;
  *(&v87 + 1) = v33;
  *(&v81 + 1) = &type metadata for Data;
  *&v82 = &protocol witness table for Data;
  *&v80 = v38;
  *(&v80 + 1) = v40;
  v41 = sub_100029B34(&v80, &type metadata for Data);
  v42 = *v41;
  v43 = v41[1];
  sub_10000AB0C(v31, v33);
  sub_10000AB0C(v38, v40);
  v44 = v43;
  v26 = v23;
  sub_100178A18(v42, v44);
  sub_1000124C8(v38, v40);
  sub_1000124C8(v31, v33);
  sub_100002A00(&v80);
  v80 = v87;
  type metadata accessor for SHA256();
  sub_10014400C(&qword_10059AB90, &type metadata accessor for SHA256);
  sub_1000BA0A4();
  v45 = v77;
  static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)();
  sub_1000124C8(v80, *(&v80 + 1));
  sub_1000124C8(v88, v89);
  sub_10005DC58(&qword_10058DF50, &qword_1004884C8);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  (*(v78 + 8))(v45, v79);
  v46 = v91;
  if (v91 >> 60 != 15)
  {
    v60 = v90;
    v25 = v71;
    goto LABEL_12;
  }

  sub_10000B02C();
  swift_allocError();
  *v47 = xmmword_1004881C0;
  *(v47 + 16) = 1;
  swift_willThrow();
  return sub_10012A684(v26, type metadata accessor for NANPairing.GeneratedKeys);
}

uint64_t sub_100141254(uint64_t a1)
{
  result = sub_10012DAB4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1001412D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = a7();
  if (v7)
  {
    return v9;
  }

  return result;
}

__n128 sub_100141318@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10013F878(a1, a2, a3, v9);
  if (!v4)
  {
    v7 = v9[5];
    *(a4 + 64) = v9[4];
    *(a4 + 80) = v7;
    *(a4 + 96) = v10;
    v8 = v9[1];
    *a4 = v9[0];
    *(a4 + 16) = v8;
    result = v9[3];
    *(a4 + 32) = v9[2];
    *(a4 + 48) = result;
  }

  return result;
}

void *sub_10014150C()
{
  result = qword_10058DCC0;
  if (!qword_10058DCC0)
  {
    result = &type metadata for Data;
    atomic_store(&type metadata for Data, &qword_10058DCC0);
  }

  return result;
}

void sub_10014153C()
{
  if (!qword_10058DCC8)
  {
    type metadata accessor for NANPairing.GeneratedKeys(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10058DCC8);
    }
  }
}

void sub_1001415C8()
{
  if (!qword_10058DCD0)
  {
    v0 = type metadata accessor for NANPairing.GeneratedKeys(0);
    if (!v1)
    {
      atomic_store(v0, &qword_10058DCD0);
    }
  }
}

uint64_t sub_100141638()
{
  result = type metadata accessor for SymmetricKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001416B8(uint64_t a1)
{
  v1 = *(a1 + 24) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001416E0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10014170C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[98])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100141760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100141814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
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
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1001418BC()
{
  if (!qword_10058DDF8)
  {
    _s3SAEVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10058DDF8);
    }
  }
}

ValueMetadata *sub_100141928()
{
  result = qword_10058DE00;
  if (!qword_10058DE00)
  {
    result = &type metadata for NANPairing.PairSetupParameters;
    atomic_store(&type metadata for NANPairing.PairSetupParameters, &qword_10058DE00);
  }

  return result;
}

uint64_t sub_100141960(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for NANPairing.Mode(319);
    if (v4 <= 0x3F)
    {
      result = type metadata accessor for SymmetricKeySize();
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 24);
        result = swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          v9 = *(a1 + 16);
          v10 = *(a1 + 32);
          result = type metadata accessor for NANPairing.PASN.State();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100141A94(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v51 = type metadata accessor for Logger();
  v5 = *(v51 - 8);
  v6 = *(v5 + 84);
  v50 = v5;
  v7 = *(v5 + 80);
  v8 = v7 | 7;
  v9 = *(v5 + 64);
  v10 = (((v7 | 7) + 98) & ~(v7 | 7)) + ((v9 + ((v7 + 13) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = *(type metadata accessor for SymmetricKey() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = ((v13 + 7 + ((v12 + 16 + ((v13 + 7 + ((v12 + 16) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 > v14)
  {
    v14 = v10;
  }

  if (v14 <= 0x62)
  {
    v15 = 98;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(type metadata accessor for SymmetricKeySize() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  if (v6 <= v18)
  {
    v19 = *(v16 + 84);
  }

  else
  {
    v19 = v6;
  }

  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v16 + 80);
  v23 = *(v16 + 64);
  v24 = *(v21 + 80);
  if (v19 <= *(v21 + 84))
  {
    v25 = *(v21 + 84);
  }

  else
  {
    v25 = v19;
  }

  if (v25 <= 0xFE)
  {
    v26 = 254;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v12 + 16 + ((v13 + 7 + ((v13 + v12 + ((v13 + v12) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + v13;
  if (((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > v27)
  {
    v27 = ((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v27 <= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = v27;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = v8 | v12;
  v30 = (v8 | v12) + v9;
  v31 = v15 + 1;
  v32 = v22 + 3;
  v33 = v23 + v24 + 14;
  if (v26 >= a2)
  {
    goto LABEL_43;
  }

  v34 = ((v28 + (((v12 | 7) + *(v21 + 64) + ((v33 + ((v32 + (v30 & ~v29) + v31) & ~v22)) & ~v24) + 1) & ~(v12 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  v35 = v34 & 0xFFFFFFF8;
  if ((v34 & 0xFFFFFFF8) != 0)
  {
    v36 = 2;
  }

  else
  {
    v36 = a2 - v26 + 1;
  }

  if (v36 >= 0x10000)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2;
  }

  if (v36 < 0x100)
  {
    v37 = 1;
  }

  if (v36 >= 2)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (v38 <= 1)
  {
    if (!v38)
    {
      goto LABEL_43;
    }

    v39 = *(a1 + v34);
    if (!v39)
    {
      goto LABEL_43;
    }

LABEL_40:
    v41 = v39 - 1;
    if (v35)
    {
      v41 = 0;
      v42 = *a1;
    }

    else
    {
      v42 = 0;
    }

    return v26 + (v42 | v41) + 1;
  }

  if (v38 == 2)
  {
    v39 = *(a1 + v34);
    if (v39)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v39 = *(a1 + v34);
    if (v39)
    {
      goto LABEL_40;
    }
  }

LABEL_43:
  if (v6 == v26)
  {
    v20 = v51;
    v43 = *(v50 + 48);
    v44 = a1;
    v45 = v6;
LABEL_45:

    return v43(v44, v45, v20);
  }

  v46 = v31 + ((a1 + v30) & ~v29);
  if (v25 <= 0xFE)
  {
    v47 = *(v46 + 2);
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v48 = (v32 + v46) & ~v22;
  if (v18 != v26)
  {
    v43 = *(v21 + 48);
    v44 = ((v33 + v48) & ~v24);
    v45 = *(v21 + 84);
    goto LABEL_45;
  }

  v49 = *(v17 + 48);

  return v49(v48);
}

void sub_100141ED0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = *(v6 + 84);
  v42 = v6;
  v8 = *(v6 + 80);
  v9 = v8 | 7;
  v10 = *(v6 + 64);
  v11 = (((v8 | 7) + 98) & ~(v8 | 7)) + ((v10 + ((v8 + 13) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = *(type metadata accessor for SymmetricKey() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = ((v14 + 7 + ((v13 + 16 + ((v14 + 7 + ((v13 + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v11 > v15)
  {
    v15 = v11;
  }

  if (v15 <= 0x62)
  {
    v16 = 98;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(type metadata accessor for SymmetricKeySize() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  if (v7 <= v19)
  {
    v20 = *(v17 + 84);
  }

  else
  {
    v20 = v7;
  }

  v21 = *(*(a4 + 24) - 8);
  v22 = *(v17 + 80);
  v23 = *(v17 + 64);
  v24 = *(v21 + 80);
  if (v20 <= *(v21 + 84))
  {
    v25 = *(v21 + 84);
  }

  else
  {
    v25 = v20;
  }

  if (v25 <= 0xFE)
  {
    v26 = 254;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v13 + 16 + ((v14 + 7 + ((v14 + v13 + ((v14 + v13) & ~v13)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + v14;
  if (((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > v27)
  {
    v27 = ((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v27 <= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = v27;
  }

  v29 = (v9 | v13) + v10;
  v30 = v23 + v24 + 14;
  v31 = ((v28 + (((v13 | 7) + *(v21 + 64) + ((v30 + ((v22 + 3 + (v29 & ~(v9 | v13)) + v16 + 1) & ~v22)) & ~v24) + 1) & ~(v13 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v26 >= a3)
  {
    v34 = 0;
  }

  else
  {
    if (((v28 + (((v13 | 7) + *(v21 + 64) + ((v30 + ((v22 + 3 + (v29 & ~(v9 | v13)) + v16 + 1) & ~v22)) & ~v24) + 1) & ~(v13 | 7)) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v32 = a3 - v26 + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  if (a2 > v26)
  {
    if (((v28 + (((v13 | 7) + *(v21 + 64) + ((v30 + ((v22 + 3 + (v29 & ~(v9 | v13)) + v16 + 1) & ~v22)) & ~v24) + 1) & ~(v13 | 7)) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v35 = a2 - v26;
    }

    else
    {
      v35 = 1;
    }

    if (v31)
    {
      v36 = ~v26 + a2;
      bzero(a1, v31);
      *a1 = v36;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        *(a1 + v31) = v35;
      }

      else
      {
        *(a1 + v31) = v35;
      }
    }

    else if (v34)
    {
      *(a1 + v31) = v35;
    }

    return;
  }

  if (v34 <= 1)
  {
    if (v34)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v34 == 2)
  {
    *(a1 + v31) = 0;
LABEL_50:
    if (!a2)
    {
      return;
    }

    goto LABEL_51;
  }

  *(a1 + v31) = 0;
  if (!a2)
  {
    return;
  }

LABEL_51:
  if (v7 == v26)
  {
    v37 = *(v42 + 56);
    v38 = a1;
LABEL_53:

    v37(v38);
    return;
  }

  v39 = v16 + 1 + ((a1 + v29) & ~(v9 | v13));
  if (v25 <= 0xFE)
  {
    *(v39 + 2) = a2 + 1;
    return;
  }

  v40 = (v22 + 3 + v39) & ~v22;
  if (v19 != v26)
  {
    v37 = *(v21 + 56);
    v38 = ((v30 + v40) & ~v24);
    goto LABEL_53;
  }

  v41 = *(v18 + 56);

  v41(v40);
}

uint64_t sub_100142378()
{
  result = type metadata accessor for NANIdentityKey(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100142410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001424D4(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
    return v4;
  }

  sub_100031694(v26, v27);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v5 = v25[0];
  v6 = a1[4];
  sub_100029B34(a1, a1[3]);
  v7 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = sub_100037644(v8, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v7 + 16) || (v10 = sub_10007CF6C(v9), (v11 & 1) == 0))
  {

LABEL_12:
    v17 = v27;
    sub_100031694(v26, v27);
    v4 = UnkeyedDecodingContainer.decodeData(with:)(v5, v17);
LABEL_15:
    sub_100002A00(v26);
    sub_100002A00(a1);
    return v4;
  }

  sub_100002B30(*(v7 + 56) + 32 * v10, v25);

  if ((swift_dynamicCast() & 1) == 0 || v24 != 1)
  {
    goto LABEL_12;
  }

  v12 = v27;
  sub_100031694(v26, v27);
  result = UnkeyedDecodingContainer.decodeData(with:)((v5 + 3) & 0x1FC, v12);
  v15 = 0;
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(result + 16);
    }
  }

  else if (v16)
  {
    v15 = result;
  }

  v18 = __OFADD__(v15, v5);
  v19 = v15 + v5;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v20 = *(result + 16);
        v21 = *(result + 24);
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }
    }

    else if (v16)
    {
      v20 = result;
      v21 = result >> 32;
    }

    else
    {
      v20 = 0;
      v21 = BYTE6(v14);
    }

    if (v21 >= v20 && v19 >= v20)
    {
      v22 = v14;
      v23 = result;
      v4 = Data._Representation.subscript.getter();
      sub_1000124C8(v23, v22);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001427AC(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
    return v4;
  }

  sub_100031694(v26, v27);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v5 = v25[0];
  v6 = a1[4];
  sub_100029B34(a1, a1[3]);
  v7 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = sub_100037644(v8, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v7 + 16) || (v10 = sub_10007CF6C(v9), (v11 & 1) == 0))
  {

LABEL_12:
    v17 = v27;
    sub_100031694(v26, v27);
    v4 = UnkeyedDecodingContainer.decodeData(with:)(v5, v17);
LABEL_15:
    sub_100002A00(v26);
    sub_100002A00(a1);
    return v4;
  }

  sub_100002B30(*(v7 + 56) + 32 * v10, v25);

  if (!swift_dynamicCast() || (v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = v27;
  sub_100031694(v26, v27);
  result = UnkeyedDecodingContainer.decodeData(with:)((v5 + 3) & 0x1FFFC, v12);
  v15 = 0;
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(result + 16);
    }
  }

  else if (v16)
  {
    v15 = result;
  }

  v18 = __OFADD__(v15, v5);
  v19 = v15 + v5;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v20 = *(result + 16);
        v21 = *(result + 24);
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }
    }

    else if (v16)
    {
      v20 = result;
      v21 = result >> 32;
    }

    else
    {
      v20 = 0;
      v21 = BYTE6(v14);
    }

    if (v21 >= v20 && v19 >= v20)
    {
      v22 = v14;
      v23 = result;
      v4 = Data._Representation.subscript.getter();
      sub_1000124C8(v23, v22);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}