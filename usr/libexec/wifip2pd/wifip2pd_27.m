uint64_t Channel.init<A>(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) + 16);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v28 - v12;
  (*(v8 + 16))(&v28 - v12, a1, a2);
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v14 = *(*(a3 + 32) + 8), v15 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (*(v8 + 8))(v11, a2), (v15))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 31)
    {
      goto LABEL_13;
    }

    v28 = a1;
    v29 = -1;
    v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v17)
    {
      if (v18 <= 32)
      {
        goto LABEL_11;
      }

      sub_100218A1C();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v19 = *(*(a3 + 32) + 8);
      v20 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v8 + 8))(v11, a2);
      a1 = v28;
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a1 = v28;
      if (v18 < 33)
      {
LABEL_12:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_13;
      }

      sub_100218A1C();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v21 = *(*(a3 + 32) + 8);
      v22 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v8 + 8))(v11, a2);
      if ((v22 & 1) == 0)
      {
LABEL_13:
        v25 = dispatch thunk of BinaryInteger._lowWord.getter();
        v26 = *(v8 + 8);
        v26(v13, a2);
        v27 = sub_10003B238(v25);
        v26(a1, a2);
        return v27 & 0xFFFFFFFFFFFFLL;
      }
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v23 = *(*(a3 + 32) + 8);
    v24 = dispatch thunk of static Comparable.> infix(_:_:)();
    (*(v8 + 8))(v11, a2);
    a1 = v28;
    if (v24)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

int *Channel.nanPrimary.unsafeMutableAddressor()
{
  if (qword_10058AAA8 != -1)
  {
    swift_once();
  }

  return &static Channel.nanPrimary;
}

unint64_t Channel.init(_:band:bandwidth:)(uint64_t a1, char a2, char a3)
{
  v4 = a1;
  LOBYTE(v5) = a2;
  HIBYTE(v5) = a3;
  sub_1000276D8(a1);
  return v4 | (v5 << 32);
}

int *Channel.awdlSocial2GHz.unsafeMutableAddressor()
{
  if (qword_10058AA90 != -1)
  {
    swift_once();
  }

  return &static Channel.awdlSocial2GHz;
}

unint64_t Channel.init<A, B>(channel:operatingClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a2;
  v100 = *(a6 + 8);
  v89 = *(*(v100 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v87[1] = v87 - v11;
  v101 = *(a4 - 8);
  v12 = *(v101 + 64);
  __chkstk_darwin();
  v98 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 + 8);
  v15 = *(*(v14 + 24) + 16);
  v16 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v17 = *(*(a3 - 8) + 64);
  __chkstk_darwin();
  v19 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = v87 - v20;
  v23 = *(v22 + 16);
  v92 = a1;
  v24 = a1;
  v25 = v22;
  v23(v87 - v20, v24, a3);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v26 = *(*(v14 + 32) + 8);
    v27 = dispatch thunk of static Comparable.>= infix(_:_:)();
    result = (*(v25 + 8))(v19, a3);
    if ((v27 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 31)
  {
    goto LABEL_13;
  }

  v90 = v25;
  v109 = -1;
  v29 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v30 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v29)
  {
    if (v30 <= 32)
    {
      goto LABEL_11;
    }

    sub_100218A1C();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v31 = *(*(v14 + 32) + 8);
    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    v25 = v90;
LABEL_9:
    (*(v25 + 8))(v19, a3);
    if ((v32 & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v34 = *(*(v14 + 32) + 8);
    v35 = dispatch thunk of static Comparable.> infix(_:_:)();
    v25 = v90;
    (*(v90 + 8))(v19, a3);
    if ((v35 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v25 = v90;
  if (v30 >= 33)
  {
    sub_100218A1C();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v33 = *(*(v14 + 32) + 8);
    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    goto LABEL_9;
  }

LABEL_12:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_13:
  v36 = dispatch thunk of BinaryInteger._lowWord.getter();
  v39 = *(v25 + 8);
  v38 = v25 + 8;
  v37 = v39;
  v39(v21, a3);
  if (qword_10058AAC0 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v40 = off_100591878;
    v94 = *(off_100591878 + 2);
    if (!v94)
    {
      break;
    }

    v87[0] = v37;
    v41 = 0;
    v91 = (v101 + 16);
    v95 = (v101 + 8);
    v96 = off_100591878 + 32;
    v93 = off_100591878;
    while (v41 < v40[2])
    {
      v43 = &v96[16 * v41];
      v44 = *v43;
      v97 = v43[1];
      v99 = v43[2];
      v101 = *(v43 + 1);

      v45 = v100;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v46 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v47 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v46)
        {
          if (v47 > 8)
          {
            v103 = v44;
            sub_100218A70();
            v48 = v38;
            v49 = v98;
            v50 = v100;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v51 = *(*(v50 + 16) + 8);
            v37 = dispatch thunk of static Equatable.== infix(_:_:)();
            v42 = *v95;
            v52 = v49;
            v38 = v48;
            (*v95)(v52, a4);
            v53 = v101;
            if ((v37 & 1) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_39;
          }

          v90 = v38;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v63 = v98;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v64 = *(*(v100 + 32) + 8);
          v65 = v102;
          v37 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v42 = *v95;
          (*v95)(v63, a4);
          if ((v37 & 1) == 0)
          {
            v38 = v90;
            v40 = v93;
            goto LABEL_19;
          }

          (*v91)(v63, v65, a4);
          v37 = dispatch thunk of BinaryInteger._lowWord.getter();
          v42(v63, a4);
          v58 = v44 == v37;
          v38 = v90;
          goto LABEL_31;
        }

        v54 = a3;
        v59 = v38;
        if (v47 >= 8)
        {
          v104 = v44;
          sub_100218A70();
          v66 = v98;
          v67 = v100;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v68 = *(*(v67 + 16) + 8);
          v37 = dispatch thunk of static Equatable.== infix(_:_:)();
          v42 = *v95;
          (*v95)(v66, a4);
          v38 = v59;
LABEL_38:
          a3 = v54;
          v40 = v93;
          v53 = v101;
          if ((v37 & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_39;
        }

        v60 = v98;
        (*v91)(v98, v102, a4);
        v37 = dispatch thunk of BinaryInteger._lowWord.getter();
        v42 = *v95;
        (*v95)(v60, a4);
        v58 = v44 == v37;
        v38 = v59;
      }

      else
      {
        v54 = a3;
        v55 = v38;
        v56 = v102;
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 8)
        {
          v108 = v44;
          sub_100218A70();
          v61 = v98;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v62 = *(*(v45 + 16) + 8);
          v37 = dispatch thunk of static Equatable.== infix(_:_:)();
          v42 = *v95;
          (*v95)(v61, a4);
          v38 = v55;
          goto LABEL_38;
        }

        v37 = v98;
        (*v91)(v98, v56, a4);
        v57 = dispatch thunk of BinaryInteger._lowWord.getter();
        v42 = *v95;
        (*v95)(v37, a4);
        v58 = v44 == v57;
        v38 = v55;
      }

      a3 = v54;
LABEL_31:
      v40 = v93;
      v53 = v101;
      if (!v58)
      {
        goto LABEL_19;
      }

LABEL_39:
      v69 = v99;
      if ((v99 - 4) > 2)
      {
        v84 = *(v53 + 16);
        v85 = (v53 + 32);
        do
        {
          if (!v84)
          {
            goto LABEL_19;
          }

          v86 = *v85++;
          --v84;
        }

        while (v86 != v36);
LABEL_66:
        v105 = v36;
        v106 = v97;
        v107 = v69;
        sub_1000276D8(v53);

        v42(v102, a4);
        (v87[0])(v92, a3);
        return v105 | (v106 << 32) | (v107 << 40);
      }

      if (qword_10058AAC8 != -1)
      {
        v37 = v53;
        swift_once();
        v53 = v37;
      }

      v70 = *(off_100591880 + 2);
      if (v70)
      {
        for (i = 0; i != v70; ++i)
        {
          v73 = off_100591880 + 16 * i + 32;
          if ((0x801004u >> (8 * *v73)) == (0x801004u >> (8 * v97)))
          {
            v74 = *(v73 + 1);
            v75 = v73[1];
            if (v75 == 4)
            {
              if (v69 == 4)
              {
                goto LABEL_55;
              }
            }

            else if (v75 == 5)
            {
              if (v69 == 5)
              {
                goto LABEL_55;
              }
            }

            else if (v75 == 6 && v69 == 6)
            {
LABEL_55:
              v76 = *(v74 + 16);
              if (v76)
              {
                v77 = 0;
                v78 = v74 + 32;
                do
                {
                  v79 = v78 + 16 * v77++;
                  v80 = *(v79 + 8);
                  v81 = *(v80 + 16);
                  v82 = (v80 + 32);
                  while (v81)
                  {
                    v83 = *v82++;
                    --v81;
                    if (v83 == v36)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                while (v77 != v76);
              }
            }
          }
        }
      }

LABEL_19:
      ++v41;

      if (v41 == v94)
      {
        v37 = v87[0];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_69:
    swift_once();
  }

  v42 = *(v101 + 8);
LABEL_17:
  v42(v102, a4);
  (v37)(v92, a3);
  return 0x300000000;
}

uint64_t Channel.operatingClass.getter(unint64_t a1)
{
  v2 = BYTE5(a1);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  if (qword_10058AAC8 != -1)
  {
    swift_once();
  }

  v8 = *(off_100591880 + 2);
  v9 = a1 >> 40;
  v10 = a1;
  if (!v8)
  {
    goto LABEL_32;
  }

  v11 = off_100591880 + 32;
  while (1)
  {
    if ((0x801004u >> (8 * BYTE4(a1))) != (0x801004u >> (8 * *v11)))
    {
      goto LABEL_6;
    }

    v12 = v11[1];
    if (v12 <= 3)
    {
      break;
    }

    switch(v12)
    {
      case 4u:
        if (v2 == 4)
        {
          goto LABEL_24;
        }

        break;
      case 5u:
        if (v2 == 5)
        {
          goto LABEL_24;
        }

        break;
      case 6u:
        if (v2 == 6)
        {
          goto LABEL_24;
        }

        break;
      default:
        goto LABEL_22;
    }

LABEL_6:
    v11 += 16;
    if (!--v8)
    {
      goto LABEL_31;
    }
  }

  if (v12 == 2)
  {
    if (v2 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  if (v12 == 3)
  {
    if (v2 == 3)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

LABEL_22:
  if (v2 - 2) < 5 || ((v9 ^ v12))
  {
    goto LABEL_6;
  }

LABEL_24:
  v13 = *(v11 + 1);
  v14 = *(v13 + 16);
  v10 = a1;
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = 0;
  v16 = v13 + 32;
  do
  {
    v17 = (v16 + 16 * v15++);
    v18 = *(v17 + 1);
    v19 = *(v18 + 16);
    v20 = (v18 + 32);
    while (v19)
    {
      v21 = *v20++;
      --v19;
      if (v21 == a1)
      {
        v10 = *v17;
        goto LABEL_32;
      }
    }
  }

  while (v15 != v14);
LABEL_31:
  v10 = a1;
LABEL_32:
  if (qword_10058AAC0 != -1)
  {
    swift_once();
  }

  v22 = *(off_100591878 + 2);
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      v24 = off_100591878 + 16 * i + 32;
      if ((0x801004u >> (8 * BYTE4(a1))) != (0x801004u >> (8 * v24[1])))
      {
        continue;
      }

      v25 = v24[2];
      v26 = *(v24 + 1);
      if (v25 <= 3)
      {
        if (v25 == 2)
        {
          if (v2 == 2)
          {
            goto LABEL_56;
          }

          continue;
        }

        if (v25 == 3)
        {
          if (v2 == 3)
          {
            goto LABEL_56;
          }

          continue;
        }
      }

      else
      {
        switch(v25)
        {
          case 4u:
            if (v2 == 4)
            {
              goto LABEL_56;
            }

            continue;
          case 5u:
            if (v2 == 5)
            {
              goto LABEL_56;
            }

            continue;
          case 6u:
            if (v2 == 6)
            {
              goto LABEL_56;
            }

            continue;
        }
      }

      if ((v2 - 2) >= 5 && ((v9 ^ v25) & 1) == 0)
      {
LABEL_56:
        v27 = *(v26 + 16);
        v28 = (v26 + 32);
        while (v27)
        {
          v29 = *v28++;
          --v27;
          if (v29 == v10)
          {
            v30 = *v24;
            (*(v4 + 8))(v7, v3);
            return v30;
          }
        }
      }
    }
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v42 = a1 >> 40;
    v43 = v3;
    v33 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v33 = 67109634;
    *(v33 + 4) = a1;
    *(v33 + 8) = 2080;
    if (BYTE4(a1))
    {
      if (BYTE4(a1) == 1)
      {
        v34 = 0x7A48472035;
      }

      else
      {
        v34 = 0x7A48472036;
      }

      v35 = 0xE500000000000000;
    }

    else
    {
      v35 = 0xE700000000000000;
      v34 = 0x7A484720342E32;
    }

    v36 = sub_100002320(v34, v35, &v44);

    *(v33 + 10) = v36;
    *(v33 + 18) = 2080;
    if (v2 <= 3)
    {
      v3 = v43;
      if (v2 == 2)
      {
        v38 = 0xE600000000000000;
        v37 = 0x7A484D203031;
        goto LABEL_83;
      }

      if (v2 != 3)
      {
        goto LABEL_79;
      }

      v37 = 0x7A484D203032;
    }

    else
    {
      v3 = v43;
      if (v2 != 4)
      {
        v37 = 0x7A484D20303233;
        if (v2 == 5)
        {
          v37 = 0x7A484D20303631;
        }

        else if (v2 != 6)
        {
LABEL_79:
          if (v42)
          {
            v37 = 0x7A484D202B3034;
          }

          else
          {
            v37 = 0x7A484D202D3034;
          }
        }

        v38 = 0xE700000000000000;
        goto LABEL_83;
      }

      v37 = 0x7A484D203038;
    }

    v38 = 0xE600000000000000;
LABEL_83:
    v39 = sub_100002320(v37, v38, &v44);

    *(v33 + 20) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Warning: Using default operating class for channel: %u, band: %s, bandwidth: %s", v33, 0x1Cu);
    swift_arrayDestroy();
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

int *Channel.awdlSocial5GHz.unsafeMutableAddressor()
{
  if (qword_10058AA98 != -1)
  {
    swift_once();
  }

  return &static Channel.awdlSocial5GHz;
}

uint64_t Channel.Band.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7A484720342E32;
  }

  if (a1 == 1)
  {
    return 0x7A48472035;
  }

  return 0x7A48472036;
}

unsigned __int8 *sub_100216990@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 16)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 128)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

Swift::Int sub_1002169DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x801004u >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100216A6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x801004u >> (8 * v1));
  return Hasher._finalize()();
}

uint64_t sub_100216ACC()
{
  v1 = *v0;
  v2 = 0x7A48472035;
  if (v1 != 1)
  {
    v2 = 0x7A48472036;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x7A484720342E32;
  }
}

void *sub_100216CA8()
{
  result = sub_1000616E8(&off_1005562C0);
  off_100591858 = result;
  return result;
}

uint64_t static Channel.isEnabled(channel:)(unint64_t a1)
{
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    return 0;
  }

  else
  {
    return _s7CoreP2P7ChannelV7isValid7channel2on4withSbs6UInt32V_AC4BandOAA9BandwidthOtFZ_0(a1, SBYTE4(a1), a1 >> 40);
  }
}

unint64_t Channel.init(_:maximumBandwidthOnBand:)(uint64_t a1, char a2)
{
  v3 = a1;
  LOBYTE(v4) = a2;
  HIBYTE(v4) = a2 + 3;
  sub_1000276D8(a1);
  return v3 | (v4 << 32);
}

void *sub_100216D3C()
{
  result = sub_1000616E8(&off_100551108);
  off_100591860 = result;
  return result;
}

void *sub_100216D64()
{
  result = sub_1000616E8(&off_100551160);
  off_100591868 = result;
  return result;
}

void *sub_100216D8C()
{
  result = sub_1000616E8(&off_1005511F0);
  off_100591870 = result;
  return result;
}

unint64_t static Channel.awdlSocial2GHz.getter()
{
  if (qword_10058AA90 != -1)
  {
    swift_once();
  }

  return static Channel.awdlSocial2GHz | (byte_10059B61C << 32) | (byte_10059B61D << 40);
}

unint64_t static Channel.awdlSocial5GHz.getter()
{
  if (qword_10058AA98 != -1)
  {
    swift_once();
  }

  return static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
}

int *Channel.awdlAlternateSocial5GHz.unsafeMutableAddressor()
{
  if (qword_10058AAA0 != -1)
  {
    swift_once();
  }

  return &static Channel.awdlAlternateSocial5GHz;
}

unint64_t static Channel.awdlAlternateSocial5GHz.getter()
{
  if (qword_10058AAA0 != -1)
  {
    swift_once();
  }

  return static Channel.awdlAlternateSocial5GHz | (byte_10059B62C << 32) | (byte_10059B62D << 40);
}

unint64_t static Channel.nanPrimary.getter()
{
  if (qword_10058AAA8 != -1)
  {
    swift_once();
  }

  return static Channel.nanPrimary | (byte_10059B634 << 32) | (byte_10059B635 << 40);
}

int *Channel.nanSecondary.unsafeMutableAddressor()
{
  if (qword_10058AAB0 != -1)
  {
    swift_once();
  }

  return &static Channel.nanSecondary;
}

unint64_t static Channel.nanSecondary.getter()
{
  if (qword_10058AAB0 != -1)
  {
    swift_once();
  }

  return static Channel.nanSecondary | (byte_10059B63C << 32) | (byte_10059B63D << 40);
}

unint64_t sub_1002170D8(uint64_t a1, unsigned int a2, _DWORD *a3, _BYTE *a4, _BYTE *a5)
{
  result = sub_10003B238(a2);
  if ((result & 0xFF00000000) == 0x300000000)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    *a4 = BYTE4(result);
    *a5 = BYTE5(result);
  }

  return result;
}

int *Channel.nanAlternateSecondary.unsafeMutableAddressor()
{
  if (qword_10058AAB8 != -1)
  {
    swift_once();
  }

  return &static Channel.nanAlternateSecondary;
}

unint64_t static Channel.nanAlternateSecondary.getter()
{
  if (qword_10058AAB8 != -1)
  {
    swift_once();
  }

  return static Channel.nanAlternateSecondary | (byte_10059B644 << 32) | (byte_10059B645 << 40);
}

uint64_t sub_100217344()
{
  v1 = 1684955490;
  if (*v0 != 1)
  {
    v1 = 0x74646977646E6162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_10021739C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100218E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002173C4(uint64_t a1)
{
  v2 = sub_100218AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100217400(uint64_t a1)
{
  v2 = sub_100218AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Channel.encode(to:)(void *a1, uint64_t a2)
{
  v3 = WORD2(a2);
  v5 = sub_10005DC58(&qword_100591898, &qword_10049AAC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100218AC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12[14] = v3;
    v12[13] = 1;
    sub_100218B18();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[12] = HIBYTE(v3);
    v12[11] = 2;
    sub_100218B6C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10021762C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10021881C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
  }

  return result;
}

uint64_t Optional<A>.description.getter(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    return 48;
  }

  else
  {
    return Channel.description.getter(a1 & 0xFFFFFFFFFFFFLL, a2);
  }
}

uint64_t Optional<A>.is2_4GHz.getter(uint64_t a1)
{
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    return 0;
  }

  else
  {
    return 1u >> (BYTE4(a1) & 7);
  }
}

unint64_t sub_100217844@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003B238(*a1);
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

uint64_t sub_100217878(uint64_t a1, uint64_t a2)
{
  v3 = *v2 | (*(v2 + 2) << 32);
  if ((v3 & 0xFF00000000) == 0x300000000)
  {
    return 48;
  }

  else
  {
    return Channel.description.getter(v3, a2);
  }
}

unint64_t Channel.init(apiChannel:)(void *a1)
{
  v2 = [a1 channelNumber];
  v3 = [a1 bandwidth];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = 4;
        break;
      case 4:
        v4 = 5;
        break;
      case 5:
        v4 = 6;
        break;
      default:
        goto LABEL_28;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = 3;
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_28;
      }

      v4 = [a1 extensionChannelAbove];
    }
  }

  else
  {
    v4 = 2;
  }

  if (![a1 is2_4GHz] || (objc_msgSend(a1, "is5GHz") & 1) != 0 || objc_msgSend(a1, "is6GHz"))
  {
    if (([a1 is2_4GHz] & 1) != 0 || !objc_msgSend(a1, "is5GHz") || objc_msgSend(a1, "is6GHz"))
    {
      if (([a1 is2_4GHz] & 1) != 0 || objc_msgSend(a1, "is5GHz") || (objc_msgSend(a1, "is6GHz") & 1) == 0)
      {
        goto LABEL_28;
      }

      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = _s7CoreP2P7ChannelV7isValid7channel2on4withSbs6UInt32V_AC4BandOAA9BandwidthOtFZ_0(v2, v5, v4);
  if (v6)
  {
    sub_1000276D8(v6);

    return v2 | (v5 << 32) | (v4 << 40);
  }

LABEL_28:

  return 0x300000000;
}

void *sub_100217A88()
{
  result = sub_100217AA8();
  off_100591878 = result;
  return result;
}

void *sub_100217AA8()
{
  v0 = sub_100115E34(0, 1, 1, _swiftEmptyArrayStorage);
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_100115E34((v1 > 1), v2 + 1, 1, v0);
    v1 = v0[3];
    v3 = v1 >> 1;
  }

  v0[2] = v4;
  v5 = &v0[2 * v2];
  *(v5 + 16) = 81;
  *(v5 + 34) = 3;
  v5[5] = &off_1005528D0;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    v0 = sub_100115E34((v1 > 1), v6, 1, v0);
  }

  v0[2] = v6;
  v7 = &v0[2 * v4];
  *(v7 + 16) = 82;
  *(v7 + 34) = 3;
  v7[5] = &off_100552928;
  v9 = v0[2];
  v8 = v0[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v0 = sub_100115E34((v8 > 1), v9 + 1, 1, v0);
    v8 = v0[3];
    v10 = v8 >> 1;
  }

  v0[2] = v11;
  v12 = &v0[2 * v9];
  *(v12 + 16) = 83;
  *(v12 + 34) = 0;
  v12[5] = &off_100552950;
  v13 = v9 + 2;
  if (v10 <= v11)
  {
    v0 = sub_100115E34((v8 > 1), v13, 1, v0);
  }

  v0[2] = v13;
  v14 = &v0[2 * v11];
  *(v14 + 16) = 84;
  *(v14 + 34) = 1;
  v14[5] = &off_100552998;
  v16 = v0[2];
  v15 = v0[3];
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    v0 = sub_100115E34((v15 > 1), v16 + 1, 1, v0);
    v15 = v0[3];
    v17 = v15 >> 1;
  }

  v0[2] = v18;
  v19 = &v0[2 * v16];
  *(v19 + 16) = 371;
  *(v19 + 34) = 3;
  v19[5] = &off_1005529E0;
  v20 = v16 + 2;
  if (v17 <= v18)
  {
    v0 = sub_100115E34((v15 > 1), v20, 1, v0);
  }

  v0[2] = v20;
  v21 = &v0[2 * v18];
  *(v21 + 16) = 372;
  *(v21 + 34) = 0;
  v21[5] = &off_100552A10;
  v23 = v0[2];
  v22 = v0[3];
  v24 = v22 >> 1;
  v25 = v23 + 1;
  if (v22 >> 1 <= v23)
  {
    v0 = sub_100115E34((v22 > 1), v23 + 1, 1, v0);
    v22 = v0[3];
    v24 = v22 >> 1;
  }

  v0[2] = v25;
  v26 = &v0[2 * v23];
  *(v26 + 16) = 373;
  *(v26 + 34) = 1;
  v26[5] = &off_100552A38;
  v27 = v23 + 2;
  if (v24 <= v25)
  {
    v0 = sub_100115E34((v22 > 1), v27, 1, v0);
  }

  v0[2] = v27;
  v28 = &v0[2 * v25];
  *(v28 + 16) = 374;
  *(v28 + 34) = 3;
  v28[5] = &off_100552A60;
  v30 = v0[2];
  v29 = v0[3];
  v31 = v29 >> 1;
  v32 = v30 + 1;
  if (v29 >> 1 <= v30)
  {
    v0 = sub_100115E34((v29 > 1), v30 + 1, 1, v0);
    v29 = v0[3];
    v31 = v29 >> 1;
  }

  v0[2] = v32;
  v33 = &v0[2 * v30];
  *(v33 + 16) = 375;
  *(v33 + 34) = 0;
  v33[5] = &off_100552A90;
  v34 = v30 + 2;
  if (v31 <= v32)
  {
    v0 = sub_100115E34((v29 > 1), v34, 1, v0);
  }

  v0[2] = v34;
  v35 = &v0[2 * v32];
  *(v35 + 16) = 376;
  *(v35 + 34) = 1;
  v35[5] = &off_100552AB8;
  v37 = v0[2];
  v36 = v0[3];
  v38 = v36 >> 1;
  v39 = v37 + 1;
  if (v36 >> 1 <= v37)
  {
    v0 = sub_100115E34((v36 > 1), v37 + 1, 1, v0);
    v36 = v0[3];
    v38 = v36 >> 1;
  }

  v0[2] = v39;
  v40 = &v0[2 * v37];
  *(v40 + 16) = 377;
  *(v40 + 34) = 3;
  v40[5] = &off_100552AE0;
  v41 = v37 + 2;
  if (v38 <= v39)
  {
    v0 = sub_100115E34((v36 > 1), v41, 1, v0);
  }

  v0[2] = v41;
  v42 = &v0[2 * v39];
  *(v42 + 16) = 378;
  *(v42 + 34) = 0;
  v42[5] = &off_100552B30;
  v44 = v0[2];
  v43 = v0[3];
  v45 = v43 >> 1;
  v46 = v44 + 1;
  if (v43 >> 1 <= v44)
  {
    v0 = sub_100115E34((v43 > 1), v44 + 1, 1, v0);
    v43 = v0[3];
    v45 = v43 >> 1;
  }

  v0[2] = v46;
  v47 = &v0[2 * v44];
  *(v47 + 16) = 379;
  *(v47 + 34) = 1;
  v47[5] = &off_100552B68;
  v48 = v44 + 2;
  if (v45 <= v46)
  {
    v0 = sub_100115E34((v43 > 1), v48, 1, v0);
  }

  v0[2] = v48;
  v49 = &v0[2 * v46];
  *(v49 + 16) = 380;
  *(v49 + 34) = 3;
  v49[5] = &off_100552BA0;
  v51 = v0[2];
  v50 = v0[3];
  v52 = v50 >> 1;
  v53 = v51 + 1;
  if (v50 >> 1 <= v51)
  {
    v0 = sub_100115E34((v50 > 1), v51 + 1, 1, v0);
    v50 = v0[3];
    v52 = v50 >> 1;
  }

  v0[2] = v53;
  v54 = &v0[2 * v51];
  *(v54 + 16) = 381;
  *(v54 + 34) = 3;
  v54[5] = &off_100552BD0;
  if (v52 <= v53)
  {
    v0 = sub_100115E34((v50 > 1), v51 + 2, 1, v0);
  }

  v0[2] = v51 + 2;
  v55 = &v0[2 * v53];
  *(v55 + 16) = 382;
  *(v55 + 34) = 0;
  v55[5] = &off_100552C10;
  v57 = v0[2];
  v56 = v0[3];
  v58 = v56 >> 1;
  v59 = v57 + 1;
  if (v56 >> 1 <= v57)
  {
    v0 = sub_100115E34((v56 > 1), v57 + 1, 1, v0);
    v56 = v0[3];
    v58 = v56 >> 1;
  }

  v0[2] = v59;
  v60 = &v0[2 * v57];
  *(v60 + 16) = 383;
  *(v60 + 34) = 1;
  v60[5] = &off_100552C40;
  v61 = v57 + 2;
  if (v58 <= v59)
  {
    v0 = sub_100115E34((v56 > 1), v61, 1, v0);
  }

  v0[2] = v61;
  v62 = &v0[2 * v59];
  *(v62 + 16) = 384;
  *(v62 + 34) = 4;
  v62[5] = &off_100552C70;
  v64 = v0[2];
  v63 = v0[3];
  v65 = v63 >> 1;
  v66 = v64 + 1;
  if (v63 >> 1 <= v64)
  {
    v0 = sub_100115E34((v63 > 1), v64 + 1, 1, v0);
    v63 = v0[3];
    v65 = v63 >> 1;
  }

  v0[2] = v66;
  v67 = &v0[2 * v64];
  *(v67 + 16) = 385;
  *(v67 + 34) = 5;
  v67[5] = &off_100552CB0;
  v68 = v64 + 2;
  if (v65 <= v66)
  {
    v0 = sub_100115E34((v63 > 1), v68, 1, v0);
  }

  v0[2] = v68;
  v69 = &v0[2 * v66];
  *(v69 + 16) = 386;
  *(v69 + 34) = 4;
  v69[5] = &off_100552CE0;
  v71 = v0[2];
  v70 = v0[3];
  v72 = v70 >> 1;
  v73 = v71 + 1;
  if (v70 >> 1 <= v71)
  {
    v0 = sub_100115E34((v70 > 1), v71 + 1, 1, v0);
    v70 = v0[3];
    v72 = v70 >> 1;
  }

  v0[2] = v73;
  v74 = &v0[2 * v71];
  *(v74 + 16) = 643;
  *(v74 + 34) = 3;
  v74[5] = &off_100552D18;
  v75 = v71 + 2;
  if (v72 <= v73)
  {
    v0 = sub_100115E34((v70 > 1), v75, 1, v0);
  }

  v0[2] = v75;
  v76 = &v0[2 * v73];
  *(v76 + 16) = 644;
  *(v76 + 34) = 1;
  v76[5] = &off_100552E28;
  v78 = v0[2];
  v77 = v0[3];
  v79 = v77 >> 1;
  v80 = v78 + 1;
  if (v77 >> 1 <= v78)
  {
    v0 = sub_100115E34((v77 > 1), v78 + 1, 1, v0);
    v77 = v0[3];
    v79 = v77 >> 1;
  }

  v0[2] = v80;
  v81 = &v0[2 * v78];
  *(v81 + 16) = 645;
  *(v81 + 34) = 4;
  v81[5] = &off_100552EC0;
  v82 = v78 + 2;
  if (v79 <= v80)
  {
    v0 = sub_100115E34((v77 > 1), v82, 1, v0);
  }

  v0[2] = v82;
  v83 = &v0[2 * v80];
  *(v83 + 16) = 646;
  *(v83 + 34) = 5;
  v83[5] = &off_100552F18;
  v84 = sub_1001F803C(v0);

  return v84;
}

void *sub_100218320()
{
  result = sub_100218340();
  off_100591880 = result;
  return result;
}

void *sub_100218340()
{
  v0 = sub_100115D00(0, 1, 1, _swiftEmptyArrayStorage);
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_100115D00((v1 > 1), v2 + 1, 1, v0);
    v1 = v0[3];
    v3 = v1 >> 1;
  }

  v0[2] = v4;
  v5 = &v0[2 * v2];
  *(v5 + 16) = 1025;
  v5[5] = &off_100552280;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    v0 = sub_100115D00((v1 > 1), v6, 1, v0);
  }

  v0[2] = v6;
  v7 = &v0[2 * v4];
  *(v7 + 16) = 1281;
  v7[5] = &off_100552310;
  v9 = v0[2];
  v8 = v0[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v0 = sub_100115D00((v8 > 1), v9 + 1, 1, v0);
    v8 = v0[3];
    v10 = v8 >> 1;
  }

  v0[2] = v11;
  v12 = &v0[2 * v9];
  *(v12 + 16) = 2;
  v12[5] = &off_100552360;
  v13 = v9 + 2;
  if (v10 <= v11)
  {
    v0 = sub_100115D00((v8 > 1), v13, 1, v0);
  }

  v0[2] = v13;
  v14 = &v0[2 * v11];
  *(v14 + 16) = 258;
  v14[5] = &off_100552550;
  v16 = v0[2];
  v15 = v0[3];
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    v0 = sub_100115D00((v15 > 1), v16 + 1, 1, v0);
    v15 = v0[3];
    v17 = v15 >> 1;
  }

  v0[2] = v18;
  v19 = &v0[2 * v16];
  *(v19 + 16) = 1026;
  v19[5] = &off_100552740;
  v20 = v16 + 2;
  if (v17 <= v18)
  {
    v0 = sub_100115D00((v15 > 1), v20, 1, v0);
  }

  v0[2] = v20;
  v21 = &v0[2 * v18];
  *(v21 + 16) = 1282;
  v21[5] = &off_100552840;
  return v0;
}

Swift::Int sub_100218544(Swift::UInt32 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

void sub_1002185D0()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_10021862C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_1002186A8(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1000BC518(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t NonNANOperatingChannelInformation.init(channel:)(uint64_t a1)
{
  v1 = a1;
  result = Channel.operatingClass.getter(a1 & 0xFFFFFFFFFFFFLL);
  if ((v1 & 0xFFFFFF00) == 0)
  {
    return result | (v1 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_100218708(unint64_t a1, unint64_t a2)
{
  if (((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) < ((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC) || a1 < a2)
  {
    return 1;
  }

  v6 = BYTE5(a2);
  sub_10005DC58(&qword_10058DFA0, &qword_100488570);
  v7 = v6 - 2;
  if (v6 == 2)
  {
    return 0;
  }

  v8 = BYTE5(a1) - 2;
  if (BYTE5(a1) == 2)
  {
    return 1;
  }

  if (v6 == 3)
  {
    return 0;
  }

  if (BYTE5(a1) == 3)
  {
    return 1;
  }

  if (v7 >= 5 && (a2 & 0x10000000000) == 0)
  {
    return 0;
  }

  if (v8 >= 5 && (a1 & 0x10000000000) == 0)
  {
    return 1;
  }

  if (v7 >= 5 && (a2 & 0x10000000000) != 0)
  {
    return 0;
  }

  if (v8 >= 5 && (a1 & 0x10000000000) != 0)
  {
    return 1;
  }

  if (v6 == 4)
  {
    return 0;
  }

  if (BYTE5(a1) == 4)
  {
    return 1;
  }

  if (v6 == 5)
  {
    return 0;
  }

  if (BYTE5(a1) == 5)
  {
    return 1;
  }

  if (v6 == 6)
  {
    return 0;
  }

  if (BYTE5(a1) == 6)
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10021881C(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_1005918F0, &qword_10049AF58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100218AC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v13[15] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[13] = 1;
  sub_100218F88();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v13[14];
  v13[11] = 2;
  sub_100218FDC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v11 = v13[12];
  sub_100002A00(a1);
  return v9 | (v10 << 32) | (v11 << 40);
}

unint64_t sub_100218A1C()
{
  result = qword_100591888;
  if (!qword_100591888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591888);
  }

  return result;
}

unint64_t sub_100218A70()
{
  result = qword_100591890;
  if (!qword_100591890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591890);
  }

  return result;
}

unint64_t sub_100218AC4()
{
  result = qword_1005918A0;
  if (!qword_1005918A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918A0);
  }

  return result;
}

unint64_t sub_100218B18()
{
  result = qword_1005918A8;
  if (!qword_1005918A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918A8);
  }

  return result;
}

unint64_t sub_100218B6C()
{
  result = qword_1005918B0;
  if (!qword_1005918B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918B0);
  }

  return result;
}

unint64_t sub_100218BC0()
{
  result = qword_1005918B8;
  if (!qword_1005918B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918B8);
  }

  return result;
}

unint64_t sub_100218C18()
{
  result = qword_1005918C0;
  if (!qword_1005918C0)
  {
    sub_10005DD04(&qword_1005918C8, &qword_10049AB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918C0);
  }

  return result;
}

unint64_t sub_100218C7C()
{
  result = qword_10059A5A0;
  if (!qword_10059A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A5A0);
  }

  return result;
}

unint64_t sub_100218D10()
{
  result = qword_1005918D0;
  if (!qword_1005918D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918D0);
  }

  return result;
}

unint64_t sub_100218D68()
{
  result = qword_1005918D8;
  if (!qword_1005918D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918D8);
  }

  return result;
}

unint64_t sub_100218DC0()
{
  result = qword_1005918E0;
  if (!qword_1005918E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918E0);
  }

  return result;
}

uint64_t sub_100218E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684955490 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74646977646E6162 && a2 == 0xE900000000000068)
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

unint64_t sub_100218F34()
{
  result = qword_1005918E8;
  if (!qword_1005918E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918E8);
  }

  return result;
}

unint64_t sub_100218F88()
{
  result = qword_1005918F8;
  if (!qword_1005918F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005918F8);
  }

  return result;
}

unint64_t sub_100218FDC()
{
  result = qword_100591900;
  if (!qword_100591900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591900);
  }

  return result;
}

unint64_t sub_100219044()
{
  result = qword_100591908;
  if (!qword_100591908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591908);
  }

  return result;
}

uint64_t sub_1002190A4(uint64_t a1, unint64_t *a2)
{
  v20 = a2;
  v4 = sub_10005DC58(&qword_100591A40, &qword_10049BC80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (v19 - v7);
  v9 = *(*(sub_10005DC58(&qword_100591A48, &qword_10049BC88) - 8) + 64);
  __chkstk_darwin();
  v11 = v19 - v10;
  v12 = -1 << *(a1 + 32);
  v13 = *(a1 + 64);
  v14 = ~v12;
  v15 = -v12;
  v19[0] = a1;
  v19[1] = a1 + 64;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v19[2] = v14;
  v19[3] = 0;
  v19[4] = v16 & v13;
  v19[5] = 0;

  sub_1002192BC(v11);
  v17 = *(v5 + 48);
  while (v17(v11, 1, v4) != 1)
  {
    sub_10001CEA8(v11, v8, &qword_100591A40, &qword_10049BC80);
    sub_10021A92C(v8, v20);
    sub_100016290(v8, &qword_100591A40, &qword_10049BC80);
    if (v2)
    {
      break;
    }

    sub_1002192BC(v11);
  }

  return sub_1000E290C();
}

uint64_t sub_1002192BC@<X0>(uint64_t a1@<X8>)
{
  v49 = sub_10005DC58(&qword_100591A40, &qword_10049BC80);
  v47 = *(v49 - 8);
  v3 = *(v47 + 64);
  __chkstk_darwin();
  v44 = (&v43 - v4);
  v5 = *(type metadata accessor for NANInternetSharingStatistics.Requester() - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&qword_10058CF68, qword_10049BC90) - 8) + 64);
  __chkstk_darwin();
  v11 = &v43 - v10;
  v48 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin();
  v16 = &v43 - v15;
  v17 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v43 = v16;
  v50 = v20;
  if (!v21)
  {
    v24 = (v20 + 64) >> 6;
    if (v24 <= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = (v20 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v48;
        (*(v12 + 56))(v11, 1, 1, v48);
        v36 = 0;
        goto LABEL_12;
      }

      v21 = *(v18 + 8 * v23);
      ++v19;
      if (v21)
      {
        v22 = v5;
        v46 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v22 = v5;
  v46 = a1;
  v23 = v19;
LABEL_11:
  v45 = (v21 - 1) & v21;
  v27 = __clz(__rbit64(v21)) | (v23 << 6);
  v28 = *(v17 + 48) - v27 + 8 * v27;
  v29 = *(v28 + 4);
  v30 = *(v28 + 6);
  v31 = *v28;
  sub_10021F874(*(v17 + 56) + *(v22 + 72) * v27, v8);
  v32 = v48;
  v33 = *(v48 + 48);
  *v11 = v31;
  *(v11 + 2) = v29;
  v11[6] = v30;
  v34 = v8;
  v35 = v32;
  sub_10022074C(v34, &v11[v33]);
  (*(v12 + 56))(v11, 0, 1, v35);
  v36 = v45;
  a1 = v46;
  v26 = v23;
LABEL_12:
  *v1 = v17;
  v1[1] = v18;
  v1[2] = v50;
  v1[3] = v26;
  v1[4] = v36;
  if ((*(v12 + 48))(v11, 1, v35) == 1)
  {
    sub_100016290(v11, &qword_10058CF68, qword_10049BC90);
    return (*(v47 + 56))(a1, 1, 1, v49);
  }

  v37 = v11;
  v38 = v43;
  sub_10001CEA8(v37, v43, &qword_10058CF70, &qword_100484190);
  v39 = v49;
  v40 = *(v49 + 48);
  v41 = v1[5];
  v42 = v44;
  *v44 = v41;
  result = sub_10001CEA8(v38, v42 + v40, &qword_10058CF70, &qword_100484190);
  if (__OFADD__(v41, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v41 + 1;
  sub_10001CEA8(v42, a1, &qword_100591A40, &qword_10049BC80);
  return (*(v47 + 56))(a1, 0, 1, v39);
}

uint64_t NANCoreAnalyticsMetrics.peerAddress.setter(uint64_t result)
{
  *(v1 + 33) = result;
  *(v1 + 35) = BYTE2(result);
  *(v1 + 36) = BYTE3(result);
  *(v1 + 37) = BYTE4(result);
  *(v1 + 38) = BYTE5(result);
  return result;
}

uint64_t NANCoreAnalyticsMetrics.internetSharingStatistics.getter()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);

  return v1;
}

uint64_t NANCoreAnalyticsMetrics.internetSharingStatistics.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 352);

  *(v3 + 344) = a1;
  *(v3 + 352) = a2;
  *(v3 + 360) = a3;
  return result;
}

void NANCoreAnalyticsMetrics.hash(into:)(__int128 *a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 4) & 1);
  Hasher._combine(_:)(*(v2 + 5) & 1);
  Hasher._combine(_:)(*(v2 + 6) & 1);
  Hasher._combine(_:)(*(v2 + 8));
  Hasher._combine(_:)(*(v2 + 12));
  Hasher._combine(_:)(*(v2 + 16));
  Hasher._combine(_:)(*(v2 + 17));
  Hasher._combine(_:)(*(v2 + 18));
  Hasher._combine(_:)(*(v2 + 19));
  Hasher._combine(_:)(*(v2 + 20));
  Hasher._combine(_:)(*(v2 + 24));
  Hasher._combine(_:)(*(v2 + 28));
  Hasher._combine(_:)(*(v2 + 32));
  v4 = *(v2 + 34);
  v5 = *(v2 + 35);
  v6 = *(v2 + 36);
  v7 = *(v2 + 37);
  v8 = *(v2 + 38);
  Hasher._combine(_:)(*(v2 + 33));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(*(v2 + 40));
  Hasher._combine(_:)(*(v2 + 44));
  Hasher._combine(_:)(*(v2 + 48));
  Hasher._combine(_:)(*(v2 + 56));
  Hasher._combine(_:)(*(v2 + 64));
  Hasher._combine(_:)(*(v2 + 72));
  Hasher._combine(_:)(*(v2 + 80));
  Hasher._combine(_:)(*(v2 + 88));
  Hasher._combine(_:)(*(v2 + 96));
  Hasher._combine(_:)(*(v2 + 104));
  Hasher._combine(_:)(*(v2 + 112));
  Hasher._combine(_:)(*(v2 + 120));
  Hasher._combine(_:)(*(v2 + 128));
  Hasher._combine(_:)(*(v2 + 136));
  Hasher._combine(_:)(*(v2 + 144));
  Hasher._combine(_:)(*(v2 + 152));
  Hasher._combine(_:)(*(v2 + 160));
  Hasher._combine(_:)(*(v2 + 168));
  Hasher._combine(_:)(*(v2 + 176));
  Hasher._combine(_:)(*(v2 + 184));
  Hasher._combine(_:)(*(v2 + 192));
  Hasher._combine(_:)(*(v2 + 200));
  Hasher._combine(_:)(*(v2 + 208));
  Hasher._combine(_:)(*(v2 + 216));
  Hasher._combine(_:)(*(v2 + 224));
  sub_1000DF4A4(a1, *(v2 + 232));
  sub_1000DF4A4(a1, *(v2 + 240));
  sub_1000DF4A4(a1, *(v2 + 248));
  sub_1000DF4A4(a1, *(v2 + 256));
  sub_1000DF4A4(a1, *(v2 + 264));
  sub_1000DF4A4(a1, *(v2 + 272));
  sub_1000DF4A4(a1, *(v2 + 280));
  sub_1000DF4A4(a1, *(v2 + 288));
  sub_1000DF4A4(a1, *(v2 + 296));
  sub_1000DF4A4(a1, *(v2 + 304));
  sub_1000DF4A4(a1, *(v2 + 312));
  sub_1000DF4A4(a1, *(v2 + 320));
  sub_1000DF4A4(a1, *(v2 + 328));
  sub_1000DF4A4(a1, *(v2 + 336));
  v9 = *(v2 + 352);
  if (v9)
  {
    v10 = *(v2 + 360);
    v11 = *(v2 + 344);
    Hasher._combine(_:)(1u);
    if (v11 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v11 & 1);
    }

    Hasher._combine(_:)((BYTE1(v11) & 1) + 1);
    Hasher._combine(_:)(BYTE2(v11) & 1);
    sub_1000CF8A0(a1, v9);
    v12 = v10 & 1;
  }

  else
  {
    v12 = 0;
  }

  Hasher._combine(_:)(v12);
}

Swift::Int NANCoreAnalyticsMetrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANCoreAnalyticsMetrics.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100219B08()
{
  Hasher.init(_seed:)();
  NANCoreAnalyticsMetrics.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100219B44(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x169uLL);
  memcpy(__dst, a2, 0x169uLL);
  return _s7CoreP2P23NANCoreAnalyticsMetricsV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst) & 1;
}

unint64_t sub_100219B9C(char a1)
{
  result = 0x5F5050485F4E414ELL;
  switch(a1)
  {
    case 1:
    case 19:
    case 53:
      result = 0xD000000000000019;
      break;
    case 3:
    case 4:
    case 12:
    case 42:
    case 60:
    case 61:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 31:
    case 32:
    case 51:
    case 59:
      result = 0xD000000000000014;
      break;
    case 7:
    case 36:
      result = 0xD000000000000021;
      break;
    case 8:
    case 34:
    case 35:
    case 37:
    case 46:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
    case 58:
      result = 0xD000000000000018;
      break;
    case 13:
    case 62:
      result = 0xD000000000000015;
      break;
    case 14:
    case 55:
      result = 0xD000000000000020;
      break;
    case 15:
    case 16:
    case 26:
    case 39:
    case 40:
    case 48:
    case 49:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 18:
    case 20:
    case 43:
    case 52:
    case 54:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0xD00000000000001DLL;
      break;
    case 22:
    case 24:
    case 27:
      result = 0xD000000000000023;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    case 28:
    case 30:
    case 56:
      result = 0xD00000000000001ALL;
      break;
    case 29:
    case 44:
      result = 0xD000000000000025;
      break;
    case 33:
      result = 0xD00000000000001DLL;
      break;
    case 38:
      result = 0xD00000000000001DLL;
      break;
    case 41:
      result = 0xD00000000000001DLL;
      break;
    case 45:
      result = 0xD000000000000029;
      break;
    case 47:
      result = 0xD00000000000001DLL;
      break;
    case 50:
      result = 0xD00000000000001DLL;
      break;
    case 57:
      result = 0x535F52495F4E414ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t NANCoreAnalyticsMetrics.eventPayload.getter()
{
  v79 = &_swiftEmptyDictionarySingleton;
  v1 = *v0;
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v1;
  sub_1000737E4(&v77, 0);
  v2 = *(v0 + 4);
  *(&v78 + 1) = &type metadata for Bool;
  LOBYTE(v77) = v2;
  sub_1000737E4(&v77, 1);
  v3 = *(v0 + 5);
  *(&v78 + 1) = &type metadata for Bool;
  LOBYTE(v77) = v3;
  sub_1000737E4(&v77, 2);
  v4 = *(v0 + 6);
  *(&v78 + 1) = &type metadata for Bool;
  LOBYTE(v77) = v4;
  sub_1000737E4(&v77, 3);
  v5 = v0[2];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v5;
  sub_1000737E4(&v77, 5);
  v6 = v0[3];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v6;
  sub_1000737E4(&v77, 6);
  v7 = *(v0 + 16);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v7;
  sub_1000737E4(&v77, 7);
  v8 = *(v0 + 17);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v8;
  sub_1000737E4(&v77, 8);
  v9 = *(v0 + 32);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v9;
  sub_1000737E4(&v77, 10);
  v10 = WiFiAddress.description.getter(*(v0 + 33) | (*(v0 + 35) << 16));
  *(&v78 + 1) = &type metadata for String;
  *&v77 = v10;
  *(&v77 + 1) = v11;
  sub_1000737E4(&v77, 11);
  v12 = v0[10];
  *(&v78 + 1) = &type metadata for Int32;
  LODWORD(v77) = v12;
  sub_1000737E4(&v77, 12);
  v13 = v0[11];
  *(&v78 + 1) = &type metadata for Int32;
  LODWORD(v77) = v13;
  sub_1000737E4(&v77, 13);
  v14 = v0[12];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v14;
  sub_1000737E4(&v77, 56);
  v15 = *(v0 + 7);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v15;
  sub_1000737E4(&v77, 15);
  v16 = *(v0 + 8);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v16;
  sub_1000737E4(&v77, 16);
  v17 = *(v0 + 9);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v17;
  sub_1000737E4(&v77, 17);
  v18 = *(v0 + 10);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v18;
  sub_1000737E4(&v77, 18);
  v19 = *(v0 + 11);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v19;
  sub_1000737E4(&v77, 19);
  v20 = *(v0 + 12);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v20;
  sub_1000737E4(&v77, 20);
  v21 = *(v0 + 13);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v21;
  sub_1000737E4(&v77, 21);
  v22 = *(v0 + 14);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v22;
  sub_1000737E4(&v77, 22);
  v23 = *(v0 + 15);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v23;
  sub_1000737E4(&v77, 23);
  v24 = *(v0 + 16);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v24;
  sub_1000737E4(&v77, 24);
  v25 = *(v0 + 17);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v25;
  sub_1000737E4(&v77, 25);
  v26 = *(v0 + 18);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v26;
  sub_1000737E4(&v77, 26);
  v27 = *(v0 + 19);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v27;
  sub_1000737E4(&v77, 27);
  v28 = *(v0 + 20);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v28;
  sub_1000737E4(&v77, 28);
  v29 = *(v0 + 21);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v29;
  sub_1000737E4(&v77, 29);
  v30 = *(v0 + 22);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v30;
  sub_1000737E4(&v77, 30);
  v31 = *(v0 + 23);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v31;
  sub_1000737E4(&v77, 31);
  v32 = *(v0 + 24);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v32;
  sub_1000737E4(&v77, 32);
  v33 = *(v0 + 25);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v33;
  sub_1000737E4(&v77, 33);
  v34 = *(v0 + 26);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v34;
  sub_1000737E4(&v77, 34);
  v35 = *(v0 + 27);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v35;
  sub_1000737E4(&v77, 35);
  v36 = *(v0 + 28);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v36;
  sub_1000737E4(&v77, 36);
  v37 = *(v0 + 18);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v37;
  sub_1000737E4(&v77, 52);
  v38 = v0[5];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v38;
  sub_1000737E4(&v77, 51);
  v39 = v0[6];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v39;
  sub_1000737E4(&v77, 54);
  v40 = v0[7];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v40;
  sub_1000737E4(&v77, 55);
  v41 = *(v0 + 19);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v41;
  sub_1000737E4(&v77, 53);
  v42 = *(v0 + 44);
  v73 = v42;
  if (v42)
  {
    v43 = *(v0 + 43);
    *(&v78 + 1) = &type metadata for Int;
    *&v77 = v43 != 2 && (v43 & 1) == 0;
    sub_1000737E4(&v77, 57);
    *(&v78 + 1) = &type metadata for Bool;
    LOBYTE(v77) = BYTE2(v43);
    sub_1000737E4(&v77, 58);
    if ((v43 & 0x100) != 0)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

    *(&v78 + 1) = &type metadata for UInt8;
    LOBYTE(v77) = v44;
    sub_1000737E4(&v77, 59);
    v45 = *(v42 + 16);
    *(&v78 + 1) = &type metadata for Int;
    *&v77 = v45;
  }

  else
  {
    *(&v78 + 1) = &type metadata for Int;
    *&v77 = 0;
    sub_1000737E4(&v77, 57);
    v77 = 0u;
    v78 = 0u;
    sub_1000737E4(&v77, 58);
    v77 = 0u;
    v78 = 0u;
    sub_1000737E4(&v77, 59);
    v77 = 0u;
    v78 = 0u;
  }

  sub_1000737E4(&v77, 60);
  v46 = v79;
  v47 = v79 + 64;
  v48 = 1 << v79[32];
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v79 + 8);
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  v53 = _swiftEmptyArrayStorage;
  while (1)
  {
    v54 = v52;
    if (!v50)
    {
      break;
    }

LABEL_18:
    v55 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v56 = v55 | (v52 << 6);
    v57 = *(*(v46 + 6) + v56);
    sub_100002B30(*(v46 + 7) + 32 * v56, &v77 + 8);
    LOBYTE(v77) = v57;
    sub_100012400(&v77, v75, &qword_100591910, &unk_10049B020);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      sub_100012400(&v77, v75, &qword_100591910, &unk_10049B020);
      v58 = sub_100219B9C(v75[0]);
      v71 = v59;
      v72 = v58;
      sub_100002A00(v76);
      sub_100016290(&v77, &qword_100591910, &unk_10049B020);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_100117A50(0, v53[2] + 1, 1, v53);
      }

      v61 = v53[2];
      v60 = v53[3];
      v62 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v70 = v61 + 1;
        v64 = v53;
        v65 = v53[2];
        v66 = sub_100117A50((v60 > 1), v61 + 1, 1, v64);
        v61 = v65;
        v62 = v70;
        v53 = v66;
      }

      v53[2] = v62;
      v63 = &v53[3 * v61];
      v63[4] = v72;
      v63[5] = v71;
      v63[6] = v74;
    }

    else
    {
      sub_100016290(&v77, &qword_100591910, &unk_10049B020);
    }
  }

  while (1)
  {
    v52 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v52 >= v51)
    {
      break;
    }

    v50 = *&v47[8 * v52];
    ++v54;
    if (v50)
    {
      goto LABEL_18;
    }
  }

  if (v53[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v67 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v67 = &_swiftEmptyDictionarySingleton;
  }

  *&v77 = v67;

  sub_100236478(v68, 1, &v77);

  if (v73)
  {
    sub_1002190A4(v73, &v77);
  }

  sub_10021F598(*(v0 + 29), 37, &v77);
  sub_10021F598(*(v0 + 30), 38, &v77);
  sub_10021F598(*(v0 + 31), 39, &v77);
  sub_10021F598(*(v0 + 32), 40, &v77);
  sub_10021F598(*(v0 + 33), 41, &v77);
  sub_10021F598(*(v0 + 34), 42, &v77);
  sub_10021F598(*(v0 + 35), 43, &v77);
  sub_10021F598(*(v0 + 36), 44, &v77);
  sub_10021F598(*(v0 + 37), 45, &v77);
  sub_10021F598(*(v0 + 38), 46, &v77);
  sub_10021F598(*(v0 + 39), 47, &v77);
  sub_10021F598(*(v0 + 40), 48, &v77);
  sub_10021F598(*(v0 + 41), 49, &v77);
  sub_10021F598(*(v0 + 42), 50, &v77);
  return v77;
}

uint64_t sub_10021A92C(void *a1, unint64_t *a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10005DC58(&qword_100591A40, &qword_10049BC80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin();
  v12 = &v35 - v11;
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v40 = 0xD000000000000017;
  v41 = 0x80000001004B7010;
  v14 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v42 = *a1 + 1;
    v37 = v14;
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v38 = v9;
    v39 = v4;
    v16 = v9;
    v17 = v40;
    v18 = v41;
    sub_100012400(a1, v12, &qword_100591A40, &qword_10049BC80);
    v19 = *(v16 + 48);
    v20 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
    v21 = &v12[v19 + *(v20 + 48)];
    v22 = *(type metadata accessor for NANInternetSharingStatistics.Requester() + 20);
    v36 = a1;
    v23 = *(v21 + v22);
    sub_10021F8D8(v21);
    isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v25 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *a2;
    *a2 = 0x8000000000000000;
    sub_100081750(isa, v17, v18, isUniquelyReferenced_nonNull_native);

    *a2 = v40;
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v40 = 0xD000000000000015;
    v41 = 0x80000001004B7030;
    v42 = v37;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28 = v40;
    v29 = v41;
    sub_100012400(v36, v12, &qword_100591A40, &qword_10049BC80);
    v30 = v39;
    v31 = *(v38 + 48) + *(v20 + 48);
    (*(v5 + 16))(v8, &v12[v31], v39);
    sub_10021F8D8(&v12[v31]);
    DispatchTimeInterval.rawSeconds.getter();
    (*(v5 + 8))(v8, v30);
    v32 = Int._bridgeToObjectiveC()().super.super.isa;
    v33 = *a2;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *a2;
    *a2 = 0x8000000000000000;
    sub_100081750(v32, v28, v29, v34);

    *a2 = v40;
  }

  return result;
}

uint64_t sub_10021AD14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10021F4AC();
  *a2 = result;
  return result;
}

unint64_t sub_10021AD44@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100219B9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

CoreP2P::NANInternetSharingStatistics::Provider::SharingMode_optional __swiftcall NANInternetSharingStatistics.Provider.SharingMode.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 2)
  {
    v1.value = CoreP2P_NANInternetSharingStatistics_Provider_SharingMode_dhcpServer;
  }

  else
  {
    v1.value = CoreP2P_NANInternetSharingStatistics_Provider_SharingMode_unknownDefault;
  }

  if (rawValue == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

unsigned __int8 *sub_10021AD8C@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_10021ADAC(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

Swift::Int sub_10021ADC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10021AE14()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10021AE4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void NANInternetSharingStatistics.Provider.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2 & 1);
}

Swift::Int NANInternetSharingStatistics.Provider.hashValue.getter(__int16 a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10021AF44()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10021AFAC()
{
  v1 = v0[1];
  if (*v0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10021AFF8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t NANInternetSharingStatistics.Requester.InternetSharingPolicyChannelState.init(apiValue:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 0;
  }

  else
  {
    return 0x3040102uLL >> (8 * a1);
  }
}

uint64_t NANInternetSharingStatistics.Requester.dhcpDelay.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NANInternetSharingStatistics.Requester.policy.setter(char a1)
{
  result = type metadata accessor for NANInternetSharingStatistics.Requester();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t NANInternetSharingStatistics.Requester.init(dhcpDelay:policy:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DispatchTimeInterval();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for NANInternetSharingStatistics.Requester();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t NANInternetSharingStatistics.Requester.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for DispatchTimeInterval();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin();
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v20 = v8;
  v21 = v11;
  v13 = v23;
  sub_100031694(v24, v25);
  *v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v14 = v13;
  v15 = *(v13 + 104);
  v16 = v4;
  v15(v7, enum case for DispatchTimeInterval.seconds(_:), v4);
  v17 = v21;
  (*(v14 + 32))(v21, v7, v16);
  sub_100031694(v24, v25);
  sub_10021F820();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  *(v17 + *(v20 + 20)) = v26;
  sub_100002A00(v24);
  sub_10021F874(v17, v22);
  sub_100002A00(a1);
  return sub_10021F8D8(v17);
}

uint64_t NANInternetSharingStatistics.Requester.encode(to:)(void *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  result = DispatchTimeInterval.rawSeconds.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100031694(v6, v7);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    v5 = *(v1 + *(type metadata accessor for NANInternetSharingStatistics.Requester() + 20));
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v6);
}

BOOL static NANInternetSharingStatistics.Requester.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NANInternetSharingStatistics.Requester();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

void NANInternetSharingStatistics.Requester.hash(into:)()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000000000;
LABEL_7:
    v9 = v7 * v8;
    v10 = (v7 * v8) >> 64 != (v7 * v8) >> 63;
    v11 = v7 <= 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = 0x8000000000000000;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    goto LABEL_12;
  }

  if (v6 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000000;
    goto LABEL_7;
  }

  if (v6 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000;
    goto LABEL_7;
  }

  if (v6 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v13 = *v5;
  }

  else
  {
    if (v6 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v2 + 8))(v5, v1);
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:
  Hasher._combine(_:)(v13);
  v14 = type metadata accessor for NANInternetSharingStatistics.Requester();
  Hasher._combine(_:)(*(v0 + *(v14 + 20)));
}

Swift::Int NANInternetSharingStatistics.Requester.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANInternetSharingStatistics.Requester.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10021B8E8()
{
  Hasher.init(_seed:)();
  NANInternetSharingStatistics.Requester.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NANInternetSharingStatistics.provider.setter(uint64_t result)
{
  *(v1 + 1) = result & 1;
  *(v1 + 2) = BYTE1(result) & 1;
  return result;
}

uint64_t NANInternetSharingStatistics.init(provider:)(__int16 a1)
{
  sub_100082F74(_swiftEmptyArrayStorage);
  if (a1)
  {
    v2 = 258;
  }

  else
  {
    v2 = 2;
  }

  return v2 & 0xFFFEFFFF | ((((a1 & 0x100) >> 8) & 1) << 16);
}

void NANInternetSharingStatistics.hash(into:)(__int128 *a1, int a2, uint64_t a3, char a4)
{
  if (a2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2 & 1);
  }

  if ((a2 & 0x100) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  sub_1000CF8A0(a1, a3);
  Hasher._combine(_:)(a4 & 1);
}

Swift::Int NANInternetSharingStatistics.hashValue.getter(int a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1 & 1);
  }

  if ((a1 & 0x100) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  sub_1000CF8A0(v8, a2);
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10021BB68()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return NANInternetSharingStatistics.hashValue.getter(v2 | v3, *(v0 + 1), v0[16]);
}

void sub_10021BBA0(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 1);
  v8 = v2[16];
  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4 & 1);
  }

  if (v5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v6);
  sub_1000CF8A0(a1, v7);
  Hasher._combine(_:)(v8);
}

Swift::Int sub_10021BC38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  v5 = v0[16];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1 & 1);
  }

  if (v2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v3);
  sub_1000CF8A0(v8, v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_10021BCF4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (a2[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_10021EE40(v3 | v4, *(a1 + 1), a1[16], v6 | v7, *(a2 + 1), a2[16]);
}

uint64_t NANCoreAnalyticsPerformanceStatistics.rssi.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.rssi.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.throughputCeilingMbps.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.throughputCeilingMbps.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.throughputCapacityMbps.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.throughputCapacityMbps.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.init(rssi:throughputCeilingMbps:throughputCapacityMbps:txLatencyMin:txLatencyMax:txLatencyMean:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 16) = a6;
  *(a5 + 24) = 0;
  *(a5 + 32) = a7;
  *(a5 + 40) = 0;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  return result;
}

CoreP2P::NANWiFiAwareStatistics::ClientType_optional __swiftcall NANWiFiAwareStatistics.ClientType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_10021BE00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P22NANWiFiAwareStatisticsV9AppStatusO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10021BE2C()
{
  qword_10059B650 = 0;
  LODWORD(static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty) = 0;
  WORD2(static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty) = 0;
}

uint64_t *NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty.unsafeMutableAddressor()
{
  if (qword_10058AAD0 != -1)
  {
    swift_once();
  }

  return &static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty;
}

uint64_t static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty.getter()
{
  if (qword_10058AAD0 != -1)
  {
    swift_once();
  }

  return static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty;
}

uint64_t sub_10021C248(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x4E65636976726573;
      break;
    case 2:
      result = 0x6570795472656570;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6F73616552627573;
      break;
    case 5:
      result = 0x6269726373627573;
      break;
    case 6:
      result = 0x436873696C627570;
      break;
    case 7:
      result = 0x6874617061746164;
      break;
    case 8:
      result = 0x6F6974617265706FLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
    case 19:
    case 28:
    case 30:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x7954746E65696C63;
      break;
    case 13:
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0x6143656469537369;
      break;
    case 18:
      result = 0x616C507269417369;
      break;
    case 20:
      result = 0x65536F54656D6974;
      break;
    case 21:
      result = 0x446E6F6973736573;
      break;
    case 22:
      result = 0x526172666E497369;
      break;
    case 23:
    case 24:
      result = 0xD000000000000010;
      break;
    case 25:
      v3 = 0x666C65537369;
      goto LABEL_35;
    case 26:
      v3 = 0x726565507369;
LABEL_35:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4453000000000000;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 29:
    case 39:
      result = 0xD000000000000012;
      break;
    case 31:
      result = 0x6E756F436E616373;
      break;
    case 32:
      result = 0x756F43636F737361;
      break;
    case 33:
    case 34:
      result = 0xD000000000000019;
      break;
    case 35:
      result = 0x534644664F6D756ELL;
      break;
    case 36:
      result = 0x7574617453707061;
      break;
    case 37:
      result = 1769173874;
      break;
    case 38:
      result = 0xD000000000000011;
      break;
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
      result = 0x636E6574614C7874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10021C7E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10021F448();
  *a2 = result;
  return result;
}

uint64_t sub_10021C810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10021C248(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t NANWiFiAwareStatistics.eventPayload.getter()
{
  v60 = &_swiftEmptyDictionarySingleton;
  v2 = *v0;
  v1 = v0[1];
  v59 = &type metadata for String;
  v57 = v2;
  v58 = v1;

  sub_100073910(&v57, 0);
  v4 = v0[2];
  v3 = v0[3];
  v59 = &type metadata for String;
  v57 = v4;
  v58 = v3;

  sub_100073910(&v57, 1);
  v5 = *(v0 + 32);
  v59 = &type metadata for Int;
  v57 = v5;
  sub_100073910(&v57, 2);
  v6 = *(v0 + 33);
  v59 = &type metadata for Int;
  v57 = v6;
  sub_100073910(&v57, 3);
  v7 = *(v0 + 34);
  v59 = &type metadata for UInt8;
  LOBYTE(v57) = v7;
  sub_100073910(&v57, 4);
  v8 = v0[5];
  v59 = &type metadata for Int;
  v57 = v8;
  sub_100073910(&v57, 5);
  v9 = v0[6];
  v59 = &type metadata for Int;
  v57 = v9;
  sub_100073910(&v57, 6);
  v10 = v0[7];
  v59 = &type metadata for Int;
  v57 = v10;
  sub_100073910(&v57, 7);
  v11 = *(v0 + 64);
  v59 = &type metadata for Int;
  v57 = v11;
  sub_100073910(&v57, 8);
  v12 = *(v0 + 65);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v12;
  sub_100073910(&v57, 9);
  v13 = *(v0 + 66);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v13;
  sub_100073910(&v57, 10);
  v14 = *(v0 + 67);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v14;
  sub_100073910(&v57, 11);
  v15 = *(v0 + 68);
  v59 = &type metadata for Int;
  v57 = v15;
  sub_100073910(&v57, 12);
  v16 = *(v0 + 69);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v16;
  sub_100073910(&v57, 13);
  v17 = *(v0 + 70);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v17;
  sub_100073910(&v57, 14);
  v18 = *(v0 + 71);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v18;
  sub_100073910(&v57, 15);
  v19 = *(v0 + 72);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v19;
  sub_100073910(&v57, 16);
  v20 = *(v0 + 73);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v20;
  sub_100073910(&v57, 17);
  v21 = *(v0 + 74);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v21;
  sub_100073910(&v57, 18);
  v22 = *(v0 + 75);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v22;
  sub_100073910(&v57, 19);
  v23 = v0[10];
  v59 = &type metadata for UInt64;
  v57 = v23;
  sub_100073910(&v57, 20);
  v24 = v0[11];
  v59 = &type metadata for UInt64;
  v57 = v24;
  sub_100073910(&v57, 21);
  v25 = *(v0 + 96);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v25;
  sub_100073910(&v57, 22);
  v26 = *(v0 + 25);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v26;
  sub_100073910(&v57, 23);
  v27 = *(v0 + 104);
  v59 = &type metadata for UInt8;
  LOBYTE(v57) = v27;
  sub_100073910(&v57, 24);
  v28 = *(v0 + 105);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v28;
  sub_100073910(&v57, 25);
  v29 = *(v0 + 106);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v29;
  sub_100073910(&v57, 26);
  v30 = *(v0 + 107);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v30;
  sub_100073910(&v57, 27);
  v31 = v0[14];
  v59 = &type metadata for Int;
  v57 = v31;
  sub_100073910(&v57, 28);
  v32 = v0[15];
  v59 = &type metadata for Int;
  v57 = v32;
  sub_100073910(&v57, 29);
  v33 = *(v0 + 128);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v33;
  sub_100073910(&v57, 30);
  v34 = *(v0 + 33);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v34;
  sub_100073910(&v57, 31);
  v35 = *(v0 + 34);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v35;
  sub_100073910(&v57, 32);
  v36 = *(v0 + 35);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v36;
  sub_100073910(&v57, 33);
  v37 = *(v0 + 36);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v37;
  sub_100073910(&v57, 34);
  v38 = v0[19];
  v59 = &type metadata for Int;
  v57 = v38;
  sub_100073910(&v57, 35);
  v39 = *(v0 + 160);
  v59 = &type metadata for Int;
  v57 = v39;
  sub_100073910(&v57, 36);
  v40 = v0[21];
  v59 = &type metadata for Int;
  v57 = v40;
  sub_100073910(&v57, 37);
  v41 = v0[22];
  v59 = &type metadata for Double;
  v57 = v41;
  sub_100073910(&v57, 38);
  v42 = v0[23];
  v59 = &type metadata for Double;
  v57 = v42;
  sub_100073910(&v57, 39);
  v43 = v0[24];
  v59 = &type metadata for Double;
  v57 = v43;
  sub_100073910(&v57, 40);
  v44 = v0[25];
  v59 = &type metadata for Double;
  v57 = v44;
  sub_100073910(&v57, 41);
  v45 = v0[26];
  v59 = &type metadata for Double;
  v57 = v45;
  sub_100073910(&v57, 42);
  v46 = v0[27];
  v59 = &type metadata for Double;
  v57 = v46;
  sub_100073910(&v57, 43);
  v47 = v0[28];
  v59 = &type metadata for Double;
  v57 = v47;
  sub_100073910(&v57, 44);
  v48 = v0[29];
  v59 = &type metadata for Double;
  v57 = v48;
  sub_100073910(&v57, 45);
  v49 = v0[30];
  v59 = &type metadata for Double;
  v57 = v49;
  sub_100073910(&v57, 46);
  v50 = v0[31];
  v59 = &type metadata for Double;
  v57 = v50;
  sub_100073910(&v57, 47);
  v51 = v0[32];
  v59 = &type metadata for Double;
  v57 = v51;
  sub_100073910(&v57, 48);
  v52 = v0[33];
  v59 = &type metadata for Double;
  v57 = v52;
  sub_100073910(&v57, 49);
  v53 = v0[34];
  v59 = &type metadata for Double;
  v57 = v53;
  sub_100073910(&v57, 50);
  v54 = v0[35];
  v59 = &type metadata for Double;
  v57 = v54;
  sub_100073910(&v57, 51);
  v55 = sub_1001D9AEC(v60);

  return v55;
}

void __swiftcall NANWiFiAwareStatistics.init()(CoreP2P::NANWiFiAwareStatistics *__return_ptr retstr)
{
  retstr->bundleID._countAndFlagsBits = 0;
  retstr->bundleID._object = 0xE000000000000000;
  retstr->serviceName._countAndFlagsBits = 0;
  retstr->serviceName._object = 0xE000000000000000;
  *&retstr->peerType = 1280;
  retstr->subReason = CoreP2P_NANSubReasonCode_unknown;
  retstr->publishCount = 0;
  retstr->datapathCount = 0;
  retstr->subscribeCount = 0;
  *&retstr->operationType = 0;
  retstr->clientType = CoreP2P_NANWiFiAwareStatistics_ClientType_unknown;
  *&retstr->isRemoteCameraActive = 0;
  *&retstr->isUniversalControlActive = 0;
  retstr->timeToSetUpNDP = 0;
  retstr->sessionDuration = 0;
  retstr->isInfraRealTime = 0;
  *&retstr->selfInfraChannel = 0;
  *&retstr->rssi = 0u;
  p_rssi = &retstr->rssi;
  *(p_rssi - 7) = 0;
  *(p_rssi - 6) = 0;
  *(p_rssi - 40) = 0;
  *(p_rssi - 2) = 0;
  *(p_rssi - 8) = 0;
  *(p_rssi - 36) = 0;
  *(p_rssi - 28) = 0;
  *(p_rssi + 1) = 0u;
  *(p_rssi + 2) = 0u;
  *(p_rssi + 3) = 0u;
  *(p_rssi + 4) = 0u;
  *(p_rssi + 5) = 0u;
  *(p_rssi + 6) = 0u;
  p_rssi[14] = 0;
}

uint64_t NANWiFiAwareStatistics.convertToTerminationError(reason:)(uint64_t a1)
{
  if ((a1 + 1) >= 6)
  {
    return 5;
  }

  else
  {
    return (0x50403020501uLL >> (8 * (a1 + 1)));
  }
}

CoreP2P::NANWiFiAwareStatistics::AppStatus __swiftcall NANWiFiAwareStatistics.convertToAppStatus(reason:)(Swift::Int reason)
{
  if (reason >= 5)
  {
    LOBYTE(reason) = 0;
  }

  return reason;
}

CoreP2P::NANWiFiAwareStatistics::PeerType __swiftcall NANWiFiAwareStatistics.convertToPeerType(flag:)(Swift::UInt8 flag)
{
  if ((flag & 0x10) != 0)
  {
    return 1;
  }

  else
  {
    return (flag >> 4) & 2;
  }
}

void NANWiFiAwareStatistics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 33));
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(v0[5]);
  Hasher._combine(_:)(v0[6]);
  Hasher._combine(_:)(v0[7]);
  Hasher._combine(_:)(*(v0 + 64));
  Hasher._combine(_:)(*(v0 + 65) & 1);
  Hasher._combine(_:)(*(v0 + 66) & 1);
  Hasher._combine(_:)(*(v0 + 67) & 1);
  Hasher._combine(_:)(*(v0 + 68));
  Hasher._combine(_:)(*(v0 + 69) & 1);
  Hasher._combine(_:)(*(v0 + 70) & 1);
  Hasher._combine(_:)(*(v0 + 71) & 1);
  Hasher._combine(_:)(v0[9] & 1);
  Hasher._combine(_:)(*(v0 + 73) & 1);
  Hasher._combine(_:)(*(v0 + 74) & 1);
  Hasher._combine(_:)(*(v0 + 75) & 1);
  Hasher._combine(_:)(v0[10]);
  Hasher._combine(_:)(v0[11]);
  Hasher._combine(_:)(v0[12] & 1);
  Hasher._combine(_:)(*(v0 + 25));
  Hasher._combine(_:)(*(v0 + 104));
  Hasher._combine(_:)(*(v0 + 105) & 1);
  Hasher._combine(_:)(*(v0 + 106) & 1);
  Hasher._combine(_:)(*(v0 + 107) & 1);
  Hasher._combine(_:)(v0[14]);
  Hasher._combine(_:)(v0[15]);
  Hasher._combine(_:)(v0[16] & 1);
  Hasher._combine(_:)(*(v0 + 33));
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(*(v0 + 35));
  Hasher._combine(_:)(*(v0 + 36));
  Hasher._combine(_:)(v0[19]);
  Hasher._combine(_:)(*(v0 + 160));
  Hasher._combine(_:)(v0[21]);
  v5 = *(v0 + 22);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = *(v0 + 23);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(v0 + 24);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  v8 = *(v0 + 25);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  v9 = *(v0 + 26);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  Hasher._combine(_:)(*&v9);
  v10 = *(v0 + 27);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  Hasher._combine(_:)(*&v10);
  v11 = *(v0 + 28);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  Hasher._combine(_:)(*&v11);
  v12 = *(v0 + 29);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  v13 = *(v0 + 30);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  Hasher._combine(_:)(*&v13);
  v14 = *(v0 + 31);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  Hasher._combine(_:)(*&v14);
  v15 = *(v0 + 32);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  Hasher._combine(_:)(*&v15);
  v16 = *(v0 + 33);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  Hasher._combine(_:)(*&v16);
  v17 = *(v0 + 34);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  Hasher._combine(_:)(*&v17);
  v18 = *(v0 + 35);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  Hasher._combine(_:)(*&v18);
}

Swift::Int NANWiFiAwareStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANWiFiAwareStatistics.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10021D24C()
{
  Hasher.init(_seed:)();
  NANWiFiAwareStatistics.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10021D288(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s7CoreP2P22NANWiFiAwareStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst);
}

void __swiftcall NANAppUsage.init(bundleID:)(CoreP2P::NANAppUsage *__return_ptr retstr, Swift::String bundleID)
{
  retstr->bundleID = bundleID;
  *&retstr->publishCount = 0u;
  *&retstr->publishDuration = 0u;
  *&retstr->datapathInitiatorDuration = 0u;
  retstr->operationType = CoreP2P_OperationType_none;
  retstr->sessionDuration = 0;
}

void NANAppUsage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 9));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 11));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 13));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 15));
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5]);
  Hasher._combine(_:)(v0[6]);
  Hasher._combine(_:)(v0[7]);
  Hasher._combine(_:)(*(v0 + 64));
  Hasher._combine(_:)(v0[9]);
}

Swift::Int NANAppUsage.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 9));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 11));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 13));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 15));
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5]);
  Hasher._combine(_:)(v0[6]);
  Hasher._combine(_:)(v0[7]);
  Hasher._combine(_:)(*(v0 + 64));
  Hasher._combine(_:)(v0[9]);
  return Hasher._finalize()();
}

void sub_10021D490()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[7];
  v15 = *(v0 + 64);
  v16 = v0[9];
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);
  v7 = *(v0 + 11);
  v8 = *(v0 + 12);
  v9 = *(v0 + 13);
  v10 = *(v0 + 14);
  v11 = *(v0 + 15);
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
}

Swift::Int sub_10021D594()
{
  v1 = *v0;
  v2 = v0[1];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[7];
  v16 = *(v0 + 64);
  v17 = v0[9];
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  v7 = *(v0 + 12);
  v8 = *(v0 + 13);
  v9 = *(v0 + 14);
  v11 = *(v0 + 15);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  return Hasher._finalize()();
}

BOOL sub_10021D6E8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s7CoreP2P11NANAppUsageV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9);
}

uint64_t sub_10021D744(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x664F7265626D756ELL;
    v5 = 0x6269726373627573;
    if (a1 != 2)
    {
      v5 = 0xD000000000000016;
    }

    if (a1)
    {
      v4 = 0x436873696C627570;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 == 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000016;
    if (a1 != 4)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10021D894()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001871FC();
  return Hasher._finalize()();
}

Swift::Int sub_10021D8E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001871FC();
  return Hasher._finalize()();
}

unint64_t sub_10021D928@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021F54C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10021D958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10021D744(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t NANWiFiAwareSystemStatistics.eventPayload.getter(unint64_t a1, unint64_t a2, __int16 a3)
{
  v4 = a2;
  v5 = a1 >> 16;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v14 = &type metadata for UInt16;
  v15 = &_swiftEmptyDictionarySingleton;
  v8 = a2 >> 16;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v13[0] = a1;
  sub_100073A3C(v13, 0);
  v14 = &type metadata for UInt16;
  v13[0] = v5;
  sub_100073A3C(v13, 1);
  v14 = &type metadata for UInt16;
  v13[0] = v6;
  sub_100073A3C(v13, 2);
  v14 = &type metadata for UInt16;
  v13[0] = v7;
  sub_100073A3C(v13, 3);
  v14 = &type metadata for UInt16;
  v13[0] = v4;
  sub_100073A3C(v13, 4);
  v14 = &type metadata for UInt16;
  v13[0] = v8;
  sub_100073A3C(v13, 5);
  v14 = &type metadata for UInt16;
  v13[0] = v9;
  sub_100073A3C(v13, 6);
  v14 = &type metadata for UInt16;
  v13[0] = v10;
  sub_100073A3C(v13, 7);
  v14 = &type metadata for UInt16;
  v13[0] = a3;
  sub_100073A3C(v13, 8);
  v11 = sub_1001D9B14(v15);

  return v11;
}

void NANWiFiAwareSystemStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3, Swift::UInt16 a4)
{
  v5 = a3;
  v6 = a2 >> 16;
  v7 = HIDWORD(a2);
  v8 = HIWORD(a2);
  v9 = a3 >> 16;
  v10 = HIDWORD(a3);
  v11 = HIWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(a4);
}

Swift::Int NANWiFiAwareSystemStatistics.hashValue.getter(unint64_t a1, unint64_t a2, Swift::UInt16 a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 >> 16;
  v7 = HIDWORD(a1);
  v8 = HIWORD(a1);
  v9 = a2 >> 16;
  v10 = HIDWORD(a2);
  v11 = HIWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_10021DC80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

void sub_10021DD68()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
}

Swift::Int sub_10021DE14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

unint64_t sub_10021DF14(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return 0xD000000000000023;
      }
    }

    else
    {
      v5 = 0xD00000000000001BLL;
      if (a1 != 7)
      {
        v5 = 0xD000000000000019;
      }

      if (a1 == 6)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x436873696C627570;
    v2 = 0xD000000000000016;
    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 == 1)
    {
      v2 = 0x6269726373627573;
    }

    if (a1)
    {
      v1 = v2;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_10021E0C8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_10021E174(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10021E1F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_10021E268(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10021E2D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021F500(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10021E300@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10021DF14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t NANWiFiAwareAppStatistics.eventPayload.getter()
{
  v17 = &_swiftEmptyDictionarySingleton;
  v1 = *v0;
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v1;
  sub_100073BBC(v15, 0);
  v2 = v0[1];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v2;
  sub_100073BBC(v15, 1);
  v3 = v0[2];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v3;
  sub_100073BBC(v15, 2);
  v4 = v0[3];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v4;
  sub_100073BBC(v15, 3);
  v5 = v0[4];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v5;
  sub_100073BBC(v15, 4);
  v6 = v0[5];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v6;
  sub_100073BBC(v15, 5);
  v7 = v0[6];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v7;
  sub_100073BBC(v15, 6);
  v8 = v0[7];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v8;
  sub_100073BBC(v15, 7);
  v9 = *(v0 + 2);
  v16 = &type metadata for UInt64;
  v15[0] = v9;
  sub_100073BBC(v15, 8);
  v10 = *(v0 + 3);
  v16 = &type metadata for UInt64;
  v15[0] = v10;
  sub_100073BBC(v15, 9);
  v11 = *(v0 + 4);
  v16 = &type metadata for UInt64;
  v15[0] = v11;
  sub_100073BBC(v15, 10);
  v12 = *(v0 + 5);
  v16 = &type metadata for UInt64;
  v15[0] = v12;
  sub_100073BBC(v15, 11);
  v13 = sub_1001D9F1C(v17);

  return v13;
}

void NANWiFiAwareAppStatistics.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 40));
}

Swift::Int NANWiFiAwareAppStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 40));
  return Hasher._finalize()();
}

Swift::Int sub_10021E638()
{
  v1 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = *(v0 + 8);
  v7 = *(v0 + 10);
  v8 = *(v0 + 12);
  v9 = *(v0 + 14);
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
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

void sub_10021E750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = *(v0 + 8);
  v7 = *(v0 + 10);
  v8 = *(v0 + 12);
  v9 = *(v0 + 14);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
}

Swift::Int sub_10021E824()
{
  v1 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = *(v0 + 8);
  v7 = *(v0 + 10);
  v8 = *(v0 + 12);
  v9 = *(v0 + 14);
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
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

BOOL sub_10021E938(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7CoreP2P25NANWiFiAwareAppStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

BOOL _s7CoreP2P22NANWiFiAwareStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 32) == *(a2 + 32) && *(a1 + 33) == *(a2 + 33) && *(a1 + 34) == *(a2 + 34) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && ((*(a1 + 65) ^ *(a2 + 65)) & 1) == 0 && ((*(a1 + 66) ^ *(a2 + 66)) & 1) == 0 && ((*(a1 + 67) ^ *(a2 + 67)) & 1) == 0 && *(a1 + 68) == *(a2 + 68) && ((*(a1 + 69) ^ *(a2 + 69)) & 1) == 0 && ((*(a1 + 70) ^ *(a2 + 70)) & 1) == 0 && ((*(a1 + 71) ^ *(a2 + 71)) & 1) == 0 && ((*(a1 + 72) ^ *(a2 + 72)) & 1) == 0 && ((*(a1 + 73) ^ *(a2 + 73)) & 1) == 0 && ((*(a1 + 74) ^ *(a2 + 74)) & 1) == 0 && ((*(a1 + 75) ^ *(a2 + 75)) & 1) == 0 && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && ((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0 && *(a1 + 100) == *(a2 + 100) && *(a1 + 104) == *(a2 + 104) && ((*(a1 + 105) ^ *(a2 + 105)) & 1) == 0 && ((*(a1 + 106) ^ *(a2 + 106)) & 1) == 0 && ((*(a1 + 107) ^ *(a2 + 107)) & 1) == 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120) && ((*(a1 + 128) ^ *(a2 + 128)) & 1) == 0 && *(a1 + 132) == *(a2 + 132) && *(a1 + 136) == *(a2 + 136) && *(a1 + 140) == *(a2 + 140) && *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168) && *(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184) && *(a1 + 192) == *(a2 + 192) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && *(a1 + 216) == *(a2 + 216) && *(a1 + 224) == *(a2 + 224) && *(a1 + 232) == *(a2 + 232) && *(a1 + 240) == *(a2 + 240) && *(a1 + 248) == *(a2 + 248) && *(a1 + 256) == *(a2 + 256) && *(a1 + 264) == *(a2 + 264) && *(a1 + 272) == *(a2 + 272)))
  {
    return *(a1 + 280) == *(a2 + 280);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021EE40(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else if (a4 == 2 || ((a4 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if (((a1 ^ a4) & 0x100) != 0 || ((a1 ^ a4) & 0x10000) != 0)
  {
    return 0;
  }

  v9 = sub_1000CE5B8(a2, a5);
  v10 = a3 ^ a6 ^ 1;
  if ((v9 & 1) == 0)
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t _s7CoreP2P23NANCoreAnalyticsMetricsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0 && ((*(a1 + 5) ^ *(a2 + 5)) & 1) == 0 && ((*(a1 + 6) ^ *(a2 + 6)) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17) && *(a1 + 18) == *(a2 + 18) && *(a1 + 19) == *(a2 + 19) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32))
  {
    v13 = *(a1 + 37);
    v2 = *(a1 + 33) == *(a2 + 33) && *(a1 + 37) == *(a2 + 37);
    if (v2 && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168) && *(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184) && *(a1 + 192) == *(a2 + 192) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && *(a1 + 216) == *(a2 + 216) && *(a1 + 224) == *(a2 + 224) && (sub_1000BEA94(*(a1 + 232), *(a2 + 232)) & 1) != 0 && (sub_1000BEA94(*(a1 + 240), *(a2 + 240)) & 1) != 0 && (sub_1000BEA94(*(a1 + 248), *(a2 + 248)) & 1) != 0 && (sub_1000BEA94(*(a1 + 256), *(a2 + 256)) & 1) != 0 && (sub_1000BEA94(*(a1 + 264), *(a2 + 264)) & 1) != 0 && (sub_1000BEA94(*(a1 + 272), *(a2 + 272)) & 1) != 0 && (sub_1000BEA94(*(a1 + 280), *(a2 + 280)) & 1) != 0 && (sub_1000BEA94(*(a1 + 288), *(a2 + 288)) & 1) != 0 && (sub_1000BEA94(*(a1 + 296), *(a2 + 296)) & 1) != 0 && (sub_1000BEA94(*(a1 + 304), *(a2 + 304)) & 1) != 0 && (sub_1000BEA94(*(a1 + 312), *(a2 + 312)) & 1) != 0 && (sub_1000BEA94(*(a1 + 320), *(a2 + 320)) & 1) != 0 && (sub_1000BEA94(*(a1 + 328), *(a2 + 328)) & 1) != 0 && (sub_1000BEA94(*(a1 + 336), *(a2 + 336)) & 1) != 0)
    {
      v5 = *(a1 + 352);
      v6 = *(a2 + 352);
      if (v5)
      {
        if (v6)
        {
          v7 = *(a1 + 344);
          v8 = *(a1 + 360);
          v9 = *(a2 + 344);
          v10 = *(a2 + 360);

          v11 = sub_10021EE40(v7 & 0x101FF, v5, v8 & 1, v9 & 0x101FF, v6, v10 & 1);

          if (v11)
          {
            return 1;
          }
        }
      }

      else if (!v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10021F448()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x34)
  {
    return 52;
  }

  else
  {
    return v0;
  }
}

unint64_t _s7CoreP2P22NANWiFiAwareStatisticsV9AppStatusO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_10021F4AC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x3F)
  {
    return 63;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10021F500(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100555BB0, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10021F54C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100555CF0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10021F598(uint64_t a1, char a2, uint64_t *a3)
{
  v3 = a3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v31 = _swiftEmptyArrayStorage;
    sub_1000C0810(0, v4, 0);
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = a1 + 32;
    do
    {
      v10 = *(v9 + 8 * v7);
      v11 = sub_100219B9C(a2);
      v13 = v12;
      v30[2] = v7;
      sub_100086E78();
      v14 = BinaryInteger.description.getter();
      v16 = v15;
      v30[0] = v11;
      v30[1] = v13;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      String.append(_:)(v17);

      v18.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v31 = v8;
      v20 = v8[2];
      v19 = v8[3];
      if (v20 >= v19 >> 1)
      {
        isa = v18.super.super.isa;
        sub_1000C0810((v19 > 1), v20 + 1, 1);
        v18.super.super.isa = isa;
        v8 = v31;
      }

      ++v7;
      v8[2] = v20 + 1;
      v21 = &v8[3 * v20];
      v21[4].super.super.isa = v11;
      v21[5].super.super.isa = v13;
      v21[6].super.super.isa = v18.super.super.isa;
    }

    while (v4 != v7);
    v3 = a3;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    v23 = &_swiftEmptyDictionarySingleton;
    goto LABEL_9;
  }

  sub_10005DC58(&qword_10058F340, &qword_1004948F0);
  v23 = static _DictionaryStorage.allocate(capacity:)();
LABEL_9:
  v30[0] = v23;

  sub_100236478(v24, 1, v30);

  v25 = v30[0];
  v26 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *v3;
  sub_1001EA09C(v25, sub_1001E874C, 0, isUniquelyReferenced_nonNull_native, v30);

  *v3 = v30[0];
  return result;
}

uint64_t type metadata accessor for NANInternetSharingStatistics.Requester()
{
  result = qword_1005919F8;
  if (!qword_1005919F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10021F820()
{
  result = qword_100591918;
  if (!qword_100591918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591918);
  }

  return result;
}

uint64_t sub_10021F874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANInternetSharingStatistics.Requester();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021F8D8(uint64_t a1)
{
  v2 = type metadata accessor for NANInternetSharingStatistics.Requester();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10021F938()
{
  result = qword_100591920;
  if (!qword_100591920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591920);
  }

  return result;
}

unint64_t sub_10021F990()
{
  result = qword_100591928;
  if (!qword_100591928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591928);
  }

  return result;
}

unint64_t sub_10021F9E8()
{
  result = qword_100591930;
  if (!qword_100591930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591930);
  }

  return result;
}

unint64_t sub_10021FA40()
{
  result = qword_100591938;
  if (!qword_100591938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591938);
  }

  return result;
}

unint64_t sub_10021FA98()
{
  result = qword_100591940;
  if (!qword_100591940)
  {
    type metadata accessor for NANInternetSharingStatistics.Requester();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591940);
  }

  return result;
}

unint64_t sub_10021FAF4()
{
  result = qword_100591948;
  if (!qword_100591948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591948);
  }

  return result;
}

unint64_t sub_10021FB4C()
{
  result = qword_100591950;
  if (!qword_100591950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591950);
  }

  return result;
}

unint64_t sub_10021FBA4()
{
  result = qword_100591958;
  if (!qword_100591958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591958);
  }

  return result;
}

unint64_t sub_10021FBFC()
{
  result = qword_100591960;
  if (!qword_100591960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591960);
  }

  return result;
}

unint64_t sub_10021FC54()
{
  result = qword_100591968;
  if (!qword_100591968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591968);
  }

  return result;
}

unint64_t sub_10021FCAC()
{
  result = qword_100591970;
  if (!qword_100591970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591970);
  }

  return result;
}

unint64_t sub_10021FD04()
{
  result = qword_100591978;
  if (!qword_100591978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591978);
  }

  return result;
}

unint64_t sub_10021FD5C()
{
  result = qword_100591980;
  if (!qword_100591980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591980);
  }

  return result;
}

unint64_t sub_10021FDB4()
{
  result = qword_100591988;
  if (!qword_100591988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591988);
  }

  return result;
}

unint64_t sub_10021FE0C()
{
  result = qword_100591990;
  if (!qword_100591990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591990);
  }

  return result;
}

unint64_t sub_10021FE64()
{
  result = qword_100591998;
  if (!qword_100591998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591998);
  }

  return result;
}

uint64_t sub_10021FEC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 361))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 232);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021FF08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 361) = 1;
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
      *(result + 232) = (a2 - 1);
      return result;
    }

    *(result + 361) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10021FFB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100220000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANInternetSharingStatistics.Provider(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for NANInternetSharingStatistics.Provider(_WORD *result, unsigned int a2, unsigned int a3)
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
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002201DC()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100220270(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1002202CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_100220350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_100220398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100220484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1002204CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANCoreAnalyticsMetrics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC2)
  {
    goto LABEL_17;
  }

  if (a2 + 62 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 62) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 62;
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

      return (*a1 | (v4 << 8)) - 62;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 62;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3F;
  v8 = v6 - 63;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANCoreAnalyticsMetrics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 62 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 62) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC2)
  {
    v4 = 0;
  }

  if (a2 > 0xC1)
  {
    v5 = ((a2 - 194) >> 8) + 1;
    *result = a2 + 62;
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
    *result = a2 + 62;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002206A4()
{
  result = qword_100591A30;
  if (!qword_100591A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591A30);
  }

  return result;
}

unint64_t sub_1002206F8()
{
  result = qword_100591A38;
  if (!qword_100591A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591A38);
  }

  return result;
}

uint64_t sub_10022074C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANInternetSharingStatistics.Requester();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NANWiFiAwareStatistics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANWiFiAwareStatistics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANWiFiAwareAppStatistics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANWiFiAwareAppStatistics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100220A64()
{
  result = qword_100591A50;
  if (!qword_100591A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591A50);
  }

  return result;
}

unint64_t sub_100220ABC()
{
  result = qword_100591A58;
  if (!qword_100591A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591A58);
  }

  return result;
}

unint64_t sub_100220B14()
{
  result = qword_100591A60;
  if (!qword_100591A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591A60);
  }

  return result;
}

void *sub_100220B90(void *(*a1)(uint64_t *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v12[0] = a3;
      LOWORD(v12[1]) = a4;
      BYTE2(v12[1]) = BYTE2(a4);
      BYTE3(v12[1]) = BYTE3(a4);
      BYTE4(v12[1]) = BYTE4(a4);
      BYTE5(v12[1]) = BYTE5(a4);
      v7 = v12 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_100222E80(v8, v9, a1);
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    return sub_100222E80(v8, v9, a1);
  }

  memset(v12, 0, 14);
  v7 = v12;
LABEL_9:
  result = a1(&v11, v12, v7);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_100220CE0(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = _s3SAEVMa(0);
  v30 = *(v12 + 28);
  Logger.init(subsystem:category:)();
  *a6 = a1 & 1;
  v13 = _s3SAEV7ContextCMa(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_100222028(a1 & 1);
  v17 = v16;
  if (!v16)
  {
    sub_10000B02C();
    swift_allocError();
    *v24 = xmmword_1004881C0;
    *(v24 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(a4, a5);
    v19 = v30;
LABEL_8:
    v25 = type metadata accessor for Logger();
    (*(*(v25 - 8) + 8))(a6 + v19, v25);
    if (v17)
    {
      v26 = *(a6 + *(v12 + 32));
    }

    return;
  }

  *(a6 + *(v12 + 32)) = v16;
  *(a6 + 1) = a2;
  *(a6 + 3) = BYTE2(a2);
  *(a6 + 4) = BYTE3(a2);
  *(a6 + 5) = BYTE4(a2);
  *(a6 + 6) = BYTE5(a2);
  *(a6 + 7) = a3;
  *(a6 + 9) = BYTE2(a3);
  *(a6 + 10) = BYTE3(a3);
  *(a6 + 11) = BYTE4(a3);
  *(a6 + 12) = BYTE5(a3);
  sub_10000AB0C(a4, a5);

  sub_100222708(a4, a5, a1 & 1, a6, &v31);
  if (v29)
  {
    sub_1000124C8(a4, a5);
    __break(1u);
    return;
  }

  v18 = v31;
  sub_1000124C8(a4, a5);
  v19 = v30;
  v20 = Logger.logObject.getter();
  if (v18)
  {
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create hash to curve parameter for SAE with error: %d", v22, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v23 = xmmword_1004881C0;
    *(v23 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(a4, a5);

    goto LABEL_8;
  }

  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v20, v27, "init", v28, 2u);
  }

  sub_1000124C8(a4, a5);
}

uint64_t sub_1002210A4()
{
  v1 = v0;
  v2 = _s3SAEVMa(0);
  v3 = *(*&v0[*(v2 + 32)] + 32);
  v4 = ccsae_sizeof_commitment();
  v15 = sub_10014345C(v4);
  v16 = v5;
  v6 = sub_10029D9A4(sub_1002231FC);
  v7 = &v0[*(v2 + 28)];
  v8 = Logger.logObject.getter();
  if (v6)
  {
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to generate SAE commit with error: %d", v10, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v11 = xmmword_1004881C0;
    *(v11 + 16) = 1;
    swift_willThrow();
    return sub_1000124C8(v15, v16);
  }

  else
  {
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v13, "generateCommit", v14, 2u);
    }

    return *v1;
  }
}

uint64_t sub_100221278(uint64_t a1, unint64_t a2)
{
  v4 = _s3SAEVMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  swift_stdlib_random();
  v8 = v47;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_39;
  }

  v10 = HIDWORD(a1) - a1;
LABEL_10:
  v13 = *(v45 + *(v4 + 32));
  v14 = *(v13 + 32);
  if (v10 != ccsae_sizeof_commitment())
  {
    v21 = *(v4 + 28);
    sub_1002230C0(v45, v7);
    sub_10000AB0C(a1, a2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      sub_100223124(v7);
      sub_1000124C8(a1, a2);
LABEL_35:

LABEL_36:
      sub_10000B02C();
      swift_allocError();
      *v42 = xmmword_1004881C0;
      *(v42 + 16) = 1;
      swift_willThrow();
      return v8;
    }

    v24 = swift_slowAlloc();
    *v24 = 134218240;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v36 = *(a1 + 16);
        v35 = *(a1 + 24);
        v37 = __OFSUB__(v35, v36);
        v25 = v35 - v36;
        if (v37)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_34;
    }

    if (!v9)
    {
      v25 = BYTE6(a2);
LABEL_34:
      *(v24 + 4) = v25;
      v8 = v24;
      sub_1000124C8(a1, a2);
      *(v8 + 12) = 2048;
      v40 = *(*&v7[*(v4 + 32)] + 32);
      v41 = ccsae_sizeof_commitment();
      sub_100223124(v7);
      *(v8 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to verify SAE commit from peer because the size %ld is not equal the expected size %ld", v8, 0x16u);

      goto LABEL_35;
    }

    LODWORD(v25) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v25 = v25;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
  }

  __chkstk_darwin();
  *(&v44 - 2) = v45;
  v15 = sub_100220B90(sub_1002231B0, (&v44 - 4), a1, a2);
  if (v15)
  {
    v16 = v15;
    v17 = v45 + *(v4 + 28);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to verify SAE commit from peer with error: %d", v20, 8u);
    }

    goto LABEL_36;
  }

  v26 = *(v13 + 32);
  v27 = ccsae_sizeof_confirmation();
  v47 = sub_10014345C(v27);
  v48 = v28;
  v46 = v8;
  __chkstk_darwin();
  v29 = v45;
  *(&v44 - 2) = v45;
  *(&v44 - 1) = &v46;
  v30 = sub_10029D9A4(sub_1002231CC);
  v31 = v29 + *(v4 + 28);
  v4 = Logger.logObject.getter();
  if (v30)
  {
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109120;
      *(v33 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v4, v32, "Failed to generate SAE confirmation with error: %d", v33, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v34 = xmmword_1004881C0;
    *(v34 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(v47, v48);
    return v8;
  }

LABEL_28:
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v4, v38, "generateConfirmation", v39, 2u);
  }

  return v8;
}

uint64_t sub_1002217CC()
{
  v1 = v0;
  v2 = _s3SAEVMa(0);
  v3 = *(*(v0 + *(v2 + 32)) + 32);
  v4 = ccsae_sizeof_kck_h2c();
  v37 = sub_10014345C(v4);
  v38 = v5;
  v6 = type metadata accessor for __DataStorage();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v36 = __DataStorage.init(length:)() | 0x4000000000000000;
  v9 = *(v6 + 48);
  v10 = *(v6 + 52);
  swift_allocObject();
  v35 = __DataStorage.init(length:)() | 0x4000000000000000;
  v11 = sub_10029D9A4(sub_100222FD8);
  if (v11)
  {
    v12 = v11;
    v13 = v0 + *(v2 + 28);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to generate SAE keys with error: %d", v16, 8u);
LABEL_37:
    }

LABEL_38:

    sub_10000B02C();
    swift_allocError();
    *v34 = xmmword_1004881C0;
    *(v34 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(v37, v38);
    sub_1000124C8(0x1000000000, v35);
    sub_1000124C8(0x2000000000, v36);
    return v12;
  }

  v12 = 0x2000000000;
  v17 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (!v17)
    {
      if (BYTE6(v36) != 32)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v17 != 2)
  {
    goto LABEL_15;
  }

  v18 = MEMORY[0x2000000018] - MEMORY[0x2000000010];
  if (__OFSUB__(MEMORY[0x2000000018], MEMORY[0x2000000010]))
  {
    __break(1u);
LABEL_12:
    v18 = 32;
  }

  sub_10000AB0C(0x2000000000, v36);
  if (v18 != 32)
  {
    goto LABEL_15;
  }

LABEL_14:
  sub_10000AB0C(0x1000000000, v35);
  _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(0x1000000000, v35);
  if (v19 >> 60 != 15)
  {
LABEL_23:
    v24 = v1 + *(v2 + 28);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "generateKeys", v27, 2u);
    }

    sub_1000124C8(v37, v38);
    sub_1000124C8(0x1000000000, v35);
    sub_1000124C8(0x2000000000, v36);
    return v12;
  }

LABEL_15:
  sub_1000124C8(0x2000000000, v36);
  v20 = v1 + *(v2 + 28);
  v14 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v14, v21))
  {
    goto LABEL_38;
  }

  v12 = swift_slowAlloc();
  *v12 = 134218752;
  swift_beginAccess();
  v22 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (v22)
    {
      v23 = 32;
    }

    else
    {
      v23 = BYTE6(v36);
    }

    goto LABEL_27;
  }

  v23 = 0;
  if (v22 == 2)
  {
    v23 = MEMORY[0x2000000018] - MEMORY[0x2000000010];
    if (__OFSUB__(MEMORY[0x2000000018], MEMORY[0x2000000010]))
    {
      __break(1u);
      goto LABEL_23;
    }
  }

LABEL_27:
  *(v12 + 4) = v23;
  *(v12 + 12) = 2048;
  *(v12 + 14) = 32;
  *(v12 + 22) = 2048;
  result = swift_beginAccess();
  v29 = 0x1000000000;
  v30 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    v31 = 0;
    if (v30 != 2)
    {
      goto LABEL_36;
    }

    v29 = MEMORY[0x1000000010];
    v31 = MEMORY[0x1000000018] - MEMORY[0x1000000010];
    if (!__OFSUB__(MEMORY[0x1000000018], MEMORY[0x1000000010]))
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v31 = BYTE6(v35);
LABEL_36:
    *(v12 + 24) = v31;
    *(v12 + 32) = 2048;
    *(v12 + 34) = 16;
    _os_log_impl(&_mh_execute_header, v14, v21, "Failed to generate SAE keys because they were not the correct size for a PMK (%ld, expected %ld and PMKID (%ld, expected %ld", v12, 0x2Au);
    goto LABEL_37;
  }

  v32 = __OFSUB__(HIDWORD(v29), v29);
  v33 = HIDWORD(v29) - v29;
  if (!v32)
  {
    v31 = v33;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

void sub_100221C40(__int16 a1, uint64_t a2, unint64_t a3)
{
  v7 = _s3SAEVMa(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin();
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a2 + 16);
    v13 = *(a2 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    goto LABEL_34;
  }

  v12 = HIDWORD(a2) - a2;
LABEL_10:
  v15 = *(*(v3 + *(v7 + 32)) + 32);
  if (v12 != ccsae_sizeof_confirmation())
  {
    v21 = *(v7 + 28);
    sub_1002230C0(v3, v10);
    sub_10000AB0C(a2, a3);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      sub_100223124(v10);
      sub_1000124C8(a2, a3);
LABEL_31:

LABEL_32:
      sub_10000B02C();
      swift_allocError();
      *v34 = xmmword_1004881C0;
      *(v34 + 16) = 1;
      swift_willThrow();
      return;
    }

    v24 = swift_slowAlloc();
    *v24 = 134218240;
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        v25 = 0;
        goto LABEL_30;
      }

      v29 = *(a2 + 16);
      v28 = *(a2 + 24);
      v30 = __OFSUB__(v28, v29);
      v25 = v28 - v29;
      if (!v30)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v11)
    {
      v25 = BYTE6(a3);
LABEL_30:
      *(v24 + 4) = v25;
      v31 = v24;
      sub_1000124C8(a2, a3);
      *(v31 + 12) = 2048;
      v32 = *(*&v10[*(v7 + 32)] + 32);
      v33 = ccsae_sizeof_confirmation();
      sub_100223124(v10);
      *(v31 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to verify SAE confirmation from peer because the size %ld is not equal the expected size %ld", v31, 0x16u);

      goto LABEL_31;
    }

    LODWORD(v25) = HIDWORD(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v25 = v25;
      goto LABEL_30;
    }

LABEL_34:
    __break(1u);
  }

  v36 = a1;
  __chkstk_darwin();
  *&v35[-16] = v3;
  *&v35[-8] = &v36;
  v16 = sub_100220B90(sub_100223180, &v35[-32], a2, a3);
  v17 = v3 + *(v7 + 28);
  v18 = Logger.logObject.getter();
  if (v16)
  {
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to verify SAE confirmation from peer with error: %d", v20, 8u);
    }

    goto LABEL_32;
  }

  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v18, v26, "verifyConfirmation", v27, 2u);
  }
}

char *sub_100222028(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCVV7CoreP2P10NANPairing3SAEP33_4B94487B91F65D95BFC0BE9A4FCAE2417Context_logger;
  Logger.init(subsystem:category:)();
  if (a1)
  {
    if (!ccec_cp_384())
    {
      goto LABEL_14;
    }
  }

  else if (!ccec_cp_256())
  {
LABEL_14:
    (*(v5 + 8))(&v2[v9], v4);
    _s3SAEV7ContextCMa(0);
    v15 = *(*v2 + 48);
    v16 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!ccrng())
  {
    goto LABEL_14;
  }

  v10 = ccsae_sizeof_ctx();
  v11 = swift_slowAlloc();
  *(v2 + 2) = v11;
  *(v2 + 3) = v11 + v10;
  *(v2 + 4) = v11;
  if ((a1 & 1) == 0)
  {
    if (!ccsae_init_p256_sha256())
    {
      sub_1004772D8();
      goto LABEL_17;
    }

LABEL_10:
    (*(v5 + 16))(v8, &v2[v9], v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to initialize SAE", v14, 2u);
    }

    (*(v5 + 8))(v8, v4);
    if (*(v2 + 2))
    {
    }

    goto LABEL_14;
  }

  if (ccsae_init_p384_sha384())
  {
    goto LABEL_10;
  }

  sub_1004772E4();
LABEL_17:
  *(v2 + 6) = ccsae_sizeof_pt();
  *(v2 + 5) = swift_slowAlloc();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "context init", v20, 2u);
  }

  return v2;
}

uint64_t sub_10022234C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {
  }

  v7 = *(v1 + 40);

  v8 = OBJC_IVAR____TtCVV7CoreP2P10NANPairing3SAEP33_4B94487B91F65D95BFC0BE9A4FCAE2417Context_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtCVV7CoreP2P10NANPairing3SAEP33_4B94487B91F65D95BFC0BE9A4FCAE2417Context_logger, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "context deinit", v11, 2u);
  }

  v12 = *(v3 + 8);
  v12(v6, v2);
  v12((v1 + v8), v2);
  return v1;
}

uint64_t sub_1002224E8()
{
  v0 = *sub_10022234C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100222564()
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

uint64_t sub_100222664()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = _s3SAEV7ContextCMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100222708@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X6>, _DWORD *a5@<X8>)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {

      if (a3)
      {
        v9 = a4;
        sub_1004772E4();
      }

      else
      {
        v9 = a4;
        sub_1004772D8();
      }

      String.count.getter();
      v19 = *(*(v9 + *(_s3SAEVMa(0) + 32)) + 40);
LABEL_24:
      h2c_pt = ccsae_generate_h2c_pt();

LABEL_32:
      *a5 = h2c_pt;
      return result;
    }

    v15 = a5;
    v16 = a1;
    if (a1 >> 32 >= a1)
    {

      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = __DataStorage._offset.getter();
      if (!__OFSUB__(v16, v18))
      {
        v17 += v16 - v18;
LABEL_16:
        a5 = v15;
        __DataStorage._length.getter();
        if (a3)
        {
          sub_1004772E4();
        }

        else
        {
          sub_1004772D8();
        }

        result = String.count.getter();
        if (v17)
        {
          v23 = *(a4 + *(_s3SAEVMa(0) + 32));
          goto LABEL_31;
        }

        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v8 != 2)
  {

    if (a3)
    {
      sub_1004772E4();
    }

    else
    {
      sub_1004772D8();
    }

    String.count.getter();
    v20 = *(*(a4 + *(_s3SAEVMa(0) + 32)) + 40);
    goto LABEL_24;
  }

  v10 = a5;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);

  v13 = __DataStorage._bytes.getter();
  if (v13)
  {
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v11, v14))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v13 += v11 - v14;
  }

  if (__OFSUB__(v12, v11))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __DataStorage._length.getter();
  if (a3)
  {
    sub_1004772E4();
  }

  else
  {
    sub_1004772D8();
  }

  a5 = v10;
  result = String.count.getter();
  if (v13)
  {
    v23 = *(a4 + *(_s3SAEVMa(0) + 32));
LABEL_31:
    v24 = *(v23 + 40);
    h2c_pt = ccsae_generate_h2c_pt();

    goto LABEL_32;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100222A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X8>)
{
  v8 = *(a3 + 5);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004817D0;
  *(v9 + 32) = *(a3 + 1);
  *(v9 + 36) = v8;
  v10 = sub_10002D874(v9);
  v12 = v11;

  v15[2] = a3;
  v15[3] = a1;
  v15[4] = a2;
  v13 = sub_100220B90(sub_100223218, v15, v10, v12);
  result = sub_1000124C8(v10, v12);
  *a4 = v13;
  return result;
}

uint64_t sub_100222B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X8>)
{
  v19 = a6;
  v11 = *(a3 + 11);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004817D0;
  *(v12 + 32) = *(a3 + 7);
  *(v12 + 36) = v11;
  v13 = sub_10002D874(v12);
  v15 = v14;

  v18[2] = a3;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a4;
  v18[6] = a5;
  v16 = sub_100220B90(sub_100223238, v18, v13, v15);
  result = sub_1000124C8(v13, v15);
  *v19 = v16;
  return result;
}

uint64_t sub_100222C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, _DWORD *a5@<X8>)
{
  result = _s3SAEVMa(0);
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
    v11 = *(a2 + *(result + 32));
    v12 = v11[5];
    v13 = v11[6];
    v14 = v11[4];
    result = ccsae_generate_h2c_commit();
    *a5 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100222D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  result = _s3SAEVMa(0);
  if (a1)
  {
    v7 = *(*(a2 + *(result + 32)) + 32);
    result = ccsae_verify_commitment();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100222D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, _DWORD *a5@<X8>)
{
  result = _s3SAEVMa(0);
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1)
  {
    v11 = *(*(a2 + *(result + 32)) + 32);
    result = ccsae_get_keys();
    *a5 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100222E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X4>, _DWORD *a5@<X8>)
{
  result = _s3SAEVMa(0);
  if (a1)
  {
    result = a4(*(*(a2 + *(result + 32)) + 32), a3, a1);
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100222E80(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_100222F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_100222FD8@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = sub_10029D9A4(sub_100223034);
  *a1 = result;
  return result;
}

uint64_t sub_100223034@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  result = sub_10029D9A4(sub_100223094);
  *a1 = result;
  return result;
}

uint64_t sub_1002230C0(uint64_t a1, uint64_t a2)
{
  v4 = _s3SAEVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100223124(uint64_t a1)
{
  v2 = _s3SAEVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SystemInfo.string(for:)()
{
  sub_100223578(v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000BA934(v2);
    return 0;
  }
}

uint64_t sub_100223504()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_100591BE0);
  sub_100037644(v0, qword_100591BE0);
  return Logger.init(subsystem:category:)();
}

double sub_100223578@<D0>(uint64_t a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = MGCopyAnswerWithError();

  if (v3)
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t LinkStatistics.description.getter()
{
  _StringGuts.grow(_:)(104);
  v0._object = 0x80000001004BD520;
  v0._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6B6361507874202CLL;
  v2._object = 0xED0000203A737465;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6B6361507872202CLL;
  v4._object = 0xED0000203A737465;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A616363202CLL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x534249616363202CLL;
  v8._object = 0xEB00000000203A53;
  String.append(_:)(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x53424F616363202CLL;
  v10._object = 0xEB00000000203A53;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6E6F4E616363202CLL;
  v12._object = 0xEE00203A69466957;
  String.append(_:)(v12);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

uint64_t LinkStatistics.encode(to:)(void *a1)
{
  v2 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v4, v5);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

Swift::Void __swiftcall LinkStatistics.update(snr:txPackets:rxPackets:cca:ccaIBSS:ccaOBSS:ccaNonWiFi:)(Swift::UInt8 snr, Swift::UInt32 txPackets, Swift::UInt32 rxPackets, Swift::UInt8 cca, Swift::UInt8 ccaIBSS, Swift::UInt8 ccaOBSS, Swift::UInt8 ccaNonWiFi)
{
  *v7 = snr;
  v8 = *(v7 + 8) + rxPackets;
  *(v7 + 4) += txPackets;
  *(v7 + 8) = v8;
  *(v7 + 12) = cca;
  *(v7 + 13) = ccaIBSS;
  *(v7 + 14) = ccaOBSS;
  *(v7 + 15) = ccaNonWiFi;
}

void LinkStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIDWORD(a2);
  v5 = HIDWORD(a3);
  v6 = a3 >> 40;
  v7 = HIWORD(a3);
  v8 = HIBYTE(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
}

Swift::Int LinkStatistics.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  v7 = HIWORD(a2);
  v8 = HIBYTE(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

Swift::Int sub_100223E48()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *v0;
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  v6 = *(v0 + 14);
  v7 = *(v0 + 15);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_100223F04()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 13);
  v5 = *(v0 + 14);
  v6 = *(v0 + 15);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_100223F8C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *v0;
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  v6 = *(v0 + 14);
  v7 = *(v0 + 15);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t sub_100224044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002259D0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = HIDWORD(result);
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100224098(void *a1)
{
  v2 = *v1 | (*(v1 + 1) << 32);
  v3 = *(v1 + 1);
  return LinkStatistics.encode(to:)(a1);
}

uint64_t sub_1002240C0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 1);
  return LinkStatistics.description.getter();
}

uint64_t MCSStatistics.encode(to:)(void *a1)
{
  v2 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v4, v5);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

void MCSStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = HIDWORD(a2);
  v7 = HIDWORD(a3);
  v8 = HIDWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v8);
}

Swift::Int MCSStatistics.hashValue.getter(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

Swift::Int sub_10022443C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *v0;
  v6 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void sub_1002244E4()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 20);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_10022455C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *v0;
  v6 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t sub_100224600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100225C84(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = HIDWORD(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 20) = BYTE4(v6);
  }

  return result;
}

uint64_t sub_100224644(void *a1)
{
  v2 = *(v1 + 1);
  v3 = *v1 | (*(v1 + 1) << 32);
  v4 = *(v1 + 4) | (v1[20] << 32);
  return MCSStatistics.encode(to:)(a1);
}

uint64_t NANMulticastLinkCondition.encode(to:)(void *a1, uint64_t a2)
{
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = *(a2 + 16);
  sub_100031694(v23, v24);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
    return sub_100002A00(v23);
  }

  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v25 = a2;
  v21 = v10;
  for (i = a2 + 64; v9; v6 = i)
  {
    v13 = v12;
LABEL_9:
    v14 = *(*(a2 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
    sub_100031694(v23, v24);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (*(a2 + 16))
    {
      v15 = sub_10007CCC8(v14);
      if (v16)
      {
        v17 = (*(a2 + 56) + 24 * v15);
        v18 = *(v17 + 1);
        v19 = *v17 | (*(v17 + 1) << 32);
        v20 = *(v17 + 4) | (v17[20] << 32);
      }
    }

    sub_100031694(v23, v24);
    sub_10005DC58(&qword_100591BF8, &unk_10049BF90);
    sub_10022663C(&qword_100591C00, &qword_100591BF8, &unk_10049BF90, sub_100226594);
    result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v9 &= v9 - 1;
    v12 = v13;
    a2 = v25;
    v10 = v21;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return sub_100002A00(v23);
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int NANMulticastLinkCondition.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_10022499C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002249EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_100224A30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = NANMulticastLinkCondition.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void NANMulticastStatsPerMCS.snr.getter(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v4 = __exp10(*&a3 / a2);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 256.0)
      {
        return;
      }

LABEL_8:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }
}

void __swiftcall NANMulticastStatsPerMCS.init(packets:MPDU:snr:)(CoreP2P::NANMulticastStatsPerMCS *__return_ptr retstr, Swift::UInt32 packets, Swift::UInt32 MPDU, Swift::UInt8_optional snr)
{
  if ((*&snr & 0x100) == 0)
  {
    log(snr.value);
  }
}

void sub_100224B80(unsigned __int8 a1)
{
  if (*(v1 + 24))
  {
    v2 = log(a1) / 2.30258509;
  }

  else
  {
    v3 = *(v1 + 16);
    v2 = log(a1) / 2.30258509 + v3;
    if (fabs(v2) == INFINITY)
    {
      return;
    }
  }

  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  ++*(v1 + 8);
}

Swift::Void __swiftcall NANMulticastStatsPerMCS.addValues(packets:MPDU:snr:)(Swift::UInt32 packets, Swift::UInt32 MPDU, Swift::UInt8_optional snr)
{
  v4 = v3[1] + MPDU;
  *v3 += packets;
  v3[1] = v4;
  if ((*&snr & 0x100) == 0)
  {
    sub_100224B80(snr.value);
  }
}

unint64_t NANMulticastStatsPerMCS.init(from:)(uint64_t *a1)
{
  result = sub_1002257B4(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t NANMulticastStatsPerMCS.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v7, v8);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v3)
  {
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v7, v8);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (a3)
    {
      sub_100031694(v7, v8);
      sub_10005DC58(&qword_100591C10, &qword_1004B2410);
      sub_100226A20(&qword_100591C18);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }
  }

  return sub_100002A00(v7);
}

uint64_t static NANMulticastStatsPerMCS.__derived_struct_equals(_:_:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6)
  {
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void NANMulticastStatsPerMCS.hash(into:)(int a1, unint64_t a2, Swift::UInt32 a3, Swift::UInt64 a4, char a5)
{
  v8 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(a3);
  if (a5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }
}

Swift::Int NANMulticastStatsPerMCS.hashValue.getter(unint64_t a1, Swift::UInt32 a2, Swift::UInt64 a3, char a4)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(a2);
  if (a4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100224FA4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  NANMulticastStatsPerMCS.hash(into:)(&v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

unint64_t sub_100225008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002257B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100225048(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return NANMulticastStatsPerMCS.encode(to:)(a1, *v1, *(v1 + 8));
}

uint64_t sub_100225078(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

CoreP2P::NANMulticastTxStats __swiftcall NANMulticastTxStats.init(tsf:dwIndex:)(CoreP2P::NANTimeSynchronizationFunction tsf, CoreP2P::NANDiscoveryWindowIndex dwIndex)
{
  v4 = sub_100082094(_swiftEmptyArrayStorage);
  index = dwIndex.index;
  value = tsf.value;
  result.tsf.value = value;
  result.dwIndex.index = index;
  result.txStats._rawValue = v4;
  return result;
}

uint64_t NANMulticastTxStats.init(from:)(uint64_t *a1)
{
  result = sub_100225EE0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t NANMulticastTxStats.encode(to:)(void *a1, uint64_t a2)
{
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v23, v24);
  sub_1002265E8();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v2)
  {
    return sub_100002A00(v23);
  }

  sub_100031694(v23, v24);
  sub_100160960();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v5 = *(a2 + 16);
  sub_100031694(v23, v24);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v25 = a2;
  v21 = v10;
  for (i = a2 + 64; v9; v6 = i)
  {
    v13 = v12;
LABEL_9:
    v14 = *(*(a2 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
    sub_100031694(v23, v24);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (*(a2 + 16))
    {
      v15 = sub_10007CCC8(v14);
      if (v16)
      {
        v17 = *(a2 + 56) + 32 * v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        LOBYTE(v17) = *(v17 + 24);
      }
    }

    sub_100031694(v23, v24);
    sub_10005DC58(&qword_100591C28, &qword_10049BFA0);
    sub_10022663C(&qword_100591C30, &qword_100591C28, &qword_10049BFA0, sub_1002266B8);
    result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v9 &= v9 - 1;
    v12 = v13;
    a2 = v25;
    v10 = v21;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return sub_100002A00(v23);
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static NANMulticastTxStats.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1000CE004(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void NANMulticastTxStats.hash(into:)(__int128 *a1, uint64_t a2, Swift::UInt a3, Swift::UInt64 a4)
{
  sub_1000D05AC(a1, a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int NANMulticastTxStats.hashValue.getter(uint64_t a1, Swift::UInt a2, Swift::UInt64 a3)
{
  Hasher.init(_seed:)();
  sub_1000D05AC(v7, a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100225538()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_1000D05AC(v5, v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1002255A4(__int128 *a1)
{
  v2 = v1[1];
  v3 = v1[2];
  sub_1000D05AC(a1, *v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002255EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_1000D05AC(v5, v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100225654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = NANMulticastTxStats.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100225684(void *a1)
{
  v2 = v1[1];
  v3 = v1[2];
  return NANMulticastTxStats.encode(to:)(a1, *v1);
}

BOOL sub_1002256A4(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_1000CE004(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

BOOL sub_1002256FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = BYTE4(a3) == BYTE4(a6);
  if (a3 != a6)
  {
    v6 = 0;
  }

  if (a2 != a5)
  {
    v6 = 0;
  }

  if ((a4 ^ a1) >> 32)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return a1 == a4 && v7;
}

BOOL sub_10022573C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 == a3 && !((a3 ^ a1) >> 32))
  {
    v6 = BYTE6(a2) == BYTE6(a4) && (a4 ^ a2) >> 56 == 0;
    v7 = BYTE5(a2) == BYTE5(a4) && v6;
    v8 = BYTE4(a2) == BYTE4(a4) && v7;
    return a2 == a4 && v8;
  }

  return result;
}

unint64_t sub_1002257B4(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  sub_10005DC58(&qword_100591C10, &qword_1004B2410);
  sub_100226A20(&qword_100591C78);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v6);
  sub_100002A00(a1);
  return v5 | (v5 << 32);
}

uint64_t sub_1002259D0(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v9;
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v9;
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v7);
  sub_100002A00(a1);
  return v4 | (v5 << 32);
}

uint64_t sub_100225C84(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v9;
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v9;
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v7, v8);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v7);
  sub_100002A00(a1);
  return v4 | (v5 << 32);
}

uint64_t sub_100225EE0(uint64_t *a1)
{
  v3 = sub_100082094(_swiftEmptyArrayStorage);
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);

    return v3;
  }

  sub_100031694(v29, v30);
  sub_100226978();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v29, v30);
  sub_10003D59C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v29, v30);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v25;
  if ((v25 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!v25)
  {
LABEL_7:
    sub_100002A00(v29);
    sub_100002A00(a1);
    return v3;
  }

  while (1)
  {
    sub_100031694(v29, v30);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v8 = v25;
    sub_100031694(v29, v30);
    sub_1002269CC();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v23 = v6;
    v9 = v25;
    v24 = HIDWORD(v25);
    v31 = v26;
    v32 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v3;
    v12 = sub_10007CCC8(v8);
    v13 = v3[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    if (v3[3] >= v15)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v11)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100196294();
        if (v16)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_10018E770(v15, isUniquelyReferenced_nonNull_native);
      v17 = sub_10007CCC8(v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_24;
      }

      v12 = v17;
      if (v16)
      {
LABEL_8:
        v7 = v3[7] + 32 * v12;
        *v7 = v9;
        *(v7 + 4) = v24;
        *(v7 + 8) = v31;
        *(v7 + 16) = v27;
        *(v7 + 24) = v32;
        goto LABEL_9;
      }
    }

    v3[(v12 >> 6) + 8] |= 1 << v12;
    *(v3[6] + v12) = v8;
    v19 = v3[7] + 32 * v12;
    *v19 = v9;
    *(v19 + 4) = v24;
    *(v19 + 8) = v31;
    *(v19 + 16) = v27;
    *(v19 + 24) = v32;
    v20 = v3[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_22;
    }

    v3[2] = v22;
LABEL_9:
    v6 = v23 - 1;
    if (v23 == 1)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100226288(uint64_t *a1)
{
  v3 = sub_100081F84(_swiftEmptyArrayStorage);
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {

    sub_100002A00(a1);
    return v3;
  }

  sub_100031694(v35, v36);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v30;
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!v30)
  {
LABEL_20:
    sub_100002A00(v35);
    sub_100002A00(a1);
    return v3;
  }

  v28 = a1;
  while (1)
  {
    sub_100031694(v35, v36);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v10 = v30;
    sub_100031694(v35, v36);
    sub_100226A8C();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v29 = v6;
    v11 = v30;
    v12 = HIDWORD(v30);
    v37 = v33;
    v38 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v3;
    v14 = sub_10007CCC8(v10);
    v16 = v3[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v3[3] < v19)
    {
      sub_10018E13C(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_10007CCC8(v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v27 = v14;
    sub_100195EA4();
    v14 = v27;
    v3 = v30;
    if (v20)
    {
LABEL_8:
      v7 = v3[7] + 24 * v14;
      *v7 = v11;
      *(v7 + 4) = v12;
      *(v7 + 8) = v31;
      v9 = v37;
      v8 = v38;
      *(v7 + 12) = v32;
      *(v7 + 16) = v9;
      *(v7 + 20) = v8;
      goto LABEL_9;
    }

LABEL_16:
    v3[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + v14) = v10;
    v22 = v3[7] + 24 * v14;
    *v22 = v11;
    *(v22 + 4) = v12;
    *(v22 + 8) = v31;
    v24 = v37;
    v23 = v38;
    *(v22 + 12) = v32;
    *(v22 + 16) = v24;
    *(v22 + 20) = v23;
    v25 = v3[2];
    v18 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v18)
    {
      goto LABEL_22;
    }

    v3[2] = v26;
LABEL_9:
    a1 = v28;
    --v6;
    if (v29 == 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100226594()
{
  result = qword_100591C08;
  if (!qword_100591C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C08);
  }

  return result;
}

unint64_t sub_1002265E8()
{
  result = qword_100591C20;
  if (!qword_100591C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C20);
  }

  return result;
}

uint64_t sub_10022663C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002266B8()
{
  result = qword_100591C38;
  if (!qword_100591C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C38);
  }

  return result;
}

unint64_t sub_100226710()
{
  result = qword_100591C40;
  if (!qword_100591C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C40);
  }

  return result;
}

unint64_t sub_100226768()
{
  result = qword_100591C48;
  if (!qword_100591C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C48);
  }

  return result;
}

unint64_t sub_1002267C0()
{
  result = qword_100591C50;
  if (!qword_100591C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C50);
  }

  return result;
}

unint64_t sub_100226818()
{
  result = qword_100591C58;
  if (!qword_100591C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C58);
  }

  return result;
}

unint64_t sub_100226870()
{
  result = qword_100591C60;
  if (!qword_100591C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C60);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MCSStatistics(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MCSStatistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MCSStatistics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 21) = v3;
  return result;
}

unint64_t sub_100226978()
{
  result = qword_100591C68;
  if (!qword_100591C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C68);
  }

  return result;
}

unint64_t sub_1002269CC()
{
  result = qword_100591C70;
  if (!qword_100591C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C70);
  }

  return result;
}

uint64_t sub_100226A20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&qword_100591C10, &qword_1004B2410);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100226A8C()
{
  result = qword_100591C80;
  if (!qword_100591C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591C80);
  }

  return result;
}

char *sub_100226AE0(char *result, uint64_t a2, uint64_t a3)
{
  v13 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10002D838(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = a2;
    if (a2 <= v13)
    {
      v6 = v13;
    }

    v11 = v6 - v13 + 1;
    while (v5 < v4)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      v8 = *(a3 + 32);
      sub_100031694(a3, *(a3 + 24));
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v3)
      {

        return _swiftEmptyArrayStorage;
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_10002D838((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v15;
      if (a2 < v13)
      {
        goto LABEL_20;
      }

      if (v11 == ++v5)
      {
        goto LABEL_21;
      }

      if (v7 == v4)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_100226C68(unsigned int a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = (HIWORD(a1) - a1);
  v16 = HIWORD(a1);
  v17 = a1;
  if (HIWORD(a1) < a1)
  {
    v6 = -(a1 - HIWORD(a1));
  }

  else
  {
    v6 = (HIWORD(a1) - a1);
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  result = a3(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    LODWORD(v9) = v16 - v17;
    if (v16 >= v17)
    {
      v9 = v9;
    }

    else
    {
      v9 = 0;
    }

    v10 = -v9;
    while (v6)
    {
      v11 = *(a2 + 32);
      sub_100031694(a2, *(a2 + 24));
      a4();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v4)
      {

        return _swiftEmptyArrayStorage;
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = a3(v12 > 1, v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = v18;
      if (v16 < v17)
      {
        goto LABEL_21;
      }

      if (!v10)
      {
        goto LABEL_22;
      }

      ++v10;
      --v6;
      if (!--v5)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100226DFC(unsigned int a1, uint64_t a2)
{
  v3 = (HIWORD(a1) - a1);
  v13 = HIWORD(a1);
  v14 = a1;
  if (HIWORD(a1) < a1)
  {
    v4 = -(a1 - HIWORD(a1));
  }

  else
  {
    v4 = (HIWORD(a1) - a1);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1000C04E4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    LODWORD(v7) = v13 - v14;
    if (v13 >= v14)
    {
      v7 = v7;
    }

    else
    {
      v7 = 0;
    }

    v8 = -v7;
    while (v4)
    {
      v9 = *(a2 + 32);
      sub_100031694(a2, *(a2 + 24));
      sub_1002325C4();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v2)
      {

        return _swiftEmptyArrayStorage;
      }

      v10 = v15;
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_1000C04E4((v11 > 1), v12 + 1, 1);
        v10 = v15;
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *&_swiftEmptyArrayStorage[2 * v12 + 4] = v10;
      if (v13 < v14)
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        goto LABEL_22;
      }

      ++v8;
      --v4;
      if (!--v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement.unsafeMutableAddressor()
{
  if (qword_10058AAE8 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
}

uint64_t Collection<>.rsnCapability.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  result = Sequence.first(where:)();
  *(v14 + 9) = *&v12[9];
  *v13 = v10;
  *&v13[16] = v11;
  v14[0] = *v12;
  v5 = 0uLL;
  if (v12[24] == 255)
  {
    goto LABEL_5;
  }

  if (v12[24])
  {
    result = sub_100016290(v13, &qword_10058DF90, &unk_100488560);
    v5 = 0uLL;
LABEL_5:
    v9 = 0;
    v7 = 0;
    v6 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v6 = *&v14[0];
  v7 = *&v13[24];
  v5 = *&v13[8];
  v8 = BYTE8(v14[0]);
  v9 = *v13 & 0xFFFFFF;
LABEL_6:
  *a2 = v9;
  *(a2 + 8) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  return result;
}

uint64_t Collection<>.extendedRSNCapability.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  Sequence.first(where:)();
  *&v8[9] = *&v6[9];
  v7[0] = v4;
  v7[1] = v5;
  *v8 = *v6;
  if (v6[24] != 255)
  {
    if (v6[24] == 1)
    {
      return *&v7[0];
    }

    sub_100016290(v7, &qword_10058DF90, &unk_100488560);
  }

  return 0;
}

uint64_t Collection<>.preAssociationSecurityNegotiationParameters.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  result = Sequence.first(where:)();
  *&v14[9] = *&v11[9];
  v12 = v9;
  v13 = v10;
  *v14 = *v11;
  if (v11[24] == 6)
  {
    v7 = *&v14[16];
    v8 = v13;
    v5 = *v14;
    v6 = v12;
  }

  else
  {
    v5 = xmmword_10049C490;
    v6 = 0uLL;
    if (v11[24] != 255)
    {
      result = sub_100016290(&v12, &qword_10058DF90, &unk_100488560);
      v6 = 0uLL;
      v5 = xmmword_10049C490;
    }

    v7 = 0;
    v8 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = v5;
  *(a2 + 48) = v7;
  return result;
}

uint64_t Collection<>.nanIE.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  Sequence.first(where:)();
  *&v8[9] = *&v6[9];
  v7[0] = v4;
  v7[1] = v5;
  *v8 = *v6;
  if (v6[24] != 255)
  {
    if (v6[24] == 8)
    {
      return *&v7[0];
    }

    sub_100016290(v7, &qword_10058DF90, &unk_100488560);
  }

  return 0;
}

uint64_t static IEEE80211InformationElement.HighThroughputCapability.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a1 & 0xFFFFFFFFFFLL) == (a4 & 0xFFFFFFFFFFLL))
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
  }

  else
  {
    return 0;
  }
}