char *sub_100176A84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = 0;
      v15 = BYTE6(a2);
      goto LABEL_8;
    }

    v14 = a1;
    v15 = a1 >> 32;
LABEL_7:
    if (v15 < v14)
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    goto LABEL_8;
  }

  v14 = 0;
  v15 = 0;
  if (v13 == 2)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    goto LABEL_7;
  }

LABEL_8:
  if (v14 > a3 || v15 <= a3)
  {
    goto LABEL_147;
  }

  v84 = v4;
  v85 = v12;
  v16 = a1 >> 32;
  v90 = BYTE6(a2);
  v6 = a1;
  v91 = _swiftEmptyArrayStorage;
  v83 = a3;
  v86 = v13;
  v87 = a2;
  v88 = a1;
  for (i = a1 >> 32; ; v16 = i)
  {
    if (v13 > 1)
    {
      if (v13 != 2)
      {

        if ((v83 & 0x8000000000000000) == 0)
        {
          goto LABEL_147;
        }

        __break(1u);
LABEL_96:
        sub_1000124C8(v30, v31);
        goto LABEL_146;
      }

      if (a3 >= *(a1 + 24))
      {
        goto LABEL_146;
      }
    }

    else
    {
      v21 = v90;
      if (v13)
      {
        v21 = v16;
      }

      if (a3 >= v21)
      {
        goto LABEL_146;
      }
    }

    if (v13 == 2)
    {
      if (a3 < *(a1 + 16))
      {
        goto LABEL_151;
      }

      if (a3 >= *(a1 + 24))
      {
        goto LABEL_153;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_168;
      }

      v23 = result;
      v3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = __DataStorage._offset.getter();
      v25 = a3 - v26;
      if (__OFSUB__(a3, v26))
      {
        goto LABEL_155;
      }

      goto LABEL_32;
    }

    if (v13 == 1)
    {
      break;
    }

    if (a3 >= v90)
    {
      goto LABEL_150;
    }

    v92[0] = v6;
    v92[1] = BYTE1(a1);
    v92[2] = BYTE2(a1);
    v92[3] = BYTE3(a1);
    v92[4] = BYTE4(a1);
    v92[5] = BYTE5(a1);
    v92[6] = BYTE6(a1);
    v92[7] = HIBYTE(a1);
    v93 = a2;
    v94 = BYTE2(a2);
    v95 = BYTE3(a2);
    v96 = BYTE4(a2);
    v97 = BYTE5(a2);
    v5 = v92[a3];
    v27 = a3 + 1;
    if (!v92[a3])
    {
      return v91;
    }

LABEL_36:
    if (v5 > 0x3F)
    {
      v98 = v91;
      if (v5 < 0xC0)
      {
        return v91;
      }

      if (v13)
      {
        v52 = v16;
        v53 = v6;
        if (v13 == 2)
        {
          v53 = *(a1 + 16);
          v52 = *(a1 + 24);
        }
      }

      else
      {
        v52 = v90;
        v53 = v86;
      }

      if (v52 < a3 || v52 < v53)
      {
        __break(1u);
      }

      else
      {
        v54 = Data._Representation.subscript.getter();
        v44 = v55;
        v56 = v84;
        v57 = sub_100037568(v54, v55);
        v6 = v56;
        if (v56)
        {

          v58 = v54;
          goto LABEL_108;
        }

        v3 = v57;
        sub_1000124C8(v54, v44);
        v44 = sub_10004AF78(a3, 2, a1, a2);
        v53 = v90;
        v5 = v83;
        if (!v13)
        {
LABEL_112:
          v28 = bswap32(v3 & 0xFFFFFF3F) >> 16;
          if (v53 > v28)
          {
            switch(v28)
            {
              case 0x1C:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v91 = sub_100115F7C(0, *(v91 + 2) + 1, 1, v91);
                }

                v64 = *(v91 + 2);
                v53 = *(v91 + 3);
                v65 = v53 >> 1;
                v3 = v64 + 1;
                if (v53 >> 1 <= v64)
                {
                  v91 = sub_100115F7C((v53 > 1), v64 + 1, 1, v91);
                  v53 = *(v91 + 3);
                  v65 = v53 >> 1;
                }

                v72 = v91;
                *(v91 + 2) = v3;
                v73 = &v72[16 * v64];
                *(v73 + 4) = 7365749;
                *(v73 + 5) = 0xE300000000000000;
                break;
              case 0x11:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v91 = sub_100115F7C(0, *(v91 + 2) + 1, 1, v91);
                }

                v69 = *(v91 + 2);
                v68 = *(v91 + 3);
                if (v69 >= v68 >> 1)
                {
                  v91 = sub_100115F7C((v68 > 1), v69 + 1, 1, v91);
                }

                v70 = v91;
                *(v91 + 2) = v69 + 1;
                v71 = &v70[16 * v69];
                goto LABEL_133;
              case 0xC:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v91 = sub_100115F7C(0, *(v91 + 2) + 1, 1, v91);
                }

                v64 = *(v91 + 2);
                v53 = *(v91 + 3);
                v65 = v53 >> 1;
                v3 = v64 + 1;
                if (v53 >> 1 <= v64)
                {
                  v91 = sub_100115F7C((v53 > 1), v64 + 1, 1, v91);
                  v53 = *(v91 + 3);
                  v65 = v53 >> 1;
                }

                v66 = v91;
                *(v91 + 2) = v3;
                v67 = &v66[16 * v64];
                *(v67 + 4) = 7365492;
                *(v67 + 5) = 0xE300000000000000;
                break;
              default:
                if (v13)
                {
                  v75 = v88;
                  if (v13 == 2)
                  {
                    v75 = *(a1 + 16);
                  }

LABEL_142:
                  if (sub_10004AF78(v75, v28, a1, a2) < v5)
                  {
                    if (v13)
                    {
                      result = v88;
                      if (v13 == 2)
                      {
                        result = *(a1 + 16);
                        v16 = *(a1 + 24);
                      }

                      goto LABEL_159;
                    }

LABEL_158:
                    v16 = v90;
                    result = v86;
LABEL_159:
                    if (v16 < result || result > v5)
                    {
                      goto LABEL_169;
                    }

                    v77 = Data._Representation.subscript.getter();
                    v79 = v78;
                    v80 = sub_100176A84();
                    if (v6)
                    {

                      v58 = v77;
                      v63 = v79;
LABEL_109:
                      sub_1000124C8(v58, v63);
                    }

                    else
                    {
                      v81 = v80;
                      sub_1000124C8(v77, v79);
                      sub_1002350D4(v81);
                      return v98;
                    }

                    return v91;
                  }

                  goto LABEL_146;
                }

LABEL_141:
                v75 = v86;
                goto LABEL_142;
            }

            v5 = v64 + 2;
            if (v65 >= (v64 + 2))
            {
LABEL_132:
              v74 = v91;
              *(v91 + 2) = v5;
              v71 = &v74[16 * v3];
LABEL_133:
              *(v71 + 4) = 0x6C61636F6CLL;
              *(v71 + 5) = 0xE500000000000000;
              return v91;
            }

LABEL_166:
            v91 = sub_100115F7C((v53 > 1), v5, 1, v91);
            goto LABEL_132;
          }

LABEL_146:

LABEL_147:
          sub_10000B02C();
          swift_allocError();
          *v76 = 0;
          *(v76 + 8) = 0;
          *(v76 + 16) = 2;
          swift_willThrow();
          return v91;
        }

        if (v13 == 2)
        {
          v60 = *(a1 + 16);
          v59 = *(a1 + 24);
          v61 = __OFSUB__(v59, v60);
          v53 = v59 - v60;
          if (v61)
          {
            __break(1u);
LABEL_107:

            sub_10000B02C();
            swift_allocError();
            *v62 = xmmword_10047CE70;
            *(v62 + 16) = 2;
            swift_willThrow();
            v58 = v3;
LABEL_108:
            v63 = v44;
            goto LABEL_109;
          }

          goto LABEL_112;
        }

        v53 = (HIDWORD(a1) - a1);
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v53 = v53;
          goto LABEL_112;
        }
      }

      __break(1u);
      goto LABEL_166;
    }

    if (v13)
    {
      v28 = v16;
      v29 = v6;
      if (v13 == 2)
      {
        v29 = *(a1 + 16);
        v28 = *(a1 + 24);
      }
    }

    else
    {
      v28 = v90;
      v29 = v86;
    }

    if (v28 <= a3 || v28 < v29)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v30 = Data._Representation.subscript.getter();
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_96;
      }

      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      sub_1000124C8(v30, v31);
      v34 = v35 - v36;
      if (__OFSUB__(v35, v36))
      {
        goto LABEL_157;
      }
    }

    else
    {
      if (!v32)
      {
        v33 = BYTE6(v31);
        sub_1000124C8(v30, v31);
        v34 = v33;
        goto LABEL_53;
      }

      v37 = HIDWORD(v30);
      v38 = v30;
      sub_1000124C8(v30, v31);
      LODWORD(v34) = v37 - v38;
      if (__OFSUB__(v37, v38))
      {
        goto LABEL_156;
      }

      v34 = v34;
    }

    v16 = i;
LABEL_53:
    if (v34 < v5)
    {
      goto LABEL_146;
    }

    v39 = v27 + v5;
    if (__OFADD__(v27, v5))
    {
      goto LABEL_138;
    }

    if (v13)
    {
      v40 = v16;
      v41 = v6;
      if (v13 == 2)
      {
        v41 = *(a1 + 16);
        v40 = *(a1 + 24);
      }
    }

    else
    {
      v40 = v90;
      v41 = v86;
    }

    if (v40 < v39 || v39 < v41)
    {
      goto LABEL_139;
    }

    if (v13 > 1)
    {
      v42 = *(a1 + 24);
    }

    else
    {
      v42 = v90;
      if (v13)
      {
        v42 = v16;
      }
    }

    if (v42 < v39)
    {
      goto LABEL_146;
    }

    if (v39 <= a3)
    {
      goto LABEL_140;
    }

    a3 = v27 + v5;
    v3 = Data._Representation.subscript.getter();
    v44 = v43;
    if (sub_100177F04(0x11u, v3, v43))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_100115F7C(0, *(v91 + 2) + 1, 1, v91);
      }

      v46 = *(v91 + 2);
      v45 = *(v91 + 3);
      v5 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v91 = sub_100115F7C((v45 > 1), v46 + 1, 1, v91);
      }

      v17 = 0xE500000000000000;
      v18 = 0x6C61636F6CLL;
    }

    else if (sub_100177F04(0xCu, v3, v44))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_100115F7C(0, *(v91 + 2) + 1, 1, v91);
      }

      v46 = *(v91 + 2);
      v47 = *(v91 + 3);
      v5 = v46 + 1;
      if (v46 >= v47 >> 1)
      {
        v91 = sub_100115F7C((v47 > 1), v46 + 1, 1, v91);
      }

      v17 = 0xE300000000000000;
      v18 = 7365492;
    }

    else if (sub_100177F04(0x1Cu, v3, v44))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_100115F7C(0, *(v91 + 2) + 1, 1, v91);
      }

      v46 = *(v91 + 2);
      v48 = *(v91 + 3);
      v5 = v46 + 1;
      v18 = 7365749;
      if (v46 >= v48 >> 1)
      {
        v91 = sub_100115F7C((v48 > 1), v46 + 1, 1, v91);
      }

      v17 = 0xE300000000000000;
    }

    else
    {
      static String.Encoding.utf8.getter();
      v49 = String.init(data:encoding:)();
      if (!v50)
      {
        goto LABEL_107;
      }

      v18 = v49;
      v17 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_100115F7C(0, *(v91 + 2) + 1, 1, v91);
      }

      v46 = *(v91 + 2);
      v51 = *(v91 + 3);
      v5 = v46 + 1;
      if (v46 >= v51 >> 1)
      {
        v91 = sub_100115F7C((v51 > 1), v46 + 1, 1, v91);
      }
    }

    sub_1000124C8(v3, v44);
    v19 = v91;
    *(v91 + 2) = v5;
    v20 = &v19[16 * v46];
    *(v20 + 4) = v18;
    *(v20 + 5) = v17;
    a2 = v87;
    v6 = v88;
  }

  if (a3 < v6 || a3 >= v16)
  {
    goto LABEL_152;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v23 = result;
    v3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v24 = __DataStorage._offset.getter();
    v25 = a3 - v24;
    if (__OFSUB__(a3, v24))
    {
      goto LABEL_154;
    }

LABEL_32:
    v5 = v23[v25];
    v27 = a3 + 1;
    if (!v5)
    {
      return v91;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
  return result;
}

uint64_t sub_100177558@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6[2] != 4)
  {
    goto LABEL_11;
  }

  if (v6[10] == 0x6C61636F6CLL && v6[11] == 0xE500000000000000)
  {
    goto LABEL_9;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = v6[2];
  if (!v9)
  {
    goto LABEL_11;
  }

  if (v9 >= 3)
  {
LABEL_9:
    v11 = v6[4];
    v10 = v6[5];
    v12 = v6[8];
    v13 = v6[9];

    v14 = _s7CoreP2P14Layer3ProtocolO8dnsLabelACSgSS_tcfC_0(v12, v13);
    if (v14 == 2)
    {

LABEL_11:
      sub_10000B02C();
      swift_allocError();
      *v15 = xmmword_10047CE70;
      *(v15 + 16) = 2;
      return swift_willThrow();
    }

    v16 = v14;
    result = swift_beginAccess();
    v17 = *(a1 + 16);
    if (v17[2] >= 2uLL)
    {
      v19 = v17[6];
      v18 = v17[7];
      *a3 = v11;
      *(a3 + 8) = v10;
      *(a3 + 16) = v19;
      *(a3 + 24) = v18;
      *(a3 + 32) = v16 & 1;
      *(a3 + 33) = a2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DNSRecords.RecordType.description.getter(char a1)
{
  v2._countAndFlagsBits = sub_100177788(a1);
  String.append(_:)(v2);

  v3._countAndFlagsBits = 91;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v7 = word_10048F68A[a1];
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 10077;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  return 39;
}

uint64_t sub_100177788(char a1)
{
  result = 0x73736572646441;
  switch(a1)
  {
    case 1:
      result = 0x72655320656D614ELL;
      break;
    case 2:
    case 12:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x726F46206C69614DLL;
      break;
    case 4:
      result = 0x6163696E6F6E6143;
      break;
    case 5:
    case 10:
    case 16:
    case 23:
    case 25:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x786F626C69614DLL;
      break;
    case 7:
      result = 0x6F7247206C69614DLL;
      break;
    case 8:
      result = 0x6E6552206C69614DLL;
      break;
    case 9:
      result = 0x5252204C4C554ELL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x637845206C69614DLL;
      break;
    case 15:
    case 53:
    case 60:
      result = 0xD000000000000015;
      break;
    case 17:
    case 42:
      result = 0xD000000000000011;
      break;
    case 18:
    case 19:
    case 28:
    case 36:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x726574756F52;
      break;
    case 21:
      v3 = 0x61205041534ELL;
      goto LABEL_25;
    case 22:
      result = 0xD000000000000020;
      break;
    case 24:
      result = 0x7974697275636553;
      break;
    case 26:
      result = 0xD000000000000021;
      break;
    case 27:
      v3 = 0x412036765049;
LABEL_25:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6464000000000000;
      break;
    case 29:
    case 40:
    case 48:
    case 51:
      result = 0xD000000000000016;
      break;
    case 30:
      result = 0xD000000000000013;
      break;
    case 31:
      result = 0x4C20646F726D694ELL;
      break;
    case 32:
    case 52:
      result = 0x2065636976726553;
      break;
    case 33:
      result = 0x72646441204D5441;
      break;
    case 34:
    case 63:
      result = 0xD000000000000018;
      break;
    case 35:
      result = 0x686378452079654BLL;
      break;
    case 37:
    case 61:
      result = 0xD000000000000019;
      break;
    case 38:
      result = 0xD00000000000001DLL;
      break;
    case 39:
    case 64:
      result = 0xD00000000000001BLL;
      break;
    case 41:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD000000000000013;
      break;
    case 44:
      result = 0x59454B4345535049;
      break;
    case 45:
      result = 0x4749535252;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0x59454B534E44;
      break;
    case 49:
    case 50:
      result = 0xD000000000000028;
      break;
    case 54:
      result = 0xD000000000000022;
      break;
    case 55:
    case 56:
    case 57:
    case 58:
      result = 0x7365522D414E4149;
      break;
    case 59:
      result = 0x746361736E617254;
      break;
    case 62:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100177D8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048F68A[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100177E14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048F68A[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100177E60@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P10DNSRecordsO10RecordTypeO8rawValueAESgs6UInt16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100177EAC()
{
  result = sub_10002D874(&off_100552FD0);
  qword_10058EEA8 = result;
  unk_10058EEB0 = v1;
  return result;
}

uint64_t sub_100177ED8()
{
  result = sub_10002D874(&off_100552FA8);
  qword_10058EEB8 = result;
  unk_10058EEC0 = v1;
  return result;
}

uint64_t sub_100177F04(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  if (qword_10058A878 != -1)
  {
    swift_once();
  }

  v6 = qword_10058EEB0 >> 62;
  if ((qword_10058EEB0 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(qword_10058EEA8 + 16);
    }
  }

  else if (v6)
  {
    v7 = qword_10058EEA8;
  }

  else
  {
    v7 = 0;
  }

  result = sub_10004AF78(v7, a1 + 1, qword_10058EEA8, qword_10058EEB0);
  v9 = result;
  v10 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a3);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_19;
  }

  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_16:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v11 = HIDWORD(a2) - a2;
  }

LABEL_19:
  v14 = qword_10058EEB0 >> 62;
  if ((qword_10058EEB0 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(qword_10058EEA8 + 16);
      v15 = *(qword_10058EEA8 + 24);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    if (v14)
    {
      v15 = qword_10058EEA8 >> 32;
    }

    else
    {
      v15 = BYTE6(qword_10058EEB0);
    }

    if (v14)
    {
      v16 = qword_10058EEA8;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v15 < result || v15 < v16)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v17 = Data._Representation.subscript.getter();
  v19 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (v19)
    {
      v26 = HIDWORD(v17);
      v27 = v17;
      result = sub_1000124C8(v17, v18);
      if (__OFSUB__(v26, v27))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v26 - v27 < v11)
      {
        return 0;
      }
    }

    else
    {
      v20 = BYTE6(v18);
      result = sub_1000124C8(v17, v18);
      if (v20 < v11)
      {
        return 0;
      }
    }

    goto LABEL_38;
  }

  if (v19 != 2)
  {
    result = sub_1000124C8(v17, v18);
    if (v11 <= 0)
    {
      goto LABEL_38;
    }

    return 0;
  }

  v22 = *(v17 + 16);
  v21 = *(v17 + 24);
  result = sub_1000124C8(v17, v18);
  if (__OFSUB__(v21, v22))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v21 - v22 < v11)
  {
    return 0;
  }

LABEL_38:
  v23 = qword_10058EEA8;
  v24 = qword_10058EEB0;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v29 = *(a2 + 16);
      v28 = *(a2 + 24);
      v25 = v28 - v29;
      if (__OFSUB__(v28, v29))
      {
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_53:
    result = sub_10004AF78(v9, v25, v23, v24);
    if (result >= v9)
    {
      v30 = Data._Representation.subscript.getter();
      v32 = v31;
      v33 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, v30, v31);
      sub_1000124C8(v30, v32);
      return v33 & 1;
    }

    goto LABEL_56;
  }

  if (!v10)
  {
    v25 = BYTE6(a3);
    goto LABEL_53;
  }

LABEL_50:
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v25 = HIDWORD(a2) - a2;
    goto LABEL_53;
  }

LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_10017819C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 == 0x79616C707269615FLL && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_beginAccess();
    v8 = *(a3 + 48);
    sub_100031694(a3 + 16, *(a3 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a1 != 0x706F61725FLL || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((a1 != 0x706F72647269615FLL || a2 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        swift_beginAccess();
        v14 = *(a3 + 48);
        sub_100031694(a3 + 16, *(a3 + 40));
        v15._countAndFlagsBits = a1;
        v15._object = a2;
        UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v15);
        return swift_endAccess();
      }

      swift_beginAccess();
      v12 = *(a3 + 48);
      sub_100031694(a3 + 16, *(a3 + 40));
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (v3)
      {
        return swift_endAccess();
      }

      swift_endAccess();
      swift_beginAccess();
      v13 = *(a3 + 48);
      sub_100031694(a3 + 16, *(a3 + 40));
LABEL_8:
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      return swift_endAccess();
    }

    swift_beginAccess();
    v11 = *(a3 + 48);
    sub_100031694(a3 + 16, *(a3 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (!v3)
    {
LABEL_7:
      swift_beginAccess();
      v10 = *(a3 + 48);
      sub_100031694(a3 + 16, *(a3 + 40));
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100178468(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 48);
    sub_100031694(a2 + 16, *(a2 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = *(a2 + 48);
    sub_100031694(a2 + 16, *(a2 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (v2)
    {
      return result;
    }
  }

  swift_beginAccess();
  v7 = *(a2 + 48);
  sub_100031694(a2 + 16, *(a2 + 40));
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  return swift_endAccess();
}

uint64_t sub_1001785BC(uint64_t a1, void *a2, __int16 a3, uint64_t a4)
{
  if (sub_100178C7C(0x79616C707269615FLL, 0xE800000000000000, 256, a1, a2, a3 & 0xFF01) || sub_100178C7C(0x79616C707269615FLL, 0xE800000000000000, 257, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    v9 = *(a4 + 48);
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (v4)
    {
      return result;
    }

    swift_beginAccess();
    v11 = *(a4 + 48);
    sub_100031694(a4 + 16, *(a4 + 40));
    goto LABEL_5;
  }

  if (sub_100178C7C(0x706F61725FLL, 0xE500000000000000, 256, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    v12 = *(a4 + 48);
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v4)
    {
      return swift_endAccess();
    }

    goto LABEL_19;
  }

  if (sub_100178C7C(0x706F61725FLL, 0xE500000000000000, 257, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    v13 = *(a4 + 48);
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v4)
    {
      return swift_endAccess();
    }

    goto LABEL_19;
  }

  if (sub_100178C7C(0x706F72647269615FLL, 0xE800000000000000, 256, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    v14 = *(a4 + 48);
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v4)
    {
      return swift_endAccess();
    }

    goto LABEL_19;
  }

  if (sub_100178C7C(0x706F72647269615FLL, 0xE800000000000000, 257, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    v15 = *(a4 + 48);
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v4)
    {
      return swift_endAccess();
    }

LABEL_19:
    swift_endAccess();
    swift_beginAccess();
    v16 = *(a4 + 48);
    sub_100031694(a4 + 16, *(a4 + 40));
LABEL_5:
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    return swift_endAccess();
  }

  result = sub_10017819C(a1, a2, a4);
  if (!v4)
  {
    return sub_100178468(a3 & 1, a4);
  }

  return result;
}

void *sub_1001789AC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100178A18(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100178B50(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_100178B50(v3, v4);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_100178B50(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100178C2C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_100178C7C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  sub_10005E2E4();
  if (StringProtocol.caseInsensitiveCompare<A>(_:)())
  {
    return 0;
  }

  if (a3)
  {
    v9 = 7365749;
  }

  else
  {
    v9 = 7365492;
  }

  if (a6)
  {
    v10 = 7365749;
  }

  else
  {
    v10 = 7365492;
  }

  if (v9 == v10)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return (a6 ^ a3) < 0x100u;
}

BOOL _s7CoreP2P10DNSRecordsO3SRVV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  v18 = a1[2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v21 = *a1;
  v22 = a1[1];
  v19 = *a2;
  v20 = a2[1];
  sub_10005E2E4();
  if (StringProtocol.caseInsensitiveCompare<A>(_:)())
  {
    return 0;
  }

  if (!sub_100178C7C(v18, v4, v5 | (v6 << 8), v7, v8, v9 | (v10 << 8)))
  {
    return 0;
  }

  v11 = type metadata accessor for DNSRecords.SRV();
  v12 = v11[5];
  type metadata accessor for NWEndpoint.Port();
  sub_100034900(&qword_10058CF60, &type metadata accessor for NWEndpoint.Port);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v21 != v19)
  {
    return 0;
  }

  v13 = v11[6];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  if ((v14 != *v16 || v15 != v16[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v11[7]) == *(a2 + v11[7]) && *(a1 + v11[8]) == *(a2 + v11[8]);
}

uint64_t sub_100178EFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_100178F78(uint64_t a1, unint64_t a2)
{
  v8 = xmmword_100480A90;
  result = sub_1001715D8(a1, a2, &v8);
  if (qword_10058A878 != -1)
  {
    result = swift_once();
  }

  v3 = qword_10058EEA8;
  v4 = unk_10058EEB0 >> 62;
  if ((unk_10058EEB0 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    v3 = *(qword_10058EEA8 + 16);
    v5 = *(qword_10058EEA8 + 24);
    result = v5 - v3;
    if (!__OFSUB__(v5, v3))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    result = HIWORD(unk_10058EEB0);
LABEL_16:
    sub_100171A18(result, &v8);
    return v8;
  }

  v6 = __OFSUB__(HIDWORD(v3), v3);
  v7 = HIDWORD(v3) - v3;
  if (v6)
  {
    goto LABEL_18;
  }

  result = v7;
LABEL_12:
  if ((result & 0x8000000000000000) == 0)
  {
    if (result <= 0xFF)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    LOBYTE(result) = 0;
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10017904C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001790B4()
{
  result = qword_10058EEC8;
  if (!qword_10058EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EEC8);
  }

  return result;
}

unint64_t sub_10017910C()
{
  result = qword_10058EED0;
  if (!qword_10058EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EED0);
  }

  return result;
}

unint64_t sub_100179164()
{
  result = qword_10058EED8;
  if (!qword_10058EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EED8);
  }

  return result;
}

unint64_t sub_1001791BC()
{
  result = qword_10058EEE0;
  if (!qword_10058EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EEE0);
  }

  return result;
}

unint64_t sub_10017925C()
{
  result = qword_10058EEF0;
  if (!qword_10058EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EEF0);
  }

  return result;
}

unint64_t sub_1001792B4()
{
  result = qword_10058EEF8;
  if (!qword_10058EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EEF8);
  }

  return result;
}

unint64_t sub_10017930C()
{
  result = qword_10058EF00;
  if (!qword_10058EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EF00);
  }

  return result;
}

unint64_t sub_100179364()
{
  result = qword_10058EF08;
  if (!qword_10058EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EF08);
  }

  return result;
}

__n128 sub_1001793C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001793DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100179424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100179478(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

__n128 sub_1001794AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001794C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100179510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100179594()
{
  result = type metadata accessor for NWEndpoint.Port();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100179624(uint64_t a1, uint64_t a2)
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

__n128 sub_100179648(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10017965C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001796B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100179720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100179768(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DNSRecords.RecordType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DNSRecords.RecordType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
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
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100179918(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10017992C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100179974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1001799D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1001789AC(sub_100179A38, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100179A58()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100179AB0(char a1, void *a2, char a3)
{

  return sub_100052AD8(a1, a2, a3);
}

Swift::Int DNSRecords.ARPA.hashValue.getter()
{

  return DNSRecords.AAAA.hashValue.getter();
}

void DNSRecords.ARPA.hash(into:)()
{

  DNSRecords.AAAA.hash(into:)();
}

uint64_t sub_100179BC4(char a1, void *a2)
{

  return sub_10005287C(a1, a2);
}

uint64_t sub_100179C20(uint64_t a1, unint64_t a2, void *a3)
{

  return sub_100052824(a1, a2, a3);
}

uint64_t AWDLIdleActivity.init(durationSinceLastUnicastTx:durationSinceLastUnicastRx:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DispatchTimeInterval();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for AWDLIdleActivity(0) + 20);

  return v9(v7, a2, v6);
}

__n128 NANOOBFrameReceivedEvent.init(peerAddress:localAddress:frame:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v5[20] = *(a3 + 16);
  *&v5[4] = *a3;
  v5[36] = *(a3 + 32);
  *a4 = a1;
  *(a4 + 2) = BYTE2(a1);
  *(a4 + 3) = BYTE3(a1);
  *(a4 + 4) = BYTE4(a1);
  *(a4 + 5) = BYTE5(a1);
  *(a4 + 6) = a2;
  *(a4 + 8) = BYTE2(a2);
  *(a4 + 9) = BYTE3(a2);
  *(a4 + 10) = BYTE4(a2);
  *(a4 + 11) = BYTE5(a2);
  result = *v5;
  *(a4 + 41) = *&v5[29];
  *(a4 + 28) = *&v5[16];
  *(a4 + 12) = *v5;
  return result;
}

uint64_t AWDLSoftAPChannelChangedEvent.init(enabled:channel:)(char a1, int a2)
{
  LOBYTE(v3) = a1;
  HIDWORD(v3) = a2;
  return v3;
}

Swift::Int NANClusterChangeEvent.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_100179F80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void sub_10017A030()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_10017A0B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

BOOL static NANRoleChangeEvent.__derived_struct_equals(_:_:)(int a1, uint64_t a2, int a3, uint64_t a4)
{
  switch(a1)
  {
    case 2u:
      if (a3 != 2)
      {
        return 0;
      }

      break;
    case 3u:
      if (a3 != 3)
      {
        return 0;
      }

      break;
    case 4u:
      if (a3 != 4)
      {
        return 0;
      }

      break;
    default:
      if ((a3 - 2) < 3u)
      {
        return 0;
      }

      if ((a3 ^ a1))
      {
        return 0;
      }

      break;
  }

  return a2 == a4;
}

void NANRoleChangeEvent.hash(into:)(uint64_t a1, char a2, Swift::UInt a3)
{
  switch(a2)
  {
    case 2:
      v4 = 0;
      break;
    case 3:
      v4 = 1;
      break;
    case 4:
      v4 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a2 & 1);
      goto LABEL_9;
  }

  Hasher._combine(_:)(v4);
LABEL_9:
  Hasher._combine(_:)(a3);
}

Swift::Int NANRoleChangeEvent.hashValue.getter(char a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  switch(a1)
  {
    case 2:
      v4 = 0;
      break;
    case 3:
      v4 = 1;
      break;
    case 4:
      v4 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a1 & 1);
      goto LABEL_9;
  }

  Hasher._combine(_:)(v4);
LABEL_9:
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void sub_10017A384()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  switch(v1)
  {
    case 2:
      v3 = 0;
      break;
    case 3:
      v3 = 1;
      break;
    case 4:
      v3 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1 & 1);
      goto LABEL_9;
  }

  Hasher._combine(_:)(v3);
LABEL_9:
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10017A404()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 2:
      v3 = 0;
      break;
    case 3:
      v3 = 1;
      break;
    case 4:
      v3 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1 & 1);
      goto LABEL_9;
  }

  Hasher._combine(_:)(v3);
LABEL_9:
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_10017A4A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      if (v3 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v3 != 3)
      {
        return 0;
      }

      break;
    case 4:
      if (v3 != 4)
      {
        return 0;
      }

      break;
    default:
      if ((v3 - 2) < 3)
      {
        return 0;
      }

      if ((v3 ^ v2))
      {
        return 0;
      }

      break;
  }

  return *(a1 + 1) == *(a2 + 1);
}

Swift::Int sub_10017A5A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v9, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017A628(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  Hasher.init(_seed:)();
  a3(v9, v5, v6, v7);
  return Hasher._finalize()();
}

Swift::Int sub_10017A6A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  Hasher.init(_seed:)();
  a4(v10, v6, v7, v8);
  return Hasher._finalize()();
}

void NANDataResponseReceivedEvent.hash(into:)(__int128 *a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v8 = a2 >> 8;
  v9 = a2 >> 16;
  v10 = a2 >> 24;
  v11 = HIDWORD(a2);
  v12 = a2 >> 40;
  v13 = HIWORD(a2);
  *v18 = HIBYTE(a2);
  *v19 = a3 >> 8;
  *v20 = a3 >> 16;
  *v21 = a3 >> 24;
  *v22 = HIDWORD(a3);
  *v23 = a3 >> 40;
  *v24 = HIWORD(a3);
  *v25 = HIBYTE(a3);
  *v26 = a4 >> 8;
  *v27 = HIWORD(a4);
  *v28 = HIBYTE(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v18[0]);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v19[0]);
  Hasher._combine(_:)(v20[0]);
  Hasher._combine(_:)(v21[0]);
  Hasher._combine(_:)(v22[0]);
  Hasher._combine(_:)(v23[0]);
  Hasher._combine(_:)(v24[0]);
  Hasher._combine(_:)(v25[0]);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v26[0]);
  Hasher._combine(_:)(v27[0]);
  Hasher._combine(_:)(v28[0]);
  v14 = *(a5 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = *(type metadata accessor for NANAttribute(0) - 8);
    v16 = a5 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v16 += v17;
      --v14;
    }

    while (v14);
  }
}

Swift::Int NANDataResponseReceivedEvent.hashValue.getter(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  NANDataResponseReceivedEvent.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_10017AA04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  NANDataResponseReceivedEvent.hash(into:)(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_10017AA78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  NANDataResponseReceivedEvent.hash(into:)(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

void sub_10017AB24(__int128 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = a2 >> 8;
  v8 = a2 >> 16;
  v9 = a2 >> 24;
  v10 = HIDWORD(a2);
  v11 = a2 >> 40;
  v12 = HIWORD(a2);
  *v17 = HIBYTE(a2);
  *v18 = a3 >> 8;
  *v19 = a3 >> 16;
  *v20 = a3 >> 24;
  *v21 = HIDWORD(a3);
  *v22 = a3 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v18[0]);
  Hasher._combine(_:)(v19[0]);
  Hasher._combine(_:)(v20[0]);
  Hasher._combine(_:)(v21[0]);
  Hasher._combine(_:)(v22[0]);
  v13 = *(a4 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = *(type metadata accessor for NANAttribute(0) - 8);
    v15 = a4 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v15 += v16;
      --v13;
    }

    while (v13);
  }
}

Swift::Int sub_10017ACB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v9, a1, a2 & 0xFFFFFFFFFFFFLL, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017AD38(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = *(v3 + 2);
  v7 = *(v3 + 12);
  v8 = *(v3 + 13);
  v9 = v3[2];
  Hasher.init(_seed:)();
  a3(v11, v5, v6 | (v7 << 32) | (v8 << 40), v9);
  return Hasher._finalize()();
}

Swift::Int sub_10017AE0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 2);
  v8 = *(v4 + 12);
  v9 = *(v4 + 13);
  v10 = v4[2];
  Hasher.init(_seed:)();
  a4(v12, v6, v7 | (v8 << 32) | (v9 << 40), v10);
  return Hasher._finalize()();
}

void NANDataEstablishedEvent.hash(into:)(int a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  String.hash(into:)();

  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(BYTE1(a3));
  Hasher._combine(_:)(BYTE2(a3));
  Hasher._combine(_:)(BYTE3(a3));
  Hasher._combine(_:)(BYTE4(a3));
  Hasher._combine(_:)(BYTE5(a3));
}

Swift::Int NANDataEstablishedEvent.hashValue.getter(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  String.hash(into:)();

  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(BYTE1(a2));
  Hasher._combine(_:)(BYTE2(a2));
  Hasher._combine(_:)(BYTE3(a2));
  Hasher._combine(_:)(BYTE4(a2));
  Hasher._combine(_:)(BYTE5(a2));
  return Hasher._finalize()();
}

Swift::Int sub_10017B18C()
{
  v1 = 0x100000000000000;
  if ((*(v0 + 7) & 1) == 0)
  {
    v1 = 0;
  }

  return NANDataEstablishedEvent.hashValue.getter(*v0 | (*(v0 + 4) << 32) | (*(v0 + 5) << 40) | (*(v0 + 6) << 48) | v1, v0[2] | (*(v0 + 12) << 32) | (*(v0 + 13) << 40));
}

void sub_10017B1D4(int a1)
{
  v2 = 0x100000000000000;
  if ((*(v1 + 7) & 1) == 0)
  {
    v2 = 0;
  }

  NANDataEstablishedEvent.hash(into:)(a1, *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40) | (*(v1 + 6) << 48) | v2, v1[2] | (*(v1 + 12) << 32) | (*(v1 + 13) << 40));
}

Swift::Int sub_10017B21C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = v0[2];
  v7 = *(v0 + 12);
  v8 = *(v0 + 13);
  Hasher.init(_seed:)();
  v9 = 0x100000000000000;
  if ((v5 & 1) == 0)
  {
    v9 = 0;
  }

  NANDataEstablishedEvent.hash(into:)(&v11, v1 | (v2 << 32) | (v3 << 40) | (v4 << 48) | v9, v6 | (v7 << 32) | (v8 << 40));
  return Hasher._finalize()();
}

BOOL sub_10017B2B4(unsigned int *a1, unsigned int *a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a2 + 7) & 1) == 0)
  {
    v2 = 0;
  }

  return sub_100180FF8(*a1 | (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48) | v3, a1[2] | (*(a1 + 12) << 32) | (*(a1 + 13) << 40), *a2 | (*(a2 + 4) << 32) | (*(a2 + 5) << 40) | (*(a2 + 6) << 48) | v2, a2[2] | (*(a2 + 12) << 32) | (*(a2 + 13) << 40));
}

void NANDataTerminationEvent.hash(into:)(int a1, unint64_t a2, Swift::UInt a3, Swift::UInt8 a4)
{
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v8 = a2 >> 24;
  v9 = HIDWORD(a2);
  v10 = a2 >> 40;
  v11 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  String.hash(into:)();

  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int NANDataTerminationEvent.hashValue.getter(unint64_t a1, Swift::UInt a2, Swift::UInt8 a3)
{
  v5 = a1;
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  v9 = HIDWORD(a1);
  v10 = a1 >> 40;
  v11 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  String.hash(into:)();

  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017B57C()
{
  v1 = 0x100000000000000;
  if ((*(v0 + 7) & 1) == 0)
  {
    v1 = 0;
  }

  return NANDataTerminationEvent.hashValue.getter(*v0 | (*(v0 + 4) << 32) | (*(v0 + 5) << 40) | (*(v0 + 6) << 48) | v1, *(v0 + 1), *(v0 + 16));
}

void sub_10017B5B8()
{
  v1 = *(v0 + 7);
  v2 = *(v0 + 8);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  v9 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  String.hash(into:)();

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v9);
}

Swift::Int sub_10017B6B4()
{
  v1 = *(v0 + 7);
  v11 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  v9 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  String.hash(into:)();

  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

BOOL sub_10017B7EC(unsigned int *a1, unsigned int *a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a2 + 7) & 1) == 0)
  {
    v2 = 0;
  }

  return sub_100181D00(*a1 | (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48) | v3, *(a1 + 1), *(a1 + 16), *a2 | (*(a2 + 4) << 32) | (*(a2 + 5) << 40) | (*(a2 + 6) << 48) | v2, *(a2 + 1), *(a2 + 16));
}

void NANDataHostAssistRequest.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  *v13 = a3 >> 8;
  *v14 = a3 >> 16;
  *v15 = a3 >> 24;
  *v16 = HIDWORD(a3);
  *v17 = a3 >> 40;
  v11 = BYTE6(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  if (v11 == 15)
  {
    v12 = 0;
LABEL_6:
    Hasher._combine(_:)(v12);
    goto LABEL_7;
  }

  Hasher._combine(_:)(1u);
  if (v11 != 14)
  {
    Hasher._combine(_:)(1uLL);
    v12 = byte_100491A74[SBYTE6(a3)];
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
LABEL_7:
  Hasher._combine(_:)(HIBYTE(a3));
}

Swift::Int NANDataHostAssistRequest.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  *v13 = HIBYTE(a1);
  *v14 = a2 >> 8;
  *v15 = a2 >> 16;
  *v16 = a2 >> 24;
  *v17 = HIDWORD(a2);
  *v18 = a2 >> 40;
  v10 = BYTE6(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v18[0]);
  if (v10 == 15)
  {
    v11 = 0;
LABEL_6:
    Hasher._combine(_:)(v11);
    goto LABEL_7;
  }

  Hasher._combine(_:)(1u);
  if (v10 != 14)
  {
    Hasher._combine(_:)(1uLL);
    v11 = byte_100491A74[SBYTE6(a2)];
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
LABEL_7:
  Hasher._combine(_:)(HIBYTE(a2));
  return Hasher._finalize()();
}

Swift::Int sub_10017BB84()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  NANDataHostAssistRequest.hash(into:)(&v4, v1, v2);
  return Hasher._finalize()();
}

void sub_10017BC04(int a1, Swift::UInt8 a2, Swift::UInt a3, Swift::UInt8 a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int sub_10017BC50(Swift::UInt8 a1, Swift::UInt a2, Swift::UInt8 a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017BCC0()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10017BD30()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10017BD7C()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL sub_10017BDE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 1) == *(a2 + 1) && a1[16] == a2[16];
}

uint64_t NANFollowUpReceivedEvent.serviceInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v23 - v7;
  Array<A>.retrieve(attribute:)(14, a3, &v23 - v7);
  v9 = type metadata accessor for NANAttribute(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v8, 1, v9) == 1)
  {
    sub_100016290(v8, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      result = *(v8 + 2);
      v12 = *(v8 + 3);
      v13 = *(v8 + 4);
      return result;
    }

    sub_1001853BC(v8, type metadata accessor for NANAttribute);
  }

  Array<A>.retrieve(attribute:)(3, a3, v6);
  if (v10(v6, 1, v9) == 1)
  {
    sub_100016290(v6, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v14 = *v6;
      v15 = *(v6 + 1);
      v16 = *(v6 + 3);
      v17 = *(v6 + 4);
      v18 = *(v6 + 5);
      v19 = *(v6 + 24) | (v6[50] << 16);
      v20 = *(v6 + 7);
      v21 = *(v6 + 8);
      v22 = *(v6 + 9);
      sub_100184290(v20, v21, v22);
      sub_1000124C8(v14, v15);

      sub_1001842AC(v17, v18, v19);
      sub_1001842D0(v20, v21, v22);
      return v20;
    }

    sub_1001853BC(v6, type metadata accessor for NANAttribute);
  }

  return 4;
}

void *NANFollowUpReceivedEvent.followUpMessage.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = NANFollowUpReceivedEvent.serviceInfo.getter(a1, a2, a3);
  if (v5 == 4)
  {
    return 0;
  }

  if (v5 == 2 && (v6 = v3, v7 = v4, v8 = sub_1000D201C(v3, v4), v3 = v6, v4 = v7, v8))
  {
    v9 = v8;
    sub_1001842D0(v5, v3, v7);
    return v9;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v13 = sub_1000D201C(v3, v4);
    sub_1001842D0(v5, v11, v12);

    return v13;
  }
}

void _s7CoreP2P22NANPublishRepliedEventV4hash4intoys6HasherVz_tF_0(__int128 *a1, unint64_t a2, Swift::UInt a3, uint64_t a4)
{
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v8 = a2 >> 24;
  v9 = HIDWORD(a2);
  v10 = a2 >> 40;
  v11 = HIWORD(a2);
  v12 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  v13 = v12;
  v14 = a4;
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(a3);
  v15 = *(a4 + 16);
  Hasher._combine(_:)(v15);
  if (v15)
  {
    v16 = *(type metadata accessor for NANAttribute(0) - 8);
    v17 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v17 += v18;
      --v15;
    }

    while (v15);
  }
}

uint64_t NANTransferCompleteStatus.apiError.getter(char a1)
{
  if (a1)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

unint64_t NANTransferCompleteStatus.description.getter(unsigned __int8 a1)
{
  v1 = 0x73736563637573;
  v2 = 0x646570706F7264;
  if (a1 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0x756F2064656D6974;
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

unint64_t sub_10017C318()
{
  v1 = 0x73736563637573;
  v2 = 0x646570706F7264;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x756F2064656D6974;
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

void NANFollowUpTransferCompleteEvent.hash(into:)(int a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a3);
}

Swift::Int NANFollowUpTransferCompleteEvent.hashValue.getter(unint64_t a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_10017C530()
{
  v1 = v0[8];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10017C618()
{
  v1 = v0[8];
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10017C6C4()
{
  v1 = v0[8];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void NANDataManagementFrameTransferCompleteEvent.hash(into:)(int a1, unint64_t a2, unsigned __int8 a3)
{
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  if (HIBYTE(a2) == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_100491A74[a2 >> 56]);
  }

  Hasher._combine(_:)(a3);
}

Swift::Int NANDataManagementFrameTransferCompleteEvent.hashValue.getter(unint64_t a1, unsigned __int8 a2)
{
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  if (HIBYTE(a1) == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_100491A74[a1 >> 56]);
  }

  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void sub_10017C9D4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_100491A74[v1]);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10017CAA4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_100491A74[v1]);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10017CBD0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P16NANSubReasonCodeO8rawValueACSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void NANOOBFrameTrasmitStatus.hash(into:)(int a1, unsigned int a2)
{
  v2 = BYTE2(a2);
  v3 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int NANOOBFrameTrasmitStatus.hashValue.getter(unsigned int a1)
{
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(BYTE2(a1));
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10017CCDC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10017CD4C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10017CD98()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void NANOOBFrameReceivedEvent.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = *(v1 + 10);
  v12 = *(v1 + 11);
  Hasher._combine(_:)(*(v1 + 6));
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  v13 = *(v1 + 16);
  v14 = *(v1 + 32);
  v15 = *(v1 + 48);
  IEEE80211Frame.Management.hash(into:)(a1);
}

Swift::Int NANOOBFrameReceivedEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  v11 = *(v0 + 32);
  *&v13[9] = *(v0 + 16);
  *&v13[11] = v11;
  v14 = *(v0 + 48);
  IEEE80211Frame.Management.hash(into:)(v13);
  return Hasher._finalize()();
}

Swift::Int sub_10017D060()
{
  v1 = *(v0 + 32);
  *&v15[9] = *(v0 + 16);
  *&v15[11] = v1;
  v16 = *(v0 + 48);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  v9 = *(v0 + 7);
  v10 = *(v0 + 8);
  v12 = *(v0 + 9);
  v13 = *(v0 + 10);
  v14 = *(v0 + 11);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  IEEE80211Frame.Management.hash(into:)(v15);
  return Hasher._finalize()();
}

void sub_10017D19C(__int128 *a1)
{
  v14 = *(v1 + 16);
  v15 = *(v1 + 32);
  v16 = *(v1 + 48);
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = *(v1 + 10);
  v13 = *(v1 + 11);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  IEEE80211Frame.Management.hash(into:)(a1);
}

Swift::Int sub_10017D298()
{
  v1 = *(v0 + 32);
  *&v15[9] = *(v0 + 16);
  *&v15[11] = v1;
  v16 = *(v0 + 48);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  v9 = *(v0 + 7);
  v10 = *(v0 + 8);
  v12 = *(v0 + 9);
  v13 = *(v0 + 10);
  v14 = *(v0 + 11);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  IEEE80211Frame.Management.hash(into:)(v15);
  return Hasher._finalize()();
}

uint64_t sub_10017D3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return static NANOOBFrameReceivedEvent.__derived_struct_equals(_:_:)(v5, v7) & 1;
}

uint64_t NANDiscoveryWindowStartEvent.channel.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result);
  *(v1 + 29) = BYTE5(result);
  return result;
}

void NANDiscoveryWindowStartEvent.hash(into:)(int a1, Swift::UInt a2, Swift::UInt64 a3, Swift::UInt64 a4, unint64_t a5)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(a5);
  Hasher._combine(_:)(0x801004u >> ((a5 >> 29) & 0xF8));
  if (BYTE5(a5) <= 3u)
  {
    if (BYTE5(a5) == 2)
    {
      v8 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a5) == 3)
    {
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(BYTE5(a5))
    {
      case 4u:
        v8 = 3;
        goto LABEL_12;
      case 5u:
        v8 = 4;
        goto LABEL_12;
      case 6u:
        v8 = 5;
LABEL_12:
        Hasher._combine(_:)(v8);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(BYTE5(a5) & 1);
}

Swift::Int NANDiscoveryWindowStartEvent.hashValue.getter(Swift::UInt a1, Swift::UInt64 a2, Swift::UInt64 a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  NANDiscoveryWindowStartEvent.hash(into:)(&v9, a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_10017D59C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 28);
  v6 = *(v0 + 29);
  Hasher.init(_seed:)();
  NANDiscoveryWindowStartEvent.hash(into:)(&v8, v1, v2, v3, v4 | (v5 << 32) | (v6 << 40));
  return Hasher._finalize()();
}

Swift::Int sub_10017D634()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 28);
  v6 = *(v0 + 29);
  Hasher.init(_seed:)();
  NANDiscoveryWindowStartEvent.hash(into:)(&v8, v1, v2, v3, v4 | (v5 << 32) | (v6 << 40));
  return Hasher._finalize()();
}

BOOL static NANTransmitStatistics.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = BYTE4(a2) == BYTE4(a4);
  if (a2 != a4)
  {
    v4 = 0;
  }

  v5 = ((a3 ^ a1) & 0xFFFFFFFF0000FF00) == 0 && v4;
  return a1 == a3 && v5;
}

void NANTransmitStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = BYTE1(a2);
  v5 = HIDWORD(a2);
  v6 = HIDWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
}

Swift::Int NANTransmitStatistics.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(HIBYTE(v3));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10017D824()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  v5 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_10017D8B8()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_10017D920()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  v5 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void NANReceiveStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = BYTE1(a2);
  v5 = HIDWORD(a2);
  v6 = HIDWORD(a3);
  v7 = a3 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

Swift::Int NANReceiveStatistics.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(HIBYTE(v3));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_10017DB2C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  v5 = *(v0 + 12);
  v6 = *(v0 + 13);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void sub_10017DBD8()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_10017DC54()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  v5 = *(v0 + 12);
  v6 = *(v0 + 13);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

unint64_t NANSlotStatistics.txUnicastStat.getter()
{
  result = *v0 | (*(v0 + 1) << 32);
  v2 = *(v0 + 2) | (*(v0 + 12) << 32);
  return result;
}

unint64_t NANSlotStatistics.txMulticastStat.getter()
{
  result = *(v0 + 16) | (*(v0 + 20) << 32);
  v2 = *(v0 + 24) | (*(v0 + 28) << 32);
  return result;
}

unint64_t NANSlotStatistics.rxUnicastStat.getter()
{
  result = *(v0 + 32) | (*(v0 + 36) << 32);
  v2 = *(v0 + 40) | (*(v0 + 44) << 32) | (*(v0 + 45) << 40);
  return result;
}

unint64_t NANSlotStatistics.rxMulticastStat.getter()
{
  result = *(v0 + 48) | (*(v0 + 52) << 32);
  v2 = *(v0 + 56) | (*(v0 + 60) << 32) | (*(v0 + 61) << 40);
  return result;
}

void NANSlotStatistics.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  v5 = *(v0 + 17);
  v6 = *(v0 + 20);
  v7 = *(v0 + 24);
  v8 = *(v0 + 28);
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  v9 = *(v0 + 33);
  v10 = *(v0 + 36);
  v11 = *(v0 + 40);
  v12 = *(v0 + 44);
  v13 = *(v0 + 45);
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  v14 = *(v0 + 49);
  v15 = *(v0 + 52);
  v16 = *(v0 + 56);
  v17 = *(v0 + 60);
  v18 = *(v0 + 61);
  Hasher._combine(_:)(*(v0 + 48));
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
}

Swift::Int NANSlotStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANSlotStatistics.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017DF18()
{
  Hasher.init(_seed:)();
  NANSlotStatistics.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10017DF54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 14) = *(a1 + 46);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 14) = *(a2 + 46);
  return _s7CoreP2P17NANSlotStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t static NANPerSlotStatistics.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return sub_1000BEB4C(a3, a6);
  }

  else
  {
    return 0;
  }
}

void NANPerSlotStatistics.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);

  sub_1000DF138(a1, a4);
}

Swift::Int NANPerSlotStatistics.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  sub_1000DF138(v7, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017E09C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  sub_1000DF138(v5, v3);
  return Hasher._finalize()();
}

void sub_10017E108(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);

  sub_1000DF138(a1, v4);
}

Swift::Int sub_10017E160()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  sub_1000DF138(v5, v3);
  return Hasher._finalize()();
}

uint64_t sub_10017E1C8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1000BEB4C(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t NANChannelBoundaryEventData.perSlotStatistics.getter()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[15];

  return v1;
}

void NANChannelBoundaryEventData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2 | (*(v2 + 2) << 32);
  if ((v4 & 0xFF00000000) == 0x300000000)
  {
    v5 = 0;
LABEL_3:
    Hasher._combine(_:)(v5);
    goto LABEL_4;
  }

  v9 = v4 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(0x801004u >> ((v4 >> 29) & 0xF8));
  if ((v4 >> 40) <= 3)
  {
    if (v9 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_31;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v9)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_31:
        Hasher._combine(_:)(2uLL);
        v5 = BYTE5(v4) & 1;
        goto LABEL_3;
    }
  }

LABEL_4:
  v6 = *(v2 + 12);
  v7 = *(v2 + 13);
  Hasher._combine(_:)(v2[2]);
  Hasher._combine(_:)(0x801004u >> (8 * v6));
  if (v7 <= 3)
  {
    if (v7 == 2)
    {
      v8 = 0;
      goto LABEL_23;
    }

    if (v7 == 3)
    {
      v8 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    switch(v7)
    {
      case 4:
        v8 = 3;
        goto LABEL_23;
      case 5:
        v8 = 4;
        goto LABEL_23;
      case 6:
        v8 = 5;
LABEL_23:
        Hasher._combine(_:)(v8);
        goto LABEL_24;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(v7 & 1);
LABEL_24:
  Hasher._combine(_:)(*(v2 + 2));
  Hasher._combine(_:)(v2[6]);
  Hasher._combine(_:)(v2[7]);
  Hasher._combine(_:)(v2[8]);
  Hasher._combine(_:)(v2[9]);
  Hasher._combine(_:)(v2[10]);
  Hasher._combine(_:)(v2[11]);
  Hasher._combine(_:)(v2[12]);
  Hasher._combine(_:)(v2[13]);
  Hasher._combine(_:)(v2[14]);
  Hasher._combine(_:)(v2[15]);
  Hasher._combine(_:)(v2[16]);
  Hasher._combine(_:)(v2[17]);
  Hasher._combine(_:)(v2[18]);
  Hasher._combine(_:)(v2[19]);
  Hasher._combine(_:)(v2[20]);
  Hasher._combine(_:)(v2[21]);
  Hasher._combine(_:)(v2[22]);
  Hasher._combine(_:)(v2[23]);
  Hasher._combine(_:)(v2[24]);
  Hasher._combine(_:)(v2[25]);
  v10 = *(v2 + 13);
  v11 = *(v2 + 14);
  v12 = *(v2 + 15);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);

  sub_1000DF138(a1, v12);
}

Swift::Int NANChannelBoundaryEventData.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANChannelBoundaryEventData.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10017E584()
{
  Hasher.init(_seed:)();
  NANChannelBoundaryEventData.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL sub_10017E5C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s7CoreP2P27NANChannelBoundaryEventDataV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

BOOL static AWDLSoftAPChannelChangedEvent.__derived_struct_equals(_:_:)(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  LODWORD(v6) = a3;
  LOBYTE(v6) = a1 & 1;
  HIDWORD(v6) = HIDWORD(a1);
  v4 = v6;
  LOBYTE(v6) = a3 & 1;
  HIDWORD(v6) = HIDWORD(a3);
  return sub_100182320(v4, a2, v6, a4);
}

void AWDLSoftAPChannelChangedEvent.hash(into:)(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  v3 = HIDWORD(a2) | (a3 << 32);
  Hasher._combine(_:)(a2 & 1);
  if ((v3 & 0xFF00000000) == 0x300000000)
  {
    v4 = 0;
LABEL_3:
    Hasher._combine(_:)(v4);
    return;
  }

  v5 = v3 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(0x801004u >> ((v3 >> 29) & 0xF8));
  if ((v3 >> 40) <= 3)
  {
    if (v5 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_15;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        return;
      default:
LABEL_15:
        Hasher._combine(_:)(2uLL);
        v4 = BYTE5(v3) & 1;
        goto LABEL_3;
    }
  }
}

Swift::Int AWDLSoftAPChannelChangedEvent.hashValue.getter(unint64_t a1, unsigned __int16 a2)
{
  v3 = a1;
  v7[0] = a1;
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  LOBYTE(v6) = v3 & 1;
  HIDWORD(v6) = v4;
  AWDLSoftAPChannelChangedEvent.hash(into:)(v7, v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10017E804()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  LOBYTE(v5) = v1;
  HIDWORD(v5) = v3;
  AWDLSoftAPChannelChangedEvent.hash(into:)(v6, v5, v2);
  return Hasher._finalize()();
}

void sub_10017E868(uint64_t a1)
{
  v2 = *v1;
  HIDWORD(v3) = *(v1 + 1);
  AWDLSoftAPChannelChangedEvent.hash(into:)(a1, v3, *(v1 + 4));
}

Swift::Int sub_10017E884()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  LOBYTE(v5) = v1;
  HIDWORD(v5) = v3;
  AWDLSoftAPChannelChangedEvent.hash(into:)(v6, v5, v2);
  return Hasher._finalize()();
}

BOOL sub_10017E8E4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  HIDWORD(v6) = *(a1 + 1);
  v4 = v6;
  LOBYTE(v6) = *a2;
  HIDWORD(v6) = *(a2 + 4);
  return sub_100182320(v4, v3, v6, *(a2 + 8));
}

unint64_t AWDLSoftErrorReport.description.getter()
{
  if (*(v0 + 32))
  {
    v1 = 978474068;
  }

  else
  {
    v1 = 977556808;
  }

  v3 = v1 & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
  String.append(_:)(*v0);
  return v3;
}

uint64_t AWDLSoftErrorReport.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return String.hash(into:)();
}

Swift::Int AWDLSoftErrorReport.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017EAB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017EB50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10017EBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P19AWDLSoftErrorReportO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t NANInternetSharingStatistics.Requester.dhcpDelay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AWDLIdleActivity.durationSinceLastUnicastRx.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLIdleActivity(0) + 20);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static AWDLIdleActivity.__derived_struct_equals(_:_:)()
{
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for AWDLIdleActivity(0) + 20);

  return static DispatchTimeInterval.== infix(_:_:)();
}

void AWDLIdleActivity.hash(into:)(uint64_t a1)
{
  v30[1] = a1;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v8 = (v30 - v7);
  v9 = *(v3 + 16);
  v30[0] = v1;
  v9(v30 - v7, v1, v2);
  v10 = *(v3 + 88);
  v11 = v10(v8, v2);
  v12 = enum case for DispatchTimeInterval.seconds(_:);
  if (v11 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v3 + 96))(v8, v2);
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (*v8 <= 0)
    {
      v13 = 0x8000000000000000;
    }

    if ((*v8 * 1000000000) >> 64 == (1000000000 * *v8) >> 63)
    {
      v14 = 1000000000 * *v8;
    }

    else
    {
      v14 = v13;
    }

    goto LABEL_16;
  }

  if (v11 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v8, v2);
    v15 = *v8;
    v16 = 1000000;
LABEL_11:
    v17 = v15 * v16;
    v18 = (v15 * v16) >> 64 != (v15 * v16) >> 63;
    v19 = v15 <= 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (v19)
    {
      v20 = 0x8000000000000000;
    }

    if (v18)
    {
      v14 = v20;
    }

    else
    {
      v14 = v17;
    }

    goto LABEL_16;
  }

  if (v11 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v8, v2);
    v15 = *v8;
    v16 = 1000;
    goto LABEL_11;
  }

  if (v11 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v8, v2);
    v14 = *v8;
  }

  else
  {
    if (v11 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v3 + 8))(v8, v2);
    }

    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_16:
  Hasher._combine(_:)(v14);
  v21 = type metadata accessor for AWDLIdleActivity(0);
  v9(v6, v30[0] + *(v21 + 20), v2);
  v22 = v10(v6, v2);
  if (v22 == v12)
  {
    (*(v3 + 96))(v6, v2);
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    if (*v6 <= 0)
    {
      v23 = 0x8000000000000000;
    }

    if ((*v6 * 1000000000) >> 64 == (1000000000 * *v6) >> 63)
    {
      v24 = 1000000000 * *v6;
    }

    else
    {
      v24 = v23;
    }

    goto LABEL_31;
  }

  if (v22 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v25 = *v6;
    v26 = 1000000;
LABEL_26:
    v27 = v25 * v26;
    v28 = (v25 * v26) >> 64 != (v25 * v26) >> 63;
    v19 = v25 <= 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    if (v19)
    {
      v29 = 0x8000000000000000;
    }

    if (v28)
    {
      v24 = v29;
    }

    else
    {
      v24 = v27;
    }

    goto LABEL_31;
  }

  if (v22 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v25 = *v6;
    v26 = 1000;
    goto LABEL_26;
  }

  if (v22 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v24 = *v6;
  }

  else
  {
    if (v22 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v3 + 8))(v6, v2);
    }

    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_31:
  Hasher._combine(_:)(v24);
}

Swift::Int AWDLIdleActivity.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLIdleActivity.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10017F1F0()
{
  Hasher.init(_seed:)();
  AWDLIdleActivity.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10017F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return static DispatchTimeInterval.== infix(_:_:)();
}

unint64_t DriverEvent.NAN.peerAttributes.getter()
{
  memcpy(__dst, v0, 0x16AuLL);
  switch(sub_100185198(__dst))
  {
    case 2u:
    case 3u:
    case 5u:
    case 0xDu:
      v5 = NANBitmap.Channel.operatingClass.getter(__dst);
      v6 = *(v5 + 16);
      v3 = *(v5 + 2) | (*(v5 + 6) << 32) | (*(v5 + 7) << 40);
      memcpy(v13, v0, 0x16AuLL);
      v4 = NANBitmap.Channel.operatingClass.getter(v13);
      goto LABEL_4;
    case 6u:
      v9 = NANBitmap.Channel.operatingClass.getter(__dst);
      v10 = *(v9 + 24);
      v3 = *(v9 + 14) | (*(v9 + 18) << 32) | (*(v9 + 19) << 40);
      memcpy(v13, v0, 0x16AuLL);
      v11 = NANBitmap.Channel.operatingClass.getter(v13);
      sub_1001851A0(v11, &v12);
      goto LABEL_5;
    case 7u:
      v1 = NANBitmap.Channel.operatingClass.getter(__dst);
      v2 = *(v1 + 16);
      v3 = *(v1 + 8) | (*(v1 + 12) << 32) | (*(v1 + 13) << 40);
      memcpy(v13, v0, 0x16AuLL);
      v4 = NANBitmap.Channel.operatingClass.getter(v13);
LABEL_4:
      v7 = *(v4 + 16);

LABEL_5:
      result = v3;
      break;
    default:
      NANBitmap.Channel.operatingClass.getter(__dst);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_10017F550(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x16AuLL);
  memcpy(__dst, a2, 0x16AuLL);
  return _s7CoreP2P11DriverEventO3NANO21__derived_enum_equalsySbAE_AEtFZ_0(v4, __dst) & 1;
}

uint64_t sub_10017F5B0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s7CoreP2P11DriverEventO5InfraO21__derived_enum_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t DriverEvent.NAN.shortDescription.getter()
{
  memcpy(__dst, v0, 0x16AuLL);
  switch(sub_100185198(__dst))
  {
    case 0x14u:
      NANBitmap.Channel.operatingClass.getter(__dst);
      result = 0xD000000000000018;
      break;
    case 0x15u:
      NANBitmap.Channel.operatingClass.getter(__dst);
      result = 0xD000000000000010;
      break;
    default:
      NANBitmap.Channel.operatingClass.getter(__dst);
      sub_10005DC58(&qword_10058EFC0, &unk_10048F798);
      result = String.init<A>(describing:)();
      break;
  }

  return result;
}

uint64_t DriverEvent.NAN.description.getter()
{
  memcpy(__dst, v0, 0x16AuLL);
  switch(sub_100185198(__dst))
  {
    case 1u:
    case 0xAu:
      v40[0] = *NANBitmap.Channel.operatingClass.getter(__dst);
      __src[0] = v40[0];
      return String.init<A>(describing:)();
    case 2u:
      v6 = NANBitmap.Channel.operatingClass.getter(__dst);
      *&__src[1] = *(v6 + 16);
      __src[0] = *v6;
      v39[0] = __src[0];
      *&v39[1] = *&__src[1];
      memcpy(v40, v0, 0x16AuLL);
      v7 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_100185384(v7, v38);
      return String.init<A>(describing:)();
    case 3u:
      v8 = NANBitmap.Channel.operatingClass.getter(__dst);
      *&__src[1] = *(v8 + 16);
      __src[0] = *v8;
      v39[0] = __src[0];
      *&v39[1] = *&__src[1];
      memcpy(v40, v0, 0x16AuLL);
      v9 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_10018534C(v9, v38);
      return String.init<A>(describing:)();
    case 4u:
    case 0xEu:
      v4 = NANBitmap.Channel.operatingClass.getter(__dst);
      BYTE8(v40[0]) = *(v4 + 8);
      *&v40[0] = *v4;
      *&__src[0] = *&v40[0];
      BYTE8(__src[0]) = BYTE8(v40[0]);
      return String.init<A>(describing:)();
    case 5u:
      v15 = NANBitmap.Channel.operatingClass.getter(__dst);
      *&__src[1] = *(v15 + 16);
      __src[0] = *v15;
      v39[0] = __src[0];
      *&v39[1] = *&__src[1];
      memcpy(v40, v0, 0x16AuLL);
      v16 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_100185314(v16, v38);
      return String.init<A>(describing:)();
    case 6u:
      v21 = NANBitmap.Channel.operatingClass.getter(__dst);
      __src[1] = v21[1];
      __src[0] = *v21;
      v39[0] = __src[0];
      v39[1] = __src[1];
      memcpy(v40, v0, 0x16AuLL);
      v22 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_1001851A0(v22, v38);
      return String.init<A>(describing:)();
    case 7u:
      v10 = NANBitmap.Channel.operatingClass.getter(__dst);
      *&__src[1] = *(v10 + 16);
      __src[0] = *v10;
      v39[0] = __src[0];
      *&v39[1] = *&__src[1];
      memcpy(v40, v0, 0x16AuLL);
      v11 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_1001852DC(v11, v38);
      return String.init<A>(describing:)();
    case 8u:
      v33 = NANBitmap.Channel.operatingClass.getter(__dst);
      *(v40 + 6) = *(v33 + 6);
      *&v40[0] = *v33;
      *&__src[0] = *&v40[0];
      *(__src + 6) = *(v40 + 6);
      return String.init<A>(describing:)();
    case 9u:
    case 0xBu:
    case 0xCu:
      v5 = NANBitmap.Channel.operatingClass.getter(__dst);
      LOBYTE(v40[1]) = *(v5 + 16);
      v40[0] = *v5;
      __src[0] = v40[0];
      LOBYTE(__src[1]) = v40[1];
      return String.init<A>(describing:)();
    case 0xDu:
      v19 = NANBitmap.Channel.operatingClass.getter(__dst);
      *&__src[1] = *(v19 + 16);
      __src[0] = *v19;
      v39[0] = __src[0];
      *&v39[1] = *&__src[1];
      memcpy(v40, v0, 0x16AuLL);
      v20 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_1001852A4(v20, v38);
      return String.init<A>(describing:)();
    case 0xFu:
      LODWORD(v40[0]) = *NANBitmap.Channel.operatingClass.getter(__dst);
      return String.init<A>(describing:)();
    case 0x10u:
      v2 = NANBitmap.Channel.operatingClass.getter(__dst);
      LOBYTE(__src[3]) = *(v2 + 48);
      __src[2] = *(v2 + 32);
      __src[1] = *(v2 + 16);
      __src[0] = *v2;
      v39[0] = __src[0];
      v39[1] = __src[1];
      v39[2] = __src[2];
      LOBYTE(v39[3]) = __src[3];
      memcpy(v40, v0, 0x16AuLL);
      v3 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_10018526C(v3, v38);
      return String.init<A>(describing:)();
    case 0x11u:
      v12 = NANBitmap.Channel.operatingClass.getter(__dst);
      *(v40 + 14) = *(v12 + 14);
      v40[0] = *v12;
      __src[0] = v40[0];
      *(__src + 14) = *(v40 + 14);
      return String.init<A>(describing:)();
    case 0x12u:
      v23 = NANBitmap.Channel.operatingClass.getter(__dst);
      v40[0] = *v23;
      v40[1] = *(v23 + 16);
      v40[2] = *(v23 + 32);
      v40[3] = *(v23 + 48);
      v24 = *(v23 + 64);
      v25 = *(v23 + 72);
      v26 = *(v23 + 76);
      v27 = *(v23 + 80);
      v28 = *(v23 + 88);
      *(&v39[0] + 1) = 0xE000000000000000;
      v29._countAndFlagsBits = DriverEvent.NAN.shortDescription.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 40;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      __src[0] = v40[0];
      __src[1] = v40[1];
      __src[2] = v40[2];
      *(&__src[2] + 9) = *(&v40[2] + 9);
      _print_unlocked<A, B>(_:_:)();
      v31._countAndFlagsBits = 32;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      *&__src[0] = v24;
      DWORD2(__src[0]) = v25;
      WORD6(__src[0]) = v26;
      *&__src[1] = v27;
      *(&__src[1] + 1) = v28;
      _print_unlocked<A, B>(_:_:)();
      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      return 0;
    case 0x13u:
      v36 = NANBitmap.Channel.operatingClass.getter(__dst);
      memcpy(__src, v36, 0x169uLL);
      memcpy(v39, __src, 0x169uLL);
      memcpy(v40, v0, 0x16AuLL);
      v37 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_100185210(v37, v38);
      return String.init<A>(describing:)();
    case 0x14u:
      v13 = *NANBitmap.Channel.operatingClass.getter(__dst);
      return Array.description.getter();
    case 0x15u:
      v17 = *NANBitmap.Channel.operatingClass.getter(__dst);
      v18 = 0x7A48472035;
      if (v17 != 1)
      {
        v18 = 0x7A48472036;
      }

      if (v17)
      {
        return v18;
      }

      else
      {
        return 0x7A484720342E32;
      }

    case 0x16u:
      v34 = NANBitmap.Channel.operatingClass.getter(__dst);
      __src[4] = v34[4];
      __src[5] = v34[5];
      __src[6] = v34[6];
      __src[7] = v34[7];
      __src[0] = *v34;
      __src[1] = v34[1];
      __src[2] = v34[2];
      __src[3] = v34[3];
      v39[4] = __src[4];
      v39[5] = __src[5];
      v39[6] = __src[6];
      v39[7] = __src[7];
      v39[0] = __src[0];
      v39[1] = __src[1];
      v39[2] = __src[2];
      v39[3] = __src[3];
      memcpy(v40, v0, 0x16AuLL);
      v35 = NANBitmap.Channel.operatingClass.getter(v40);
      sub_1001851D8(v35, v38);
      return String.init<A>(describing:)();
    default:
      v1 = NANBitmap.Channel.operatingClass.getter(__dst);
      WORD2(v40[0]) = *(v1 + 4);
      LODWORD(v40[0]) = *v1;
      LODWORD(__src[0]) = v40[0];
      WORD2(__src[0]) = WORD2(v40[0]);
      return String.init<A>(describing:)();
  }
}

uint64_t DriverEvent.AWDL.shortDescription.getter()
{
  v1 = type metadata accessor for DriverEvent.AWDL(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F33C(v0, v4, type metadata accessor for DriverEvent.AWDL);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x5364657461647075;
  v7 = &type metadata for AWDLThreadCoexistenceEvent;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = *(v4 + 2);
      v9 = *(v4 + 3);
      sub_100048C4C(*(v4 + 1));
      v10 = sub_10005DC58(&qword_10058C7C8, &unk_100481FE0);
      sub_1001853BC(&v4[*(v10 + 48)], type metadata accessor for AWDLActionFrame.Header);
      v7 = &type metadata for IEEE80211Frame.Management.ActionFrame;
      goto LABEL_15;
    case 2:
      sub_1001853BC(v4, type metadata accessor for DriverEvent.AWDL);
      return 0xD000000000000018;
    case 3:
      return 0xD000000000000014;
    case 4:
      sub_1001853BC(v4, type metadata accessor for DriverEvent.AWDL);
      return 0xD00000000000001BLL;
    case 5:
      goto LABEL_15;
    case 6:
      v7 = &type metadata for AWDLSoftAPChannelChangedEvent;
      goto LABEL_15;
    case 7:
      sub_1001853BC(v4, type metadata accessor for DriverEvent.AWDL);
      v7 = &type metadata for AWDLSoftErrorReport;
      goto LABEL_15;
    case 8:
      return 0x7265655074736F6CLL;
    case 9:

      v7 = &type metadata for AWDLStatistics.Failure;
      goto LABEL_15;
    case 10:
      sub_1001853BC(v4, type metadata accessor for DriverEvent.AWDL);
      v7 = type metadata accessor for AWDLIdleActivity(0);
LABEL_15:
      v11[1] = v7;
      sub_10005DC58(&qword_10058EFC0, &unk_10048F798);
      result = String.init<A>(describing:)();
      break;
    case 11:
      return result;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x73736553656C6469;
      break;
    default:
      result = 0x656D69746C616572;
      break;
  }

  return result;
}

uint64_t DriverEvent.Infra.shortDescription.getter()
{
  v1 = *(v0 + 41);
  if (v1 <= 4)
  {
    if (*(v0 + 41) <= 1u && !*(v0 + 41))
    {
      return 0xD000000000000010;
    }

    goto LABEL_16;
  }

  if (*(v0 + 41) <= 7u)
  {
    if (v1 != 5)
    {
      if (v1 == 6)
      {
        return 0xD000000000000012;
      }

      else
      {
        return 0xD000000000000015;
      }
    }

LABEL_16:
    sub_10005DC58(&qword_10058EFC0, &unk_10048F798);
    return String.init<A>(describing:)();
  }

  if (v1 == 8)
  {
    return 0xD000000000000015;
  }

  if (v1 == 9)
  {
    return 0xD000000000000013;
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3] | v0[4];
  if (!*(v0 + 40) && !(v6 | v3 | v5 | v4))
  {
    return 0x6863207265776F50;
  }

  v7 = v6 | v5 | v4;
  if (!*(v0 + 40) && v3 == 1 && !v7)
  {
    return 0xD000000000000014;
  }

  v9 = v3 == 2 && v7 == 0;
  if (*(v0 + 40) == 0 && v9)
  {
    return 0x6168632044495353;
  }

  else
  {
    return 0x6863204449535342;
  }
}

uint64_t DriverEvent.Infra.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 41);
  if (v9 <= 4)
  {
    if (*(v2 + 41) <= 1u)
    {
      if (!*(v2 + 41))
      {
        v26 = DriverEvent.Infra.shortDescription.getter();
        v27 = v15;

        v16._countAndFlagsBits = 32;
        v16._object = 0xE100000000000000;
        String.append(_:)(v16);

        v12 = v26;
        v13 = v27;
        LOBYTE(v26) = v4 & 1;
        goto LABEL_14;
      }

      v26 = *v2;
    }

    else if (v9 == 2)
    {
      LOBYTE(v26) = *v2;
    }

    else if (v9 == 3)
    {
      LOWORD(v26) = *v2;
      BYTE2(v26) = BYTE2(v4);
      BYTE3(v26) = BYTE3(v4);
      BYTE4(v26) = BYTE4(v4);
      BYTE5(v26) = BYTE5(v4);
    }

    else
    {
      v24[4] = *v2;
      v24[5] = v3;
      v24[6] = v6;
      v25 = v5;
      v26 = v4;
      v27 = v3;
      v28 = v6;
      v29 = v5;
      v30 = v7;
      v31 = v8;
      v32 = 4;
      sub_10018549C(&v26, v24);
    }

    return String.init<A>(describing:)();
  }

  if (*(v2 + 41) <= 7u)
  {
    if (v9 != 5)
    {
      v26 = DriverEvent.Infra.shortDescription.getter();
      v27 = v10;

      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);

      v12 = v26;
      v13 = v27;
      LOWORD(v26) = v4;
LABEL_14:
      v17 = String.init<A>(describing:)();
      v19 = v18;
      v27 = v13;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      return v12;
    }

    v26 = *v2;
    v27 = v3;
    v28 = v6;
    v29 = v5;
    v30 = v7;
    v31 = v8;
    sub_100185484(v3, v6, v5, v7, v8);
    return String.init<A>(describing:)();
  }

  if (v9 == 8)
  {
    if (BYTE4(v4) == 3)
    {
      return 48;
    }

    else
    {
      return Channel.description.getter(v4 & 0xFFFFFFFFFFFFLL, a2);
    }
  }

  else if (v9 == 9)
  {
    return WiFiAddress.description.getter(v4 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v21 = v6 | v3 | v5 | v7;
    if (*(v2 + 40) || v21 | v4)
    {
      if (*(v2 + 40) || v21 || v4 != 1)
      {
        if (v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = v4 == 2;
        }

        v23 = v22;
        if (((v8 == 0) & v23) != 0)
        {
          return 0x6168632044495353;
        }

        else
        {
          return 0x6863204449535342;
        }
      }

      else
      {
        return 0xD000000000000014;
      }
    }

    else
    {
      return 0x6863207265776F50;
    }
  }
}

uint64_t DriverEvent.SystemState.description.getter(char a1)
{
  if (a1)
  {
    return 0x656B617720646964;
  }

  else
  {
    return 0x656C73206C6C6977;
  }
}

uint64_t sub_100180DD4()
{
  if (*v0)
  {
    result = 0x656B617720646964;
  }

  else
  {
    result = 0x656C73206C6C6977;
  }

  *v0;
  return result;
}

uint64_t DriverEvent.descriptionDetails.getter()
{
  v1 = *(*(type metadata accessor for DriverEvent.AWDL(0) - 8) + 64);
  __chkstk_darwin();
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F33C(v0, v6, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return DriverEvent.shortDescription.getter(EnumCaseMultiPayload);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = sub_10018541C(v6, v3, type metadata accessor for DriverEvent.AWDL);
      v11 = DriverEvent.AWDL.description.getter(v10);
      sub_1001853BC(v3, type metadata accessor for DriverEvent.AWDL);
    }

    else
    {
      v12 = v6[1];
      v14[0] = *v6;
      v14[1] = v12;
      *(&v14[1] + 10) = *(v6 + 26);
      v11 = DriverEvent.Infra.description.getter(EnumCaseMultiPayload, v8);
      sub_100185528(v14);
    }
  }

  else
  {
    memcpy(v14, v6, 0x16AuLL);
    sub_100185558(v14, v13);
    v11 = DriverEvent.NAN.description.getter();
    sub_1001854F8(v14);
    sub_1001854F8(v14);
  }

  return v11;
}

BOOL sub_100180FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v20) = BYTE1(a1);
  BYTE1(v20) = BYTE2(a1);
  BYTE2(v20) = BYTE3(a1);
  HIBYTE(v20) = BYTE4(a1);
  LOBYTE(v22) = BYTE5(a1);
  HIBYTE(v22) = BYTE6(a1);
  LOBYTE(v16) = BYTE1(a3);
  BYTE1(v16) = BYTE2(a3);
  BYTE2(v16) = BYTE3(a3);
  HIBYTE(v16) = BYTE4(a3);
  LOBYTE(v18) = BYTE5(a3);
  HIBYTE(v18) = BYTE6(a3);
  if (v20 != v16 || v22 != v18)
  {
    return 0;
  }

  v8 = (a1 & 0x100000000000000) == 0;
  if ((a1 & 0x100000000000000) != 0)
  {
    v9 = 0x73616369746C756DLL;
  }

  else
  {
    v9 = 0x74736163696E75;
  }

  if (v8)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  v11 = (a3 & 0x100000000000000) == 0;
  if ((a3 & 0x100000000000000) != 0)
  {
    v12 = 0x73616369746C756DLL;
  }

  else
  {
    v12 = 0x74736163696E75;
  }

  if (v11)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE900000000000074;
  }

  if (v9 == v12 && v10 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  LOWORD(v21) = a2;
  BYTE2(v21) = BYTE2(a2);
  HIBYTE(v21) = BYTE3(a2);
  LOBYTE(v23) = BYTE4(a2);
  HIBYTE(v23) = BYTE5(a2);
  LOWORD(v17) = a4;
  BYTE2(v17) = BYTE2(a4);
  HIBYTE(v17) = BYTE3(a4);
  LOBYTE(v19) = BYTE4(a4);
  HIBYTE(v19) = BYTE5(a4);
  return v21 == v17 && v23 == v19;
}

BOOL _s7CoreP2P24NANDataHostAssistRequestV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3 || BYTE1(a1) != BYTE1(a3))
  {
    return 0;
  }

  LOBYTE(v11) = BYTE2(a1);
  BYTE1(v11) = BYTE3(a1);
  BYTE2(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOBYTE(v13) = BYTE6(a1);
  HIBYTE(v13) = HIBYTE(a1);
  LOBYTE(v7) = BYTE2(a3);
  BYTE1(v7) = BYTE3(a3);
  BYTE2(v7) = BYTE4(a3);
  HIBYTE(v7) = BYTE5(a3);
  LOBYTE(v9) = BYTE6(a3);
  HIBYTE(v9) = HIBYTE(a3);
  if (v11 != v7 || v13 != v9)
  {
    return 0;
  }

  LOWORD(v12) = a2;
  BYTE2(v12) = BYTE2(a2);
  HIBYTE(v12) = BYTE3(a2);
  LOBYTE(v14) = BYTE4(a2);
  HIBYTE(v14) = BYTE5(a2);
  LOWORD(v8) = a4;
  BYTE2(v8) = BYTE2(a4);
  HIBYTE(v8) = BYTE3(a4);
  LOBYTE(v10) = BYTE4(a4);
  HIBYTE(v10) = BYTE5(a4);
  if (v12 != v8 || v14 != v10)
  {
    return 0;
  }

  if (BYTE6(a2) != 15)
  {
    if (BYTE6(a4) != 15)
    {
      if (BYTE6(a2) == 14)
      {
        if (BYTE6(a4) == 14)
        {
          return (a4 ^ a2) >> 56 == 0;
        }
      }

      else if (BYTE6(a4) != 14 && byte_100491A74[SBYTE6(a2)] == byte_100491A74[SBYTE6(a4)])
      {
        return (a4 ^ a2) >> 56 == 0;
      }
    }

    return 0;
  }

  if (BYTE6(a4) != 15)
  {
    return 0;
  }

  return (a4 ^ a2) >> 56 == 0;
}

uint64_t _s7CoreP2P11DriverEventO5InfraO21__derived_enum_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, char *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v12 = *(a1 + 1);
  v11 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = a1[41];
  v15 = v5 | (v6 << 8) | (v7 << 16) | (v8 << 24);
  v16 = *(a1 + 3);
  if (v14 > 4)
  {
    v17 = *(a2 + 4);
    v18 = a2[40];
    v19 = *(a1 + 4);
    v20 = a1[40];
    if (a1[41] <= 7u)
    {
      if (v14 != 5)
      {
        if (v14 == 6)
        {
          if (a2[41] == 6)
          {
            goto LABEL_54;
          }
        }

        else if (a2[41] == 7)
        {
LABEL_54:
          if (word_1004919C2[v5] != word_1004919C2[*a2] || word_100491A30[v6] != word_100491A30[a2[1]])
          {
            goto LABEL_131;
          }

          goto LABEL_130;
        }

LABEL_131:
        LOBYTE(v23) = 0;
        return v23 & 1;
      }

      if (a2[41] != 5 || (v5 | (v6 << 8)) != *a2)
      {
        goto LABEL_131;
      }

      if (v20 != 255)
      {
        if (v18 == 255)
        {
          sub_100185484(*(a2 + 1), *(a2 + 2), v4, v17, 255);
          goto LABEL_131;
        }

        if (v20)
        {
          v25 = *(a1 + 2);
          v26 = *(a2 + 1);
          v27 = *(a2 + 2);
          sub_100185484(v26, v27, v4, v17, v18);
          if ((v18 & 1) == 0)
          {
            goto LABEL_131;
          }

          v28 = _s7CoreP2P11IPv6AddressV2eeoiySbAC_ACtFZ_0(v12, v25, v13, v19, v26, v27, v4, v17);
          sub_100185528(a2);
          if ((v28 & 1) == 0)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_131;
          }

          v39 = *(a2 + 1);
          sub_100185484(*(a2 + 1), *(a2 + 2), *(a2 + 3), v17, v18);
          if (v12 != v39)
          {
            goto LABEL_131;
          }
        }

        goto LABEL_130;
      }

      if (v18 != 255)
      {
        goto LABEL_131;
      }

      sub_100185484(*(a2 + 1), *(a2 + 2), v4, v17, 255);
      LOBYTE(v23) = 1;
      return v23 & 1;
    }

    if (v14 == 8)
    {
      if (a2[41] != 8)
      {
        goto LABEL_131;
      }

      v29 = *a2 | (*(a2 + 2) << 32);
      v30 = v29 & 0xFF00000000;
      if (v9 != 3)
      {
        if (v30 == 0x300000000)
        {
          goto LABEL_131;
        }

        *(a2 + 2);
        if (v15 != *a2 || ((0x801004u >> (8 * v9)) & 0xFFC) != ((0x801004u >> ((v29 >> 29) & 0xF8)) & 0xFFC))
        {
          goto LABEL_131;
        }

        if (a1[5] <= 3u)
        {
          if (v10 == 2)
          {
            if (BYTE5(v29) != 2)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          }

          if (v10 == 3)
          {
            if (BYTE5(v29) != 3)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          }
        }

        else
        {
          switch(v10)
          {
            case 4:
              if (BYTE5(v29) != 4)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            case 5:
              if (BYTE5(v29) != 5)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            case 6:
              if (BYTE5(v29) != 6)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
          }
        }

        if (BYTE5(v29) - 2 < 5 || ((v10 ^ BYTE5(v29)) & 1) != 0)
        {
          goto LABEL_131;
        }

        goto LABEL_130;
      }

      if (v30 != 0x300000000)
      {
        goto LABEL_131;
      }

LABEL_130:
      LOBYTE(v23) = 1;
      return v23 & 1;
    }

    if (v14 != 9)
    {
      v35 = ((v10 << 40) | (v9 << 32) | v15) & 0xFFFFFFFFFFFFLL | (v16 << 48);
      v36 = v11 | v12 | v13 | v19;
      if (a1[40] || v36 | v35)
      {
        if (!a1[40] && v35 == 1 && v36 == 0)
        {
          if (a2[41] == 10 && !a2[40] && !(v3 | v2 | v4 | v17))
          {
            v23 = *a2;
            if (*a2 == 1)
            {
              return v23 & 1;
            }
          }

          goto LABEL_131;
        }

        if (!a1[40] && (v35 == 2 ? (v38 = v36 == 0) : (v38 = 0), v38))
        {
          if (a2[41] != 10 || a2[40] || v3 | v2 | v4 | v17 || *a2 != 2)
          {
            goto LABEL_131;
          }
        }

        else if (a2[41] != 10 || a2[40] || v3 | v2 | v4 | v17 || *a2 != 3)
        {
          goto LABEL_131;
        }
      }

      else if (a2[41] != 10 || a2[40] || v2 | *a2 | v3 | v4 | v17)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    if (a2[41] != 9)
    {
      goto LABEL_131;
    }

    v22 = *a1 == *a2 && *(a1 + 2) == *(a2 + 2);
LABEL_30:
    LOBYTE(v23) = v22;
    return v23 & 1;
  }

  if (a1[41] <= 1u)
  {
    if (!a1[41])
    {
      if (a2[41])
      {
        goto LABEL_131;
      }

      LOBYTE(v23) = v5 ^ *a2 ^ 1;
      return v23 & 1;
    }

    if (a2[41] != 1)
    {
      goto LABEL_131;
    }

    v34 = *a2;

    return _s7CoreP2P19InfraScanStartEventV23__derived_struct_equalsySbAC_ACtFZ_0(v15 | (v9 << 32) | (v10 << 40) | (v16 << 48), v34);
  }

  else
  {
    if (v14 == 2)
    {
      if (a2[41] != 2)
      {
        goto LABEL_131;
      }

      v22 = v5 == *a2;
      goto LABEL_30;
    }

    if (v14 == 3)
    {
      if (a2[41] != 3 || (v5 | (v6 << 8) | (v7 << 16) | (v8 << 24)) != *a2 || ((0x801004u >> (8 * v9)) & 0xFFC) != ((0x801004u >> (8 * a2[4])) & 0xFFC))
      {
        goto LABEL_131;
      }

      v21 = a2[5];
      if (a1[5] <= 3u)
      {
        if (v10 == 2)
        {
          if (v21 != 2)
          {
            goto LABEL_131;
          }

          goto LABEL_130;
        }

        if (v10 == 3)
        {
          if (v21 != 3)
          {
            goto LABEL_131;
          }

          goto LABEL_130;
        }
      }

      else
      {
        switch(v10)
        {
          case 4:
            if (v21 != 4)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          case 5:
            if (v21 != 5)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          case 6:
            if (v21 != 6)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
        }
      }

      if (v21 - 2) < 5 || ((v10 ^ v21))
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    if (a2[41] != 4)
    {
      goto LABEL_131;
    }

    v31 = (a2[5] << 40) | (a2[4] << 32) | *a2;
    v32 = *(a1 + 1);

    return sub_100128E44(v15 | (v9 << 32) | (v10 << 40), v12, v11, v13, v31, v2, v3, v4);
  }
}

BOOL _s7CoreP2P17NANSlotStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1);
    v3 = v2 && *(a1 + 2) == *(a2 + 2);
    v4 = v3 && a1[12] == a2[12];
    if (v4 && a1[16] == a2[16] && a1[17] == a2[17] && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6) && a1[28] == a2[28] && a1[32] == a2[32] && a1[33] == a2[33] && *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10) && a1[44] == a2[44] && a1[45] == a2[45] && a1[48] == a2[48] && a1[49] == a2[49] && *(a1 + 13) == *(a2 + 13) && *(a1 + 14) == *(a2 + 14) && a1[60] == a2[60] && a1[61] == a2[61])
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s7CoreP2P19AWDLSoftErrorReportO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_19:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_100181CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = BYTE4(a2) == BYTE4(a4) && BYTE5(a2) == BYTE5(a4);
  if (a2 != a4)
  {
    v4 = 0;
  }

  if (((a3 ^ a1) & 0xFFFFFFFF0000FF00) != 0)
  {
    v4 = 0;
  }

  return a1 == a3 && v4;
}

BOOL sub_100181D00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  LOBYTE(v20) = BYTE1(a1);
  BYTE1(v20) = BYTE2(a1);
  BYTE2(v20) = BYTE3(a1);
  HIBYTE(v20) = BYTE4(a1);
  LOBYTE(v21) = BYTE5(a1);
  HIBYTE(v21) = BYTE6(a1);
  LOBYTE(v18) = BYTE1(a4);
  BYTE1(v18) = BYTE2(a4);
  BYTE2(v18) = BYTE3(a4);
  HIBYTE(v18) = BYTE4(a4);
  LOBYTE(v19) = BYTE5(a4);
  HIBYTE(v19) = BYTE6(a4);
  if (v20 != v18 || v21 != v19)
  {
    return 0;
  }

  v12 = (a1 & 0x100000000000000) == 0;
  if ((a1 & 0x100000000000000) != 0)
  {
    v13 = 0x73616369746C756DLL;
  }

  else
  {
    v13 = 0x74736163696E75;
  }

  if (v12)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE900000000000074;
  }

  if ((a4 & 0x100000000000000) != 0)
  {
    v15 = 0x73616369746C756DLL;
  }

  else
  {
    v15 = 0x74736163696E75;
  }

  if ((a4 & 0x100000000000000) != 0)
  {
    v16 = 0xE900000000000074;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v13 == v15 && v14 == v16)
  {

    if (a2 != a5)
    {
      return 0;
    }

    return a3 == a6;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v17 & 1) != 0 && a2 == a5)
  {
    return a3 == a6;
  }

  return result;
}

BOOL _s7CoreP2P27NANChannelBoundaryEventDataV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1 | (*(a1 + 2) << 32);
  v3 = *a2 | (*(a2 + 2) << 32);
  v4 = v3 & 0xFF00000000;
  if ((v2 & 0xFF00000000) != 0x300000000)
  {
    if (v4 == 0x300000000)
    {
      return 0;
    }

    *(a1 + 2);
    *(a2 + 2);
    if (*a1 != *a2 || ((0x801004u >> ((v2 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v3 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v7 = v2 >> 40;
    v8 = v3 >> 40;
    if (v7 <= 3)
    {
      if (v7 == 2)
      {
        if (v8 != 2)
        {
          return 0;
        }

        goto LABEL_3;
      }

      if (v7 == 3)
      {
        if (v8 != 3)
        {
          return 0;
        }

        goto LABEL_3;
      }
    }

    else
    {
      switch(v7)
      {
        case 4:
          if (v8 != 4)
          {
            return 0;
          }

          goto LABEL_3;
        case 5:
          if (v8 != 5)
          {
            return 0;
          }

          goto LABEL_3;
        case 6:
          if (v8 != 6)
          {
            return 0;
          }

LABEL_3:
          if (a1[2] != a2[2] || ((0x801004u >> (8 * *(a1 + 12))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 12))) & 0xFFC))
          {
            return 0;
          }

          v5 = *(a1 + 13);
          v6 = *(a2 + 13);
          if (v5 <= 3)
          {
            if (v5 == 2)
            {
              if (v6 != 2)
              {
                return 0;
              }
            }

            else
            {
              if (v5 != 3)
              {
                goto LABEL_34;
              }

              if (v6 != 3)
              {
                return 0;
              }
            }
          }

          else
          {
            switch(v5)
            {
              case 4u:
                if (v6 != 4)
                {
                  return 0;
                }

                break;
              case 5u:
                if (v6 != 5)
                {
                  return 0;
                }

                break;
              case 6u:
                if (v6 != 6)
                {
                  return 0;
                }

                break;
              default:
LABEL_34:
                v9 = 0;
                if (v6 - 2) < 5 || ((v5 ^ v6))
                {
                  return v9;
                }

                break;
            }
          }

          return *(a1 + 2) == *(a2 + 2) && a1[6] == a2[6] && a1[7] == a2[7] && a1[8] == a2[8] && a1[9] == a2[9] && a1[10] == a2[10] && a1[11] == a2[11] && a1[12] == a2[12] && a1[13] == a2[13] && a1[14] == a2[14] && a1[15] == a2[15] && a1[16] == a2[16] && a1[17] == a2[17] && a1[18] == a2[18] && a1[19] == a2[19] && a1[20] == a2[20] && a1[21] == a2[21] && a1[22] == a2[22] && a1[23] == a2[23] && a1[24] == a2[24] && a1[25] == a2[25] && *(a1 + 13) == *(a2 + 13) && *(a1 + 14) == *(a2 + 14) && (sub_1000BEB4C(*(a1 + 15), *(a2 + 15)) & 1) != 0;
      }
    }

    if (v8 - 2) < 5 || ((v8 ^ v7))
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v4 == 0x300000000)
  {
    goto LABEL_3;
  }

  return 0;
}

BOOL sub_100182228(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6 && a3 == a7)
  {
    if (a4 != a8 || ((0x801004u >> ((a4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a8 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    if (BYTE5(a4) <= 3u)
    {
      if (BYTE5(a4) == 2)
      {
        return BYTE5(a8) == 2;
      }

      if (BYTE5(a4) == 3)
      {
        return BYTE5(a8) == 3;
      }
    }

    else
    {
      switch(BYTE5(a4))
      {
        case 4u:
          return BYTE5(a8) == 4;
        case 5u:
          return BYTE5(a8) == 5;
        case 6u:
          return BYTE5(a8) == 6;
      }
    }

    return BYTE5(a8) - 2 >= 5 && (((a8 >> 40) ^ (a4 >> 40)) & 1) == 0;
  }

  return result;
}

BOOL sub_100182320(unint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a1 ^ a3))
  {
    return 0;
  }

  v4 = HIDWORD(a1) | (a2 << 32);
  v5 = HIDWORD(a3) | (a4 << 32);
  v6 = v5 & 0xFF00000000;
  if ((v4 & 0xFF00000000) != 0x300000000)
  {
    if (v6 == 0x300000000 || HIDWORD(a1) != HIDWORD(a3) || ((0x801004u >> ((v4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v5 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    if (BYTE5(v4) <= 3u)
    {
      if (BYTE5(v4) == 2)
      {
        return BYTE5(v5) == 2;
      }

      if (BYTE5(v4) == 3)
      {
        return BYTE5(v5) == 3;
      }
    }

    else
    {
      switch(BYTE5(v4))
      {
        case 4u:
          return BYTE5(v5) == 4;
        case 5u:
          return BYTE5(v5) == 5;
        case 6u:
          return BYTE5(v5) == 6;
      }
    }

    return BYTE5(v5) - 2 >= 5 && ((BYTE5(v5) ^ BYTE5(v4)) & 1) == 0;
  }

  return v6 == 0x300000000;
}

BOOL _s7CoreP2P32NANFollowUpTransferCompleteEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v9) = BYTE2(a1);
  BYTE1(v9) = BYTE3(a1);
  BYTE2(v9) = BYTE4(a1);
  HIBYTE(v9) = BYTE5(a1);
  LOBYTE(v10) = BYTE6(a1);
  HIBYTE(v10) = HIBYTE(a1);
  LOBYTE(v7) = BYTE2(a3);
  BYTE1(v7) = BYTE3(a3);
  BYTE2(v7) = BYTE4(a3);
  HIBYTE(v7) = BYTE5(a3);
  LOBYTE(v8) = BYTE6(a3);
  HIBYTE(v8) = HIBYTE(a3);
  return v9 == v7 && v10 == v8 && a2 == a4;
}

BOOL _s7CoreP2P43NANDataManagementFrameTransferCompleteEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v9) = BYTE1(a1);
  BYTE1(v9) = BYTE2(a1);
  BYTE2(v9) = BYTE3(a1);
  HIBYTE(v9) = BYTE4(a1);
  LOBYTE(v10) = BYTE5(a1);
  HIBYTE(v10) = BYTE6(a1);
  LOBYTE(v7) = BYTE1(a3);
  BYTE1(v7) = BYTE2(a3);
  BYTE2(v7) = BYTE3(a3);
  HIBYTE(v7) = BYTE4(a3);
  LOBYTE(v8) = BYTE5(a3);
  HIBYTE(v8) = BYTE6(a3);
  if (v9 != v7 || v10 != v8)
  {
    return 0;
  }

  v6 = a3 & 0xFF00000000000000;
  if (HIBYTE(a1) != 14)
  {
    if (v6 != 0xE00000000000000 && byte_100491A74[a1 >> 56] == byte_100491A74[a3 >> 56])
    {
      return a2 == a4;
    }

    return 0;
  }

  if (v6 != 0xE00000000000000)
  {
    return 0;
  }

  return a2 == a4;
}

uint64_t sub_10018265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  LOBYTE(v13) = BYTE2(a1);
  BYTE1(v13) = BYTE3(a1);
  BYTE2(v13) = BYTE4(a1);
  HIBYTE(v13) = BYTE5(a1);
  LOBYTE(v15) = BYTE6(a1);
  HIBYTE(v15) = HIBYTE(a1);
  LOBYTE(v9) = BYTE2(a4);
  BYTE1(v9) = BYTE3(a4);
  BYTE2(v9) = BYTE4(a4);
  HIBYTE(v9) = BYTE5(a4);
  LOBYTE(v11) = BYTE6(a4);
  HIBYTE(v11) = HIBYTE(a4);
  if (v13 != v9 || v15 != v11)
  {
    return 0;
  }

  LOWORD(v14) = a2;
  BYTE2(v14) = BYTE2(a2);
  HIBYTE(v14) = BYTE3(a2);
  LOBYTE(v16) = BYTE4(a2);
  HIBYTE(v16) = BYTE5(a2);
  LOWORD(v10) = a5;
  BYTE2(v10) = BYTE2(a5);
  HIBYTE(v10) = BYTE3(a5);
  LOBYTE(v12) = BYTE4(a5);
  HIBYTE(v12) = BYTE5(a5);
  if (v14 != v10 || v16 != v12)
  {
    return 0;
  }

  return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a6);
}

uint64_t sub_1001827E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  LOBYTE(v10) = BYTE2(a1);
  BYTE1(v10) = BYTE3(a1);
  BYTE2(v10) = BYTE4(a1);
  HIBYTE(v10) = BYTE5(a1);
  LOBYTE(v11) = BYTE6(a1);
  HIBYTE(v11) = HIBYTE(a1);
  LOBYTE(v8) = BYTE2(a4);
  BYTE1(v8) = BYTE3(a4);
  BYTE2(v8) = BYTE4(a4);
  HIBYTE(v8) = BYTE5(a4);
  LOBYTE(v9) = BYTE6(a4);
  HIBYTE(v9) = HIBYTE(a4);
  v6 = v10 == v8 && v11 == v9;
  if (!v6 || a2 != a5)
  {
    return 0;
  }

  return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a6);
}

uint64_t _s7CoreP2P11DriverEventO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = *(*(type metadata accessor for DriverEvent.AWDL(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v30 - v8;
  __chkstk_darwin();
  v11 = (&v30 - v10);
  __chkstk_darwin();
  v13 = &v30 - v12;
  __chkstk_darwin();
  v15 = &v30 - v14;
  v16 = *(*(sub_10005DC58(&qword_10058F2C8, &qword_1004919B0) - 8) + 64);
  v17 = __chkstk_darwin();
  v19 = &v30 - v18;
  v20 = &v30 + *(v17 + 56) - v18;
  v21 = a1;
  v22 = v20;
  sub_10001F33C(v21, v19, type metadata accessor for DriverEvent);
  sub_10001F33C(v31, v22, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10001F33C(v19, v13, type metadata accessor for DriverEvent);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1001853BC(v13, type metadata accessor for DriverEvent.AWDL);
          goto LABEL_23;
        }

        sub_10018541C(v22, v5, type metadata accessor for DriverEvent.AWDL);
        v25 = _s7CoreP2P11DriverEventO4AWDLO21__derived_enum_equalsySbAE_AEtFZ_0(v13, v5);
        sub_1001853BC(v5, type metadata accessor for DriverEvent.AWDL);
        sub_1001853BC(v13, type metadata accessor for DriverEvent.AWDL);
      }

      else
      {
        sub_10001F33C(v19, v11, type metadata accessor for DriverEvent);
        v26 = v11[1];
        v32[0] = *v11;
        v32[1] = v26;
        *(&v32[1] + 10) = *(v11 + 26);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_100185528(v32);
          goto LABEL_23;
        }

        v27 = v22[1];
        v33[0] = *v22;
        v33[1] = v27;
        *(&v33[1] + 10) = *(v22 + 26);
        v25 = _s7CoreP2P11DriverEventO5InfraO21__derived_enum_equalsySbAE_AEtFZ_0(v32, v33);
        sub_100185528(v32);
        sub_100185528(v33);
      }
    }

    else
    {
      sub_10001F33C(v19, v15, type metadata accessor for DriverEvent);
      memcpy(v32, v15, 0x16AuLL);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1001854F8(v32);
        goto LABEL_23;
      }

      memcpy(v33, v22, 0x16AuLL);
      v25 = _s7CoreP2P11DriverEventO3NANO21__derived_enum_equalsySbAE_AEtFZ_0(v32, v33);
      sub_1001854F8(v33);
      sub_1001854F8(v32);
    }

LABEL_25:
    sub_1001853BC(v19, type metadata accessor for DriverEvent);
    return v25 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_23;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_23;
    }

    sub_1001853BC(v19, type metadata accessor for DriverEvent);
    v25 = 1;
    return v25 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v28 = v30;
    sub_10001F33C(v19, v30, type metadata accessor for DriverEvent);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_23;
    }

    v25 = *v28 == *v22;
    goto LABEL_25;
  }

  sub_10001F33C(v19, v9, type metadata accessor for DriverEvent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_23:
    sub_100016290(v19, &qword_10058F2C8, &qword_1004919B0);
    v25 = 0;
    return v25 & 1;
  }

  v24 = *v9 ^ *v22;
  sub_1001853BC(v19, type metadata accessor for DriverEvent);
  v25 = v24 ^ 1;
  return v25 & 1;
}

uint64_t _s7CoreP2P11DriverEventO4AWDLO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v164 = a1;
  v165 = a2;
  v152 = type metadata accessor for AWDLIdleActivity(0);
  v2 = *(*(v152 - 8) + 64);
  __chkstk_darwin();
  v154 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v4 = *(*(v153 - 8) + 64);
  __chkstk_darwin();
  v155 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for AWDLActionFrame.Header(0) - 8) + 64);
  __chkstk_darwin();
  v156 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v151 - v8;
  v9 = *(*(type metadata accessor for DriverEvent.AWDL(0) - 8) + 64);
  __chkstk_darwin();
  v162 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v151 - v11;
  __chkstk_darwin();
  v160 = &v151 - v12;
  __chkstk_darwin();
  v14 = &v151 - v13;
  __chkstk_darwin();
  v159 = &v151 - v15;
  __chkstk_darwin();
  v158 = &v151 - v16;
  __chkstk_darwin();
  v163 = &v151 - v17;
  __chkstk_darwin();
  v19 = (&v151 - v18);
  __chkstk_darwin();
  v21 = (&v151 - v20);
  __chkstk_darwin();
  v23 = &v151 - v22;
  __chkstk_darwin();
  v25 = &v151 - v24;
  v26 = *(*(sub_10005DC58(&qword_10058F2D0, &qword_1004919B8) - 8) + 64);
  v27 = __chkstk_darwin();
  v29 = &v151 - v28;
  v30 = &v151 + *(v27 + 56) - v28;
  sub_10001F33C(v164, &v151 - v28, type metadata accessor for DriverEvent.AWDL);
  v31 = v165;
  v165 = v30;
  sub_10001F33C(v31, v30, type metadata accessor for DriverEvent.AWDL);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v164 = v29;
      sub_10001F33C(v29, v23, type metadata accessor for DriverEvent.AWDL);
      v100 = *(v23 + 1);
      v99 = *(v23 + 2);
      v101 = *(v23 + 3);
      v102 = *(sub_10005DC58(&qword_10058C7C8, &unk_100481FE0) + 48);
      v103 = v165;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1001853BC(&v23[v102], type metadata accessor for AWDLActionFrame.Header);
        sub_100048C4C(v100);
        v29 = v164;
        goto LABEL_66;
      }

      v162 = v100;
      v163 = v99;
      v161 = v101;
      v104 = *v23;
      v105 = *v103;
      v107 = *(v103 + 8);
      v106 = *(v103 + 16);
      v108 = *(v103 + 24);
      sub_10018541C(&v23[v102], v157, type metadata accessor for AWDLActionFrame.Header);
      v109 = v103 + v102;
      v110 = v156;
      sub_10018541C(v109, v156, type metadata accessor for AWDLActionFrame.Header);
      if (((0x7F7E0907060504uLL >> (8 * v104)) & 0x7F) != ((0x7F7E0907060504uLL >> (8 * v105)) & 0x7F))
      {
        sub_100048C4C(v107);
        v135 = v162;
LABEL_103:
        sub_100048C4C(v135);
        v136 = v164;
        goto LABEL_104;
      }

      v111 = v162;
      if (v162 >> 30)
      {
        if (v162 >> 30 != 1)
        {
          sub_100048C4C(v162);
          if ((v107 & 0xC0000000) == 0x80000000 && v107 == 0x80000000 && !(v108 | v106))
          {
            sub_100048C4C(0x80000000);
            v136 = v164;
LABEL_112:
            v150 = v157;
            v34 = _s7CoreP2P15AWDLActionFrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(v157, v110);
            sub_1001853BC(v110, type metadata accessor for AWDLActionFrame.Header);
            sub_1001853BC(v150, type metadata accessor for AWDLActionFrame.Header);
            sub_1001853BC(v136, type metadata accessor for DriverEvent.AWDL);
            return v34 & 1;
          }

          v135 = v107;
          goto LABEL_103;
        }

        if ((v107 & 0xC0000000) == 0x40000000)
        {
          v112 = sub_10015D490(v162 & 0xFFFFFFFF00FF01FFLL, v163, v161, v107 & 0xFFFFFFFF00FF01FFLL, v106, v108);
          sub_100048C4C(v107);
          v113 = v111;
          goto LABEL_111;
        }

        goto LABEL_102;
      }

      if ((v107 & 0xC0000000) != 0)
      {
        goto LABEL_102;
      }

      if (v162 == 14)
      {
        if (v107 == 14)
        {
LABEL_110:
          v112 = _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v163, v106);
          sub_100048C4C(v107);
          v113 = v111;
LABEL_111:
          sub_100048C4C(v113);
          v136 = v164;
          if (v112)
          {
            goto LABEL_112;
          }

LABEL_104:
          sub_1001853BC(v110, type metadata accessor for AWDLActionFrame.Header);
          sub_1001853BC(v157, type metadata accessor for AWDLActionFrame.Header);
          sub_1001853BC(v136, type metadata accessor for DriverEvent.AWDL);
          goto LABEL_67;
        }
      }

      else if (v107 != 14 && byte_100491A74[v162] == byte_100491A74[v107])
      {
        goto LABEL_110;
      }

LABEL_102:
      sub_100048C4C(v107);
      v135 = v111;
      goto LABEL_103;
    case 2u:
      sub_10001F33C(v29, v21, type metadata accessor for DriverEvent.AWDL);
      v67 = v21[5];
      v171[1] = v21[4];
      v172 = v67;
      v173 = v21[6];
      v68 = v21[1];
      v168 = *v21;
      v169 = v68;
      v69 = v21[3];
      v170 = v21[2];
      v171[0] = v69;
      v70 = v165;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v71 = v70[5];
        v184[1] = v70[4];
        v185 = v71;
        v186 = v70[6];
        v72 = v70[1];
        v181 = *v70;
        v182 = v72;
        v73 = v70[3];
        v183 = v70[2];
        v184[0] = v73;
        v34 = _s7CoreP2P14AWDLStatisticsO17AirPlayStatisticsV23__derived_struct_equalsySbAE_AEtFZ_0(&v168, &v181);
        sub_100187110(&v168);
        sub_100187110(&v181);
        goto LABEL_58;
      }

      sub_100187110(&v168);
      goto LABEL_66;
    case 3u:
      sub_10001F33C(v29, v19, type metadata accessor for DriverEvent.AWDL);
      v74 = v19[2];
      v75 = v19[3];
      v76 = *v19;
      v169 = v19[1];
      v170 = v74;
      v171[0] = v75;
      *(v171 + 10) = *(v19 + 58);
      v168 = v76;
      v77 = v165;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_66;
      }

      v78 = v77[2];
      v79 = v77[3];
      v80 = *v77;
      v182 = v77[1];
      v183 = v78;
      v184[0] = v79;
      *(v184 + 10) = *(v77 + 58);
      v181 = v80;
      v34 = _s7CoreP2P14AWDLStatisticsO13RtgStatisticsV23__derived_struct_equalsySbAE_AEtFZ_0(&v168, &v181);
      goto LABEL_58;
    case 4u:
      v35 = v163;
      sub_10001F33C(v29, v163, type metadata accessor for DriverEvent.AWDL);
      v36 = v165;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v132 = type metadata accessor for AWDLStatistics.LowLatencyStatistics;
        goto LABEL_65;
      }

      v37 = v155;
      sub_10018541C(v36, v155, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      if (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(v35, v37))
      {
        v38 = &v35[*(v153 + 20)];
        v39 = *(v38 + 11);
        v177 = *(v38 + 10);
        v178 = v39;
        v179 = *(v38 + 12);
        v180 = *(v38 + 26);
        v40 = *(v38 + 7);
        v173 = *(v38 + 6);
        v174 = v40;
        v41 = *(v38 + 9);
        v175 = *(v38 + 8);
        v176 = v41;
        v42 = *(v38 + 3);
        v170 = *(v38 + 2);
        v171[0] = v42;
        v43 = *(v38 + 5);
        v171[1] = *(v38 + 4);
        v172 = v43;
        v44 = *(v38 + 1);
        v168 = *v38;
        v169 = v44;
        v46 = *(v38 + 264);
        v45 = *(v38 + 280);
        v166[2] = *(v38 + 248);
        v166[3] = v46;
        v47 = *(v38 + 232);
        v48 = *(v38 + 328);
        v166[8] = *(v38 + 344);
        v49 = *(v38 + 296);
        v166[6] = *(v38 + 312);
        v166[7] = v48;
        v166[4] = v45;
        v166[5] = v49;
        v166[0] = *(v38 + 216);
        v166[1] = v47;
        v50 = &v37[*(v153 + 20)];
        v51 = *(v50 + 11);
        v190 = *(v50 + 10);
        v191 = v51;
        v192 = *(v50 + 12);
        v193 = *(v50 + 26);
        v52 = *(v50 + 7);
        v186 = *(v50 + 6);
        v187 = v52;
        v53 = *(v50 + 9);
        v188 = *(v50 + 8);
        v189 = v53;
        v54 = *(v50 + 3);
        v183 = *(v50 + 2);
        v184[0] = v54;
        v55 = *(v50 + 5);
        v184[1] = *(v50 + 4);
        v185 = v55;
        v56 = *(v50 + 1);
        v181 = *v50;
        v182 = v56;
        v57 = *(v50 + 296);
        v58 = *(v50 + 328);
        v59 = *(v50 + 344);
        v167[6] = *(v50 + 312);
        v167[7] = v58;
        v167[8] = v59;
        v60 = *(v50 + 264);
        v61 = *(v50 + 280);
        v167[2] = *(v50 + 248);
        v167[3] = v60;
        v62 = *(v50 + 232);
        v167[4] = v61;
        v167[5] = v57;
        v167[0] = *(v50 + 216);
        v167[1] = v62;
        if (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV6CountsV23__derived_struct_equalsySbAI_AItFZ_0(&v168, &v181) && (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(v166, v167) & 1) != 0)
        {
          sub_1001853BC(v37, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
          sub_1001853BC(v35, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
          goto LABEL_41;
        }
      }

      sub_1001853BC(v37, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      sub_1001853BC(v35, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      goto LABEL_77;
    case 5u:
      v114 = v158;
      sub_10001F33C(v29, v158, type metadata accessor for DriverEvent.AWDL);
      v115 = v165;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_66;
      }

      v116 = *v114 == *v115 && v114[1] == v115[1];
      goto LABEL_55;
    case 6u:
      v117 = v159;
      sub_10001F33C(v29, v159, type metadata accessor for DriverEvent.AWDL);
      v118 = *(v117 + 4);
      v119 = *(v117 + 1);
      v120 = v165;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_66;
      }

      if (*v117 != *v120)
      {
        goto LABEL_77;
      }

      v121 = v119 | (v118 << 32);
      v122 = *(v120 + 1) | (*(v120 + 4) << 32);
      v123 = v122 & 0xFF00000000;
      if ((v121 & 0xFF00000000) == 0x300000000)
      {
        if (v123 == 0x300000000)
        {
          goto LABEL_41;
        }

        goto LABEL_77;
      }

      if (v123 == 0x300000000)
      {
        goto LABEL_77;
      }

      *(v120 + 4);
      if (v119 != *(v120 + 1) || ((0x801004u >> ((v121 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v122 >> 29) & 0xF8)) & 0xFFC))
      {
        goto LABEL_77;
      }

      if (BYTE5(v121) <= 3u)
      {
        if (BYTE5(v121) == 2)
        {
          if (BYTE5(v122) == 2)
          {
            goto LABEL_41;
          }

          goto LABEL_77;
        }

        if (BYTE5(v121) == 3)
        {
          if (BYTE5(v122) == 3)
          {
            goto LABEL_41;
          }

          goto LABEL_77;
        }
      }

      else
      {
        switch(BYTE5(v121))
        {
          case 4u:
            if (BYTE5(v122) == 4)
            {
              goto LABEL_41;
            }

            goto LABEL_77;
          case 5u:
            if (BYTE5(v122) == 5)
            {
              goto LABEL_41;
            }

            goto LABEL_77;
          case 6u:
            if (BYTE5(v122) == 6)
            {
              goto LABEL_41;
            }

            goto LABEL_77;
        }
      }

      if (BYTE5(v122) - 2 >= 5 && ((BYTE5(v122) ^ BYTE5(v121)) & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_77;
    case 7u:
      sub_10001F33C(v29, v14, type metadata accessor for DriverEvent.AWDL);
      v82 = *v14;
      v81 = *(v14 + 1);
      v84 = *(v14 + 2);
      v83 = *(v14 + 3);
      v85 = v14[32];
      v86 = v165;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_1000B2258(v82, v81, v84, v83, v85);
        goto LABEL_66;
      }

      v87 = v86;
      v88 = *v86;
      v90 = v87[1];
      v89 = v87[2];
      v91 = v87[3];
      v92 = *(v87 + 32);
      if (v85)
      {
        if ((v92 & 1) == 0)
        {
          v134 = 0;
          goto LABEL_76;
        }

        if (v82 == v88 && v81 == v90 || (v164 = v29, v93 = v89, v94 = v91, v95 = _stringCompareWithSmolCheck(_:_:expecting:)(), v89 = v93, v29 = v164, v91 = v94, (v95 & 1) != 0))
        {
          if (v84 == v89 && v83 == v91)
          {
            v96 = v88;
            v97 = v90;
            v89 = v84;
            v91 = v83;
            v98 = 1;
LABEL_81:
            sub_1000B2258(v96, v97, v89, v91, v98);
            sub_1000B2258(v82, v81, v84, v83, v85);
LABEL_41:
            sub_1001853BC(v29, type metadata accessor for DriverEvent.AWDL);
            v34 = 1;
            return v34 & 1;
          }

          v146 = v89;
          v147 = v29;
          v148 = v91;
          LODWORD(v165) = _stringCompareWithSmolCheck(_:_:expecting:)();
          v149 = v148;
          v29 = v147;
          sub_1000B2258(v88, v90, v146, v149, 1);
          v141 = v82;
          v142 = v81;
          v143 = v84;
          v144 = v83;
          v145 = 1;
          goto LABEL_100;
        }

LABEL_71:
        v134 = 1;
LABEL_76:
        sub_1000B2258(v88, v90, v89, v91, v134);
        sub_1000B2258(v82, v81, v84, v83, v85);
        goto LABEL_77;
      }

      if (v92)
      {
        goto LABEL_71;
      }

      if (v82 == v88 && v81 == v90)
      {
        v96 = v82;
        v97 = v81;
        v98 = 0;
        goto LABEL_81;
      }

      v137 = v89;
      v138 = v29;
      v139 = v91;
      LODWORD(v165) = _stringCompareWithSmolCheck(_:_:expecting:)();
      v140 = v139;
      v29 = v138;
      sub_1000B2258(v88, v90, v137, v140, 0);
      v141 = v82;
      v142 = v81;
      v143 = v84;
      v144 = v83;
      v145 = 0;
LABEL_100:
      sub_1000B2258(v141, v142, v143, v144, v145);
      if (v165)
      {
        goto LABEL_41;
      }

LABEL_77:
      sub_1001853BC(v29, type metadata accessor for DriverEvent.AWDL);
LABEL_67:
      v34 = 0;
      return v34 & 1;
    case 8u:
      v128 = v160;
      sub_10001F33C(v29, v160, type metadata accessor for DriverEvent.AWDL);
      v129 = v165;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_66;
      }

      v130 = *(v128 + 4);
      v131 = *(v129 + 4);
      LODWORD(v181) = *v128;
      WORD2(v181) = v130;
      v116 = v181 == *v129 && v130 == v131;
LABEL_55:
      v34 = v116;
      goto LABEL_58;
    case 9u:
      v63 = v161;
      sub_10001F33C(v29, v161, type metadata accessor for DriverEvent.AWDL);
      v64 = *v63;
      v65 = v165;
      if (swift_getEnumCaseMultiPayload() != 9)
      {

        goto LABEL_66;
      }

      v66 = *v65;
      v34 = _s7CoreP2P14AWDLStatisticsO7FailureV23__derived_struct_equalsySbAE_AEtFZ_0(v64, *(v63 + 8), *v65, *(v65 + 8));

LABEL_58:
      sub_1001853BC(v29, type metadata accessor for DriverEvent.AWDL);
      return v34 & 1;
    case 0xAu:
      v35 = v162;
      sub_10001F33C(v29, v162, type metadata accessor for DriverEvent.AWDL);
      v124 = v165;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v132 = type metadata accessor for AWDLIdleActivity;
LABEL_65:
        sub_1001853BC(v35, v132);
LABEL_66:
        sub_100016290(v29, &qword_10058F2D0, &qword_1004919B8);
        goto LABEL_67;
      }

      v125 = v154;
      sub_10018541C(v124, v154, type metadata accessor for AWDLIdleActivity);
      if (static DispatchTimeInterval.== infix(_:_:)())
      {
        v126 = *(v152 + 20);
        v127 = static DispatchTimeInterval.== infix(_:_:)();
        sub_1001853BC(v125, type metadata accessor for AWDLIdleActivity);
        if (v127)
        {
          sub_1001853BC(v35, type metadata accessor for AWDLIdleActivity);
          goto LABEL_41;
        }
      }

      else
      {
        sub_1001853BC(v125, type metadata accessor for AWDLIdleActivity);
      }

      sub_1001853BC(v35, type metadata accessor for AWDLIdleActivity);
      goto LABEL_77;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_66;
      }

      goto LABEL_41;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_66;
      }

      goto LABEL_41;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_41;
      }

      goto LABEL_66;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_66;
      }

      goto LABEL_41;
    default:
      sub_10001F33C(v29, v25, type metadata accessor for DriverEvent.AWDL);
      v32 = v165;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_66;
      }

      v33 = *v25 ^ *v32;
      sub_1001853BC(v29, type metadata accessor for DriverEvent.AWDL);
      v34 = v33 ^ 1;
      return v34 & 1;
  }
}

uint64_t _s7CoreP2P24NANOOBFrameReceivedEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  LODWORD(v12[0]) = *a1;
  v2 = *(a1 + 4);
  WORD2(v12[0]) = *(a1 + 4);
  v3 = LODWORD(v12[0]) == *a2 && v2 == *(a2 + 4);
  if (v3 && ((LODWORD(v12[0]) = *(a1 + 6), v4 = *(a1 + 10), WORD2(v12[0]) = *(a1 + 10), LODWORD(v12[0]) == *(a2 + 6)) ? (v5 = v4 == *(a2 + 10)) : (v5 = 0), v5))
  {
    v8 = *(a1 + 32);
    v12[0] = *(a1 + 16);
    v12[1] = v8;
    v13 = *(a1 + 48);
    v9 = *(a2 + 32);
    v10[0] = *(a2 + 16);
    v10[1] = v9;
    v11 = *(a2 + 48);
    v6 = _s7CoreP2P14IEEE80211FrameV10ManagementO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v10);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _s7CoreP2P28NANDataResponseReceivedEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a1 != a5 || BYTE1(a1) != BYTE1(a5))
  {
    return 0;
  }

  LOBYTE(v17) = BYTE2(a1);
  BYTE1(v17) = BYTE3(a1);
  BYTE2(v17) = BYTE4(a1);
  HIBYTE(v17) = BYTE5(a1);
  LOBYTE(v19) = BYTE6(a1);
  HIBYTE(v19) = HIBYTE(a1);
  LOBYTE(v12) = BYTE2(a5);
  BYTE1(v12) = BYTE3(a5);
  BYTE2(v12) = BYTE4(a5);
  HIBYTE(v12) = BYTE5(a5);
  LOBYTE(v15) = BYTE6(a5);
  HIBYTE(v15) = HIBYTE(a5);
  if (v17 != v12 || v19 != v15)
  {
    return 0;
  }

  LOWORD(v18) = a2;
  BYTE2(v18) = BYTE2(a2);
  HIBYTE(v18) = BYTE3(a2);
  LOBYTE(v20) = BYTE4(a2);
  HIBYTE(v20) = BYTE5(a2);
  LOWORD(v13) = a6;
  BYTE2(v13) = BYTE2(a6);
  HIBYTE(v13) = BYTE3(a6);
  LOBYTE(v16) = BYTE4(a6);
  HIBYTE(v16) = BYTE5(a6);
  if (v18 != v13 || v20 != v16)
  {
    return 0;
  }

  BYTE6(v14) = BYTE6(a2);
  BYTE7(v14) = HIBYTE(a2);
  DWORD2(v14) = a3;
  LOBYTE(v14) = BYTE6(a6);
  BYTE1(v14) = HIBYTE(a6);
  *(&v14 + 2) = a7;
  if (*(&v14 + 6) != v14 || HIWORD(a3) != HIWORD(a7))
  {
    return 0;
  }

  return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a4, a8);
}

uint64_t sub_100184290(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 4)
  {
    return sub_10000AB0C(a2, a3);
  }

  return result;
}

uint64_t sub_1001842AC(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_1001842C4(result, a2, a3, BYTE2(a3) & 1);
  }

  return result;
}

uint64_t sub_1001842C4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1000124C8(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1001842D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 4)
  {
    return sub_1000124C8(a2, a3);
  }

  return result;
}

uint64_t _s7CoreP2P11DriverEventO3NANO21__derived_enum_equalsySbAE_AEtFZ_0(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x16AuLL);
  switch(sub_100185198(__dst))
  {
    case 1u:
      v59 = NANBitmap.Channel.operatingClass.getter(__dst);
      v60 = *v59;
      v61 = *(v59 + 1);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 1)
      {
        goto LABEL_199;
      }

      v62 = NANBitmap.Channel.operatingClass.getter(v165);
      v63 = *v62;
      v64 = *(v62 + 1);
      if (v60 == 4)
      {
        if (v63 == 4 && v61 == v64)
        {
          goto LABEL_198;
        }
      }

      else
      {
        if (v60 == 3)
        {
          if (v63 != 3)
          {
            goto LABEL_199;
          }
        }

        else if (v60 == 2)
        {
          if (v63 != 2)
          {
            goto LABEL_199;
          }
        }

        else if (v63 - 2) < 3 || ((v60 ^ v63))
        {
          goto LABEL_199;
        }

        if (v61 == v64)
        {
          goto LABEL_198;
        }
      }

      goto LABEL_199;
    case 2u:
      v45 = NANBitmap.Channel.operatingClass.getter(__dst);
      v46 = *v45;
      v47 = v45[1];
      LODWORD(v167[0]) = *(v45 + 2);
      WORD2(v167[0]) = *(v45 + 3);
      v49 = *(v45 + 1);
      v48 = *(v45 + 2);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) == 2)
      {
        goto LABEL_112;
      }

      goto LABEL_199;
    case 3u:
      v55 = NANBitmap.Channel.operatingClass.getter(__dst);
      v46 = *v55;
      v47 = v55[1];
      LODWORD(v167[0]) = *(v55 + 2);
      WORD2(v167[0]) = *(v55 + 3);
      v49 = *(v55 + 1);
      v48 = *(v55 + 2);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) == 3)
      {
        goto LABEL_112;
      }

      goto LABEL_199;
    case 4u:
      v23 = NANBitmap.Channel.operatingClass.getter(__dst);
      v24 = *v23;
      LODWORD(v167[0]) = *(v23 + 1);
      WORD2(v167[0]) = *(v23 + 5);
      v25 = v23[7];
      v14 = v23[8];
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 4)
      {
        goto LABEL_199;
      }

      v26 = NANBitmap.Channel.operatingClass.getter(v165);
      if (v24 != *v26)
      {
        goto LABEL_199;
      }

      v27 = v26[7];
      v17 = v26[8];
      LODWORD(v164[0]) = v167[0];
      WORD2(v164[0]) = WORD2(v167[0]);
      if (LODWORD(v167[0]) != *(v26 + 1) || WORD2(v167[0]) != *(v26 + 5))
      {
        goto LABEL_199;
      }

      if (v25 == 14)
      {
        if (v27 == 14)
        {
LABEL_22:
          if (v14 == v17)
          {
            goto LABEL_198;
          }
        }
      }

      else if (v27 != 14 && byte_100491A74[v25] == byte_100491A74[v27] && v14 == v17)
      {
        goto LABEL_198;
      }

      goto LABEL_199;
    case 5u:
      v76 = NANBitmap.Channel.operatingClass.getter(__dst);
      v57 = *v76;
      v58 = v76[1];
      LODWORD(v167[0]) = *(v76 + 2);
      WORD2(v167[0]) = *(v76 + 3);
      LODWORD(v164[0]) = *(v76 + 2);
      WORD2(v164[0]) = *(v76 + 6);
      v48 = *(v76 + 2);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) == 5)
      {
        goto LABEL_96;
      }

      goto LABEL_199;
    case 6u:
      v86 = NANBitmap.Channel.operatingClass.getter(__dst);
      v87 = *v86;
      v88 = *(v86 + 8);
      v89 = *(v86 + 16);
      v90 = *(v86 + 24);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 6)
      {
        goto LABEL_199;
      }

      v91 = NANBitmap.Channel.operatingClass.getter(v165);
      started = _s7CoreP2P28NANDataResponseReceivedEventV23__derived_struct_equalsySbAC_ACtFZ_0(v87, v88, v89, v90, *v91, *(v91 + 8), *(v91 + 16), *(v91 + 24));
      return started & 1;
    case 7u:
      v56 = NANBitmap.Channel.operatingClass.getter(__dst);
      v57 = *v56;
      v58 = v56[1];
      LODWORD(v167[0]) = *(v56 + 2);
      WORD2(v167[0]) = *(v56 + 3);
      LODWORD(v164[0]) = *(v56 + 2);
      WORD2(v164[0]) = *(v56 + 6);
      v48 = *(v56 + 2);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 7)
      {
        goto LABEL_199;
      }

LABEL_96:
      v77 = NANBitmap.Channel.operatingClass.getter(v165);
      if (v57 != *v77 || v58 != v77[1])
      {
        goto LABEL_199;
      }

      v78 = *(v77 + 2);
      if (LODWORD(v167[0]) != *(v77 + 2) || WORD2(v167[0]) != *(v77 + 3))
      {
        goto LABEL_199;
      }

      if (LODWORD(v164[0]) != *(v77 + 2) || WORD2(v164[0]) != *(v77 + 6))
      {
        goto LABEL_199;
      }

      goto LABEL_120;
    case 8u:
      v110 = NANBitmap.Channel.operatingClass.getter(__dst);
      v111 = *v110;
      v112 = *(v110 + 4);
      v113 = *(v110 + 5);
      v114 = *(v110 + 6);
      v115 = *(v110 + 7);
      v116 = v110[2];
      v117 = *(v110 + 12);
      v118 = *(v110 + 13);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 8)
      {
        goto LABEL_199;
      }

      v119 = NANBitmap.Channel.operatingClass.getter(v165);
      v120 = *v119;
      v121 = *(v119 + 4);
      v122 = *(v119 + 5);
      v123 = *(v119 + 6);
      v124 = *(v119 + 7);
      v125 = v119[2];
      v126 = *(v119 + 12);
      v127 = *(v119 + 13);
      if (v115)
      {
        v128 = 0x100000000000000;
      }

      else
      {
        v128 = 0;
      }

      v129 = v120 | (v121 << 32);
      if (v124)
      {
        v130 = 0x100000000000000;
      }

      else
      {
        v130 = 0;
      }

      started = sub_100180FF8(v111 | (v112 << 32) | (v113 << 40) | (v114 << 48) | v128, v116 | (v117 << 32) | (v118 << 40), v129 | (v122 << 40) | (v123 << 48) | v130, v125 | (v126 << 32) | (v127 << 40));
      return started & 1;
    case 9u:
      v31 = NANBitmap.Channel.operatingClass.getter(__dst);
      v32 = *v31;
      LODWORD(v167[0]) = *(v31 + 1);
      WORD2(v167[0]) = *(v31 + 5);
      v33 = v31[7];
      v34 = *(v31 + 1);
      v35 = v31[16];
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 9)
      {
        goto LABEL_199;
      }

      v36 = NANBitmap.Channel.operatingClass.getter(v165);
      if (v32 != *v36)
      {
        goto LABEL_199;
      }

      v37 = v36[7];
      v38 = *(v36 + 1);
      v39 = v36[16];
      LODWORD(v164[0]) = v167[0];
      WORD2(v164[0]) = WORD2(v167[0]);
      if (LODWORD(v167[0]) != *(v36 + 1) || WORD2(v167[0]) != *(v36 + 5))
      {
        goto LABEL_199;
      }

      if (v33)
      {
        v41 = 0x73616369746C756DLL;
      }

      else
      {
        v41 = 0x74736163696E75;
      }

      if (v33)
      {
        v42 = 0xE900000000000074;
      }

      else
      {
        v42 = 0xE700000000000000;
      }

      if (v37)
      {
        v43 = 0x73616369746C756DLL;
      }

      else
      {
        v43 = 0x74736163696E75;
      }

      if (v37)
      {
        v44 = 0xE900000000000074;
      }

      else
      {
        v44 = 0xE700000000000000;
      }

      if (v41 == v43 && v42 == v44)
      {

        if (v34 != v38)
        {
          goto LABEL_199;
        }
      }

      else
      {
        v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v145 & 1) == 0 || v34 != v38)
        {
          goto LABEL_199;
        }
      }

      if (v35 == v39)
      {
        goto LABEL_198;
      }

      goto LABEL_199;
    case 0xAu:
      v106 = NANBitmap.Channel.operatingClass.getter(__dst);
      v107 = *v106;
      v108 = v106[1];
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 10)
      {
        goto LABEL_199;
      }

      v109 = NANBitmap.Channel.operatingClass.getter(v165);
      started = _s7CoreP2P24NANDataHostAssistRequestV23__derived_struct_equalsySbAC_ACtFZ_0(v107, v108, *v109, v109[1]);
      return started & 1;
    case 0xBu:
      v19 = NANBitmap.Channel.operatingClass.getter(__dst);
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = v19[16];
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) == 11)
      {
        goto LABEL_37;
      }

      goto LABEL_199;
    case 0xCu:
      v29 = NANBitmap.Channel.operatingClass.getter(__dst);
      v20 = *v29;
      v21 = *(v29 + 1);
      v22 = v29[16];
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 12)
      {
        goto LABEL_199;
      }

LABEL_37:
      v30 = NANBitmap.Channel.operatingClass.getter(v165);
      if (v20 != *v30 || v21 != *(v30 + 1) || v22 != v30[16])
      {
        goto LABEL_199;
      }

      goto LABEL_198;
    case 0xDu:
      v82 = NANBitmap.Channel.operatingClass.getter(__dst);
      v46 = *v82;
      v47 = v82[1];
      LODWORD(v167[0]) = *(v82 + 2);
      WORD2(v167[0]) = *(v82 + 3);
      v49 = *(v82 + 1);
      v48 = *(v82 + 2);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 13)
      {
        goto LABEL_199;
      }

LABEL_112:
      v83 = NANBitmap.Channel.operatingClass.getter(v165);
      if (v46 != *v83 || v47 != v83[1])
      {
        goto LABEL_199;
      }

      v84 = *(v83 + 1);
      v78 = *(v83 + 2);
      LODWORD(v164[0]) = v167[0];
      WORD2(v164[0]) = WORD2(v167[0]);
      v85 = LODWORD(v167[0]) == *(v83 + 2) && WORD2(v167[0]) == *(v83 + 3);
      if (!v85 || v49 != v84)
      {
        goto LABEL_199;
      }

LABEL_120:
      if ((_s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v48, v78) & 1) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_198;
    case 0xEu:
      v11 = NANBitmap.Channel.operatingClass.getter(__dst);
      v12 = *v11;
      v13 = v11[1];
      LODWORD(v167[0]) = *(v11 + 2);
      WORD2(v167[0]) = *(v11 + 3);
      v14 = v11[8];
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 14)
      {
        goto LABEL_199;
      }

      v15 = NANBitmap.Channel.operatingClass.getter(v165);
      if (v12 != *v15 || v13 != v15[1])
      {
        goto LABEL_199;
      }

      v17 = v15[8];
      LODWORD(v164[0]) = v167[0];
      WORD2(v164[0]) = WORD2(v167[0]);
      if (LODWORD(v167[0]) != *(v15 + 2) || WORD2(v167[0]) != *(v15 + 3))
      {
        goto LABEL_199;
      }

      goto LABEL_22;
    case 0xFu:
      v50 = NANBitmap.Channel.operatingClass.getter(__dst);
      v51 = *v50;
      v52 = *(v50 + 2);
      v53 = *(v50 + 3);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 15)
      {
        goto LABEL_199;
      }

      v54 = NANBitmap.Channel.operatingClass.getter(v165);
      if (v51 != *v54 || v52 != *(v54 + 2) || v53 != *(v54 + 3))
      {
        goto LABEL_199;
      }

      goto LABEL_198;
    case 0x10u:
      v7 = NANBitmap.Channel.operatingClass.getter(__dst);
      v8 = *(v7 + 16);
      v167[0] = *v7;
      v167[1] = v8;
      v167[2] = *(v7 + 32);
      LOBYTE(v167[3]) = *(v7 + 48);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 16)
      {
        goto LABEL_199;
      }

      v9 = NANBitmap.Channel.operatingClass.getter(v165);
      v10 = *(v9 + 16);
      v164[0] = *v9;
      v164[1] = v10;
      v164[2] = *(v9 + 32);
      LOBYTE(v164[3]) = *(v9 + 48);
      started = _s7CoreP2P24NANOOBFrameReceivedEventV23__derived_struct_equalsySbAC_ACtFZ_0(v167, v164);
      return started & 1;
    case 0x11u:
      v65 = NANBitmap.Channel.operatingClass.getter(__dst);
      v67 = *v65;
      v66 = *(v65 + 8);
      v68 = *(v65 + 16);
      v69 = *(v65 + 24);
      v70 = *(v65 + 28);
      v71 = *(v65 + 29);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 17)
      {
        goto LABEL_199;
      }

      v72 = NANBitmap.Channel.operatingClass.getter(v165);
      if (v67 != *v72 || v66 != *(v72 + 8) || v68 != *(v72 + 16) || v69 != *(v72 + 24) || ((0x801004u >> (8 * v70)) & 0xFFC) != ((0x801004u >> (8 * *(v72 + 28))) & 0xFFC))
      {
        goto LABEL_199;
      }

      v73 = *(v72 + 29);
      if (v71 <= 3)
      {
        if (v71 == 2)
        {
          if (v73 == 2)
          {
            goto LABEL_198;
          }

          goto LABEL_199;
        }

        if (v71 == 3)
        {
          if (v73 == 3)
          {
            goto LABEL_198;
          }

          goto LABEL_199;
        }
      }

      else
      {
        switch(v71)
        {
          case 4:
            if (v73 == 4)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
          case 5:
            if (v73 == 5)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
          case 6:
            if (v73 == 6)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
        }
      }

      if ((v73 - 2) >= 5 && ((v71 ^ v73) & 1) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_199;
    case 0x12u:
      v92 = NANBitmap.Channel.operatingClass.getter(__dst);
      v93 = *v92;
      v94 = *(v92 + 4);
      v162 = *(v92 + 5);
      v95 = *(v92 + 6);
      v96 = *(v92 + 7);
      v163 = *(v92 + 1);
      v97 = v92[4];
      v98 = *(v92 + 20);
      v99 = *(v92 + 21);
      v100 = *(v92 + 11);
      v161 = *(v92 + 10);
      v159 = *(v92 + 6);
      v160 = *(v92 + 56);
      v158 = *(v92 + 8);
      v157 = v92[18];
      v156 = *(v92 + 76);
      v155 = *(v92 + 77);
      v153 = *(v92 + 11);
      v154 = *(v92 + 10);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 18)
      {
        goto LABEL_199;
      }

      v101 = NANBitmap.Channel.operatingClass.getter(v165);
      v151 = *(v101 + 24);
      v152 = *(v101 + 40);
      v102 = v93 | (v94 << 32);
      v103 = *(v101 + 56);
      v104 = *(v101 + 64);
      v105 = *(v101 + 72);
      v150 = *(v101 + 76);
      v149 = *(v101 + 77);
      v147 = *(v101 + 88);
      v148 = *(v101 + 80);
      if (!_s7CoreP2P14IEEE80211FrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(v102 | (v162 << 40) | (v95 << 48) | (v96 << 56), v163, v97 | (v98 << 32) | (v99 << 40) | (v100 << 48), *v101, *(v101 + 8), *(v101 + 16)))
      {
        goto LABEL_199;
      }

      v164[0] = v159;
      v164[1] = v161;
      LOBYTE(v164[2]) = v160;
      v167[0] = v151;
      v167[1] = v152;
      LOBYTE(v167[2]) = v103;
      if ((_s7CoreP2P14IEEE80211FrameV8ContentsO21__derived_enum_equalsySbAE_AEtFZ_0(v164, v167) & 1) == 0 || v158 != v104 || v157 != v105 || ((0x801004u >> (8 * v156)) & 0xFFC) != ((0x801004u >> (8 * v150)) & 0xFFC))
      {
        goto LABEL_199;
      }

      if (v155 <= 3)
      {
        if (v155 == 2)
        {
          if (v149 != 2)
          {
            goto LABEL_199;
          }

          goto LABEL_196;
        }

        if (v155 == 3)
        {
          if (v149 != 3)
          {
            goto LABEL_199;
          }

          goto LABEL_196;
        }
      }

      else
      {
        switch(v155)
        {
          case 4:
            if (v149 != 4)
            {
              goto LABEL_199;
            }

            goto LABEL_196;
          case 5:
            if (v149 != 5)
            {
              goto LABEL_199;
            }

            goto LABEL_196;
          case 6:
            if (v149 != 6)
            {
              goto LABEL_199;
            }

            goto LABEL_196;
        }
      }

      if (v149 - 2) < 5 || ((v149 ^ v155))
      {
        goto LABEL_199;
      }

LABEL_196:
      if (v154 == v148 && v153 == v147)
      {
LABEL_198:
        started = 1;
        return started & 1;
      }

LABEL_199:
      started = 0;
      return started & 1;
    case 0x13u:
      v141 = NANBitmap.Channel.operatingClass.getter(__dst);
      memcpy(v167, v141, 0x169uLL);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 19)
      {
        goto LABEL_199;
      }

      v142 = NANBitmap.Channel.operatingClass.getter(v165);
      memcpy(v164, v142, 0x169uLL);
      started = _s7CoreP2P23NANCoreAnalyticsMetricsV23__derived_struct_equalsySbAC_ACtFZ_0(v167, v164);
      return started & 1;
    case 0x14u:
      v74 = *NANBitmap.Channel.operatingClass.getter(__dst);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 20)
      {
        goto LABEL_199;
      }

      v75 = NANBitmap.Channel.operatingClass.getter(v165);
      started = _s7CoreP2P19InfraScanStartEventV23__derived_struct_equalsySbAC_ACtFZ_0(v74, *v75);
      return started & 1;
    case 0x15u:
      v81 = *NANBitmap.Channel.operatingClass.getter(__dst);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 21)
      {
        goto LABEL_199;
      }

      started = ((0x801004u >> (8 * v81)) & 0xFFC) == ((0x801004u >> (8 * *NANBitmap.Channel.operatingClass.getter(v165))) & 0xFFC);
      return started & 1;
    case 0x16u:
      v131 = NANBitmap.Channel.operatingClass.getter(__dst);
      v132 = v131[5];
      v167[4] = v131[4];
      v167[5] = v132;
      v133 = v131[7];
      v167[6] = v131[6];
      v167[7] = v133;
      v134 = v131[1];
      v167[0] = *v131;
      v167[1] = v134;
      v135 = v131[3];
      v167[2] = v131[2];
      v167[3] = v135;
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165) != 22)
      {
        goto LABEL_199;
      }

      v136 = NANBitmap.Channel.operatingClass.getter(v165);
      v137 = v136[5];
      v164[4] = v136[4];
      v164[5] = v137;
      v138 = v136[7];
      v164[6] = v136[6];
      v164[7] = v138;
      v139 = v136[1];
      v164[0] = *v136;
      v164[1] = v139;
      v140 = v136[3];
      v164[2] = v136[2];
      v164[3] = v140;
      started = _s7CoreP2P27NANChannelBoundaryEventDataV23__derived_struct_equalsySbAC_ACtFZ_0(v167, v164);
      return started & 1;
    default:
      v3 = NANBitmap.Channel.operatingClass.getter(__dst);
      LODWORD(v167[0]) = *v3;
      WORD2(v167[0]) = *(v3 + 4);
      memcpy(v165, a2, 0x16AuLL);
      if (sub_100185198(v165))
      {
        goto LABEL_199;
      }

      v4 = NANBitmap.Channel.operatingClass.getter(v165);
      started = LODWORD(v167[0]) == *v4 && WORD2(v167[0]) == *(v4 + 4);
      return started & 1;
  }
}

uint64_t _s7CoreP2P16NANSubReasonCodeO8rawValueACSgs5UInt8V_tcfC_0(uint64_t result)
{
  if (result >= 0x2Fu)
  {
    return 47;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1001853BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018541C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100185484(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1000B1BE0(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

unint64_t sub_100185594()
{
  result = qword_10058EFC8;
  if (!qword_10058EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EFC8);
  }

  return result;
}

unint64_t sub_1001855EC()
{
  result = qword_10058EFD0;
  if (!qword_10058EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EFD0);
  }

  return result;
}

unint64_t sub_100185644()
{
  result = qword_10058EFD8;
  if (!qword_10058EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EFD8);
  }

  return result;
}

unint64_t sub_10018569C()
{
  result = qword_10058EFE0;
  if (!qword_10058EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EFE0);
  }

  return result;
}

unint64_t sub_1001856F4()
{
  result = qword_10058EFE8;
  if (!qword_10058EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EFE8);
  }

  return result;
}

unint64_t sub_10018574C()
{
  result = qword_10058EFF0;
  if (!qword_10058EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EFF0);
  }

  return result;
}

unint64_t sub_1001857A4()
{
  result = qword_10058EFF8;
  if (!qword_10058EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EFF8);
  }

  return result;
}

unint64_t sub_1001857FC()
{
  result = qword_10058F000;
  if (!qword_10058F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F000);
  }

  return result;
}

unint64_t sub_100185854()
{
  result = qword_10058F008;
  if (!qword_10058F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F008);
  }

  return result;
}

unint64_t sub_1001858AC()
{
  result = qword_10058F010;
  if (!qword_10058F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F010);
  }

  return result;
}

unint64_t sub_100185904()
{
  result = qword_10058F018;
  if (!qword_10058F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F018);
  }

  return result;
}

unint64_t sub_10018595C()
{
  result = qword_10058F020;
  if (!qword_10058F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F020);
  }

  return result;
}

unint64_t sub_1001859B4()
{
  result = qword_10058F028;
  if (!qword_10058F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F028);
  }

  return result;
}

unint64_t sub_100185A0C()
{
  result = qword_10058F030;
  if (!qword_10058F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F030);
  }

  return result;
}

unint64_t sub_100185A64()
{
  result = qword_10058F038;
  if (!qword_10058F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F038);
  }

  return result;
}

unint64_t sub_100185ABC()
{
  result = qword_10058F040;
  if (!qword_10058F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F040);
  }

  return result;
}

unint64_t sub_100185B14()
{
  result = qword_10058F048;
  if (!qword_10058F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F048);
  }

  return result;
}

unint64_t sub_100185B6C()
{
  result = qword_10058F050;
  if (!qword_10058F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F050);
  }

  return result;
}

unint64_t sub_100185BC4()
{
  result = qword_10058F058;
  if (!qword_10058F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F058);
  }

  return result;
}

unint64_t sub_100185C1C()
{
  result = qword_10058F060;
  if (!qword_10058F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F060);
  }

  return result;
}

unint64_t sub_100185C74()
{
  result = qword_10058F068;
  if (!qword_10058F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F068);
  }

  return result;
}

unint64_t sub_100185CCC()
{
  result = qword_10058F070;
  if (!qword_10058F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F070);
  }

  return result;
}

unint64_t sub_100185D24()
{
  result = qword_10058F078;
  if (!qword_10058F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F078);
  }

  return result;
}

unint64_t sub_100185D7C()
{
  result = qword_10058F080;
  if (!qword_10058F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F080);
  }

  return result;
}

unint64_t sub_100185DD4()
{
  result = qword_10058F088;
  if (!qword_10058F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F088);
  }

  return result;
}

unint64_t sub_100185E2C()
{
  result = qword_10058F090;
  if (!qword_10058F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F090);
  }

  return result;
}

unint64_t sub_100185E84()
{
  result = qword_10058F098;
  if (!qword_10058F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F098);
  }

  return result;
}

unint64_t sub_100185EDC()
{
  result = qword_10058F0A0;
  if (!qword_10058F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F0A0);
  }

  return result;
}

unint64_t sub_100185F34()
{
  result = qword_10058F0A8;
  if (!qword_10058F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F0A8);
  }

  return result;
}

unint64_t sub_100185F8C()
{
  result = qword_10058F0B0;
  if (!qword_10058F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F0B0);
  }

  return result;
}

unint64_t sub_100185FE4()
{
  result = qword_10058F0B8;
  if (!qword_10058F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F0B8);
  }

  return result;
}

unint64_t sub_10018603C()
{
  result = qword_10058F0C0;
  if (!qword_10058F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F0C0);
  }

  return result;
}

unint64_t sub_100186094()
{
  result = qword_10058F0C8;
  if (!qword_10058F0C8)
  {
    type metadata accessor for AWDLIdleActivity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F0C8);
  }

  return result;
}

unint64_t sub_1001860F0()
{
  result = qword_10058F0D0;
  if (!qword_10058F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058F0D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANRoleChangeEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[16])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 3;
  }

  else
  {
    v4 = -4;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NANRoleChangeEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANDataEstablishedEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 14))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANDataEstablishedEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANDataTerminationEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANDataTerminationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for NANDataHostAssistRequest(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANDataHostAssistRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 16))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 15);
  v4 = v3 >= 0xA;
  v5 = v3 - 10;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANDataHostAssistRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 15) = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_100186448(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD2 && *(a1 + 17))
  {
    return (*a1 + 210);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 0x2F;
  v5 = v3 - 47;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10018648C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD1)
  {
    *(result + 16) = 0;
    *result = a2 - 210;
    *(result + 8) = 0;
    if (a3 >= 0xD2)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD2)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 46;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NANDataManagementFrameTransferCompleteEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100186524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100186568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANOOBFrameTrasmitStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 4))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 3);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANOOBFrameTrasmitStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1001866BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100186704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100186768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 30))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 28);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001867AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 30) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 30) = 0;
    }

    if (a2)
    {
      *(result + 28) = a2 + 2;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for NANTransmitStatistics(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANTransmitStatistics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 13))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANTransmitStatistics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 5;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for NANAttribute.FineTimingMeasurementRangeReport.Entry(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANReceiveStatistics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 14))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANReceiveStatistics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 5;
    }
  }

  return result;
}

__n128 sub_100186968(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100186984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 62))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001869C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 62) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 62) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_100186A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100186A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AWDLSoftAPChannelChangedEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AWDLSoftAPChannelChangedEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[10])
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

uint64_t storeEnumTagSinglePayload for AWDLSoftAPChannelChangedEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100186BC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100186C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100186C98()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100186D04()
{
  result = type metadata accessor for DriverEvent.AWDL(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100186D8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100186DB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEA && *(a1 + 362))
  {
    return (*a1 + 234);
  }

  v3 = *(a1 + 361);
  if (v3 <= 0x16)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100186DFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE9)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 234;
    if (a3 >= 0xEA)
    {
      *(result + 362) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEA)
    {
      *(result + 362) = 0;
    }

    if (a2)
    {
      *(result + 361) = -a2;
    }
  }

  return result;
}