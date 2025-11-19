uint64_t sub_100ADFAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100ADFB1C, 0, 0);
}

uint64_t sub_100ADFB1C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[7] = v0[2];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1006B9824;
  v4 = v0[5];
  v3 = v0[6];

  return sub_100731BF4(v4, v3, v3, 0, 0, 0);
}

uint64_t sub_100ADFC20(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, v58);
  v14 = sub_100AE0164(0, v4, v58, a3, a4, a2);
  v18 = v17;
  if (v16 == 3 && (v14 | v15) == 0)
  {

    v32 = sub_100AE0164(1, v4, v58, a3, a4, a2);
    v34 = v33;
    v36 = v35;
    v18 = v37;
    sub_100007BAC(v58);
    sub_100359088(v32, v34, v36);
    if (*(v18 + 16))
    {
      return v18;
    }

    goto LABEL_13;
  }

  v53 = a2;
  sub_100359088(v14, v15, v16);
  sub_100007BAC(v58);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177BA08);
  sub_10001F280(a1, v55);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = a4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v54 = v25;
    *v24 = 134218499;
    *(v24 + 4) = *(v18 + 16);

    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    v51 = a3;
    v27 = v56;
    v26 = v57;
    sub_1000035D0(v55, v56);
    (*(*(*(v26 + 8) + 8) + 32))(v27);
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v10 + 8))(v13, v9);
    sub_100007BAC(v55);
    v31 = sub_1000136BC(v28, v30, &v54);
    a3 = v51;

    *(v24 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "Found %ld matching hint advertisements for beacon %{private,mask.hash}s.", v24, 0x20u);
    sub_100007BAC(v25);

    a4 = v52;
  }

  else
  {

    sub_100007BAC(v55);
  }

  LOBYTE(a2) = v53;
  if (!*(v18 + 16))
  {
LABEL_13:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_101385D80;
    *(v38 + 56) = &type metadata for UInt8;
    *(v38 + 64) = &protocol witness table for UInt8;
    *(v38 + 32) = a2;
    v39 = String.init(format:_:)();
    v41 = v40;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177BA08);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = a2;
      v46 = swift_slowAlloc();
      v47 = a3;
      v48 = swift_slowAlloc();
      v55[0] = v48;
      *v46 = 16778242;
      *(v46 + 4) = v45;
      *(v46 + 5) = 2080;
      v49 = sub_1000136BC(v39, v41, v55);

      *(v46 + 7) = v49;
      *(v46 + 15) = 2048;
      *(v46 + 17) = v47;
      *(v46 + 25) = 2048;
      *(v46 + 27) = a4;
      _os_log_impl(&_mh_execute_header, v43, v44, "No matches for the provided criteria: sequence: .primary, hint: %hhu - hex %s,\nstartBucket: %llu, endBucket: %llu.", v46, 0x23u);
      sub_100007BAC(v48);
    }

    else
    {
    }
  }

  return v18;
}

uint64_t sub_100AE0164(int a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v253 = a5;
  v236 = a4;
  v235 = a1;
  LODWORD(v249) = a6;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v234[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v234[-v13];
  v251 = _s18ConnectionKeyGroupVMa();
  v243 = *(v251 - 8);
  v15 = *(v243 + 64);
  v16 = __chkstk_darwin(v251);
  v242 = &v234[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v241 = &v234[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v234[-v21];
  v23 = __chkstk_darwin(v20);
  v238 = &v234[-v24];
  __chkstk_darwin(v23);
  v237 = &v234[-v25];
  v252 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v250 = *(v252 - 8);
  v26 = *(v250 + 64);
  v27 = __chkstk_darwin(v252);
  v29 = &v234[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __chkstk_darwin(v27);
  v32 = &v234[-v31];
  __chkstk_darwin(v30);
  i = &v234[-v33];
  v35 = type metadata accessor for TimeBasedKey();
  v254 = *(v35 - 8);
  v255 = v35;
  v36 = *(v254 + 64);
  v37 = __chkstk_darwin(v35);
  v248 = &v234[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __chkstk_darwin(v37);
  v245 = &v234[-v40];
  v41 = __chkstk_darwin(v39);
  v240 = &v234[-v42];
  v43 = __chkstk_darwin(v41);
  v246 = &v234[-v44];
  v45 = __chkstk_darwin(v43);
  v247 = &v234[-v46];
  v47 = __chkstk_darwin(v45);
  v244 = &v234[-v48];
  v49 = __chkstk_darwin(v47);
  v239 = &v234[-v50];
  __chkstk_darwin(v49);
  v52 = &v234[-v51];
  sub_10001F280(a3, &v258);
  v53 = swift_allocObject();
  *(v53 + 16) = a2;
  sub_10000A748(&v258, v53 + 24);
  v54 = v253;
  *(v53 + 64) = v236;
  *(v53 + 72) = v54;
  *(v53 + 80) = v235;

  unsafeFromAsyncTask<A>(_:)();

  v236 = *(&v258 + 1);
  v55 = v258;
  v253 = v258;
  v235 = v259;
  if (v259 <= 1u)
  {
    if (!v259)
    {
      v237 = v12;
      v56 = *(v258 + 16);
      i = _swiftEmptyArrayStorage;
      v247 = v32;
      v242 = v56;
      if (v56)
      {
        v57 = 0;
        while (1)
        {
          v58 = *(v55 + 16);
          if (v57 >= v58)
          {
            goto LABEL_178;
          }

          v53 = (*(v254 + 80) + 32) & ~*(v254 + 80);
          v59 = *(v254 + 72);
          v60 = v55 + v53 + v59 * v57;
          v61 = v246;
          sub_100022A54(v60, v246, type metadata accessor for TimeBasedKey);
          v62 = sub_100A7A194(*&v61[*(v255 + 24) + 16], *&v61[*(v255 + 24) + 24]);
          a3 = sub_100A7829C(v62, 0);
          v22 = v63;
          CCECCryptorRelease();
          v58 = v22 >> 62;
          v244 = v53;
          if ((v22 >> 62) > 1)
          {
            if (v58 != 2)
            {
              goto LABEL_270;
            }

            v66 = *(a3 + 2);
            v65 = *(a3 + 3);
            v67 = __OFSUB__(v65, v66);
            v64 = v65 - v66;
            if (v67)
            {
              goto LABEL_190;
            }
          }

          else if (v58)
          {
            LODWORD(v64) = HIDWORD(a3) - a3;
            if (__OFSUB__(HIDWORD(a3), a3))
            {
              goto LABEL_188;
            }

            v64 = v64;
          }

          else
          {
            v64 = BYTE6(v22);
          }

          if (v64 != 28)
          {
            goto LABEL_212;
          }

          v68 = i;
          sub_100017D5C(a3, v22);
          v69 = static MACAddress.length.getter();
          sub_10002EA98(v69, a3, v22, &v258);
          v32 = *(&v258 + 1);
          i = v258;
          v58 = *(&v258 + 1) >> 62;
          if ((*(&v258 + 1) >> 62) > 1)
          {
            if (v58 != 2)
            {
              goto LABEL_247;
            }

            v58 = *(v258 + 16);
            if (v58 > 5)
            {
              goto LABEL_192;
            }

            v58 = *(v258 + 24);
            if (v58 < 6)
            {
              goto LABEL_198;
            }

            v71 = __DataStorage._bytes.getter();
            if (!v71)
            {
              goto LABEL_251;
            }

            v53 = v71;
            v72 = __DataStorage._offset.getter();
            v58 = 5 - v72;
            if (__OFSUB__(5, v72))
            {
              goto LABEL_202;
            }
          }

          else
          {
            if (!v58)
            {
              LODWORD(v58) = 0;
              if ((*(&v258 + 1) & 0xFE000000000000uLL) < 0x5000000000001)
              {
                goto LABEL_193;
              }

              v70 = BYTE5(v258);
              goto LABEL_34;
            }

            LODWORD(v58) = 0;
            if (v258 < 0x600000000 || v258 > 5)
            {
              goto LABEL_196;
            }

            v73 = __DataStorage._bytes.getter();
            if (!v73)
            {
              goto LABEL_249;
            }

            v53 = v73;
            v74 = __DataStorage._offset.getter();
            v58 = 5 - v74;
            if (__OFSUB__(5, v74))
            {
              goto LABEL_200;
            }
          }

          v70 = *(v53 + v58);
LABEL_34:
          sub_100016590(i, v32);
          sub_100016590(a3, v22);
          if (v70 == v249)
          {
            sub_10002911C(v246, v240, type metadata accessor for TimeBasedKey);
            i = v68;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v257 = v68;
            v32 = v247;
            a3 = v248;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101124028(0, v68[2] + 1, 1);
              i = v257;
            }

            v55 = v253;
            v76 = v244;
            v22 = *(i + 16);
            v77 = *(i + 24);
            v53 = v22 + 1;
            if (v22 >= v77 >> 1)
            {
              sub_101124028(v77 > 1, v22 + 1, 1);
              v55 = v253;
              i = v257;
            }

            *(i + 16) = v53;
            sub_10002911C(v240, &v76[i + v22 * v59], type metadata accessor for TimeBasedKey);
          }

          else
          {
            sub_100022C40(v246, type metadata accessor for TimeBasedKey);
            v55 = v253;
            v32 = v247;
            a3 = v248;
            i = v68;
          }

          if (v242 == ++v57)
          {
            goto LABEL_112;
          }
        }
      }

      a3 = v248;
LABEL_112:
      v53 = *(i + 16);
      if (v53)
      {
        v257 = _swiftEmptyArrayStorage;
        sub_101124AA8(0, v53, 0);
        v119 = 0;
        v120 = v257;
        v244 = (i + ((*(v254 + 80) + 32) & ~*(v254 + 80)));
        v242 = (v254 + 56);
        v243 += 56;
        v241 = i;
        v240 = v53;
        while (1)
        {
          v58 = *(i + 16);
          if (v119 >= v58)
          {
            goto LABEL_180;
          }

          v121 = v254;
          v22 = v245;
          sub_100022A54(&v244[*(v254 + 72) * v119], v245, type metadata accessor for TimeBasedKey);
          v249 = *(v252 + 48);
          sub_100022A54(v22, v32, type metadata accessor for TimeBasedKey);
          v122 = *(v121 + 56);
          v123 = v255;
          v122(v32, 0, 1, v255);
          sub_100022A54(v22, a3, type metadata accessor for TimeBasedKey);
          v124 = &a3[*(v123 + 24)];
          v125 = v124[1];
          if (v125 >> 60 == 15)
          {
            sub_100022C40(v22, type metadata accessor for TimeBasedKey);
            sub_100022C40(a3, type metadata accessor for TimeBasedKey);
            v126 = 1;
            v127 = v251;
            v128 = v249;
          }

          else
          {
            v53 = *v124;
            v32 = String.utf8Data.getter();
            v22 = v129;
            v130 = type metadata accessor for __DataStorage();
            v131 = *(v130 + 48);
            v132 = *(v130 + 52);
            swift_allocObject();
            v133 = __DataStorage.init(length:)();
            *&v258 = 0x2000000000;
            *(&v258 + 1) = v133 | 0x4000000000000000;
            sub_100017D5C(v32, v22);
            sub_10002E98C(v53, v125);
            v134 = sub_100A7F110(v32, v22, v32, v22, v53, v125, &v258, 32);
            a3 = 0;
            sub_100006654(v53, v125);
            sub_100016590(v32, v22);
            if (v134)
            {
              static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v208 = swift_allocObject();
              *(v208 + 16) = xmmword_101385D80;
              *(v208 + 56) = &type metadata for Int32;
              *(v208 + 64) = &protocol witness table for Int32;
              *(v208 + 32) = v134;
              os_log(_:dso:log:_:_:)();

              i = v237;
              CryptoError.init(rawValue:)();
              v209 = type metadata accessor for CryptoError();
              sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError);
              v210 = swift_allocError();
              v212 = v211;
              v213 = *(v209 - 8);
              v214 = *(v213 + 48);
              if (v214(i, 1, v209) == 1)
              {
                (*(v213 + 104))(v212, enum case for CryptoError.unspecifiedError(_:), v209);
                if (v214(v237, 1, v209) != 1)
                {
                  sub_10000B3A8(v237, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v213 + 32))(v212, v237, v209);
              }

              swift_willThrow();
              v223 = *(&v258 + 1);
              v222 = v258;
              goto LABEL_286;
            }

            v135 = *(&v258 + 1);
            i = v258;
            sub_100017D5C(v258, *(&v258 + 1));
            sub_100016590(i, v135);
            v58 = v135 >> 62;
            v239 = v135;
            if ((v135 >> 62) > 1)
            {
              if (v58 != 2)
              {
                goto LABEL_292;
              }

              v138 = *(i + 16);
              v137 = *(i + 24);
              v67 = __OFSUB__(v137, v138);
              v136 = v137 - v138;
              if (v67)
              {
                goto LABEL_204;
              }
            }

            else if (v58)
            {
              LODWORD(v136) = HIDWORD(i) - i;
              if (__OFSUB__(HIDWORD(i), i))
              {
                goto LABEL_206;
              }

              v136 = v136;
            }

            else
            {
              v136 = BYTE6(v135);
            }

            if (v136 != 32)
            {
              goto LABEL_228;
            }

            sub_100016590(v32, v22);
            v139 = *v248;
            v140 = v238;
            *(v238 + 7) = &type metadata for PrimaryIndex;
            *(v140 + 8) = sub_10002A2B8();
            *(v140 + 4) = v139;
            v53 = sub_100A7A194(v124[2], v124[3]);
            v141 = sub_100A7829C(v53, 0);
            v142 = v245;
            a3 = v141;
            v22 = v143;
            CCECCryptorRelease();
            v58 = v22 >> 62;
            v246 = v120;
            if ((v22 >> 62) > 1)
            {
              if (v58 != 2)
              {
                goto LABEL_270;
              }

              v146 = *(a3 + 2);
              v145 = *(a3 + 3);
              v67 = __OFSUB__(v145, v146);
              v144 = v145 - v146;
              if (v67)
              {
                goto LABEL_208;
              }
            }

            else if (v58)
            {
              LODWORD(v144) = HIDWORD(a3) - a3;
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_209;
              }

              v144 = v144;
            }

            else
            {
              v144 = BYTE6(v22);
            }

            if (v144 != 28)
            {
              goto LABEL_240;
            }

            v147 = i;
            sub_10002EA98(6, a3, v22, &v258);
            sub_100022C40(v142, type metadata accessor for TimeBasedKey);
            v22 = *(&v258 + 1);
            v148 = v258;
            v149 = *(v255 + 20);
            v127 = v251;
            v150 = *(v251 + 28);
            v151 = type metadata accessor for DateInterval();
            v152 = v238;
            v153 = v248 + v149;
            a3 = v248;
            (*(*(v151 - 8) + 16))(&v238[v150], v153, v151);
            *v152 = __PAIR128__(v22, v148);
            v154 = v239;
            *(v152 + 2) = v147;
            *(v152 + 3) = v154;
            sub_100022C40(a3, type metadata accessor for TimeBasedKey);
            v32 = v247;
            v128 = v249;
            sub_10002911C(v152, &v247[v249], _s18ConnectionKeyGroupVMa);
            v126 = 0;
            v120 = v246;
          }

          (*v243)(v32 + v128, v126, 1, v127);
          v257 = v120;
          v156 = *(v120 + 2);
          v155 = *(v120 + 3);
          if (v156 >= v155 >> 1)
          {
            sub_101124AA8(v155 > 1, v156 + 1, 1);
            v120 = v257;
          }

          ++v119;
          *(v120 + 2) = v156 + 1;
          sub_1000D2AD8(v32, &v120[((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v156], &qword_1016A5A80, &qword_1013B35A8);
          v53 = v240;
          i = v241;
          if (v240 == v119)
          {
            goto LABEL_174;
          }
        }
      }

      goto LABEL_175;
    }

    v238 = v14;
    v90 = *(v258 + 16);
    a3 = _swiftEmptyArrayStorage;
    v245 = i;
    v242 = v90;
    if (v90)
    {
      v91 = 0;
      while (1)
      {
        v58 = *(v55 + 16);
        if (v91 >= v58)
        {
          goto LABEL_179;
        }

        v92 = (*(v254 + 80) + 32) & ~*(v254 + 80);
        v32 = *(v254 + 72);
        sub_100022A54(v55 + v92 + v32 * v91, v52, type metadata accessor for TimeBasedKey);
        v93 = sub_100A7A194(*&v52[*(v255 + 24) + 16], *&v52[*(v255 + 24) + 24]);
        v22 = sub_100A7829C(v93, 0);
        v53 = v94;
        CCECCryptorRelease();
        v58 = v53 >> 62;
        v248 = v92;
        v246 = v32;
        if ((v53 >> 62) > 1)
        {
          if (v58 != 2)
          {
            v231 = 0;
            goto LABEL_283;
          }

          v97 = *(v22 + 16);
          v96 = *(v22 + 24);
          v67 = __OFSUB__(v96, v97);
          v95 = v96 - v97;
          if (v67)
          {
            goto LABEL_191;
          }
        }

        else if (v58)
        {
          LODWORD(v95) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_189;
          }

          v95 = v95;
        }

        else
        {
          v95 = BYTE6(v53);
        }

        if (v95 != 28)
        {
          goto LABEL_216;
        }

        v32 = v52;
        v98 = a3;
        sub_100017D5C(v22, v53);
        v99 = static MACAddress.length.getter();
        sub_10002EA98(v99, v22, v53, &v258);
        v100 = *(&v258 + 1);
        a3 = v258;
        v58 = *(&v258 + 1) >> 62;
        if ((*(&v258 + 1) >> 62) > 1)
        {
          if (v58 != 2)
          {
            goto LABEL_248;
          }

          v58 = *(v258 + 16);
          if (v58 > 5)
          {
            goto LABEL_194;
          }

          v58 = *(v258 + 24);
          if (v58 < 6)
          {
            goto LABEL_199;
          }

          v102 = __DataStorage._bytes.getter();
          if (!v102)
          {
            goto LABEL_252;
          }

          i = v102;
          v103 = __DataStorage._offset.getter();
          v58 = 5 - v103;
          if (__OFSUB__(5, v103))
          {
            goto LABEL_203;
          }
        }

        else
        {
          if (!v58)
          {
            LODWORD(v58) = 0;
            if ((*(&v258 + 1) & 0xFE000000000000uLL) < 0x5000000000001)
            {
              goto LABEL_195;
            }

            v101 = BYTE5(v258);
            goto LABEL_99;
          }

          LODWORD(v58) = 0;
          if (v258 < 0x600000000 || v258 > 5)
          {
            goto LABEL_197;
          }

          v104 = __DataStorage._bytes.getter();
          if (!v104)
          {
            goto LABEL_250;
          }

          i = v104;
          v105 = __DataStorage._offset.getter();
          v58 = 5 - v105;
          if (__OFSUB__(5, v105))
          {
            goto LABEL_201;
          }
        }

        v101 = *(i + v58);
        i = v245;
LABEL_99:
        sub_100016590(a3, v100);
        sub_100016590(v22, v53);
        if (v101 == v249)
        {
          v52 = v32;
          sub_10002911C(v32, v239, type metadata accessor for TimeBasedKey);
          a3 = v98;
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v257 = v98;
          if ((v106 & 1) == 0)
          {
            sub_101124028(0, *(v98 + 2) + 1, 1);
            a3 = v257;
          }

          v55 = v253;
          v107 = v248;
          v108 = v246;
          v22 = *(a3 + 2);
          v109 = *(a3 + 3);
          v53 = v22 + 1;
          if (v22 >= v109 >> 1)
          {
            sub_101124028(v109 > 1, v22 + 1, 1);
            v55 = v253;
            a3 = v257;
          }

          *(a3 + 2) = v53;
          sub_10002911C(v239, v107 + a3 + v22 * v108, type metadata accessor for TimeBasedKey);
        }

        else
        {
          v52 = v32;
          sub_100022C40(v32, type metadata accessor for TimeBasedKey);
          v55 = v253;
          a3 = v98;
        }

        ++v91;
        v32 = v247;
        if (v242 == v91)
        {
          goto LABEL_144;
        }
      }
    }

    v32 = v247;
LABEL_144:
    v157 = *(a3 + 2);
    if (v157)
    {
      v257 = _swiftEmptyArrayStorage;
      sub_101124AA8(0, v157, 0);
      v158 = 0;
      v159 = v257;
      v248 = &a3[(*(v254 + 80) + 32) & ~*(v254 + 80)];
      v242 = (v254 + 56);
      v243 += 56;
      v239 = a3;
      v241 = v157;
      while (1)
      {
        v58 = *(a3 + 2);
        if (v158 >= v58)
        {
          goto LABEL_181;
        }

        v160 = v254;
        v22 = v244;
        sub_100022A54(v248 + *(v254 + 72) * v158, v244, type metadata accessor for TimeBasedKey);
        v249 = *(v252 + 48);
        sub_100022A54(v22, i, type metadata accessor for TimeBasedKey);
        v161 = *(v160 + 56);
        v162 = v255;
        v161(i, 0, 1, v255);
        sub_100022A54(v22, v32, type metadata accessor for TimeBasedKey);
        v163 = (v32 + *(v162 + 24));
        v164 = v163[1];
        if (v164 >> 60 == 15)
        {
          sub_100022C40(v22, type metadata accessor for TimeBasedKey);
          sub_100022C40(v32, type metadata accessor for TimeBasedKey);
          v165 = 1;
          v166 = v251;
          v167 = v249;
        }

        else
        {
          i = *v163;
          v22 = String.utf8Data.getter();
          v32 = v168;
          v169 = type metadata accessor for __DataStorage();
          v170 = *(v169 + 48);
          v171 = *(v169 + 52);
          swift_allocObject();
          v172 = __DataStorage.init(length:)();
          *&v258 = 0x2000000000;
          *(&v258 + 1) = v172 | 0x4000000000000000;
          sub_100017D5C(v22, v32);
          sub_10002E98C(i, v164);
          v173 = sub_100A7F110(v22, v32, v22, v32, i, v164, &v258, 32);
          a3 = 0;
          sub_100006654(i, v164);
          sub_100016590(v22, v32);
          if (v173)
          {
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v215 = swift_allocObject();
            *(v215 + 16) = xmmword_101385D80;
            *(v215 + 56) = &type metadata for Int32;
            *(v215 + 64) = &protocol witness table for Int32;
            *(v215 + 32) = v173;
            os_log(_:dso:log:_:_:)();

            i = v238;
            CryptoError.init(rawValue:)();
            v216 = type metadata accessor for CryptoError();
            sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError);
            v210 = swift_allocError();
            v218 = v217;
            v219 = *(v216 - 8);
            v220 = *(v219 + 48);
            if (v220(i, 1, v216) == 1)
            {
              (*(v219 + 104))(v218, enum case for CryptoError.unspecifiedError(_:), v216);
              if (v220(v238, 1, v216) != 1)
              {
                sub_10000B3A8(v238, &qword_10169C9A0, &unk_1013D5A40);
              }
            }

            else
            {
              (*(v219 + 32))(v218, v238, v216);
            }

            swift_willThrow();
            v227 = *(&v258 + 1);
            v226 = v258;
            goto LABEL_289;
          }

          v174 = *(&v258 + 1);
          v53 = v258;
          sub_100017D5C(v258, *(&v258 + 1));
          sub_100016590(v53, v174);
          v58 = v174 >> 62;
          v240 = v174;
          if ((v174 >> 62) > 1)
          {
            if (v58 != 2)
            {
              v233 = 0;
              goto LABEL_295;
            }

            v177 = *(v53 + 16);
            v176 = *(v53 + 24);
            v67 = __OFSUB__(v176, v177);
            v175 = v176 - v177;
            if (v67)
            {
              goto LABEL_205;
            }
          }

          else if (v58)
          {
            LODWORD(v175) = HIDWORD(v53) - v53;
            if (__OFSUB__(HIDWORD(v53), v53))
            {
              goto LABEL_207;
            }

            v175 = v175;
          }

          else
          {
            v175 = BYTE6(v174);
          }

          if (v175 != 32)
          {
            goto LABEL_232;
          }

          sub_100016590(v22, v32);
          v178 = *v247;
          v179 = v237;
          *(v237 + 7) = &type metadata for PrimaryIndex;
          *(v179 + 8) = sub_10002A2B8();
          *(v179 + 4) = v178;
          i = sub_100A7A194(v163[2], v163[3]);
          a3 = sub_100A7829C(i, 0);
          v22 = v180;
          CCECCryptorRelease();
          v58 = v22 >> 62;
          v246 = v159;
          if ((v22 >> 62) > 1)
          {
            v181 = v244;
            if (v58 != 2)
            {
LABEL_270:
              v198 = 0;
              goto LABEL_271;
            }

            v184 = *(a3 + 2);
            v183 = *(a3 + 3);
            v67 = __OFSUB__(v183, v184);
            v182 = v183 - v184;
            if (v67)
            {
              goto LABEL_210;
            }
          }

          else
          {
            v181 = v244;
            if (v58)
            {
              LODWORD(v182) = HIDWORD(a3) - a3;
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_211;
              }

              v182 = v182;
            }

            else
            {
              v182 = BYTE6(v22);
            }
          }

          if (v182 != 28)
          {
            goto LABEL_236;
          }

          v185 = v53;
          sub_10002EA98(6, a3, v22, &v258);
          v22 = type metadata accessor for TimeBasedKey;
          sub_100022C40(v181, type metadata accessor for TimeBasedKey);
          v187 = *(&v258 + 1);
          v186 = v258;
          v188 = *(v255 + 20);
          v166 = v251;
          v189 = *(v251 + 28);
          v190 = type metadata accessor for DateInterval();
          v191 = v237;
          v192 = &v237[v189];
          v32 = v247;
          (*(*(v190 - 8) + 16))(v192, &v247[v188], v190);
          *v191 = __PAIR128__(v187, v186);
          v193 = v240;
          *(v191 + 2) = v185;
          *(v191 + 3) = v193;
          sub_100022C40(v32, type metadata accessor for TimeBasedKey);
          i = v245;
          v167 = v249;
          sub_10002911C(v191, &v245[v249], _s18ConnectionKeyGroupVMa);
          v165 = 0;
          a3 = v239;
          v159 = v246;
        }

        (*v243)(i + v167, v165, 1, v166);
        v257 = v159;
        v195 = *(v159 + 2);
        v194 = *(v159 + 3);
        v53 = v195 + 1;
        if (v195 >= v194 >> 1)
        {
          sub_101124AA8(v194 > 1, v195 + 1, 1);
          v159 = v257;
        }

        ++v158;
        *(v159 + 2) = v53;
        sub_1000D2AD8(i, &v159[((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v195], &qword_1016A5A80, &qword_1013B35A8);
        if (v241 == v158)
        {
          goto LABEL_174;
        }
      }
    }

LABEL_175:

    return v55;
  }

  if (v259 == 2)
  {
    a3 = *(v258 + 16);
    v78 = _swiftEmptyArrayStorage;
    if (a3)
    {
      for (i = 0; a3 != i; ++i)
      {
        v58 = *(v55 + 16);
        if (i >= v58)
        {
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
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
          if (v58 != 1)
          {
LABEL_220:
            if (v58 == 2)
            {
              v197 = *(a3 + 2);
              v58 = *(a3 + 3);
              v198 = v58 - v197;
              if (__OFSUB__(v58, v197))
              {
                __break(1u);
                goto LABEL_224;
              }

              goto LABEL_271;
            }

            goto LABEL_297;
          }

          LODWORD(v58) = HIDWORD(a3) - a3;
          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            goto LABEL_296;
          }

          __break(1u);
LABEL_216:
          if (v58 == 1)
          {
            LODWORD(v58) = HIDWORD(v22) - v22;
            if (!__OFSUB__(HIDWORD(v22), v22))
            {
              v231 = v58;
              goto LABEL_283;
            }

            __break(1u);
            goto LABEL_220;
          }

LABEL_224:
          if (v58 != 2)
          {
            v231 = BYTE6(v53);
            goto LABEL_283;
          }

          v199 = *(v22 + 16);
          v58 = *(v22 + 24);
          v231 = v58 - v199;
          if (!__OFSUB__(v58, v199))
          {
LABEL_283:
            sub_100018350();
            v206 = swift_allocError();
            *v221 = 28;
            *(v221 + 8) = v231;
            *(v221 + 16) = 0;
            swift_willThrow();
            sub_100016590(v22, v53);
            goto LABEL_269;
          }

          __break(1u);
LABEL_228:
          if (v58 != 1)
          {
            goto LABEL_253;
          }

          LODWORD(v58) = HIDWORD(i) - i;
          if (!__OFSUB__(HIDWORD(i), i))
          {
            v232 = v58;
            goto LABEL_293;
          }

          __break(1u);
LABEL_232:
          if (v58 == 1)
          {
            LODWORD(v58) = HIDWORD(v53) - v53;
            if (!__OFSUB__(HIDWORD(v53), v53))
            {
              v233 = v58;
              goto LABEL_295;
            }

            __break(1u);
LABEL_236:
            if (v58 == 1)
            {
              LODWORD(v58) = HIDWORD(a3) - a3;
              if (!__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_296;
              }

              __break(1u);
LABEL_240:
              if (v58 == 1)
              {
                LODWORD(v58) = HIDWORD(a3) - a3;
                if (!__OFSUB__(HIDWORD(a3), a3))
                {
LABEL_296:
                  v198 = v58;
LABEL_271:
                  sub_100018350();
                  v206 = swift_allocError();
                  *v207 = 28;
                  *(v207 + 8) = v198;
                  *(v207 + 16) = 0;
                  swift_willThrow();
                  sub_100016590(a3, v22);
LABEL_269:
                  *&v258 = 0;
                  *(&v258 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v205._object = 0x800000010134CB30;
                  v205._countAndFlagsBits = 0xD000000000000021;
                  String.append(_:)(v205);
                  v256 = v206;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  while (1)
                  {
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
LABEL_292:
                    v232 = 0;
LABEL_293:
                    sub_100018350();
                    v210 = swift_allocError();
                    *v229 = 32;
                    *(v229 + 8) = v232;
                    *(v229 + 16) = 0;
                    swift_willThrow();
                    v222 = i;
                    v223 = v239;
LABEL_286:
                    sub_100016590(v222, v223);
                    v224 = v32;
                    v225 = v22;
LABEL_290:
                    sub_100016590(v224, v225);
                    *&v258 = 0;
                    *(&v258 + 1) = 0xE000000000000000;
                    _StringGuts.grow(_:)(35);
                    v228._object = 0x8000000101354990;
                    v228._countAndFlagsBits = 0xD000000000000021;
                    String.append(_:)(v228);
                    v256 = v210;
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    _print_unlocked<A, B>(_:_:)();
                  }
                }

                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
LABEL_247:
                __break(1u);
LABEL_248:
                __break(1u);
LABEL_249:
                __break(1u);
LABEL_250:
                __break(1u);
LABEL_251:
                __break(1u);
LABEL_252:
                __break(1u);
LABEL_253:
                if (v58 != 2)
                {
                  v232 = BYTE6(v239);
                  goto LABEL_293;
                }

                v200 = *(i + 16);
                v58 = *(i + 24);
                v232 = v58 - v200;
                if (!__OFSUB__(v58, v200))
                {
                  goto LABEL_293;
                }

                __break(1u);
                goto LABEL_257;
              }

LABEL_265:
              if (v58 == 2)
              {
                v204 = *(a3 + 2);
                v203 = *(a3 + 3);
                v198 = v203 - v204;
                if (__OFSUB__(v203, v204))
                {
                  __break(1u);
                }

                goto LABEL_271;
              }

              goto LABEL_297;
            }

LABEL_261:
            if (v58 == 2)
            {
              v202 = *(a3 + 2);
              v58 = *(a3 + 3);
              v198 = v58 - v202;
              if (!__OFSUB__(v58, v202))
              {
                goto LABEL_271;
              }

              __break(1u);
              goto LABEL_265;
            }

LABEL_297:
            v198 = BYTE6(v22);
            goto LABEL_271;
          }

LABEL_257:
          if (v58 == 2)
          {
            v201 = *(v53 + 16);
            v58 = *(v53 + 24);
            v233 = v58 - v201;
            if (__OFSUB__(v58, v201))
            {
              __break(1u);
              goto LABEL_261;
            }
          }

          else
          {
            v233 = BYTE6(v240);
          }

LABEL_295:
          sub_100018350();
          v210 = swift_allocError();
          *v230 = 32;
          *(v230 + 8) = v233;
          *(v230 + 16) = 0;
          swift_willThrow();
          v226 = v53;
          v227 = v240;
LABEL_289:
          sub_100016590(v226, v227);
          v224 = v22;
          v225 = v32;
          goto LABEL_290;
        }

        v79 = (*(v243 + 80) + 32) & ~*(v243 + 80);
        v32 = *(v243 + 72);
        sub_100022A54(v55 + v79 + v32 * i, v22, _s18ConnectionKeyGroupVMa);
        v58 = *v22;
        v80 = *(v22 + 8);
        v81 = v80 >> 62;
        if ((v80 >> 62) > 1)
        {
          if (v81 != 2)
          {
            goto LABEL_244;
          }

          if (*(v58 + 16) > 5)
          {
            goto LABEL_182;
          }

          v58 = *(v58 + 24);
          if (v58 < 6)
          {
            goto LABEL_185;
          }

          v83 = __DataStorage._bytes.getter();
          if (!v83)
          {
            goto LABEL_246;
          }

          v53 = v83;
          v84 = __DataStorage._offset.getter();
          v58 = 5 - v84;
          if (__OFSUB__(5, v84))
          {
            goto LABEL_187;
          }
        }

        else
        {
          if (!v81)
          {
            if ((v80 & 0xFE000000000000) < 0x5000000000001)
            {
              goto LABEL_183;
            }

            v82 = BYTE5(v58);
            goto LABEL_62;
          }

          if (v58 < 0x600000000 || v58 > 5)
          {
            goto LABEL_184;
          }

          v85 = __DataStorage._bytes.getter();
          if (!v85)
          {
            goto LABEL_245;
          }

          v53 = v85;
          v86 = __DataStorage._offset.getter();
          v58 = 5 - v86;
          if (__OFSUB__(5, v86))
          {
            goto LABEL_186;
          }
        }

        v82 = *(v53 + v58);
        v55 = v253;
LABEL_62:
        if (v82 == v249)
        {
          sub_10002911C(v22, v241, _s18ConnectionKeyGroupVMa);
          v87 = swift_isUniquelyReferenced_nonNull_native();
          *&v258 = v78;
          if ((v87 & 1) == 0)
          {
            sub_101124AE8(0, v78[2] + 1, 1);
            v55 = v253;
            v78 = v258;
          }

          v89 = v78[2];
          v88 = v78[3];
          v53 = v89 + 1;
          if (v89 >= v88 >> 1)
          {
            sub_101124AE8(v88 > 1, v89 + 1, 1);
            v55 = v253;
            v78 = v258;
          }

          v78[2] = v53;
          sub_10002911C(v241, v78 + v79 + v89 * v32, _s18ConnectionKeyGroupVMa);
        }

        else
        {
          sub_100022C40(v22, _s18ConnectionKeyGroupVMa);
        }
      }
    }

    v110 = v78[2];
    if (!v110)
    {
      goto LABEL_175;
    }

    *&v258 = _swiftEmptyArrayStorage;
    sub_101124AA8(0, v110, 0);
    v111 = v258;
    v112 = v78 + ((*(v243 + 80) + 32) & ~*(v243 + 80));
    v249 = *(v243 + 72);
    v113 = (v254 + 56);
    v114 = (v243 + 56);
    do
    {
      v115 = v242;
      sub_100022A54(v112, v242, _s18ConnectionKeyGroupVMa);
      v116 = *(v252 + 48);
      (*v113)(v29, 1, 1, v255);
      sub_10002911C(v115, &v29[v116], _s18ConnectionKeyGroupVMa);
      (*v114)(&v29[v116], 0, 1, v251);
      *&v258 = v111;
      v118 = *(v111 + 16);
      v117 = *(v111 + 24);
      if (v118 >= v117 >> 1)
      {
        sub_101124AA8(v117 > 1, v118 + 1, 1);
        v111 = v258;
      }

      *(v111 + 16) = v118 + 1;
      sub_1000D2AD8(v29, v111 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v118, &qword_1016A5A80, &qword_1013B35A8);
      v112 += v249;
      --v110;
    }

    while (v110);
LABEL_174:

    return v253;
  }

  return v55;
}

uint64_t sub_100AE23E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return _swift_task_switch(sub_100AE2410, 0, 0);
}

uint64_t sub_100AE2410()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *(v0 + 64) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100AE2514;
  v3 = *(v0 + 104);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  return sub_100731BF4(v6, v4, v5, 0, v3, 0);
}

uint64_t sub_100AE2514(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 72);
  v10 = *v4;
  *(*v4 + 80) = v3;

  if (v3)
  {
    v11 = sub_100AE2684;
  }

  else
  {
    v12 = *(v8 + 64);

    *(v8 + 105) = a3;
    *(v8 + 88) = a2;
    *(v8 + 96) = a1;
    v11 = sub_100AE2658;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100AE2658()
{
  v1 = *(v0 + 105);
  v2 = *(v0 + 24);
  *v2 = vextq_s8(*(v0 + 88), *(v0 + 88), 8uLL);
  v2[1].i8[0] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100AE2684()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[3];
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100AE2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 72);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_100B26C68;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101648068;
  v17 = _Block_copy(aBlock);

  sub_100012908(a3);
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);
}

uint64_t sub_100AE2A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Transaction.capture()();
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_100A85AEC();
  v5 = *(a2 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FCF3A4();

  static os_log_type_t.default.getter();
  result = os_log(_:dso:log:_:_:)();
  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_100AE2B78(uint64_t a1, void (*a2)(void, void, void, void), uint64_t a3, void *a4, int a5, int a6)
{
  v340 = a6;
  v367 = a5;
  v375 = a4;
  v417 = a3;
  v381 = type metadata accessor for OwnedDeviceKeyRecord();
  v383 = *(v381 - 8);
  v8 = *(v383 + 64);
  v9 = __chkstk_darwin(v381);
  v376 = &v336 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v379 = &v336 - v11;
  v12 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v380 = &v336 - v14;
  v15 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v352 = &v336 - v17;
  v360 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v353 = *(v360 - 8);
  v18 = *(v353 + 64);
  __chkstk_darwin(v360);
  v351 = &v336 - v19;
  v20 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v354 = &v336 - v22;
  v23 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v342 = &v336 - v25;
  v344 = type metadata accessor for OwnedBeaconGroup(0);
  v341 = *(v344 - 8);
  v26 = *(v341 + 64);
  v27 = __chkstk_darwin(v344);
  v339 = &v336 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v338 = &v336 - v30;
  v337 = v31;
  __chkstk_darwin(v29);
  v343 = &v336 - v32;
  v33 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v348 = &v336 - v35;
  v36 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v359 = &v336 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v357 = &v336 - v40;
  v369 = type metadata accessor for OwnedBeaconRecord();
  v368 = *(v369 - 8);
  v41 = *(v368 + 64);
  v42 = __chkstk_darwin(v369);
  v361 = &v336 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v356 = &v336 - v44;
  v406 = type metadata accessor for DispatchQoS();
  v364 = *(v406 - 8);
  v45 = *(v364 + 64);
  __chkstk_darwin(v406);
  v405 = &v336 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for SafeLocation();
  v363 = *(v362 - 8);
  v47 = *(v363 + 64);
  __chkstk_darwin(v362);
  v409 = (&v336 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v395 = &v336 - v51;
  v372 = type metadata accessor for DirectorySequence();
  v371 = *(v372 - 8);
  v52 = *(v371 + 64);
  __chkstk_darwin(v372);
  v397 = &v336 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = type metadata accessor for URL();
  v373 = *(v374 - 8);
  v54 = v373[8];
  v55 = __chkstk_darwin(v374);
  v350 = &v336 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v349 = &v336 - v58;
  v59 = __chkstk_darwin(v57);
  v358 = &v336 - v60;
  v61 = __chkstk_darwin(v59);
  v377 = &v336 - v62;
  __chkstk_darwin(v61);
  v396 = &v336 - v63;
  v64 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v393 = &v336 - v66;
  v394 = type metadata accessor for KeyAlignmentRecord();
  v392 = *(v394 - 8);
  v67 = *(v392 + 64);
  v68 = __chkstk_darwin(v394);
  v366 = &v336 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v370 = &v336 - v70;
  v389 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v71 = *(*(v389 - 1) + 8);
  __chkstk_darwin(v389);
  v390 = (&v336 - v72);
  v398 = type metadata accessor for BeaconNamingRecord();
  v384 = *(v398 - 8);
  v73 = *(v384 + 64);
  v74 = __chkstk_darwin(v398);
  v365 = &v336 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v77 = (&v336 - v76);
  v387 = type metadata accessor for UUID();
  v385 = *(v387 - 8);
  v78 = *(v385 + 64);
  v79 = __chkstk_darwin(v387);
  v382 = &v336 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v79);
  v355 = &v336 - v82;
  v83 = __chkstk_darwin(v81);
  v85 = &v336 - v84;
  v86 = __chkstk_darwin(v83);
  v399 = &v336 - v87;
  v386 = v88;
  __chkstk_darwin(v86);
  v419 = &v336 - v89;
  v418 = type metadata accessor for BeaconEstimatedLocation();
  *&v410 = *(v418 - 8);
  v90 = *(v410 + 64);
  v91 = __chkstk_darwin(v418);
  *&v413 = &v336 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v94 = &v336 - v93;
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v95 - 8);
  v97 = *(v96 + 64);
  __chkstk_darwin(v95);
  v99 = &v336 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v391 = v77;
  v416 = a1;
  v100 = qword_10177B2E8;
  v101 = *(qword_10177B2E8 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  v102 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v102);
  *(&v336 - 4) = v100;
  *(&v336 - 3) = a2;
  v415 = a2;
  *(&v336 - 2) = static ProximityPairingStatsCommandPayload.Error.__derived_enum_equals(_:_:);
  *(&v336 - 1) = 0;
  v103 = v414;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  v378 = v103;
  v106 = *(v96 + 8);
  v105 = (v96 + 8);
  v104 = v106;
  v402 = v99;
  v106(v99, v95);
  v107 = *(v417 + 168);
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v108 = sub_1000076D4(v374, qword_10177BF38);
  v109 = sub_100AF4FC0(v108, sub_1006011CC, sub_100FFDCB0);
  v110 = *(v109 + 2);
  v414 = v85;
  v388 = v107;
  v404 = v95;
  v403 = v105;
  v401 = v104;
  if (v110)
  {
    v111 = v415;
    v112 = sub_1000210EC(v415);
    if (v113)
    {
      v114 = *(*(v109 + 7) + 8 * v112);

      v412 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_10138BBE0;
      v116 = v114[2];
      *(v115 + 56) = &type metadata for Int;
      *(v115 + 64) = &protocol witness table for Int;
      *(v115 + 32) = v116;
      v117 = UUID.uuidString.getter();
      v118 = v111;
      v120 = v119;
      *(v115 + 96) = &type metadata for String;
      v411 = sub_100008C00();
      *(v115 + 104) = v411;
      *(v115 + 72) = v117;
      *(v115 + 80) = v120;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v121 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v122 = v114[2];
      if (v122)
      {
        v123 = (*(v410 + 80) + 32) & ~*(v410 + 80);
        v347 = v114;
        v124 = v114 + v123;
        *&v410 = *(v410 + 72);
        v408 = v385 + 16;
        v407 = (v385 + 32);
        v400 = xmmword_101385D80;
        v125 = v416;
        do
        {
          sub_100022A54(v124, v94, type metadata accessor for BeaconEstimatedLocation);
          v126 = v385;
          v127 = v419;
          v128 = v387;
          (*(v385 + 16))(v419, v415, v387);
          v129 = (*(v126 + 80) + 24) & ~*(v126 + 80);
          v130 = swift_allocObject();
          *(v130 + 16) = v125;
          (*(v126 + 32))(v130 + v129, v127, v128);

          static os_log_type_t.default.getter();
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          v131 = swift_allocObject();
          *(v131 + 16) = v400;
          sub_100022A54(v94, v413, type metadata accessor for BeaconEstimatedLocation);
          v132 = String.init<A>(describing:)();
          v133 = v411;
          *(v131 + 56) = &type metadata for String;
          *(v131 + 64) = v133;
          *(v131 + 32) = v132;
          *(v131 + 40) = v134;
          os_log(_:dso:log:_:_:)();

          sub_100B1F028(v94, v417, sub_100B23104, v130);

          sub_100022C40(v94, type metadata accessor for BeaconEstimatedLocation);
          v124 += v410;
          --v122;
          v125 = v416;
        }

        while (v122);

        v135 = v417;
        v111 = v415;
      }

      else
      {

        v135 = v417;
        v111 = v118;
      }
    }

    else
    {

      v135 = v417;
    }
  }

  else
  {

    v111 = v415;
    v135 = v417;
  }

  v136 = v375[3];
  v137 = v375[4];
  sub_1000035D0(v375, v136);
  v138 = v399;
  v139 = (*(*(*(v137 + 8) + 8) + 32))(v136);
  v140 = *(v135 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v139);
  *(&v336 - 2) = v135;
  *(&v336 - 1) = v138;
  v141 = v416;

  v142 = v390;
  v143 = v378;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v144 = (*(v384 + 48))(v142, 1, v398);
  v145 = v419;
  v418 = v143;
  if (v144 == 1)
  {
    sub_10000B3A8(v142, &unk_1016B29E0, &unk_1013B70E0);
    Transaction.capture()();
    static os_log_type_t.error.getter();
    v146 = v394;
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v384 = qword_10177C380;
    os_log(_:dso:log:_:_:)();

    v147 = v385;
    v148 = v399;
    v149 = v387;
  }

  else
  {
    sub_10002911C(v142, v391, type metadata accessor for BeaconNamingRecord);
    v150 = v385;
    v151 = v387;
    (*(v385 + 16))(v145, v138, v387);
    v152 = (*(v150 + 80) + 24) & ~*(v150 + 80);
    v153 = (v386 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
    v154 = swift_allocObject();
    *(v154 + 16) = v135;
    (*(v150 + 32))(v154 + v152, v145, v151);
    v155 = (v154 + v153);
    *v155 = sub_100B22B80;
    v155[1] = v141;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v156 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_101385D80;
    v158 = v391;
    sub_100022A54(v391, v365, type metadata accessor for BeaconNamingRecord);
    v159 = String.init<A>(describing:)();
    v161 = v160;
    *(v157 + 56) = &type metadata for String;
    *(v157 + 64) = sub_100008C00();
    *(v157 + 32) = v159;
    *(v157 + 40) = v161;
    v384 = v156;
    os_log(_:dso:log:_:_:)();

    sub_100B1145C(v158, v135, sub_100B23010, v154);

    sub_100022C40(v158, type metadata accessor for BeaconNamingRecord);
    v149 = v387;
    v147 = v385;
    v111 = v415;
    v146 = v394;
    v148 = v399;
  }

  v162 = v147 + 8;
  v163 = v149;
  v407 = *(v147 + 8);
  v407(v148);
  v164 = v393;
  v165 = v111;
  sub_100B2DA4C(v393);
  if ((*(v392 + 48))(v164, 1, v146) == 1)
  {
    sub_10000B3A8(v164, &qword_10169F328, &unk_1013CB040);
  }

  else
  {
    v166 = v370;
    sub_10002911C(v164, v370, type metadata accessor for KeyAlignmentRecord);

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v167 = swift_allocObject();
    *(v167 + 16) = xmmword_101385D80;
    sub_100022A54(v166, v366, type metadata accessor for KeyAlignmentRecord);
    v168 = v166;
    v169 = String.init<A>(describing:)();
    v171 = v170;
    *(v167 + 56) = &type metadata for String;
    *(v167 + 64) = sub_100008C00();
    *(v167 + 32) = v169;
    *(v167 + 40) = v171;
    os_log(_:dso:log:_:_:)();

    sub_100B1DF3C(v168, v417, sub_100B22FE4, v141);

    sub_100022C40(v168, type metadata accessor for KeyAlignmentRecord);
    v147 = v385;
  }

  v172 = v375[3];
  v173 = v375[4];
  sub_1000035D0(v375, v172);
  v174 = (*(v173 + 104))(v172, v173);
  v408 = v162;
  if (v174)
  {
    if (qword_101694970 != -1)
    {
      swift_once();
    }

    v175 = sub_1000076D4(v374, qword_10177B398);
    v176 = *(v388 + 16);
    v177 = __chkstk_darwin(v175);
    *(&v336 - 4) = v178;
    *(&v336 - 3) = v165;
    *(&v336 - 2) = v177;
    v179 = v418;
    OS_dispatch_queue.sync<A>(execute:)();
    v180 = aBlock;
    static os_log_type_t.info.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v181 = swift_allocObject();
    v413 = xmmword_101385D80;
    *(v181 + 16) = xmmword_101385D80;
    *(v181 + 56) = &type metadata for Bool;
    *(v181 + 64) = &protocol witness table for Bool;
    *(v181 + 32) = v180;
    os_log(_:dso:log:_:_:)();

    if (qword_1016951F0 != -1)
    {
      swift_once();
    }

    v182 = sub_1000076D4(v374, qword_10177C590);
    v183 = *(v388 + 16);
    v184 = __chkstk_darwin(v182);
    v165 = v415;
    *(&v336 - 4) = v185;
    *(&v336 - 3) = v165;
    *(&v336 - 2) = v184;
    OS_dispatch_queue.sync<A>(execute:)();
    v418 = v179;
    v186 = aBlock;
    static os_log_type_t.info.getter();
    v187 = swift_allocObject();
    *(v187 + 16) = v413;
    *(v187 + 56) = &type metadata for Bool;
    *(v187 + 64) = &protocol witness table for Bool;
    *(v187 + 32) = v186;
    os_log(_:dso:log:_:_:)();

    v141 = v416;
    v163 = v387;
    v147 = v385;
  }

  v188 = sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v189 = *(v147 + 80);
  v190 = (v189 + 32) & ~v189;
  v191 = v190 + *(v147 + 72);
  v370 = v189;
  v192 = v189 | 7;
  *&v400 = v188;
  v398 = v191;
  v193 = swift_allocObject();
  v410 = xmmword_101385D80;
  *(v193 + 16) = xmmword_101385D80;
  v196 = *(v147 + 16);
  v194 = v147 + 16;
  v195 = v196;
  v399 = v190;
  v196(v193 + v190, v165, v163);

  sub_1009C99C0(v193, sub_100B22BAC, v141);

  if (qword_101694F88 != -1)
  {
    swift_once();
  }

  v412 = v195;
  *&v413 = v194;
  v411 = v192;
  v197 = v374;
  v198 = sub_1000076D4(v374, qword_10177C268);
  v199 = v373;
  v200 = v373[2];
  v347 = v373 + 2;
  v346 = v200;
  v200(v396, v198, v197);
  *&aBlock = _swiftEmptyArrayStorage;
  v425[0] = _swiftEmptyArrayStorage;
  v201 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v202 = v395;
  DirectorySequence.next()();
  v203 = v199[6];
  if (v203(v202, 1, v197) == 1)
  {
LABEL_42:
    v209 = v370;
    v365 = ~v370;
    (*(v371 + 8))(v397, v372);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v210 = static OS_os_log.default.getter();
    v378 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v211 = swift_allocObject();
    *(v211 + 16) = xmmword_10138BBE0;
    v212 = v197;
    v213 = aBlock;
    v214 = *(aBlock + 16);
    *(v211 + 56) = &type metadata for Int;
    *(v211 + 64) = &protocol witness table for Int;
    *(v211 + 32) = v214;
    sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

    v215 = v396;
    v216 = dispatch thunk of CustomStringConvertible.description.getter();
    v218 = v217;
    *(v211 + 96) = &type metadata for String;
    v377 = sub_100008C00();
    *(v211 + 104) = v377;
    *(v211 + 72) = v216;
    *(v211 + 80) = v218;
    os_log(_:dso:log:_:_:)();

    v219 = v373[1];
    ++v373;
    v345 = v219;
    v219(v215, v212);

    __chkstk_darwin(v220);
    *(&v336 - 2) = v415;
    v221 = v418;
    v222 = sub_10013D504(sub_100B22BD8, (&v336 - 4), v213);
    v223 = v221;
    v224 = *(v222 + 16);
    if (v224)
    {
      v366 = v221;
      v225 = v409;
      v397 = v409 + *(v362 + 20);
      v226 = (*(v363 + 80) + 32) & ~*(v363 + 80);
      v362 = v222;
      v227 = v222 + v226;
      v395 = *(v417 + 96);
      v396 = ((v209 + 24) & v365);
      v394 = *(v363 + 72);
      v393 = &v396[v386 + 7] & 0xFFFFFFFFFFFFFFF8;
      v392 = (v393 + 15) & 0xFFFFFFFFFFFFFFF8;
      v391 = (v385 + 32);
      v390 = &v421;
      v389 = (v364 + 8);
      v228 = v387;
      do
      {
        v418 = v224;
        sub_100022A54(v227, v225, type metadata accessor for SafeLocation);
        v229 = v419;
        v230 = v412;
        v412(v419, v397, v228);
        sub_100022C40(v225, type metadata accessor for SafeLocation);
        v231 = swift_allocObject();
        *(v231 + 16) = v410;
        v230(&v399[v231], v415, v228);
        v232 = v414;
        v230(v414, v229, v228);
        v233 = v392;
        v234 = swift_allocObject();
        *(v234 + 16) = v231;
        (*v391)(&v396[v234], v232, v228);
        v235 = v416;
        *(v234 + v393) = v417;
        v236 = (v234 + v233);
        *v236 = sub_100B22C28;
        v236[1] = v235;
        v423 = sub_100B22C54;
        v424 = v234;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v421 = sub_100006684;
        v422 = &unk_1016466F0;
        v237 = _Block_copy(&aBlock);
        swift_retain_n();

        v238 = v405;
        static DispatchQoS.unspecified.getter();
        v425[0] = _swiftEmptyArrayStorage;
        sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v239 = v402;
        v240 = v404;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v225 = v409;
        _Block_release(v237);

        v401(v239, v240);
        (*v389)(v238, v406);
        (v407)(v419, v228);

        v227 += v394;
        v224 = v418 - 1;
      }

      while (v418 != 1);

      v241 = v375;
      v242 = v417;
      v243 = v228;
      v244 = v414;
      v245 = v369;
      v246 = v368;
      v223 = v366;
      if ((v367 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {

      v242 = v417;
      v243 = v387;
      v244 = v414;
      v245 = v369;
      v246 = v368;
      v241 = v375;
      if ((v367 & 1) == 0)
      {
LABEL_58:
        My = type metadata accessor for Feature.FindMy();
        v422 = My;
        v423 = sub_10000768C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
        v275 = sub_1000280DC(&aBlock);
        (*(*(My - 8) + 104))(v275, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
        LOBYTE(My) = isFeatureEnabled(_:)();
        sub_100007BAC(&aBlock);
        if (My)
        {
          sub_10001F280(v241, &aBlock);
          sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
          v276 = v359;
          v277 = swift_dynamicCast();
          v278 = *(v246 + 56);
          if (v277)
          {
            v366 = v223;
            v278(v276, 0, 1, v245);
            v279 = v276;
            v280 = v361;
            sub_10002911C(v279, v361, type metadata accessor for OwnedBeaconRecord);
            v412(v382, v280 + *(v245 + 20), v243);
            if (qword_101695268 != -1)
            {
              swift_once();
            }

            v281 = v374;
            sub_1000076D4(v374, qword_10177C680);
            UUID.uuidString.getter();
            v282 = v358;
            URL.appendingPathComponent(_:isDirectory:)();

            v283 = v349;
            v284 = v282;
            v285 = v346;
            v346(v349, v284, v281);
            v418 = *(v360 + 40);
            v286 = v360;
            v415 = *(v371 + 56);
            v287 = v351;
            v415(&v351[v418], 1, 1, v372);
            v285(v287, v283, v281);
            *(v287 + *(v286 + 36)) = v388;
            v285(v350, v283, v281);

            v288 = v352;
            DirectorySequence.init(at:includingPropertiesForKeys:options:)();
            v289 = v283;
            v290 = v345;
            v345(v289, v281);
            v290(v358, v281);
            v415(v288, 0, 1, v372);
            sub_10002311C(v288, v287 + v418, &qword_1016A5970, &unk_1013B3470);
            v291 = *(v353 + 56);
            v292 = v354;
            v293 = v360;
            v291(v354, 1, 1, v360);
            sub_10000B3A8(v292, &qword_1016A78B8, &unk_1013D6710);
            sub_1000D2AD8(v287, v292, &qword_1016A78A8, &unk_1013D66E0);
            v291(v292, 0, 1, v293);
            v294 = sub_1000BC4D4(&qword_1016A78C0, &qword_1013EB2B0);
            v295 = *(v294 + 48);
            v296 = *(v294 + 52);
            v297 = swift_allocObject();
            sub_1000D2AD8(v292, v297 + *(*v297 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
            v298 = *(*v297 + class metadata base offset for _SequenceBox + 16);
            v299 = sub_1000BC4D4(&qword_1016A78D8, &unk_1013D6720);
            v300 = *(v299 + 48);
            v301 = *(v299 + 52);
            v302 = swift_allocObject();
            v303 = *(*v302 + class metadata base offset for _IteratorBox + 16);
            v403 = v297;
            sub_1000D2A70(v297 + v298, v302 + v303, &qword_1016A78B0, &unk_1013EB2A0);
            v304 = *(*v302 + class metadata base offset for _IteratorBox + 16);
            v418 = v302;
            v415 = v304;
            v305 = v380;
            sub_100AF5B10(v380);
            v306 = *(v383 + 48);
            v307 = v305;
            v308 = v381;
            v383 += 48;
            v409 = v306;
            if ((v306)(v305, 1, v381) != 1)
            {
              v406 = (v370 + 24) & v365;
              v405 = ((v386 + v370 + v406) & v365);
              v404 = (v385 + 32);
              v322 = v379;
              do
              {
                sub_10002911C(v307, v322, type metadata accessor for OwnedDeviceKeyRecord);
                v323 = *(v308 + 20);
                v324 = v419;
                v325 = v387;
                v326 = v412;
                v412(v419, v382, v387);
                v326(v244, v322 + v323, v325);
                v327 = v405;
                v328 = swift_allocObject();
                *(v328 + 16) = v416;
                v329 = v244;
                v330 = *v404;
                (*v404)(v328 + v406, v324, v325);
                v330(&v327[v328], v329, v325);

                static os_log_type_t.default.getter();
                if (qword_101695038 != -1)
                {
                  swift_once();
                }

                v331 = swift_allocObject();
                *(v331 + 16) = v410;
                sub_100022A54(v322, v376, type metadata accessor for OwnedDeviceKeyRecord);
                v322 = v379;
                v308 = v381;
                v332 = String.init<A>(describing:)();
                v333 = v377;
                *(v331 + 56) = &type metadata for String;
                *(v331 + 64) = v333;
                *(v331 + 32) = v332;
                *(v331 + 40) = v334;
                os_log(_:dso:log:_:_:)();

                sub_100B0C534(v322, v417, sub_100B22E3C, v328);

                sub_100022C40(v322, type metadata accessor for OwnedDeviceKeyRecord);
                v307 = v380;
                sub_100AF5B10(v380);
                v335 = (v409)(v307, 1, v308);
                v244 = v414;
              }

              while (v335 != 1);
            }

            v309 = v418;
            swift_setDeallocating();
            sub_10000B3A8(v309 + *(*v309 + class metadata base offset for _IteratorBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
            v310 = *(*v309 + 48);
            v311 = *(*v309 + 52);
            swift_deallocClassInstance();
            v312 = v403;
            swift_setDeallocating();
            sub_10000B3A8(v312 + *(*v312 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
            v313 = *(*v312 + 48);
            v314 = *(*v312 + 52);
            swift_deallocClassInstance();
            (v407)(v382, v387);
            sub_100022C40(v361, type metadata accessor for OwnedBeaconRecord);
            v241 = v375;
            v242 = v417;
          }

          else
          {
            v278(v276, 1, 1, v245);
            sub_10000B3A8(v276, &unk_1016A9A20, &qword_10138B280);
          }
        }

        v315 = *(v242 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
        type metadata accessor for BeaconKeyManager(0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v316 = aBlock;
        v317 = v241[3];
        v318 = v241[4];
        v319 = sub_1000035D0(v241, v317);
        sub_101309728(v319, 0, 0, v316, v317, v318);

        sub_10001F280(v241, &aBlock);
        v320 = swift_allocObject();
        *(v320 + 16) = v242;
        sub_10000A748(&aBlock, v320 + 24);

        sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
        unsafeFromAsyncTask<A>(_:)();

        sub_10001F280(v241, &aBlock);
        v321 = swift_allocObject();
        sub_10000A748(&aBlock, v321 + 16);
        unsafeFromAsyncTask<A>(_:)();

        return;
      }
    }

    sub_10001F280(v241, &aBlock);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v247 = v357;
    v248 = swift_dynamicCast();
    v249 = *(v246 + 56);
    if (v248)
    {
      v249(v247, 0, 1, v245);
      v250 = v247;
      v251 = v356;
      sub_10002911C(v250, v356, type metadata accessor for OwnedBeaconRecord);
      v252 = v348;
      sub_1000D2A70(v251 + *(v245 + 28), v348, &qword_1016980D0, &unk_10138F3B0);
      v253 = v243;
      v254 = v385;
      if ((*(v385 + 48))(v252, 1, v253) == 1)
      {
        sub_100022C40(v251, type metadata accessor for OwnedBeaconRecord);
        sub_10000B3A8(v252, &qword_1016980D0, &unk_10138F3B0);
        v243 = v387;
      }

      else
      {
        v366 = v223;
        v255 = v254 + 32;
        v256 = *(v254 + 32);
        v257 = v355;
        v418 = v255;
        v415 = v256;
        v256(v355, v252, v387);
        v258 = v342;
        sub_100AC53EC(v257, v342);
        v259 = v258;
        v260 = v341;
        if ((*(v341 + 48))(v259, 1, v344) == 1)
        {
          v243 = v387;
          (v407)(v355, v387);
          sub_100022C40(v251, type metadata accessor for OwnedBeaconRecord);
          sub_10000B3A8(v259, &unk_1016AF8B0, &unk_1013A0700);
        }

        else
        {
          v409 = type metadata accessor for OwnedBeaconGroup;
          v261 = v343;
          sub_10002911C(v259, v343, type metadata accessor for OwnedBeaconGroup);
          v262 = v387;
          v412(v419, v355, v387);
          v263 = v338;
          sub_100022A54(v261, v338, type metadata accessor for OwnedBeaconGroup);
          v264 = (v370 + 24) & v365;
          v265 = (v264 + v386 + *(v260 + 80)) & ~*(v260 + 80);
          v266 = v265 + v337;
          v267 = swift_allocObject();
          v268 = v415;
          *(v267 + 16) = v416;
          v268(v267 + v264, v419, v262);
          v242 = v417;
          sub_10002911C(v263, v267 + v265, v409);
          *(v267 + v266) = v340 & 1;
          *(v267 + (v266 & 0xFFFFFFFFFFFFFFF8) + 8) = v242;

          static os_log_type_t.default.getter();
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          v269 = swift_allocObject();
          *(v269 + 16) = v410;
          v270 = v343;
          sub_100022A54(v343, v339, type metadata accessor for OwnedBeaconGroup);
          v271 = String.init<A>(describing:)();
          v272 = v377;
          *(v269 + 56) = &type metadata for String;
          *(v269 + 64) = v272;
          *(v269 + 32) = v271;
          *(v269 + 40) = v273;
          os_log(_:dso:log:_:_:)();

          sub_100B1CE90(v270, v242, sub_100B22EDC, v267);

          sub_100022C40(v270, type metadata accessor for OwnedBeaconGroup);
          v243 = v387;
          (v407)(v355, v387);
          sub_100022C40(v356, type metadata accessor for OwnedBeaconRecord);
          v244 = v414;
          v245 = v369;
          v246 = v368;
        }

        v223 = v366;
      }
    }

    else
    {
      v249(v247, 1, 1, v245);
      sub_10000B3A8(v247, &unk_1016A9A20, &qword_10138B280);
    }

    goto LABEL_58;
  }

  v204 = v199[4];
  v205 = v395;
  v206 = v377;
  while (1)
  {
    v204(v206, v205, v197);
    v207 = objc_autoreleasePoolPush();
    v208 = v418;
    sub_1006005CC(v206, v388, &aBlock, v425);
    v418 = v208;
    if (v208)
    {
      break;
    }

    objc_autoreleasePoolPop(v207);
    (v199[1])(v206, v197);
    DirectorySequence.next()();
    if (v203(v205, 1, v197) == 1)
    {
      goto LABEL_42;
    }
  }

  objc_autoreleasePoolPop(v207);
  __break(1u);
}

void sub_100AE6074(char a1)
{
  Transaction.capture()();
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_101385D80;
    v3 = UUID.uuidString.getter();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100008C00();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v6 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100AE6190(char a1)
{
  Transaction.capture()();
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:

  return os_log(_:dso:log:_:_:)();
}

void sub_100AE62A4(void *a1, char a2)
{
  Transaction.capture()();
  if (a2)
  {
    v4 = a1;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    type metadata accessor for SPSeparationMonitoringError(0);
    v6 = v4;
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100408170(a1, 1);
  }
}

void sub_100AE63DC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_1000076D4(v16, qword_10177C418);
  (*(v12 + 16))(v15, a3, v11);
  v34 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v32 = swift_slowAlloc();
    v33 = a6;
    v35[0] = v32;
    *v21 = 141558531;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = a5;
    v24 = a4;
    v26 = v25;
    (*(v12 + 8))(v15, v11);
    v27 = sub_1000136BC(v22, v26, v35);
    a4 = v24;
    a5 = v23;

    *(v21 + 14) = v27;
    *(v21 + 22) = 1024;
    *(v21 + 24) = v31 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Remove OwnedBeaconGroup %{private,mask.hash}s? %{BOOL}d", v21, 0x1Cu);
    sub_100007BAC(v32);
    a6 = v33;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  sub_1005160CC(v34);
  if (a5)
  {
    v28 = *(a6 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
    v35[3] = type metadata accessor for OwnedBeaconGroup(0);
    v35[4] = sub_10000768C(&qword_1016B5448, type metadata accessor for OwnedBeaconGroup);
    v29 = sub_1000280DC(v35);
    sub_100022A54(a4, v29, type metadata accessor for OwnedBeaconGroup);
    PassthroughSubject.send(_:)();
    sub_100007BAC(v35);
  }
}

void sub_100AE6740(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v51[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v51[-v17];
  __chkstk_darwin(v16);
  v20 = &v51[-v19];
  Transaction.capture()();
  if (a1)
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177CE28);
    v22 = v8[2];
    v22(v20, a3, v7);
    v22(v18, a4, v7);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v53;
      *v25 = 141558787;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v52 = v24;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v29 = v8[1];
      v29(v20, v7);
      v30 = sub_1000136BC(v26, v28, &v54);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2160;
      *(v25 + 24) = 1752392040;
      *(v25 + 32) = 2081;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v29(v18, v7);
      v34 = sub_1000136BC(v31, v33, &v54);

      *(v25 + 34) = v34;
      _os_log_impl(&_mh_execute_header, v23, v52, "OwnedDeviceKeyRecord removed deviceIdentifier:%{private,mask.hash}s, uuid:%{private,mask.hash}s.", v25, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v49 = v8[1];
      v49(v18, v7);
      v49(v20, v7);
    }
  }

  else
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177CE28);
    v36 = v8[2];
    v36(v15, a3, v7);
    v36(v12, a4, v7);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v53;
      *v39 = 141558787;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v52 = v38;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v43 = v8[1];
      v43(v15, v7);
      v44 = sub_1000136BC(v40, v42, &v54);

      *(v39 + 14) = v44;
      *(v39 + 22) = 2160;
      *(v39 + 24) = 1752392040;
      *(v39 + 32) = 2081;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v43(v12, v7);
      v48 = sub_1000136BC(v45, v47, &v54);

      *(v39 + 34) = v48;
      _os_log_impl(&_mh_execute_header, v37, v52, "Could not remove OwnedDeviceKeyRecord deviceIdentifier:%{private,mask.hash}s, uuid:%{private,mask.hash}s.", v39, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v50 = v8[1];
      v50(v12, v7);
      v50(v15, v7);
    }
  }
}

uint64_t sub_100AE6D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100AE6E0C, 0, 0);
}

uint64_t sub_100AE6E0C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = *(v0[4] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v5 = v0[2];
  v0[10] = v5;
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(*(*(v7 + 8) + 8) + 32))(v6);
  v8 = getuid();
  sub_1000294F0(v8);
  v9 = *(v5 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_100AE6F68;
  v11 = v0[8];
  v12 = v0[9];

  return sub_100689160(v12, v11);
}

uint64_t sub_100AE6F68()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v12 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    v4 = sub_100AE714C;
  }

  else
  {
    v6 = v2[9];
    v5 = v2[10];
    v8 = v2[7];
    v7 = v2[8];
    v9 = v2[6];
    v10 = *(v8 + 8);
    v10(v7, v9);
    v10(v6, v9);

    v4 = sub_100AE70D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100AE70D0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  **(v0 + 24) = *(v0 + 96) != 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100AE714C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(*(v0 + 56) + 8);
  v4(*(v0 + 64), v3);
  v4(v1, v3);

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  **(v0 + 24) = *(v0 + 96) != 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100AE7214(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for UUID();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_100AE7304;

  return daemon.getter();
}

uint64_t sub_100AE7304(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100AE74E0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100AE74E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = a1;

  v7 = *(v3 + 56);
  if (v1)
  {

    v8 = *(v4 + 40);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_100AE7660, 0, 0);
  }
}

uint64_t sub_100AE7660()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100AE773C;
  v6 = v0[9];
  v7 = v0[5];

  return sub_1010D0080(v7);
}

uint64_t sub_100AE773C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100AE78AC;
  }

  else
  {
    v6 = sub_1006FEB78;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100AE78AC()
{
  v1 = v0[9];

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BA08);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not delete key sync metadata %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100AE7A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76 = a7;
  v86 = a6;
  v87 = a1;
  v88 = a5;
  v89 = a2;
  v91 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  __chkstk_darwin(v8);
  v81 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  v11 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CloudKitChangeSet(0);
  v84 = *(v78 - 8);
  v13 = *(v84 + 64);
  v14 = __chkstk_darwin(v78);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v85 = &v75 - v16;
  __chkstk_darwin(v15);
  v18 = &v75 - v17;
  v19 = type metadata accessor for Notification();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v94 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  LODWORD(v90) = v92;
  if (v92 == 1)
  {
    String._bridgeToObjectiveC()();
    v24 = type metadata accessor for UUID();
    v96 = v24;
    v25 = sub_1000280DC(&aBlock);
    (*(*(v24 - 8) + 16))(v25, a3, v24);
    Notification.init(name:object:userInfo:)();
    v26 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v26 postNotification:isa];

    (*(v20 + 8))(v23, v19);
  }

  else
  {
    v28 = [objc_opt_self() standardUserDefaults];
    UUID.uuidString.getter();
    v29 = String._bridgeToObjectiveC()();

    v30 = String._bridgeToObjectiveC()();
    [v28 setObject:v29 forKey:v30];
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000076D4(v31, qword_10177BA08);
  sub_100022A54(a3, v18, type metadata accessor for CloudKitChangeSet);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v75 = v13;
    v35 = v8;
    v36 = v34;
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v36 = 136446210;
    v38 = sub_100EC17B8();
    v40 = v39;
    sub_100022C40(v18, type metadata accessor for CloudKitChangeSet);
    v41 = sub_1000136BC(v38, v40, &aBlock);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Begin applying %{public}s", v36, 0xCu);
    sub_100007BAC(v37);

    v8 = v35;
    v13 = v75;
  }

  else
  {

    sub_100022C40(v18, type metadata accessor for CloudKitChangeSet);
  }

  v42 = v91;
  v43 = mach_continuous_time();
  if (v90)
  {
    sub_10090B10C(_swiftEmptyArrayStorage);

    v44 = *(v42 + 72);
    v45 = v85;
    sub_100022A54(a3, v85, type metadata accessor for CloudKitChangeSet);
    v46 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v47 = (v13 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    sub_10002911C(v45, v49 + v46, type metadata accessor for CloudKitChangeSet);
    v50 = (v49 + v47);
    v51 = v88;
    v52 = v89;
    *v50 = v87;
    v50[1] = v52;
    v53 = (v49 + v48);
    v54 = v86;
    *v53 = v51;
    v53[1] = v54;
    v97 = sub_100B03CB0;
    v98 = v49;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100006684;
    v96 = &unk_1016462E0;
    v55 = _Block_copy(&aBlock);

    v56 = v79;
    static DispatchQoS.unspecified.getter();
    v92 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v57 = v81;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v55);
    (*(v83 + 8))(v57, v8);
    (*(v80 + 8))(v56, v82);
  }

  else
  {
    v58 = v43;
    v59 = sub_100AE86B8(*(a3 + *(v78 + 24)));
    v60 = v42;
    v61 = *(v42 + 184);
    v91 = v59;
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v62 = v85;
    sub_100022A54(a3, v85, type metadata accessor for CloudKitChangeSet);
    v63 = *(v84 + 80);
    v90 = a3;
    v64 = (v63 + 32) & ~v63;
    v65 = (v13 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = v60;
    *(v68 + 24) = v58;
    sub_10002911C(v62, v68 + v64, type metadata accessor for CloudKitChangeSet);
    v69 = (v68 + v65);
    v70 = v88;
    v71 = v89;
    *v69 = v87;
    v69[1] = v71;
    *(v68 + v66) = v91;
    v72 = (v68 + v67);
    v73 = v86;
    *v72 = v70;
    v72[1] = v73;
    *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = v76;

    sub_100FCF8D4(v90, sub_100AF6418, v68);
  }
}

uint64_t sub_100AE86B8(uint64_t a1)
{
  v90 = type metadata accessor for URL();
  v2 = *(v90 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v90);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for BeaconStoreFileRecord();
  v79 = *(v84 - 8);
  v10 = *(v79 + 64);
  v11 = __chkstk_darwin(v84);
  v93 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v72 - v13;
  v83 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v77 = *(v83 - 8);
  v15 = *(v77 + 64);
  __chkstk_darwin(v83);
  v76 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016B5450, &qword_1013D65F8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v89 = (&v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v88 = (&v72 - v21);
  v22 = *(a1 + 64);
  v74 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v73 = (v23 + 63) >> 6;
  v81 = (v2 + 16);
  v82 = (v7 + 16);
  v86 = (v2 + 8);
  v87 = (v7 + 8);
  v78 = a1;

  v26 = 0;
  v27 = &_swiftEmptyDictionarySingleton;
  v91 = v6;
  v94 = v5;
  v75 = v14;
  while (1)
  {
    v95 = v27;
    if (!v25)
    {
      break;
    }

    v28 = v26;
    v29 = v90;
LABEL_16:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v28 << 6);
    v34 = *(*(v78 + 48) + 8 * v33);
    v35 = v76;
    sub_100022A54(*(v78 + 56) + *(v77 + 72) * v33, v76, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    v36 = sub_1000BC4D4(&qword_1016B5458, &unk_1013D6600);
    v37 = *(v36 + 48);
    v38 = v89;
    *v89 = v34;
    sub_10002911C(v35, v38 + v37, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    (*(*(v36 - 8) + 56))(v38, 0, 1, v36);
    v39 = v34;
    v92 = v28;
    v40 = v38;
    v6 = v91;
    v14 = v75;
    v31 = v29;
LABEL_17:
    v41 = v88;
    sub_1000D2AD8(v40, v88, &qword_1016B5450, &qword_1013D65F8);
    v42 = sub_1000BC4D4(&qword_1016B5458, &unk_1013D6600);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {

      return v95;
    }

    v43 = *v41;
    v44 = v41 + *(v42 + 48);
    v45 = v14;
    v46 = *(v85 + 168);
    v47 = v83;
    v48 = v80;
    (*v82)(v80, v44 + *(v83 + 20), v6);
    (*v81)(v94, v44 + *(v47 + 24), v31);
    v49 = sub_100022C40(v44, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    v50 = *(v46 + 16);
    __chkstk_darwin(v49);
    *(&v72 - 4) = v46;
    *(&v72 - 3) = v48;
    v51 = v94;
    *(&v72 - 2) = v94;
    v52 = v96;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v52)
    {

      (*v86)(v51, v31);
      (*v87)(v48, v6);
      v70 = v95;
      sub_100B2145C(v95);

      swift_willThrow();
      v96 = v52;
      return v70;
    }

    v96 = 0;
    (*v86)(v51, v31);
    (*v87)(v48, v6);
    v53 = v45;
    sub_100022A54(v45, v93, type metadata accessor for BeaconStoreFileRecord);
    v54 = v95;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v54;
    v57 = sub_100771FF8(v43);
    v58 = *(v54 + 16);
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_33;
    }

    v61 = v56;
    v62 = v43;
    if (*(v54 + 24) >= v60)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10100CBA4();
      }
    }

    else
    {
      sub_100FF5864(v60, isUniquelyReferenced_nonNull_native);
      v63 = sub_100771FF8(v43);
      if ((v61 & 1) != (v64 & 1))
      {
        goto LABEL_35;
      }

      v57 = v63;
    }

    v27 = v97;
    if (v61)
    {
      sub_100B25C50(v93, v97[7] + *(v79 + 72) * v57, type metadata accessor for BeaconStoreFileRecord);

      v14 = v53;
      sub_100022C40(v53, type metadata accessor for BeaconStoreFileRecord);
    }

    else
    {
      v97[(v57 >> 6) + 8] |= 1 << v57;
      *(v27[6] + 8 * v57) = v62;
      sub_10002911C(v93, v27[7] + *(v79 + 72) * v57, type metadata accessor for BeaconStoreFileRecord);
      v14 = v53;
      sub_100022C40(v53, type metadata accessor for BeaconStoreFileRecord);
      v65 = v27[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_34;
      }

      v27[2] = v67;
    }

    v6 = v91;
    v26 = v92;
  }

  if (v73 <= v26 + 1)
  {
    v30 = v26 + 1;
  }

  else
  {
    v30 = v73;
  }

  v31 = v90;
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v73)
    {
      v92 = v30 - 1;
      v68 = sub_1000BC4D4(&qword_1016B5458, &unk_1013D6600);
      v69 = v89;
      (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
      v40 = v69;
      v25 = 0;
      goto LABEL_17;
    }

    v25 = *(v74 + 8 * v28);
    ++v26;
    if (v25)
    {
      v29 = v90;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100AE8F9C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v32 = a3;
  v33 = a2;
  v4 = type metadata accessor for CloudKitChangeSet(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  String._bridgeToObjectiveC()();
  v13 = type metadata accessor for UUID();
  v34[3] = v13;
  v14 = sub_1000280DC(v34);
  (*(*(v13 - 8) + 16))(v14, a1, v13);
  Notification.init(name:object:userInfo:)();
  v15 = [objc_opt_self() defaultCenter];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v15 postNotification:isa];

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177BA08);
  sub_100022A54(a1, v7, type metadata accessor for CloudKitChangeSet);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = v7;
    v22 = swift_slowAlloc();
    v34[0] = v22;
    *v20 = 136446210;
    v23 = sub_100EC17B8();
    v31 = v12;
    v24 = v9;
    v26 = v25;
    sub_100022C40(v21, type metadata accessor for CloudKitChangeSet);
    v27 = sub_1000136BC(v23, v26, v34);
    v9 = v24;
    v12 = v31;

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Calling wakeChangeSetQueue() after completing %{public}s", v20, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    v28 = sub_100022C40(v7, type metadata accessor for CloudKitChangeSet);
  }

  v33(v28);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100AE9318(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a7;
  v42 = a5;
  v41 = a4;
  v48 = a3;
  v44 = a1;
  v45 = a2;
  v51 = a12;
  v49 = a11;
  v47 = a10;
  v43 = a9;
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v55 - 8);
  v15 = *(v57 + 64);
  __chkstk_darwin(v55);
  v53 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  v17 = *(v54 + 64);
  __chkstk_darwin(v56);
  v50 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CloudKitChangeSet(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a4 + 72);
  sub_100022A54(a6, v22, type metadata accessor for CloudKitChangeSet);
  v23 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v24 = (v21 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v42;
  sub_10002911C(v22, v28 + v23, type metadata accessor for CloudKitChangeSet);
  v29 = (v28 + v24);
  *v29 = v46;
  v29[1] = a8;
  v30 = v28 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v31 = v44;
  v32 = v45;
  *v30 = v44;
  *(v30 + 8) = v32;
  LOBYTE(v23) = v48 & 1;
  *(v30 + 16) = v48 & 1;
  *(v28 + v25) = v43;
  *(v28 + v26) = v41;
  v33 = (v28 + v27);
  v34 = v49;
  *v33 = v47;
  v33[1] = v34;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v51;
  aBlock[4] = sub_100B03DD0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101646330;
  v35 = _Block_copy(aBlock);

  sub_100B03EB0(v31, v32, v23);

  v36 = v50;
  static DispatchQoS.unspecified.getter();
  v58 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v37 = v53;
  v38 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v57 + 8))(v37, v38);
  (*(v54 + 8))(v36, v56);
}

uint64_t sub_100AE97C0(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11)
{
  v167 = a8;
  v168 = a6;
  v153 = type metadata accessor for CloudKitChangeSet(0);
  v18 = *(*(v153 - 8) + 64);
  v19 = __chkstk_darwin(v153);
  v21 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v154 = &v143 - v22;
  v23 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v149 = *(v23 - 8);
  v24 = *(v149 + 64);
  __chkstk_darwin(v23 - 8);
  v148 = (&v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v143 - v28;
  v152 = type metadata accessor for BeaconStoreFileRecord();
  v156 = *(v152 - 8);
  v30 = *(v156 + 64);
  v31 = __chkstk_darwin(v152);
  v151 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v150 = &v143 - v33;
  v34 = mach_continuous_time();
  v35 = v34 >= a1;
  v36 = v34 - a1;
  if (!v35)
  {
    goto LABEL_89;
  }

  v159 = a11;
  v160 = a10;
  v11 = convertToNanoseconds(_:)(v36) / 1000000.0;
  v161 = a3;
  if (a7)
  {
    v172 = a5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
LABEL_5:
    sub_100B2145C(v167);
    v37 = [objc_opt_self() standardUserDefaults];
    v38 = String._bridgeToObjectiveC()();
    [v37 removeObjectForKey:v38];

    if (qword_101694BE8 != -1)
    {
      goto LABEL_90;
    }

    goto LABEL_6;
  }

  v146 = a4;
  v51 = v168 + 64;
  v50 = *(v168 + 64);
  v158 = a9;
  v52 = 1 << *(v168 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v50;
  v55 = (v52 + 63) >> 6;
  v144 = (v156 + 56);

  a4 = 0;
  v56 = 0;
  v147 = _swiftEmptyArrayStorage;
  v157 = &_swiftEmptyDictionarySingleton;
  *&v57 = 138412546;
  v155 = v57;
  v163 = a5;
  v145 = v21;
  v21 = v167;
  v164 = v29;
  v165 = v51;
  v166 = v55;
  while (v54)
  {
LABEL_18:
    v59 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v60 = v59 | (a4 << 6);
    v61 = *(*(v168 + 48) + 8 * v60);
    v62 = *(v168 + 56) + 16 * v60;
    if (*(v62 + 8) == 1)
    {
      v63 = *v62;
      v64 = v61;
      sub_100B21C10(v63, 1);
      v65 = v64;
      sub_100B21C10(v63, 1);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_1000076D4(v66, qword_10177BA08);
      v67 = v65;
      sub_100B21C10(v63, 1);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      sub_1000BB584(v63, 1);
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v162 = v56;
        v71 = a2;
        v72 = v70;
        v73 = swift_slowAlloc();
        *v72 = v155;
        *(v72 + 4) = v67;
        *v73 = v67;
        *(v72 + 12) = 2114;
        v74 = v67;
        v75 = _convertErrorToNSError(_:)();
        *(v72 + 14) = v75;
        v73[1] = v75;
        _os_log_impl(&_mh_execute_header, v68, v69, "Unexpected error deleting recordID [%@]: %{public}@", v72, 0x16u);
        sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
        swift_arrayDestroy();
        v21 = v167;

        a2 = v71;
        v56 = v162;

        a5 = v163;
        sub_1000BB584(v63, 1);
      }

      else
      {

        sub_1000BB584(v63, 1);
      }

      v55 = v166;

      sub_1000BB584(v63, 1);
      v29 = v164;
      v51 = v165;
    }

    else
    {
      v76 = *(v21 + 2);
      v77 = v61;
      v78 = v77;
      v162 = v77;
      if (v76 && (v79 = sub_100771FF8(v77), (v80 & 1) != 0))
      {
        v81 = *(v21 + 7);
        v82 = *(v156 + 72);
        v83 = v150;
        sub_100022A54(v81 + v82 * v79, v150, type metadata accessor for BeaconStoreFileRecord);
        sub_10002911C(v83, v151, type metadata accessor for BeaconStoreFileRecord);
        v84 = v78;
        v85 = v157;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v172 = v85;
        v87 = sub_100771FF8(v84);
        v89 = v85[2];
        v90 = (v88 & 1) == 0;
        v91 = __OFADD__(v89, v90);
        v92 = v89 + v90;
        if (v91)
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v93 = v88;
        if (v85[3] >= v92)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v117 = v87;
            sub_10100CBA4();
            v87 = v117;
            a5 = v163;
          }
        }

        else
        {
          sub_100FF5864(v92, isUniquelyReferenced_nonNull_native);
          v87 = sub_100771FF8(v84);
          if ((v93 & 1) != (v94 & 1))
          {
            goto LABEL_93;
          }
        }

        v55 = v166;
        v102 = v172;
        v157 = v172;
        if (v93)
        {
          sub_100B25C50(v151, v172[7] + v87 * v82, type metadata accessor for BeaconStoreFileRecord);
        }

        else
        {
          v172[(v87 >> 6) + 8] |= 1 << v87;
          *(v102[6] + 8 * v87) = v84;
          sub_10002911C(v151, v102[7] + v87 * v82, type metadata accessor for BeaconStoreFileRecord);
          v103 = v102[2];
          v91 = __OFADD__(v103, 1);
          v104 = v103 + 1;
          if (v91)
          {
            goto LABEL_92;
          }

          v102[2] = v104;
        }

        v21 = v167;
        v29 = v164;
      }

      else
      {
        v95 = v78;
        v96 = v157;
        v97 = sub_100771FF8(v95);
        if (v98)
        {
          v99 = v97;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v172 = v96;
          if (!v100)
          {
            sub_10100CBA4();
            v96 = v172;
          }

          sub_10002911C(v96[7] + *(v156 + 72) * v99, v29, type metadata accessor for BeaconStoreFileRecord);
          v157 = v96;
          sub_100AF9CCC(v99, v96, type metadata accessor for BeaconStoreFileRecord);

          v101 = 0;
        }

        else
        {

          v101 = 1;
        }

        (*v144)(v29, v101, 1, v152);
        sub_10000B3A8(v29, &qword_1016B53E0, &unk_1013D65D0);
        v55 = v166;
      }

      v105 = v162;
      v106 = *(a2 + *(v153 + 24));
      if (*(v106 + 16) && (v107 = sub_100771FF8(v162), (v108 & 1) != 0))
      {
        v109 = v148;
        sub_100022A54(*(v106 + 56) + *(v149 + 72) * v107, v148, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
        v110 = *v109;
        sub_100022C40(v109, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
        type metadata accessor for BeaconStore(0);
        sub_100AEA9F4(v110, &v169);
        if (v56)
        {

          v111 = v162;
          v56 = 0;
          v171 = 0;
          v169 = 0u;
          v170 = 0u;
          goto LABEL_49;
        }

        v112 = v162;
        if (*(&v170 + 1))
        {
          sub_10000A748(&v169, &v172);
          sub_10001F280(&v172, &v169);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = sub_100A5C340(0, v147[2] + 1, 1, v147);
          }

          v114 = v147[2];
          v113 = v147[3];
          v143 = v114 + 1;
          if (v114 >= v113 >> 1)
          {
            v147 = sub_100A5C340((v113 > 1), v114 + 1, 1, v147);
          }

          v115 = v162;

          sub_100007BAC(&v172);
          v116 = v147;
          v147[2] = v143;
          sub_10000A748(&v169, &v116[5 * v114 + 4]);
          v21 = v167;
          v51 = v165;
        }

        else
        {

LABEL_49:
          sub_10000B3A8(&v169, &qword_101697930, &qword_10138C9C8);
          v51 = v165;
        }
      }

      else
      {

        v51 = v165;
      }
    }
  }

  while (1)
  {
    v58 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v58 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v58);
    ++a4;
    if (v54)
    {
      a4 = v58;
      goto LABEL_18;
    }
  }

  v21 = a2;

  sub_100B21C1C(v157);
  a4 = a5 + 64;
  v118 = 1 << *(a5 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  a2 = v119 & *(a5 + 64);
  v120 = (v118 + 63) >> 6;

  v121 = 0;
  if (a2)
  {
    goto LABEL_64;
  }

LABEL_60:
  while (1)
  {
    v122 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      break;
    }

    if (v122 >= v120)
    {

      v160(0, 0);
      v126 = v158;
      sub_100A8375C();
      v127 = v147[2];
      if (v127)
      {
        v128 = *(v126 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
        v129 = v147 + 4;
        a2 = v21;
        v130 = v154;
        do
        {
          sub_10001F280(v129, &v172);
          PassthroughSubject.send(_:)();
          sub_100007BAC(&v172);
          v129 += 5;
          --v127;
        }

        while (v127);
      }

      else
      {

        a2 = v21;
        v130 = v154;
      }

      v131 = [objc_opt_self() standardUserDefaults];
      v132 = String._bridgeToObjectiveC()();
      [v131 removeObjectForKey:v132];

      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v133 = type metadata accessor for Logger();
      sub_1000076D4(v133, qword_10177BA08);
      sub_100022A54(a2, v130, type metadata accessor for CloudKitChangeSet);
      variable initialization expression of CurrentLocationMonitor._currentAuthorizationStatus();
      variable initialization expression of CurrentLocationMonitor._currentAuthorizationStatus();
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v172 = v137;
        *v136 = 136446722;
        v138 = sub_100EC17B8();
        v140 = v139;
        sub_100022C40(v130, type metadata accessor for CloudKitChangeSet);
        v141 = sub_1000136BC(v138, v140, &v172);

        *(v136 + 4) = v141;
        *(v136 + 12) = 1040;
        *(v136 + 14) = 0;
        *(v136 + 18) = 2048;
        *(v136 + 20) = v11;
        _os_log_impl(&_mh_execute_header, v134, v135, "Done applying %{public}s duration: %.*fms [Success]", v136, 0x1Cu);
        sub_100007BAC(v137);
      }

      else
      {

        sub_100022C40(v130, type metadata accessor for CloudKitChangeSet);
      }

      a4 = v146;
      return sub_100AEB29C(a2, v161, a4, "Calling wakeChangeSetQueue() after completing %{public}s");
    }

    a2 = *(a4 + 8 * v122);
    ++v121;
    if (a2)
    {
      while (1)
      {
        v123 = *(a5 + 56) + ((v122 << 10) | (16 * __clz(__rbit64(a2))));
        v124 = *v123;
        if (*(v123 + 8))
        {
          v172 = *v123;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          swift_willThrowTypedImpl();

          a5 = v124;
          goto LABEL_86;
        }

        type metadata accessor for BeaconStore(0);
        sub_100B223D0(v124, 0);
        sub_100AEA9F4(v124, &v169);
        if (v56)
        {
          break;
        }

        a2 &= a2 - 1;
        if (*(&v170 + 1))
        {
          sub_10000A748(&v169, &v172);
          v125 = v173;
          sub_1000035D0(&v172, v173);
          sub_100137DEC(*(v158 + 168), v125);
          sub_1000BB578(v124, 0);
          sub_1000BB578(v124, 0);
          sub_100007BAC(&v172);
          v121 = v122;
          a5 = v163;
          if (!a2)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_1000BB578(v124, 0);
          sub_1000BB578(v124, 0);
          sub_10000B3A8(&v169, &qword_101697930, &qword_10138C9C8);
          v121 = v122;
          if (!a2)
          {
            goto LABEL_60;
          }
        }

LABEL_64:
        v122 = v121;
      }

      sub_1000BB578(v124, 0);
      sub_1000BB578(v124, 0);

      a5 = v56;
LABEL_86:
      a4 = v146;
      a2 = v21;
      v21 = v145;
      goto LABEL_5;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  swift_once();
LABEL_6:
  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177BA08);
  sub_100022A54(a2, v21, type metadata accessor for CloudKitChangeSet);
  variable initialization expression of CurrentLocationMonitor._currentAuthorizationStatus();
  variable initialization expression of CurrentLocationMonitor._currentAuthorizationStatus();
  v40 = Logger.logObject.getter();
  v41 = v21;
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v172 = v44;
    *v43 = 136446722;
    v45 = sub_100EC17B8();
    v46 = a5;
    v48 = v47;
    sub_100022C40(v41, type metadata accessor for CloudKitChangeSet);
    v49 = sub_1000136BC(v45, v48, &v172);
    a5 = v46;

    *(v43 + 4) = v49;
    *(v43 + 12) = 1040;
    *(v43 + 14) = 0;
    *(v43 + 18) = 2048;
    *(v43 + 20) = v11;
    _os_log_impl(&_mh_execute_header, v40, v42, "Done applying %{public}s duration: %.*fms [Failure]", v43, 0x1Cu);
    sub_100007BAC(v44);
  }

  else
  {

    sub_100022C40(v41, type metadata accessor for CloudKitChangeSet);
  }

  swift_errorRetain();
  v160(a5, 1);

  return sub_100AEB29C(a2, v161, a4, "Calling wakeChangeSetQueue() after completing %{public}s");
}

void sub_100AEA9F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = CKRecord.recordType.getter();
  v7 = sub_1008DA998(v5, v6);

  switch(v7)
  {
    case 1:
      *(a2 + 24) = type metadata accessor for SharedBeaconRecord(0);
      *(a2 + 32) = sub_10000768C(&unk_1016CAC90, type metadata accessor for SharedBeaconRecord);
      v19 = sub_1000280DC(a2);
      sub_1011D5D0C(a1, v19);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 2:
      *(a2 + 24) = type metadata accessor for OwnedBeaconGroup(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5448, type metadata accessor for OwnedBeaconGroup);
      v15 = sub_1000280DC(a2);
      sub_100518A90(a1, v15);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 3:
      *(a2 + 24) = type metadata accessor for ShareRecord();
      *(a2 + 32) = sub_10000768C(&qword_1016B5440, type metadata accessor for ShareRecord);
      v17 = sub_1000280DC(a2);
      sub_1001547CC(a1, v17);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 4:
      *(a2 + 24) = type metadata accessor for BeaconNamingRecord();
      *(a2 + 32) = sub_10000768C(&qword_10169EEE0, type metadata accessor for BeaconNamingRecord);
      v12 = sub_1000280DC(a2);
      sub_100DE08D0(a1, v12);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 5:
      *(a2 + 24) = type metadata accessor for NotifyWhenFoundRecord();
      *(a2 + 32) = sub_10000768C(&qword_1016B5438, type metadata accessor for NotifyWhenFoundRecord);
      v29 = sub_1000280DC(a2);
      sub_1004EBE10(a1, v29);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 6:
      *(a2 + 24) = type metadata accessor for BeaconEstimatedLocation();
      *(a2 + 32) = sub_10000768C(&qword_1016B5430, type metadata accessor for BeaconEstimatedLocation);
      v31 = sub_1000280DC(a2);
      sub_100D16BD0(a1, v31);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 7:
      *(a2 + 24) = type metadata accessor for LeashRecord();
      *(a2 + 32) = sub_10000768C(&qword_1016B5428, type metadata accessor for LeashRecord);
      v18 = sub_1000280DC(a2);
      sub_101251FDC(a1, v18);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 8:
      *(a2 + 24) = type metadata accessor for SafeLocation();
      *(a2 + 32) = sub_10000768C(&qword_1016B5420, type metadata accessor for SafeLocation);
      v33 = sub_1000280DC(a2);
      sub_100EE51B8(a1, v33);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 9:
      *(a2 + 24) = type metadata accessor for LostModeRecord();
      *(a2 + 32) = sub_10000768C(&qword_1016B5418, type metadata accessor for LostModeRecord);
      v14 = sub_1000280DC(a2);
      sub_100E7815C(a1, v14);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 10:
      *(a2 + 24) = type metadata accessor for KeyAlignmentRecord();
      *(a2 + 32) = sub_10000768C(&qword_1016B5410, type metadata accessor for KeyAlignmentRecord);
      v32 = sub_1000280DC(a2);
      sub_100150FC8(a1, v32);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 11:
      *(a2 + 24) = type metadata accessor for OwnedDeviceKeyRecord();
      *(a2 + 32) = sub_10000768C(&qword_1016B5408, type metadata accessor for OwnedDeviceKeyRecord);
      v11 = sub_1000280DC(a2);
      sub_101103E74(a1, v11);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 12:
      *(a2 + 24) = type metadata accessor for OwnerPeerTrust();
      *(a2 + 32) = sub_10000768C(&qword_10169EEF8, type metadata accessor for OwnerPeerTrust);
      v13 = sub_1000280DC(a2);
      sub_100310ECC(a1, v13);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 13:
      *(a2 + 24) = type metadata accessor for MemberPeerTrust();
      *(a2 + 32) = sub_10000768C(&qword_10169EEF0, type metadata accessor for MemberPeerTrust);
      v30 = sub_1000280DC(a2);
      sub_100E939A4(a1, v30);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 14:
      *(a2 + 24) = type metadata accessor for OwnerSharingCircle();
      *(a2 + 32) = sub_10000768C(&qword_1016B5400, type metadata accessor for OwnerSharingCircle);
      v10 = sub_1000280DC(a2);
      sub_100E0F270(a1, v10);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 15:
      *(a2 + 24) = type metadata accessor for MemberSharingCircle();
      *(a2 + 32) = sub_10000768C(&qword_1016B53F8, type metadata accessor for MemberSharingCircle);
      v16 = sub_1000280DC(a2);
      sub_1003268EC(a1, v16);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 16:
      *(a2 + 24) = type metadata accessor for SharingCircleSecret();
      *(a2 + 32) = sub_10000768C(&qword_10169EEE8, type metadata accessor for SharingCircleSecret);
      v9 = sub_1000280DC(a2);
      sub_100D69EDC(a1, v9);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 17:
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000076D4(v20, qword_10177BA08);
      v21 = a1;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v34 = v25;
        *v24 = 136446210;
        v26 = CKRecord.recordType.getter();
        v28 = sub_1000136BC(v26, v27, &v34);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Unexpected recordType: %{public}s", v24, 0xCu);
        sub_100007BAC(v25);
      }

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      break;
    default:
      *(a2 + 24) = type metadata accessor for OwnedBeaconRecord();
      *(a2 + 32) = sub_10000768C(&unk_1016BB080, type metadata accessor for OwnedBeaconRecord);
      v8 = sub_1000280DC(a2);
      sub_100D5E184(a1, v8);
      if (v2)
      {
LABEL_32:
        sub_100101758(a2);
      }

      break;
  }
}

uint64_t sub_100AEB29C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  v7 = type metadata accessor for CloudKitChangeSet(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BA08);
  sub_100022A54(a1, v10, type metadata accessor for CloudKitChangeSet);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = sub_100EC17B8();
    v18 = v17;
    sub_100022C40(v10, type metadata accessor for CloudKitChangeSet);
    v19 = sub_1000136BC(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, a4, v14, 0xCu);
    sub_100007BAC(v15);
  }

  else
  {

    v20 = sub_100022C40(v10, type metadata accessor for CloudKitChangeSet);
  }

  return a2(v20);
}

uint64_t sub_100AEB4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a2;
  v4 = sub_1000BC4D4(&qword_1016B55B0, &qword_1013D6B38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = sub_10112B714(&off_10160CFC8);
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10177CEA0 + 24);

  v11 = AnyCurrentValuePublisher.publisher.getter();

  v19 = v11;
  *(swift_allocObject() + 16) = v9;
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0);
  Publisher.first(where:)();

  v12 = swift_allocObject();
  v13 = v17;
  v14 = v18;
  v12[2] = a1;
  v12[3] = v13;
  v12[4] = v14;
  sub_1000041A4(&qword_1016B55B8, &qword_1016B55B0, &qword_1013D6B38);

  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  AnyCancellable.store(in:)();
}

uint64_t sub_100AEB758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = a3;
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100AEB838(char a1, void (*a2)(char *, uint64_t), uint64_t *a3, uint64_t a4)
{
  v55 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v22);
  v27 = &v51 - v26;
  if (a1)
  {
    v52 = a4;
    v53 = a3;
    v28 = [objc_opt_self() standardUserDefaults];
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 stringForKey:v29];

    if (v30)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();
    }

    else
    {
      (*(v8 + 56))(v27, 1, 1, v7);
    }

    sub_100EF8F2C(v19);
    v31 = *(v8 + 16);
    v31(v17, v19, v7);
    sub_1000D2A70(v27, v24, &qword_1016980D0, &unk_10138F3B0);
    v32 = (*(v8 + 48))(v24, 1, v7);
    v33 = v53;
    if (v32 == 1)
    {
      sub_10000B3A8(v24, &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000076D4(v34, qword_10177BA08);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v52;
      if (v37)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "No lastDuplicateRecoveryBootSessionUUID on record", v39, 2u);
      }

      sub_100AEBE80(v55, v17, v33, v38);
      v40 = *(v8 + 8);
      v40(v17, v7);
    }

    else
    {
      (*(v8 + 32))(v14, v24, v7);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v55 = *(v8 + 8);
        v55(v17, v7);
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1000076D4(v41, qword_10177BA08);
        v42 = v54;
        v31(v54, v19, v7);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v56 = v53;
          *v45 = 136315138;
          v46 = UUID.uuidString.getter();
          v47 = v42;
          v49 = v48;
          v55(v47, v7);
          v50 = sub_1000136BC(v46, v49, &v56);

          *(v45 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v43, v44, "removeDuplicateBeaconsCheck already ran for boot session: %s", v45, 0xCu);
          sub_100007BAC(v53);

          v40 = v55;
          v55(v14, v7);
        }

        else
        {

          v40 = v55;
          v55(v42, v7);
          v40(v14, v7);
        }
      }

      else
      {
        sub_100AEBE80(v55, v17, v33, v52);
        v40 = *(v8 + 8);
        v40(v14, v7);
        v40(v17, v7);
      }
    }

    v40(v19, v7);
    return sub_10000B3A8(v27, &qword_1016980D0, &unk_10138F3B0);
  }

  return result;
}

uint64_t sub_100AEBE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v11, v10, v7);
  *(v14 + v12) = a1;
  *(v14 + v13) = a3;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = sub_100B26AC8;
  v15[4] = v14;
  swift_retain_n();

  sub_100ACBF00(sub_100B26B7C, v15);
}

void sub_100AEC050(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  if (a1)
  {
    (*(v11 + 16))(v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = a4;
    (*(v11 + 32))(&v14[v13], v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *&v14[(v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a5;
    v15 = type metadata accessor for Transaction();
    __chkstk_darwin(v15);
    v22[-4] = a3;
    LOBYTE(v22[-3]) = 0;
    v22[-2] = sub_100B26BB8;
    v22[-1] = v14;

    static Transaction.named<A>(_:with:)();
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177BA08);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No duplicate beacons detected.", v19, 2u);
    }

    v20 = [objc_opt_self() standardUserDefaults];
    UUID.uuidString.getter();
    v21 = String._bridgeToObjectiveC()();

    v22[0] = String._bridgeToObjectiveC()();
    [v20 setObject:v21 forKey:v22[0]];
  }
}

void sub_100AEC3A0(uint64_t a1, char a2)
{
  Transaction.capture()();
  if (a2)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BA08);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1001DB7B8(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = _convertErrorToNSError(_:)();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Error removing duplicates: %{public}@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  else
  {
    v9 = [objc_opt_self() standardUserDefaults];
    UUID.uuidString.getter();
    v10 = String._bridgeToObjectiveC()();

    oslog = String._bridgeToObjectiveC()();
    [v9 setObject:v10 forKey:?];
  }
}

uint64_t sub_100AEC590(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v16;
  v47 = v18;
  if (a2)
  {
    aBlock = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    v45 = *(a3 + 72);
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v53 = sub_100B26B8C;
    v54 = v21;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100006684;
    v52 = &unk_101647FA0;
    v22 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    sub_1001DB7B8(a1, 1);
    (*(v11 + 8))(v14, v10);
    (*(v46 + 8))(v20, v47);
  }

  else
  {
    v44 = a4;
    v45 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = 0;
    v24 = 0;
    v25 = 1 << *(a1 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(a1 + 64);
    v28 = *(a1 + 16);
    v29 = (v25 + 63) >> 6;
    do
    {
      if (!v27)
      {
        while (1)
        {
          v30 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v30 >= v29)
          {
            goto LABEL_15;
          }

          v27 = *(a1 + 64 + 8 * v30);
          ++v23;
          if (v27)
          {
            v23 = v30;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      v30 = v23;
LABEL_12:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = *(*(a1 + 56) + ((v30 << 9) | (8 * v31)));
      v33 = __OFADD__(v24, v32);
      v24 += v32;
    }

    while (!v33);
    __break(1u);
LABEL_15:
    v43 = v11;
    sub_1001DB9A4(a1, 0);

    v16 = v10;
    v10 = v14;
    if (v28 != v24)
    {
      if (qword_101694BE8 == -1)
      {
LABEL_17:
        v34 = type metadata accessor for Logger();
        sub_1000076D4(v34, qword_10177BA08);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 134218240;
          *(v37 + 4) = v24;
          *(v37 + 12) = 2048;
          *(v37 + 14) = v28;
          _os_log_impl(&_mh_execute_header, v35, v36, "DUPLICATE BEACONS DETECTED -- beaconCount: %ld stableIdentifierCount: %ld", v37, 0x16u);
        }

        goto LABEL_20;
      }

LABEL_23:
      swift_once();
      goto LABEL_17;
    }

LABEL_20:
    v38 = *(a3 + 72);
    v39 = swift_allocObject();
    *(v39 + 16) = v44;
    *(v39 + 24) = a5;
    *(v39 + 32) = v28 != v24;
    v53 = sub_1002FB50C;
    v54 = v39;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100006684;
    v52 = &unk_101647FF0;
    v40 = _Block_copy(&aBlock);

    v41 = v45;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);
    (*(v43 + 8))(v10, v16);
    (*(v46 + 8))(v41, v47);
  }
}

uint64_t sub_100AECBE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  aBlock[4] = sub_100B226D0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016464C0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v13, v10);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_100AECEEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v401 = a5;
  v398 = a4;
  LODWORD(v440) = a3;
  v399 = a1;
  v418 = type metadata accessor for SystemInfo.DeviceLockState();
  v397 = *(v418 - 8);
  v6 = *(v397 + 64);
  v7 = __chkstk_darwin(v418);
  v417 = &v395 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v416 = &v395 - v9;
  v406 = type metadata accessor for DispatchWorkItemFlags();
  v405 = *(v406 - 8);
  v10 = *(v405 + 64);
  __chkstk_darwin(v406);
  v403 = &v395 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v404 = type metadata accessor for DispatchQoS();
  v402 = *(v404 - 8);
  v12 = *(v402 + 64);
  __chkstk_darwin(v404);
  v400 = &v395 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v14 = *(*(v446 - 8) + 64);
  __chkstk_darwin(v446);
  v445 = &v395 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v422 = &v395 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v453 = &v395 - v21;
  v423 = type metadata accessor for StableIdentifier();
  v436 = *(v423 - 8);
  v22 = *(v436 + 64);
  v23 = __chkstk_darwin(v423);
  v412 = &v395 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v413 = &v395 - v26;
  v27 = __chkstk_darwin(v25);
  v430 = &v395 - v28;
  v29 = __chkstk_darwin(v27);
  v426 = (&v395 - v30);
  v31 = __chkstk_darwin(v29);
  v447 = &v395 - v32;
  __chkstk_darwin(v31);
  v442 = &v395 - v33;
  v34 = sub_1000BC4D4(&qword_1016B5460, &qword_1013D66B0);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v428 = &v395 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v427 = &v395 - v39;
  v40 = __chkstk_darwin(v38);
  v444 = &v395 - v41;
  __chkstk_darwin(v40);
  v451 = (&v395 - v42);
  v43 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v431 = &v395 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v452 = &v395 - v48;
  v49 = __chkstk_darwin(v47);
  *&v458 = &v395 - v50;
  __chkstk_darwin(v49);
  v441 = &v395 - v51;
  v469 = type metadata accessor for OwnedBeaconRecord();
  v434 = *(v469 - 8);
  v52 = *(v434 + 64);
  v53 = __chkstk_darwin(v469);
  v432 = &v395 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v415 = &v395 - v56;
  v57 = __chkstk_darwin(v55);
  v414 = &v395 - v58;
  v59 = __chkstk_darwin(v57);
  v61 = &v395 - v60;
  v62 = __chkstk_darwin(v59);
  v463 = &v395 - v63;
  v64 = __chkstk_darwin(v62);
  v457 = &v395 - v65;
  v66 = __chkstk_darwin(v64);
  v456 = &v395 - v67;
  v68 = __chkstk_darwin(v66);
  v439 = &v395 - v69;
  v70 = __chkstk_darwin(v68);
  v438 = &v395 - v71;
  v72 = __chkstk_darwin(v70);
  v449 = &v395 - v73;
  v74 = __chkstk_darwin(v72);
  v460 = &v395 - v75;
  v76 = __chkstk_darwin(v74);
  v455 = &v395 - v77;
  v78 = __chkstk_darwin(v76);
  v465 = &v395 - v79;
  v80 = __chkstk_darwin(v78);
  v468 = &v395 - v81;
  v82 = __chkstk_darwin(v80);
  *&v467 = &v395 - v83;
  v84 = __chkstk_darwin(v82);
  *&v450 = &v395 - v85;
  v86 = __chkstk_darwin(v84);
  v88 = &v395 - v87;
  v89 = __chkstk_darwin(v86);
  v454 = (&v395 - v90);
  v396 = v91;
  __chkstk_darwin(v89);
  v93 = &v395 - v92;
  v94 = sub_100025044();
  v95 = sub_100008CA0();
  v96 = sub_100009324(v95);

  v420 = a2;
  v97 = sub_1000066C8();
  v98 = sub_100009924(v97);

  aBlock = v96;
  sub_100009AF4(v98);
  v99 = aBlock;
  v459 = v94;
  v100 = v94[2];
  v466 = v16;
  v448 = v17;
  v435 = v61;
  v464 = v100;
  if (v100)
  {
    v443 = v88;
    v437 = aBlock;
    v101 = 0;
    v462 = v17 + 48;
    v102 = _swiftEmptyArrayStorage;
    v103 = v458;
    v104 = v459;
    v105 = v441;
    do
    {
      if (v101 >= *(v104 + 16))
      {
        goto LABEL_179;
      }

      v106 = *(v434 + 72);
      v107 = (*(v434 + 80) + 32) & ~*(v434 + 80);
      sub_100022A54(v104 + v107 + v106 * v101, v93, type metadata accessor for OwnedBeaconRecord);
      sub_1000D2A70(&v93[*(v469 + 28)], v105, &qword_1016980D0, &unk_10138F3B0);
      v461 = *v462;
      if (v461(v105, 1, v466) == 1)
      {
        sub_10000B3A8(v105, &qword_1016980D0, &unk_10138F3B0);
        sub_10002911C(v93, v454, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v102;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v102[2] + 1, 1);
          v105 = v441;
          v102 = aBlock;
        }

        v110 = v102[2];
        v109 = v102[3];
        if (v110 >= v109 >> 1)
        {
          sub_10112434C(v109 > 1, v110 + 1, 1);
          v105 = v441;
          v102 = aBlock;
        }

        v102[2] = v110 + 1;
        sub_10002911C(v454, v102 + v107 + v110 * v106, type metadata accessor for OwnedBeaconRecord);
        v103 = v458;
      }

      else
      {
        sub_100022C40(v93, type metadata accessor for OwnedBeaconRecord);
        sub_10000B3A8(v105, &qword_1016980D0, &unk_10138F3B0);
      }

      v101 = (v101 + 1);
    }

    while (v464 != v101);
    v111 = 0;
    v441 = v107;
    v112 = v104 + v107;
    v113 = _swiftEmptyArrayStorage;
    v114 = v447;
    do
    {
      if (v111 >= *(v104 + 16))
      {
        goto LABEL_180;
      }

      v115 = v114;
      v116 = v443;
      sub_100022A54(v112, v443, type metadata accessor for OwnedBeaconRecord);
      sub_1000D2A70(v116 + *(v469 + 28), v103, &qword_1016980D0, &unk_10138F3B0);
      if (v461(v103, 1, v466) == 1)
      {
        sub_100022C40(v116, type metadata accessor for OwnedBeaconRecord);
        sub_10000B3A8(v103, &qword_1016980D0, &unk_10138F3B0);
        v114 = v115;
        v104 = v459;
      }

      else
      {
        v454 = v102;
        sub_10000B3A8(v103, &qword_1016980D0, &unk_10138F3B0);
        sub_10002911C(v116, v450, type metadata accessor for OwnedBeaconRecord);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v113;
        if ((v117 & 1) == 0)
        {
          sub_10112434C(0, *(v113 + 16) + 1, 1);
          v113 = aBlock;
        }

        v104 = v459;
        v119 = *(v113 + 16);
        v118 = *(v113 + 24);
        if (v119 >= v118 >> 1)
        {
          sub_10112434C(v118 > 1, v119 + 1, 1);
          v113 = aBlock;
        }

        *(v113 + 16) = v119 + 1;
        sub_10002911C(v450, &v441[v113 + v119 * v106], type metadata accessor for OwnedBeaconRecord);
        v114 = v447;
        v103 = v458;
        v102 = v454;
      }

      v111 = (v111 + 1);
      v112 += v106;
    }

    while (v464 != v111);
    v16 = v466;
    v61 = v435;
    v120 = v440;
    v99 = v437;
  }

  else
  {
    v102 = _swiftEmptyArrayStorage;
    v113 = _swiftEmptyArrayStorage;
    v114 = v447;
    v120 = v440;
  }

  v440 = sub_100B20CDC(v102);

  v424 = sub_100B20CDC(v113);

  if (v120)
  {
    v121 = _swiftEmptyArrayStorage;
  }

  else
  {
    v121 = 0;
  }

  v122 = swift_allocObject();
  v433 = v122;
  *(v122 + 16) = v121;
  v123 = (v122 + 16);
  v479 = _swiftEmptyArrayStorage;
  v419 = dispatch_group_create();
  v476 = _swiftEmptyDictionarySingleton;
  v124 = *(v99 + 16);
  if (v124)
  {
    v125 = 0;
    v126 = v99 + 32;
    v461 = _swiftEmptyDictionarySingleton;
    while (v125 < *(v99 + 16))
    {
      sub_10001F280(v126, &aBlock);
      sub_100AF0848(&v476, &aBlock, &v478);
      ++v125;
      sub_100007BAC(&aBlock);

      v461 = v478;
      v476 = v478;
      v126 += 40;
      if (v124 == v125)
      {
        goto LABEL_33;
      }
    }

LABEL_181:
    __break(1u);

    sub_100007BAC(&aBlock);

    __break(1u);
    return result;
  }

  v461 = _swiftEmptyDictionarySingleton;
LABEL_33:
  v395 = 0;

  v128 = 0;
  v129 = v440 + 64;
  v130 = 1 << *(v440 + 32);
  v131 = -1;
  if (v130 < 64)
  {
    v131 = ~(-1 << v130);
  }

  v132 = v131 & *(v440 + 64);
  v133 = (v130 + 63) >> 6;
  v421 = 0x800000010136BE90;
  *&v127 = 141558275;
  v429 = v127;
  *&v127 = 136446210;
  v458 = v127;
  v464 = v123;
  v134 = v451;
  v443 = (v440 + 64);
  v441 = v133;
  while (2)
  {
    if (v132)
    {
      v135 = v128;
      goto LABEL_48;
    }

    if (v133 <= v128 + 1)
    {
      v136 = v128 + 1;
    }

    else
    {
      v136 = v133;
    }

    v137 = v136 - 1;
    do
    {
      v135 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (v135 >= v133)
      {
        v172 = sub_1000BC4D4(&qword_1016B5468, &qword_1013D66B8);
        v145 = v444;
        (*(*(v172 - 8) + 56))(v444, 1, 1, v172);
        v454 = 0;
        v128 = v137;
        goto LABEL_49;
      }

      v132 = *(v129 + 8 * v135);
      ++v128;
    }

    while (!v132);
    v128 = v135;
LABEL_48:
    v454 = ((v132 - 1) & v132);
    v138 = __clz(__rbit64(v132)) | (v135 << 6);
    v139 = v440;
    v140 = v442;
    sub_100022A54(*(v440 + 48) + *(v436 + 72) * v138, v442, type metadata accessor for StableIdentifier);
    v141 = *(*(v139 + 56) + 8 * v138);
    v142 = sub_1000BC4D4(&qword_1016B5468, &qword_1013D66B8);
    v143 = *(v142 + 48);
    v144 = v140;
    v145 = v444;
    sub_10002911C(v144, v444, type metadata accessor for StableIdentifier);
    *(v145 + v143) = v141;
    (*(*(v142 - 8) + 56))(v145, 0, 1, v142);

    v134 = v451;
LABEL_49:
    sub_1000D2AD8(v145, v134, &qword_1016B5460, &qword_1013D66B0);
    v146 = sub_1000BC4D4(&qword_1016B5468, &qword_1013D66B8);
    v147 = *(v146 - 8);
    v148 = *(v147 + 48);
    if (v148(v134, 1, v146) != 1)
    {
      v149 = *(v134 + *(v146 + 48));
      v150 = sub_10002911C(v134, v114, type metadata accessor for StableIdentifier);
      if (*(v149 + 16) < 2uLL)
      {
        sub_100022C40(v114, type metadata accessor for StableIdentifier);
      }

      else
      {
        *&v450 = v149;
        v151 = sub_100AF0CBC(v150);
        v153 = v152;
        v154 = v426;
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v459 = type metadata accessor for Logger();
        v155 = sub_1000076D4(v459, qword_10177BA08);
        sub_100022A54(v114, v154, type metadata accessor for StableIdentifier);
        v462 = v155;
        v156 = Logger.logObject.getter();
        v157 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          v425 = swift_slowAlloc();
          aBlock = v425;
          *v158 = v429;
          *(v158 + 4) = 1752392040;
          *(v158 + 12) = 2081;
          v437 = v151;
          sub_100022A54(v154, v442, type metadata accessor for StableIdentifier);
          v159 = String.init<A>(describing:)();
          v161 = v160;
          sub_100022C40(v154, type metadata accessor for StableIdentifier);
          v162 = sub_1000136BC(v159, v161, &aBlock);
          v114 = v447;

          *(v158 + 14) = v162;
          v151 = v437;
          _os_log_impl(&_mh_execute_header, v156, v157, "Duplicates for %{private,mask.hash}s", v158, 0x16u);
          sub_100007BAC(v425);
        }

        else
        {

          sub_100022C40(v154, type metadata accessor for StableIdentifier);
        }

        v163 = v430;
        if (*v123)
        {
          aBlock = 0;
          v471 = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          aBlock = 0xD00000000000001CLL;
          v471 = v421;
          v164._countAndFlagsBits = v151;
          v164._object = v153;
          String.append(_:)(v164);

          v165 = aBlock;
          v166 = v471;
          v167 = *v123;
          v168 = swift_isUniquelyReferenced_nonNull_native();
          *v123 = v167;
          if ((v168 & 1) == 0)
          {
            v167 = sub_100A5B2CC(0, *(v167 + 2) + 1, 1, v167);
            *v123 = v167;
          }

          v170 = *(v167 + 2);
          v169 = *(v167 + 3);
          if (v170 >= v169 >> 1)
          {
            v167 = sub_100A5B2CC((v169 > 1), v170 + 1, 1, v167);
          }

          *(v167 + 2) = v170 + 1;
          v171 = &v167[16 * v170];
          *(v171 + 4) = v165;
          *(v171 + 5) = v166;
          *v123 = v167;
        }

        else
        {
        }

        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v459, qword_10177B7F8);
        sub_100022A54(v114, v163, type metadata accessor for StableIdentifier);
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v459 = swift_slowAlloc();
          aBlock = v459;
          *v175 = v429;
          *(v175 + 4) = 1752392040;
          *(v175 + 12) = 2081;
          sub_100022A54(v163, v442, type metadata accessor for StableIdentifier);
          v176 = String.init<A>(describing:)();
          v178 = v177;
          sub_100022C40(v163, type metadata accessor for StableIdentifier);
          v179 = sub_1000136BC(v176, v178, &aBlock);

          *(v175 + 14) = v179;
          _os_log_impl(&_mh_execute_header, v173, v174, "Duplicates for %{private,mask.hash}s", v175, 0x16u);
          sub_100007BAC(v459);
        }

        else
        {

          sub_100022C40(v163, type metadata accessor for StableIdentifier);
        }

        v180 = v468;
        v181 = v467;
        v182 = v450;
        v183 = *(v450 + 16);
        v184 = (*(v434 + 80) + 32) & ~*(v434 + 80);
        if (v183)
        {
          v437 = (*(v434 + 80) + 32) & ~*(v434 + 80);
          v185 = v450 + v184;
          v459 = *(v434 + 72);
          do
          {
            sub_100022A54(v185, v181, type metadata accessor for OwnedBeaconRecord);
            if (*v123)
            {
              aBlock = 8224;
              v471 = 0xE200000000000000;
              v187 = *(v469 + 20);
              sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
              v188._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v188);

              v189 = aBlock;
              v190 = v471;
              v191 = *v123;
              v192 = swift_isUniquelyReferenced_nonNull_native();
              *v123 = v191;
              if ((v192 & 1) == 0)
              {
                v191 = sub_100A5B2CC(0, *(v191 + 2) + 1, 1, v191);
                *v123 = v191;
              }

              v194 = *(v191 + 2);
              v193 = *(v191 + 3);
              if (v194 >= v193 >> 1)
              {
                v191 = sub_100A5B2CC((v193 > 1), v194 + 1, 1, v191);
              }

              *(v191 + 2) = v194 + 1;
              v195 = &v191[16 * v194];
              *(v195 + 4) = v189;
              *(v195 + 5) = v190;
              *v123 = v191;
              v180 = v468;
              v181 = v467;
            }

            sub_100022A54(v181, v180, type metadata accessor for OwnedBeaconRecord);
            v196 = Logger.logObject.getter();
            v197 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v196, v197))
            {
              v198 = swift_slowAlloc();
              v199 = swift_slowAlloc();
              aBlock = v199;
              *v198 = v458;
              sub_100022A54(v180, v465, type metadata accessor for OwnedBeaconRecord);
              v200 = String.init<A>(describing:)();
              v202 = v201;
              sub_100022C40(v468, type metadata accessor for OwnedBeaconRecord);
              v203 = sub_1000136BC(v200, v202, &aBlock);
              v180 = v468;

              *(v198 + 4) = v203;
              v123 = v464;
              _os_log_impl(&_mh_execute_header, v196, v197, "DUPE: %{public}s", v198, 0xCu);
              sub_100007BAC(v199);
              v181 = v467;

              v186 = v181;
              v16 = v466;
            }

            else
            {

              sub_100022C40(v180, type metadata accessor for OwnedBeaconRecord);
              v186 = v181;
            }

            sub_100022C40(v186, type metadata accessor for OwnedBeaconRecord);
            v185 += v459;
            --v183;
          }

          while (v183);
          v182 = v450;
          v204 = *(v450 + 16);
          if (v204 <= 1)
          {
            v205 = 1;
          }

          else
          {
            v205 = 2 * v204 - 1;
          }

          v184 = v437;
        }

        else
        {
          v205 = 1;
        }

        sub_10039AF9C(v182, v182 + v184, 0, v205);
        v114 = v447;
        sub_100022C40(v447, type metadata accessor for StableIdentifier);
        v61 = v435;
        v134 = v451;
      }

      v129 = v443;
      v133 = v441;
      v132 = v454;
      continue;
    }

    break;
  }

  v426 = v148;

  v207 = 0;
  v208 = v424 + 64;
  v209 = 1 << *(v424 + 32);
  v210 = -1;
  if (v209 < 64)
  {
    v210 = ~(-1 << v209);
  }

  v211 = v210 & *(v424 + 64);
  v408 = (v209 + 63) >> 6;
  v425 = (v147 + 56);
  v407 = 0x800000010136BE60;
  v447 = v448 + 16;
  v444 = v448 + 56;
  v443 = (v448 + 48);
  v421 = (v448 + 32);
  v451 = (v448 + 8);
  *&v206 = 141558531;
  v450 = v206;
  v212 = v413;
  v411 = v146;
  v410 = v147 + 48;
  v409 = v424 + 64;
  while (2)
  {
    if (v211)
    {
      v441 = v207;
      v213 = v207;
LABEL_102:
      v440 = (v211 - 1) & v211;
      v216 = __clz(__rbit64(v211)) | (v213 << 6);
      v217 = v424;
      v218 = v442;
      sub_100022A54(*(v424 + 48) + *(v436 + 72) * v216, v442, type metadata accessor for StableIdentifier);
      v219 = *(*(v217 + 56) + 8 * v216);
      v220 = *(v146 + 48);
      v221 = v218;
      v222 = v428;
      sub_10002911C(v221, v428, type metadata accessor for StableIdentifier);
      *(v222 + v220) = v219;
      (*v425)(v222, 0, 1, v146);
    }

    else
    {
      if (v408 <= (v207 + 1))
      {
        v214 = (v207 + 1);
      }

      else
      {
        v214 = v408;
      }

      v215 = (v214 - 1);
      while (1)
      {
        v213 = (v207 + 1);
        if (__OFADD__(v207, 1))
        {
          goto LABEL_178;
        }

        if (v213 >= v408)
        {
          break;
        }

        v211 = *(v208 + 8 * v213);
        ++v207;
        if (v211)
        {
          v441 = v213;
          goto LABEL_102;
        }
      }

      v222 = v428;
      (*v425)(v428, 1, 1, v146);
      v440 = 0;
      v441 = v215;
    }

    v223 = v427;
    sub_1000D2AD8(v222, v427, &qword_1016B5460, &qword_1013D66B0);
    if (v426(v223, 1, v146) != 1)
    {
      v224 = *(v223 + *(v146 + 48));
      v225 = sub_10002911C(v223, v212, type metadata accessor for StableIdentifier);
      if (*(v224 + 2) < 2uLL)
      {
        sub_100022C40(v212, type metadata accessor for StableIdentifier);
      }

      else
      {
        v430 = v224;
        v226 = sub_100AF0CBC(v225);
        v228 = v227;
        if (*v123)
        {
          v229 = v226;
          aBlock = 0;
          v471 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          aBlock = 0xD000000000000026;
          v471 = v407;
          v230._countAndFlagsBits = v229;
          v230._object = v228;
          String.append(_:)(v230);

          v231 = aBlock;
          v232 = v471;
          v233 = *v123;
          v234 = swift_isUniquelyReferenced_nonNull_native();
          *v123 = v233;
          v235 = v412;
          if ((v234 & 1) == 0)
          {
            v233 = sub_100A5B2CC(0, *(v233 + 2) + 1, 1, v233);
            *v123 = v233;
          }

          v237 = *(v233 + 2);
          v236 = *(v233 + 3);
          if (v237 >= v236 >> 1)
          {
            v233 = sub_100A5B2CC((v236 > 1), v237 + 1, 1, v233);
          }

          *(v233 + 2) = v237 + 1;
          v238 = &v233[16 * v237];
          *(v238 + 4) = v231;
          *(v238 + 5) = v232;
          *v123 = v233;
        }

        else
        {

          v235 = v412;
        }

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v239 = type metadata accessor for Logger();
        v240 = sub_1000076D4(v239, qword_10177BA08);
        sub_100022A54(v212, v235, type metadata accessor for StableIdentifier);
        v241 = Logger.logObject.getter();
        v242 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v241, v242))
        {
          v243 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          aBlock = v244;
          *v243 = v429;
          *(v243 + 4) = 1752392040;
          *(v243 + 12) = 2081;
          sub_100022A54(v235, v442, type metadata accessor for StableIdentifier);
          v245 = String.init<A>(describing:)();
          v247 = v246;
          sub_100022C40(v235, type metadata accessor for StableIdentifier);
          v248 = sub_1000136BC(v245, v247, &aBlock);
          v16 = v466;

          *(v243 + 14) = v248;
          _os_log_impl(&_mh_execute_header, v241, v242, "Duplicates (grouped) for %{private,mask.hash}s", v243, 0x16u);
          sub_100007BAC(v244);
        }

        else
        {

          sub_100022C40(v235, type metadata accessor for StableIdentifier);
        }

        v249 = v460;
        v250 = *(v430 + 2);
        v251 = v455;
        if (v250)
        {
          v459 = (*(v434 + 80) + 32) & ~*(v434 + 80);
          v252 = &v430[v459];
          v253 = *(v434 + 72);
          v454 = v240;
          v462 = v253;
          do
          {
            v468 = v250;
            *&v467 = v252;
            sub_100022A54(v252, v251, type metadata accessor for OwnedBeaconRecord);
            if (*v123)
            {
              aBlock = 8224;
              v471 = 0xE200000000000000;
              v257 = *(v469 + 20);
              sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
              v258._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v258);

              v259 = aBlock;
              v260 = v471;
              v261 = *v123;
              v262 = swift_isUniquelyReferenced_nonNull_native();
              *v123 = v261;
              if ((v262 & 1) == 0)
              {
                v261 = sub_100A5B2CC(0, *(v261 + 2) + 1, 1, v261);
                *v123 = v261;
              }

              v264 = *(v261 + 2);
              v263 = *(v261 + 3);
              if (v264 >= v263 >> 1)
              {
                v261 = sub_100A5B2CC((v263 > 1), v264 + 1, 1, v261);
              }

              *(v261 + 2) = v264 + 1;
              v265 = &v261[16 * v264];
              *(v265 + 4) = v259;
              *(v265 + 5) = v260;
              *v123 = v261;
            }

            sub_100022A54(v251, v249, type metadata accessor for OwnedBeaconRecord);
            v266 = Logger.logObject.getter();
            v267 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v266, v267))
            {
              v268 = swift_slowAlloc();
              v269 = swift_slowAlloc();
              aBlock = v269;
              *v268 = v458;
              sub_100022A54(v249, v465, type metadata accessor for OwnedBeaconRecord);
              v270 = String.init<A>(describing:)();
              v272 = v271;
              sub_100022C40(v249, type metadata accessor for OwnedBeaconRecord);
              v273 = sub_1000136BC(v270, v272, &aBlock);
              v16 = v466;

              *(v268 + 4) = v273;
              _os_log_impl(&_mh_execute_header, v266, v267, "DUPE: %{public}s", v268, 0xCu);
              sub_100007BAC(v269);
            }

            else
            {

              sub_100022C40(v249, type metadata accessor for OwnedBeaconRecord);
            }

            v274 = v457;
            v275 = v456;
            v276 = v461;
            if (!*(v461 + 2) || (v277 = sub_1000210EC(v251 + *(v469 + 20)), (v278 & 1) == 0))
            {
              sub_100022A54(v251, v275, type metadata accessor for OwnedBeaconRecord);
              sub_100022A54(v251, v274, type metadata accessor for OwnedBeaconRecord);
              v289 = Logger.logObject.getter();
              v290 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v289, v290))
              {
                v291 = v275;
                v292 = swift_slowAlloc();
                aBlock = swift_slowAlloc();
                *v292 = v450;
                *(v292 + 4) = 1752392040;
                *(v292 + 12) = 2081;
                v293 = *(v469 + 20);
                sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
                v294 = dispatch thunk of CustomStringConvertible.description.getter();
                v296 = v295;
                sub_100022C40(v291, type metadata accessor for OwnedBeaconRecord);
                v297 = sub_1000136BC(v294, v296, &aBlock);

                *(v292 + 14) = v297;
                *(v292 + 22) = 2082;
                sub_100022A54(v274, v465, type metadata accessor for OwnedBeaconRecord);
                v123 = v464;
                v298 = String.init<A>(describing:)();
                v300 = v299;
                v16 = v466;
                sub_100022C40(v274, type metadata accessor for OwnedBeaconRecord);
                v301 = sub_1000136BC(v298, v300, &aBlock);

                *(v292 + 24) = v301;
                _os_log_impl(&_mh_execute_header, v289, v290, "Beacon %{private,mask.hash}s is not known by group: %{public}s)", v292, 0x20u);
                swift_arrayDestroy();
              }

              else
              {

                sub_100022C40(v274, type metadata accessor for OwnedBeaconRecord);
                sub_100022C40(v275, type metadata accessor for OwnedBeaconRecord);
              }

              v251 = v455;
              sub_100022A54(v455, v463, type metadata accessor for OwnedBeaconRecord);
              v302 = v479;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v302 = sub_100A5C050(0, v302[2] + 1, 1, v302);
              }

              v249 = v460;
              v304 = v302[2];
              v303 = v302[3];
              if (v304 >= v303 >> 1)
              {
                v302 = sub_100A5C050(v303 > 1, v304 + 1, 1, v302);
              }

              sub_100022C40(v251, type metadata accessor for OwnedBeaconRecord);
              v302[2] = v304 + 1;
              v256 = v462;
              sub_10002911C(v463, v302 + v459 + v304 * v462, type metadata accessor for OwnedBeaconRecord);
              v479 = v302;
              v254 = v468;
              v255 = v467;
              goto LABEL_122;
            }

            v279 = v448;
            v280 = *(v276 + 7) + *(v448 + 72) * v277;
            v281 = *(v448 + 16);
            v282 = v453;
            v281(v453, v280, v16);
            v283 = v452;
            v281(v452, v282, v16);
            (*(v279 + 56))(v283, 0, 1, v16);
            v284 = *(v469 + 28);
            v285 = *(v446 + 48);
            v286 = v445;
            sub_1000D2A70(v283, v445, &qword_1016980D0, &unk_10138F3B0);
            sub_1000D2A70(v251 + v284, v286 + v285, &qword_1016980D0, &unk_10138F3B0);
            v287 = *(v279 + 48);
            if (v287(v286, 1, v16) == 1)
            {
              sub_10000B3A8(v283, &qword_1016980D0, &unk_10138F3B0);
              v288 = v287(v286 + v285, 1, v16);
              v249 = v460;
              if (v288 != 1)
              {
                goto LABEL_147;
              }

              sub_10000B3A8(v286, &qword_1016980D0, &unk_10138F3B0);
              v123 = v464;
              (*v451)(v453, v16);
            }

            else
            {
              v305 = v431;
              sub_1000D2A70(v286, v431, &qword_1016980D0, &unk_10138F3B0);
              if (v287(v286 + v285, 1, v16) == 1)
              {
                sub_10000B3A8(v452, &qword_1016980D0, &unk_10138F3B0);
                (*v451)(v305, v16);
                v249 = v460;
LABEL_147:
                sub_10000B3A8(v286, &qword_1016AF880, &unk_10138CE20);
                v123 = v464;
LABEL_148:
                sub_100022A54(v251, v449, type metadata accessor for OwnedBeaconRecord);
                v306 = v479;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v306 = sub_100A5C050(0, v306[2] + 1, 1, v306);
                }

                v308 = v306[2];
                v307 = v306[3];
                v309 = v249;
                if (v308 >= v307 >> 1)
                {
                  v306 = sub_100A5C050(v307 > 1, v308 + 1, 1, v306);
                }

                v306[2] = v308 + 1;
                sub_10002911C(v449, v306 + v459 + v308 * v462, type metadata accessor for OwnedBeaconRecord);
                v479 = v306;
                v310 = v438;
                sub_100022A54(v251, v438, type metadata accessor for OwnedBeaconRecord);
                v311 = v439;
                sub_100022A54(v251, v439, type metadata accessor for OwnedBeaconRecord);
                v312 = v251;
                v313 = Logger.logObject.getter();
                v314 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v313, v314))
                {
                  v315 = v311;
                  v316 = v310;
                  v317 = swift_slowAlloc();
                  v437 = swift_slowAlloc();
                  aBlock = v437;
                  *v317 = v450;
                  *(v317 + 4) = 1752392040;
                  *(v317 + 12) = 2081;
                  v318 = *(v469 + 20);
                  sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
                  v319 = dispatch thunk of CustomStringConvertible.description.getter();
                  v321 = v320;
                  v249 = v460;
                  sub_100022C40(v316, type metadata accessor for OwnedBeaconRecord);
                  v322 = sub_1000136BC(v319, v321, &aBlock);

                  *(v317 + 14) = v322;
                  *(v317 + 22) = 2082;
                  sub_100022A54(v315, v465, type metadata accessor for OwnedBeaconRecord);
                  v123 = v464;
                  v323 = String.init<A>(describing:)();
                  v325 = v324;
                  sub_100022C40(v315, type metadata accessor for OwnedBeaconRecord);
                  v326 = sub_1000136BC(v323, v325, &aBlock);
                  v16 = v466;

                  *(v317 + 24) = v326;
                  _os_log_impl(&_mh_execute_header, v313, v314, "Beacon %{private,mask.hash}s groupId mismatch with group: %{public}s)", v317, 0x20u);
                  swift_arrayDestroy();

                  (*v451)(v453, v16);
                  v251 = v455;
                  sub_100022C40(v455, type metadata accessor for OwnedBeaconRecord);
                }

                else
                {

                  sub_100022C40(v311, type metadata accessor for OwnedBeaconRecord);
                  sub_100022C40(v310, type metadata accessor for OwnedBeaconRecord);
                  (*v451)(v453, v16);
                  sub_100022C40(v312, type metadata accessor for OwnedBeaconRecord);
                  v251 = v312;
                  v249 = v309;
                }

                goto LABEL_121;
              }

              v327 = v422;
              (*v421)(v422, v286 + v285, v16);
              sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
              v328 = dispatch thunk of static Equatable.== infix(_:_:)();
              v329 = *v451;
              (*v451)(v327, v16);
              sub_10000B3A8(v452, &qword_1016980D0, &unk_10138F3B0);
              v329(v305, v16);
              sub_10000B3A8(v286, &qword_1016980D0, &unk_10138F3B0);
              v123 = v464;
              v249 = v460;
              if ((v328 & 1) == 0)
              {
                goto LABEL_148;
              }

              v329(v453, v16);
            }

            sub_100022C40(v251, type metadata accessor for OwnedBeaconRecord);
LABEL_121:
            v254 = v468;
            v255 = v467;
            v256 = v462;
LABEL_122:
            v252 = (v255 + v256);
            v250 = v254 - 1;
          }

          while (v250);
        }

        v212 = v413;
        sub_100022C40(v413, type metadata accessor for StableIdentifier);
        v61 = v435;
        v146 = v411;
        v208 = v409;
      }

      v207 = v441;
      v211 = v440;
      continue;
    }

    break;
  }

  v330 = v479[2];
  if (v330)
  {
    v331 = *(v434 + 80);
    v453 = v479;
    v332 = v479 + ((v331 + 32) & ~v331);
    v462 = *(v434 + 72);
    v461 = ((v331 + 24) & ~v331);
    v460 = ((v461 + v396 + 7) & 0xFFFFFFFFFFFFFFF8);
    LODWORD(v459) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    *&v458 = v397 + 104;
    v457 = (v397 + 8);
    v468 = v331;
    v456 = ((v331 + 16) & ~v331);
    v455 = &v456[v396 + 7] & 0xFFFFFFFFFFFFFFF8;
    v454 = ((v455 + 23) & 0xFFFFFFFFFFFFFFF8);
    v467 = xmmword_101385D80;
    do
    {
      v463 = v330;
      sub_100022A54(v332, v61, type metadata accessor for OwnedBeaconRecord);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v347 = type metadata accessor for Logger();
      sub_1000076D4(v347, qword_10177BA08);
      v348 = v414;
      sub_100022A54(v61, v414, type metadata accessor for OwnedBeaconRecord);
      v349 = Logger.logObject.getter();
      v350 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v349, v350))
      {
        v351 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        aBlock = v352;
        *v351 = v429;
        *(v351 + 4) = 1752392040;
        *(v351 + 12) = 2081;
        v353 = *(v469 + 20);
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v354 = dispatch thunk of CustomStringConvertible.description.getter();
        v356 = v355;
        sub_100022C40(v348, type metadata accessor for OwnedBeaconRecord);
        v357 = sub_1000136BC(v354, v356, &aBlock);

        *(v351 + 14) = v357;
        _os_log_impl(&_mh_execute_header, v349, v350, "Unpairing %{private,mask.hash}s", v351, 0x16u);
        sub_100007BAC(v352);
      }

      else
      {

        sub_100022C40(v348, type metadata accessor for OwnedBeaconRecord);
      }

      v358 = v464;
      swift_beginAccess();
      if (*v358)
      {
        v476 = 0x6E69726961706E55;
        v477 = 0xEA00000000002067;
        v359 = *(v469 + 20);
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v360._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v360);

        v361 = v358;
        v362 = v476;
        v363 = v477;
        v364 = *v361;
        v365 = swift_isUniquelyReferenced_nonNull_native();
        *v361 = v364;
        if ((v365 & 1) == 0)
        {
          v364 = sub_100A5B2CC(0, *(v364 + 2) + 1, 1, v364);
          *v464 = v364;
        }

        v367 = *(v364 + 2);
        v366 = *(v364 + 3);
        if (v367 >= v366 >> 1)
        {
          v364 = sub_100A5B2CC((v366 > 1), v367 + 1, 1, v364);
        }

        *(v364 + 2) = v367 + 1;
        v368 = &v364[16 * v367];
        *(v368 + 4) = v362;
        *(v368 + 5) = v363;
        *v464 = v364;
      }

      swift_endAccess();
      v369 = v419;
      dispatch_group_enter(v419);
      v370 = v415;
      sub_100022A54(v61, v415, type metadata accessor for OwnedBeaconRecord);
      sub_100022A54(v370, v432, type metadata accessor for OwnedBeaconRecord);
      v371 = v460;
      v372 = swift_allocObject();
      *(v372 + 16) = v369;
      sub_10002911C(v370, v461 + v372, type metadata accessor for OwnedBeaconRecord);
      *&v371[v372] = v433;
      swift_retain_n();
      v373 = v369;
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v374 = swift_allocObject();
      *(v374 + 16) = v467;
      v375 = *(v469 + 20);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v376 = dispatch thunk of CustomStringConvertible.description.getter();
      v378 = v377;
      *(v374 + 56) = &type metadata for String;
      *(v374 + 64) = sub_100008C00();
      *(v374 + 32) = v376;
      *(v374 + 40) = v378;
      os_log(_:dso:log:_:_:)();

      v379 = v416;
      static SystemInfo.lockState.getter();
      v380 = v417;
      v381 = v418;
      (*v458)(v417, v459, v418);
      sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v382 = *v457;
      (*v457)(v380, v381);
      v382(v379, v381);
      if (aBlock == v476)
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        sub_100139CA0();
        v383 = swift_allocError();
        *v384 = 0;
        sub_100AF110C(v383, v373, v432, v433);
      }

      sub_100022C40(v432, type metadata accessor for OwnedBeaconRecord);
      v333 = dispatch_group_create();
      dispatch_group_enter(v333);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v334 = v448;
      v335 = *(v448 + 72);
      v336 = (*(v448 + 80) + 32) & ~*(v448 + 80);
      v337 = swift_allocObject();
      *(v337 + 16) = v467;
      v338 = &v435[v375];
      v61 = v435;
      (*(v334 + 16))(v337 + v336, v338, v466);
      v339 = swift_allocObject();
      *(v339 + 16) = v333;
      v340 = v333;
      v341 = v420;
      sub_1009C99C0(v337, sub_10040616C, v339);

      OS_dispatch_group.wait()();
      v342 = v465;
      sub_100022A54(v61, v465, type metadata accessor for OwnedBeaconRecord);
      v343 = v454;
      v344 = swift_allocObject();
      sub_10002911C(v342, &v456[v344], type metadata accessor for OwnedBeaconRecord);
      v345 = (v344 + v455);
      *v345 = sub_100B226E0;
      v345[1] = v372;
      v346 = v344 + v343;
      *v346 = v341;
      *(v346 + 8) = 0;

      sub_100AAA40C(v61, sub_100406178, v344);

      sub_100022C40(v61, type metadata accessor for OwnedBeaconRecord);

      v332 += v462;
      v330 = v463 - 1;
    }

    while (v463 != 1);
  }

  v385 = *(v420 + 72);
  v386 = swift_allocObject();
  v387 = v433;
  v386[2] = v399;
  v386[3] = v387;
  v388 = v401;
  v386[4] = v398;
  v386[5] = v388;
  v474 = sub_100B22780;
  v475 = v386;
  aBlock = _NSConcreteStackBlock;
  v471 = 1107296256;
  v472 = sub_100006684;
  v473 = &unk_1016465B0;
  v389 = _Block_copy(&aBlock);

  v390 = v400;
  static DispatchQoS.unspecified.getter();
  v476 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v391 = v403;
  v392 = v406;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v393 = v419;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v389);

  (*(v405 + 8))(v391, v392);
  (*(v402 + 8))(v390, v404);
}

uint64_t sub_100AF0848@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v56 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v73 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v63 = &v55 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v55 - v13;
  __chkstk_darwin(v12);
  v62 = &v55 - v15;
  v16 = *a1;
  v17 = a2[3];
  v18 = a2[4];
  v65 = a2;
  sub_1000035D0(a2, v17);
  v19 = *(v18 + 16);

  v20 = v19(v17, v18);
  v21 = 0;
  v23 = v20 + 56;
  v22 = *(v20 + 56);
  v66 = v20;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v68 = v6 + 32;
  v69 = v6 + 16;
  v59 = v20 + 56;
  v60 = (v6 + 8);
  v64 = v6;
  v57 = (v6 + 40);
  v58 = v27;
  v61 = v5;
  while (v26)
  {
    v72 = v16;
    v29 = v21;
LABEL_12:
    v30 = *(v66 + 48);
    v31 = v64;
    v70 = *(v64 + 72);
    v32 = v62;
    v67 = *(v64 + 16);
    v67(v62, v30 + v70 * (__clz(__rbit64(v26)) | (v29 << 6)), v5);
    v71 = *(v31 + 32);
    v71(v14, v32, v5);
    v33 = v65[3];
    v34 = v65[4];
    sub_1000035D0(v65, v33);
    v35 = v14;
    v36 = v63;
    (*(v34 + 8))(v33, v34);
    v37 = v36;
    v14 = v35;
    v38 = v71;
    v71(v73, v37, v5);
    v39 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v39;
    v42 = sub_1000210EC(v14);
    v43 = v39[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_23;
    }

    v46 = v41;
    if (v39[3] >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101005D44();
      }
    }

    else
    {
      sub_100FE80C8(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_1000210EC(v14);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_25;
      }

      v42 = v47;
    }

    v26 &= v26 - 1;
    v16 = v74;
    if (v46)
    {
      v28 = v74[7] + v42 * v70;
      v5 = v61;
      (*v57)(v28, v73, v61);
      (*v60)(v14, v5);
    }

    else
    {
      v74[(v42 >> 6) + 8] |= 1 << v42;
      v49 = v42 * v70;
      v50 = v16[6] + v42 * v70;
      v5 = v61;
      v67(v50, v14, v61);
      v38(v16[7] + v49, v73, v5);
      (*v60)(v14, v5);
      v51 = v16[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_24;
      }

      v16[2] = v53;
    }

    v21 = v29;
    v27 = v58;
    v23 = v59;
  }

  while (1)
  {
    v29 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      *v56 = v16;
      return result;
    }

    v26 = *(v23 + 8 * v29);
    ++v21;
    if (v26)
    {
      v72 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100AF110C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v64 = type metadata accessor for OwnedBeaconRecord();
  v8 = *(*(v64 - 8) + 64);
  v9 = __chkstk_darwin(v64);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v62 - v12;
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BA08);
    sub_100022A54(a3, v13, type metadata accessor for OwnedBeaconRecord);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v63 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v67[0] = v20;
      *v18 = 141558531;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      v21 = *(v64 + 20);
      type metadata accessor for UUID();
      v62 = a4;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_100022C40(v13, type metadata accessor for OwnedBeaconRecord);
      v25 = sub_1000136BC(v22, v24, v67);
      a4 = v62;

      *(v18 + 14) = v25;
      *(v18 + 22) = 2112;
      v26 = _convertErrorToNSError(_:)();
      *(v18 + 24) = v26;
      *v19 = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error unpairing %{private,mask.hash}s: %@", v18, 0x20u);
      sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v20);

      a2 = v63;
    }

    else
    {

      sub_100022C40(v13, type metadata accessor for OwnedBeaconRecord);
    }

    swift_beginAccess();
    if (*(a4 + 16))
    {
      v65 = 0;
      v66 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v65 = 0xD000000000000012;
      v66 = 0x800000010136C330;
      v37 = *(v64 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 8250;
      v39._object = 0xE200000000000000;
      String.append(_:)(v39);
      v40 = _convertErrorToNSError(_:)();
      v41 = [v40 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45._countAndFlagsBits = v42;
      v45._object = v44;
      String.append(_:)(v45);

      v46 = v65;
      v47 = v66;
      v48 = *(a4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = sub_100A5B2CC(0, *(v48 + 2) + 1, 1, v48);
        *(a4 + 16) = v48;
      }

      v51 = *(v48 + 2);
      v50 = *(v48 + 3);
      if (v51 >= v50 >> 1)
      {
        v48 = sub_100A5B2CC((v50 > 1), v51 + 1, 1, v48);
      }

      *(v48 + 2) = v51 + 1;
      v52 = &v48[16 * v51];
      *(v52 + 4) = v46;
      *(v52 + 5) = v47;
      *(a4 + 16) = v48;
    }

    swift_endAccess();
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BA08);
    sub_100022A54(a3, v11, type metadata accessor for OwnedBeaconRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v67[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v32 = *(v64 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_100022C40(v11, type metadata accessor for OwnedBeaconRecord);
      v36 = sub_1000136BC(v33, v35, v67);

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully unpaired %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      sub_100022C40(v11, type metadata accessor for OwnedBeaconRecord);
    }

    swift_beginAccess();
    if (*(a4 + 16))
    {
      v65 = 0;
      v66 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v65 = 0xD000000000000016;
      v66 = 0x800000010136C310;
      v53 = *(v64 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v55 = v65;
      v56 = v66;
      v57 = *(a4 + 16);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v57;
      if ((v58 & 1) == 0)
      {
        v57 = sub_100A5B2CC(0, *(v57 + 2) + 1, 1, v57);
        *(a4 + 16) = v57;
      }

      v60 = *(v57 + 2);
      v59 = *(v57 + 3);
      if (v60 >= v59 >> 1)
      {
        v57 = sub_100A5B2CC((v59 > 1), v60 + 1, 1, v57);
      }

      *(v57 + 2) = v60 + 1;
      v61 = &v57[16 * v60];
      *(v61 + 4) = v55;
      *(v61 + 5) = v56;
      *(a4 + 16) = v57;
    }

    swift_endAccess();
  }

  dispatch_group_leave(a2);
}

uint64_t sub_100AF1914(uint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (v5 && !*(v5 + 16))
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = &off_10160CFF0;
  }

  swift_beginAccess();
  if (*(a2 + 16))
  {
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  a3(v7, 0);
}

uint64_t sub_100AF19DC()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_100044B3C(v0, qword_1016B48F8);
  sub_1000076D4(v0, qword_1016B48F8);
  return PrefixedDefaults.init(prefix:)();
}

uint64_t sub_100AF1A48()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);

  OS_dispatch_queue.sync<A>(execute:)();

  sub_101074FF0(v3);

  result = static Duration.seconds(_:)();
  qword_1016B4910 = result;
  *algn_1016B4918 = v2;
  return result;
}

uint64_t sub_100AF1B20()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_100044B3C(v0, qword_1016B4920);
  v1 = sub_1000076D4(v0, qword_1016B4920);
  if (qword_101694C18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_1016B48F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100AF1BE8()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016B55E0, &qword_1013D6BB8);
  sub_100044B3C(v5, qword_1016B4938);
  sub_1000076D4(v5, qword_1016B4938);
  if (qword_101694C28 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_1016B4920);
  (*(v1 + 16))(v4, v6, v0);
  type metadata accessor for Date();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_100AF1D5C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = *(v0 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v15 = aBlock[0];
  v16 = *(aBlock[0] + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v17 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 56) = &type metadata for Bool;
  *(v18 + 64) = &protocol witness table for Bool;
  *(v18 + 32) = v17;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v17)
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v1;

    sub_10025EDD4(0, 0, v13, &unk_1013D68D8, v20);
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v21 = *(v15 + 72);
    v22 = swift_allocObject();
    v22[2] = v15;
    v22[3] = sub_100B24E48;
    v22[4] = v1;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016474D8;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v24 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v28 + 8))(v5, v24);
    (*(v26 + 8))(v9, v27);
  }
}

uint64_t sub_100AF2304(uint64_t a1, uint64_t a2)
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

  sub_10025EDD4(0, 0, v6, &unk_1013D68F0, v8);
}

uint64_t sub_100AF2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_100AF2518;

  return daemon.getter();
}

uint64_t sub_100AF2518(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FMIPService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B1100, type metadata accessor for FMIPService);
  *v6 = v12;
  v6[1] = sub_100AF26F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100AF26F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = a1;

  v7 = v4[9];
  if (v1)
  {

    v9 = v4[6];
    v8 = v4[7];
    v10 = v4[5];

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {

    v13 = swift_task_alloc();
    v4[12] = v13;
    *v13 = v6;
    v13[1] = sub_100AF28BC;

    return sub_10012C34C();
  }
}

uint64_t sub_100AF28BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_100AF3324;
  }

  else
  {
    v5 = sub_100AF29D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100AF29D0()
{
  v38 = v0;
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  *(v0 + 120) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v3 + 80);
    *(v0 + 176) = v4;
    *(v0 + 128) = *(v3 + 72);
    *(v0 + 136) = 0;
    sub_100022A54(v1 + ((v4 + 32) & ~v4), *(v0 + 56), type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = type metadata accessor for Logger();
    *(v0 + 144) = sub_1000076D4(v7, qword_10177BA08);
    sub_100022A54(v6, v5, type metadata accessor for OwnedBeaconRecord);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 48);
    if (v10)
    {
      v12 = *(v0 + 24);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = *(v12 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_100022C40(v11, type metadata accessor for OwnedBeaconRecord);
      v19 = sub_1000136BC(v16, v18, &v37);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Removing ghost beacon: %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      sub_100022C40(v11, type metadata accessor for OwnedBeaconRecord);
    }

    v32 = *(v0 + 56);
    v33 = *(v0 + 16);
    v34 = swift_task_alloc();
    *(v0 + 152) = v34;
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    v35 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v36 = swift_task_alloc();
    *(v0 + 160) = v36;
    *v36 = v0;
    v36[1] = sub_100AF2E38;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v36, 0, 0, 0xD000000000000014, 0x800000010136C7D0, sub_100B24F04, v34, &type metadata for () + 8);
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177BA08);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);
    if (v23)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No ghost beacons.", v26, 2u);
    }

    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_100AF2E38()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100AF34EC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_100AF2F54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100AF2F54()
{
  v33 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 136) + 1;
  sub_100022C40(*(v0 + 56), type metadata accessor for OwnedBeaconRecord);
  if (v2 == v1)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);

    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 136) + 1;
    *(v0 + 136) = v11;
    sub_100022A54(*(v0 + 104) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + v10 * v11, *(v0 + 56), type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = type metadata accessor for Logger();
    *(v0 + 144) = sub_1000076D4(v14, qword_10177BA08);
    sub_100022A54(v13, v12, type metadata accessor for OwnedBeaconRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 48);
    if (v17)
    {
      v19 = *(v0 + 24);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      v22 = *(v19 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_100022C40(v18, type metadata accessor for OwnedBeaconRecord);
      v26 = sub_1000136BC(v23, v25, &v32);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Removing ghost beacon: %{private,mask.hash}s", v20, 0x16u);
      sub_100007BAC(v21);
    }

    else
    {

      sub_100022C40(v18, type metadata accessor for OwnedBeaconRecord);
    }

    v27 = *(v0 + 56);
    v28 = *(v0 + 16);
    v29 = swift_task_alloc();
    *(v0 + 152) = v29;
    *(v29 + 16) = v28;
    *(v29 + 24) = v27;
    v30 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v31 = swift_task_alloc();
    *(v0 + 160) = v31;
    *v31 = v0;
    v31[1] = sub_100AF2E38;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v31, 0, 0, 0xD000000000000014, 0x800000010136C7D0, sub_100B24F04, v29, &type metadata for () + 8);
  }
}

uint64_t sub_100AF3324()
{
  v1 = v0[11];

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BA08);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error during removeGhostBeacons: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100AF34EC()
{
  v54 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  sub_100022A54(v4, v5, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 168);
  v10 = *(v0 + 40);
  if (v8)
  {
    v11 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53 = v14;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v15 = *(v11 + 20);
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100022C40(v10, type metadata accessor for OwnedBeaconRecord);
    v19 = sub_1000136BC(v16, v18, &v53);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error unpairing %{private,mask.hash}s: %@", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v14);
  }

  else
  {
    v21 = *(v0 + 168);

    sub_100022C40(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v22 = *(v0 + 120);
  v23 = *(v0 + 136) + 1;
  sub_100022C40(*(v0 + 56), type metadata accessor for OwnedBeaconRecord);
  if (v23 == v22)
  {
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);

    v27 = *(v0 + 48);
    v26 = *(v0 + 56);
    v28 = *(v0 + 40);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 128);
    v32 = *(v0 + 136) + 1;
    *(v0 + 136) = v32;
    sub_100022A54(*(v0 + 104) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + v31 * v32, *(v0 + 56), type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 48);
    v34 = *(v0 + 56);
    v35 = type metadata accessor for Logger();
    *(v0 + 144) = sub_1000076D4(v35, qword_10177BA08);
    sub_100022A54(v34, v33, type metadata accessor for OwnedBeaconRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 48);
    if (v38)
    {
      v40 = *(v0 + 24);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53 = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      v43 = *(v40 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      sub_100022C40(v39, type metadata accessor for OwnedBeaconRecord);
      v47 = sub_1000136BC(v44, v46, &v53);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "Removing ghost beacon: %{private,mask.hash}s", v41, 0x16u);
      sub_100007BAC(v42);
    }

    else
    {

      sub_100022C40(v39, type metadata accessor for OwnedBeaconRecord);
    }

    v48 = *(v0 + 56);
    v49 = *(v0 + 16);
    v50 = swift_task_alloc();
    *(v0 + 152) = v50;
    *(v50 + 16) = v49;
    *(v50 + 24) = v48;
    v51 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v52 = swift_task_alloc();
    *(v0 + 160) = v52;
    *v52 = v0;
    v52[1] = sub_100AF2E38;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v52, 0, 0, 0xD000000000000014, 0x800000010136C7D0, sub_100B24F04, v50, &type metadata for () + 8);
  }
}

uint64_t sub_100AF3AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for OwnedBeaconRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_100022A54(a3, v13, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 16))(v9, v24, v5);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = (v12 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  sub_10002911C(v13, &v21[v19], type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 32))(&v21[v20], v9, v5);

  sub_10025EDD4(0, 0, v17, &unk_1013D68E8, v21);
}

uint64_t sub_100AF3DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v9 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100AF3EE8, 0, 0);
}

uint64_t sub_100AF3EE8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  sub_100022A54(v0[4], v1, type metadata accessor for OwnedBeaconRecord);
  (*(v5 + 16))(v3, v7, v8);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[13] = v12;
  *(v12 + 16) = v9;
  sub_10002911C(v1, v12 + v10, type metadata accessor for OwnedBeaconRecord);
  (*(v5 + 32))(v12 + v11, v3, v8);
  v13 = async function pointer to unsafeBlocking<A>(_:)[1];

  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_1009D4068;
  v15 = v0[2];

  return unsafeBlocking<A>(_:)(v15, sub_100B25078, v12, &type metadata for () + 8);
}

uint64_t sub_100AF409C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v62 = a1;
  v63 = a2;
  v61 = type metadata accessor for OwnedBeaconRecord();
  v55 = *(v61 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v61);
  v57 = v4;
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v12 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v18 = *(v13 + 16);
  v18(&v52 - v16, v60, v12);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v56, v17, v12);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  v58 = v13;
  v21 = *(v13 + 32);
  v54 = v20;
  v60 = v12;
  v21(v20 + v19, v17, v12);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  v52 = xmmword_101385D80;
  *(v22 + 16) = xmmword_101385D80;
  v23 = *(v61 + 20);
  v24 = type metadata accessor for UUID();
  sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
  v61 = v23;
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v27 = v26;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v25;
  *(v22 + 40) = v27;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  v28 = v53;
  (*(v6 + 104))(v53, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v29 = *(v6 + 8);
  v29(v28, v5);
  v29(v11, v5);
  v30 = v60;
  v31 = v56;
  if (v65 == v64)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    v32 = swift_allocError();
    *v33 = 0;
    v65 = v32;
    CheckedContinuation.resume(throwing:)();
  }

  v34 = dispatch_group_create();
  dispatch_group_enter(v34);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v35 = *(v24 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v52;
  v39 = v63;
  (*(v35 + 16))(v38 + v37, v63 + v61, v24);
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  v41 = v34;
  v42 = v62;
  sub_1009C99C0(v38, sub_10040B9F4, v40);

  OS_dispatch_group.wait()();
  v43 = v59;
  sub_100022A54(v39, v59, type metadata accessor for OwnedBeaconRecord);
  v44 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  sub_10002911C(v43, v47 + v44, type metadata accessor for OwnedBeaconRecord);
  v48 = (v47 + v45);
  v49 = v54;
  *v48 = sub_100B2515C;
  v48[1] = v49;
  v50 = v47 + v46;
  *v50 = v42;
  *(v50 + 8) = 257;

  sub_100AAA40C(v39, sub_100B27F84, v47);

  return (*(v58 + 8))(v31, v30);
}

void sub_100AF47A8(uint64_t a1, NSObject *a2, char *a3)
{
  v66 = a3;
  v69 = a2;
  v4 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v60 - v6;
  v7 = type metadata accessor for UUID();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v60 - v12;
  v14 = type metadata accessor for OwnedDeviceKeyRecord();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v60 - v19;
  v21 = sub_1000BC4D4(&qword_1016A7810, &qword_1013B66C0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v60 - v23);
  v25 = swift_projectBox();
  sub_1000D2A70(a1, v24, &qword_1016A7810, &qword_1013B66C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v24;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177CE28);
    v28 = v67;
    v29 = v68;
    (*(v67 + 16))(v11, v66, v68);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v32 = 141558531;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v28 + 8))(v11, v29);
      v36 = sub_1000136BC(v33, v35, v70);

      *(v32 + 14) = v36;
      *(v32 + 22) = 2080;
      v70[3] = v26;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v37 = String.init<A>(describing:)();
      v39 = sub_1000136BC(v37, v38, v70);

      *(v32 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to save new OwnedDeviceKeyRecord for %{private,mask.hash}s, error %s.", v32, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v28 + 8))(v11, v29);
    }
  }

  else
  {
    v62 = v25;
    sub_10002911C(v24, v20, type metadata accessor for OwnedDeviceKeyRecord);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177CE28);
    v41 = v67;
    v42 = v68;
    (*(v67 + 16))(v13, v66, v68);
    sub_100022A54(v20, v18, type metadata accessor for OwnedDeviceKeyRecord);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v66 = v20;
      v46 = v45;
      v61 = swift_slowAlloc();
      v70[0] = v61;
      *v46 = 141558787;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v41 + 8))(v13, v42);
      v50 = sub_1000136BC(v47, v49, v70);

      *(v46 + 14) = v50;
      *(v46 + 22) = 2160;
      *(v46 + 24) = 1752392040;
      *(v46 + 32) = 2081;
      v51 = v64;
      v52 = &v18[*(v64 + 20)];
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      sub_100022C40(v18, type metadata accessor for OwnedDeviceKeyRecord);
      v56 = sub_1000136BC(v53, v55, v70);

      *(v46 + 34) = v56;
      _os_log_impl(&_mh_execute_header, v43, v44, "Successfully saved new OwnedDeviceKeyRecord for: %{private,mask.hash}s uuid: %{private,mask.hash}s.", v46, 0x2Au);
      swift_arrayDestroy();

      v20 = v66;
    }

    else
    {

      sub_100022C40(v18, type metadata accessor for OwnedDeviceKeyRecord);
      (*(v41 + 8))(v13, v42);
      v51 = v64;
    }

    v57 = v20;
    v58 = v65;
    sub_10002911C(v57, v65, type metadata accessor for OwnedDeviceKeyRecord);
    (*(v63 + 56))(v58, 0, 1, v51);
    v59 = v62;
    swift_beginAccess();
    sub_10002311C(v58, v59, &qword_10169EF98, &unk_1013D66D0);
  }

  dispatch_group_leave(v69);
}

char *sub_100AF4FC0(uint64_t a1, void (*a2)(char *, uint64_t, void **, void **, char *), void (*a3)(void *, char *, uint64_t))
{
  v79 = a3;
  v69 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v80 = &v68 - v5;
  v81 = type metadata accessor for UUID();
  v87 = *(v81 - 8);
  v6 = *(v87 + 8);
  __chkstk_darwin(v81);
  v91 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v68 - v13;
  v15 = type metadata accessor for URL();
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v92 = &v68 - v20;
  v83 = type metadata accessor for DirectorySequence();
  v21 = *(v83 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v83);
  v77 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v68 - v25;
  v90 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  v76 = sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v89 = sub_100008C00();
  *(v27 + 64) = v89;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v88 = sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v31 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v32 = v14;

  v75 = objc_opt_self();
  v33 = [v75 defaultManager];
  v34 = v84;
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

  v82 = v26;
  DirectorySequence.next()();
  v35 = v34 + 48;
  v36 = *(v34 + 48);
  if (v36(v14, 1, v15) == 1)
  {
    v37 = &_swiftEmptyDictionarySingleton;
    (*(v21 + 8))(v82, v83);
  }

  else
  {
    v94 = v36;
    v38 = *(v34 + 32);
    v74 = (v87 + 48);
    v72 = (v87 + 32);
    v84 = v34 + 32;
    v39 = (v34 + 8);
    v78 = (v21 + 8);
    v71 = (v87 + 8);
    v87 = &_swiftEmptyDictionarySingleton;
    v86 = xmmword_10138BBE0;
    v40 = v81;
    v73 = v32;
    v41 = v92;
    v95 = v35;
    v93 = v38;
    do
    {
      v38(v41, v32, v15);
      URL.lastPathComponent.getter();
      v61 = v80;
      UUID.init(uuidString:)();

      if ((*v74)(v61, 1, v40) == 1)
      {
        (*v39)(v41, v15);
        (*v78)(v82, v83);
        sub_10000B3A8(v61, &qword_1016980D0, &unk_10138F3B0);
        return v87;
      }

      (*v72)(v91, v61, v40);
      v97 = _swiftEmptyArrayStorage;
      v98 = _swiftEmptyArrayStorage;
      v62 = [v75 defaultManager];
      v63 = v77;
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      DirectorySequence.next()();
      if (v94(v12, 1, v15) != 1)
      {
        v64 = v69;
        v65 = v68;
        do
        {
          v93(v19, v12, v15);
          v66 = objc_autoreleasePoolPush();
          v64(v19, v65, &v98, &v97, v96);
          objc_autoreleasePoolPop(v66);
          (*v39)(v19, v15);
          DirectorySequence.next()();
        }

        while (v94(v12, 1, v15) != 1);
      }

      v70 = *v78;
      v70(v63, v83);
      v85 = static os_log_type_t.debug.getter();
      v42 = static OS_os_log.default.getter();
      v43 = swift_allocObject();
      *(v43 + 16) = v86;
      v44 = v98;
      v45 = v98[2];
      *(v43 + 56) = &type metadata for Int;
      *(v43 + 64) = &protocol witness table for Int;
      *(v43 + 32) = v45;

      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v89;
      *(v43 + 96) = &type metadata for String;
      *(v43 + 104) = v47;
      *(v43 + 72) = v46;
      *(v43 + 80) = v48;
      os_log(_:dso:log:_:_:)();

      v49 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v49;
      v51 = v91;
      v79(v44, v91, isUniquelyReferenced_nonNull_native);
      v87 = v98;
      v52 = swift_allocObject();
      *(v52 + 16) = v86;
      v53 = v44[2];

      *(v52 + 56) = &type metadata for Int;
      *(v52 + 64) = &protocol witness table for Int;
      *(v52 + 32) = v53;
      v54 = v92;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v89;
      *(v52 + 96) = &type metadata for String;
      *(v52 + 104) = v56;
      *(v52 + 72) = v55;
      *(v52 + 80) = v57;
      v58 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      v41 = v54;

      v59 = v51;
      v40 = v81;
      (*v71)(v59, v81);
      (*v39)(v54, v15);
      v32 = v73;
      DirectorySequence.next()();
      v60 = v94(v32, 1, v15);
      v38 = v93;
    }

    while (v60 != 1);
    v37 = v87;
    v70(v82, v83);
  }

  sub_10000B3A8(v32, &unk_101696AC0, &qword_101390A60);
  return v37;
}

uint64_t sub_100AF5948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100AF59BC(uint64_t a1, char a2)
{
  v4 = *(*(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8) + 80);

  return sub_100AA2444(a1, a2 & 1);
}

uint64_t sub_100AF5A48(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100AE7A60(a1, a2, v2 + v6, v9, v10, v11, v12);
}

uint64_t sub_100AF5B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v85 = &v61 - v5;
  v6 = type metadata accessor for URL();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v6);
  v71 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v61 - v11;
  v13 = type metadata accessor for DirectorySequence();
  v78 = *(v13 - 8);
  v14 = v78[8];
  __chkstk_darwin(v13);
  v82 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016B5470, &unk_1013D7380);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v70 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v81 = &v61 - v20;
  v21 = sub_1000BC4D4(&qword_1016B5478, &qword_1013D6730);
  v63 = *(v21 - 8);
  v22 = *(v63 + 64);
  v23 = __chkstk_darwin(v21);
  v80 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v79 = &v61 - v25;
  v26 = sub_1000BC4D4(&qword_1016A78B8, &unk_1013D6710);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v61 - v28;
  v30 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v61 - v33;
  sub_1000D2A70(v2, v29, &qword_1016A78B8, &unk_1013D6710);
  v62 = v31;
  v35 = *(v31 + 48);
  v68 = v30;
  if (v35(v29, 1, v30) == 1)
  {
    sub_10000B3A8(v29, &qword_1016A78B8, &unk_1013D6710);
    v36 = 1;
  }

  else
  {
    v61 = v2;
    sub_1000D2AD8(v29, v34, &qword_1016A78A8, &unk_1013D66E0);
    v83 = *(v68 + 40);
    v84 = v34;
    sub_1000D2A70(&v34[v83], v12, &qword_1016A5970, &unk_1013B3470);
    v37 = v78[6];
    v76 = v78 + 6;
    v77 = v37;
    v38 = v37(v12, 1, v13);
    v39 = v12;
    v40 = v82;
    if (v38 == 1)
    {
LABEL_11:
      sub_10000B3A8(v39, &qword_1016A5970, &unk_1013B3470);
      v45 = v81;
      (*(v63 + 56))(v81, 1, 1, v21);
    }

    else
    {
      v41 = v78[4];
      v74 = (v72 + 48);
      v75 = v41;
      v67 = (v72 + 32);
      v73 = (v78 + 1);
      v66 = (v72 + 8);
      v65 = (v78 + 7);
      v64 = (v63 + 56);
      v72 = v63 + 48;
      v78 += 4;
      while (1)
      {
        v75(v40, v39, v13);
        v42 = v85;
        DirectorySequence.next()();
        if ((*v74)(v42, 1, v6) == 1)
        {
          (*v73)(v40, v13);
          sub_10000B3A8(v85, &unk_101696AC0, &qword_101390A60);
          v43 = v83;
          v44 = v84;
          sub_10000B3A8(&v84[v83], &qword_1016A5970, &unk_1013B3470);
          (*v65)(v44 + v43, 1, 1, v13);
          v45 = v81;
          (*v64)(v81, 1, 1, v21);
        }

        else
        {
          v46 = v39;
          v47 = v71;
          (*v67)(v71, v85, v6);
          v48 = objc_autoreleasePoolPush();
          v49 = v21;
          v50 = v70;
          sub_1012C46D0(v47, v84, v70);
          objc_autoreleasePoolPop(v48);
          (*v73)(v82, v13);
          v51 = v50;
          v21 = v49;
          v45 = v81;
          sub_1000D2AD8(v51, v81, &qword_1016B5470, &unk_1013D7380);
          v52 = v47;
          v39 = v46;
          v40 = v82;
          (*v66)(v52, v6);
        }

        if ((*v72)(v45, 1, v21) == 1)
        {
          break;
        }

        v53 = v45;
        v54 = v79;
        sub_1000D2AD8(v53, v79, &qword_1016B5478, &qword_1013D6730);
        v55 = v54;
        v56 = v80;
        sub_1000D2AD8(v55, v80, &qword_1016B5478, &qword_1013D6730);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_10000B3A8(v84, &qword_1016A78A8, &unk_1013D66E0);
          v58 = v69;
          sub_10002911C(v56, v69, type metadata accessor for OwnedDeviceKeyRecord);
          v36 = 0;
          goto LABEL_14;
        }

        sub_10000B3A8(v56, &qword_1016B5478, &qword_1013D6730);
        sub_1000D2A70(&v84[v83], v39, &qword_1016A5970, &unk_1013B3470);
        if (v77(v39, 1, v13) == 1)
        {
          goto LABEL_11;
        }
      }
    }

    sub_10000B3A8(v84, &qword_1016A78A8, &unk_1013D66E0);
    sub_10000B3A8(v45, &qword_1016B5470, &unk_1013D7380);
    v57 = v61;
    sub_10000B3A8(v61, &qword_1016A78B8, &unk_1013D6710);
    v36 = 1;
    (*(v62 + 56))(v57, 1, 1, v68);
  }

  v58 = v69;
LABEL_14:
  v59 = type metadata accessor for OwnedDeviceKeyRecord();
  return (*(*(v59 - 8) + 56))(v58, v36, 1, v59);
}

uint64_t sub_100AF6418(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_100AE9318(a1, a2, a3 & 1, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), *(v3 + v9 + 8), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100AF6518(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      sub_100017D5C(v11, v12);
      Data.hash(into:)();
      v13 = Hasher._finalize()();
      result = sub_100016590(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AF6720(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF68E8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();
      sub_100017D5C(v13, v14);
      Data.hash(into:)();
      v15 = Hasher._finalize()();
      result = sub_100016590(v13, v14);
      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF6AE8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for BookmarkMetaData() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF6F44(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v35 = (v14 + 1) & v13;
    v36 = a2 + 64;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 56);
    v33 = (v16 - 8);
    v34 = v17;
    do
    {
      v19 = v18 * v12;
      v20 = v15;
      v21 = v16;
      v34(v9, *(a2 + 48) + v18 * v12, v4);
      v22 = *(a2 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v33)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v27 = v18 * a1;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          result = v28 + v27;
          if (v27 < v19 || result >= v28 + v19 + v18)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v16 = v21;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v29 = v27 == v19;
            v16 = v21;
            v15 = v20;
            if (!v29)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v10 = v36;
    }

    while (((*(v36 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AF7244(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF73F4(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF76A8(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + a1);
          v33 = (v31 + v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_100AF79E0(int64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for BeaconIdentifier();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v33);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (_HashTable.previousHole(before:)() + 1) & ~v9;
    v13 = *(v4 + 72);
    v30 = v13;
    v31 = a2 + 64;
    v14 = v32;
    do
    {
      v15 = v13 * v10;
      sub_100022A54(*(a2 + 48) + v13 * v10, v14, type metadata accessor for BeaconIdentifier);
      v16 = *(a2 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v17 = v14 + *(v33 + 20);
      dispatch thunk of Hashable.hash(into:)();
      v18 = Hasher._finalize()();
      result = sub_100022C40(v14, type metadata accessor for BeaconIdentifier);
      v19 = v18 & v11;
      if (a1 >= v12)
      {
        if (v19 < v12)
        {
          v8 = v31;
          goto LABEL_4;
        }

        if (a1 < v19)
        {
          goto LABEL_3;
        }
      }

      else if (v19 < v12 && a1 < v19)
      {
LABEL_3:
        v8 = v31;
LABEL_4:
        v13 = v30;
        goto LABEL_5;
      }

      v13 = v30;
      if (v30 * a1 < v15 || *(a2 + 48) + v30 * a1 >= (*(a2 + 48) + v15 + v30))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v30 * a1 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(a2 + 56);
      v21 = *(*(type metadata accessor for ObservedAdvertisement(0) - 8) + 72);
      v22 = v21 * a1;
      result = v20 + v21 * a1;
      v23 = v21 * v10;
      v24 = v20 + v21 * v10 + v21;
      v25 = v22 < v23 || result >= v24;
      v8 = v31;
      if (v25)
      {
        result = swift_arrayInitWithTakeFrontToBack();
LABEL_25:
        a1 = v10;
        goto LABEL_5;
      }

      a1 = v10;
      if (v22 != v23)
      {
        result = swift_arrayInitWithTakeBackToFront();
        goto LABEL_25;
      }

LABEL_5:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AF7D4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (48 * v3 < (48 * v6) || v21 >= v22 + 3 || v3 != v6)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF7F1C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for Date() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF824C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_10000768C(&unk_1016BC080, &type metadata accessor for MACAddress);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for Date() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF8604(int64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v42 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = a2 + 64;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v41(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 24 * a1;
          v33 = (v31 + 24 * v11);
          if (24 * a1 < (24 * v11) || v32 >= v33 + 24 || a1 != v11)
          {
            v34 = *v33;
            *(v32 + 16) = *(v33 + 2);
            *v32 = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

void sub_100AF8944(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_100AF8AD0(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}