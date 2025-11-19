void *sub_10061076C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v48 = a1;
    v49 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v48;
          v16 = v49;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v49 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v48;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v49 << 9) | (8 * v18)));
        v19 = v6[5];
        v20 = static Hasher._hash(seed:_:)();
        v21 = -1 << *(v6 + 32);
        v5 = v20 & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & v13[v5 >> 6]) == 0);
      v22 = v6[6];
      if (*(v22 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & v13[v5 >> 6]) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v47;
    v52 = v49;
    v53 = v11;
    v50[0] = v48;
    v50[1] = v8;
    v4 = (63 - v21) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v41 = swift_slowAlloc();
      memcpy(v41, v6 + 7, v14);
      v42 = sub_100618338(v41, v4, v6, v5, v50);

      v47 = v51;
      v49 = v52;
      v6 = v42;
      goto LABEL_43;
    }

LABEL_18:
    v44 = v4;
    v45 = &v43;
    __chkstk_darwin(v23);
    v5 = &v43 - v24;
    memcpy(&v43 - v24, v6 + 7, v14);
    v25 = v6[2];
    *(v5 + 8 * v3) &= ~v2;
    v26 = v25 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v48;
LABEL_19:
    v46 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v49 << 9) | (8 * v30)));
      v31 = v6[5];
      v32 = static Hasher._hash(seed:_:)();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & v13[v34 >> 6]) != 0)
      {
        v37 = v6[6];
        if (*(v37 + 8 * v34) == v3)
        {
LABEL_20:
          v27 = *(v5 + 8 * v35);
          *(v5 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v46 - 1;
            if (__OFSUB__(v46, 1))
            {
              __break(1u);
            }

            if (v46 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & v13[v34 >> 6]) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v49;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v49 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v49 + 1)
    {
      v39 = v49 + 1;
    }

    else
    {
      v39 = v12;
    }

    v49 = v39 - 1;
    v6 = sub_10060B960(v5, v44, v46, v6);
LABEL_43:
    sub_1000128F8();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

void *sub_100610BC8(uint64_t a1, void *a2)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v68 - v10);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v88 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = (&v68 - v17);
  __chkstk_darwin(v16);
  v83 = (&v68 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v11;
  v71 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v82 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v90 = (v24 & v21);
  v75 = (63 - v23) >> 6;
  v89 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v79 = (v19 + 32);
  v85 = a2 + 7;
  v70 = v19;
  v91 = (v19 + 8);

  v26 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v90;
    v28 = v26;
    if (v90)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v69;
    }

    v77 = *v81;
    v77(v32, v33, 1, v12);
    v92 = a1;
    v93 = v22;
    v94 = v82;
    v95 = v30;
    v96 = v2;
    v76 = *v80;
    if (v76(v32, 1, v12) == 1)
    {
      sub_10000B3A8(v32, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v32, v12);
    v34 = a2[5];
    v73 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v12);
LABEL_22:
    v26 = v30;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v37;
  while (1)
  {
    v86(v18, a2[6] + v87 * v26, v12);
    v38 = sub_100009774(&qword_1016984A0, &type metadata accessor for UUID);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v90 = *v91;
    v90(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v84;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v12);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v12);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v68;
  a1 = v72;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    __chkstk_darwin(v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v83 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v71;
    v47 = i;
    v48 = v75;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v87, v12);
      v53 = 0;
LABEL_39:
      v77(v26, v53, 1, v12);
      v92 = a1;
      v93 = v47;
      v94 = v82;
      v95 = v30;
      v96 = v2;
      if (v76(v26, 1, v12) == 1)
      {
        sub_10000B3A8(v26, &qword_1016980D0, &unk_10138F3B0);
        a2 = sub_10060AF64(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v26, v12);
      v54 = a2[5];
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v85[v58 >> 6]) != 0)
      {
        v86(v18, v56[6] + v58 * v87, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v85[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v18, v56[6] + v58 * v87, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v90(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v90(v88, v12);
        v62 = v83[v28];
        v83[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
        if ((v62 & v22) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v12);
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_1006184F4(v67, v68, v83, v26, &v92);

LABEL_52:
  sub_1000128F8();
  return a2;
}

void *sub_10061162C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v6 = a1;
  v74 = 0;
  v7 = *(a1 + 56);
  v86 = a1 + 56;
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v79 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v80 = (63 - v9) >> 6;
  v84 = 0x80000001013480F0;
  v85 = 0x8000000101348120;
  v83 = 0x8000000101348010;
  v82 = 0x8000000101347FF0;
  v88 = a2 + 7;

  v13 = 0;
  while (2)
  {
    while (2)
    {
      if (!v11)
      {
        v14 = v13;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_193;
          }

          if (v15 >= v80)
          {
            break;
          }

          v11 = *(v86 + 8 * v15);
          ++v14;
          if (v11)
          {
            v13 = v15;
            goto LABEL_12;
          }
        }

LABEL_190:
        sub_1000128F8();
        return v5;
      }

LABEL_12:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = *(*(v6 + 48) + (v16 | (v13 << 6)));
      v18 = v5[5];
      Hasher.init(_seed:)();
      String.hash(into:)();

      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v2 = v19 & ~v20;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & v88[v2 >> 6]) == 0)
      {
        continue;
      }

      break;
    }

    v87 = v13;
    v81 = v6;
    v21 = ~v20;
LABEL_14:
    v22 = 0xE700000000000000;
    v23 = 0x6E776F6E6B6E75;
    switch(*(v5[6] + v2))
    {
      case 1:
        v23 = 0xD000000000000015;
        v22 = v82;
        break;
      case 2:
        v23 = 0xD000000000000016;
        v22 = v83;
        break;
      case 3:
        v22 = 0xE600000000000000;
        v23 = 0x657461636F6CLL;
        break;
      case 4:
        v22 = 0xEC000000676E6972;
        v23 = 0x6168537472617473;
        break;
      case 5:
        v23 = 0x72616853706F7473;
        goto LABEL_29;
      case 6:
        v25 = 2036427888;
        goto LABEL_33;
      case 7:
        v25 = 1886352499;
LABEL_33:
        v23 = v25 | 0x6E756F5300000000;
        v22 = 0xE900000000000064;
        break;
      case 8:
        v23 = 0x61654C6E69676562;
        v22 = 0xED0000676E696873;
        break;
      case 9:
        v23 = 0x687361654C646E65;
LABEL_29:
        v22 = 0xEB00000000676E69;
        break;
      case 0xA:
        v23 = 0x4654426E69676562;
        v22 = 0xEE00676E69646E69;
        break;
      case 0xB:
        v23 = 0x6E69465442646E65;
        v24 = 1735289188;
        goto LABEL_40;
      case 0xC:
        v22 = 0xEC000000676E6967;
        v23 = 0x6E61526E69676562;
        break;
      case 0xD:
        v23 = 0x69676E6152646E65;
        v22 = 0xEA0000000000676ELL;
        break;
      case 0xE:
        v23 = 0x6F4C656C62616E65;
        v22 = 0xEE0065646F4D7473;
        break;
      case 0xF:
        v23 = 0x4C656C6261736964;
        v22 = 0xEF65646F4D74736FLL;
        break;
      case 0x10:
        v22 = 0xE600000000000000;
        v23 = 0x656D616E6572;
        break;
      case 0x11:
        v23 = 0x7463656E6E6F63;
        break;
      case 0x12:
        v22 = 0xEA00000000007463;
        v23 = 0x656E6E6F63736964;
        break;
      case 0x13:
        v23 = 0xD000000000000017;
        v22 = v84;
        break;
      case 0x14:
        v22 = 0xE600000000000000;
        v23 = 0x726961706E75;
        break;
      case 0x15:
        v23 = 0x65746167656C6564;
        v22 = 0xEE00657261685364;
        break;
      case 0x16:
        v23 = 0xD000000000000013;
        v22 = v85;
        break;
      case 0x17:
        v23 = 0x6F69736963657270;
        v24 = 1481004654;
LABEL_40:
        v22 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v26 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E75;
    switch(v17)
    {
      case 1:
        v28 = 0xD000000000000015;
        v29 = &v95;
        goto LABEL_53;
      case 2:
        v28 = 0xD000000000000016;
        v29 = &v96;
LABEL_53:
        v26 = *(v29 - 32);
        if (v23 != v28)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 3:
        v26 = 0xE600000000000000;
        if (v23 != 0x657461636F6CLL)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 4:
        v26 = 0xEC000000676E6972;
        if (v23 != 0x6168537472617473)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 5:
        v34 = 0x72616853706F7473;
        goto LABEL_65;
      case 6:
        v35 = 2036427888;
        goto LABEL_71;
      case 7:
        v35 = 1886352499;
LABEL_71:
        v26 = 0xE900000000000064;
        if (v23 != (v35 | 0x6E756F5300000000))
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 8:
        v26 = 0xED0000676E696873;
        if (v23 != 0x61654C6E69676562)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 9:
        v34 = 0x687361654C646E65;
LABEL_65:
        v26 = 0xEB00000000676E69;
        if (v23 != v34)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 10:
        v30 = 0x4654426E69676562;
        v31 = 0x676E69646E69;
        goto LABEL_76;
      case 11:
        v32 = 0x6E69465442646E65;
        v33 = 1735289188;
        goto LABEL_89;
      case 12:
        v26 = 0xEC000000676E6967;
        if (v23 != 0x6E61526E69676562)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 13:
        v26 = 0xEA0000000000676ELL;
        if (v23 != 0x69676E6152646E65)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 14:
        v30 = 0x6F4C656C62616E65;
        v31 = 0x65646F4D7473;
        goto LABEL_76;
      case 15:
        v26 = 0xEF65646F4D74736FLL;
        if (v23 != 0x4C656C6261736964)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 16:
        v26 = 0xE600000000000000;
        if (v23 != 0x656D616E6572)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 17:
        if (v23 != 0x7463656E6E6F63)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 18:
        v26 = 0xEA00000000007463;
        if (v23 != 0x656E6E6F63736964)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 19:
        v27 = 0xD000000000000017;
        v26 = v84;
        goto LABEL_83;
      case 20:
        v26 = 0xE600000000000000;
        if (v23 != 0x726961706E75)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 21:
        v30 = 0x65746167656C6564;
        v31 = 0x657261685364;
LABEL_76:
        v26 = v31 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v23 != v30)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 22:
        v26 = v85;
        if (v23 != 0xD000000000000013)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      case 23:
        v32 = 0x6F69736963657270;
        v33 = 1481004654;
LABEL_89:
        v26 = v33 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v23 != v32)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      default:
LABEL_83:
        if (v23 != v27)
        {
          goto LABEL_85;
        }

LABEL_84:
        if (v22 != v26)
        {
LABEL_85:
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v36)
          {
            v92 = v79;
            v93 = v87;
            v94 = v11;
            v8 = v81;
            v90 = v81;
            v91 = v86;
            goto LABEL_95;
          }

          v2 = (v2 + 1) & v21;
          v3 = v2 >> 6;
          v4 = 1 << v2;
          if ((v88[v2 >> 6] & (1 << v2)) == 0)
          {
            v6 = v81;
            v13 = v87;
            v8 = -1;
            continue;
          }

          goto LABEL_14;
        }

        v92 = v79;
        v93 = v87;
        v94 = v11;
        v8 = v81;
        v90 = v81;
        v91 = v86;

LABEL_95:
        v38 = *(v5 + 32);
        v75 = ((1 << v38) + 63) >> 6;
        v12 = 8 * v75;
        if ((v38 & 0x3Fu) > 0xD)
        {
          goto LABEL_194;
        }

        while (2)
        {
          v76 = &v74;
          __chkstk_darwin(v37);
          v2 = &v74 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
          memcpy(v2, v88, v39);
          v40 = *(v2 + 8 * v3) & ~v4;
          v41 = v5[2];
          v78 = v2;
          *(v2 + 8 * v3) = v40;
          v42 = v41 - 1;
LABEL_97:
          v77 = v42;
LABEL_98:
          if (v11)
          {
            v43 = v87;
            goto LABEL_105;
          }

          v44 = v87;
          while (1)
          {
            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v45 >= v80)
            {
              v5 = sub_10060BB4C(v78, v75, v77, v5);
              goto LABEL_190;
            }

            v11 = *(v86 + 8 * v45);
            ++v44;
            if (v11)
            {
              v43 = v45;
LABEL_105:
              v46 = __clz(__rbit64(v11));
              v11 &= v11 - 1;
              v47 = *(*(v8 + 48) + (v46 | (v43 << 6)));
              v48 = v5[5];
              Hasher.init(_seed:)();
              v87 = v43;
              String.hash(into:)();

              v2 = &v89;
              v49 = Hasher._finalize()();
              v50 = -1 << *(v5 + 32);
              v51 = v49 & ~v50;
              v3 = v51 >> 6;
              v4 = 1 << v51;
              if (((1 << v51) & v88[v51 >> 6]) == 0)
              {
                goto LABEL_98;
              }

              v52 = ~v50;
              v2 = v47;
              while (1)
              {
                v53 = 0xE700000000000000;
                v54 = 0x6E776F6E6B6E75;
                switch(*(v5[6] + v51))
                {
                  case 1:
                    v54 = 0xD000000000000015;
                    v53 = v82;
                    break;
                  case 2:
                    v54 = 0xD000000000000016;
                    v53 = v83;
                    break;
                  case 3:
                    v53 = 0xE600000000000000;
                    v54 = 0x657461636F6CLL;
                    break;
                  case 4:
                    v53 = 0xEC000000676E6972;
                    v54 = 0x6168537472617473;
                    break;
                  case 5:
                    v54 = 0x72616853706F7473;
                    goto LABEL_122;
                  case 6:
                    v56 = 2036427888;
                    goto LABEL_126;
                  case 7:
                    v56 = 1886352499;
LABEL_126:
                    v54 = v56 | 0x6E756F5300000000;
                    v53 = 0xE900000000000064;
                    break;
                  case 8:
                    v54 = 0x61654C6E69676562;
                    v53 = 0xED0000676E696873;
                    break;
                  case 9:
                    v54 = 0x687361654C646E65;
LABEL_122:
                    v53 = 0xEB00000000676E69;
                    break;
                  case 0xA:
                    v54 = 0x4654426E69676562;
                    v53 = 0xEE00676E69646E69;
                    break;
                  case 0xB:
                    v54 = 0x6E69465442646E65;
                    v55 = 1735289188;
                    goto LABEL_133;
                  case 0xC:
                    v53 = 0xEC000000676E6967;
                    v54 = 0x6E61526E69676562;
                    break;
                  case 0xD:
                    v54 = 0x69676E6152646E65;
                    v53 = 0xEA0000000000676ELL;
                    break;
                  case 0xE:
                    v54 = 0x6F4C656C62616E65;
                    v53 = 0xEE0065646F4D7473;
                    break;
                  case 0xF:
                    v54 = 0x4C656C6261736964;
                    v53 = 0xEF65646F4D74736FLL;
                    break;
                  case 0x10:
                    v53 = 0xE600000000000000;
                    v54 = 0x656D616E6572;
                    break;
                  case 0x11:
                    v54 = 0x7463656E6E6F63;
                    break;
                  case 0x12:
                    v53 = 0xEA00000000007463;
                    v54 = 0x656E6E6F63736964;
                    break;
                  case 0x13:
                    v54 = 0xD000000000000017;
                    v53 = v84;
                    break;
                  case 0x14:
                    v53 = 0xE600000000000000;
                    v54 = 0x726961706E75;
                    break;
                  case 0x15:
                    v54 = 0x65746167656C6564;
                    v53 = 0xEE00657261685364;
                    break;
                  case 0x16:
                    v54 = 0xD000000000000013;
                    v53 = v85;
                    break;
                  case 0x17:
                    v54 = 0x6F69736963657270;
                    v55 = 1481004654;
LABEL_133:
                    v53 = v55 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                    break;
                  default:
                    break;
                }

                v57 = 0xE700000000000000;
                v58 = 0x6E776F6E6B6E75;
                switch(v2)
                {
                  case 1uLL:
                    v59 = 0xD000000000000015;
                    v60 = &v95;
                    goto LABEL_146;
                  case 2uLL:
                    v59 = 0xD000000000000016;
                    v60 = &v96;
LABEL_146:
                    v57 = *(v60 - 32);
                    if (v54 != v59)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 3uLL:
                    v57 = 0xE600000000000000;
                    if (v54 != 0x657461636F6CLL)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 4uLL:
                    v57 = 0xEC000000676E6972;
                    if (v54 != 0x6168537472617473)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 5uLL:
                    v65 = 0x72616853706F7473;
                    goto LABEL_158;
                  case 6uLL:
                    v66 = 2036427888;
                    goto LABEL_164;
                  case 7uLL:
                    v66 = 1886352499;
LABEL_164:
                    v57 = 0xE900000000000064;
                    if (v54 != (v66 | 0x6E756F5300000000))
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 8uLL:
                    v57 = 0xED0000676E696873;
                    if (v54 != 0x61654C6E69676562)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 9uLL:
                    v65 = 0x687361654C646E65;
LABEL_158:
                    v57 = 0xEB00000000676E69;
                    if (v54 != v65)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0xAuLL:
                    v61 = 0x4654426E69676562;
                    v62 = 0x676E69646E69;
                    goto LABEL_169;
                  case 0xBuLL:
                    v63 = 0x6E69465442646E65;
                    v64 = 1735289188;
                    goto LABEL_182;
                  case 0xCuLL:
                    v57 = 0xEC000000676E6967;
                    if (v54 != 0x6E61526E69676562)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0xDuLL:
                    v57 = 0xEA0000000000676ELL;
                    if (v54 != 0x69676E6152646E65)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0xEuLL:
                    v61 = 0x6F4C656C62616E65;
                    v62 = 0x65646F4D7473;
                    goto LABEL_169;
                  case 0xFuLL:
                    v57 = 0xEF65646F4D74736FLL;
                    if (v54 != 0x4C656C6261736964)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x10uLL:
                    v57 = 0xE600000000000000;
                    if (v54 != 0x656D616E6572)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x11uLL:
                    if (v54 != 0x7463656E6E6F63)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x12uLL:
                    v57 = 0xEA00000000007463;
                    if (v54 != 0x656E6E6F63736964)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x13uLL:
                    v58 = 0xD000000000000017;
                    v57 = v84;
                    goto LABEL_176;
                  case 0x14uLL:
                    v57 = 0xE600000000000000;
                    if (v54 != 0x726961706E75)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x15uLL:
                    v61 = 0x65746167656C6564;
                    v62 = 0x657261685364;
LABEL_169:
                    v57 = v62 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                    if (v54 != v61)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x16uLL:
                    v57 = v85;
                    if (v54 != 0xD000000000000013)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  case 0x17uLL:
                    v63 = 0x6F69736963657270;
                    v64 = 1481004654;
LABEL_182:
                    v57 = v64 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                    if (v54 != v63)
                    {
                      goto LABEL_178;
                    }

                    goto LABEL_177;
                  default:
LABEL_176:
                    if (v54 != v58)
                    {
                      goto LABEL_178;
                    }

LABEL_177:
                    if (v53 == v57)
                    {

LABEL_185:
                      v68 = v78[v3];
                      v78[v3] = v68 & ~v4;
                      v8 = v81;
                      if ((v68 & v4) != 0)
                      {
                        v42 = v77 - 1;
                        if (__OFSUB__(v77, 1))
                        {
                          __break(1u);
                        }

                        if (v77 == 1)
                        {

                          v5 = &_swiftEmptySetSingleton;
                          goto LABEL_190;
                        }

                        goto LABEL_97;
                      }

                      goto LABEL_98;
                    }

LABEL_178:
                    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v67)
                    {
                      goto LABEL_185;
                    }

                    v51 = (v51 + 1) & v52;
                    v3 = v51 >> 6;
                    v4 = 1 << v51;
                    if ((v88[v51 >> 6] & (1 << v51)) == 0)
                    {
                      v8 = v81;
                      goto LABEL_98;
                    }

                    break;
                }
              }
            }
          }

          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          v70 = v12;

          if (swift_stdlib_isStackAllocationSafe())
          {

            continue;
          }

          break;
        }

        v71 = swift_slowAlloc();
        memcpy(v71, v88, v70);
        v72 = v74;
        v73 = sub_1006189C8(v71, v75, v5, v2, &v90);

        if (!v72)
        {

          v79 = v92;
          v5 = v73;
          goto LABEL_190;
        }

        __break(1u);
        return result;
    }
  }
}

void *sub_100612D48(uint64_t a1, uint64_t a2)
{
  v237 = type metadata accessor for UUID();
  v229 = *(v237 - 8);
  v4 = *(v229 + 64);
  __chkstk_darwin(v237);
  v236 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v208 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v196 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v196 - v14;
  __chkstk_darwin(v13);
  v231 = &v196 - v16;
  v223 = type metadata accessor for OwnerSharingCircle();
  v17 = *(v223 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v223);
  v199 = (&v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v224 = (&v196 - v23);
  __chkstk_darwin(v22);
  v26 = (&v196 - v25);
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v27 = a2;
  v201 = v24;
  v206 = v12;
  v248[0] = a1;
  v28 = *(a1 + 16);
  v200 = a1;

  v202 = v28;
  if (!v28)
  {
LABEL_99:

    return v27;
  }

  v29 = 0;
  v217 = 0;
  v203 = v200 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v226 = *(v17 + 72);
  v228 = v229 + 16;
  v235 = (v229 + 32);
  v232 = (v229 + 8);
  v225 = (v27 + 56);
  v227 = v15;
  v215 = v27;
  v221 = v26;
LABEL_5:
  v207 = (v29 + 1);
  v248[1] = v29 + 1;
  sub_10062CD24(v203 + v226 * v29, v26, type metadata accessor for OwnerSharingCircle);
  v30 = *(v27 + 40);
  Hasher.init(_seed:)();
  v31 = *v26;
  v32 = v26[1];
  Data.hash(into:)();
  v33 = v223;
  v34 = *(v223 + 20);
  v35 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
  v220 = v34;
  dispatch thunk of Hashable.hash(into:)();
  v216 = v33[6];
  v233 = v35;
  dispatch thunk of Hashable.hash(into:)();
  v36 = &v243;
  v211 = *(v26 + v33[7]);
  Hasher._combine(_:)(v211);
  v37 = *(v26 + v33[8]);
  v38 = *(v37 + 64);
  v222 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v38;
  v42 = (v39 + 63) >> 6;
  v230 = v37;

  v43 = 0;
  v44 = 0;
  if (v41)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v42 <= v44 + 1)
  {
    v46 = v44 + 1;
  }

  else
  {
    v46 = v42;
  }

  v47 = (v46 - 1);
  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v42)
    {
      v60 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      (*(*(v60 - 8) + 56))(v15, 1, 1, v60);
      v41 = 0;
      goto LABEL_19;
    }

    v41 = *(v222 + 8 * v45);
    v44 = (v44 + 1);
    if (v41)
    {
      v234 = v43;
      while (2)
      {
        v48 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v49 = v48 | (v45 << 6);
        v50 = v230;
        v51 = v229;
        (*(v229 + 16))(v236, *(v230 + 48) + *(v229 + 72) * v49, v237);
        LOBYTE(v50) = *(*(v50 + 56) + v49);
        v52 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v53 = *(v52 + 48);
        v15 = v227;
        (*(v51 + 32))();
        *(v15 + v53) = v50;
        (*(*(v52 - 8) + 56))(v15, 0, 1, v52);
        v47 = v45;
        v43 = v234;
LABEL_19:
        v54 = v231;
        sub_1000D2AD8(v15, v231, &unk_1016BC360, &qword_10139CBE0);
        v55 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v27 = *(v55 - 8);
        v56 = *(v27 + 48);
        if (v56(v54, 1, v55) != 1)
        {
          v57 = *(v55 + 48);
          v27 = v236;
          v58 = v237;
          (*v235)(v236, v54, v237);
          v59 = v54[v57];
          v240 = v245;
          v241 = v246;
          v242 = v247;
          v239 = v244;
          v238 = v243;
          dispatch thunk of Hashable.hash(into:)();
          (*v232)(v27, v58);
          v36 = &v238;
          Hasher._combine(_:)(v59);
          v43 ^= Hasher._finalize()();
          v44 = v47;
          if (!v41)
          {
            goto LABEL_10;
          }

LABEL_9:
          v234 = v43;
          v45 = v44;
          continue;
        }

        break;
      }

      v209 = v55;
      v210 = v56;

      Hasher._combine(_:)(v43);
      v61 = v221;
      v62 = *(v221 + *(v223 + 36));
      v204 = v62;
      Hasher._combine(_:)(v62);
      v63 = Hasher._finalize()();
      v36 = v215;
      v64 = -1 << *(v215 + 32);
      v15 = v63 & ~v64;
      v65 = v15 >> 6;
      v42 = 1 << v15;
      if (((1 << v15) & v225[v15 >> 6]) != 0)
      {
        v66 = ~v64;
        v67 = *v61;
        v68 = v61[1];
        if (*v61)
        {
          v69 = 0;
        }

        else
        {
          v69 = v68 == 0xC000000000000000;
        }

        v70 = !v69;
        LODWORD(v222) = v70;
        v71 = v68 >> 62;
        v218 = v67;
        v72 = HIDWORD(v67) - v67;
        v73 = __OFSUB__(HIDWORD(v67), v67);
        LODWORD(v214) = v73;
        v213 = v72;
        v212 = v68;
        v219 = BYTE6(v68);
        v47 = v224;
        v234 = v68 >> 62;
        while (1)
        {
          sub_10062CD24(*(v36 + 6) + v15 * v226, v47, type metadata accessor for OwnerSharingCircle);
          v74 = *v47;
          v75 = v47[1];
          v76 = v75 >> 62;
          if (v75 >> 62 == 3)
          {
            break;
          }

          if (v76 > 1)
          {
            if (v76 != 2)
            {
              goto LABEL_58;
            }

            v82 = *(v74 + 16);
            v81 = *(v74 + 24);
            v83 = __OFSUB__(v81, v82);
            v80 = v81 - v82;
            if (v83)
            {
              goto LABEL_207;
            }

            if (v71 <= 1)
            {
              goto LABEL_55;
            }
          }

          else if (v76)
          {
            LODWORD(v80) = HIDWORD(v74) - v74;
            if (__OFSUB__(HIDWORD(v74), v74))
            {
              goto LABEL_206;
            }

            v80 = v80;
            if (v71 <= 1)
            {
LABEL_55:
              v84 = v219;
              if (v71)
              {
                v84 = v213;
                if (v214)
                {
                  goto LABEL_205;
                }
              }

              goto LABEL_61;
            }
          }

          else
          {
            v80 = BYTE6(v75);
            if (v71 <= 1)
            {
              goto LABEL_55;
            }
          }

LABEL_59:
          if (v71 != 2)
          {
            v47 = v224;
            if (v80)
            {
              goto LABEL_35;
            }

            goto LABEL_67;
          }

          v86 = *(v218 + 16);
          v85 = *(v218 + 24);
          v83 = __OFSUB__(v85, v86);
          v84 = v85 - v86;
          if (v83)
          {
            goto LABEL_204;
          }

LABEL_61:
          if (v80 != v84)
          {
            v47 = v224;
            goto LABEL_35;
          }

          if (v80 < 1)
          {
LABEL_66:
            v47 = v224;
            goto LABEL_67;
          }

          if (v76 > 1)
          {
            if (v76 != 2)
            {
              *(&v243 + 6) = 0;
              *&v243 = 0;
LABEL_90:
              v105 = v217;
              sub_100771A28(&v243, v218, v212, &v238);
              v217 = v105;
              v47 = v224;
              if ((v238 & 1) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_67;
            }

            v92 = *(v74 + 16);
            v93 = *(v74 + 24);
            v94 = __DataStorage._bytes.getter();
            if (v94)
            {
              v205 = v92;
              v95 = v93;
              v96 = v94;
              v97 = __DataStorage._offset.getter();
              if (__OFSUB__(v205, v97))
              {
                goto LABEL_210;
              }

              v98 = v205 + v96 - v97;
              if (__OFSUB__(v95, v205))
              {
                goto LABEL_209;
              }
            }

            else
            {
              v98 = 0;
              if (__OFSUB__(v93, v92))
              {
                goto LABEL_209;
              }
            }

            v106 = v98;
            __DataStorage._length.getter();
            v107 = v106;
          }

          else
          {
            if (!v76)
            {
              *&v243 = v74;
              WORD4(v243) = v75;
              BYTE10(v243) = BYTE2(v75);
              BYTE11(v243) = BYTE3(v75);
              BYTE12(v243) = BYTE4(v75);
              BYTE13(v243) = BYTE5(v75);
              goto LABEL_90;
            }

            v99 = v74;
            v100 = v74 >> 32;
            if (v100 < v99)
            {
              goto LABEL_208;
            }

            v205 = (v100 - v99);
            v101 = __DataStorage._bytes.getter();
            if (v101)
            {
              v102 = v101;
              v103 = __DataStorage._offset.getter();
              if (__OFSUB__(v99, v103))
              {
                goto LABEL_211;
              }

              v104 = v99 - v103 + v102;
            }

            else
            {
              v104 = 0;
            }

            __DataStorage._length.getter();
            v107 = v104;
          }

          v108 = v217;
          sub_100771A28(v107, v218, v212, &v243);
          v217 = v108;
          v36 = v215;
          v47 = v224;
          v71 = v234;
          if ((v243 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_67:
          v45 = v65;
          v87 = v66;
          v88 = v223;
          v89 = v47 + *(v223 + 20);
          if (static UUID.== infix(_:_:)() & 1) != 0 && (v90 = v47 + v88[6], (static UUID.== infix(_:_:)()) && *(v47 + v88[7]) == v211)
          {
            v91 = sub_100DE7CB4(*(v47 + v88[8]), v230);
            v71 = v234;
            if ((v91 & 1) != 0 && *(v47 + v88[9]) == v204)
            {
              goto LABEL_102;
            }

            v66 = v87;
          }

          else
          {
            v66 = v87;
            v71 = v234;
          }

LABEL_35:
          sub_10062CBB8(v47, type metadata accessor for OwnerSharingCircle);
          v15 = (v15 + 1) & v66;
          v65 = v15 >> 6;
          v42 = 1 << v15;
          if ((v225[v15 >> 6] & (1 << v15)) == 0)
          {
            goto LABEL_4;
          }
        }

        if (v74)
        {
          v77 = 0;
        }

        else
        {
          v77 = v75 == 0xC000000000000000;
        }

        v79 = !v77 || v71 < 3;
        if (((v79 | v222) & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_58:
        v80 = 0;
        if (v71 <= 1)
        {
          goto LABEL_55;
        }

        goto LABEL_59;
      }

LABEL_4:
      v27 = v36;
      v26 = v221;
      sub_10062CBB8(v221, type metadata accessor for OwnerSharingCircle);
      v29 = v207;
      v15 = v227;
      if (v207 == v202)
      {
        goto LABEL_99;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_102:
  sub_10062CBB8(v47, type metadata accessor for OwnerSharingCircle);
  v111 = sub_10062CBB8(v221, type metadata accessor for OwnerSharingCircle);
  v112 = *(v36 + 32);
  v197 = ((1 << v112) + 63) >> 6;
  v113 = 8 * v197;
  if ((v112 & 0x3Fu) <= 0xD)
  {
LABEL_103:
    v198 = &v196;
    __chkstk_darwin(v111);
    v115 = &v196 - ((v114 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v115, v225, v114);
    v116 = *(v36 + 2);
    v117 = *&v115[8 * v45] & ~v42;
    v202 = v115;
    *&v115[8 * v45] = v117;
    v204 = v116 - 1;
    v118 = v200;
    v119 = v207;
    v205 = *(v200 + 16);
    if (v207 == v205)
    {
      goto LABEL_104;
    }

    v231 = (v27 + 56);
    v120 = v206;
LABEL_107:
    if (v119 < *(v118 + 16))
    {
      v207 = (v119 + 1);
      v121 = v201;
      sub_10062CD24(v203 + v119 * v226, v201, type metadata accessor for OwnerSharingCircle);
      v122 = *(v36 + 5);
      Hasher.init(_seed:)();
      v123 = *v121;
      v124 = v121[1];
      Data.hash(into:)();
      v125 = v223;
      v224 = *(v223 + 20);
      dispatch thunk of Hashable.hash(into:)();
      v220 = v125[6];
      dispatch thunk of Hashable.hash(into:)();
      v126 = *(v121 + v125[7]);
      v214 = v126;
      Hasher._combine(_:)(v126);
      v127 = *(v121 + v125[8]);
      v128 = *(v127 + 64);
      v227 = v127 + 64;
      v129 = 1 << *(v127 + 32);
      if (v129 < 64)
      {
        v130 = ~(-1 << v129);
      }

      else
      {
        v130 = -1;
      }

      v131 = v130 & v128;
      v132 = (v129 + 63) >> 6;
      v230 = v127;

      v133 = 0;
      for (i = 0; ; i = v137)
      {
        v234 = v133;
        if (!v131)
        {
          break;
        }

        v135 = i;
LABEL_121:
        v139 = __clz(__rbit64(v131));
        v131 &= v131 - 1;
        v140 = v139 | (v135 << 6);
        v141 = v230;
        v142 = v229;
        v143 = v236;
        v144 = v237;
        (*(v229 + 16))(v236, *(v230 + 48) + *(v229 + 72) * v140, v237);
        LOBYTE(v140) = *(*(v141 + 56) + v140);
        v145 = v209;
        v146 = *(v209 + 48);
        v147 = *(v142 + 32);
        v138 = v208;
        v147(v208, v143, v144);
        v148 = 0;
        *(v138 + v146) = v140;
        v137 = v135;
        v120 = v206;
LABEL_122:
        (*v231)(v138, v148, 1, v145);
        sub_1000D2AD8(v138, v120, &unk_1016BC360, &qword_10139CBE0);
        if (v210(v120, 1, v145) == 1)
        {

          Hasher._combine(_:)(v234);
          v153 = v201;
          v154 = *(v201 + *(v223 + 36));
          v211 = v154;
          Hasher._combine(_:)(v154);
          v155 = Hasher._finalize()();
          v156 = -1 << *(v215 + 32);
          v157 = v155 & ~v156;
          v15 = v157 >> 6;
          v27 = 1 << v157;
          if (((1 << v157) & v225[v157 >> 6]) == 0)
          {
            v166 = v217;
LABEL_199:
            v217 = v166;
            sub_10062CBB8(v201, type metadata accessor for OwnerSharingCircle);
LABEL_200:
            v36 = v215;
            v118 = v200;
            v120 = v206;
            v119 = v207;
            goto LABEL_201;
          }

          v234 = ~v156;
          v158 = *v153;
          v159 = v153[1];
          if (*v153)
          {
            v160 = 0;
          }

          else
          {
            v160 = v159 == 0xC000000000000000;
          }

          v161 = !v160;
          LODWORD(v227) = v161;
          v162 = v159 >> 62;
          v221 = v158;
          v163 = HIDWORD(v158) - v158;
          v164 = __OFSUB__(HIDWORD(v158), v158);
          LODWORD(v219) = v164;
          v218 = v163;
          v216 = v159;
          v222 = BYTE6(v159);
          v165 = v199;
          v166 = v217;
          while (2)
          {
            sub_10062CD24(*(v215 + 6) + v157 * v226, v165, type metadata accessor for OwnerSharingCircle);
            v167 = *v165;
            v42 = v165[1];
            v168 = v42 >> 62;
            if (v42 >> 62 == 3)
            {
              if (v167)
              {
                v169 = 0;
              }

              else
              {
                v169 = v42 == 0xC000000000000000;
              }

              v171 = !v169 || v162 < 3;
              if (((v171 | v227) & 1) == 0)
              {
                goto LABEL_189;
              }

LABEL_159:
              v172 = 0;
              if (v162 > 1)
              {
                goto LABEL_160;
              }

LABEL_156:
              v175 = v222;
              if (v162)
              {
                v175 = v218;
                if (v219)
                {
                  goto LABEL_213;
                }
              }

LABEL_162:
              if (v172 == v175)
              {
                if (v172 < 1)
                {
                  goto LABEL_189;
                }

                if (v168 > 1)
                {
                  if (v168 == 2)
                  {
                    v217 = v166;
                    v178 = *(v167 + 16);
                    v213 = *(v167 + 24);
                    v179 = __DataStorage._bytes.getter();
                    if (v179)
                    {
                      v45 = v179;
                      v180 = __DataStorage._offset.getter();
                      if (__OFSUB__(v178, v180))
                      {
                        __break(1u);
LABEL_221:
                        __break(1u);
                        goto LABEL_222;
                      }

                      v212 = v178 - v180 + v45;
                    }

                    else
                    {
                      v212 = 0;
                    }

                    if (__OFSUB__(v213, v178))
                    {
                      goto LABEL_218;
                    }

                    __DataStorage._length.getter();
                    v186 = v212;
                    goto LABEL_188;
                  }

                  *(&v243 + 6) = 0;
                  *&v243 = 0;
LABEL_181:
                  sub_100771A28(&v243, v221, v216, &v238);
                  if (v238)
                  {
LABEL_189:
                    v187 = v223;
                    v188 = v165 + *(v223 + 20);
                    if (static UUID.== infix(_:_:)())
                    {
                      v189 = v165 + v187[6];
                      if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v165 + v187[7]) == v214 && (sub_100DE7CB4(*(v165 + v187[8]), v230) & 1) != 0 && *(v165 + v187[9]) == v211)
                      {
                        sub_10062CBB8(v165, type metadata accessor for OwnerSharingCircle);
                        sub_10062CBB8(v201, type metadata accessor for OwnerSharingCircle);
                        v190 = v202[v15];
                        v202[v15] = v190 & ~v27;
                        v217 = v166;
                        if ((v190 & v27) == 0)
                        {
                          goto LABEL_200;
                        }

                        v191 = v204 - 1;
                        v36 = v215;
                        v118 = v200;
                        v120 = v206;
                        v119 = v207;
                        if (__OFSUB__(v204, 1))
                        {
                          __break(1u);
                        }

                        --v204;
                        if (!v191)
                        {
LABEL_219:

                          v109 = &_swiftEmptySetSingleton;
                          goto LABEL_105;
                        }

LABEL_201:
                        if (v119 == v205)
                        {
LABEL_104:
                          v109 = sub_10060C04C(v202, v197, v204, v36);
                          goto LABEL_105;
                        }

                        goto LABEL_107;
                      }
                    }
                  }
                }

                else
                {
                  if (!v168)
                  {
                    *&v243 = *v165;
                    WORD4(v243) = v42;
                    BYTE10(v243) = BYTE2(v42);
                    BYTE11(v243) = BYTE3(v42);
                    BYTE12(v243) = BYTE4(v42);
                    BYTE13(v243) = BYTE5(v42);
                    goto LABEL_181;
                  }

                  v217 = v166;
                  v45 = v167;
                  v181 = v167 >> 32;
                  v213 = v181 - v45;
                  if (v181 < v45)
                  {
                    goto LABEL_217;
                  }

                  v182 = __DataStorage._bytes.getter();
                  if (v182)
                  {
                    v183 = v182;
                    v184 = __DataStorage._offset.getter();
                    if (__OFSUB__(v45, v184))
                    {
                      goto LABEL_221;
                    }

                    v185 = v45 - v184 + v183;
                  }

                  else
                  {
                    v185 = 0;
                  }

                  __DataStorage._length.getter();
                  v186 = v185;
LABEL_188:
                  v166 = v217;
                  sub_100771A28(v186, v221, v216, &v243);
                  if (v243)
                  {
                    goto LABEL_189;
                  }
                }
              }
            }

            else
            {
              if (v168 > 1)
              {
                if (v168 != 2)
                {
                  goto LABEL_159;
                }

                v174 = *(v167 + 16);
                v173 = *(v167 + 24);
                v83 = __OFSUB__(v173, v174);
                v172 = v173 - v174;
                if (v83)
                {
                  goto LABEL_215;
                }

                if (v162 <= 1)
                {
                  goto LABEL_156;
                }
              }

              else if (v168)
              {
                LODWORD(v172) = HIDWORD(v167) - v167;
                if (__OFSUB__(HIDWORD(v167), v167))
                {
                  goto LABEL_214;
                }

                v172 = v172;
                if (v162 <= 1)
                {
                  goto LABEL_156;
                }
              }

              else
              {
                v172 = BYTE6(v42);
                if (v162 <= 1)
                {
                  goto LABEL_156;
                }
              }

LABEL_160:
              if (v162 == 2)
              {
                v177 = v221[2];
                v176 = v221[3];
                v83 = __OFSUB__(v176, v177);
                v175 = v176 - v177;
                if (v83)
                {
                  goto LABEL_212;
                }

                goto LABEL_162;
              }

              if (!v172)
              {
                goto LABEL_189;
              }
            }

            sub_10062CBB8(v165, type metadata accessor for OwnerSharingCircle);
            v157 = (v157 + 1) & v234;
            v15 = v157 >> 6;
            v27 = 1 << v157;
            if ((v225[v157 >> 6] & (1 << v157)) == 0)
            {
              goto LABEL_199;
            }

            continue;
          }
        }

        v149 = *(v145 + 48);
        v150 = v236;
        v151 = v237;
        (*v235)(v236, v120, v237);
        v152 = *(v120 + v149);
        v240 = v245;
        v241 = v246;
        v242 = v247;
        v239 = v244;
        v238 = v243;
        dispatch thunk of Hashable.hash(into:)();
        (*v232)(v150, v151);
        Hasher._combine(_:)(v152);
        v133 = Hasher._finalize()() ^ v234;
      }

      if (v132 <= i + 1)
      {
        v136 = i + 1;
      }

      else
      {
        v136 = v132;
      }

      v137 = v136 - 1;
      v138 = v208;
      while (1)
      {
        v135 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v135 >= v132)
        {
          v131 = 0;
          v148 = 1;
          v145 = v209;
          goto LABEL_122;
        }

        v131 = *(v227 + 8 * v135);
        ++i;
        if (v131)
        {
          goto LABEL_121;
        }
      }

      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
    }

    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

LABEL_222:
  v192 = v217;
  v193 = v113;

  v194 = v193;
  if (swift_stdlib_isStackAllocationSafe())
  {
    v36 = v215;

    goto LABEL_103;
  }

  v195 = swift_slowAlloc();
  memcpy(v195, v225, v194);
  v109 = sub_100619494(v195, v197, v215, v15, v248);

  if (!v192)
  {

LABEL_105:

    return v109;
  }

  __break(1u);
  return result;
}

void *sub_1006146AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
    sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_10060D058(v63, v61, v4, v3, &unk_1016BBFF0, &unk_1013B35C0);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_10061A1FC(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_1000128F8();
  return v3;
}

void *sub_100614D54(uint64_t a1, unint64_t *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v54 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v59 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v16 = 0;
    v60 = v12;
    v61 = v8;
    v62 = v14;
    v63 = v6;
    while (1)
    {
      if (!v11)
      {
        v17 = v16;
        while (1)
        {
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_50;
          }

          if (v18 >= v12)
          {
            goto LABEL_47;
          }

          v11 = *(v8 + 8 * v18);
          ++v17;
          if (v11)
          {
            v16 = v18;
            break;
          }
        }
      }

      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v64 = v16;
      v20 = (*(v14 + 48) + 24 * (v19 | (v16 << 6)));
      v2 = *v20;
      v4 = *(v20 + 1);
      v21 = *(v20 + 2);
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v2);

      String.hash(into:)();
      v23 = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v8 = v23 & ~v24;
      v6 = v8 >> 6;
      v5 = 1 << v8;
      if (((1 << v8) & v13[v8 >> 6]) != 0)
      {
        break;
      }

LABEL_6:

      v14 = v62;
      v6 = v63;
      v12 = v60;
      v8 = v61;
      v16 = v64;
    }

    v25 = ~v24;
    v3 = v63[6];
    while (1)
    {
      v26 = (v3 + 24 * v8);
      if (*v26 == v2)
      {
        v27 = *(v26 + 1) == v4 && *(v26 + 2) == v21;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v25;
      v6 = v8 >> 6;
      v5 = 1 << v8;
      if ((v13[v8 >> 6] & (1 << v8)) == 0)
      {
        goto LABEL_6;
      }
    }

    v28 = v64;
    v66 = v59;
    v67 = v64;
    v68 = v11;
    v4 = v61;
    v2 = v62;
    v65[0] = v62;
    v65[1] = v61;

    v3 = v63;
    v30 = *(v63 + 32);
    v55 = ((1 << v30) + 63) >> 6;
    v15 = 8 * v55;
    if ((v30 & 0x3Fu) > 0xD)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v56 = &v54;
      __chkstk_darwin(v29);
      v8 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v8, v13, v31);
      v32 = *(v8 + 8 * v6) & ~v5;
      v58 = v8;
      *(v8 + 8 * v6) = v32;
      v33 = *(v3 + 16) - 1;
      v34 = v60;
LABEL_24:
      v57 = v33;
      while (v11)
      {
LABEL_32:
        v37 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v64 = v28;
        v38 = (*(v2 + 48) + 24 * (v37 | (v28 << 6)));
        v5 = *v38;
        v40 = *(v38 + 1);
        v39 = *(v38 + 2);
        v41 = *(v3 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v5);

        String.hash(into:)();
        v42 = Hasher._finalize()();
        v43 = -1 << *(v3 + 32);
        v6 = v42 & ~v43;
        v8 = v6 >> 6;
        v44 = 1 << v6;
        if (((1 << v6) & v13[v6 >> 6]) != 0)
        {
          v45 = ~v43;
          v46 = *(v3 + 48);
          while (1)
          {
            v47 = (v46 + 24 * v6);
            if (*v47 == v5)
            {
              v48 = *(v47 + 1) == v40 && *(v47 + 2) == v39;
              if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }
            }

            v6 = (v6 + 1) & v45;
            v8 = v6 >> 6;
            v44 = 1 << v6;
            if ((v13[v6 >> 6] & (1 << v6)) == 0)
            {
              goto LABEL_25;
            }
          }

          v49 = v58[v8];
          v58[v8] = v49 & ~v44;
          v27 = (v49 & v44) == 0;
          v2 = v62;
          v3 = v63;
          v34 = v60;
          v4 = v61;
          v28 = v64;
          if (!v27)
          {
            v33 = v57 - 1;
            if (__OFSUB__(v57, 1))
            {
              __break(1u);
            }

            if (v57 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_47;
            }

            goto LABEL_24;
          }
        }

        else
        {
LABEL_25:

          v2 = v62;
          v3 = v63;
          v34 = v60;
          v4 = v61;
          v28 = v64;
        }
      }

      v35 = v28;
      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v36 >= v34)
        {
          v6 = sub_10060C86C(v58, v55, v57, v3);
          goto LABEL_47;
        }

        v11 = *(v4 + 8 * v36);
        ++v35;
        if (v11)
        {
          v28 = v36;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v51 = v15;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v28 = v64;
    }

    v52 = swift_slowAlloc();
    memcpy(v52, v13, v51);
    v53 = v54;
    v6 = sub_10061A4A8(v52, v55, v3, v8, v65);

    if (!v53)
    {

      v59 = v66;
LABEL_47:
      sub_1000128F8();
      return v6;
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100615308(uint64_t a1, void *a2)
{
  v5 = sub_1000BC4D4(&qword_1016A5A40, &qword_1013B3568);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v68 - v10);
  v12 = type metadata accessor for CorrelationIdentifier();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v88 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = (&v68 - v17);
  __chkstk_darwin(v16);
  v83 = (&v68 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v11;
  v71 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v82 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v90 = (v24 & v21);
  v75 = (63 - v23) >> 6;
  v89 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v79 = (v19 + 32);
  v85 = a2 + 7;
  v70 = v19;
  v91 = (v19 + 8);

  v26 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v90;
    v28 = v26;
    if (v90)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v69;
    }

    v77 = *v81;
    v77(v32, v33, 1, v12);
    v92 = a1;
    v93 = v22;
    v94 = v82;
    v95 = v30;
    v96 = v2;
    v76 = *v80;
    if (v76(v32, 1, v12) == 1)
    {
      sub_10000B3A8(v32, &qword_1016A5A40, &qword_1013B3568);
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v32, v12);
    v34 = a2[5];
    v73 = sub_100009774(&unk_1016C7F30, &type metadata accessor for CorrelationIdentifier);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v12);
LABEL_22:
    v26 = v30;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v37;
  while (1)
  {
    v86(v18, a2[6] + v87 * v26, v12);
    v38 = sub_100009774(&qword_1016A5A48, &type metadata accessor for CorrelationIdentifier);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v90 = *v91;
    v90(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v84;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v12);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v12);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v68;
  a1 = v72;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    __chkstk_darwin(v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v83 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v71;
    v47 = i;
    v48 = v75;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v87, v12);
      v53 = 0;
LABEL_39:
      v77(v26, v53, 1, v12);
      v92 = a1;
      v93 = v47;
      v94 = v82;
      v95 = v30;
      v96 = v2;
      if (v76(v26, 1, v12) == 1)
      {
        sub_10000B3A8(v26, &qword_1016A5A40, &qword_1013B3568);
        a2 = sub_10060CABC(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v26, v12);
      v54 = a2[5];
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v85[v58 >> 6]) != 0)
      {
        v86(v18, v56[6] + v58 * v87, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v85[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v18, v56[6] + v58 * v87, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v90(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v90(v88, v12);
        v62 = v83[v28];
        v83[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
        if ((v62 & v22) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v12);
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_10061A6EC(v67, v68, v83, v26, &v92);

LABEL_52:
  sub_1000128F8();
  return a2;
}

void *sub_100615D6C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v51 - v10;
  __chkstk_darwin(v9);
  i = v51 - v12;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65[0] = a1;
  v13 = *(a1 + 16);

  v53 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v55 = a1;
  v56 = a1 + ((v17 + 32) & ~v17);
  v62 = *(v15 + 56);
  v63 = v16;
  v60 = a2 + 7;
  v61 = a2;
  v64 = v15;
  v18 = (v15 - 8);
  v52 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v57 = v14 + 1;
    v65[1] = v14 + 1;
    v63(i, v56 + v62 * v14, v4);
    v19 = a2[5];
    v54 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v57;
    if (v57 == v53)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v63(v11, v61[6] + v22 * v62, v4);
    sub_100009774(&qword_1016984A0, &type metadata accessor for UUID);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) == 0)
    {
      a2 = v61;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v61;
  v30 = *(v61 + 32);
  v51[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v51[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v51[1] = v51;
    __chkstk_darwin(v28);
    v33 = v51 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v60, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v52 = v33;
    v53 = (v34 - 1);
    v35 = *(v55 + 16);
    v36 = v57;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_10060AF64(v52, v51[0], v53, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v55 + 16))
      {
        break;
      }

      v57 = v36;
      v63(v59, v56 + v36 * v62, v4);
      v38 = *(v29 + 40);
      v39 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v60[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v63(v11, v61[6] + v22 * v62, v4);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v60[v22 >> 6]) == 0)
          {
            break;
          }

          v63(v11, v61[6] + v22 * v62, v4);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v59, v4);
        v29 = v61;
LABEL_16:
        v37 = v57;
        goto LABEL_17;
      }

LABEL_25:
      v27(v59, v4);
      v44 = v52[v24];
      v52[v24] = v44 & ~v23;
      v29 = v61;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v53 - 1;
      v37 = v57;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_33;
      }

      --v53;
      if (!v45)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v47 = v31;

    v48 = v47;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v49 = v61;

      v29 = v49;
      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v60, v48);
  a2 = sub_10061ABC0(v50, v51[0], v61, v22, v65);

LABEL_30:

  return a2;
}

void *sub_10061642C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A59B8, &qword_1013B34D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v78 - v9;
  v11 = type metadata accessor for BeaconIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v96 = &v78 - v18;
  v19 = __chkstk_darwin(v17);
  __chkstk_darwin(v19);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v94 = (&v78 - v20);
  v93 = v21;
  v81 = v8;
  v78 = 0;
  v23 = a1 + 56;
  v22 = *(a1 + 56);
  v24 = -1 << *(a1 + 32);
  v91 = ~v24;
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v22;
  v82 = (63 - v24) >> 6;
  v90 = (v12 + 56);
  v89 = (v12 + 48);
  v98 = a2 + 7;

  v28 = 0;
  v80 = v12;
  v88 = a1;
  v95 = v11;
  v87 = a1 + 56;
  v79 = v10;
  while (1)
  {
    v29 = v26;
    v30 = v28;
    v97 = v26;
    if (v26)
    {
LABEL_16:
      v26 = (v29 - 1) & v29;
      sub_10062CD24(*(a1 + 48) + *(v12 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v10, type metadata accessor for BeaconIdentifier);
      v34 = 0;
      v32 = v30;
    }

    else
    {
      v31 = v82 <= (v28 + 1) ? v28 + 1 : v82;
      v32 = v31 - 1;
      v33 = v28;
      while (1)
      {
        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_60;
        }

        if (v30 >= v82)
        {
          break;
        }

        v29 = *(v23 + 8 * v30);
        ++v33;
        if (v29)
        {
          v12 = v80;
          goto LABEL_16;
        }
      }

      v26 = 0;
      v34 = 1;
    }

    v86 = *v90;
    v86(v10, v34, 1, v11);
    v99 = a1;
    v100 = v23;
    v101 = v91;
    v102 = v32;
    v103 = v26;
    v85 = *v89;
    if (v85(v10, 1, v11) == 1)
    {
      sub_10000B3A8(v10, &qword_1016A59B8, &qword_1013B34D8);
      sub_1000128F8();
      return a2;
    }

    sub_10062CC64(v10, v94, type metadata accessor for BeaconIdentifier);
    v35 = a2[5];
    Hasher.init(_seed:)();
    v36 = type metadata accessor for UUID();
    v37 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v92 = *(v11 + 20);
    v84 = v36;
    v83 = v37;
    dispatch thunk of Hashable.hash(into:)();
    v38 = Hasher._finalize()();
    v39 = -1 << *(a2 + 32);
    v28 = v38 & ~v39;
    v30 = v28 >> 6;
    v10 = 1 << v28;
    if (((1 << v28) & v98[v28 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_10062CBB8(v94, type metadata accessor for BeaconIdentifier);
    v28 = v32;
    v11 = v95;
    v23 = v87;
    v10 = v79;
    v12 = v80;
    a1 = v88;
  }

  v40 = ~v39;
  v97 = *(v80 + 72);
  while (1)
  {
    v41 = v93;
    sub_10062CD24(a2[6] + v97 * v28, v93, type metadata accessor for BeaconIdentifier);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    sub_10062CBB8(v41, type metadata accessor for BeaconIdentifier);
LABEL_21:
    v28 = (v28 + 1) & v40;
    v30 = v28 >> 6;
    v10 = 1 << v28;
    if ((v98[v28 >> 6] & (1 << v28)) == 0)
    {
      goto LABEL_6;
    }
  }

  v42 = v41 + *(v95 + 20);
  v43 = static UUID.== infix(_:_:)();
  v44 = v41;
  v45 = v43;
  sub_10062CBB8(v44, type metadata accessor for BeaconIdentifier);
  if ((v45 & 1) == 0)
  {
    goto LABEL_21;
  }

  v46 = sub_10062CBB8(v94, type metadata accessor for BeaconIdentifier);
  v47 = *(a2 + 32);
  v80 = ((1 << v47) + 63) >> 6;
  v27 = 8 * v80;
  a1 = v88;
  if ((v47 & 0x3Fu) > 0xD)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v92 = &v78;
    __chkstk_darwin(v46);
    v49 = &v78 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v49, v98, v48);
    v50 = *&v49[8 * v30] & ~v10;
    v51 = a2[2];
    v94 = v49;
    *&v49[8 * v30] = v50;
    v52 = v51 - 1;
    v30 = v81;
    v53 = v95;
    v28 = v96;
    v54 = v87;
    v55 = v82;
LABEL_28:
    v93 = v52;
LABEL_30:
    while (2)
    {
      if (v26)
      {
        v56 = v32;
LABEL_40:
        v59 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        sub_10062CD24(*(a1 + 48) + (v59 | (v56 << 6)) * v97, v30, type metadata accessor for BeaconIdentifier);
        v60 = 0;
LABEL_41:
        v86(v30, v60, 1, v53);
        v99 = a1;
        v100 = v54;
        v101 = v91;
        v102 = v32;
        v103 = v26;
        if (v85(v30, 1, v53) == 1)
        {
          sub_10000B3A8(v30, &qword_1016A59B8, &qword_1013B34D8);
          a2 = sub_10060D244(v94, v80, v93, a2);
          goto LABEL_55;
        }

        sub_10062CC64(v30, v28, type metadata accessor for BeaconIdentifier);
        v61 = a2[5];
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v62 = *(v53 + 20);
        dispatch thunk of Hashable.hash(into:)();
        v63 = Hasher._finalize()();
        v64 = a2;
        v65 = -1 << *(a2 + 32);
        v66 = v63 & ~v65;
        v10 = v66 >> 6;
        v67 = 1 << v66;
        if (((1 << v66) & v98[v66 >> 6]) == 0)
        {
LABEL_29:
          v28 = v96;
          sub_10062CBB8(v96, type metadata accessor for BeaconIdentifier);
          a2 = v64;
          a1 = v88;
          v30 = v81;
          v53 = v95;
          v54 = v87;
          v55 = v82;
          continue;
        }

        v68 = ~v65;
        while (1)
        {
          sub_10062CD24(v64[6] + v66 * v97, v16, type metadata accessor for BeaconIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v69 = *(v95 + 20);
            v70 = static UUID.== infix(_:_:)();
            sub_10062CBB8(v16, type metadata accessor for BeaconIdentifier);
            if (v70)
            {
              v28 = v96;
              sub_10062CBB8(v96, type metadata accessor for BeaconIdentifier);
              v53 = v95;
              v71 = v94[v10];
              v94[v10] = v71 & ~v67;
              v72 = (v71 & v67) == 0;
              a2 = v64;
              a1 = v88;
              v30 = v81;
              v54 = v87;
              v55 = v82;
              if (!v72)
              {
                v52 = v93 - 1;
                if (__OFSUB__(v93, 1))
                {
                  __break(1u);
                }

                if (v93 == 1)
                {

                  a2 = &_swiftEmptySetSingleton;
                  goto LABEL_55;
                }

                goto LABEL_28;
              }

              goto LABEL_30;
            }
          }

          else
          {
            sub_10062CBB8(v16, type metadata accessor for BeaconIdentifier);
          }

          v66 = (v66 + 1) & v68;
          v10 = v66 >> 6;
          v67 = 1 << v66;
          if ((v98[v66 >> 6] & (1 << v66)) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      break;
    }

    v57 = v55 <= (v32 + 1) ? v32 + 1 : v55;
    v58 = v57 - 1;
    while (1)
    {
      v56 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v56 >= v55)
      {
        v26 = 0;
        v60 = 1;
        v32 = v58;
        goto LABEL_41;
      }

      v26 = *(v54 + 8 * v56);
      ++v32;
      if (v26)
      {
        v32 = v56;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    v74 = v27;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v75 = swift_slowAlloc();
  memcpy(v75, v98, v74);
  v76 = v78;
  v77 = sub_10061AFB4(v75, v80, a2, v28, &v99);

  if (v76)
  {

    __break(1u);
  }

  else
  {

    a2 = v77;
LABEL_55:
    sub_1000128F8();
    return a2;
  }

  return result;
}

void *sub_100616F34(uint64_t a1, void *a2)
{

  return sub_100617004(a1, a2, &unk_1016BBEC0, &qword_1013B3518);
}

void *sub_100616F9C(uint64_t a1, void *a2)
{

  return sub_100617004(a1, a2, &qword_1016BBF80, &unk_1013B3540);
}

void *sub_100617004(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v39 = a3;
  v40 = a4;
  v43[0] = a1;
  v41 = *(a1 + 16);
  if (v41)
  {
    v6 = 0;
    v7 = a2 + 7;
    v8 = a1 + 32;
    do
    {
      v9 = *(v6 + v8);
      v6 = (v6 + 1);
      v10 = v4[5];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      v11 = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) != 0)
      {
        v16 = v4[6];
        if (*(v16 + v13) == v9)
        {
LABEL_9:
          v43[1] = v6;
          v17 = (63 - v12) >> 6;
          v18 = 8 * v17;
          v38 = v17;
          if (v17 > 0x80)
          {
            goto LABEL_30;
          }

          {
            v41 = &v37;
            __chkstk_darwin(i);
            v21 = (&v37 - v20);
            memcpy(&v37 - v20, v4 + 7, v18);
            v22 = v4[2];
            v21[v14] &= ~v15;
            v15 = v22 - 1;
            v23 = *(a1 + 16);
            if (v6 == v23)
            {
              break;
            }

            v18 = 1;
            while (v6 < v23)
            {
              v14 = *(v6 + v8);
              v25 = v4[5];
              Hasher.init(_seed:)();
              v13 = &v42;
              Hasher._combine(_:)(v14);
              v26 = Hasher._finalize()();
              v27 = -1 << *(v4 + 32);
              v28 = v26 & ~v27;
              v29 = v28 >> 6;
              v30 = 1 << v28;
              if (((1 << v28) & v7[v28 >> 6]) != 0)
              {
                v31 = v4[6];
                if (*(v31 + v28) == v14)
                {
LABEL_24:
                  v33 = v21[v29];
                  v21[v29] = v33 & ~v30;
                  if ((v33 & v30) != 0)
                  {
                    if (__OFSUB__(v15--, 1))
                    {
                      goto LABEL_29;
                    }

                    if (!v15)
                    {

                      v4 = &_swiftEmptySetSingleton;
                      goto LABEL_13;
                    }
                  }
                }

                else
                {
                  v32 = ~v27;
                  while (1)
                  {
                    v28 = (v28 + 1) & v32;
                    v29 = v28 >> 6;
                    v30 = 1 << v28;
                    if (((1 << v28) & v7[v28 >> 6]) == 0)
                    {
                      break;
                    }

                    if (*(v31 + v28) == v14)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }

              v6 = (v6 + 1);
              v23 = *(a1 + 16);
              if (v6 == v23)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:

            if (!swift_stdlib_isStackAllocationSafe())
            {
              v35 = swift_slowAlloc();
              memcpy(v35, v4 + 7, v18);
              v36 = sub_10061B494(v35, v38, v4, v13, v43, v39, v40);

              return v36;
            }
          }

LABEL_12:
          v4 = sub_10060D588(v21, v38, v15, v4, v39, v40);
LABEL_13:

          return v4;
        }

        while (1)
        {
          v13 = (v13 + 1) & ~v12;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & v7[v13 >> 6]) == 0)
          {
            break;
          }

          if (*(v16 + v13) == v9)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (v6 != v41);
  }

  return v4;
}

char *sub_1006173A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v49 = a2;
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v56 = &v48 - v11;
  v55 = type metadata accessor for SharedBeaconRecord(0);
  v12 = *(*(v55 - 8) + 64);
  v13 = __chkstk_darwin(v55);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v51 = a1;
  v52 = &v48 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v19 = v18 - 1;
  v53 = (v20 + 48);
  v54 = (v20 + 56);
  v59 = a3;
  v57 = v20;
  v58 = a3 + 56;
  while (2)
  {
    v50 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v32 = 1;
              v31 = v56;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        v31 = v56;
        sub_10062CD24(*(v21 + 48) + *(v57 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v56, type metadata accessor for SharedBeaconRecord);
        v32 = 0;
        v29 = v26;
LABEL_14:
        v33 = v55;
        (*v54)(v31, v32, 1, v55);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v53)(v31, 1, v33) == 1)
        {
          sub_10000B3A8(v31, &unk_101698C30, &unk_101392630);
          v47 = v59;

          return sub_10060B28C(v51, v49, v50, v47);
        }

        v34 = v52;
        sub_10062CC64(v31, v52, type metadata accessor for SharedBeaconRecord);
        v35 = v59;
        v36 = *(v59 + 40);
        Hasher.init(_seed:)();
        sub_1011D8230();
        v37 = Hasher._finalize()();
        v38 = -1 << *(v35 + 32);
        v39 = v37 & ~v38;
        v40 = v39 >> 6;
        v41 = 1 << v39;
        if (((1 << v39) & *(v58 + 8 * (v39 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_10062CBB8(v34, type metadata accessor for SharedBeaconRecord);
      }

      v42 = *(v57 + 72);
      sub_10062CD24(*(v59 + 48) + v42 * v39, v15, type metadata accessor for SharedBeaconRecord);
      v43 = sub_1011DB3D8(v15, v34);
      sub_10062CBB8(v15, type metadata accessor for SharedBeaconRecord);
      if (!v43)
      {
        v44 = ~v38;
        do
        {
          v39 = (v39 + 1) & v44;
          v40 = v39 >> 6;
          v41 = 1 << v39;
          if (((1 << v39) & *(v58 + 8 * (v39 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_10062CD24(*(v59 + 48) + v42 * v39, v15, type metadata accessor for SharedBeaconRecord);
          v45 = sub_1011DB3D8(v15, v34);
          sub_10062CBB8(v15, type metadata accessor for SharedBeaconRecord);
        }

        while (!v45);
      }

      result = sub_10062CBB8(v34, type metadata accessor for SharedBeaconRecord);
      v46 = v51[v40];
      v51[v40] = v46 & ~v41;
    }

    while ((v46 & v41) == 0);
    v19 = v50 - 1;
    if (__OFSUB__(v50, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (v50 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

unint64_t *sub_100617828(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v35 = a3 + 56;
  v33 = a5;
LABEL_2:
  v31 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*a5 + 48) + 24 * (__clz(__rbit64(v9)) | (v10 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      v17 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._combine(_:)(v16);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v35 + 8 * (v20 >> 6))) == 0)
      {
LABEL_3:

        a5 = v33;
        v5 = a3;
        continue;
      }

      v23 = ~v19;
      v24 = *(v5 + 48);
      while (1)
      {
        v25 = v24 + 24 * v20;
        v26 = *(v25 + 16);
        if (*v25 == v15 && *(v25 + 8) == v14)
        {
          if (v16 == v26)
          {
            goto LABEL_20;
          }
        }

        else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v16 ^ v26) & 1) == 0)
        {
LABEL_20:

          a5 = v33;
          v28 = v32[v21];
          v32[v21] = v28 & ~v22;
          v5 = a3;
          if ((v28 & v22) != 0)
          {
            v7 = v31 - 1;
            if (__OFSUB__(v31, 1))
            {
LABEL_29:
              __break(1u);
              return result;
            }

            if (v31 == 1)
            {
              return &_swiftEmptySetSingleton;
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v35 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (a5[2] + 64) >> 6;
  }

  a5[3] = v29 - 1;
  a5[4] = 0;

  return sub_10060B4EC(v32, a2, v31, v5);
}

void *sub_100617A78(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v89 = a3 + 56;
  v82 = a5;
LABEL_2:
  v77 = v7;
  while (1)
  {
LABEL_4:
    v8 = a5[3];
    v9 = a5[4];
    if (!v9)
    {
      v11 = (a5[2] + 64) >> 6;
      v12 = a5[3];
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v11)
        {
          if (v11 <= v8 + 1)
          {
            v71 = v8 + 1;
          }

          else
          {
            v71 = (a5[2] + 64) >> 6;
          }

          a5[3] = v71 - 1;
          a5[4] = 0;

          return sub_10060B738(a1, a2, v77, v5);
        }

        v9 = *(a5[1] + 8 * v10);
        ++v12;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
    }

    v10 = a5[3];
LABEL_10:
    v13 = (*(*a5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v10;
    a5[4] = (v9 - 1) & v9;
    v16 = *(v5 + 40);
    Hasher.init(_seed:)();
    sub_100017D5C(v15, v14);
    Data.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = v89;
    v22 = 1 << v19;
    v94 = v14;
    v95 = v15;
    if (((1 << v19) & *(v89 + 8 * (v19 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    sub_100016590(v95, v94);
    a5 = v82;
  }

  v23 = ~v18;
  v24 = v14 >> 62;
  if (v15)
  {
    v25 = 0;
  }

  else
  {
    v25 = v14 == 0xC000000000000000;
  }

  v26 = !v25;
  v92 = v26;
  v81 = HIDWORD(v15);
  v27 = __OFSUB__(HIDWORD(v15), v15);
  v87 = v27;
  v86 = HIDWORD(v15) - v15;
  v93 = BYTE6(v14);
  v83 = v15;
  v79 = (v15 >> 32) - v15;
  v80 = v15 >> 32;
  v91 = v23;
  while (1)
  {
    v28 = (*(v5 + 48) + 16 * v19);
    v29 = *v28;
    v30 = v28[1];
    v31 = v30 >> 62;
    if (v30 >> 62 == 3)
    {
      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30 == 0xC000000000000000;
      }

      v34 = !v32 || v24 < 3;
      if (((v34 | v92) & 1) == 0)
      {
        v67 = 0;
        v68 = 0xC000000000000000;
        goto LABEL_124;
      }

LABEL_45:
      v35 = 0;
      if (v24 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_45;
      }

      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_135;
      }

      if (v24 <= 1)
      {
        goto LABEL_42;
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_136;
      }

      v35 = v35;
      if (v24 <= 1)
      {
LABEL_42:
        v39 = v93;
        if (v24)
        {
          v39 = v86;
          if (v87)
          {
            goto LABEL_134;
          }
        }

        goto LABEL_48;
      }
    }

    else
    {
      v35 = BYTE6(v30);
      if (v24 <= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    if (v24 != 2)
    {
      if (!v35)
      {
        goto LABEL_123;
      }

      goto LABEL_22;
    }

    v41 = *(v95 + 16);
    v40 = *(v95 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      goto LABEL_133;
    }

LABEL_48:
    if (v35 != v39)
    {
      goto LABEL_22;
    }

    if (v35 < 1)
    {
      goto LABEL_123;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        *v97 = v29;
        *&v97[8] = v30;
        v97[10] = BYTE2(v30);
        v97[11] = BYTE3(v30);
        v97[12] = BYTE4(v30);
        v97[13] = BYTE5(v30);
        sub_100017D5C(v29, v30);
        sub_100771A28(v97, v95, v94, &v96);
        if (v90)
        {
          goto LABEL_158;
        }

        sub_100016590(v29, v30);
        v23 = v91;
        if (v96)
        {
          goto LABEL_123;
        }

        goto LABEL_22;
      }

      if (v29 > v29 >> 32)
      {
        goto LABEL_137;
      }

      sub_100017D5C(v29, v30);
      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v47 = v46;
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v29, v48))
        {
          goto LABEL_139;
        }

        __s1a = (v29 - v48 + v47);
      }

      else
      {
        __s1a = 0;
      }

      __DataStorage._length.getter();
      v5 = a3;
      if (v24 != 2)
      {
        if (v24 == 1)
        {
          if (v80 < v83)
          {
            goto LABEL_142;
          }

          v49 = __DataStorage._bytes.getter();
          if (v49)
          {
            v54 = __DataStorage._offset.getter();
            if (__OFSUB__(v83, v54))
            {
              goto LABEL_147;
            }

            v49 += v83 - v54;
          }

          v55 = __DataStorage._length.getter();
          v52 = v79;
          if (v55 < v79)
          {
            v52 = v55;
          }

          v5 = a3;
          v53 = __s1a;
          if (!__s1a)
          {
            goto LABEL_150;
          }

          v21 = v89;
          if (!v49)
          {
            goto LABEL_152;
          }

          goto LABEL_118;
        }

        v21 = v89;
        v53 = __s1a;
        *v97 = v95;
        v97[4] = v81;
        *&v97[5] = *(&v95 + 5);
        v97[7] = HIBYTE(v95);
        *&v97[8] = v94;
        *&v97[12] = WORD2(v94);
        if (!__s1a)
        {
          goto LABEL_149;
        }

LABEL_102:
        v60 = v97;
        v61 = v93;
LABEL_120:
        v66 = memcmp(v53, v60, v61);
        sub_100016590(v29, v30);
        v23 = v91;
        if (!v66)
        {
          goto LABEL_123;
        }

        goto LABEL_22;
      }

      v73 = *(v95 + 24);
      v75 = *(v95 + 16);
      v49 = __DataStorage._bytes.getter();
      if (v49)
      {
        v58 = __DataStorage._offset.getter();
        v59 = v75;
        if (__OFSUB__(v75, v58))
        {
          goto LABEL_146;
        }

        v49 += v75 - v58;
      }

      else
      {
        v59 = v75;
      }

      v64 = v73 - v59;
      if (__OFSUB__(v73, v59))
      {
        goto LABEL_143;
      }

      v65 = __DataStorage._length.getter();
      if (v65 >= v64)
      {
        v52 = v64;
      }

      else
      {
        v52 = v65;
      }

      v53 = __s1a;
      if (!__s1a)
      {
        goto LABEL_157;
      }

      v5 = a3;
      v21 = v89;
      if (!v49)
      {
        goto LABEL_156;
      }

LABEL_118:
      if (v53 == v49)
      {
        sub_100016590(v29, v30);
LABEL_123:
        v68 = v94;
        v67 = v95;
LABEL_124:
        sub_100016590(v67, v68);
        v69 = a1[v20];
        a1[v20] = v69 & ~v22;
        a5 = v82;
        if ((v69 & v22) == 0)
        {
          goto LABEL_4;
        }

        v7 = v77 - 1;
        if (__OFSUB__(v77, 1))
        {
          goto LABEL_148;
        }

        if (v77 == 1)
        {
          return &_swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }

      v61 = v52;
      v60 = v49;
      goto LABEL_120;
    }

    if (v31 == 2)
    {
      break;
    }

    *&v97[6] = 0;
    *v97 = 0;
    sub_100017D5C(v29, v30);
    sub_100771A28(v97, v95, v94, &v96);
    if (v90)
    {
      goto LABEL_158;
    }

    sub_100016590(v29, v30);
    v23 = v91;
    if (v96)
    {
      goto LABEL_123;
    }

LABEL_22:
    v19 = (v19 + 1) & v23;
    v20 = v19 >> 6;
    v22 = 1 << v19;
    if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_3;
    }
  }

  v42 = *(v29 + 16);
  sub_100017D5C(v29, v30);
  v43 = __DataStorage._bytes.getter();
  if (v43)
  {
    v44 = v43;
    v45 = __DataStorage._offset.getter();
    if (__OFSUB__(v42, v45))
    {
      goto LABEL_138;
    }

    __s1 = (v42 - v45 + v44);
  }

  else
  {
    __s1 = 0;
  }

  __DataStorage._length.getter();
  v5 = a3;
  if (v24 == 2)
  {
    v72 = *(v95 + 24);
    v74 = *(v95 + 16);
    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v56 = __DataStorage._offset.getter();
      v57 = v74;
      if (__OFSUB__(v74, v56))
      {
        goto LABEL_144;
      }

      v49 += v74 - v56;
    }

    else
    {
      v57 = v74;
    }

    v62 = v72 - v57;
    if (__OFSUB__(v72, v57))
    {
      goto LABEL_141;
    }

    v63 = __DataStorage._length.getter();
    if (v63 >= v62)
    {
      v52 = v62;
    }

    else
    {
      v52 = v63;
    }

    v53 = __s1;
    if (!__s1)
    {
      goto LABEL_154;
    }

    v5 = a3;
    v21 = v89;
    if (!v49)
    {
      goto LABEL_155;
    }

    goto LABEL_118;
  }

  if (v24 == 1)
  {
    if (v80 < v83)
    {
      goto LABEL_140;
    }

    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v83, v50))
      {
        goto LABEL_145;
      }

      v49 += v83 - v50;
    }

    v51 = __DataStorage._length.getter();
    v52 = v79;
    if (v51 < v79)
    {
      v52 = v51;
    }

    v5 = a3;
    v53 = __s1;
    if (!__s1)
    {
      goto LABEL_151;
    }

    v21 = v89;
    if (!v49)
    {
      goto LABEL_153;
    }

    goto LABEL_118;
  }

  v21 = v89;
  v53 = __s1;
  *v97 = v95;
  v97[4] = v81;
  *&v97[5] = *(&v95 + 5);
  v97[7] = HIBYTE(v95);
  *&v97[8] = v94;
  *&v97[12] = WORD2(v94);
  if (__s1)
  {
    goto LABEL_102;
  }

  __break(1u);
LABEL_149:
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
LABEL_158:

  __break(1u);
  return result;
}

uint64_t sub_100618338(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    v19 = *(a3 + 40);
    result = static Hasher._hash(seed:_:)();
    v20 = -1 << *(a3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) != 0)
    {
      v24 = *(a3 + 48);
      if (*(v24 + 8 * v21) == v18)
      {
LABEL_2:
        v12 = v8[v22];
        v8[v22] = v12 & ~v23;
        if ((v12 & v23) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v27 = v13 + 1;
  }

  else
  {
    v27 = (a5[2] + 64) >> 6;
  }

  a5[3] = v27 - 1;
  a5[4] = 0;

  return sub_10060B960(v8, a2, v10, a3);
}

void *sub_1006184F4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
          v48 = v64;

          return sub_10060AF64(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_100009774(&qword_1016984A0, &type metadata accessor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

Swift::Int sub_1006189C8(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = result;
  v5 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v39 = a3 + 56;
LABEL_2:
  v36 = v6;
  while (1)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      break;
    }

    v9 = a5[3];
LABEL_9:
    v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    v13 = *(a3 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v14 = -1 << *(a3 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v39 + 8 * (v15 >> 6))) != 0)
    {
      v18 = ~v14;
      v19 = v12;
LABEL_11:
      v20 = 0xE700000000000000;
      v21 = 0x6E776F6E6B6E75;
      switch(*(*(a3 + 48) + v15))
      {
        case 1:
          v21 = 0xD000000000000015;
          v20 = 0x8000000101347FF0;
          break;
        case 2:
          v21 = 0xD000000000000016;
          v20 = 0x8000000101348010;
          break;
        case 3:
          v20 = 0xE600000000000000;
          v21 = 0x657461636F6CLL;
          break;
        case 4:
          v20 = 0xEC000000676E6972;
          v21 = 0x6168537472617473;
          break;
        case 5:
          v21 = 0x72616853706F7473;
          goto LABEL_26;
        case 6:
          v23 = 2036427888;
          goto LABEL_30;
        case 7:
          v23 = 1886352499;
LABEL_30:
          v21 = v23 | 0x6E756F5300000000;
          v20 = 0xE900000000000064;
          break;
        case 8:
          v21 = 0x61654C6E69676562;
          v20 = 0xED0000676E696873;
          break;
        case 9:
          v21 = 0x687361654C646E65;
LABEL_26:
          v20 = 0xEB00000000676E69;
          break;
        case 0xA:
          v21 = 0x4654426E69676562;
          v20 = 0xEE00676E69646E69;
          break;
        case 0xB:
          v21 = 0x6E69465442646E65;
          v22 = 1735289188;
          goto LABEL_37;
        case 0xC:
          v20 = 0xEC000000676E6967;
          v21 = 0x6E61526E69676562;
          break;
        case 0xD:
          v21 = 0x69676E6152646E65;
          v20 = 0xEA0000000000676ELL;
          break;
        case 0xE:
          v21 = 0x6F4C656C62616E65;
          v20 = 0xEE0065646F4D7473;
          break;
        case 0xF:
          v21 = 0x4C656C6261736964;
          v20 = 0xEF65646F4D74736FLL;
          break;
        case 0x10:
          v20 = 0xE600000000000000;
          v21 = 0x656D616E6572;
          break;
        case 0x11:
          v21 = 0x7463656E6E6F63;
          break;
        case 0x12:
          v20 = 0xEA00000000007463;
          v21 = 0x656E6E6F63736964;
          break;
        case 0x13:
          v21 = 0xD000000000000017;
          v20 = 0x80000001013480F0;
          break;
        case 0x14:
          v20 = 0xE600000000000000;
          v21 = 0x726961706E75;
          break;
        case 0x15:
          v21 = 0x65746167656C6564;
          v20 = 0xEE00657261685364;
          break;
        case 0x16:
          v21 = 0xD000000000000013;
          v20 = 0x8000000101348120;
          break;
        case 0x17:
          v21 = 0x6F69736963657270;
          v22 = 1481004654;
LABEL_37:
          v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
      switch(v19)
      {
        case 1:
          v24 = 0x8000000101347FF0;
          if (v21 == 0xD000000000000015)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        case 2:
          v24 = 0x8000000101348010;
          if (v21 != 0xD000000000000016)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 3:
          v24 = 0xE600000000000000;
          if (v21 != 0x657461636F6CLL)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 4:
          v24 = 0xEC000000676E6972;
          if (v21 != 0x6168537472617473)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 5:
          v30 = 0x72616853706F7473;
          goto LABEL_62;
        case 6:
          v31 = 2036427888;
          goto LABEL_68;
        case 7:
          v31 = 1886352499;
LABEL_68:
          v24 = 0xE900000000000064;
          if (v21 != (v31 | 0x6E756F5300000000))
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 8:
          v24 = 0xED0000676E696873;
          if (v21 != 0x61654C6E69676562)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 9:
          v30 = 0x687361654C646E65;
LABEL_62:
          v24 = 0xEB00000000676E69;
          if (v21 != v30)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 10:
          v26 = 0x4654426E69676562;
          v27 = 0x676E69646E69;
          goto LABEL_73;
        case 11:
          v28 = 0x6E69465442646E65;
          v29 = 1735289188;
          goto LABEL_86;
        case 12:
          v24 = 0xEC000000676E6967;
          if (v21 != 0x6E61526E69676562)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 13:
          v24 = 0xEA0000000000676ELL;
          if (v21 != 0x69676E6152646E65)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 14:
          v26 = 0x6F4C656C62616E65;
          v27 = 0x65646F4D7473;
          goto LABEL_73;
        case 15:
          v24 = 0xEF65646F4D74736FLL;
          if (v21 != 0x4C656C6261736964)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 16:
          v24 = 0xE600000000000000;
          if (v21 != 0x656D616E6572)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 17:
          if (v21 != 0x7463656E6E6F63)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 18:
          v24 = 0xEA00000000007463;
          if (v21 != 0x656E6E6F63736964)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 19:
          v25 = 0xD000000000000017;
          v24 = 0x80000001013480F0;
          goto LABEL_80;
        case 20:
          v24 = 0xE600000000000000;
          if (v21 != 0x726961706E75)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 21:
          v26 = 0x65746167656C6564;
          v27 = 0x657261685364;
LABEL_73:
          v24 = v27 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v21 != v26)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 22:
          v24 = 0x8000000101348120;
          if (v21 != 0xD000000000000013)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 23:
          v28 = 0x6F69736963657270;
          v29 = 1481004654;
LABEL_86:
          v24 = v29 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v21 != v28)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        default:
LABEL_80:
          if (v21 != v25)
          {
            goto LABEL_82;
          }

LABEL_81:
          if (v20 != v24)
          {
LABEL_82:
            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v32)
            {
              goto LABEL_89;
            }

            v15 = (v15 + 1) & v18;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if ((*(v39 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
            {
              continue;
            }

            goto LABEL_11;
          }

LABEL_89:
          v33 = v37[v16];
          v37[v16] = v33 & ~v17;
          if ((v33 & v17) == 0)
          {
            continue;
          }

          v6 = v36 - 1;
          if (__OFSUB__(v36, 1))
          {
LABEL_98:
            __break(1u);
            return result;
          }

          if (v36 == 1)
          {
            return &_swiftEmptySetSingleton;
          }

          break;
      }

      goto LABEL_2;
    }
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_98;
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (v10 <= v7 + 1)
  {
    v34 = v7 + 1;
  }

  else
  {
    v34 = (a5[2] + 64) >> 6;
  }

  a5[3] = v34 - 1;
  a5[4] = 0;

  return sub_10060BB4C(v37, a2, v36, a3);
}

void *sub_100619494(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v116 = a2;
  v148 = type metadata accessor for UUID();
  v11 = *(v148 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v148);
  v147 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v116 - v19;
  v134 = type metadata accessor for OwnerSharingCircle();
  v121 = *(v134 - 8);
  v21 = *(v121 + 64);
  v22 = __chkstk_darwin(v134);
  v24 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v120 = &v116 - v26;
  __chkstk_darwin(v25);
  v136 = (&v116 - v27);
  v28 = a3[2];
  v29 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v30 = *(a1 + v29) & ((-1 << a4) - 1);
  v117 = a1;
  *(a1 + v29) = v30;
  v118 = v28 - 1;
  v31 = *a5;
  v32 = a5[1];
  v33 = *(*a5 + 16);
  if (v32 == v33)
  {
LABEL_2:

    return sub_10060C04C(v117, v116, v118, a3);
  }

  v139 = v11 + 16;
  v146 = (v11 + 32);
  v144 = (v11 + 8);
  v138 = a3 + 7;
  v142 = v18;
  v140 = v20;
  v124 = a3;
  v119 = a5;
  v141 = v11;
  v123 = v24;
  while (1)
  {
    if (v32 >= v33)
    {
      goto LABEL_107;
    }

    v129 = v6;
    v35 = v31 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v137 = *(v121 + 72);
    v36 = v120;
    sub_10062CD24(v35 + v137 * v32, v120, type metadata accessor for OwnerSharingCircle);
    a5[1] = v32 + 1;
    v37 = v136;
    sub_10062CC64(v36, v136, type metadata accessor for OwnerSharingCircle);
    v38 = a3[5];
    Hasher.init(_seed:)();
    v39 = *v37;
    v40 = v37[1];
    Data.hash(into:)();
    v41 = v134;
    v42 = *(v134 + 20);
    v43 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    v133 = v42;
    dispatch thunk of Hashable.hash(into:)();
    v130 = v41[6];
    v145 = v43;
    dispatch thunk of Hashable.hash(into:)();
    v125 = *(v37 + v41[7]);
    Hasher._combine(_:)(v125);
    v44 = *(v37 + v41[8]);
    v45 = *(v44 + 64);
    v135 = v44 + 64;
    v46 = 1 << *(v44 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v143 = v44;

    v50 = 0;
    v149 = 0;
    if (!v48)
    {
LABEL_10:
      if (v49 <= v50 + 1)
      {
        v52 = v50 + 1;
      }

      else
      {
        v52 = v49;
      }

      v53 = v52 - 1;
      while (1)
      {
        v51 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v51 >= v49)
        {
          v69 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
          (*(*(v69 - 8) + 56))(v18, 1, 1, v69);
          v48 = 0;
          goto LABEL_18;
        }

        v48 = *(v135 + 8 * v51);
        ++v50;
        if (v48)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      return &_swiftEmptySetSingleton;
    }

    while (1)
    {
      v51 = v50;
LABEL_17:
      v54 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v55 = v54 | (v51 << 6);
      v56 = v143;
      v57 = v141;
      v58 = v147;
      v59 = v148;
      (*(v141 + 16))(v147, *(v143 + 48) + *(v141 + 72) * v55, v148);
      LOBYTE(v56) = *(*(v56 + 56) + v55);
      v60 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      v61 = *(v60 + 48);
      v62 = *(v57 + 32);
      v18 = v142;
      v62(v142, v58, v59);
      v18[v61] = v56;
      (*(*(v60 - 8) + 56))(v18, 0, 1, v60);
      v53 = v51;
      v20 = v140;
LABEL_18:
      sub_1000D2AD8(v18, v20, &unk_1016BC360, &qword_10139CBE0);
      v63 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      if ((*(*(v63 - 8) + 48))(v20, 1, v63) == 1)
      {
        break;
      }

      v64 = *(v63 + 48);
      v65 = v147;
      v66 = v148;
      (*v146)(v147, v20, v148);
      v67 = v20[v64];
      v150[2] = v152[2];
      v150[3] = v152[3];
      v151 = v153;
      v150[0] = v152[0];
      v150[1] = v152[1];
      dispatch thunk of Hashable.hash(into:)();
      (*v144)(v65, v66);
      Hasher._combine(_:)(v67);
      v68 = Hasher._finalize()();
      v50 = v53;
      v149 ^= v68;
      if (!v48)
      {
        goto LABEL_10;
      }
    }

    Hasher._combine(_:)(v149);
    v70 = v136;
    v71 = *(v136 + *(v134 + 36));
    v122 = v71;
    Hasher._combine(_:)(v71);
    v72 = Hasher._finalize()();
    a3 = v124;
    v73 = -1 << *(v124 + 32);
    v74 = v72 & ~v73;
    v75 = v74 >> 6;
    v76 = 1 << v74;
    if (((1 << v74) & v138[v74 >> 6]) != 0)
    {
      break;
    }

    v6 = v129;
LABEL_98:
    sub_10062CBB8(v136, type metadata accessor for OwnerSharingCircle);
LABEL_99:
    a5 = v119;
    v18 = v142;
LABEL_100:
    v31 = *a5;
    v32 = a5[1];
    v33 = *(*a5 + 16);
    if (v32 == v33)
    {
      goto LABEL_2;
    }
  }

  v149 = ~v73;
  v77 = *v70;
  v78 = v70[1];
  if (*v70)
  {
    v79 = 0;
  }

  else
  {
    v79 = v78 == 0xC000000000000000;
  }

  v80 = !v79;
  LODWORD(v135) = v80;
  v81 = v78 >> 62;
  v131 = v77;
  v82 = HIDWORD(v77) - v77;
  v83 = __OFSUB__(HIDWORD(v77), v77);
  v128 = v83;
  v127 = v82;
  v126 = v78;
  v132 = BYTE6(v78);
  v6 = v129;
  v84 = v123;
  v145 = v78 >> 62;
  while (1)
  {
    sub_10062CD24(a3[6] + v74 * v137, v84, type metadata accessor for OwnerSharingCircle);
    v85 = *v84;
    v86 = v84[1];
    v87 = v86 >> 62;
    if (v86 >> 62 == 3)
    {
      if (v85)
      {
        v88 = 0;
      }

      else
      {
        v88 = v86 == 0xC000000000000000;
      }

      v90 = !v88 || v81 < 3;
      if (((v90 | v135) & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_57:
      v91 = 0;
      if (v81 <= 1)
      {
        goto LABEL_54;
      }

      goto LABEL_58;
    }

    if (v87 > 1)
    {
      if (v87 != 2)
      {
        goto LABEL_57;
      }

      v93 = *(v85 + 16);
      v92 = *(v85 + 24);
      v94 = __OFSUB__(v92, v93);
      v91 = v92 - v93;
      if (v94)
      {
        goto LABEL_106;
      }

      if (v81 <= 1)
      {
        goto LABEL_54;
      }
    }

    else if (v87)
    {
      LODWORD(v91) = HIDWORD(v85) - v85;
      if (__OFSUB__(HIDWORD(v85), v85))
      {
        goto LABEL_105;
      }

      v91 = v91;
      if (v81 <= 1)
      {
LABEL_54:
        v95 = v132;
        if (v81)
        {
          v95 = v127;
          if (v128)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      v91 = BYTE6(v86);
      if (v81 <= 1)
      {
        goto LABEL_54;
      }
    }

LABEL_58:
    if (v81 != 2)
    {
      if (v91)
      {
        goto LABEL_34;
      }

      goto LABEL_88;
    }

    v97 = *(v131 + 16);
    v96 = *(v131 + 24);
    v94 = __OFSUB__(v96, v97);
    v95 = v96 - v97;
    if (v94)
    {
      goto LABEL_103;
    }

LABEL_60:
    if (v91 != v95)
    {
      goto LABEL_34;
    }

    if (v91 >= 1)
    {
      if (v87 > 1)
      {
        if (v87 != 2)
        {
          *(v152 + 6) = 0;
          *&v152[0] = 0;
LABEL_81:
          sub_100771A28(v152, v131, v126, v150);
          if ((v150[0] & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_88;
        }

        v129 = v6;
        v98 = *(v85 + 16);
        v99 = *(v85 + 24);
        v100 = __DataStorage._bytes.getter();
        if (v100)
        {
          v101 = v100;
          v102 = __DataStorage._offset.getter();
          if (__OFSUB__(v98, v102))
          {
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
          }

          v103 = v98 - v102 + v101;
          if (__OFSUB__(v99, v98))
          {
            goto LABEL_109;
          }
        }

        else
        {
          v103 = 0;
          if (__OFSUB__(v99, v98))
          {
            goto LABEL_109;
          }
        }

        v109 = v103;
        __DataStorage._length.getter();
        v110 = v109;
      }

      else
      {
        if (!v87)
        {
          *&v152[0] = *v84;
          WORD4(v152[0]) = v86;
          BYTE10(v152[0]) = BYTE2(v86);
          BYTE11(v152[0]) = BYTE3(v86);
          BYTE12(v152[0]) = BYTE4(v86);
          BYTE13(v152[0]) = BYTE5(v86);
          goto LABEL_81;
        }

        v129 = v6;
        v104 = v85;
        if (v85 >> 32 < v85)
        {
          goto LABEL_108;
        }

        v105 = __DataStorage._bytes.getter();
        if (v105)
        {
          v106 = v105;
          v107 = __DataStorage._offset.getter();
          if (__OFSUB__(v104, v107))
          {
            goto LABEL_112;
          }

          v108 = v104 - v107 + v106;
        }

        else
        {
          v108 = 0;
        }

        __DataStorage._length.getter();
        v110 = v108;
      }

      v111 = v129;
      sub_100771A28(v110, v131, v126, v152);
      v6 = v111;
      a3 = v124;
      v84 = v123;
      v81 = v145;
      if ((v152[0] & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_88:
    v112 = v134;
    v113 = v84 + *(v134 + 20);
    if (static UUID.== infix(_:_:)())
    {
      v114 = v84 + v112[6];
      if (static UUID.== infix(_:_:)())
      {
        break;
      }
    }

    v81 = v145;
LABEL_34:
    sub_10062CBB8(v84, type metadata accessor for OwnerSharingCircle);
    v74 = (v74 + 1) & v149;
    v75 = v74 >> 6;
    v76 = 1 << v74;
    if ((v138[v74 >> 6] & (1 << v74)) == 0)
    {
      goto LABEL_98;
    }
  }

  v81 = v145;
  if (*(v84 + v112[7]) != v125 || (sub_100DE7CB4(*(v84 + v112[8]), v143) & 1) == 0 || *(v84 + v112[9]) != v122)
  {
    goto LABEL_34;
  }

  sub_10062CBB8(v84, type metadata accessor for OwnerSharingCircle);
  sub_10062CBB8(v136, type metadata accessor for OwnerSharingCircle);
  v115 = v117[v75];
  v117[v75] = v115 & ~v76;
  if ((v115 & v76) == 0)
  {
    goto LABEL_99;
  }

  a5 = v119;
  v18 = v142;
  if (__OFSUB__(v118, 1))
  {
    goto LABEL_113;
  }

  if (v118 != 1)
  {
    --v118;
    goto LABEL_100;
  }

  return &_swiftEmptySetSingleton;
}

void sub_10061A1FC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_10060D058(a1, a2, v30, a3, &unk_1016BBFF0, &unk_1013B35C0);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_10061A4A8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v33 = a5;
  while (2)
  {
    v31 = v7;
    do
    {
      while (1)
      {
        v9 = a5[3];
        v10 = a5[4];
        if (!v10)
        {
          v12 = (a5[2] + 64) >> 6;
          v13 = a5[3];
          while (1)
          {
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
              goto LABEL_28;
            }

            if (v11 >= v12)
            {
              break;
            }

            v10 = *(a5[1] + 8 * v11);
            ++v13;
            if (v10)
            {
              goto LABEL_10;
            }
          }

          if (v12 <= v9 + 1)
          {
            v29 = v9 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_10060C86C(v32, a2, v31, v5);
        }

        v11 = a5[3];
LABEL_10:
        v14 = (*(*a5 + 48) + 24 * (__clz(__rbit64(v10)) | (v11 << 6)));
        v15 = *v14;
        v16 = *(v14 + 1);
        v17 = *(v14 + 2);
        a5[3] = v11;
        a5[4] = (v10 - 1) & v10;
        v18 = *(v5 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v15);

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(v5 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v8 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a3;
        a5 = v33;
      }

      v24 = ~v20;
      v25 = *(v5 + 48);
      while (1)
      {
        v26 = (v25 + 24 * v21);
        if (*v26 == v15)
        {
          v27 = *(v26 + 1) == v16 && *(v26 + 2) == v17;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if ((*(v8 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_3;
        }
      }

      a5 = v33;
      v28 = v32[v22];
      v32[v22] = v28 & ~v23;
      v5 = a3;
    }

    while ((v28 & v23) == 0);
    v7 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_28:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

void *sub_10061A6EC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_1000BC4D4(&qword_1016A5A40, &qword_1013B3568);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for CorrelationIdentifier();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_10000B3A8(v12, &qword_1016A5A40, &qword_1013B3568);
          v48 = v64;

          return sub_10060CABC(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_100009774(&unk_1016C7F30, &type metadata accessor for CorrelationIdentifier);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_100009774(&qword_1016A5A48, &type metadata accessor for CorrelationIdentifier);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_10061ABC0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v44 = &v37 - v16;
  result = __chkstk_darwin(v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_10060AF64(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_100009774(&qword_1016984A0, &type metadata accessor for UUID);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return &_swiftEmptySetSingleton;
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_10061AFB4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v51 = a2;
  v9 = sub_1000BC4D4(&qword_1016A59B8, &qword_1013B34D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v55 = &v51 - v11;
  v60 = type metadata accessor for BeaconIdentifier();
  v12 = *(*(v60 - 8) + 64);
  v13 = __chkstk_darwin(v60);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v18 = &v51 - v17;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20) & ((-1 << a4) - 1);
  v53 = a1;
  v54 = a5;
  *(a1 + v20) = v21;
  v22 = v19 - 1;
  v57 = (v23 + 56);
  v58 = v23;
  v56 = (v23 + 48);
  v62 = a3;
  v61 = a3 + 56;
LABEL_2:
  v52 = v22;
LABEL_4:
  while (2)
  {
    v25 = *a5;
    v24 = a5[1];
    v27 = a5[2];
    v26 = a5[3];
    v28 = a5[4];
    v59 = v27;
    if (v28)
    {
      v29 = v26;
LABEL_13:
      v33 = (v28 - 1) & v28;
      v34 = v55;
      sub_10062CD24(*(v25 + 48) + *(v58 + 72) * (__clz(__rbit64(v28)) | (v29 << 6)), v55, type metadata accessor for BeaconIdentifier);
      v35 = 0;
      v32 = v29;
LABEL_14:
      v36 = v60;
      (*v57)(v34, v35, 1, v60);
      *a5 = v25;
      a5[1] = v24;
      a5[2] = v59;
      a5[3] = v32;
      a5[4] = v33;
      if ((*v56)(v34, 1, v36) == 1)
      {
        sub_10000B3A8(v34, &qword_1016A59B8, &qword_1013B34D8);
        v50 = v62;

        return sub_10060D244(v53, v51, v52, v50);
      }

      sub_10062CC64(v34, v18, type metadata accessor for BeaconIdentifier);
      v37 = v62;
      v38 = *(v62 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v39 = *(v36 + 20);
      dispatch thunk of Hashable.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = -1 << *(v37 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      v44 = 1 << v42;
      if (((1 << v42) & *(v61 + 8 * (v42 >> 6))) == 0)
      {
LABEL_3:
        result = sub_10062CBB8(v18, type metadata accessor for BeaconIdentifier);
        a5 = v54;
        continue;
      }

      v45 = ~v41;
      v46 = *(v58 + 72);
      while (1)
      {
        sub_10062CD24(*(v62 + 48) + v46 * v42, v15, type metadata accessor for BeaconIdentifier);
        if (static UUID.== infix(_:_:)())
        {
          v47 = *(v60 + 20);
          v48 = static UUID.== infix(_:_:)();
          sub_10062CBB8(v15, type metadata accessor for BeaconIdentifier);
          if (v48)
          {
            result = sub_10062CBB8(v18, type metadata accessor for BeaconIdentifier);
            v49 = v53[v43];
            v53[v43] = v49 & ~v44;
            a5 = v54;
            if ((v49 & v44) != 0)
            {
              v22 = v52 - 1;
              if (__OFSUB__(v52, 1))
              {
                goto LABEL_30;
              }

              if (v52 == 1)
              {
                return &_swiftEmptySetSingleton;
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        else
        {
          sub_10062CBB8(v15, type metadata accessor for BeaconIdentifier);
        }

        v42 = (v42 + 1) & v45;
        v43 = v42 >> 6;
        v44 = 1 << v42;
        if ((*(v61 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v30 = (v27 + 64) >> 6;
  if (v30 <= v26 + 1)
  {
    v31 = v26 + 1;
  }

  else
  {
    v31 = (v27 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      v33 = 0;
      v35 = 1;
      v34 = v55;
      goto LABEL_14;
    }

    v28 = *(v24 + 8 * v29);
    ++v26;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

Swift::Int sub_10061B494(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = *a5;
  v12 = a5[1];
  v13 = *(*a5 + 16);
  if (v12 == v13)
  {
LABEL_2:

    return sub_10060D588(v8, a2, v10, a3, a6, a7);
  }

  else
  {
    v15 = a3 + 56;
    while ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v11 + v12 + 32);
      a5[1] = v12 + 1;
      v17 = *(a3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v18 = -1 << *(a3 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v15 + 8 * (v19 >> 6))) != 0)
      {
        v22 = *(a3 + 48);
        if (*(v22 + v19) == v16)
        {
LABEL_13:
          v24 = v8[v20];
          v8[v20] = v24 & ~v21;
          if ((v24 & v21) != 0)
          {
            if (__OFSUB__(v10--, 1))
            {
              goto LABEL_19;
            }

            if (!v10)
            {
              return &_swiftEmptySetSingleton;
            }
          }
        }

        else
        {
          v23 = ~v18;
          while (1)
          {
            v19 = (v19 + 1) & v23;
            v20 = v19 >> 6;
            v21 = 1 << v19;
            if (((1 << v19) & *(v15 + 8 * (v19 >> 6))) == 0)
            {
              break;
            }

            if (*(v22 + v19) == v16)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v11 = *a5;
      v12 = a5[1];
      v13 = *(*a5 + 16);
      if (v12 == v13)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061B638(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v27 = a3;
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v27 + 48) + 24 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    LOBYTE(v15) = *(v15 + 16);
    v25[0] = v16;
    v25[1] = v17;
    v26 = v15;

    v18 = a4(v25);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        v20 = v27;

        return sub_10060B4EC(v22, a2, v23, v20);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10061B7B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = type metadata accessor for UUID();
  v6 = *(*(v39 - 8) + 64);
  result = __chkstk_darwin(v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_10060AF64(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_10061BA18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v6 = type metadata accessor for RawSearchResult();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v11 = 0;
  v32 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    sub_10062CD24(*(v32 + 48) + *(v30 + 72) * v22, v10, type metadata accessor for RawSearchResult);
    v23 = v31(v10);
    result = sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v28 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v25 = v32;

        return sub_10060CDE4(v28, v27, v29, v25);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_10061BC30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_10060D058(a1, a2, v20, a3, &unk_1016C7F50, &unk_1013B3590);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10061BDB0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10061BF10(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10060AE5C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_10061BF10(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a1;
  v48 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v4 = *(*(v48 - 8) + 64);
  v5 = __chkstk_darwin(v48);
  v47 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v35 - v7;
  v45 = type metadata accessor for UUID();
  v8 = *(*(v45 - 8) + 64);
  result = __chkstk_darwin(v45);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v10;
  v12 = 0;
  v49 = a3;
  v13 = *(a3 + 64);
  v39 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v37 = 0;
  v38 = (v14 + 63) >> 6;
  v41 = v10 + 1;
  v42 = v10 + 2;
  v17 = v10;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v50 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v49;
    v23 = v17[2];
    v24 = v43;
    v25 = v45;
    v23(v43, v49[6] + v17[9] * v21, v45);
    v26 = v22[7];
    v40 = v21;
    v27 = *(v26 + 8 * v21);
    v28 = v46;
    v23(v46, v24, v25);
    v29 = v48;
    *&v28[*(v48 + 48)] = v27;
    v30 = v28;
    v31 = v47;
    sub_1000D2AD8(v30, v47, &qword_1016A5890, &qword_1013B3290);
    v32 = *(*(v31 + *(v29 + 48)) + 16);
    swift_bridgeObjectRetain_n();

    v33 = v17[1];
    v33(v31, v25);

    result = (v33)(v24, v25);
    v16 = v50;
    if (v32)
    {
      *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
        return sub_10061C944(v36, v35, v37, v49);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v38)
    {
      return sub_10061C944(v36, v35, v37, v49);
    }

    v20 = *(v39 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v50 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10061C25C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v53 = type metadata accessor for UUID();
  v51 = *(v53 - 8);
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v53);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = &v42 - v16;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1000BC4D4(a5, a6);
  result = static _DictionaryStorage.allocate(capacity:)();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v44 = v51 + 16;
  v45 = result;
  v52 = v51 + 32;
  v21 = result + 64;
  v46 = a1;
  v43 = a4;
  v22 = v53;
  while (v19)
  {
    v23 = v15;
    v24 = __clz(__rbit64(v19));
    v48 = (v19 - 1) & v19;
LABEL_16:
    v27 = v24 | (v20 << 6);
    v28 = a4[6];
    v29 = v51;
    v50 = *(v51 + 72);
    v30 = v47;
    (*(v51 + 16))(v47, v28 + v50 * v27, v22);
    v49 = *(a4[7] + v27);
    v31 = *(v29 + 32);
    v15 = v23;
    v31(v23, v30, v22);
    v18 = v45;
    v32 = *(v45 + 40);
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(v18 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      a1 = v46;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v21 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    a1 = v46;
LABEL_26:
    *(v21 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    result = (v31)(*(v18 + 48) + v36 * v50, v15, v53);
    *(*(v18 + 56) + v36) = v49;
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43;
    v19 = v48;
    if (!a3)
    {
      return v18;
    }
  }

  v25 = v20;
  while (1)
  {
    v20 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v26 = a1[v20];
    ++v25;
    if (v26)
    {
      v23 = v15;
      v24 = __clz(__rbit64(v26));
      v48 = (v26 - 1) & v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10061C5F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  sub_1000BC4D4(&qword_1016A24B0, &qword_1013C5460);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_10062CD24(v23 + v45 * v22, v42, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_10062CC64(v27, v18, type metadata accessor for OwnedBeaconGroup.PairingState);
    v28 = *(v14 + 40);
    Hasher.init(_seed:)();
    sub_100017D5C(v26, v25);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_10062CC64(v18, *(v14 + 56) + v32 * v45, type metadata accessor for OwnedBeaconGroup.PairingState);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10061C944(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = type metadata accessor for UUID();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1000BC4D4(&unk_1016C2C60, &qword_1013B3340);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    v44 = v24;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10061CCE4(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_10061CDE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t (*a8)(void))
{
  v11 = a5;
  result = sub_10061CCE4(a1, a2, a3 & 1, a4, a5, a6 & 1, a7);
  if (a6 & 1) != 0 || (a3)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v11 != a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= a1)
  {
    result = a1;
  }

  else
  {
    result = a4;
  }

  if (a4 >= a1)
  {
    v17 = a2;
  }

  else
  {
    v17 = v11;
  }

  if (a4 >= a1)
  {
    v18 = a4;
  }

  else
  {
    v18 = a1;
  }

  if (a4 >= a1)
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  if (a4 < a1)
  {
    LODWORD(v11) = a2;
  }

  v22 = result;
  v23 = v17;
  v24 = 0;
  if (a1 != a4)
  {
    v21 = 0;
    while (1)
    {
      v20 = v21 + v19;
      if (__OFADD__(v21, v19))
      {
        break;
      }

      result = sub_10061CEFC(&v22, a7, a8);
      if (v24)
      {
        goto LABEL_29;
      }

      if (v23 != v11)
      {
        goto LABEL_27;
      }

      v21 += v19;
      if (v22 == v18)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000BB408(result, v17, 0);
  return 0;
}

uint64_t sub_10061CEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for RawSearchResult();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    goto LABEL_30;
  }

  v11 = *(a1 + 8);
  v12 = *(a2 + 36);
  if (v12 != v11)
  {
    goto LABEL_28;
  }

  v13 = *a1;
  if (*a1 != 1 << *(a2 + 32))
  {
    v14 = a2 + 56;
    v30 = a1;
    v31 = a2 + 64;
    v15 = v32;
    while ((v13 & 0x8000000000000000) == 0)
    {
      v16 = 1 << *(a2 + 32);
      if (v13 >= v16)
      {
        break;
      }

      v17 = v13 >> 6;
      v18 = *(v14 + 8 * (v13 >> 6));
      if (((v18 >> v13) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v12 != *(a2 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v13 & 0x3F));
      if (v19)
      {
        result = sub_1000BB408(v13, v11, 0);
        v13 = __clz(__rbit64(v19)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = a3;
        v21 = v17 << 6;
        v22 = v17 + 1;
        v23 = (v31 + 8 * v17);
        while (v22 < (v16 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1000BB408(v13, v11, 0);
            v13 = __clz(__rbit64(v24)) + v21;
            goto LABEL_16;
          }
        }

        result = sub_1000BB408(v13, v11, 0);
        v13 = v16;
LABEL_16:
        a3 = v20;
        v15 = v32;
      }

      v11 = *(a2 + 36);
      v26 = 1 << *(a2 + 32);
      if (v13 != v26)
      {
        if ((v13 & 0x8000000000000000) != 0 || v13 >= v26)
        {
          goto LABEL_26;
        }

        if (((*(v14 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_27;
        }

        sub_10062CD24(*(a2 + 48) + *(v15 + 72) * v13, v10, type metadata accessor for RawSearchResult);
        v27 = a3(v10);
        result = sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
        v12 = v11;
        if ((v27 & 1) == 0)
        {
          continue;
        }
      }

      v28 = v30;
      *v30 = v13;
      v28[1] = v11;
      *(v28 + 16) = 0;
      return result;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10061D19C@<X0>(uint64_t a1@<X8>)
{
  v45 = sub_1000BC4D4(&qword_1016A5AA8, &qword_1013B35D0);
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v43 = &v42 - v5;
  v6 = type metadata accessor for BookmarkMetaData();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A5AB0, &qword_1013B35D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v17 = &v42 - v16;
  v19 = *v1;
  v18 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v21;
  v47 = a1;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    v29 = *(*(v19 + 48) + v28);
    sub_10062CD24(*(v19 + 56) + *(v44 + 72) * v28, v9, type metadata accessor for BookmarkMetaData);
    v30 = v45;
    v31 = *(v45 + 48);
    *v17 = v29;
    v32 = v9;
    v33 = v30;
    sub_10062CC64(v32, &v17[v31], type metadata accessor for BookmarkMetaData);
    (*(v3 + 56))(v17, 0, 1, v33);
    v26 = v23;
LABEL_11:
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v46;
    v1[3] = v26;
    v1[4] = v27;
    v34 = v1[5];
    v35 = v1[6];
    sub_1000D2AD8(v17, v14, &qword_1016A5AB0, &qword_1013B35D8);
    v36 = 1;
    v37 = (*(v3 + 48))(v14, 1, v33);
    v38 = v47;
    if (v37 != 1)
    {
      v39 = v14;
      v40 = v43;
      sub_1000D2AD8(v39, v43, &qword_1016A5AA8, &qword_1013B35D0);
      v34(v40);
      sub_10000B3A8(v40, &qword_1016A5AA8, &qword_1013B35D0);
      v36 = 0;
    }

    v41 = sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0);
    return (*(*(v41 - 8) + 56))(v38, v36, 1, v41);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v33 = v45;
        (*(v3 + 56))(&v42 - v16, 1, 1, v45);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v18 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061D55C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v6 = &v42 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v49 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v43 = v6;
  v48 = v22;
  if (v23)
  {
    v45 = a1;
    v24 = v21;
LABEL_11:
    v44 = (v23 - 1) & v23;
    v28 = __clz(__rbit64(v23)) | (v24 << 6);
    v29 = v19;
    (*(v8 + 16))(v11, *(v19 + 48) + *(v8 + 72) * v28, v7);
    LOBYTE(v28) = *(*(v29 + 56) + v28);
    v30 = *(v47 + 48);
    v31 = v11;
    v32 = v47;
    (*(v8 + 32))(v18, v31, v7);
    v18[v30] = v28;
    v33 = v46;
    (*(v46 + 56))(v18, 0, 1, v32);
    v34 = v44;
    a1 = v45;
    v27 = v24;
LABEL_12:
    *v1 = v29;
    v1[1] = v20;
    v35 = v49;
    v1[2] = v48;
    v1[3] = v27;
    v1[4] = v34;
    v36 = v1[5];
    v37 = v1[6];
    sub_1000D2AD8(v18, v35, &unk_1016BC360, &qword_10139CBE0);
    v38 = 1;
    if ((*(v33 + 48))(v35, 1, v32) != 1)
    {
      v39 = v35;
      v40 = v43;
      sub_1000D2AD8(v39, v43, &qword_1016BBEE0, &unk_10139CBF0);
      v36(v40);
      sub_10000B3A8(v40, &qword_1016BBEE0, &unk_10139CBF0);
      v38 = 0;
    }

    v41 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
    return (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v33 = v46;
        v32 = v47;
        v29 = v19;
        (*(v46 + 56))(v18, 1, 1, v47);
        v34 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061D938@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016BBFA0, &unk_10140F6D0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - v5;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A5A20, &qword_1013B3550);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_1000D2AD8(v17, v36, &qword_1016A5A20, &qword_1013B3550);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_1000D2AD8(v40, v43, &qword_1016BBFA0, &unk_10140F6D0);
      v37(v41);
      sub_10000B3A8(v41, &qword_1016BBFA0, &unk_10140F6D0);
      v39 = 0;
    }

    v42 = sub_1000BC4D4(&qword_1016A5A28, &qword_1013B3558);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061DD1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - v5;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A5840, &qword_1013B31C8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_1000D2AD8(v17, v36, &qword_1016A5840, &qword_1013B31C8);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_1000D2AD8(v40, v43, &qword_1016A2490, &unk_1013B3200);
      v37(v41);
      sub_10000B3A8(v41, &qword_1016A2490, &unk_1013B3200);
      v39 = 0;
    }

    v42 = sub_1000BC4D4(&qword_1016A5998, &unk_1013B34A0);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061E100@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - v5;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A5918, &qword_1013B33B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_1000D2AD8(v17, v36, &qword_1016A5918, &qword_1013B33B0);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_1000D2AD8(v40, v43, &qword_1016A5890, &qword_1013B3290);
      v37(v41);
      sub_10000B3A8(v41, &qword_1016A5890, &qword_1013B3290);
      v39 = 0;
    }

    v42 = sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061E4E4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100013894(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1001E6224(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_10000B3A8(v22, &qword_1016A5B80, &qword_1013B3708);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061E644@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Row();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = *v1;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v17 = v2[2];
  v22 = v2[1];
  sub_1000D2AD8(v15, v13, &qword_101699D68, &unk_1013B6450);
  v18 = 1;
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v13, v4);
    v22(v8);
    (*(v5 + 8))(v8, v4);
    v18 = 0;
  }

  v19 = type metadata accessor for StandaloneBeacon();
  return (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
}

uint64_t sub_10061E864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint();
  v32[4] = sub_100009774(&qword_1016A59D0, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10061EC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AccessoryIdentityPairingLockAckEndPoint();
  v32[4] = sub_100009774(&qword_1016A59C8, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10061F094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for OwnedDeviceFetchEndpoint();
  v32[4] = sub_100009774(&qword_1016A5868, type metadata accessor for OwnedDeviceFetchEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for OwnedDeviceFetchEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10061F4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for OwnedDeviceSubmitEndpoint();
  v32[4] = sub_100009774(&qword_1016A5B58, type metadata accessor for OwnedDeviceSubmitEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for OwnedDeviceSubmitEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10061F8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AirPodsLEPairingLockCheckEndPoint();
  v32[4] = sub_100009774(&qword_1016A5AD0, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10061FCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for AirPodsLEPairingLockAckEndPoint();
  v32[4] = sub_100009774(&qword_1016A5AD8, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_1006200F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for NFCTapEndPoint();
  v32[4] = sub_100009774(&qword_1016A5A60, type metadata accessor for NFCTapEndPoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for NFCTapEndPoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}

uint64_t sub_10062050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v32[3] = type metadata accessor for NotifyMeEndpoint();
  v32[4] = sub_100009774(&qword_1016A5B78, type metadata accessor for NotifyMeEndpoint);
  v17 = sub_1000280DC(v32);
  sub_10062CC64(a1, v17, type metadata accessor for NotifyMeEndpoint);
  v18 = qword_1016A2648;
  v19 = type metadata accessor for FMNAuthenticationProvider();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + v18) = FMNAuthenticationProvider.init()();
  v22 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v22) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v23 = qword_1016A2660;
  *(a3 + v23) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v24(v16, v9);
  if (v31[2] == v31[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v26 = *(a3 + v18);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v32, a3 + qword_1016A2650);
  v27 = *(a3 + v18);
  v28 = type metadata accessor for FMNMockingPreferences();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  v29 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v32);
  return v29;
}