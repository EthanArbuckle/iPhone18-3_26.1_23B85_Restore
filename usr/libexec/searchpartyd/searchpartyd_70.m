uint64_t sub_1007542C0(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = 0;
  if (((a1 ^ a3) & 1) == 0 && ((a1 >> 8) & 1) == ((a3 >> 8) & 1) && ((a1 >> 16) & 1) == ((a3 >> 16) & 1) && ((a1 >> 24) & 1) == ((a3 >> 24) & 1))
  {
    if ((a1 & 0xFF00000000) == 0x200000000)
    {
      if (BYTE4(a3) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE4(a3) == 2 || ((((a1 & &_mh_execute_header) == 0) ^ HIDWORD(a3)) & 1) == 0)
      {
        return result;
      }
    }

    if ((a1 & 0xFF0000000000) == 0x20000000000)
    {
      if (BYTE5(a3) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE5(a3) == 2 || ((((a1 & 0x10000000000) == 0) ^ (a3 >> 40)) & 1) == 0)
      {
        return result;
      }
    }

    if ((a1 & 0xFF000000000000) == 0x2000000000000)
    {
      if (BYTE6(a3) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE6(a3) == 2 || ((((a1 & 0x1000000000000) == 0) ^ HIWORD(a3)) & 1) == 0)
      {
        return result;
      }
    }

    v6 = HIBYTE(a1);
    v7 = HIBYTE(a3);
    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
      {
        return result;
      }
    }

    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (a4 == 2 || ((a4 ^ a2) & 1) != 0)
      {
        return result;
      }
    }

    if ((a2 & 0xFF00) == 0x200)
    {
      if (BYTE1(a4) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE1(a4) == 2 || ((((a2 & 0x100) == 0) ^ (a4 >> 8)) & 1) == 0)
      {
        return result;
      }
    }

    if ((a2 & 0xFF0000) == 0x20000)
    {
      if (BYTE2(a4) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (BYTE2(a4) == 2 || ((((a2 & 0x10000) == 0) ^ (a4 >> 16)) & 1) == 0)
      {
        return result;
      }
    }

    if ((a2 & 0xFF000000) == 0x2000000)
    {
      if (BYTE3(a4) != 2)
      {
        return 0;
      }

LABEL_45:
      if ((a2 & 0xFF00000000) == 0x200000000)
      {
        if (BYTE4(a4) == 2)
        {
          return 1;
        }
      }

      else if (BYTE4(a4) != 2 && ((((a2 & &_mh_execute_header) == 0) ^ HIDWORD(a4)) & 1) != 0)
      {
        return 1;
      }

      return 0;
    }

    result = 0;
    if (BYTE3(a4) != 2 && ((((a2 & 0x1000000) == 0) ^ (a4 >> 24)) & 1) != 0)
    {
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t sub_100754528(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 6);
  v7 = *(a2 + 6);
  if (v6)
  {
    if (!v7 || (*(a1 + 5) != *(a2 + 5) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_20:
    v9 = a1[56];
    v10 = a2[56];
    if (v9 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v9) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_100754620()
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v1 = v0[5];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = v0[6];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v3 = v0[7];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = v0[8];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = v0[9];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v0[10];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v0[11];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = v0[12];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v0[13];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v0[14];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v0[15];

  return static URL.== infix(_:_:)();
}

BOOL sub_100754758(uint64_t a1, __int128 *a2)
{
  v87 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v86 = *(v87 - 8);
  v4 = *(v86 + 64);
  __chkstk_darwin(v87);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v84 = &v80 - v9;
  v85 = sub_1000BC4D4(&qword_1016A89D0, &unk_1013B9410);
  v10 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v12 = &v80 - v11;
  v13 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v80 - v20;
  v22 = sub_1000BC4D4(&qword_1016A89D8, &unk_10140A400);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v80 - v24;
  v26 = *(a1 + 48);
  v90[2] = *(a1 + 32);
  v90[3] = v26;
  v27 = *(a1 + 64);
  v28 = *(a1 + 16);
  v90[0] = *a1;
  v90[1] = v28;
  v29 = a2[3];
  v91[2] = a2[2];
  v91[3] = v29;
  v91[4] = a2[4];
  v30 = *a2;
  v91[1] = a2[1];
  v90[4] = v27;
  v91[0] = v30;
  if ((sub_100753FD8(v90, v91) & 1) == 0)
  {
    return 0;
  }

  v31 = *(a2 + 10);
  if (*(a1 + 80) == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || (sub_1007542C0(*(a1 + 80) & 0xFFFFFFFF01010101, (*(a1 + 88) | (*(a1 + 92) << 32)) & 0xFFFFFFFFFFLL, a2[5] & 0xFFFFFFFF01010101, (*(a2 + 22) | (*(a2 + 92) << 32)) & 0xFFFFFFFFFFLL) & 1) == 0)
  {
    return 0;
  }

  v83 = v12;
  v81 = v6;
  v82 = type metadata accessor for AccessoryInfoResponseContent(0);
  v32 = v82[6];
  v33 = *(v22 + 48);
  sub_1000D2A70(a1 + v32, v25, &qword_1016A62E8, &qword_1013B3CB0);
  v34 = a2 + v32;
  v35 = v33;
  sub_1000D2A70(v34, &v25[v33], &qword_1016A62E8, &qword_1013B3CB0);
  v36 = *(v14 + 48);
  if (v36(v25, 1, v13) == 1)
  {
    v37 = v36(&v25[v35], 1, v13);
    v38 = v83;
    if (v37 == 1)
    {
      sub_10000B3A8(v25, &qword_1016A62E8, &qword_1013B3CB0);
      goto LABEL_14;
    }

LABEL_12:
    v41 = &qword_1016A89D8;
    v42 = &unk_10140A400;
    v43 = v25;
LABEL_20:
    sub_10000B3A8(v43, v41, v42);
    return 0;
  }

  sub_1000D2A70(v25, v21, &qword_1016A62E8, &qword_1013B3CB0);
  v39 = v35;
  v40 = v36(&v25[v35], 1, v13);
  v38 = v83;
  if (v40 == 1)
  {
    sub_100757B8C(v21, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    goto LABEL_12;
  }

  sub_100757BEC(&v25[v39], v17, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v44 = sub_100755284(v21, v17);
  sub_100757B8C(v17, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  sub_100757B8C(v21, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  sub_10000B3A8(v25, &qword_1016A62E8, &qword_1013B3CB0);
  if (!v44)
  {
    return 0;
  }

LABEL_14:
  v45 = v82;
  v46 = v82[7];
  v47 = *(v85 + 48);
  sub_1000D2A70(a1 + v46, v38, &qword_1016A62E0, &unk_1013B8C30);
  sub_1000D2A70(a2 + v46, v38 + v47, &qword_1016A62E0, &unk_1013B8C30);
  v48 = *(v86 + 48);
  v49 = v87;
  if (v48(v38, 1, v87) == 1)
  {
    if (v48(v38 + v47, 1, v49) == 1)
    {
      sub_10000B3A8(v38, &qword_1016A62E0, &unk_1013B8C30);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v50 = v84;
  sub_1000D2A70(v38, v84, &qword_1016A62E0, &unk_1013B8C30);
  if (v48(v38 + v47, 1, v49) == 1)
  {
    sub_100757B8C(v50, type metadata accessor for AccessoryInfoResponseContent.Assets);
LABEL_19:
    v41 = &qword_1016A89D0;
    v42 = &unk_1013B9410;
    v43 = v38;
    goto LABEL_20;
  }

  v52 = v38 + v47;
  v53 = v81;
  sub_100757BEC(v52, v81, type metadata accessor for AccessoryInfoResponseContent.Assets);
  v54 = sub_100754620();
  sub_100757B8C(v53, type metadata accessor for AccessoryInfoResponseContent.Assets);
  sub_100757B8C(v50, type metadata accessor for AccessoryInfoResponseContent.Assets);
  sub_10000B3A8(v38, &qword_1016A62E0, &unk_1013B8C30);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v55 = v45[8];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = v45[9];
  v61 = *(a1 + v60);
  v62 = *(a1 + v60 + 8);
  v87 = *(a1 + v60 + 16);
  v86 = *(a1 + v60 + 24);
  v64 = *(a1 + v60 + 32);
  v63 = *(a1 + v60 + 40);
  v65 = (a2 + v60);
  v66 = *v65;
  v67 = v65[1];
  v69 = v65[2];
  v68 = v65[3];
  v71 = v65[4];
  v70 = v65[5];
  if (v62)
  {
    if (v67)
    {
      v81 = v64;
      v83 = v63;
      if (v61 == v66 && v62 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v87 == v69 && v86 == v68 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        if (v81 == v71 && v83 == v70)
        {
          v84 = v70;
          sub_100757C54(v66, v67);
          sub_100757C54(v61, v62);

          sub_1007577BC(v61, v62);
        }

        else
        {
          v85 = v66;
          LODWORD(v84) = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100757C54(v85, v67);
          sub_100757C54(v61, v62);

          sub_1007577BC(v61, v62);
          if ((v84 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_47;
      }

      sub_100757C54(v66, v67);
      sub_100757C54(v61, v62);

      v73 = v61;
      v74 = v62;
LABEL_45:
      sub_1007577BC(v73, v74);
      return 0;
    }

LABEL_43:
    v72 = v65[1];
    v85 = *v65;
    sub_100757C54(v85, v72);
    v84 = v70;
    sub_100757C54(v61, v62);
    sub_1007577BC(v61, v62);
    v73 = v85;
    v74 = v67;
    goto LABEL_45;
  }

  if (v67)
  {
    goto LABEL_43;
  }

LABEL_47:
  v75 = v82;
  v76 = v82[10];
  type metadata accessor for ServerStatusCode();
  sub_100751E3C(&qword_1016A89E0, &type metadata accessor for ServerStatusCode);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v89 == v88)
  {
    v77 = v75[11];
    v78 = *(a1 + v77);
    v79 = *(a2 + v77);
    if (v78)
    {
      return v79 && (sub_10038F298(v78, v79) & 1) != 0;
    }

    if (!v79)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_100755284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v72[-v14];
  v16 = sub_1000BC4D4(&qword_1016A8910, &qword_1013BE3A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v72[-v21];
  v23 = *(a1 + 8);
  v24 = *(a2 + 8);
  if (v23)
  {
    if (!v24 || (*a1 != *a2 || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v25 = *(a2 + 49);
  if (*(a1 + 49))
  {
    if (!*(a2 + 49))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v26 = *(a1 + 72);
  v27 = *(a2 + 72);
  if (v26)
  {
    if (!v27 || (*(a1 + 64) != *(a2 + 64) || v26 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v75 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v29 = *(v16 + 48);
  v77 = v75[11];
  v78 = v29;
  sub_1000D2A70(a1 + v77, v22, &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(a2 + v77, &v78[v22], &unk_101696AC0, &qword_101390A60);
  v76 = *(v5 + 48);
  v77 = v5 + 48;
  if (v76(v22, 1, v4) == 1)
  {
    if (v76(&v78[v22], 1, v4) == 1)
    {
      sub_10000B3A8(v22, &unk_101696AC0, &qword_101390A60);
      goto LABEL_41;
    }

LABEL_39:
    v30 = v22;
LABEL_47:
    sub_10000B3A8(v30, &qword_1016A8910, &qword_1013BE3A0);
    return 0;
  }

  sub_1000D2A70(v22, v15, &unk_101696AC0, &qword_101390A60);
  if (v76(&v78[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v15, v4);
    goto LABEL_39;
  }

  (*(v5 + 32))(v8, &v78[v22], v4);
  sub_100751E3C(&qword_1016A8918, &type metadata accessor for URL);
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v5 + 8);
  v74 = v5 + 8;
  v78 = v31;
  (v31)(v8, v4);
  (v78)(v15, v4);
  sub_10000B3A8(v22, &unk_101696AC0, &qword_101390A60);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v32 = v75[12];
  v33 = *(v16 + 48);
  sub_1000D2A70(a1 + v32, v20, &unk_101696AC0, &qword_101390A60);
  sub_1000D2A70(a2 + v32, &v20[v33], &unk_101696AC0, &qword_101390A60);
  v34 = v76;
  if (v76(v20, 1, v4) == 1)
  {
    if (v34(&v20[v33], 1, v4) == 1)
    {
      sub_10000B3A8(v20, &unk_101696AC0, &qword_101390A60);
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  sub_1000D2A70(v20, v13, &unk_101696AC0, &qword_101390A60);
  if (v34(&v20[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_46:
    v30 = v20;
    goto LABEL_47;
  }

  (*(v5 + 32))(v8, &v20[v33], v4);
  sub_100751E3C(&qword_1016A8918, &type metadata accessor for URL);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v5 + 8);
  v37(v8, v4);
  v37(v13, v4);
  sub_10000B3A8(v20, &unk_101696AC0, &qword_101390A60);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v38 = v75[13];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v75[14];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = v75[15];
  v49 = *(a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  if ((v49 != *v51 || v50 != v51[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v52 = v75[16];
  v53 = *(a1 + v52);
  v54 = *(a2 + v52);
  if (v53)
  {
    if (!v54 || (sub_10038ED80(v53, v54) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v55 = v75[17];
  v56 = *(a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  if ((v56 != *v58 || v57 != v58[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v59 = v75[18];
  v60 = *(a1 + v59);
  v61 = *(a2 + v59);
  if (v60)
  {
    if (!v61 || (sub_10038ED80(v60, v61) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v62 = v75[19];
  v63 = (a1 + v62);
  v64 = *(a1 + v62 + 16);
  v65 = a2 + v62;
  v66 = *(v65 + 16);
  if (v64)
  {
    if ((*(v65 + 16) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_85;
  }

  if (*(v65 + 16))
  {
    return 0;
  }

  result = 0;
  if (*v63 == *v65 && v63[1] == *(v65 + 8))
  {
LABEL_85:
    v67 = v75[20];
    v68 = (a1 + v67);
    v69 = *(a1 + v67 + 16);
    v70 = a2 + v67;
    v71 = *(v70 + 16);
    if ((v69 & 1) == 0)
    {
      return (*(v70 + 16) & 1) == 0 && *v68 == *v70 && v68[1] == *(v70 + 8);
    }

    return (*(v70 + 16) & 1) != 0;
  }

  return result;
}

double sub_100755AF4(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A8A78, &qword_1013B9470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758CA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = v8;
  v11[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100007BAC(a1);
  return v9;
}

void *sub_100755CA4(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8C08, &qword_1013B9E60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1007596E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016A8C18, &qword_1013B9E68);
    sub_100759AD4(&qword_1016A8C20, &qword_1016A8C28);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

void *sub_100755E60(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8C30, &qword_1013B9E70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1007599E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016A8C40, &qword_1013B9E78);
    sub_100759A38(&qword_1016A8C48, &qword_1016A8C50);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

uint64_t sub_10075601C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000010135E680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250796D646E6966 && a2 == 0xEF6449746375646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6341454C45487369 && a2 == 0xEF79726F73736563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010135E6E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010135E700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6761547269417369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5565636166727573 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x70756B6F6F4C6E73 && a2 == 0xEB000000006C7255)
  {

    return 12;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_10075644C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A8A18, &qword_1013B9440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758A2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v46) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v62 = v12 & 1;
  LOBYTE(v46) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  v40 = v13;
  LOBYTE(v46) = 2;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 3;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 4;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 5;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 6;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 7;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 8;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 9;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 10;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v46) = 11;
  *&v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v30 + 1) = v16;
  v63 = 12;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v17;
  (*(v6 + 8))(v9, v5);
  v27 = v11;
  *&v41 = v11;
  v26 = v62;
  BYTE8(v41) = v62;
  v18 = v40;
  *&v42 = v40;
  *(&v42 + 1) = v15;
  v19 = v39;
  LOBYTE(v43) = v39;
  v20 = v38;
  BYTE1(v43) = v38;
  v21 = v37;
  BYTE2(v43) = v37;
  LOBYTE(v11) = v36;
  BYTE3(v43) = v36;
  BYTE4(v43) = v35;
  BYTE5(v43) = v34;
  BYTE6(v43) = v33;
  BYTE7(v43) = v32;
  BYTE8(v43) = v31;
  v44 = v30;
  *&v45 = v29;
  *(&v45 + 1) = v28;
  sub_10075798C(&v41, &v46);
  sub_100007BAC(a1);
  v46 = v27;
  v47 = v26;
  v48 = v18;
  v49 = v15;
  v50 = v19;
  v51 = v20;
  v52 = v21;
  v53 = v11;
  v54 = v35;
  v55 = v34;
  v56 = v33;
  v57 = v32;
  v58 = v31;
  v59 = v30;
  v60 = v29;
  v61 = v28;
  result = sub_10075780C(&v46);
  v23 = v44;
  a2[2] = v43;
  a2[3] = v23;
  a2[4] = v45;
  v24 = v42;
  *a2 = v41;
  a2[1] = v24;
  return result;
}

uint64_t sub_1007569D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E756F5379616C70 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C656363417475 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756B6F6F4C63666ELL && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756B6F6F4C656C62 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6857796669746F6ELL && a2 == 0xEF646E756F466E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7449656D616E6572 && a2 == 0xEA00000000006D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E69646E69467462 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010135E640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1886544245 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x325665676E6172 && a2 == 0xE700000000000000)
  {

    return 12;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_100756E00(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8A00, &qword_1013B9430);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v18 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007589D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v40 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = 3;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 4;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = 5;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = 6;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = 7;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v9;
  v24 = v13;
  v32 = 8;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = 9;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = 10;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = 11;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = 12;
  v18[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100007BAC(a1);
  if (v10)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  if (v12)
  {
    v17 = 0x1000000;
  }

  else
  {
    v17 = 0;
  }

  return (v27 << 32) | (v26 << 40) | (v25 << 48) | v23 & 1 | v15 | v16 | v17 | (v24 << 56);
}

uint64_t sub_1007571AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644974726170 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795474726170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E74726170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626D795374726170 && a2 == 0xEA00000000006C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72616D6972507369 && a2 == 0xE900000000000079)
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

uint64_t sub_100757374@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A8920, &qword_1013B93F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007576AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v32[0] = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v32[0] = 1;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v12;
  v32[0] = 2;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v13;
  v32[0] = 3;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v14;
  v40 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  LOBYTE(v29) = v11;
  v16 = v27;
  v17 = v28;
  *(&v29 + 1) = v27;
  *&v30 = v28;
  v18 = v26;
  *(&v30 + 1) = v25;
  *v31 = v26;
  v19 = v24;
  *&v31[8] = v23;
  *&v31[16] = v24;
  v31[24] = v15;
  sub_100757700(&v29, v32);
  sub_100007BAC(a1);
  v32[0] = v11;
  v33 = v16;
  v34 = v17;
  v35 = v25;
  v36 = v18;
  v37 = v23;
  v38 = v19;
  v39 = v15;
  result = sub_100757738(v32);
  v21 = v30;
  *a2 = v29;
  a2[1] = v21;
  a2[2] = *v31;
  *(a2 + 41) = *&v31[9];
  return result;
}

unint64_t sub_1007576AC()
{
  result = qword_1016A8928;
  if (!qword_1016A8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8928);
  }

  return result;
}

unint64_t sub_100757768()
{
  result = qword_1016A8940;
  if (!qword_1016A8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8940);
  }

  return result;
}

uint64_t sub_1007577BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10075783C()
{
  result = qword_1016A8948;
  if (!qword_1016A8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8948);
  }

  return result;
}

unint64_t sub_100757890()
{
  result = qword_1016A8950;
  if (!qword_1016A8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8950);
  }

  return result;
}

unint64_t sub_1007578E4()
{
  result = qword_1016A8968;
  if (!qword_1016A8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8968);
  }

  return result;
}

unint64_t sub_100757938()
{
  result = qword_1016A8978;
  if (!qword_1016A8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8978);
  }

  return result;
}

unint64_t sub_1007579C4()
{
  result = qword_1016A8988;
  if (!qword_1016A8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8988);
  }

  return result;
}

unint64_t sub_100757A18()
{
  result = qword_1016A8990;
  if (!qword_1016A8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8990);
  }

  return result;
}

unint64_t sub_100757A6C()
{
  result = qword_1016A89A8;
  if (!qword_1016A89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A89A8);
  }

  return result;
}

uint64_t sub_100757AC0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&unk_1016A86D0, "֫\n");
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100757B38()
{
  result = qword_1016A89C0;
  if (!qword_1016A89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A89C0);
  }

  return result;
}

uint64_t sub_100757B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100757BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100757C54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100757CA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000010135E820 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010135E840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEB00000000656C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E880 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010135E8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E8C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135E2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEE00736D65744965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010135E310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101347AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E8E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000024 && 0x800000010135E900 == a2)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1007581F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEF6E6F6349747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135E7A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xED00006E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010135E7C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEF78326E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010135E7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEF78336E6F634965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010135E800 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_100758614(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x707972636E453165 && a2 == 0xEC0000006E6F6974;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707972636E453265 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697265563273 && a2 == 0xEE006E6F69746163)
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

uint64_t sub_100758738@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A89E8, &qword_1013B9420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758984();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100007BAC(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_100758984()
{
  result = qword_1016A89F0;
  if (!qword_1016A89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A89F0);
  }

  return result;
}

unint64_t sub_1007589D8()
{
  result = qword_1016A8A08;
  if (!qword_1016A8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A08);
  }

  return result;
}

unint64_t sub_100758A2C()
{
  result = qword_1016A8A20;
  if (!qword_1016A8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A20);
  }

  return result;
}

unint64_t sub_100758A80()
{
  result = qword_1016A8A38;
  if (!qword_1016A8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A38);
  }

  return result;
}

uint64_t sub_100758AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100758B3C()
{
  result = qword_1016A8A50;
  if (!qword_1016A8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A50);
  }

  return result;
}

unint64_t sub_100758B90()
{
  result = qword_1016A8A60;
  if (!qword_1016A8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A60);
  }

  return result;
}

uint64_t sub_100758BE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100758C50()
{
  result = qword_1016A8A70;
  if (!qword_1016A8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A70);
  }

  return result;
}

unint64_t sub_100758CA4()
{
  result = qword_1016A8A80;
  if (!qword_1016A8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A80);
  }

  return result;
}

void sub_100758DA8()
{
  sub_100758E1C();
  if (v0 <= 0x3F)
  {
    sub_100758E64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100758E1C()
{
  if (!qword_1016A8B10)
  {
    v0 = type metadata accessor for AccessoryInfoResponseContent(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1016A8B10);
    }
  }
}

void *sub_100758E64()
{
  result = qword_1016A8B18;
  if (!qword_1016A8B18)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1016A8B18);
  }

  return result;
}

unint64_t sub_100758EA8()
{
  result = qword_1016A8B48;
  if (!qword_1016A8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B48);
  }

  return result;
}

unint64_t sub_100758F00()
{
  result = qword_1016A8B50;
  if (!qword_1016A8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B50);
  }

  return result;
}

unint64_t sub_100758F58()
{
  result = qword_1016A8B58;
  if (!qword_1016A8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B58);
  }

  return result;
}

unint64_t sub_100758FB0()
{
  result = qword_1016A8B60;
  if (!qword_1016A8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B60);
  }

  return result;
}

unint64_t sub_100759008()
{
  result = qword_1016A8B68;
  if (!qword_1016A8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B68);
  }

  return result;
}

unint64_t sub_100759060()
{
  result = qword_1016A8B70;
  if (!qword_1016A8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B70);
  }

  return result;
}

unint64_t sub_1007590B8()
{
  result = qword_1016A8B78;
  if (!qword_1016A8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B78);
  }

  return result;
}

unint64_t sub_100759110()
{
  result = qword_1016A8B80;
  if (!qword_1016A8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B80);
  }

  return result;
}

unint64_t sub_100759168()
{
  result = qword_1016A8B88;
  if (!qword_1016A8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B88);
  }

  return result;
}

unint64_t sub_1007591C0()
{
  result = qword_1016A8B90;
  if (!qword_1016A8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B90);
  }

  return result;
}

unint64_t sub_100759218()
{
  result = qword_1016A8B98;
  if (!qword_1016A8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8B98);
  }

  return result;
}

unint64_t sub_100759270()
{
  result = qword_1016A8BA0;
  if (!qword_1016A8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BA0);
  }

  return result;
}

unint64_t sub_1007592C8()
{
  result = qword_1016A8BA8;
  if (!qword_1016A8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BA8);
  }

  return result;
}

unint64_t sub_100759320()
{
  result = qword_1016A8BB0;
  if (!qword_1016A8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BB0);
  }

  return result;
}

unint64_t sub_100759378()
{
  result = qword_1016A8BB8;
  if (!qword_1016A8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BB8);
  }

  return result;
}

unint64_t sub_1007593D0()
{
  result = qword_1016A8BC0;
  if (!qword_1016A8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BC0);
  }

  return result;
}

unint64_t sub_100759428()
{
  result = qword_1016A8BC8;
  if (!qword_1016A8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BC8);
  }

  return result;
}

unint64_t sub_100759480()
{
  result = qword_1016A8BD0;
  if (!qword_1016A8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BD0);
  }

  return result;
}

unint64_t sub_1007594D8()
{
  result = qword_1016A8BD8;
  if (!qword_1016A8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BD8);
  }

  return result;
}

unint64_t sub_100759530()
{
  result = qword_1016A8BE0;
  if (!qword_1016A8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BE0);
  }

  return result;
}

unint64_t sub_100759588()
{
  result = qword_1016A8BE8;
  if (!qword_1016A8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BE8);
  }

  return result;
}

unint64_t sub_1007595E0()
{
  result = qword_1016A8BF0;
  if (!qword_1016A8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BF0);
  }

  return result;
}

unint64_t sub_100759638()
{
  result = qword_1016A8BF8;
  if (!qword_1016A8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8BF8);
  }

  return result;
}

unint64_t sub_100759690()
{
  result = qword_1016A8C00;
  if (!qword_1016A8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C00);
  }

  return result;
}

unint64_t sub_1007596E4()
{
  result = qword_1016A8C10;
  if (!qword_1016A8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C10);
  }

  return result;
}

uint64_t sub_100759738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572617774666F73 && a2 == 0xEC0000006F666E49;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xEA00000000007379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x655474756F79616CLL && a2 == 0xEE006574616C706DLL)
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

unint64_t sub_1007599E4()
{
  result = qword_1016A8C38;
  if (!qword_1016A8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C38);
  }

  return result;
}

uint64_t sub_100759A38(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A8C40, &qword_1013B9E78);
    sub_100751E3C(a2, type metadata accessor for AccessoryInfoResponseContent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100759AD4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A8C18, &qword_1013B9E68);
    sub_100751E3C(a2, type metadata accessor for AccessoryInfoResponseType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100759B70()
{
  result = qword_1016A8C78;
  if (!qword_1016A8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C78);
  }

  return result;
}

unint64_t sub_100759BF8()
{
  result = qword_1016A8C98;
  if (!qword_1016A8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8C98);
  }

  return result;
}

unint64_t sub_100759C50()
{
  result = qword_1016A8CA0;
  if (!qword_1016A8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CA0);
  }

  return result;
}

unint64_t sub_100759CA8()
{
  result = qword_1016A8CA8;
  if (!qword_1016A8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CA8);
  }

  return result;
}

unint64_t sub_100759D00()
{
  result = qword_1016A8CB0;
  if (!qword_1016A8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CB0);
  }

  return result;
}

unint64_t sub_100759D58()
{
  result = qword_1016A8CB8;
  if (!qword_1016A8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CB8);
  }

  return result;
}

unint64_t sub_100759DB0()
{
  result = qword_1016A8CC0;
  if (!qword_1016A8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CC0);
  }

  return result;
}

unint64_t sub_100759E08()
{
  result = qword_1016A8CC8;
  if (!qword_1016A8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CC8);
  }

  return result;
}

unint64_t sub_100759E60()
{
  result = qword_1016A8CD0;
  if (!qword_1016A8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CD0);
  }

  return result;
}

unint64_t sub_100759EB8()
{
  result = qword_1016A8CD8;
  if (!qword_1016A8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8CD8);
  }

  return result;
}

uint64_t sub_100759F1C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B0E0);
  sub_1000076D4(v0, qword_10177B0E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100759F98()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B0F8);
  v1 = sub_1000076D4(v0, qword_10177B0F8);
  if (qword_101694870 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B0E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10075A060(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v2 - 8);
  v15 = v2;
  v3 = *(v14 + 64);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  swift_defaultActor_initialize();
  v1[14] = 0xD000000000000013;
  v1[15] = 0x80000001013BA220;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v10 = qword_10177B2E8;
  type metadata accessor for SPObserverAnalyticsAttempts();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v1[18] = v11;
  v13[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v1[20] = 0;
  v1[21] = 0;
  v1[19] = 0;

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100766F1C(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  v1[22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[23] = 0;
  v1[16] = v16;
  v1[17] = sub_10090A034(_swiftEmptyArrayStorage);
  return v1;
}

uint64_t sub_10075A370()
{
  v1[179] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[185] = v2;
  v3 = *(v2 - 8);
  v1[191] = v3;
  v4 = *(v3 + 64) + 15;
  v1[192] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v1[193] = v5;
  v6 = *(v5 - 8);
  v1[194] = v6;
  v7 = *(v6 + 64) + 15;
  v1[195] = swift_task_alloc();

  return _swift_task_switch(sub_10075A48C, v0, 0);
}

uint64_t sub_10075A48C()
{
  v1 = v0[195];
  v12 = v0[194];
  v13 = v0[193];
  v2 = v0[192];
  v3 = v0[191];
  v4 = v0[185];
  v5 = v0[179];
  v11 = *(v5 + 176);
  v0[171] = sub_100766DDC;
  v0[172] = v5;
  v0[167] = _NSConcreteStackBlock;
  v0[168] = 1107296256;
  v0[169] = sub_100006684;
  v0[170] = &unk_101631BE8;
  v6 = _Block_copy(v0 + 167);

  static DispatchQoS.unspecified.getter();
  v0[173] = _swiftEmptyArrayStorage;
  sub_100766F1C(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v6);
  (*(v3 + 8))(v2, v4);
  (*(v12 + 8))(v1, v13);
  v7 = v0[172];

  v8 = swift_task_alloc();
  v0[196] = v8;
  *v8 = v0;
  v8[1] = sub_10075A6E4;
  v9 = v0[179];

  return sub_10075E068();
}

uint64_t sub_10075A6E4()
{
  v1 = *v0;
  v2 = *(*v0 + 1568);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 1576) = v4;
  *v4 = v3;
  v4[1] = sub_10075A824;
  v5 = *(v1 + 1432);

  return sub_10075D084();
}

uint64_t sub_10075A824()
{
  v1 = *(*v0 + 1576);
  v2 = *(*v0 + 1432);
  v4 = *v0;

  return _swift_task_switch(sub_10075A934, v2, 0);
}

uint64_t sub_10075A934()
{
  v1 = *(v0 + 1432);
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_10075AA7C()
{
  v1 = v0[195];
  v2 = v0[192];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10075AAEC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-1] - v5;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v7 = qword_10177B2E8;
  v12 = type metadata accessor for SPObserverAnalytics();
  v13 = &off_101631930;
  v11[0] = a1;
  v8 = *(v7 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_subscriptionQueue);
  __chkstk_darwin(v12);
  *(&v10 - 2) = v11;
  *(&v10 - 1) = v7;

  OS_dispatch_queue.sync<A>(execute:)();
  (*(v3 + 8))(v6, v2);
  return sub_100007BAC(v11);
}

uint64_t sub_10075AC88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100036434;

  return sub_10075ADA8();
}

uint64_t sub_10075AD18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_10075C000();
}

uint64_t sub_10075ADA8()
{
  v1[2] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101696C40, &unk_1013B8520) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for FinderStateInfo(0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101696C48, &unk_10138B590) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101696C50, &unk_1013B8560);
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_101696C58, &unk_10138B5A0);
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v1[15] = v14;
  *v14 = v1;
  v14[1] = sub_10075AFE4;

  return daemon.getter();
}

uint64_t sub_10075AFE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FinderStateObserver();
  v9 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100766F1C(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver);
  *v6 = v12;
  v6[1] = sub_10075B1C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10075B1C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v7 = v4[16];
    v8 = v4[2];

    return _swift_task_switch(sub_10075BD84, v8, 0);
  }

  else
  {
    v9 = v4[16];

    v10 = swift_task_alloc();
    v4[20] = v10;
    *v10 = v6;
    v10[1] = sub_10075B36C;
    v11 = v4[11];

    return sub_1008488EC(v11);
  }
}

uint64_t sub_10075B36C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10075B47C, v2, 0);
}

uint64_t sub_10075B47C()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_100766F1C(&qword_1016A8E70, v5, type metadata accessor for SPObserverAnalytics);
  v7 = v0[19];
  v0[21] = v6;
  v0[22] = v7;
  v8 = v0[2];
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_10075B59C;
  v11 = v0[14];
  v12 = v0[12];
  v13 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v13, v8, v6, v12);
}

uint64_t sub_10075B59C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10075B6AC, v2, 0);
}

uint64_t sub_10075B6AC()
{
  v1 = v0[8];
  v2 = sub_1000BC4D4(&qword_101696C60, &qword_1013B8570);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[18];
    (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_11:
    v29 = v0[14];
    v30 = v0[11];
    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[6];
    v34 = v0[3];

    v35 = v0[1];

    return v35();
  }

  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = *v1;

  v9 = v1 + *(v2 + 48);
  v10 = sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0);
  sub_100029350(v9 + *(v10 + 48), v4, type metadata accessor for FinderStateInfo);
  sub_100748840(v9, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v11 = v0[18];
    v12 = v0[3];
    (*(v0[13] + 8))(v0[14], v0[12]);

    sub_10000B3A8(v12, &qword_101696C40, &unk_1013B8520);
LABEL_10:
    sub_100766D74(v0[7], type metadata accessor for FinderStateInfo);
    goto LABEL_11;
  }

  v14 = v0[6];
  v13 = v0[7];
  sub_100029350(v0[3], v14, type metadata accessor for FinderStateInfo);
  if (*v14 == *v13)
  {
    v24 = v0[18];
    v26 = v0[13];
    v25 = v0[14];
    v27 = v0[12];
    v28 = v0[6];

    sub_100766D74(v28, type metadata accessor for FinderStateInfo);
    (*(v26 + 8))(v25, v27);
    goto LABEL_10;
  }

  v15 = v0[7];
  v16 = type metadata accessor for AnalyticsEvent(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v0[24] = v19;
  swift_defaultActor_initialize();
  *(v19 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v20 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v21 = type metadata accessor for DispatchTime();
  v22 = *(*(v21 - 8) + 56);
  v22(&v19[v20], 1, 1, v21);
  v22(&v19[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v21);
  *(v19 + 15) = 0xD00000000000002BLL;
  *(v19 + 16) = 0x800000010135EBF0;
  v23 = swift_task_alloc();
  v0[25] = v23;
  *(v23 + 16) = v15;

  return _swift_task_switch(sub_10075BA6C, v19, 0);
}

uint64_t sub_10075BA6C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  sub_10115BE7C(sub_100766DD4);
  if (v3)
  {
  }

  v0[26] = 0;
  v4 = v0[25];

  type metadata accessor for AnalyticsPublisher();
  v0[27] = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_10075BB60;
  v6 = v0[24];

  return sub_101163F78(v6);
}

uint64_t sub_10075BB60()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_10075BC8C, v3, 0);
}

uint64_t sub_10075BC8C()
{
  v1 = v0[24];
  v2 = v0[6];
  v3 = v0[7];

  sub_100766D74(v2, type metadata accessor for FinderStateInfo);
  sub_100766D74(v3, type metadata accessor for FinderStateInfo);
  v0[22] = v0[26];
  v4 = v0[21];
  v5 = v0[2];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_10075B59C;
  v8 = v0[14];
  v9 = v0[12];
  v10 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v10, v5, v4, v9);
}

uint64_t sub_10075BD84()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing FinderStateObserver service.", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v10 = v0[3];

  v11 = v0[1];

  return v11();
}

unint64_t sub_10075BEE0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0x7669746341646964;
  *(inited + 40) = 0xEB00000000657461;
  *(inited + 48) = v1;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6E6F73616572;
  *(inited + 72) = 0xE600000000000000;
  sub_100008BB8(0, &unk_1016B27A0, NSString_ptr);
  *(inited + 80) = NSString.init(stringLiteral:)();
  *(inited + 88) = 0;
  v3 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_10075C000()
{
  v1[6] = v0;
  v2 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169B780, &unk_101395260);
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169B788, &qword_1013A3770);
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v1[14] = v10;
  *v10 = v1;
  v10[1] = sub_10075C19C;

  return daemon.getter();
}

uint64_t sub_10075C19C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  v3[15] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[16] = v6;
  v7 = type metadata accessor for Daemon();
  v3[17] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100766F1C(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_10075C384;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10075C384(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v7 = v4[15];

    v8 = v4[6];
    v9 = sub_10075C8CC;
  }

  else
  {
    v9 = sub_10075C4C8;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10075C4C8()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_10001B108();
  v0[20] = v3;
  v4 = v0[17];
  v5 = v0[15];
  if (v2)
  {

    sub_100766F1C(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_10075C858;
  }

  else
  {
    sub_100766F1C(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_10075C5F8;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_10075C5F8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[6];

  return _swift_task_switch(sub_10075C670, v3, 0);
}

uint64_t sub_10075C670()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = *(v0[20] + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedPublisher);
  v0[4] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270);
  Publisher<>.values.getter();

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[21] = sub_100766F1C(&qword_1016A8E70, v6, type metadata accessor for SPObserverAnalytics);
  v7 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770);
  v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_10075CA00;
  v10 = v0[13];
  v11 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v7);
}

uint64_t sub_10075C858()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[6];

  return _swift_task_switch(sub_10075C8CC, v3, 0);
}

uint64_t sub_10075C8CC()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconManagerService.", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10075CA00()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  v2[23] = v0;

  v5 = v2[6];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[21];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_100251160;
  }

  else
  {
    if (v5)
    {
      v11 = v2[21];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_10075CB98;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_10075CB98()
{
  v1 = *(v0 + 48);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  return _swift_task_switch(sub_10075CBC4, v1, 0);
}

uint64_t sub_10075CBC4()
{
  if (*(v0 + 25))
  {
    v1 = *(v0 + 160);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 48);
    *(v7 + 168) = *(v0 + 192);
    v8 = *(v7 + 184);
    *(v0 + 200) = v8;
    if (v8)
    {
      v9 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
      v19 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

      v10 = swift_task_alloc();
      *(v0 + 208) = v10;
      *v10 = v0;
      v10[1] = sub_10075CE24;
      v11 = *(v0 + 56);

      return v19(v11);
    }

    else
    {
      v12 = *(v0 + 56);
      v13 = type metadata accessor for XPCActivity.State();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      sub_10000B3A8(v12, &unk_10169BA88, &qword_101395670);
      v14 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770);
      v15 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v16 = swift_task_alloc();
      *(v0 + 176) = v16;
      *v16 = v0;
      v16[1] = sub_10075CA00;
      v17 = *(v0 + 104);
      v18 = *(v0 + 88);

      return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v18, v14);
    }
  }
}

uint64_t sub_10075CE24()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_10075CF50, v3, 0);
}

uint64_t sub_10075CF50()
{
  v1 = v0[7];
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);
  v3 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770);
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_10075CA00;
  v6 = v0[13];
  v7 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v7, v3);
}

uint64_t sub_10075D084()
{
  v1[3] = v0;
  v2 = sub_1000BC4D4(&qword_1016A8E88, &qword_1013BA3F8);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016A8E90, &unk_1013BA400);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v1[10] = v9;
  *v9 = v1;
  v9[1] = sub_10075D1E8;

  return daemon.getter();
}

uint64_t sub_10075D1E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100766F1C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10075D3CC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10075D3CC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 96);
  v7 = *v2;

  v8 = *(v4 + 88);
  if (v1)
  {
    a1 = *(v5 + 24);

    v9 = sub_10075D818;
  }

  else
  {

    *(v5 + 104) = a1;
    v9 = sub_10075D524;
  }

  return _swift_task_switch(v9, a1, 0);
}

uint64_t sub_10075D524()
{
  v1 = v0[3];
  v2 = *(v0[13] + 128);
  v0[14] = sub_100A96C40();

  return _swift_task_switch(sub_10075D598, v1, 0);
}

uint64_t sub_10075D598()
{
  v13 = v0[13];
  v14 = v0[8];
  v1 = v0[6];
  v12 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v10 = v0[9];
  v11 = v0[3];
  v0[2] = v0[14];
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950);
  Publisher.compactMap<A>(_:)();

  sub_1000041A4(&qword_1016A8E98, &qword_1016A8E88, &qword_1013BA3F8);
  Publisher.filter(_:)();
  (*(v2 + 8))(v1, v3);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A8EA0, &qword_1016A8E90, &unk_1013BA400);
  v4 = Publisher<>.sink(receiveValue:)();

  (*(v14 + 8))(v10, v12);
  v5 = *(v11 + 160);
  *(v11 + 160) = v4;

  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10075D818()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor service.", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

double sub_10075D940@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001F280(a1, v4);
  sub_1000BC4D4(&unk_101698D60, &unk_1013A37E0);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10075D9C4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 96))(v1, v2) & 1;
}

uint64_t sub_10075DA18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_10025EDD4(0, 0, v6, &unk_1013BA418, v8);
}

uint64_t sub_10075DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10075DBC0, 0, 0);
}

uint64_t sub_10075DBC0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10075DCD8, Strong, 0);
  }

  else
  {
    v3 = v0[6];
    v4 = type metadata accessor for XPCActivity.State();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_10000B3A8(v3, &unk_10169BA88, &qword_101395670);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10075DCD8()
{
  *(v0 + 64) = *(*(v0 + 56) + 184);

  return _swift_task_switch(sub_10075DD50, 0, 0);
}

uint64_t sub_10075DD50()
{
  if (v0[8])
  {
    v1 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
    v8 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10075DE94;
    v3 = v0[6];

    return v8(v3);
  }

  else
  {
    v5 = v0[6];
    v6 = type metadata accessor for XPCActivity.State();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_10000B3A8(v5, &unk_10169BA88, &qword_101395670);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10075DE94()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_10075DFAC, 0, 0);
}

uint64_t sub_10075DFAC()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10075E068()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for XPCActivity.State();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[9] = v7;
  *v7 = v1;
  v7[1] = sub_10075E1AC;

  return daemon.getter();
}

uint64_t sub_10075E1AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100766F1C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10075E390;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10075E390(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  v7 = *(v3 + 24);
  if (v1)
  {

    v8 = sub_10075EAD4;
  }

  else
  {

    v8 = sub_10075E4F4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10075E4F4()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  type metadata accessor for XPCActivity();
  static DispatchQoS.default.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v4;
  v7 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];
  swift_retain_n();
  swift_retain_n();
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_10075E660;
  v9 = v0[8];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000034, 0x800000010135EA50, v9, &unk_1013BA3A0, v5, &unk_1013BA3B0, v6);
}

uint64_t sub_10075E660(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;
  v3[14] = a1;

  v6 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
  v10 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v5;
  v7[1] = sub_10075E7C4;
  v8 = v3[7];

  return v10(v8);
}

uint64_t sub_10075E7C4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10075E930, v5, 0);
}

uint64_t sub_10075E930()
{
  v1 = v0[3];
  v2 = *(v1 + 184);
  *(v1 + 184) = v0[14];

  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[3];
  v6 = *(qword_10177CEA0 + 24);

  v7 = AnyCurrentValuePublisher.publisher.getter();

  v0[2] = v7;

  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0);
  v8 = Publisher<>.sink(receiveValue:)();

  v9 = *(v5 + 152);
  *(v5 + 152) = v8;

  v11 = v0[7];
  v10 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10075EAD4()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor service.", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10075EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v6 = type metadata accessor for XPCActivity.Criteria.Options();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = type metadata accessor for XPCActivity.Priority();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v13 = type metadata accessor for XPCActivity.Criteria();
  v4[20] = v13;
  v14 = *(v13 - 8);
  v4[21] = v14;
  v15 = *(v14 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10075EDB0, a4, 0);
}

uint64_t sub_10075EDB0()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  sub_1000D2A70(v0[10], v3, &qword_10169E370, &qword_1013BA3F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];
    sub_10000B3A8(v0[19], &qword_10169E370, &qword_1013BA3F0);

    return _swift_task_switch(sub_10075EF44, v4, 0);
  }

  else
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[9];
    v9 = *(v6 + 32);
    v9(v5, v0[19], v7);
    v9(v8, v5, v7);
    (*(v6 + 56))(v8, 0, 1, v7);
    v10 = v0[22];
    v11 = v0[18];
    v12 = v0[19];
    v13 = v0[15];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10075EF44()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_10075F030;
  v5 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_10025B814, v5, v4);
}

uint64_t sub_10075F030()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_10075F148, v2, 0);
}

uint64_t sub_10075F148()
{
  v1 = v0[12];
  v0[24] = v0[7];
  return _swift_task_switch(sub_10075F16C, v1, 0);
}

uint64_t sub_10075F16C()
{
  if (qword_101695510 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = *(qword_10177CEA0 + 24);

  AnyCurrentValuePublisher.value.getter();

  if (*(v0 + 200) == 1 || *(*(v0 + 96) + 168) == 1)
  {
    v2 = *(v0 + 192);
    v3 = v2 + 32;
    v4 = -*(v2 + 16);
    v5 = -1;
    while (v4 + v5 != -1)
    {
      if (++v5 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v6 = v3 + 40;
      sub_10001F280(v3, v0 + 16);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      sub_1000035D0((v0 + 16), v7);
      v9 = (*(v8 + 96))(v7, v8);
      sub_100007BAC((v0 + 16));
      v3 = v6;
      if (v9)
      {
        v10 = *(v0 + 192);
        v11 = *(v0 + 168);
        v29 = *(v0 + 160);
        v13 = *(v0 + 136);
        v12 = *(v0 + 144);
        v14 = *(v0 + 120);
        v15 = *(v0 + 128);
        v16 = *(v0 + 104);
        v17 = *(v0 + 112);
        v18 = *(v0 + 72);

        (*(v13 + 104))(v12, enum case for XPCActivity.Priority.utility(_:), v15);
        sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
        v19 = *(v17 + 72);
        v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_10138B360;
        static XPCActivity.Criteria.Options.allowBattery.getter();
        static XPCActivity.Criteria.Options.significantUserInactivity.getter();
        static XPCActivity.Criteria.Options.requiresClassC.getter();
        *(v0 + 64) = v21;
        sub_100766F1C(&qword_101696CE0, 255, &type metadata accessor for XPCActivity.Criteria.Options);
        sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
        sub_1000041A4(&qword_10169E388, &qword_10169E380, &unk_1013B8530);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
        (*(v11 + 56))(v18, 0, 1, v29);
        goto LABEL_10;
      }
    }
  }

  v22 = *(v0 + 192);

  (*(*(v0 + 168) + 56))(*(v0 + 72), 1, 1, *(v0 + 160));
LABEL_10:
  v23 = *(v0 + 176);
  v24 = *(v0 + 144);
  v25 = *(v0 + 152);
  v26 = *(v0 + 120);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10075F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for XPCActivity.State();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10075F58C, a3, 0);
}

uint64_t sub_10075F58C()
{
  v48 = v0;
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B0F8);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  if (v9)
  {
    buf = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *buf = 136315138;
    sub_100766F1C(&qword_101696CD0, 255, &type metadata accessor for XPCActivity.State);
    v44 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v47);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v44, "User Stats activity state: %s.", buf, 0xCu);
    sub_100007BAC(v46);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 56);
  v6(v20, *(v0 + 32), v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      if (qword_101695510 != -1)
      {
        swift_once();
      }

      v29 = *(qword_10177CEA0 + 24);

      AnyCurrentValuePublisher.value.getter();

      if (*(v0 + 104) == 1 || *(*(v0 + 40) + 168) == 1)
      {
        v30 = *(v0 + 48);
        v31 = sub_10075FB4C;
        v32 = 0;
LABEL_30:

        return _swift_task_switch(v31, v30, v32);
      }

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Not the me device or more than one connectable device. Skipping user stats reporting.", v41, 2u);
      }

      v42 = *(v0 + 24);

      type metadata accessor for XPCActivity();
      sub_100766F1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
      v34 = dispatch thunk of Actor.unownedExecutor.getter();
      v36 = v43;
      v37 = sub_10075FF20;
LABEL_29:
      v31 = v37;
      v30 = v34;
      v32 = v36;
      goto LABEL_30;
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      v33 = *(v0 + 24);
      type metadata accessor for XPCActivity();
      sub_100766F1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
      v34 = dispatch thunk of Actor.unownedExecutor.getter();
      v36 = v35;
      v37 = sub_10075FAE0;
      goto LABEL_29;
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:) && v23 != enum case for XPCActivity.State.invalidated(_:))
    {
      v38 = *(v0 + 64) + 8;
      v17(*(v0 + 72), *(v0 + 56));
    }
  }

  v26 = *(v0 + 72);
  v25 = *(v0 + 80);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10075FAE0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100766FD0, v1, 0);
}

uint64_t sub_10075FB4C()
{
  v1 = *(v0 + 48);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_10075FC38;
  v5 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_10075FC38()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10075FD50, v2, 0);
}

uint64_t sub_10075FD50()
{
  v1 = v0[5];
  v0[12] = v0[2];
  return _swift_task_switch(sub_10075FD74, v1, 0);
}

uint64_t sub_10075FD74()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[3];
  type metadata accessor for Transaction();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  static Transaction.named<A>(_:with:)();

  type metadata accessor for XPCActivity();
  sub_100766F1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10075FEB4, v6, v5);
}

uint64_t sub_10075FEB4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100766FD0, v1, 0);
}

uint64_t sub_10075FF20()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_10075FF8C, v1, 0);
}

uint64_t sub_10075FF8C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10075FFF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001F280(v4, &v25);
      v6 = v26;
      v7 = v27;
      sub_1000035D0(&v25, v26);
      if ((*(v7 + 96))(v6, v7))
      {
        sub_100031694(&v25, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v5[2] + 1, 1);
          v5 = v28;
        }

        v10 = v5[2];
        v9 = v5[3];
        if (v10 >= v9 >> 1)
        {
          sub_100025B1C((v9 > 1), v10 + 1, 1);
        }

        v11 = v23;
        v12 = v24;
        v13 = sub_10015049C(v22, v23);
        v14 = *(*(v11 - 8) + 64);
        __chkstk_darwin(v13);
        v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v16);
        sub_1006252D4(v10, v16, &v28, v11, v12);
        sub_100007BAC(v22);
        v5 = v28;
      }

      else
      {
        sub_100007BAC(&v25);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v18 = v5[2];
  if (v18)
  {
    v19 = (v5 + 4);
    do
    {
      sub_10001F280(v19, &v25);
      sub_100760228(&v25, a1);
      sub_100007BAC(&v25);
      v19 += 40;
      --v18;
    }

    while (v18);
  }
}

uint64_t sub_100760228(void *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for UUID();
  v47 = *(v45 - 8);
  v10 = *(v47 + 64);
  v11 = __chkstk_darwin(v45);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v15 = a1[3];
  v14 = a1[4];
  sub_1000035D0(a1, v15);
  (*(*(*(v14 + 8) + 8) + 32))(v15);
  v16 = v3;
  v17 = *(v3 + 144);
  static Date.trustedNow.getter(v9);
  LOBYTE(v15) = sub_10073AF28(v13, v9);
  v18 = *(v6 + 8);
  v18(v9, v5);
  if (v15)
  {
    static Date.trustedNow.getter(v9);
    sub_10073AD10(v13, v9);
    v18(v9, v5);
    v40 = v16;
    v19 = *(v16 + 128);
    v20 = sub_100892134(v13);
    v21 = v47;
    v22 = *(v47 + 16);
    v41 = v20;
    v42 = v47 + 16;
    v43 = v22;
    v23 = v45;
    v22(v46, v13, v45);
    sub_10001F280(a1, v48);
    v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v39 = v24;
    v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v38 = *(v21 + 32);
    v38(v27 + v24, v46, v23);
    sub_100031694(v48, v27 + v25);
    *(v27 + v26) = v40;
    v28 = v44;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;

    Future.addSuccess(block:)();

    v29 = v46;
    v43(v46, v13, v23);
    v30 = swift_allocObject();
    v38(v30 + v39, v29, v23);
    *(v30 + v25) = v28;

    Future.addFailure(block:)();

    v31 = v47;
  }

  else
  {
    v31 = v47;
    v23 = v45;
    static os_log_type_t.default.getter();
    if (qword_101695020 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100008C00();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    os_log(_:dso:log:_:_:)();
  }

  return (*(v31 + 8))(v13, v23);
}

uint64_t sub_1007606C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_10025EDD4(0, 0, v6, &unk_1013BA3C0, v8);
}

uint64_t sub_1007607D0()
{
  v1 = type metadata accessor for XPCActivity.State();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[4] = v4;
  v5 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
  v8 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1007608E0;

  return v8(v4);
}

uint64_t sub_1007608E0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100760A38, 0, 0);
}

uint64_t sub_100760A38()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100760A98()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 160);

  v6 = *(v0 + 184);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100760AF8()
{
  sub_100760A98();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100760B48(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SPObserverAnalytics();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100760BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SPObserverAnalytics();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100760CB4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SPObserverAnalytics();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100760D5C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SPObserverAnalytics();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100760E04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10075A370();
}

uint64_t sub_100760E90()
{
  v1 = *v0;
  type metadata accessor for SPObserverAnalytics();
  sub_100766F1C(&qword_1016A8E78, v2, type metadata accessor for SPObserverAnalytics);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100760EF8(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for BeaconObservation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Transaction();
  sub_100034E6C(a1, v7, type metadata accessor for BeaconObservation);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_100029350(v7, v10 + v8, type metadata accessor for BeaconObservation);
  *(v10 + v9) = v1;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100761098(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = type metadata accessor for BeaconObservation();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v2[19] = *(v10 + 64);
  v2[20] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v2[21] = v12;
  *v12 = v2;
  v12[1] = sub_100761248;

  return daemon.getter();
}

uint64_t sub_100761248(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  *(v3 + 176) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100766F1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100766F1C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10076142C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10076142C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *v2;
  *(*v2 + 192) = a1;

  v6 = *(v3 + 176);
  if (v1)
  {

    v7 = sub_10076157C;
  }

  else
  {

    v7 = sub_1007616B0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10076157C()
{
  if (qword_101694878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B0F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor service.", v4, 2u);
  }

  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1007616B0()
{
  v1 = v0[9];
  v2 = *(v1 + *(v0[17] + 24));
  if ((v2 - 33) < 3)
  {
    v3 = v0[24];
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    v7 = v0[16];
    v26 = v0[15];
    v27 = v0[14];
    v8 = v0[11];
    v25 = v0[12];
    v9 = v0[10];
    v23 = v0[13];
    v24 = *(v9 + 176);
    sub_100034E6C(v1, v5, type metadata accessor for BeaconObservation);
    v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    sub_100029350(v5, v11 + v10, type metadata accessor for BeaconObservation);
    *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    v0[6] = sub_1007659C0;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101631990;
    v12 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_100766F1C(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v25 + 8))(v23, v8);
    (*(v26 + 8))(v7, v27);
    v13 = v0[7];
LABEL_8:

    v19 = v0[20];
    v20 = v0[16];
    v21 = v0[13];

    v22 = v0[1];

    return v22();
  }

  if (v2 != 30)
  {
    v18 = v0[24];
    goto LABEL_8;
  }

  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = sub_100761A30;
  v15 = v0[24];
  v16 = v0[9];

  return sub_100764F34(v16, v15);
}

uint64_t sub_100761A30()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_100761B2C, 0, 0);
}

uint64_t sub_100761B2C()
{
  v1 = v0[24];

  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

id sub_100761BAC(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000010135CA90;
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  v8 = a1;
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  *(inited + 56) = 0;
  *(inited + 64) = 0x6E6F697461727564;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = NSNumber.init(integerLiteral:)(0);
  *(inited + 88) = 0;
  v9 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (!a1)
  {
    return v9;
  }

  result = [v8 systemVersion];
  if (result)
  {
    v11 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v9;
    sub_100FFC418(v11, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
    v13 = v43;
    result = [v8 systemVersion];
    if (result)
    {
      v14 = result;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v13;
      sub_100FFC418(v14, 0, 0xD00000000000001BLL, 0x8000000101356E90, v15);
      v16 = v43;
      v17 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v8, "batteryLevel")}];
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v16;
      sub_100FFC418(v17, 0, 0x4C79726574746162, 0xEC0000006C657665, v18);
      v19 = v43;
      v20 = [v8 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100766F1C(&qword_1016964D0, 255, type metadata accessor for SPBeaconTaskName);
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v21 + 16) && (v22 = sub_100777014(SPBeaconTaskNameBeginLeashing), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);

        [v24 state];
      }

      else
      {
      }

      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v19;
      sub_100FFC418(isa, 0, 0x6563697665447369, 0xEF6465687361654CLL, v26);
      v27 = v43;
      v28 = [v8 connected];
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v27;
      sub_100FFC418(v28, 1, 0xD000000000000011, 0x8000000101350630, v29);
      v9 = v43;
      v30 = [v8 role];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 role];

        if (!v32)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = String._bridgeToObjectiveC()();
        }

        v33 = swift_isUniquelyReferenced_nonNull_native();
        v43 = v9;
        sub_100FFC418(v32, 0, 1701605234, 0xE400000000000000, v33);
        v9 = v43;
      }

      v34 = [objc_opt_self() sharedInstance];
      v35 = [v34 isInternalBuild];

      if (!v35)
      {
        goto LABEL_15;
      }

      v36 = [v8 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      (*(v3 + 8))(v6, v2);
      v37 = String._bridgeToObjectiveC()();

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v9;
      sub_100FFC418(v37, 0, 0x6544646572696170, 0xEE00444965636976, v38);
      v9 = v43;
      v39 = [v8 serialNumber];
      if (v39)
      {
        v40 = v39;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v43 = v9;
        sub_100FFC418(v40, 0, 0xD000000000000018, 0x8000000101350650, v41);

        return v43;
      }

      else
      {
LABEL_15:
      }

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100762240(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  *(v5 + 136) = a3;
  *(v5 + 120) = a1;
  *(v5 + 128) = a2;
  v7 = *(*(sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 168) = v8;
  v9 = *(v8 - 8);
  *(v5 + 176) = v9;
  *(v5 + 184) = *(v9 + 64);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_projectBox();

  return _swift_task_switch(sub_10076235C, a1, 0);
}

uint64_t sub_10076235C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[15];
  (*(v3 + 16))(v1, v0[16], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[26] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[27] = v8;
  v9 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v8 = v0;
  v8[1] = sub_1007624D0;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v6, v9);
}

uint64_t sub_1007624D0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_1007625E8, 0, 0);
}

uint64_t sub_1007625E8()
{
  if (*(v0 + 80))
  {
    sub_100031694((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = sub_1000035D0((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_10076290C;
    v5 = *(v0 + 120);

    return sub_100E76290(v3, v5, v2, v1);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    *(v0 + 240) = 0;
    v7 = *(v0 + 200);
    v8 = *(v0 + 160);
    sub_100034E6C(*(v0 + 128), v8, type metadata accessor for BeaconObservation);
    v9 = type metadata accessor for BeaconObservation();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    *(v0 + 248) = sub_101179424(v8);
    *(v0 + 256) = v10;
    sub_10000B3A8(v8, &qword_1016A42E0, &qword_1013B0010);
    swift_beginAccess();
    sub_1000D2A70(v7, v8, &qword_1016A42E0, &qword_1013B0010);
    *(v0 + 264) = sub_101179424(v8);
    *(v0 + 272) = v11;
    sub_10000B3A8(v8, &qword_1016A42E0, &qword_1013B0010);
    v12 = type metadata accessor for AnalyticsEvent(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    *(v0 + 280) = v15;
    swift_defaultActor_initialize();
    *(v15 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v16 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v17 = type metadata accessor for DispatchTime();
    v18 = *(*(v17 - 8) + 56);
    v18(&v15[v16], 1, 1, v17);
    v18(&v15[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v17);
    *(v15 + 15) = 0xD00000000000002DLL;
    *(v15 + 16) = 0x800000010135E9E0;

    return _swift_task_switch(sub_100762C78, v15, 0);
  }
}

uint64_t sub_10076290C(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_100762A0C, 0, 0);
}

uint64_t sub_100762A0C()
{
  v1 = v0[29];
  sub_100007BAC(v0 + 2);
  v0[30] = v1;
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v1;
  sub_100034E6C(v4, v3, type metadata accessor for BeaconObservation);
  v6 = type metadata accessor for BeaconObservation();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[31] = sub_101179424(v3);
  v0[32] = v7;
  sub_10000B3A8(v3, &qword_1016A42E0, &qword_1013B0010);
  swift_beginAccess();
  sub_1000D2A70(v2, v3, &qword_1016A42E0, &qword_1013B0010);
  v0[33] = sub_101179424(v3);
  v0[34] = v8;
  sub_10000B3A8(v3, &qword_1016A42E0, &qword_1013B0010);
  v9 = type metadata accessor for AnalyticsEvent(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v0[35] = v12;
  swift_defaultActor_initialize();
  *(v12 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v13 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v14 = type metadata accessor for DispatchTime();
  v15 = *(*(v14 - 8) + 56);
  v15(&v12[v13], 1, 1, v14);
  v15(&v12[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v14);
  *(v12 + 15) = 0xD00000000000002DLL;
  *(v12 + 16) = 0x800000010135E9E0;

  v16 = v5;

  return _swift_task_switch(sub_100762C78, v12, 0);
}

uint64_t sub_100762C78()
{
  sub_101179650(*(v0 + 280), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 240), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);

  swift_bridgeObjectRelease_n();

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 288) = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_100762DB4;
  v5 = *(v0 + 280);

  return sub_101163F78(v5);
}

uint64_t sub_100762DB4()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_100762ECC, 0, 0);
}

uint64_t sub_100762ECC()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

id sub_100762F54(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = type metadata accessor for UUID();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138C0D0;
  *(inited + 32) = 0x746341746E657665;
  *(inited + 40) = 0xEB000000006E6F69;
  v17 = a8;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0;
  strcpy((inited + 64), "previousEvent");
  *(inited + 78) = -4864;
  *(inited + 80) = String._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x800000010135EA10;
  *(inited + 112) = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  *(inited + 120) = 0;
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xEF4D4365636E6953;
  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x800000010135EA30;
  *(inited + 176) = [objc_allocWithZone(NSNumber) initWithDouble:a3];
  *(inited + 184) = 0;
  v18 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (!a8)
  {
    return v18;
  }

  result = [v17 systemVersion];
  if (result)
  {
    v20 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v18;
    sub_100FFC418(v20, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
    v22 = v42;
    result = [v17 systemVersion];
    if (result)
    {
      v23 = result;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v22;
      sub_100FFC418(v23, 0, 0xD00000000000001BLL, 0x8000000101356E90, v24);
      v25 = v42;
      v26 = [v17 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100766F1C(&qword_1016964D0, 255, type metadata accessor for SPBeaconTaskName);
      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v27 + 16) && (v28 = sub_100777014(SPBeaconTaskNameBeginLeashing), (v29 & 1) != 0))
      {
        v30 = *(*(v27 + 56) + 8 * v28);

        [v30 state];
      }

      else
      {
      }

      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25;
      sub_100FFC418(isa, 0, 0x6563697665447369, 0xEF6465687361654CLL, v32);
      v18 = v42;
      v33 = [objc_opt_self() sharedInstance];
      LODWORD(isa) = [v33 isInternalBuild];

      if (!isa)
      {
        goto LABEL_11;
      }

      v34 = [v17 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      (*(v41 + 8))(v15, v12);
      v35 = String._bridgeToObjectiveC()();

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v18;
      sub_100FFC418(v35, 0, 0x6544646572696170, 0xEE00444965636976, v36);
      v18 = v42;
      v37 = [v17 serialNumber];
      if (v37)
      {
        v38 = v37;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v42 = v18;
        sub_100FFC418(v38, 0, 0xD000000000000018, 0x8000000101350650, v39);

        return v42;
      }

      else
      {
LABEL_11:
      }

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100763560(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v30 = a3;
  v31 = type metadata accessor for UUID();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = a1[3];
  v37 = a1[2];
  v38 = v13;
  v39 = *(a1 + 64);
  v14 = a1[1];
  v35 = *a1;
  v36 = v14;
  static os_log_type_t.default.getter();
  if (qword_101695020 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = UUID.uuidString.getter();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  os_log(_:dso:log:_:_:)();

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_10001F280(v30, v34);
  v20 = v31;
  (*(v7 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v31);
  v22 = sub_100766F1C(&qword_1016A8E70, v21, type metadata accessor for SPObserverAnalytics);
  v23 = (*(v7 + 80) + 152) & ~*(v7 + 80);
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v32;
  *(v24 + 24) = v22;
  v26 = v38;
  *(v24 + 64) = v37;
  *(v24 + 80) = v26;
  *(v24 + 96) = v39;
  v27 = v36;
  *(v24 + 32) = v35;
  *(v24 + 48) = v27;
  sub_100031694(v34, v24 + 104);
  *(v24 + 144) = v25;
  (*(v7 + 32))(v24 + v23, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  *(v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  swift_retain_n();
  sub_100766AC0(&v35, v34);

  sub_100A838D4(0, 0, v12, &unk_1013BA3D8, v24);
}

uint64_t sub_1007638D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = type metadata accessor for Date();
  v8[7] = v10;
  v11 = *(v10 - 8);
  v8[8] = v11;
  v12 = *(v11 + 64) + 15;
  v8[9] = swift_task_alloc();

  return _swift_task_switch(sub_1007639A0, a6, 0);
}

uint64_t sub_1007639A0()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  v11 = *(v0 + 16);
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000031;
  *(v4 + 16) = 0x800000010135EB70;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = v11;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_100763B54;

  return sub_101162604(&unk_1013BA3E8, v8);
}

uint64_t sub_100763B54()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {
    v6 = v2[4];

    return _swift_task_switch(sub_100763F08, v6, 0);
  }

  else
  {

    type metadata accessor for AnalyticsPublisher();
    v2[14] = swift_allocObject();
    swift_defaultActor_initialize();
    v7 = swift_task_alloc();
    v2[15] = v7;
    *v7 = v4;
    v7[1] = sub_100763D10;
    v8 = v2[10];

    return sub_101163F78(v8);
  }
}

uint64_t sub_100763D10()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100763E3C, v3, 0);
}

uint64_t sub_100763E3C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = *(v0[4] + 144);
  static Date.trustedNow.getter(v1);
  sub_10073ACF4(v5, v1);
  (*(v3 + 8))(v1, v2);
  Transaction.capture()();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100763F08()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_100763F74(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for StableIdentifier();
  v2[26] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v8 = *(v7 + 64) + 15;
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1007640B4, 0, 0);
}

uint64_t sub_1007640B4()
{
  v89 = v0;
  v2 = *(*(v0 + 184) + 64);
  if (v2 == 1)
  {
    v3 = &off_101608D78;
    v4 = 16;
  }

  else
  {
    if (v2 != 2)
    {
      sub_100766BB4();
      v1 = swift_allocError();
      swift_willThrow();
      static os_log_type_t.error.getter();
      if (qword_101695020 != -1)
      {
LABEL_58:
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_101385D80;
      *(v0 + 176) = v1;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v74 = String.init<A>(describing:)();
      v76 = v75;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = sub_100008C00();
      *(v73 + 32) = v74;
      *(v73 + 40) = v76;
      os_log(_:dso:log:_:_:)();

      v41 = sub_100907D24(_swiftEmptyArrayStorage);

      goto LABEL_47;
    }

    v3 = &off_101608DA8;
    v4 = 10;
  }

  v5 = 0;
  v6 = _swiftEmptyDictionarySingleton;
  do
  {
    while (1)
    {
      if (v5 >= v3[2])
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v8 = *(v3 + v5++ + 32);
      v9 = 0xED00007367616C46;
      v1 = 0x776F6C667265766FLL;
      switch(v8)
      {
        case 1:
          v1 = 0xD000000000000011;
          v9 = 0x80000001013543D0;
          break;
        case 2:
          v1 = 0xD000000000000015;
          v9 = 0x80000001013543B0;
          break;
        case 3:
          v1 = 0xD000000000000015;
          v9 = 0x8000000101354390;
          break;
        case 4:
          v1 = 0xD000000000000014;
          v9 = 0x8000000101354370;
          break;
        case 5:
          v1 = 0xD00000000000001BLL;
          v9 = 0x8000000101354350;
          break;
        case 6:
          v1 = 0xD000000000000012;
          v9 = 0x8000000101354330;
          break;
        case 7:
          v9 = 0xEA0000000000746ELL;
          v1 = 0x756F436873617263;
          break;
        case 8:
          v9 = 0xE900000000000065;
          v1 = 0x6D695469746C756DLL;
          break;
        case 9:
          v1 = 0x656E774F7261656ELL;
          v9 = 0xED0000656D695472;
          break;
        case 10:
          v9 = 0xE800000000000000;
          v1 = 0x656D6954646C6977;
          break;
        case 11:
          v1 = 0xD000000000000013;
          v9 = 0x8000000101354310;
          break;
        case 12:
          v1 = 0xD000000000000012;
          v9 = 0x80000001013542F0;
          break;
        case 13:
          v1 = 0x43676E69676E6172;
          v9 = 0xEC000000746E756FLL;
          break;
        case 14:
          v1 = 0x54676E69676E6172;
          v9 = 0xEB00000000656D69;
          break;
        case 15:
          v1 = 0xD000000000000017;
          v9 = 0x80000001013542D0;
          break;
        case 16:
          v1 = 0xD000000000000015;
          v9 = 0x80000001013542B0;
          break;
        case 17:
          v1 = 0x6E6F636553697072;
          v9 = 0xEF79654B79726164;
          break;
        default:
          break;
      }

      v10 = *(v0 + 184);
      sub_1010BE4F8(v8, &v86);
      v11 = *v87;
      *(v0 + 88) = v86;
      *(v0 + 104) = v11;
      *(v0 + 114) = *&v87[10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v6;
      v13 = sub_100771D58(v1, v9);
      v15 = v6[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_56;
      }

      v19 = v14;
      if (v6[3] >= v18)
      {
        break;
      }

      sub_100FEA4A0(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_100771D58(v1, v9);
      if ((v19 & 1) != (v20 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_30:
      if ((v19 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_5:
      v7 = v13;

      v6 = v88;
      sub_100766C5C(v0 + 88, v88[7] + 48 * v7);
      if (v4 == v5)
      {
        goto LABEL_37;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v27 = v13;
    sub_101006FE8();
    v13 = v27;
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_31:
    v6 = v88;
    v88[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v6[6] + 16 * v13);
    *v21 = v1;
    v21[1] = v9;
    v22 = (v6[7] + 48 * v13);
    v23 = *(v0 + 114);
    v24 = *(v0 + 104);
    *v22 = *(v0 + 88);
    v22[1] = v24;
    *(v22 + 26) = v23;
    v25 = v6[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v17)
    {
      goto LABEL_57;
    }

    v6[2] = v26;
  }

  while (v4 != v5);
LABEL_37:

  v28 = *(v0 + 192);
  v85 = *(v0 + 184);
  v29 = v28[3];
  v30 = v28[4];
  sub_1000035D0(v28, v29);
  v31 = (*(v30 + 24))(v29, v30);
  v33 = v32;
  v34 = sub_1000DF96C();
  v86._countAndFlagsBits = v31;
  v86._object = v33;
  *&v87[8] = &type metadata for String;
  *&v87[16] = v34;
  *&v87[24] = 1;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v88 = v6;
  sub_100FFC070(&v86._countAndFlagsBits, 0xD000000000000013, 0x8000000101356E70, v35);
  v36 = v88;
  v37 = v28[3];
  v38 = v28[4];
  sub_1000035D0(v28, v37);
  v86._countAndFlagsBits = (*(v38 + 24))(v37, v38);
  v86._object = v39;
  *&v87[8] = &type metadata for String;
  *&v87[16] = v34;
  *&v87[24] = 1;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v88 = v36;
  sub_100FFC070(&v86._countAndFlagsBits, 0xD00000000000001BLL, 0x8000000101356E90, v40);
  v41 = v88;
  if (*(v85 + 8) >> 60 != 15)
  {
    v42 = *(v0 + 184);
    v43 = *v42;
    sub_100766AC0(v42, v0 + 16);
    v86 = Data.base64EncodedString(options:)(0);
    *&v87[8] = &type metadata for String;
    *&v87[16] = v34;
    *&v87[24] = 1;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v41;
    sub_100FFC070(&v86._countAndFlagsBits, 0xD000000000000017, 0x80000001013542D0, v44);
    sub_100766C08(v42);
    v41 = v88;
  }

  v45 = [objc_opt_self() sharedInstance];
  v46 = [v45 isInternalBuild];

  if (v46)
  {
    v47 = *(v0 + 248);
    v48 = *(v0 + 256);
    v49 = *(v0 + 240);
    v50 = *(v0 + 192);
    v52 = v28[3];
    v51 = v28[4];
    sub_1000035D0(v50, v52);
    (*(*(*(v51 + 8) + 8) + 32))(v52);
    v53 = UUID.uuidString.getter();
    v55 = v54;
    (*(v47 + 8))(v48, v49);
    v86._countAndFlagsBits = v53;
    v86._object = v55;
    *&v87[8] = &type metadata for String;
    *&v87[16] = v34;
    *&v87[24] = 1;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v41;
    sub_100FFC070(&v86._countAndFlagsBits, 0x6544646572696170, 0xEE00444965636976, v56);
    v41 = v88;
    sub_10001F280(v50, v0 + 136);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v57 = type metadata accessor for OwnedBeaconRecord();
    v58 = swift_dynamicCast();
    v59 = *(*(v57 - 8) + 56);
    if (v58)
    {
      v61 = *(v0 + 224);
      v60 = *(v0 + 232);
      v63 = *(v0 + 208);
      v62 = *(v0 + 216);
      v64 = *(v0 + 200);
      v59(v64, 0, 1, v57);
      sub_100034E6C(v64 + *(v57 + 24), v61, type metadata accessor for StableIdentifier);
      sub_100766D74(v64, type metadata accessor for OwnedBeaconRecord);
      sub_100029350(v61, v60, type metadata accessor for StableIdentifier);
      sub_100034E6C(v60, v62, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v66 = *(v0 + 232);
      v67 = *(v0 + 216);
      if (EnumCaseMultiPayload == 1)
      {
        v68 = v67[1];
        v69 = v67[3];
        v70 = v67[4];
        v71 = v67[5];

        v86._countAndFlagsBits = v70;
        v86._object = v71;
        *&v87[8] = &type metadata for String;
        *&v87[16] = v34;
        *&v87[24] = 1;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v41;
        sub_100FFC070(&v86._countAndFlagsBits, 0xD000000000000018, 0x8000000101350650, v72);
        sub_100766D74(v66, type metadata accessor for StableIdentifier);
        v41 = v88;
      }

      else
      {
        sub_100766D74(*(v0 + 232), type metadata accessor for StableIdentifier);
        sub_100766D74(v67, type metadata accessor for StableIdentifier);
      }
    }

    else
    {
      v84 = *(v0 + 200);
      v59(v84, 1, 1, v57);
      sub_10000B3A8(v84, &unk_1016A9A20, &qword_10138B280);
    }
  }

LABEL_47:
  v77 = *(v0 + 256);
  v78 = *(v0 + 224);
  v79 = *(v0 + 232);
  v80 = *(v0 + 216);
  v81 = *(v0 + 200);

  v82 = *(v0 + 8);

  return v82(v41);
}

void sub_100764C18()
{
  static os_log_type_t.error.getter();
  if (qword_101695020 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10138BBE0;
  v1 = UUID.uuidString.getter();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  v4 = sub_100008C00();
  *(v0 + 64) = v4;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = String.init<A>(describing:)();
  *(v0 + 96) = &type metadata for String;
  *(v0 + 104) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  os_log(_:dso:log:_:_:)();

  Transaction.capture()();
}

uint64_t sub_100764E20()
{
  v2 = *(type metadata accessor for BeaconObservation() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100761098(v0 + v3, v5);
}

uint64_t sub_100764F34(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v4 = type metadata accessor for UUID();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v2[21] = *(v5 + 64);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100765000, a2, 0);
}

uint64_t sub_100765000()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  (*(v3 + 16))(v1, v0[17], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[23] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[24] = v8;
  v9 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v8 = v0;
  v8[1] = sub_100765174;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v6, v9);
}

uint64_t sub_100765174()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_10076528C, 0, 0);
}

uint64_t sub_10076528C()
{
  sub_1000D2A70(v0 + 16, v0 + 96, &qword_101696920, &unk_10138B200);
  if (*(v0 + 120))
  {
    sub_100031694((v0 + 96), v0 + 56);
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = sub_1000035D0((v0 + 56), v2);
    v4 = swift_task_alloc();
    *(v0 + 200) = v4;
    *v4 = v0;
    v4[1] = sub_1007654CC;
    v5 = *(v0 + 144);

    return sub_100E76290(v3, v5, v2, v1);
  }

  else
  {
    sub_10000B3A8(v0 + 96, &qword_101696920, &unk_10138B200);
    *(v0 + 216) = 0;
    v7 = type metadata accessor for AnalyticsEvent(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    *(v0 + 224) = v10;
    swift_defaultActor_initialize();
    *(v10 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v11 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v12 = type metadata accessor for DispatchTime();
    v13 = *(*(v12 - 8) + 56);
    v13(&v10[v11], 1, 1, v12);
    v13(&v10[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v12);
    *(v10 + 15) = 0xD00000000000003DLL;
    *(v10 + 16) = 0x800000010135CA50;

    return _swift_task_switch(sub_10076573C, v10, 0);
  }
}

uint64_t sub_1007654CC(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1007655CC, 0, 0);
}

uint64_t sub_1007655CC()
{
  v1 = v0[26];
  sub_100007BAC(v0 + 7);
  v0[27] = v1;
  v2 = v1;
  v3 = type metadata accessor for AnalyticsEvent(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v0[28] = v6;
  swift_defaultActor_initialize();
  *(v6 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v9(&v6[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v8);
  *(v6 + 15) = 0xD00000000000003DLL;
  *(v6 + 16) = 0x800000010135CA50;
  v10 = v2;

  return _swift_task_switch(sub_10076573C, v6, 0);
}

uint64_t sub_10076573C()
{
  sub_101177A14(*(v0 + 224), *(v0 + 216));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 232) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_100765820;
  v2 = *(v0 + 224);

  return sub_101163F78(v2);
}

uint64_t sub_100765820()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_100765938, 0, 0);
}

uint64_t sub_100765938()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[22];

  sub_10000B3A8((v0 + 2), &qword_101696920, &unk_10138B200);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007659C0()
{
  v1 = *(type metadata accessor for BeaconObservation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100765A4C(v0 + v2, v3);
}

uint64_t sub_100765A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v89 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v81 = &v78 - v10;
  v11 = __chkstk_darwin(v9);
  v83 = &v78 - v12;
  v88 = v13;
  __chkstk_darwin(v11);
  v15 = &v78 - v14;
  v16 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v80 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v84 = &v78 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v78 - v23;
  v25 = __chkstk_darwin(v22);
  v79 = &v78 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v78 - v28;
  v30 = __chkstk_darwin(v27);
  v95 = &v78 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v78 - v33;
  __chkstk_darwin(v32);
  v94 = &v78 - v35;
  v87 = swift_allocBox();
  v96 = v5;
  v36 = *(v5 + 56);
  v91 = v37;
  v85 = v36;
  v86 = v5 + 56;
  v36(v37, 1, 1, v4);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v38 = qword_10177B2E8;
  v39 = swift_allocObject();
  *(v39 + 16) = 33;
  v93 = v38;
  v40 = sub_100035730(a1, sub_10076644C, v39);

  v41 = 0;
  v42 = *(a1 + *(v4 + 24));
  v90 = a2;
  v43 = 0;
  if (v42 < 0x21 || v42 > 35)
  {
    goto LABEL_4;
  }

  if (v42 != 33)
  {
    if (v42 == 34)
    {
      v41 = 0;
      v43 = 1;
    }

    else
    {
      v43 = 0;
      v41 = 1;
    }

LABEL_4:
    v82 = v43;
    v44 = v94;
    sub_1012BB138(v40, v94);
    goto LABEL_5;
  }

  v44 = v94;
  sub_10030C400(v40, v94);
  v82 = 0;
  v41 = 0;
LABEL_5:

  sub_1000D2A70(v44, v34, &qword_1016A42E0, &qword_1013B0010);
  v45 = *(v96 + 48);
  v46 = v45(v34, 1, v4);
  v92 = v24;
  if (v46 == 1)
  {
    sub_10000B3A8(v34, &qword_1016A42E0, &qword_1013B0010);
    v47 = 0.0;
  }

  else
  {
    sub_100029350(v34, v15, type metadata accessor for BeaconObservation);
    v48 = &v15[*(v4 + 20)];
    Date.timeIntervalSinceNow.getter();
    v47 = fabs(v49);
    v50 = v91;
    sub_10000B3A8(v91, &qword_1016A42E0, &qword_1013B0010);
    v24 = v92;
    sub_100029350(v15, v50, type metadata accessor for BeaconObservation);
    v85(v50, 0, 1, v4);
  }

  v51 = swift_allocObject();
  *(v51 + 16) = 35;
  v52 = sub_100035730(a1, sub_100766FD8, v51);

  v53 = v95;
  if (v41)
  {
    sub_10030C400(v52, v95);
  }

  else
  {
    sub_1012BB138(v52, v95);
  }

  sub_1000D2A70(v53, v29, &qword_1016A42E0, &qword_1013B0010);
  if (v45(v29, 1, v4) == 1)
  {
    sub_10000B3A8(v29, &qword_1016A42E0, &qword_1013B0010);
    v54 = 0.0;
    v55 = v47;
    v56 = v91;
  }

  else
  {
    v57 = v83;
    sub_100029350(v29, v83, type metadata accessor for BeaconObservation);
    v58 = v57 + *(v4 + 20);
    Date.timeIntervalSinceNow.getter();
    v54 = fabs(v59);
    v56 = v91;
    v60 = v79;
    sub_1000D2A70(v91, v79, &qword_1016A42E0, &qword_1013B0010);
    v61 = v45(v60, 1, v4);
    sub_10000B3A8(v60, &qword_1016A42E0, &qword_1013B0010);
    if (v61 == 1 || v54 < v47)
    {
      sub_10000B3A8(v56, &qword_1016A42E0, &qword_1013B0010);
      sub_100029350(v83, v56, type metadata accessor for BeaconObservation);
      v85(v56, 0, 1, v4);
      v55 = v54;
    }

    else
    {
      sub_100766D74(v83, type metadata accessor for BeaconObservation);
      v55 = v47;
    }
  }

  v62 = swift_allocObject();
  *(v62 + 16) = 34;
  v63 = sub_100035730(a1, sub_100766FD8, v62);

  if (v82)
  {
    sub_10030C400(v63, v24);
  }

  else
  {
    sub_1012BB138(v63, v24);
  }

  v64 = v84;
  sub_1000D2A70(v24, v84, &qword_1016A42E0, &qword_1013B0010);
  if (v45(v64, 1, v4) == 1)
  {
    sub_10000B3A8(v64, &qword_1016A42E0, &qword_1013B0010);
    v65 = 0.0;
  }

  else
  {
    v66 = v81;
    sub_100029350(v64, v81, type metadata accessor for BeaconObservation);
    v67 = v66 + *(v4 + 20);
    Date.timeIntervalSinceNow.getter();
    v65 = fabs(v68);
    v69 = v80;
    sub_1000D2A70(v56, v80, &qword_1016A42E0, &qword_1013B0010);
    v70 = v45(v69, 1, v4);
    sub_10000B3A8(v69, &qword_1016A42E0, &qword_1013B0010);
    if (v70 == 1 || v65 < v55)
    {
      sub_10000B3A8(v56, &qword_1016A42E0, &qword_1013B0010);
      sub_100029350(v66, v56, type metadata accessor for BeaconObservation);
      v85(v56, 0, 1, v4);
    }

    else
    {
      sub_100766D74(v66, type metadata accessor for BeaconObservation);
    }
  }

  type metadata accessor for Transaction();
  v71 = v89;
  sub_100034E6C(a1, v89, type metadata accessor for BeaconObservation);
  v72 = (*(v96 + 80) + 24) & ~*(v96 + 80);
  v73 = (v88 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  *(v76 + 16) = v90;
  sub_100029350(v71, v76 + v72, type metadata accessor for BeaconObservation);
  *(v76 + v73) = v87;
  *(v76 + v74) = v47;
  *(v76 + v75) = v65;
  *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v54;

  static Transaction.asyncTask(name:block:)();

  sub_10000B3A8(v92, &qword_1016A42E0, &qword_1013B0010);
  sub_10000B3A8(v95, &qword_1016A42E0, &qword_1013B0010);
  sub_10000B3A8(v94, &qword_1016A42E0, &qword_1013B0010);
}

uint64_t sub_100766454()
{
  v2 = *(type metadata accessor for BeaconObservation() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100762240(v7, v0 + v3, v9, v10, v11);
}

uint64_t sub_10076659C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_10075EBF8(a1, a2, v7, v6);
}

uint64_t sub_100766650(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_10076669C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014744;

  return sub_10075F4B8(a1, a2, v6, v7);
}

uint64_t sub_100766764()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1007607D0();
}

uint64_t sub_100766834(__int128 *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100763560(a1, v1 + v4, v1 + v5, v7, v8);
}

void sub_1007668E8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100764C18();
}

uint64_t sub_100766984(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[18];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014650;

  return sub_1007638D4(a1, v7, v8, (v1 + 4), (v1 + 13), v9, v1 + v6, v10);
}

uint64_t sub_100766B1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BBA4C;

  return sub_100763F74(v2, v3);
}

unint64_t sub_100766BB4()
{
  result = qword_1016A8E80;
  if (!qword_1016A8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8E80);
  }

  return result;
}

uint64_t sub_100766CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10075DB24(a1, v4, v5, v6);
}

uint64_t sub_100766D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100766DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10075AC88();
}

uint64_t sub_100766E80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10075AD18();
}

uint64_t sub_100766F1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100766F78()
{
  result = qword_1016A8EA8;
  if (!qword_1016A8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8EA8);
  }

  return result;
}

uint64_t sub_100766FDC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A8EB0);
  v1 = sub_1000076D4(v0, qword_1016A8EB0);
  if (qword_101694908 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B290);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1007670A4()
{
  v0 = type metadata accessor for Table();
  sub_100044B3C(v0, qword_10177B110);
  sub_1000076D4(v0, qword_10177B110);
  return Table.init(_:database:)();
}

uint64_t sub_100767110()
{
  v0 = type metadata accessor for Table();
  sub_100044B3C(v0, qword_10177B128);
  sub_1000076D4(v0, qword_10177B128);
  return Table.init(_:database:)();
}

uint64_t sub_10076717C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DatabaseState();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100767240, 0, 0);
}

uint64_t sub_100767240()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v1, enum case for DatabaseState.unavailable(_:), v4);
  v5 = sub_1000BC4D4(&qword_1016A9010, &qword_1013BA868);
  v6 = *(v5 + 52);
  v7 = (*(v5 + 48) + 3) & 0x1FFFFFFFCLL;
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v8 + *(*v8 + class metadata base offset for ManagedBuffer + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  *(v3 + 112) = v8;
  v9 = sub_1000BC4D4(&qword_1016A9018, &unk_1013BA870);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v3 + 120) = AsyncStreamProvider.init()();
  v12 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_logger;
  if (qword_101694908 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 72);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = type metadata accessor for Logger();
  v17 = sub_1000076D4(v16, qword_10177B290);
  (*(*(v16 - 8) + 16))(v15 + v12, v17, v16);
  *(v15 + OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_connectionPair) = 0;
  *(v15 + OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_currentVersion) = 2;
  v18 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_baseContainerURL;
  v19 = type metadata accessor for URL();
  *(v0 + 56) = v19;
  v20 = *(v19 - 8);
  *(v0 + 64) = v20;
  (*(v20 + 16))(v15 + v18, v14, v19);
  *(v15 + OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_temporary) = v13;

  return _swift_task_switch(sub_100767500, v15, 0);
}

uint64_t sub_100767500()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[2], v0[7]);

  v2 = v0[1];
  v3 = v0[3];

  return v2(v3);
}

uint64_t sub_100767584()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_connectionPair);

  v6 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_baseContainerURL;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100767664()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10076779C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100767814(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd20CloudStorageDatabase_connectionPair;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1007678CC()
{
  v1 = v0;
  v2 = *(v0 + 120);
  sub_1000BC4D4(&qword_1016A9000, &qword_1013BA858);
  v3 = type metadata accessor for DatabaseState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = *(v1 + 112);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  (*(v4 + 16))(v7 + v6, v8 + v9, v3);
  os_unfair_lock_unlock((v8 + v10));
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_100767A64()
{
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  return URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100767B4C()
{
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v14 = v2[1];
  v14((v6 + v7), v1);
  v9 = enum case for DatabaseState.available(_:);
  v10 = v2[13];
  v10((v6 + v7), enum case for DatabaseState.available(_:), v1);
  os_unfair_lock_unlock((v6 + v8));
  v11 = *(v0 + 120);
  v10(v5, v9, v1);
  AsyncStreamProvider.yield(value:transaction:)();
  return v14(v5, v1);
}

void sub_100767D00(int a1, int a2)
{
  v25[1] = *v2;
  v26 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  if (qword_101694880 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016A8EB0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = a1;
    *(v15 + 8) = 1024;
    *(v15 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v13, v14, "Migrate schema %d -> %d", v15, 0xEu);
  }

  if (a2 == 2)
  {
    __chkstk_darwin(v16);
    v17 = v26;
    (*(v5 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v26);
    v18 = v27;
    Connection.transaction(_:block:)();
    if (v18)
    {
      (*(v5 + 8))(v9, v17);
      return;
    }

    goto LABEL_12;
  }

  if (a2 != 1)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v28 = 0xD000000000000013;
    v29 = 0x800000010135ECD0;
    v30 = a2;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x80000001013513F0;
  Connection.execute(_:)(v19);
  if (!v20)
  {
    v21._countAndFlagsBits = 0xD000000000000018;
    v21._object = 0x8000000101351410;
    Connection.execute(_:)(v21);
    if (!v23)
    {
      __chkstk_darwin(v22);
      v17 = v26;
      (*(v5 + 104))(v11, enum case for Connection.TransactionMode.deferred(_:), v26);
      Connection.transaction(_:block:)();
      v9 = v11;
LABEL_12:
      (*(v5 + 8))(v9, v17);
    }
  }
}

uint64_t sub_1007681CC()
{
  v1 = *v0;
  type metadata accessor for CloudStorageDatabase();
  sub_10076A730(&qword_1016A9008);
  return Database.description.getter();
}

uint64_t sub_100768224()
{
  v1 = async function pointer to Database.isolatedDescription.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = type metadata accessor for CloudStorageDatabase();
  v4 = sub_10076A730(&qword_1016A9008);
  *v2 = v0;
  v2[1] = sub_1007682F4;

  return Database.isolatedDescription.getter(v3, v4);
}

uint64_t sub_1007682F4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_100768460()
{
  if (qword_101694888 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_1000076D4(v1, qword_10177B110);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  if (qword_1016948B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v4 = sub_1000076D4(v3, qword_10177B188);
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110);
  v5 = sub_1000280DC((v2 + 32));
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1007686A8()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v59 = &v49 - v3;
  v4 = sub_1000BC4D4(&qword_1016A8FF0, &unk_1013BA840);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v58 = &v49 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v49 - v9;
  v11 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v49 - v13;
  v15 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v49 - v17;
  v19 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v49 - v21;
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  *&v61 = v10;
  v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v23, qword_10177B140);
  v60 = v1;
  v24 = *(v1 + 56);
  v24(v22, 1, 1, v0);
  v25 = *(v23 - 8);
  v53 = *(v25 + 56);
  v54 = v23;
  v52 = v25 + 56;
  v53(v18, 1, 1, v23);
  v51 = type metadata accessor for UUID();
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  v55 = v18;
  sub_10000B3A8(v18, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948A0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v26, qword_10177B158);
  v24(v22, 1, 1, v0);
  v27 = *(*(v26 - 8) + 56);
  v27(v14, 1, 1, v26);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v26, qword_10177B170);
  v24(v22, 1, 1, v0);
  v27(v14, 1, 1, v26);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v14, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948B0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v28, qword_10177B188);
  v24(v22, 1, 1, v0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v32 = v61;
  v30(v61, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v32, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948B8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v33, qword_10177B1A0);
  v24(v22, 1, 1, v0);
  v50 = v28;
  v30(v32, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v32, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948C0 != -1)
  {
    swift_once();
  }

  v56 = v31;
  v57 = v30;
  v34 = v54;
  sub_1000076D4(v54, qword_10177B1B8);
  v24(v22, 1, 1, v0);
  v35 = v55;
  v53(v55, 1, 1, v34);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948D0 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v37 = sub_1000076D4(v36, qword_10177B1E8);
  v24(v22, 1, 1, v0);
  v38 = v0;
  v39 = *(*(v36 - 8) + 56);
  v40 = v24;
  v41 = v58;
  v39(v58, 1, 1, v36);
  v55 = v37;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948C8 != -1)
  {
    swift_once();
  }

  v42 = sub_1000076D4(v36, qword_10177B1D0);
  v40(v22, 1, 1, v38);
  v39(v41, 1, 1, v36);
  v54 = v42;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v36, qword_10177B200);
  v40(v22, 1, 1, v38);
  v39(v41, 1, 1, v36);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v41, &qword_1016A8FF0, &unk_1013BA840);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948E0 != -1)
  {
    swift_once();
  }

  v43 = v50;
  sub_1000076D4(v50, qword_10177B218);
  v40(v22, 1, 1, v38);
  v44 = v61;
  v45 = v57;
  v57(v61, 1, 1, v43);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948E8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v43, qword_10177B230);
  v40(v22, 1, 1, v38);
  v45(v44, 1, 1, v43);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v43, qword_10177B248);
  v40(v22, 1, 1, v38);
  v45(v44, 1, 1, v43);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v22, &qword_10169DE30, &unk_10139D190);
  v61 = xmmword_1013BA680;
  v62 = xmmword_1013BA680;
  v46 = v59;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  v47 = *(v60 + 8);
  v47(v46, v38);
  v62 = v61;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v47)(v46, v38);
}

uint64_t sub_100769494()
{
  if (qword_101694890 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_1000076D4(v1, qword_10177B128);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_100769574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100769494();
}

uint64_t sub_100769590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100768460();
}

uint64_t sub_1007695AC()
{
  v0 = sub_1000BC4D4(&qword_10169DE60, &unk_10139D1C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v23 - v2;
  v4 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v16, qword_10177B140);
  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10000B3A8(v11, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101694900 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v19, qword_10177B278);
  v18(v15, 1, 1, v17);
  v20 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016948F8 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v21, qword_10177B260);
  v18(v15, 1, 1, v17);
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE60, &unk_10139D1C0);
  return sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_100769A68()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177B140);
  sub_1000076D4(v0, qword_10177B140);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769B10()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177B158);
  sub_1000076D4(v0, qword_10177B158);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769BC0()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177B170);
  sub_1000076D4(v0, qword_10177B170);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769C80()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B188);
  sub_1000076D4(v0, qword_10177B188);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769D40()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177B1A0);
  sub_1000076D4(v0, qword_10177B1A0);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769E00()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177B1B8);
  sub_1000076D4(v0, qword_10177B1B8);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769EB0()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177B1D0);
  sub_1000076D4(v0, qword_10177B1D0);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850);
  return ExpressionType.init(_:)();
}

uint64_t sub_100769F68()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177B1E8);
  sub_1000076D4(v0, qword_10177B1E8);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A01C()
{
  v0 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_100044B3C(v0, qword_10177B200);
  sub_1000076D4(v0, qword_10177B200);
  sub_1000041A4(&qword_1016A8FF8, &qword_101699D30, &qword_1013BA850);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A0D8()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B218);
  sub_1000076D4(v0, qword_10177B218);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A198()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B230);
  sub_1000076D4(v0, qword_10177B230);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A250()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177B248);
  sub_1000076D4(v0, qword_10177B248);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A30C()
{
  v0 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_100044B3C(v0, qword_10177B260);
  sub_1000076D4(v0, qword_10177B260);
  sub_1000041A4(&qword_10169DE18, &qword_101699E88, &unk_10139D170);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A3CC()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177B278);
  sub_1000076D4(v0, qword_10177B278);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140);
  return ExpressionType.init(_:)();
}

uint64_t sub_10076A488()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B290);
  sub_1000076D4(v0, qword_10177B290);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10076A508()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v7 >> 60 == 15)
  {
    v8 = static Data.random(bytes:)();
    v10 = v9;
    v12[0] = v8;
    v12[1] = v9;
    (*(v2 + 104))(v5, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v13 = v8;
    sub_100017D5C(v8, v10);
    sub_1000E0A3C();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v5, v1);
    v11 = v13;
    sub_100016590(v13, v10);
    return v11;
  }

  return result;
}

uint64_t sub_10076A730(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudStorageDatabase();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10076A774(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v13 = *v1;
  v7 = *v1;
  sub_10015049C(v8, v9);
  sub_1001022C4(&v13, v6);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v7, *(&v7 + 1));
  if (!v2)
  {
    v12 = v1[1];
    v7 = v1[1];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v12, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v11 = v1[2];
    v7 = v1[2];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v11, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v10 = v1[3];
    v7 = v1[3];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v10, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v4 = *(v1 + 9);
    if (v4 >> 60 != 15)
    {
      *&v7 = *(v1 + 8);
      *(&v7 + 1) = v4;
      sub_10015049C(v8, v9);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    }
  }

  return sub_100007BAC(v8);
}

__n128 sub_10076A9B4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10076AA18(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10076AA18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v61, v62);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v61);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v61, v62);
  v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v63 = v11;
  sub_10015049C(v61, v62);
  v55 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v56 = v12;
  sub_10015049C(v61, v62);
  v53 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v54 = v13;
  sub_10015049C(v61, v62);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = result;
  v17 = v15;
  v18 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v22 = v18 == 2;
    v19 = v63;
    v23 = v55;
    v24 = v56;
    if (!v22)
    {
      goto LABEL_66;
    }

    v25 = *(v8 + 16);
    v26 = *(v8 + 24);
    v27 = __OFSUB__(v26, v25);
    v21 = v26 - v25;
    if (v27)
    {
      goto LABEL_60;
    }

    v20 = v10;
  }

  else
  {
    v19 = v63;
    v20 = v10;
    if (v18)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = HIDWORD(v8) - v8;
    }

    else
    {
      v21 = BYTE6(v9);
    }

    v23 = v55;
    v24 = v56;
  }

  if (v21 != 32)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v28 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v28)
    {
      v20 = BYTE6(v19);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v28 != 2)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v31 = v20 + 16;
  v29 = *(v20 + 16);
  v30 = *(v31 + 8);
  v27 = __OFSUB__(v30, v29);
  v20 = v30 - v29;
  if (v27)
  {
    __break(1u);
LABEL_22:
    v27 = __OFSUB__(HIDWORD(v20), v20);
    LODWORD(v20) = HIDWORD(v20) - v20;
    if (v27)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v20 = v20;
  }

LABEL_24:
  if (v20 != 113)
  {
    goto LABEL_67;
  }

  v32 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v32)
    {
      v23 = BYTE6(v24);
LABEL_34:
      result = v53;
      v33 = v54;
      goto LABEL_35;
    }

LABEL_32:
    v27 = __OFSUB__(HIDWORD(v23), v23);
    LODWORD(v23) = HIDWORD(v23) - v23;
    if (v27)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v23 = v23;
    goto LABEL_34;
  }

  result = v53;
  v33 = v54;
  if (v32 != 2)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v36 = v23 + 16;
  v34 = *(v23 + 16);
  v35 = *(v36 + 8);
  v27 = __OFSUB__(v35, v34);
  v23 = v35 - v34;
  if (v27)
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_35:
  if (v23 != 32)
  {
    goto LABEL_68;
  }

  v37 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (!v37)
    {
      v38 = BYTE6(v17);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v37 != 2)
  {
    goto LABEL_69;
  }

  v40 = *(v16 + 16);
  v39 = *(v16 + 24);
  v27 = __OFSUB__(v39, v40);
  v38 = v39 - v40;
  if (v27)
  {
    __break(1u);
LABEL_43:
    LODWORD(v38) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v38 = v38;
  }

LABEL_45:
  if (v38 == 96)
  {
    v59 = result;
    v60 = v33;
    v41 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v41 != 2)
      {
        v42 = 0;
        goto LABEL_57;
      }

      v44 = *(result + 16);
      v43 = *(result + 24);
      v42 = v43 - v44;
      if (!__OFSUB__(v43, v44))
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    else if (!v41)
    {
      v42 = BYTE6(v33);
LABEL_57:
      v27 = __OFSUB__(60, v42);
      v45 = 60 - v42;
      if (!v27)
      {
        sub_100017D5C(v16, v17);
        v57 = sub_100845C88(v45);
        v58 = v46;
        sub_100776394(&v57, 0);
        v51 = v57;
        v52 = v16;
        v50 = v58;
        Data.append(_:)();
        sub_100016590(v16, v17);
        sub_100016590(v53, v54);
        sub_100016590(v51, v50);
        v47 = v59;
        v48 = v60;
        sub_100007BAC(v61);
        result = sub_100007BAC(a1);
        *a2 = v8;
        a2[1] = v9;
        v49 = v63;
        a2[2] = v10;
        a2[3] = v49;
        a2[4] = v55;
        a2[5] = v56;
        a2[6] = v47;
        a2[7] = v48;
        a2[8] = v52;
        a2[9] = v17;
        return result;
      }

      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v42 = HIDWORD(result) - result;
LABEL_55:
    result = sub_100017D5C(result, v33);
    goto LABEL_57;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_10076AE34@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  v20 = result;
  v21 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v21 != 2)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v24 = *(result + 16);
  v23 = *(result + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v25)
  {
    __break(1u);
LABEL_8:
    LODWORD(v22) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v22 = v22;
  }

LABEL_10:
  if (v22 != 32)
  {
    goto LABEL_61;
  }

  v26 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v26)
    {
      v27 = BYTE6(a4);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v26 != 2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v29 = *(a3 + 16);
  v28 = *(a3 + 24);
  v25 = __OFSUB__(v28, v29);
  v27 = v28 - v29;
  if (v25)
  {
    __break(1u);
LABEL_18:
    LODWORD(v27) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v27 = v27;
  }

LABEL_20:
  if (v27 != 113)
  {
    goto LABEL_62;
  }

  v30 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = BYTE6(a6);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v30 != 2)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v33 = *(a5 + 16);
  v32 = *(a5 + 24);
  v25 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  if (v25)
  {
    __break(1u);
LABEL_28:
    LODWORD(v31) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v31 = v31;
  }

LABEL_30:
  if (v31 != 32)
  {
    goto LABEL_63;
  }

  v12 = a10;
  v11 = a11;
  if (a11 >> 60 == 15)
  {
    goto LABEL_42;
  }

  v34 = a11 >> 62;
  if ((a11 >> 62) > 1)
  {
    if (v34 != 2)
    {
LABEL_64:
      result = sub_100006654(v12, v11);
      goto LABEL_65;
    }

    v37 = *(a10 + 16);
    v36 = *(a10 + 24);
    v25 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v25)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  else if (!v34)
  {
    result = sub_100006654(a10, a11);
    v35 = BYTE6(a11);
    goto LABEL_41;
  }

  LODWORD(v35) = HIDWORD(a10) - a10;
  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v35 = v35;
LABEL_41:
  if (v35 == 96)
  {
LABEL_42:
    *&v50 = a7;
    *(&v50 + 1) = a8;
    v38 = a8 >> 62;
    if ((a8 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v11 = 0;
        goto LABEL_53;
      }

      v40 = *(a7 + 16);
      v39 = *(a7 + 24);
      v11 = v39 - v40;
      if (!__OFSUB__(v39, v40))
      {
        goto LABEL_51;
      }

      __break(1u);
    }

    else if (!v38)
    {
      v11 = BYTE6(a8);
LABEL_53:
      if (!__OFSUB__(60, v11))
      {
        v48 = sub_100845C88(60 - v11);
        v49 = v41;
        v45 = a4;
        v46 = a6;
        sub_100776394(&v48, 0);
        v42 = a5;
        v43 = v48;
        v44 = v49;
        Data.append(_:)();
        sub_100016590(a7, a8);
        result = sub_100016590(v43, v44);
        *a9 = v20;
        *(a9 + 8) = a2;
        *(a9 + 16) = a3;
        *(a9 + 24) = v45;
        *(a9 + 32) = v42;
        *(a9 + 40) = v46;
        *(a9 + 48) = v50;
        *(a9 + 64) = a10;
        *(a9 + 72) = a11;
        return result;
      }

      __break(1u);
      goto LABEL_56;
    }

    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v11 = HIDWORD(a7) - a7;
LABEL_51:
    sub_100017D5C(a7, a8);
    goto LABEL_53;
  }

LABEL_65:
  __break(1u);
  return result;
}

void sub_10076B0E4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for __DataStorage();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v56 = 0x3C00000000;
  *(&v56 + 1) = __DataStorage.init(length:)();
  sub_1007765FC(&v56, 0);
  v18 = v56;
  v19 = DWORD1(v56);
  v50 = a2;
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 != 2)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v25 = __OFSUB__(v23, v24);
    v21 = v23 - v24;
    if (v25)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    a2 = a7;
    v22 = *(&v56 + 1);
  }

  else
  {
    a2 = a7;
    if (v20)
    {
      LODWORD(v21) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v22 = *(&v56 + 1);
      v21 = v21;
    }

    else
    {
      v21 = BYTE6(v50);
      v22 = *(&v56 + 1);
    }
  }

  if (v21 != 32)
  {
    goto LABEL_56;
  }

  v26 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v26)
    {
      v27 = BYTE6(a4);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v26 != 2)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v29 = *(a3 + 16);
  v28 = *(a3 + 24);
  v25 = __OFSUB__(v28, v29);
  v27 = v28 - v29;
  if (v25)
  {
    __break(1u);
LABEL_17:
    LODWORD(v27) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v27 = v27;
  }

LABEL_19:
  if (v27 != 113)
  {
    goto LABEL_57;
  }

  v30 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = BYTE6(a6);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v30 != 2)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v33 = *(a5 + 16);
  v32 = *(a5 + 24);
  v25 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  if (v25)
  {
    __break(1u);
LABEL_27:
    LODWORD(v31) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v31 = v31;
  }

LABEL_29:
  if (v31 != 32)
  {
    goto LABEL_58;
  }

  if (a8 >> 60 == 15)
  {
    goto LABEL_41;
  }

  v34 = a8 >> 62;
  if ((a8 >> 62) > 1)
  {
    if (v34 != 2)
    {
LABEL_59:
      sub_100006654(a2, a8);
      goto LABEL_60;
    }

    v37 = *(a2 + 16);
    v36 = *(a2 + 24);
    v25 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v25)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_38:
    LODWORD(v35) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v35 = v35;
    goto LABEL_40;
  }

  if (v34)
  {
    goto LABEL_38;
  }

  sub_100006654(a2, a8);
  v35 = BYTE6(a8);
LABEL_40:
  if (v35 != 96)
  {
LABEL_60:
    __break(1u);
    return;
  }

LABEL_41:
  v49 = a8;
  a8 = a6;
  v38 = a2;
  *&v56 = v18 | (v19 << 32);
  *(&v56 + 1) = v22 | 0x4000000000000000;
  a2 = (v19 - v18);
  if (__OFSUB__(v19, v18))
  {
    __break(1u);
    goto LABEL_51;
  }

  if (a2 == 60)
  {

    v39 = 0;
    v40 = 0xC000000000000000;
  }

  else
  {
    v41 = 60 - a2;
    if (a2 >= 46)
    {
      v39 = sub_100268BBC(60 - a2);
      v40 = v46 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = *(v15 + 48);
      v43 = *(v15 + 52);
      swift_allocObject();

      v44 = __DataStorage.init(length:)();
      v45 = v44;
      if (a2 <= -2147483587)
      {
        type metadata accessor for Data.RangeReference();
        v39 = swift_allocObject();
        *(v39 + 16) = 0;
        *(v39 + 24) = v41;
        v40 = v45 | 0x8000000000000000;
      }

      else
      {
        v39 = v41 << 32;
        v40 = v44 | 0x4000000000000000;
      }
    }
  }

  v54 = v39;
  v55 = v40;
  sub_100776394(&v54, 0);
  v47 = v54;
  v48 = v55;
  Data.append(_:)();

  sub_100016590(v47, v48);
  *a9 = a1;
  *(a9 + 8) = v50;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a8;
  *(a9 + 48) = v56;
  *(a9 + 64) = v38;
  *(a9 + 72) = v49;
}

unint64_t sub_10076B470(uint64_t a1)
{
  *(a1 + 8) = sub_10076B4A0();
  result = sub_10076B4F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10076B4A0()
{
  result = qword_1016A9020;
  if (!qword_1016A9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9020);
  }

  return result;
}

unint64_t sub_10076B4F4()
{
  result = qword_1016A9028;
  if (!qword_1016A9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9028);
  }

  return result;
}

unint64_t sub_10076B558(uint64_t a1)
{
  *(a1 + 8) = sub_10038BF14();
  result = sub_10030FB84();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10076B588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x800000010134A130;
  v6 = 0xE600000000000000;
  v7 = 0x6449616E6D66;
  if (a1 != 4)
  {
    v7 = 0x704164656B73616DLL;
    v6 = 0xED00006449656C70;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6953726576726573;
  v9 = 0xEA00000000006E67;
  if (a1 != 1)
  {
    v8 = 0x6E656B6F74;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x5364656573;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000010134A130;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6449616E6D66)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED00006449656C70;
      if (v10 != 0x704164656B73616DLL)
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
      v12 = 0xEA00000000006E67;
      if (v10 != 0x6953726576726573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6E656B6F74)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x5364656573)
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

uint64_t sub_10076B778(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x8000000101347710;
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x6544654D41746F6ELL;
      }

      else
      {
        v5 = 0x6F4E656369766564;
      }

      if (v2 == 4)
      {
        v6 = 0xEC00000065636976;
      }

      else
      {
        v6 = 0xEE006573556E4974;
      }
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001013476E0;
    if (a1 != 1)
    {
      v3 = 0x726F707075736E75;
      v4 = 0xEE00554B53646574;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x80000001013476C0;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0x8000000101347710;
      if (v5 != 0xD00000000000001CLL)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xEC00000065636976;
      if (v5 != 0x6544654D41746F6ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = 0xEE006573556E4974;
      if (v5 != 0x6F4E656369766564)
      {
LABEL_39:
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x726F707075736E75;
    }

    if (a2 == 1)
    {
      v8 = 0x80000001013476E0;
    }

    else
    {
      v8 = 0xEE00554B53646574;
    }

    if (v5 != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0x80000001013476C0;
    if (v5 != 0xD000000000000011)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_10076B9A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 4999502;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000004445;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x5A49524F48545541;
    }

    else
    {
      v6 = 0x5249415045524E49;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1414090313;
    }

    else
    {
      v6 = 4999502;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE300000000000000;
  v9 = 0x5A49524F48545541;
  v10 = 0xEA00000000004445;
  if (a2 != 2)
  {
    v9 = 0x5249415045524E49;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 1414090313;
    v8 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10076BAD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x704164656B73616DLL;
    v10 = 0xED00006449656C70;
    if (a1 != 6)
    {
      v9 = 0xD000000000000013;
      v10 = 0x8000000101347DB0;
    }

    v11 = 0x6953726576726573;
    v12 = 0xEA00000000006E67;
    if (a1 != 4)
    {
      v11 = 0x6449616E6D66;
      v12 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x754E6C6169726573;
    v5 = 0xEC0000007265626DLL;
    if (a1 != 2)
    {
      v4 = 0x5364656573;
      v5 = 0xE500000000000000;
    }

    v6 = 0x644970696863;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 1684628325;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEC0000007265626DLL;
        if (v7 != 0x754E6C6169726573)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x5364656573)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      v13 = 0xE400000000000000;
      if (v7 != 1684628325)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v13 = 0xE600000000000000;
    v14 = 1885956195;
LABEL_40:
    if (v7 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x644900000000))
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xEA00000000006E67;
      if (v7 != 0x6953726576726573)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v13 = 0xE600000000000000;
    v14 = 1634626918;
    goto LABEL_40;
  }

  if (a2 == 6)
  {
    v13 = 0xED00006449656C70;
    if (v7 != 0x704164656B73616DLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0x8000000101347DB0;
    if (v7 != 0xD000000000000013)
    {
LABEL_47:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_10076BD5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007265626DLL;
  v3 = 0x754E6C6169726573;
  v4 = a1;
  v5 = 0x704164656B73616DLL;
  v6 = 0xED00006449656C70;
  if (a1 != 5)
  {
    v5 = 0xD000000000000013;
    v6 = 0x8000000101347DB0;
  }

  v7 = 0x6953726576726573;
  v8 = 0xEA00000000006E67;
  if (a1 != 3)
  {
    v7 = 0x6449616E6D66;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6169726553746C61;
  v10 = 0xEF7265626D754E6CLL;
  if (a1 != 1)
  {
    v9 = 0x5364656573;
    v10 = 0xE500000000000000;
  }

  if (!a1)
  {
    v9 = 0x754E6C6169726573;
    v10 = 0xEC0000007265626DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEF7265626D754E6CLL;
        if (v11 != 0x6169726553746C61)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x5364656573)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED00006449656C70;
        if (v11 != 0x704164656B73616DLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0x8000000101347DB0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xEA00000000006E67;
      if (v11 != 0x6953726576726573)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE600000000000000;
    v3 = 0x6449616E6D66;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_10076BFA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461447472617473;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE700000000000000;
    v14 = 0x65746144646E65;
    if (a1 == 2)
    {
      v14 = 0x7461447472617473;
      v13 = 0xE900000000000065;
    }

    v15 = 0xD000000000000010;
    v16 = 0x800000010134A0A0;
    if (a1)
    {
      v15 = 0xD000000000000012;
      v16 = 0x800000010134A0C0;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 5294388599723750000;
    v6 = 0xEA00000000007364;
    v7 = 0x76654464656E776FLL;
    v8 = 0xEE00736449656369;
    if (a1 != 7)
    {
      v7 = 0x6570795479656BLL;
      v8 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x7261646E6F636573;
    v10 = 0xEC00000073644979;
    if (a1 != 4)
    {
      v9 = 0x6F43686372616573;
      v10 = 0xED0000747865746ELL;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x800000010134A0C0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0x800000010134A0A0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 2)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x65746144646E65)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEC00000073644979;
        if (v11 != 0x7261646E6F636573)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xED0000747865746ELL;
        if (v11 != 0x6F43686372616573)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xEA00000000007364;
      if (v11 != 5294388599723750000)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xEE00736449656369;
      if (v11 != 0x76654464656E776FLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE700000000000000;
    v3 = 0x6570795479656BLL;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_10076C2AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6465726F6E6769;
  if (a1 != 6)
  {
    v5 = 0x7265766F63736964;
    v4 = 0xEA00000000006465;
  }

  v6 = 0x6465676174736E75;
  if (a1 != 4)
  {
    v6 = 0x7761726468746977;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = 0xE800000000000000;
  }

  v7 = 0x796669746F6ELL;
  if (a1 != 2)
  {
    v7 = 0x657461647075;
  }

  v8 = 0x646567617473;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v7 = v8;
  }

  if (a1 <= 3u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 3)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x6465726F6E6769)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v11 = 0xEA00000000006465;
        if (v9 != 0x7265766F63736964)
        {
LABEL_45:
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (a2 == 4)
      {
        if (v9 != 0x6465676174736E75)
        {
          goto LABEL_45;
        }
      }

      else if (v9 != 0x7761726468746977)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    v11 = 0xE600000000000000;
    if (a2 == 2)
    {
      if (v9 != 0x796669746F6ELL)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 0x657461647075)
    {
      goto LABEL_45;
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x646567617473)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_10076C508(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726576726573;
    }

    else
    {
      v3 = 0x746C7561666564;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x73656C6F72;
  }

  else if (a1 == 3)
  {
    v3 = 0x6166654472657375;
    v4 = 0xEC00000073746C75;
  }

  else
  {
    v3 = 0x5365636976726573;
    v4 = 0xEF73676E69747465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x726576726573;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6166654472657375;
    v6 = 0xEC00000073746C75;
    if (a2 != 3)
    {
      v5 = 0x5365636976726573;
      v6 = 0xEF73676E69747465;
    }

    if (a2 == 2)
    {
      v7 = 0x73656C6F72;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10076C6AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6465726961706E75;
    }

    else
    {
      v4 = 0x64656B636F6CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x646572696170;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6465726961706E75;
  if (a2 != 2)
  {
    v8 = 0x64656B636F6CLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x646572696170;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10076C7DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696B6C6177;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6976697264;
    }

    else
    {
      v4 = 0x616E6F6974617473;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEA00000000007972;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696C637963;
    }

    else
    {
      v4 = 0x676E696B6C6177;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x676E6976697264;
  if (a2 != 2)
  {
    v7 = 0x616E6F6974617473;
    v6 = 0xEA00000000007972;
  }

  if (a2)
  {
    v2 = 0x676E696C637963;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10076C928(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6953726576726573;
    }

    else
    {
      v3 = 0x5364656573;
    }

    if (v2)
    {
      v4 = 0xEA00000000006E67;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6F43737574617473;
    v4 = 0xEA00000000006564;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7374726563;
    }

    else
    {
      v3 = 0x704164656B73616DLL;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xED00006449656C70;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6953726576726573;
    }

    else
    {
      v6 = 0x5364656573;
    }

    if (a2)
    {
      v5 = 0xEA00000000006E67;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000006564;
    if (v3 != 0x6F43737574617473)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7374726563)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xED00006449656C70;
    if (v3 != 0x704164656B73616DLL)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_10076CAE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 21072;
    }

    else
    {
      v3 = 65;
    }

    if (v2 == 2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 21840;
    }

    else
    {
      v3 = 68;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 68;
  v7 = 0xE200000000000000;
  v8 = 21072;
  if (a2 != 2)
  {
    v8 = 65;
    v7 = 0xE100000000000000;
  }

  if (a2)
  {
    v6 = 21840;
    v5 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}