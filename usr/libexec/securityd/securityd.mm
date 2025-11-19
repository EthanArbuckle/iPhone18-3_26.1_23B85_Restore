void sub_100002598(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v4 = *(a1 + 32);

    sub_1000025F8(v4, object);
  }
}

void sub_1000025F8(_xpc_connection_s *a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v211 = 0;
  v212 = &v211;
  v213 = 0x2000000000;
  v214 = 0;
  v209 = 0u;
  *v210 = 0u;
  *cf = 0u;
  *v208 = 0u;
  HIDWORD(v208[0]) = xpc_connection_get_euid(a1);
  BYTE12(v209) = 0;
  BYTE1(v210[1]) = 0;
  if (type != &_xpc_type_dictionary)
  {
    sub_1000111B4(1, @"com.apple.security.xpc", 0, v212 + 3, v5, @"Messages expect to be xpc dictionary, got: %@", object);
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v212[3];
      *buf = 138412546;
      *&buf[4] = cf[0];
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: returning error: %@", buf, 0x16u);
    }

    v8 = sub_100010460(v212[3]);
    reply_with_format = xpc_create_reply_with_format();
    v10 = 0;
    v11 = 0;
LABEL_5:
    if (!reply_with_format)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  reply_with_format = xpc_dictionary_create_reply(object);
  uint64 = xpc_dictionary_get_uint64(object, "operation");
  memset(buf, 0, 32);
  xpc_connection_get_audit_token();
  v10 = CFDataCreate(kCFAllocatorDefault, buf, 32);
  euid = xpc_connection_get_euid(a1);
  *bytes = *buf;
  *&bytes[16] = *&buf[16];
  if (sub_1000053B4(cf, euid, bytes))
  {
    if (uint64 == 30)
    {
      v11 = sub_100006108(cf[0], @"com.apple.developer.associated-domains");
    }

    else
    {
      v11 = 0;
    }

    v16 = sub_100006274("serverxpc");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      if (uint64 > 0x88)
      {
        v20 = @"Unknown xpc operation";
      }

      else
      {
        v20 = off_100343FD8[uint64];
      }

      *bytes = 138412802;
      *&bytes[4] = cf[0];
      *&bytes[12] = 2112;
      *&bytes[14] = v20;
      *&bytes[22] = 2048;
      *&bytes[24] = uint64;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "XPC [%@] operation: %@ (%llu)", bytes, 0x20u);
    }

    switch(uint64)
    {
      case 0uLL:
        if (sub_10000606C(0, cf[0], v212 + 3))
        {
          v106 = sub_100006304(object, "query", v212 + 3);
          if (v106)
          {
            Mutable = v106;
            if ((CFDictionaryGetValue(v106, kSecAttrDeriveSyncIDFromItemAttributes) || CFDictionaryGetValue(Mutable, kSecAttrPCSPlaintextServiceIdentifier) || CFDictionaryGetValue(Mutable, kSecAttrPCSPlaintextPublicKey) || CFDictionaryGetValue(Mutable, kSecAttrPCSPlaintextPublicIdentity)) && !sub_100018260(0, cf[0], @"com.apple.private.ckks.plaintextfields", v212 + 3) || (CFDictionaryGetValue(Mutable, kSecDataInetExtraNotes) || CFDictionaryGetValue(Mutable, kSecDataInetExtraHistory) || CFDictionaryGetValue(Mutable, kSecDataInetExtraClientDefined0) || CFDictionaryGetValue(Mutable, kSecDataInetExtraClientDefined1) || CFDictionaryGetValue(Mutable, kSecDataInetExtraClientDefined2) || CFDictionaryGetValue(Mutable, kSecDataInetExtraClientDefined3)) && !sub_100018260(0, cf[0], @"com.apple.private.keychain.inet_expansion_fields", v212 + 3))
            {
              *bytes = 0;
              goto LABEL_406;
            }

            if (CFDictionaryGetValue(Mutable, kSecAttrSysBound))
            {
              v107 = sub_100018260(0, cf[0], @"com.apple.private.keychain.sysbound", v212 + 3);
              *bytes = 0;
              if (!v107)
              {
                goto LABEL_406;
              }
            }

            else
            {
              *bytes = 0;
            }

            if (sub_100019784(Mutable, cf, bytes, v212 + 3))
            {
              v112 = *bytes;
              if (*bytes)
              {
                v113 = (v212 + 3);
                v114 = reply_with_format;
                v115 = 0;
                goto LABEL_219;
              }
            }

            goto LABEL_406;
          }
        }

        goto LABEL_408;
      case 1uLL:
        if (sub_10000606C(0, cf[0], v212 + 3))
        {
          v111 = sub_100006304(object, "query", v212 + 3);
          if (v111)
          {
            Mutable = v111;
            *bytes = 0;
            if (sub_100007B14(v111, bytes, cf, v212 + 3))
            {
              v112 = *bytes;
              if (*bytes)
              {
                v113 = (v212 + 3);
                v114 = reply_with_format;
                v115 = 1;
LABEL_219:
                sub_100012F3C(v114, "status", v112, v115, v113);
                v116 = *bytes;
                if (*bytes)
                {
                  *bytes = 0;
                  goto LABEL_405;
                }
              }
            }

            goto LABEL_406;
          }
        }

        goto LABEL_408;
      case 2uLL:
        if (sub_10000606C(2uLL, cf[0], v212 + 3))
        {
          v86 = sub_100006304(object, "query", v212 + 3);
          if (v86)
          {
            v59 = v86;
            v87 = sub_100006304(object, "attributesToUpdate", v212 + 3);
            if (!v87)
            {
              goto LABEL_461;
            }

            v88 = v87;
            if ((!CFDictionaryGetValue(v59, kSecAttrDeriveSyncIDFromItemAttributes) && !CFDictionaryGetValue(v88, kSecAttrPCSPlaintextServiceIdentifier) && !CFDictionaryGetValue(v88, kSecAttrPCSPlaintextPublicKey) && !CFDictionaryGetValue(v88, kSecAttrPCSPlaintextPublicIdentity) || sub_100018260(2u, cf[0], @"com.apple.private.ckks.plaintextfields", v212 + 3)) && (!CFDictionaryGetValue(v88, kSecDataInetExtraNotes) && !CFDictionaryGetValue(v88, kSecDataInetExtraHistory) && !CFDictionaryGetValue(v88, kSecDataInetExtraClientDefined0) && !CFDictionaryGetValue(v88, kSecDataInetExtraClientDefined1) && !CFDictionaryGetValue(v88, kSecDataInetExtraClientDefined2) && !CFDictionaryGetValue(v88, kSecDataInetExtraClientDefined3) || sub_100018260(2u, cf[0], @"com.apple.private.keychain.inet_expansion_fields", v212 + 3)) && (!CFDictionaryGetValue(v59, kSecAttrSysBound) || sub_100018260(2u, cf[0], @"com.apple.private.keychain.sysbound", v212 + 3)))
            {
              v89 = sub_10001F5E0(v59, v88, cf, v212 + 3);
              xpc_dictionary_set_BOOL(reply_with_format, "status", v89);
            }

            goto LABEL_358;
          }
        }

        goto LABEL_408;
      case 3uLL:
        if (sub_10000606C(0, cf[0], v212 + 3))
        {
          v128 = sub_100006304(object, "query", v212 + 3);
          if (v128)
          {
            Mutable = v128;
            v27 = sub_100010CA8(v128, cf, v212 + 3);
            goto LABEL_345;
          }
        }

        goto LABEL_408;
      case 7uLL:
        v129 = sub_10000621C(cf[0]);
        if (!v129 || (v130 = v129, v131 = CFEqual(v129, @"com.apple.purplebuddy"), CFRelease(v130), !v131))
        {
          if (!sub_100018260(7u, cf[0], @"com.apple.private.security.delete.all", v212 + 3))
          {
            goto LABEL_376;
          }
        }

        v28 = sub_100186D90((v212 + 3));
        goto LABEL_363;
      case 9uLL:
        if (!sub_100018260(9u, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        *bytes = 0;
        v206 = 0;
        if (!sub_1001CDE38(object, "keybag", bytes, v212 + 3))
        {
          goto LABEL_408;
        }

        if (sub_1001CDE38(object, "password", &v206, v212 + 3))
        {
          v90 = xpc_dictionary_get_BOOL(object, "emcsbackup");
          v59 = *bytes;
          v91 = v206;
          v92 = sub_1001885E4(cf, *bytes, v206, v90, v212 + 3);
          if (v92)
          {
            v93 = v92;
            v94 = sub_1001CDD0C(object);
            if (v94 < 0)
            {
              sub_1001CDABC(reply_with_format, "status", v93, v212 + 3);
            }

            else
            {
              v95 = v94;
              v196 = sub_10007FC48(v94, v93);
              if (close(v95))
              {
                v96 = 0;
              }

              else
              {
                v96 = v196;
              }

              if (!v96)
              {
                v197 = v212;
                v97 = __error();
                sub_1000103CC(-36, v197 + 3, @"Failed to write backup file: %d", *v97);
              }

              xpc_dictionary_set_BOOL(reply_with_format, "status", v96);
            }

            CFRelease(v93);
          }

          if (v91)
          {
            CFRelease(v91);
          }
        }

        else
        {
          v59 = *bytes;
        }

        goto LABEL_460;
      case 0xAuLL:
        if (!sub_100018260(0xAu, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        *bytes = 0;
        v206 = 0;
        v117 = sub_1001CDD0C(object);
        v118 = v117;
        if (v117 == -1)
        {
          v119 = sub_1000182FC(object, "backup", v212 + 3);
        }

        else
        {
          v119 = sub_10007FCBC(v117, bytes, &v206);
        }

        v189 = v119;
        if (v119)
        {
          v190 = sub_1000182FC(object, "keybag", v212 + 3);
          if (v190)
          {
            v191 = v190;
            theData = 0;
            if (sub_1001CDE38(object, "password", &theData, v212 + 3))
            {
              v192 = theData;
              v193 = sub_100188C30(v189, cf, v191, theData, v212 + 3);
              xpc_dictionary_set_BOOL(reply_with_format, "status", v193);
              if (v192)
              {
                CFRelease(v192);
              }
            }

            CFRelease(v191);
          }

          CFRelease(v189);
        }

        if (v118 == -1)
        {
          goto LABEL_448;
        }

        v194 = v118;
        goto LABEL_447;
      case 0xBuLL:
        if (!sub_100018260(0xBu, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        *bytes = 0;
        if (!sub_1001CDEAC(object, bytes, v212 + 3))
        {
          goto LABEL_408;
        }

        v120 = sub_1000182FC(object, "keybag", v212 + 3);
        if (!v120)
        {
          goto LABEL_234;
        }

        v121 = v120;
        v206 = 0;
        if (sub_1001CDE38(object, "password", &v206, v212 + 3))
        {
          v122 = v206;
          v123 = sub_1001894F8(*bytes, v121, v206, v212 + 3);
          if (v123)
          {
            v124 = v123;
            sub_100012F3C(reply_with_format, "status", v123, 0, v212 + 3);
            CFRelease(v124);
          }

          if (v122)
          {
            CFRelease(v122);
          }
        }

        v84 = v121;
        goto LABEL_233;
      case 0xCuLL:
        if (!sub_100018260(0xCu, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v133 = sub_100006304(object, "backup", v212 + 3);
        if (!v133)
        {
          goto LABEL_408;
        }

        v59 = v133;
        v134 = sub_1000182FC(object, "keybag", v212 + 3);
        if (!v134)
        {
          goto LABEL_461;
        }

        v135 = v134;
        *bytes = 0;
        if (sub_1001CDE38(object, "password", bytes, v212 + 3))
        {
          v136 = *bytes;
          v137 = sub_100189DD8(v59, v135, *bytes, v212 + 3);
          xpc_dictionary_set_BOOL(reply_with_format, "status", v137);
          if (v136)
          {
            CFRelease(v136);
          }
        }

        v138 = v135;
        goto LABEL_359;
      case 0xDuLL:
        if (!sub_100018260(0xDu, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v132 = sub_100170244(v212 + 3);
        if (!v132)
        {
          goto LABEL_408;
        }

        goto LABEL_289;
      case 0xEuLL:
        if (!sub_100018260(0xEu, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        *bytes = 0;
        v75 = sub_1001CDFA8(object, "cfstring", bytes, v212 + 3);
        Mutable = *bytes;
        if (!v75)
        {
          goto LABEL_390;
        }

        v76 = sub_100170338(*bytes, v212 + 3);
        sub_1001CDB78(reply_with_format, v76, v212 + 3);
        if (!v76)
        {
          goto LABEL_390;
        }

        goto LABEL_388;
      case 0xFuLL:
        if (sub_100018260(0xFu, cf[0], @"restore-keychain", v212 + 3))
        {
          v98 = sub_1001CDF18(object, "backup", v212 + 3);
          if (v98)
          {
            v99 = v98;
            v100 = sub_10016FD88(v98, v212 + 3);
            CFRelease(v99);
            xpc_dictionary_set_fd(reply_with_format, "status", v100);
            if (v100 != -1)
            {
              close(v100);
            }
          }

          else
          {
            xpc_dictionary_set_fd(reply_with_format, "status", -1);
          }
        }

        goto LABEL_408;
      case 0x10uLL:
        if (!sub_100018260(0x10u, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        *bytes = 0;
        if (!sub_1001CDE38(object, "keybag", bytes, v212 + 3))
        {
          goto LABEL_234;
        }

        v206 = 0;
        if (!sub_1001CDE38(object, "data", &v206, v212 + 3))
        {
          goto LABEL_234;
        }

        v80 = sub_1001CDF18(object, "backup", v212 + 3);
        v81 = v206;
        if (v80)
        {
          v82 = v80;
          v83 = sub_100170068(v80, *bytes, v206, v212 + 3);
          CFRelease(v82);
          xpc_dictionary_set_BOOL(reply_with_format, "status", v83);
        }

        if (!v81)
        {
          goto LABEL_234;
        }

        v84 = v81;
LABEL_233:
        CFRelease(v84);
LABEL_234:
        v125 = *bytes;
        if (!*bytes)
        {
          goto LABEL_408;
        }

        goto LABEL_407;
      case 0x11uLL:
        if (!sub_100018260(0x11u, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v68 = sub_1001CDF18(object, "backup", v212 + 3);
        if (!v68)
        {
          goto LABEL_373;
        }

        v69 = v68;
        *bytes = 0;
        if (sub_1001CDFA8(object, "digest", bytes, v212 + 3))
        {
          v70 = sub_1000182FC(object, "keybag", v212 + 3);
          if (v70)
          {
            v71 = v70;
            v195 = sub_1000182FC(object, "password", v212 + 3);
            if (v195)
            {
              v72 = sub_1000182FC(object, "data", v212 + 3);
              if (v72)
              {
                v73 = v72;
                v74 = sub_10017053C(v72, *bytes, v71, v195, v72, v212 + 3);
                CFRelease(v73);
              }

              else
              {
                v74 = 0;
              }

              CFRelease(v195);
            }

            else
            {
              v74 = 0;
            }

            CFRelease(v71);
          }

          else
          {
            v74 = 0;
          }

          if (*bytes)
          {
            CFRelease(*bytes);
          }
        }

        else
        {
          v74 = 0;
        }

        goto LABEL_467;
      case 0x12uLL:
        if (![OTSOSActualAdapter sosEnabled]_0())
        {
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          sub_100012F3C(reply_with_format, "status", Mutable, 0, v212 + 3);
          goto LABEL_390;
        }

        v126 = sub_100006304(object, "query", v212 + 3);
        if (!v126)
        {
          goto LABEL_408;
        }

        Mutable = v126;
        v53 = sub_10018928C();
        sub_100012F3C(reply_with_format, "status", v53, 0, v212 + 3);
LABEL_403:
        if (v53)
        {
LABEL_404:
          v116 = v53;
LABEL_405:
          CFRelease(v116);
        }

        goto LABEL_406;
      case 0x15uLL:
        *bytes = 0;
        if (!sub_1001CDE38(object, "publicPeerId", bytes, v212 + 3))
        {
          goto LABEL_408;
        }

        Mutable = *bytes;
        v127 = sub_1001A156C(*bytes, (v212 + 3));
        if (!v127)
        {
          goto LABEL_390;
        }

        v76 = v127;
        sub_1001CDABC(reply_with_format, "status", v127, v212 + 3);
        goto LABEL_388;
      case 0x16uLL:
        *bytes = 0;
        theData = 0;
        v206 = 0;
        v204 = 0;
        value = 0;
        if (!sub_1001CDE38(object, "otrsess", bytes, v212 + 3))
        {
          goto LABEL_408;
        }

        v140 = sub_1001CDE38(object, "data", &v206, v212 + 3);
        Mutable = *bytes;
        if (!v140)
        {
          goto LABEL_390;
        }

        v76 = v206;
        v141 = sub_1001A1768(*bytes, v206, &theData, &v204, &value);
        if (v141)
        {
          v198 = theData;
          sub_1001CDABC(reply_with_format, "otrsess", theData, v212 + 3);
          v142 = v204;
          sub_1001CDABC(reply_with_format, "data", v204, v212 + 3);
          xpc_dictionary_set_BOOL(reply_with_format, "otrrdy", value);
          if (v198)
          {
            theData = 0;
            CFRelease(v198);
          }

          if (v142)
          {
            v204 = 0;
            CFRelease(v142);
          }
        }

        v143 = reply_with_format;
        v144 = v141;
        goto LABEL_301;
      case 0x1CuLL:
        if (!sub_100018260(0x1Cu, cf[0], @"keychain-sync-updates", v212 + 3))
        {
          goto LABEL_408;
        }

        v105 = sub_100251154(v212 + 3);
        goto LABEL_270;
      case 0x1DuLL:
        v66 = xpc_dictionary_get_BOOL(object, "force");
        v28 = sub_10018A418(v66, cf, (v212 + 3));
        goto LABEL_363;
      case 0x1EuLL:
        v85 = sub_100006304(object, "query", v212 + 3);
        if (!v85)
        {
          goto LABEL_408;
        }

        Mutable = v85;
        *bytes = 0;
        if (cf[0])
        {
          v53 = sub_10000621C(cf[0]);
        }

        else
        {
          v53 = 0;
        }

        if (sub_1001878C8(Mutable, cf, buf, v53, v11, bytes, v212 + 3))
        {
          if (*bytes)
          {
            sub_100012F3C(reply_with_format, "status", *bytes, 0, v212 + 3);
            v179 = *bytes;
            if (*bytes)
            {
              *bytes = 0;
              CFRelease(v179);
            }
          }
        }

        goto LABEL_403;
      case 0x1FuLL:
        v132 = sub_1001943B8();
        if (!v132)
        {
          goto LABEL_408;
        }

LABEL_289:
        Mutable = v132;
        sub_100012F3C(reply_with_format, "status", v132, 0, v212 + 3);
        goto LABEL_406;
      case 0x20uLL:
        v67 = sub_10000674C(object, "query", v212 + 3);
        if (!v67)
        {
          goto LABEL_351;
        }

        Mutable = v67;
        sub_10019448C(v67, v212 + 3);
        goto LABEL_139;
      case 0x21uLL:
        v78 = sub_10000674C(object, "query", v212 + 3);
        if (!v78)
        {
          goto LABEL_351;
        }

        Mutable = v78;
        sub_100194538(v78, (v212 + 3));
LABEL_139:
        v79 = reply_with_format;
        v42 = 1;
        goto LABEL_347;
      case 0x22uLL:
        if (!sub_100018260(0x22u, cf[0], @"keychain-sync-updates", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_1002501B0(v212 + 3);
        goto LABEL_363;
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x27uLL:
      case 0x28uLL:
      case 0x29uLL:
      case 0x2AuLL:
      case 0x2BuLL:
        v17 = "error";
        v18 = reply_with_format;
        v19 = -4;
        goto LABEL_34;
      case 0x2CuLL:
        if (!sub_100018260(0x2Cu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v202[0] = _NSConcreteStackBlock;
        v202[1] = 0x40000000;
        v202[2] = sub_10007FD68;
        v202[3] = &unk_1003350D0;
        v202[4] = &v211;
        v202[5] = reply_with_format;
        v60 = v202;
        goto LABEL_238;
      case 0x2DuLL:
        if (sub_100018260(0x2Du, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          v201[0] = _NSConcreteStackBlock;
          v201[1] = 0x40000000;
          v201[2] = sub_10007FE88;
          v201[3] = &unk_1003350F8;
          v201[4] = &v211;
          v201[5] = reply_with_format;
          sub_10007FEE0(object, v201);
        }

        goto LABEL_408;
      case 0x2EuLL:
        if (!sub_100018260(0x2Eu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v200[0] = _NSConcreteStackBlock;
        v200[1] = 0x40000000;
        v200[2] = sub_10007FF84;
        v200[3] = &unk_100335120;
        v200[4] = &v211;
        v200[5] = reply_with_format;
        v60 = v200;
LABEL_238:
        sub_10007FDC4(object, v60);
        goto LABEL_408;
      case 0x2FuLL:
        if (!sub_100018260(0x2Fu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_100248F90(v212 + 3);
        goto LABEL_363;
      case 0x30uLL:
        if (!sub_100018260(0x30u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v109 = v212;
        v110 = &stru_100346B88;
        goto LABEL_292;
      case 0x31uLL:
        if (!sub_100018260(0x31u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v19 = sub_1002492C4(v212 + 3);
        goto LABEL_271;
      case 0x32uLL:
        if (!sub_100018260(0x32u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_100249418(v212 + 3);
        goto LABEL_363;
      case 0x33uLL:
        if (!sub_100018260(0x33u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10024A414(v212 + 3);
        goto LABEL_363;
      case 0x34uLL:
        if (!sub_100018260(0x34u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10024ABF8(v212 + 3);
        goto LABEL_363;
      case 0x35uLL:
        if (!sub_100018260(0x35u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10024B20C(v212 + 3);
        goto LABEL_363;
      case 0x36uLL:
        if (sub_100018260(0x36u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          v199[0] = _NSConcreteStackBlock;
          v199[1] = 0x40000000;
          v199[2] = sub_10007FFE0;
          v199[3] = &unk_100335148;
          v199[4] = &v211;
          v199[5] = reply_with_format;
          sub_100080038(object, v199);
        }

        goto LABEL_408;
      case 0x37uLL:
        if (!sub_100018260(0x37u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v76 = sub_1000800C4(object, "enabledViews");
        Mutable = sub_1000800C4(object, "disabledViews");
        v144 = sub_1002468A8(v76, Mutable);
        v143 = reply_with_format;
LABEL_301:
        xpc_dictionary_set_BOOL(v143, "status", v144);
        if (!v76)
        {
          goto LABEL_390;
        }

        goto LABEL_388;
      case 0x38uLL:
        if (!sub_100018260(0x38u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10024B760(v212 + 3);
        goto LABEL_363;
      case 0x39uLL:
        if (!sub_100018260(0x39u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        xpc_dictionary_get_value(object, "peer-infos");
        Mutable = CreateArrayOfPeerInfoWithXPCObject();
        v61 = sub_10024BA18(Mutable, v212 + 3);
        v62 = reply_with_format;
        goto LABEL_378;
      case 0x3AuLL:
        if (!sub_100018260(0x3Au, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        sub_10024BCE4();
        goto LABEL_351;
      case 0x3BuLL:
        if (!sub_100018260(0x3Bu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10024BEB0(v212 + 3);
        goto LABEL_363;
      case 0x3DuLL:
        if (!sub_100018260(0x3Du, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        xpc_dictionary_get_value(object, "peer-infos");
        ArrayOfPeerInfoWithXPCObject = CreateArrayOfPeerInfoWithXPCObject();
        if (!ArrayOfPeerInfoWithXPCObject)
        {
          goto LABEL_372;
        }

        Mutable = ArrayOfPeerInfoWithXPCObject;
        v27 = sub_10024E49C(ArrayOfPeerInfoWithXPCObject, v212 + 3);
        goto LABEL_345;
      case 0x3EuLL:
        if (!sub_100018260(0x3Eu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        xpc_dictionary_get_value(object, "peer-infos");
        v160 = CreateArrayOfPeerInfoWithXPCObject();
        if (!v160)
        {
          goto LABEL_372;
        }

        Mutable = v160;
        v27 = sub_10024E830(v160, v212 + 3);
        goto LABEL_345;
      case 0x3FuLL:
        if (!sub_100018260(0x3Fu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v48 = sub_10024C480(v212 + 3);
        goto LABEL_333;
      case 0x40uLL:
        if (!sub_100018260(0x40u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v48 = sub_10024C994(v212 + 3);
        goto LABEL_333;
      case 0x41uLL:
        if (!sub_100018260(0x41u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10024CD98(v212 + 3);
        goto LABEL_363;
      case 0x42uLL:
        if (!sub_100018260(0x42u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v48 = sub_10024D100(v212 + 3);
        goto LABEL_333;
      case 0x43uLL:
        if (!sub_100018260(0x43u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v48 = sub_10024EBC8(v212 + 3);
        goto LABEL_333;
      case 0x44uLL:
        if (!sub_100018260(0x44u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v48 = sub_10024ECF4(v212 + 3);
        goto LABEL_333;
      case 0x45uLL:
        if (sub_100018260(0x45u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          v47 = sub_10024C7E8(v212 + 3);
          sub_100080234(reply_with_format, v47);
        }

        goto LABEL_408;
      case 0x46uLL:
        if (!sub_100018260(0x46u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v105 = sub_10024FFB0(v212 + 3);
        goto LABEL_270;
      case 0x47uLL:
        if (!sub_100018260(0x47u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        int64 = xpc_dictionary_get_int64(object, "reason");
        v105 = sub_1002500E0(int64, v212 + 3);
LABEL_270:
        v19 = v105;
LABEL_271:
        v17 = "status";
        v18 = reply_with_format;
LABEL_34:
        xpc_dictionary_set_int64(v18, v17, v19);
        goto LABEL_408;
      case 0x48uLL:
        if (!sub_100018260(0x48u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v48 = sub_10024D290(v212 + 3);
        goto LABEL_333;
      case 0x49uLL:
        if (!sub_100018260(0x49u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v48 = sub_10024D3BC(v212 + 3);
LABEL_333:
        sub_1000801BC(reply_with_format, v48);
        goto LABEL_408;
      case 0x4AuLL:
        if (!sub_100018260(0x4Au, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v152 = sub_10024D788(v212 + 3);
        if (!v152)
        {
          goto LABEL_408;
        }

        Mutable = v152;
        v156 = sub_10001B910(v152, v212 + 3, v153, v154, v155);
        if (!v156)
        {
          goto LABEL_406;
        }

        v53 = v156;
        BytePtr = CFDataGetBytePtr(v156);
        Length = CFDataGetLength(v53);
        xpc_dictionary_set_data(reply_with_format, "status", BytePtr, Length);
        goto LABEL_404;
      case 0x4BuLL:
        if (!sub_100018260(0x4Bu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v108 = sub_10024F198(v212 + 3);
        if (!v108)
        {
          goto LABEL_408;
        }

        goto LABEL_297;
      case 0x4CuLL:
        if (!sub_100018260(0x4Cu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v109 = v212;
        v110 = &stru_100346BF8;
LABEL_292:
        v28 = sub_1002463E8(v109 + 3, v110);
        goto LABEL_363;
      case 0x4DuLL:
        if (!sub_100018260(0x4Du, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v50 = sub_1000182FC(object, "newPublicBackupKey", v212 + 3);
        if (!v50)
        {
          goto LABEL_408;
        }

        Mutable = v50;
        v51 = sub_10024F510(v50, v212 + 3);
        if (!v51)
        {
          goto LABEL_406;
        }

        v52 = v51;
        v53 = SOSPeerInfoCopyEncodedData();
        CFRelease(v52);
        if (!v53)
        {
          goto LABEL_406;
        }

        v54 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply_with_format, "status", v54);
        xpc_release(v54);
        goto LABEL_404;
      case 0x4EuLL:
        if (!sub_100018260(0x4Eu, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v59 = sub_1000182FC(object, "keybag", v212 + 3);
        v139 = xpc_dictionary_get_BOOL(object, "includeV0");
        if (!v59)
        {
          goto LABEL_372;
        }

        v65 = sub_10024FA1C(v59, v139, v212 + 3);
        goto LABEL_275;
      case 0x4FuLL:
        if (!sub_100018260(0x4Fu, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10024D82C(v212 + 3);
        goto LABEL_363;
      case 0x51uLL:
        if (!sub_100018260(0x51u, cf[0], @"com.apple.private.keychain.circle.join", v212 + 3))
        {
          goto LABEL_408;
        }

        v108 = sub_100251B5C(v212 + 3);
        if (!v108)
        {
          goto LABEL_408;
        }

LABEL_297:
        v145 = v108;
        Mutable = SOSPeerInfoCopyEncodedData();
        CFRelease(v145);
        if (Mutable)
        {
          goto LABEL_298;
        }

        goto LABEL_408;
      case 0x52uLL:
        if (!sub_100018260(0x52u, cf[0], @"com.apple.private.keychain.circle.join", v212 + 3))
        {
          goto LABEL_408;
        }

        v147 = sub_1000802A4(object);
        if (!v147)
        {
          goto LABEL_408;
        }

        Mutable = v147;
        v148 = SOSPeerInfoCreateFromData();
        if (!v148)
        {
          goto LABEL_406;
        }

        v53 = v148;
        v149 = sub_100251F48(v148, v212 + 3);
        if (v149)
        {
          v150 = v149;
          v151 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply_with_format, "status", v151);
          xpc_release(v151);
          CFRelease(v150);
        }

        goto LABEL_404;
      case 0x53uLL:
        if (!sub_100018260(0x53u, cf[0], @"com.apple.private.keychain.circle.join", v212 + 3))
        {
          goto LABEL_408;
        }

        v59 = sub_1000802A4(object);
        v64 = xpc_dictionary_get_uint64(object, "version");
        if (!v59)
        {
          goto LABEL_408;
        }

        v65 = sub_1002532E0(v59, v64, v212 + 3);
LABEL_275:
        xpc_dictionary_set_BOOL(reply_with_format, "status", v65);
        goto LABEL_461;
      case 0x54uLL:
        if (!sub_100018260(0x54u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_100251EBC(v212 + 3);
        goto LABEL_363;
      case 0x55uLL:
        if (!sub_100018260(0x55u, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10024A2B4(v212 + 3);
        goto LABEL_363;
      case 0x57uLL:
        if (!sub_100018260(0x57u, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v37 = sub_1000182FC(object, "RecoveryPublicKey", v212 + 3);
        if (!v37)
        {
          goto LABEL_408;
        }

        Mutable = v37;
        bytes[0] = 0;
        v38 = CFDataCreate(kCFAllocatorDefault, bytes, 1);
        if (CFEqual(Mutable, v38))
        {
          CFRelease(Mutable);
          Mutable = 0;
        }

        if (v38)
        {
          CFRelease(v38);
        }

        v39 = sub_100253D48(Mutable, v212 + 3);
        xpc_dictionary_set_BOOL(reply_with_format, "status", v39);
        goto LABEL_390;
      case 0x58uLL:
        if (!sub_100018260(0x58u, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v49 = SOSCCCopyRecoveryPublicKey();
        if (!v49)
        {
          goto LABEL_408;
        }

        goto LABEL_132;
      case 0x59uLL:
        if (!sub_100018260(0x59u, cf[0], @"com.apple.private.keychain.circle.join", v212 + 3))
        {
          goto LABEL_408;
        }

        v77 = xpc_dictionary_get_uint64(object, "flags");
        v49 = sub_1002522C0(v77, v212 + 3);
        if (!v49)
        {
          goto LABEL_408;
        }

LABEL_132:
        Mutable = v49;
LABEL_298:
        v146 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply_with_format, "status", v146);
        xpc_release(v146);
        goto LABEL_406;
      case 0x5AuLL:
        v43 = xpc_dictionary_get_BOOL(object, "sosCompatibilityMode");
        v28 = sub_10025509C(v43, v212 + 3);
        goto LABEL_363;
      case 0x5BuLL:
        v28 = sub_1002559D0(v212 + 3);
        goto LABEL_363;
      case 0x5CuLL:
        v28 = sub_100255904();
        goto LABEL_363;
      case 0x5DuLL:
        if (!sub_100018260(0x5Du, cf[0], @"keychain-cloud-circle", v212 + 3))
        {
          goto LABEL_408;
        }

        sub_100256058(v212 + 3);
        goto LABEL_351;
      case 0x5EuLL:
        if (v208[1])
        {
          v164 = CFDataGetBytePtr(v208[1]);
          v165 = CFDataGetLength(v208[1]);
          xpc_dictionary_set_data(reply_with_format, "musr", v164, v165);
        }

        xpc_dictionary_set_BOOL(reply_with_format, "system-keychain", v208[0]);
        xpc_dictionary_set_BOOL(reply_with_format, "syncbubble-keychain", SBYTE1(v208[0]));
        xpc_dictionary_set_BOOL(reply_with_format, "network-extension", SBYTE2(v208[0]));
        goto LABEL_351;
      case 0x5FuLL:
        if (!sub_100018260(0x5Fu, cf[0], @"com.apple.private.syncbubble-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v29 = xpc_dictionary_get_int64(object, "uid");
        v30 = sub_10001838C(object, "services", v212 + 3);
        Mutable = v30;
        if (v29 && v30)
        {
          v27 = sub_10018AF48(v30, v29, cf, v212 + 3);
LABEL_345:
          v42 = v27;
LABEL_346:
          v79 = reply_with_format;
LABEL_347:
          xpc_dictionary_set_BOOL(v79, "status", v42);
          goto LABEL_406;
        }

        v62 = reply_with_format;
        v61 = 0;
LABEL_378:
        xpc_dictionary_set_BOOL(v62, "status", v61);
        if (Mutable)
        {
          goto LABEL_406;
        }

        goto LABEL_408;
      case 0x60uLL:
        if (!sub_100018260(0x60u, cf[0], @"com.apple.private.migrate-musr-system-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10018BC38(cf, (v212 + 3));
        goto LABEL_363;
      case 0x61uLL:
        if (!sub_100018260(0x61u, cf[0], @"com.apple.private.migrate-musr-system-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v28 = sub_10018C5F8(cf, (v212 + 3));
        goto LABEL_363;
      case 0x62uLL:
      case 0x88uLL:
        if (!sub_10000606C(0x62uLL, cf[0], v212 + 3) || !sub_100018260(0x62u, cf[0], @"com.apple.private.keychain.allow-update-tokens", v212 + 3))
        {
          goto LABEL_408;
        }

        v21 = sub_1001CDF18(object, "cfstring", v212 + 3);
        v22 = sub_10001838C(object, "cfarray", v212 + 3);
        Mutable = sub_10001838C(object, "query", v212 + 3);
        if (v21)
        {
          v24 = sub_10018680C(v21, v22, Mutable, uint64 == 136, cf, v212 + 3);
          xpc_dictionary_set_BOOL(reply_with_format, "status", v24);
          CFRelease(v21);
        }

        if (!v22)
        {
          goto LABEL_390;
        }

        v25 = v22;
        goto LABEL_389;
      case 0x63uLL:
        if (!sub_100018260(0x63u, cf[0], @"com.apple.private.migrate-musr-system-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        v172 = xpc_dictionary_get_int64(object, "uid");
        if (v172)
        {
          v28 = sub_10018C82C(v172, (v212 + 3));
LABEL_363:
          v167 = v28;
        }

        else
        {
LABEL_376:
          v167 = 0;
        }

        v166 = reply_with_format;
        goto LABEL_365;
      case 0x67uLL:
        if (sub_100018260(0x67u, cf[0], @"com.apple.private.uninstall.deletion", v212 + 3) && (v159 = sub_10001838C(object, "accessGroups", v212 + 3)) != 0)
        {
          v69 = v159;
          v74 = sub_100187344(v159, cf, v212 + 3);
LABEL_467:
          CFRelease(v69);
        }

        else
        {
LABEL_373:
          v74 = 0;
        }

        v166 = reply_with_format;
        v167 = v74;
        goto LABEL_365;
      case 0x68uLL:
        if (!sub_100018260(0x68u, cf[0], @"restore-keychain", v212 + 3))
        {
          goto LABEL_408;
        }

        *bytes = 0;
        v206 = 0;
        v55 = sub_1001CDD0C(object);
        if (v55 == -1)
        {
          goto LABEL_408;
        }

        v56 = v55;
        v57 = sub_10007FCBC(v55, bytes, &v206);
        if (v57)
        {
          v58 = v57;
          v59 = sub_1001891AC(v57, v212 + 3);
          if (v59)
          {
            sub_1001CDB78(reply_with_format, v59, v212 + 3);
          }

          CFRelease(v58);
          close(v56);
          if (*bytes)
          {
            munmap(*bytes, v206);
          }

LABEL_460:
          if (v59)
          {
LABEL_461:
            v125 = v59;
            goto LABEL_407;
          }
        }

        else
        {
          v194 = v56;
LABEL_447:
          close(v194);
LABEL_448:
          if (*bytes)
          {
            munmap(*bytes, v206);
          }
        }

        goto LABEL_408;
      case 0x69uLL:
        v40 = sub_10001838C(object, "cfarray", v212 + 3);
        if (!v40)
        {
          goto LABEL_408;
        }

        Mutable = v40;
        v41 = sub_100253894(v40, v212 + 3);
        if (!v41)
        {
          goto LABEL_406;
        }

        v42 = v41 != kCFBooleanFalse;
        goto LABEL_346;
      case 0x6AuLL:
        if (!sub_100018260(0x6Au, cf[0], @"keychain-sync-updates", v212 + 3))
        {
          goto LABEL_408;
        }

        v76 = sub_1001CDD64(object, "cfset", v212 + 3);
        v101 = sub_1001CDD64(object, "cfset2", v212 + 3);
        Mutable = v101;
        if (v76 && v101)
        {
          v102 = sub_100250494(v76, v101, (v212 + 3));
          if (v102)
          {
            v103 = v102;
            sub_100012F3C(reply_with_format, "status", v102, 0, v212 + 3);
            CFRelease(v103);
          }
        }

        else if (!v76)
        {
          goto LABEL_390;
        }

LABEL_388:
        v25 = v76;
LABEL_389:
        CFRelease(v25);
LABEL_390:
        if (!Mutable)
        {
          goto LABEL_408;
        }

LABEL_406:
        v125 = Mutable;
        goto LABEL_407;
      case 0x6BuLL:
        v26 = sub_100080324(object, v212 + 3);
        if (!v26)
        {
          goto LABEL_408;
        }

        Mutable = v26;
        v27 = sub_100254A2C(v26, v212 + 3);
        goto LABEL_345;
      case 0x6CuLL:
        v163 = sub_100080324(object, v212 + 3);
        if (!v163)
        {
          goto LABEL_408;
        }

        Mutable = v163;
        v27 = sub_100254D98(v163, v212 + 3);
        goto LABEL_345;
      case 0x6DuLL:
        if (!sub_100018260(0x6Du, cf[0], @"com.apple.private.keychain.certificates", v212 + 3))
        {
          goto LABEL_408;
        }

        v173 = sub_1000182FC(object, "normIssuer", v212 + 3);
        v174 = sub_10001838C(object, "accessGroups", v212 + 3);
        v175 = v174;
        if (v173 && v174)
        {
          v176 = sub_100018550(v173, v174, v212 + 3);
        }

        else
        {
          v176 = 0;
          v178 = 0;
          if (!v173)
          {
            goto LABEL_394;
          }
        }

        CFRelease(v173);
        v178 = v176;
LABEL_394:
        if (v175)
        {
          CFRelease(v175);
        }

        if (v178)
        {
          sub_100012F3C(reply_with_format, "status", v178, 0, v212 + 3);
          v125 = v178;
LABEL_407:
          CFRelease(v125);
        }

        goto LABEL_408;
      case 0x6EuLL:
        if (!sub_100018260(0x6Eu, cf[0], @"com.apple.private.keychain.certificates", v212 + 3))
        {
          v177 = 0;
          goto LABEL_386;
        }

        v31 = sub_1000182FC(object, "normIssuer", v212 + 3);
        v32 = sub_1000182FC(object, "serialNum", v212 + 3);
        v33 = sub_10001838C(object, "accessGroups", v212 + 3);
        v34 = v31;
        if (v31 && v32 && v33)
        {
          v35 = v31;
          v36 = sub_10018C9E4(v31, v32, v33, v212 + 3);
          v34 = v35;
        }

        else
        {
          v36 = 0;
          v177 = 0;
          if (!v34)
          {
            goto LABEL_382;
          }
        }

        CFRelease(v34);
        v177 = v36;
LABEL_382:
        if (v32)
        {
          CFRelease(v32);
        }

        if (v33)
        {
          CFRelease(v33);
        }

LABEL_386:
        v166 = reply_with_format;
        v167 = v177;
        goto LABEL_365;
      case 0x6FuLL:
        v44 = cf[0];
        v45 = (v212 + 3);
        v46 = 111;
        goto LABEL_371;
      case 0x70uLL:
        v44 = cf[0];
        v45 = (v212 + 3);
        v46 = 112;
LABEL_371:
        if (sub_100018260(v46, v44, @"com.apple.private.keychain.backuptableops", v45))
        {
          goto LABEL_372;
        }

        goto LABEL_408;
      case 0x72uLL:
        if (!sub_100018260(0x72u, cf[0], @"com.apple.private.keychain.keychaincontrol", v212 + 3))
        {
          goto LABEL_408;
        }

        v161 = sub_1000D3B18();
        if (v161)
        {
          v162 = v161;
          xpc_dictionary_set_value(reply_with_format, "endpoint", v161);
          xpc_dictionary_set_BOOL(reply_with_format, "status", 1);
          xpc_release(v162);
        }

        else
        {
LABEL_372:
          v166 = reply_with_format;
          v167 = 0;
LABEL_365:
          xpc_dictionary_set_BOOL(v166, "status", v167);
        }

LABEL_408:
        if (!v212[3])
        {
          v8 = 0;
          goto LABEL_5;
        }

        if (SecErrorGetOSStatus() == -25300)
        {
          goto LABEL_430;
        }

        v180 = v212[3];
        if (!v180 || CFErrorGetCode(v212[3]) != 2)
        {
          goto LABEL_418;
        }

        Domain = CFErrorGetDomain(v180);
        if (Domain && kSOSErrorDomain)
        {
          if (CFEqual(Domain, kSOSErrorDomain))
          {
            goto LABEL_430;
          }
        }

        else if (Domain == kSOSErrorDomain)
        {
          goto LABEL_430;
        }

LABEL_418:
        v182 = v212[3];
        if (SecErrorGetOSStatus() == -25330)
        {
          v183 = sub_100006274("SecWarning");
          if (!os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_430;
          }

          if (uint64 > 0x88)
          {
            v184 = @"Unknown xpc operation";
          }

          else
          {
            v184 = off_100343FD8[uint64];
          }

          v186 = v212[3];
          *bytes = 138412802;
          *&bytes[4] = cf[0];
          *&bytes[12] = 2112;
          *&bytes[14] = v184;
          *&bytes[22] = 2112;
          *&bytes[24] = v186;
          v187 = "Authentication is needed %@ %@ %@";
        }

        else
        {
          v183 = sub_100006274("SecError");
          if (!os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_430;
          }

          if (uint64 > 0x88)
          {
            v185 = @"Unknown xpc operation";
          }

          else
          {
            v185 = off_100343FD8[uint64];
          }

          v188 = v212[3];
          *bytes = 138412802;
          *&bytes[4] = cf[0];
          *&bytes[12] = 2112;
          *&bytes[14] = v185;
          *&bytes[22] = 2112;
          *&bytes[24] = v188;
          v187 = "%@ %@ %@";
        }

        _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, v187, bytes, 0x20u);
LABEL_430:
        v8 = sub_100010460(v212[3]);
        if (!reply_with_format)
        {
          goto LABEL_5;
        }

        xpc_dictionary_set_value(reply_with_format, "error", v8);
        break;
      case 0x83uLL:
        if (!sub_10000606C(0x83uLL, cf[0], v212 + 3))
        {
          goto LABEL_408;
        }

        if (BYTE1(v210[1]) != 1)
        {
          goto LABEL_408;
        }

        v168 = sub_100006304(object, "query", v212 + 3);
        if (!v168)
        {
          goto LABEL_408;
        }

        v59 = v168;
        v169 = sub_1001CDF18(object, "sharingGroup", v212 + 3);
        if (v169)
        {
          v88 = v169;
          v170 = sub_10018564C(v59, v169, cf, v212 + 3);
          if (v170)
          {
            v171 = v170;
            sub_100012F3C(reply_with_format, "status", v170, 0, v212 + 3);
            CFRelease(v171);
          }

LABEL_358:
          v138 = v88;
LABEL_359:
          CFRelease(v138);
        }

        goto LABEL_461;
      case 0x84uLL:
        if (!sub_10000606C(0x84uLL, cf[0], v212 + 3) || !sub_100018260(0x84u, cf[0], @"com.apple.private.keychain.allow-delete-on-sign-out", v212 + 3) || !sub_100186214(cf, (v212 + 3)))
        {
          goto LABEL_408;
        }

LABEL_351:
        v166 = reply_with_format;
        v167 = 1;
        goto LABEL_365;
      default:
        goto LABEL_408;
    }

LABEL_6:
    xpc_connection_send_message(a1, reply_with_format);
    xpc_release(reply_with_format);
LABEL_7:
    if (v8)
    {
      xpc_release(v8);
    }

    v12 = v212[3];
    if (v12)
    {
      CFRelease(v12);
    }

    if (cf[1])
    {
      CFRelease(cf[1]);
    }

    if (v208[1])
    {
      CFRelease(v208[1]);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v13 = v210[0];
    if (v210[0])
    {
      v210[0] = 0;
      CFRelease(v13);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_29;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  xpc_connection_send_message(a1, reply_with_format);
  xpc_release(reply_with_format);
LABEL_29:
  _Block_object_dispose(&v211, 8);
}

uint64_t sub_1000053B4(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    *(v3 + 20) = a2;
    *(v3 + 24) = 0;
    if (qword_10039DC30 != -1)
    {
      dispatch_once(&qword_10039DC30, &stru_100335288);
    }

    if (byte_10039DC38 == 1)
    {
      *&buf = 0;
      *(v3 + 36) = byte_10039DC38;
      v7 = MKBForegroundUserSessionID();
      *(v3 + 40) = v7;
      if ((v7 + 1) <= 1)
      {
        sub_100089FEC(@"Execution has encountered an unexpected state", 1405091854);
        v7 = 0;
        *(v3 + 40) = 0;
      }

      v8 = *(v3 + 20);
      v9 = sub_100006274("serverxpc");
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v8 < 0x1F6 || v7 == v8)
      {
        if (v10)
        {
          LOWORD(bytes.val[0]) = 0;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "securityd client: active user", &bytes, 2u);
        }

        v12 = *(v3 + 40);
        *bytes.val = 0x104B57A5353A5AA7;
        bytes.val[2] = -1803342146;
        bytes.val[3] = bswap32(v12);
        *(v3 + 24) = CFDataCreate(0, &bytes, 16);
        *(v3 + 20) = *(v3 + 40);
      }

      else
      {
        if (v10)
        {
          LOWORD(bytes.val[0]) = 0;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "securityd client: sync bubble user", &bytes, 2u);
        }

        v11 = *(v3 + 20);
        *bytes.val = 0x114EC8A39FAB1A82;
        bytes.val[2] = -397635414;
        bytes.val[3] = bswap32(v11);
        *(v3 + 24) = CFDataCreate(0, &bytes, 16);
      }

      *(v3 + 32) = dword_10039E2F8;
    }

    else
    {
      sub_100005D7C(v3);
    }

    v13 = a3[1];
    *bytes.val = *a3;
    *&bytes.val[4] = v13;
    v14 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &bytes);
    *v3 = v14;
    v15 = sub_1000061AC(v14, @"com.apple.developer.on-demand-install-capable");
    v16 = sub_100006108(v14, @"keychain-access-groups");
    v17 = sub_100006108(v14, @"com.apple.security.application-groups");
    v18 = sub_10000621C(v14);
    v19 = sub_100006108(v14, @"com.apple.developer.associated-application-identifier");
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (v16)
    {
      v58.length = CFArrayGetCount(v16);
      v58.location = 0;
      CFArrayAppendArray(Mutable, v16, v58);
    }

    if (v19)
    {
      v59.length = CFArrayGetCount(v19);
      v59.location = 0;
      CFArrayAppendArray(Mutable, v19, v59);
    }

    if (v18)
    {
      CFArrayAppendValue(Mutable, v18);
    }

    if (v17)
    {
      if (v15)
      {
        v21 = sub_100006274("entitlements");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          bytes.val[0] = 138412290;
          *&bytes.val[1] = @"com.apple.security.application-groups";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because client is API-restricted", &bytes, 0xCu);
        }
      }

      else
      {
        v60.length = CFArrayGetCount(v17);
        v60.location = 0;
        CFArrayAppendArray(Mutable, v17, v60);
      }
    }

    v55.length = CFArrayGetCount(Mutable);
    v55.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v55, kSecAttrAccessGroupToken);
    if (FirstIndexOfValue != -1)
    {
      v23 = FirstIndexOfValue;
      if (!_os_feature_enabled_impl())
      {
        v34 = sub_100006274("SecWarning");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(bytes.val[0]) = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Keychain access group com.apple.token ignored, feature not available", &bytes, 2u);
        }

        CFArrayRemoveValueAtIndex(Mutable, v23);
        if (!v19)
        {
LABEL_33:
          if (v18)
          {
            CFRelease(v18);
          }

          if (v16)
          {
            CFRelease(v16);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          *(v3 + 8) = Mutable;
          *(v3 + 48) = sub_10000621C(*v3);
          v24 = sub_1000061AC(*v3, @"com.apple.developer.on-demand-install-capable");
          *(v3 + 44) = v24;
          if (v24)
          {
            v25 = sub_100006274("serverxpc");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(bytes.val[0]) = 0;
              _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "securityd client: app clip (API restricted)", &bytes, 2u);
            }
          }

          *(v3 + 57) = sub_1000061AC(*v3, @"com.apple.private.keychain.kcsharing.client");
          *(v3 + 16) = sub_1000061AC(*v3, @"com.apple.private.system-keychain");
          *(v3 + 18) = sub_1000061AC(*v3, @"com.apple.developer.networking.networkextension");
          *(v3 + 19) = sub_1000061AC(*v3, @"com.apple.networkextension.keychain");
          if (*(v3 + 36) == 1)
          {
            *(v3 + 17) = sub_1000061AC(*v3, @"com.apple.private.syncbubble-keychain");
          }

          v26 = *(v3 + 8);
          if (!v26)
          {
            goto LABEL_91;
          }

          v56.length = CFArrayGetCount(v26);
          v56.location = 0;
          if (!CFArrayContainsValue(*(v3 + 8), v56, @"*"))
          {
            goto LABEL_91;
          }

          v27 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (SecIsInternalRelease())
          {
            CFArrayAppendValue(v27, @"com.apple.security-cli");
          }

          v28 = *v3;
          if (*v3)
          {
            CodeSignStatus = SecTaskGetCodeSignStatus(*v3);
            if ((CodeSignStatus & 0xC000001) == 0x4000001)
            {
LABEL_51:
              v30 = SecTaskCopySigningIdentifier(v28, 0);
              v31 = v30;
              if (!v27)
              {
                v43 = sub_100006274("serverxpc");
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v31;
                  _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Client %@ is valid platform binary", &buf, 0xCu);
                }

                if (v31)
                {
                  CFRelease(v31);
                }

                goto LABEL_91;
              }

              if (v30)
              {
                *&buf = 0;
                *(&buf + 1) = &buf;
                v53 = 0x2020000000;
                v54 = 0;
                *bytes.val = _NSConcreteStackBlock;
                *&bytes.val[2] = 3221225472;
                *&bytes.val[4] = sub_100080C6C;
                *&bytes.val[6] = &unk_1003462B0;
                p_buf = &buf;
                v51 = v30;
                v32 = &bytes;
                v57.length = CFArrayGetCount(v27);
                v57.location = 0;
                CFArrayApplyFunction(v27, v57, sub_100080CB0, v32);

                if (*(*(&buf + 1) + 24) == 1)
                {
                  v33 = sub_100006274("serverxpc");
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                  {
                    v47 = 138412290;
                    v48 = v31;
                    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "client %@ is eligible platform binary", &v47, 0xCu);
                  }
                }

                else
                {
                  v33 = sub_100006274("SecError");
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    v47 = 138412290;
                    v48 = v31;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "serverxpc: client %@ is not eligible", &v47, 0xCu);
                  }
                }

                CFRelease(v31);
                v45 = *(*(&buf + 1) + 24);
                _Block_object_dispose(&buf, 8);
                CFRelease(v27);
                if (v45)
                {
LABEL_91:
                  v3 = 1;
LABEL_92:
                  objc_autoreleasePoolPop(v6);
                  return v3;
                }

LABEL_72:
                v39 = *v3;
                if (*v3)
                {
                  *v3 = 0;
                  CFRelease(v39);
                }

                v40 = *(v3 + 8);
                if (v40)
                {
                  *(v3 + 8) = 0;
                  CFRelease(v40);
                }

                v41 = *(v3 + 24);
                if (v41)
                {
                  *(v3 + 24) = 0;
                  CFRelease(v41);
                }

                v42 = *(v3 + 48);
                if (v42)
                {
                  *(v3 + 48) = 0;
                  CFRelease(v42);
                }

                v3 = 0;
                goto LABEL_92;
              }

              v44 = sub_100006274("SecError");
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "serverxpc: client has no codesign identifier", &buf, 2u);
              }

LABEL_71:
              CFRelease(v27);
              goto LABEL_72;
            }

            if (SecIsInternalRelease())
            {
              if ((CodeSignStatus & 0x1C000000) == 0x14000000)
              {
                goto LABEL_51;
              }

              v35 = sub_100006274("SecError");
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
LABEL_70:

                if (!v27)
                {
                  goto LABEL_72;
                }

                goto LABEL_71;
              }

              LODWORD(buf) = 67109120;
              DWORD1(buf) = CodeSignStatus;
              v36 = "serverxpc: client is not a platform binary: 0x%08x";
            }

            else
            {
              v35 = sub_100006274("SecError");
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_70;
              }

              LODWORD(buf) = 67109120;
              DWORD1(buf) = CodeSignStatus;
              v36 = "serverxpc: client is not a platform binary: 0x%08x";
            }

            v37 = v35;
            v38 = 8;
          }

          else
          {
            v35 = sub_100006274("SecError");
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_70;
            }

            LOWORD(buf) = 0;
            v36 = "serverxpc: Client task is null, cannot verify platformness";
            v37 = v35;
            v38 = 2;
          }

          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, &buf, v38);
          goto LABEL_70;
        }

LABEL_32:
        CFRelease(v19);
        goto LABEL_33;
      }

      CFArrayRemoveValueAtIndex(Mutable, v23);
      CFArrayAppendValue(Mutable, kSecAttrAccessGroupToken);
    }

    if (!v19)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  return v3;
}

void sub_100005D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005D7C(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if ((*(a1 + 56) & 1) == 0)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        *(a1 + 24) = 0;
        CFRelease(v3);
      }
    }

    v4 = +[UMUserManager sharedManager];
    v5 = [v4 currentPersona];

    if (v5 && [v5 userPersonaType] == 2)
    {
      v6 = sub_100006274("serverxpc");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v5 userPersonaNickName];
        *buf = 134218242;
        v18 = a1;
        v19 = 2112;
        v20 = v15;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "securityd client(%p): persona user %@", buf, 0x16u);
      }

      v7 = sub_100006274("serverxpc");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v5 userPersonaUniqueString];
        *buf = 134218242;
        v18 = a1;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "securityd client(%p): persona uuid %@", buf, 0x16u);
      }

      v9 = [v5 userPersonaUniqueString];
      v10 = uuid_parse([v9 UTF8String], &v16);

      if (v10)
      {
        v11 = sub_100006274("serverxpc");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v5 userPersonaUniqueString];
          *buf = 134218242;
          v18 = a1;
          v19 = 2112;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "securityd client(%p):  uuid %@ didn't parse setting to null", buf, 0x16u);
        }

        v13 = 0;
        *(a1 + 24) = 0;
        goto LABEL_18;
      }

      *(a1 + 24) = CFDataCreate(0, &v16, 16);
    }

    v13 = 1;
LABEL_18:

    objc_autoreleasePoolPop(v2);
    return v13;
  }

  return 0;
}

const void *sub_100006018(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

BOOL sub_10000606C(unint64_t a1, __SecTask *a2, __CFString **a3)
{
  v6 = sub_1000061AC(a2, @"com.apple.private.keychain.deny");
  if (v6)
  {
    if (a1 > 0x88)
    {
      v7 = @"Unknown xpc operation";
    }

    else
    {
      v7 = off_100343FD8[a1];
    }

    sub_1000103CC(-25291, a3, @"%@: %@ has entitlement %@", v7, a2, @"com.apple.private.keychain.deny");
  }

  return !v6;
}

const void *sub_100006108(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
LABEL_8:
      CFRelease(v3);
      return 0;
    }

    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != CFStringGetTypeID())
        {
          break;
        }

        if (v6 == ++v7)
        {
          return v3;
        }
      }

      goto LABEL_8;
    }
  }

  return v3;
}

BOOL sub_1000061AC(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  TypeID = CFBooleanGetTypeID();
  v5 = TypeID == CFGetTypeID(v3) && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

const void *sub_10000621C(__SecTask *a1)
{
  result = sub_100006018(a1, @"application-identifier");
  if (!result)
  {

    return sub_100006018(a1, @"com.apple.application-identifier");
  }

  return result;
}

const void *sub_100006274(const char *a1)
{
  pthread_mutex_lock(&stru_10039BE00);
  pthread_mutex_unlock(&stru_10039BE00);
  if (a1)
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    v3 = sub_100006610(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    return v3;
  }

  else
  {

    return sub_100006610(0);
  }
}

const void *sub_100006304(void *a1, const char *a2, __CFString **a3)
{
  v5 = sub_10000674C(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFDictionaryGetTypeID())
    {
      v8 = CFCopyTypeIDDescription(v7);
      sub_1000103CC(-50, a3, @"object for key %s not dictionary but %@", a2, v8);
      if (v8)
      {
        CFRelease(v8);
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

BOOL sub_10000639C(const __CFDictionary *a1, uint64_t a2, __CFString **a3)
{
  if (!CFDictionaryContainsKey(a1, @"clip"))
  {
    if (CFDictionaryContainsKey(a1, kSecAttrSharingGroup))
    {
      if (sub_100185414(a1))
      {
        v6 = @"Can't query the synced keychain with a sharing group";
        goto LABEL_3;
      }

      if (a2 == 2)
      {
        v6 = @"Can't update an item's sharing group";
        goto LABEL_3;
      }
    }

    return 1;
  }

  v6 = @"Non-API attributes present in query";
LABEL_3:

  return sub_1000103CC(-50, a3, v6);
}

uint64_t sub_100006454(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, __CFString **a5)
{
  Value = CFDictionaryGetValue(a1, kSecClass);
  if (Value && (v11 = Value, v12 = CFGetTypeID(Value), v12 == CFStringGetTypeID()))
  {
    v15 = sub_1000074BC(v11);
    if (v15)
    {
      goto LABEL_10;
    }

    sub_1000103CC(-25306, a5, @"can't find class named: %@", v11);
  }

  else
  {
    v13 = CFDictionaryGetValue(a1, kSecValuePersistentRef);
    if (v13)
    {
      v14 = CFGetTypeID(v13);
      if (v14 == CFDataGetTypeID())
      {
        _SecItemParsePersistentRef();
      }
    }

    sub_1000103CC(-50, a5, @"query missing class name");
  }

  v15 = 0;
LABEL_10:
  v16 = sub_100007698(v15, a2, a1, a4, a5);
  v17 = v16;
  if (v16)
  {
    v16[13] = a3;
    CFDictionaryApplyFunction(a1, sub_100007034, v16);
    if (sub_100009B80(v17, a5))
    {
      if ((*(v17 + 112) & 1) == 0 && !*(v17 + 72) && !*(v17 + 80) && !*(v17 + 240))
      {
        sub_1000079A0(kSecAttrSynchronizable, kCFBooleanFalse, v17);
      }
    }

    else
    {
      sub_10000DF70(v17, a5);
      return 0;
    }
  }

  return v17;
}

const void *sub_100006610(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = qword_10039DC60;
  if (!qword_10039DC60)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    qword_10039DC60 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_1000859CC;
    v5[3] = &unk_100335540;
    v5[4] = v1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1000105E8;
    v6[3] = &unk_100335678;
    v6[4] = v5;
    sub_100008380(v1, v6);
    Value = CFDictionaryGetValue(qword_10039DC60, v1);
  }

  os_unfair_lock_unlock(&unk_10039DC58);
  return Value;
}

CFTypeRef sub_10000674C(void *a1, const char *a2, __CFString **a3)
{
  length = 0;
  cf = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    v6 = data;
    v7 = data + length;
    v8 = SecCFAllocatorZeroize();
    if (sub_1000068E0(v8, &cf, a3, v6, v7) == v7)
    {
      v12 = cf;
    }

    else
    {
      v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"trailing garbage after der decoded object for key %s", a2);
      sub_1000103CC(-50, a3, @"%@", v9);
      if (a3)
      {
        v10 = sub_100006274("SecError");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *a3;
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "xpc: %@", buf, 0xCu);
        }
      }

      sub_100089FEC(v9, 1405091842);
      if (v9)
      {
        CFRelease(v9);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v12 = 0;
    }

    cc_clear();
  }

  else
  {
    sub_1000103CC(-50, a3, @"no object for key %s", a2);
    return 0;
  }

  return v12;
}

uint64_t sub_1000068E0(int a1, int a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (ccder_decode_tag())
    {
      sub_1000111B4(-2, @"com.apple.security.cfder.error", 0, a3, v6, @"Unsupported DER Type", 0xAAAAAAAAAAAAAAAALL);
    }

    else
    {
      sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, v6, @"invalid tag", 0xAAAAAAAAAAAAAAAALL);
    }
  }

  else
  {
    sub_1000111B4(-6, @"com.apple.security.cfder.error", 0, a3, a5, @"null input");
  }

  return 0;
}

uint64_t sub_100006D24(const __CFAllocator *a1, void *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9 = ccder_decode_constructed_tl();
    if (v9)
    {
      Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      else
      {
        sub_1000111B4(-3, @"com.apple.security.cfder.error", 0, a3, v10, @"Failed to create dictionary");
        v9 = 0;
        *a2 = 0;
      }
    }

    else
    {
      sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, v8, @"Unknown data encoding, expected CCDER_CONSTRUCTED_SET");
    }
  }

  else
  {
    sub_1000111B4(-6, @"com.apple.security.cfder.error", 0, a3, a5, @"null input");
    return 0;
  }

  return v9;
}

const UInt8 *sub_100006F3C(const __CFAllocator *a1, CFStringRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9 = ccder_decode_tl();
    if (v9 && (v11 = v9, a5 - v9 >= 0))
    {
      v13 = CFStringCreateWithBytes(a1, v9, 0, 0x8000100u, 0);
      *a2 = v13;
      if (v13)
      {
        return v11;
      }

      sub_1000111B4(-3, @"com.apple.security.cfder.error", 0, a3, v14, @"String allocation failed");
    }

    else
    {
      sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, v10, @"Unknown string encoding");
    }
  }

  else
  {
    sub_1000111B4(-6, @"com.apple.security.cfder.error", 0, a3, a5, @"null input");
  }

  return 0;
}

void sub_100007034(const __CFString *cf, const __CFBoolean *a2, uint64_t a3)
{
  v3 = (a3 + 40);
  if (*(a3 + 40))
  {
    return;
  }

  if (!cf)
  {

    sub_1000103CC(-50, v3, @"applier: NULL key");
    return;
  }

  if (!a2)
  {
    sub_1000103CC(-50, v3, @"applier: key %@ has NULL value", cf);
    return;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFStringGetTypeID())
  {
    if (v7 != CFNumberGetTypeID())
    {
      sub_1000103CC(-50, v3, @"applier: key %@ neither string nor number", cf);
      return;
    }

    goto LABEL_20;
  }

  Length = CFStringGetLength(cf);
  if (Length == 4)
  {
LABEL_20:

    sub_1000079A0(cf, a2, a3);
    return;
  }

  if (Length < 2)
  {
    sub_1000103CC(-50, v3, @"applier: key %@ invalid length", cf);
    return;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(cf, 0);
  if (CharacterAtIndex > 113)
  {
    switch(CharacterAtIndex)
    {
      case 'r':

        sub_100008248(cf, a2, a3);
        break;
      case 'u':

        sub_1000111E4(cf, a2, a3);
        break;
      case 'v':

        sub_100019C0C(cf, a2, a3);
        break;
      default:
        goto LABEL_37;
    }
  }

  else
  {
    if (CharacterAtIndex != 99)
    {
      if (CharacterAtIndex == 102)
      {
        return;
      }

      if (CharacterAtIndex == 109)
      {

        sub_10000B218(cf, a2, a3);
        return;
      }

LABEL_37:
      sub_1000103CC(-50, v3, @"applier: key %@ invalid", cf);
      return;
    }

    sub_100008604(cf, a2, a3);
  }
}

uint64_t sub_1000072C4(uint64_t a1, CFTypeRef *a2)
{
  ccder_decode_tl();
  sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a2, v3, @"Unknown BOOLean encoding");
  return 0;
}

CFTypeRef *sub_100007370(__CFString **a1, const void *a2, __CFString **a3)
{
  while (a1 == &off_10033DFA8)
  {
    v5 = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
    v6 = sub_100007370(v5, a2, 0);
    if (v6)
    {
      return v6;
    }

    a1 = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v7 = CFGetTypeID(a2);
  if (v7 != CFStringGetTypeID())
  {
    goto LABEL_11;
  }

  v8 = a1[2];
  if (!v8)
  {
LABEL_10:
    if (CFEqual(kSecUseDataProtectionKeychain, a2))
    {
      return 0;
    }

LABEL_11:
    sub_1000103CC(-25303, a3, @"attribute %@ not found in class %@", a2, *a1);
    return 0;
  }

  v9 = (a1 + 3);
  while (!CFEqual(*v8, a2))
  {
    v10 = *v9++;
    v8 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  return v8;
}

__CFString **sub_1000074BC(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  if (CFEqual(a1, kSecClassGenericPassword))
  {
    v3 = @"genp";
    v4 = &unk_10039E090;
    v5 = &unk_10039E088;
  }

  else if (CFEqual(a1, kSecClassInternetPassword))
  {
    v3 = @"inet";
    v4 = &unk_10039E0A0;
    v5 = &unk_10039E098;
  }

  else if (CFEqual(a1, kSecClassCertificate))
  {
    v3 = @"cert";
    v4 = &qword_10039E0B0;
    v5 = &unk_10039E0A8;
  }

  else
  {
    if (!CFEqual(a1, kSecClassKey))
    {
      if (CFEqual(a1, kSecClassIdentity))
      {
        return &off_10033DFA8;
      }

      else
      {
        return 0;
      }
    }

    v3 = @"keys";
    v4 = &qword_10039E0C0;
    v5 = &unk_10039E0B8;
  }

  return sub_100007604(v3, v4, v5);
}

uint64_t sub_100007604(uint64_t a1, dispatch_once_t *predicate, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10017E368;
  v5[3] = &unk_100342078;
  v5[4] = a3;
  v5[5] = a1;
  if (*predicate != -1)
  {
    dispatch_once(predicate, v5);
  }

  return *a3;
}

void *sub_100007698(uint64_t a1, const void *a2, CFDictionaryRef theDict, uint64_t a4, __CFString **a5)
{
  if (!a1)
  {
    if (a5 && !*a5)
    {
      sub_1000103CC(-50, a5, @"Missing class");
    }

    return 0;
  }

  v8 = a2;
  if (!a2)
  {
    if (qword_10039DFD8 != -1)
    {
      dispatch_once(&qword_10039DFD8, &stru_100338EF0);
    }

    v8 = qword_10039DFE0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v10 = 0;
    ;
  }

  if (!v10)
  {
LABEL_10:
    v12 = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
    if (*(v12 + 16))
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
      }

      while (*(v12 + 24 + 8 * v13++));
    }

    else
    {
      v14 = 0;
    }

    v16 = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
    if (*(v16 + 16))
    {
      v17 = 0;
      do
      {
        v18 = v17 + 1;
      }

      while (*(v16 + 24 + 8 * v17++));
    }

    else
    {
      v18 = 0;
    }

    v10 = v18 + v14;
  }

  if (theDict)
  {
    v10 += CFDictionaryGetCount(theDict);
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (a1 + 24);
      do
      {
        v10 -= CFDictionaryContainsKey(theDict, *v20) != 0;
        v22 = *v21++;
        v20 = v22;
      }

      while (v22);
    }
  }

  if (v10 >= 129)
  {
    if (a5 && !*a5)
    {
      v23 = sub_100006274("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 134218240;
        v29 = v10;
        v30 = 1024;
        v31 = 128;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "key_count: %ld, QUERY_KEY_LIMIT: %d", &v28, 0x12u);
      }

      sub_1000103CC(-50, a5, @"Past query key limit");
    }

    return 0;
  }

  v26 = malloc_type_calloc(1uLL, 16 * v10 + 264, 0x10E0040DE1CE4F2uLL);
  if (!v26)
  {
    if (a5 && !*a5)
    {
      sub_1000103CC(-108, a5, @"Out of memory");
    }

    return 0;
  }

  v24 = v26;
  v26[32] = v10;
  v26[16] = CFRetain(v8);
  *(v24 + 155) = 0;
  *(v24 + 30) = dword_10039E2F8;
  *v24 = a1;
  v24[2] = v10;
  v24[3] = v10;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v24[1] = Mutable;
  if (a4)
  {
    if (*(a4 + 44) == 1)
    {
      CFDictionaryAddValue(Mutable, @"clip", kCFBooleanTrue);
    }

    *(v24 + 116) = *(a4 + 57) ^ 1;
  }

  return v24;
}

void sub_1000079A0(const void *a1, const __CFBoolean *a2, uint64_t a3)
{
  if (CFEqual(a1, kSecAttrDeriveSyncIDFromItemAttributes))
  {
    *(a3 + 155) = CFBooleanGetValue(a2) != 0;
  }

  else if (CFEqual(a1, @"persistref"))
  {
    if (a2)
    {
      CFRetain(a2);
    }

    *(a3 + 80) = a2;
  }

  else
  {
    v6 = sub_100007370(*a3, a1, (a3 + 40));
    if (v6)
    {
      v7 = v6;
      sub_100008D78(v6, a2, a3);
      v8 = *(v7 + 2);
      if (v8 == 15)
      {
        if (CFDictionaryGetValue(*(a3 + 8), *v7))
        {
          v9 = SecAccessControlCreateFromData();
          if (v9)
          {
            v10 = v9;
            sub_10000BA2C(a3, v9);
            CFRelease(v10);
          }
        }

        v8 = *(v7 + 2);
      }

      if (v8 == 14)
      {
        v11 = SecAccessControlCreate();
        if (v11)
        {
          v12 = v11;
          if (CFDictionaryGetValue(*(a3 + 8), *v7) && SecAccessControlSetProtection())
          {
            sub_10000BA2C(a3, v12);
          }

          CFRelease(v12);
        }
      }
    }
  }
}

BOOL sub_100007B14(const __CFDictionary *a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  if (!sub_10000639C(a1, 1, a4))
  {
    return 0;
  }

  v8 = *(a3 + 8);
  if (!v8)
  {
    return sub_1000103CC(-34018, a4, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  CFRetain(*(a3 + 8));
  Count = CFArrayGetCount(v8);
  if (!Count)
  {
    CFRelease(v8);
    return sub_1000103CC(-34018, a4, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v10 = Count;
  kdebug_trace();
  if (*(a3 + 19) == 1)
  {
    theData = 0;
    v41 = 0;
    v39 = 0;
    if (CFDictionaryGetValue(a1, kSecValuePersistentRef))
    {
      if (_SecItemParsePersistentRef())
      {
        v44 = 0;
        v45 = &v44;
        v46 = 0x2000000000;
        v47 = 0;
        v42[0] = 0;
        v42[1] = v42;
        v42[2] = 0x2000000000;
        v43 = 0;
        values = _NSConcreteStackBlock;
        v49 = 0x40000000;
        v50 = sub_100184E08;
        v51 = &unk_100343170;
        v54 = v41;
        v55 = v39;
        v52 = v42;
        v53 = &v44;
        v12 = sub_100008A70(0, 1, 0, &v43, &values);
        v13 = v45[3];
        if ((v12 & 1) == 0 && v13)
        {
          v45[3] = 0;
          CFRelease(v13);
          v13 = 0;
        }

        _Block_object_dispose(v42, 8);
        _Block_object_dispose(&v44, 8);
        if (v13)
        {
          if (CFStringHasSuffix(v13, kSecNetworkExtensionAccessGroupSuffix))
          {
            v56.location = 0;
            v56.length = v10;
            if (!CFArrayContainsValue(v8, v56, v13))
            {
              MutableCopy = CFArrayCreateMutableCopy(0, 0, v8);
              CFArrayAppendValue(MutableCopy, v13);
              CFRelease(v8);
              v8 = MutableCopy;
            }
          }

          CFRelease(v13);
        }
      }

      v15 = theData;
      if (theData)
      {
        theData = 0;
        CFRelease(v15);
      }
    }
  }

  v57.location = 0;
  v57.length = v10;
  if (CFArrayContainsValue(v8, v57, @"*") && v8)
  {
    CFRelease(v8);
    v8 = 0;
  }

  v16 = sub_100006454(a1, *(a3 + 24), 1, a3, a4);
  if (!v16)
  {
    v24 = 0;
    if (!v8)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v17 = v16;
  Value = CFDictionaryGetValue(*(v16 + 8), kSecAttrAccessGroup);
  if (!Value)
  {
LABEL_29:
    v20 = *(v17 + 196);
    v21 = *(a3 + 36);
    if (v20)
    {
      if (*(a3 + 36))
      {
        v22 = *(v17 + 128);
        if (v22)
        {
          *(v17 + 128) = 0;
          CFRelease(v22);
          v20 = *(v17 + 196);
        }

        values = 0x114EC8A39FAB1A82;
        LODWORD(v49) = -397635414;
        v23 = bswap32(v20);
LABEL_45:
        HIDWORD(v49) = v23;
        v27 = CFDataCreate(0, &values, 16);
LABEL_53:
        *(v17 + 128) = v27;
        goto LABEL_54;
      }
    }

    else if (*(a3 + 36))
    {
      if (*(a3 + 18) == 1)
      {
        v25 = *(v17 + 128);
        if (v25)
        {
          *(v17 + 128) = 0;
          CFRelease(v25);
        }

        v26 = *(a3 + 20);
        values = 0x9A460A992EBEC436;
        v23 = bswap32(v26);
        LODWORD(v49) = -1542878804;
        goto LABEL_45;
      }

      v28 = (v17 + 192);
      v29 = *(v17 + 192);
      if (v29 == 1)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v28 = (v17 + 192);
    v29 = *(v17 + 192);
    if (v29 == 1)
    {
LABEL_48:
      *v28 = 0;
LABEL_54:
      sub_100009B34(v17, v8);
      if (*(a3 + 44) == 1 && (sub_100184F24(a3) & 1) == 0)
      {
        v33 = sub_1000103CC(-34020, a4, @"App clips are not permitted to use access groups other than application identifier");
      }

      else
      {
        if (*(v17 + 192))
        {
          if ((*(a3 + 16) & 1) == 0)
          {
            v31 = @"client doesn't have entitlement for system keychain";
            goto LABEL_69;
          }

          if (*(v17 + 196))
          {
            if (*(a3 + 17))
            {
              v31 = @"can't do both system and syncbubble keychain";
LABEL_69:
              v32 = -34018;
              goto LABEL_70;
            }

LABEL_68:
            v31 = @"client doesn't have entitlement for syncbubble keychain";
            goto LABEL_69;
          }
        }

        else if (*(v17 + 196) && (*(a3 + 17) & 1) == 0)
        {
          goto LABEL_68;
        }

        if (*(v17 + 88))
        {
          v31 = @"use item list unsupported";
LABEL_65:
          v32 = -50;
LABEL_70:
          v33 = sub_1000103CC(v32, a4, v31);
          goto LABEL_71;
        }

        if (*(v17 + 176))
        {
          v35 = *v17;
          if (v35 != sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8) && *v17 != &off_10033DFA8)
          {
            v31 = @"unsupported match attribute";
LABEL_87:
            v32 = -4;
            goto LABEL_70;
          }
        }

        if (*(v17 + 248))
        {
          v36 = *v17;
          if (v36 != sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098))
          {
            v31 = @"unsupported kSecMatchHostOrSubdomainOfHost attribute";
            goto LABEL_87;
          }
        }

        if (*(v17 + 208))
        {
          v37 = *v17;
          if (v37 != sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8) && *v17 != &off_10033DFA8)
          {
            v31 = @"unsupported kSecMatchPolicy attribute";
            goto LABEL_87;
          }
        }

        if (!a2 && *(v17 + 48))
        {
          v31 = @"missing pointer";
          goto LABEL_65;
        }

        if (*(v17 + 116) == 1 && CFDictionaryContainsKey(*(v17 + 8), kSecAttrSharingGroup))
        {
          v31 = @"can't copy shared items without Keychain Sharing client entitlement";
          goto LABEL_69;
        }

        if (*(v17 + 40))
        {
          v34 = 0;
LABEL_72:
          v24 = sub_10000DF70(v17, a4) & v34;
          if (!v8)
          {
LABEL_74:
            kdebug_trace();
            return v24;
          }

LABEL_73:
          CFRelease(v8);
          goto LABEL_74;
        }

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 0x40000000;
        v38[2] = sub_10000AA38;
        v38[3] = &unk_100342630;
        v38[4] = v17;
        v38[5] = a2;
        v38[6] = v8;
        v38[7] = a4;
        v33 = sub_100008A70(0, 1, 0, a4, v38);
      }

LABEL_71:
      v34 = v33;
      goto LABEL_72;
    }

LABEL_47:
    if (v29 != 2)
    {
      goto LABEL_48;
    }

LABEL_50:
    v30 = *(v17 + 128);
    if (v30)
    {
      *(v17 + 128) = 0;
      CFRelease(v30);
    }

    v27 = CFDataCreateWithBytesNoCopy(0, byte_100294A38, 16, kCFAllocatorNull);
    goto LABEL_53;
  }

  v19 = Value;
  if (sub_1000091A8(v8, Value, a3))
  {
    values = v19;
    if (v8)
    {
      CFRelease(v8);
    }

    v8 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
    goto LABEL_29;
  }

  sub_1000103CC(-34018, a4, @"Client explicitly specifies access group %@ but is only entitled for %@", v19, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  sub_10000DF70(v17, 0);
  return 0;
}

uint64_t sub_100008248(const void *a1, CFTypeRef cf, uint64_t a3)
{
  v6 = CFGetTypeID(cf);
  if (v6 != CFBooleanGetTypeID())
  {
    return sub_1000103CC(-50, (a3 + 40), @"add_return: value %@ is not CFBoolean", cf);
  }

  v7 = CFEqual(cf, kCFBooleanTrue);
  result = CFEqual(a1, kSecReturnData);
  if (result)
  {
    v9 = 1;
  }

  else
  {
    result = CFEqual(a1, kSecReturnAttributes);
    if (result)
    {
      v9 = 2;
    }

    else
    {
      result = CFEqual(a1, kSecReturnRef);
      if (result)
      {
        v9 = 4;
      }

      else
      {
        result = CFEqual(a1, kSecReturnPersistentRef);
        if (!result)
        {
          return sub_1000103CC(-50, (a3 + 40), @"add_return: unknown key %@", a1);
        }

        v9 = 8;
      }
    }
  }

  v10 = *(a3 + 48);
  if ((v10 & v9) != 0 && !v7)
  {
    v11 = v10 ^ v9;
LABEL_17:
    *(a3 + 48) = v11;
    return result;
  }

  if ((v10 & v9) == 0 && v7)
  {
    v11 = v10 | v9;
    goto LABEL_17;
  }

  return result;
}

void sub_100008380(const __CFString *a1, uint64_t a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = strlen(CStringPtr);
    v7 = *(a2 + 16);

    v7(a2, v5, v6);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(a1);
    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_10000B9AC;
    v9[3] = &unk_100335650;
    v9[6] = 0;
    v9[7] = Length;
    v9[8] = usedBufLen;
    v9[4] = a2;
    v9[5] = a1;
    sub_10000B824(usedBufLen + 1, v9);
  }
}

CFStringRef sub_1000084A4(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {

    return CFStringCreateCopy(0, a1);
  }

  else if (v2 == CFDataGetTypeID())
  {

    return CFStringCreateFromExternalRepresentation(0, a1, 0x8000100u);
  }

  else if (v2 == CFUUIDGetTypeID())
  {

    return CFUUIDCreateString(0, a1);
  }

  else
  {
    return 0;
  }
}

void sub_100008568(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100002598;
    handler[3] = &unk_1003350A8;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

void *sub_100008604(const void *a1, const void *a2, uint64_t a3)
{
  if (!CFEqual(a1, kSecClass))
  {
    return sub_1000103CC(-50, (a3 + 40), @"add_class: key %@ is not %@", a1, kSecClass);
  }

  return sub_10000927C(a3, a2, (a3 + 40));
}

uint64_t sub_10000869C(uint64_t a1)
{
  if (qword_10039E188 != -1)
  {
    dispatch_once(&qword_10039E188, &stru_100343020);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100009E74;
  block[3] = &unk_100343080;
  block[4] = a1;
  dispatch_sync(qword_10039E190, block);
  return qword_10039E170;
}

BOOL sub_10000874C(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  CFRetain(a1);
  if (byte_10039DD30 == 1)
  {
    if (a2)
    {
      if (dispatch_semaphore_wait(*(a1 + 120), 0))
      {
        v8 = sub_100087F68(1);
        dispatch_semaphore_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
LABEL_9:
        sub_100088154(v8);
        goto LABEL_13;
      }

      v9 = 1;
    }

    else
    {
      v9 = pthread_mutex_trylock((a1 + 56));
      if (v9)
      {
        v8 = sub_100087F68(0);
        pthread_mutex_lock((a1 + 56));
        goto LABEL_9;
      }
    }

    sub_1000882F4(v9);
    goto LABEL_13;
  }

  if (a2)
  {
    dispatch_semaphore_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    pthread_mutex_lock((a1 + 56));
  }

LABEL_13:
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 0x40000000;
  v25 = sub_10000A404;
  v26 = &unk_1003359A0;
  v27 = &v37;
  v28 = a3;
  v10 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100009324;
  block[3] = &unk_1003359C8;
  block[8] = a1;
  block[9] = a3;
  block[10] = a4;
  v23 = a2;
  block[6] = &v29;
  block[7] = &v37;
  block[4] = v24;
  block[5] = &v33;
  dispatch_sync(v10, block);
  v11 = v38;
  if (*(v34 + 24) == 1 && !v38[3])
  {
    v21 = 0;
    v12 = sub_100086DDC(a1, a2);
    v13 = (v25)(v24, v12);
    v11 = v38;
    if (v13)
    {
      v14 = sub_100086EF0(v38[3], &v21, a4);
      v11 = v38;
      if ((v14 & 1) == 0)
      {
        v15 = v38[3];
        if (v15)
        {
          v38[3] = 0;
          CFRelease(v15);
          v11 = v38;
        }
      }
    }
  }

  v16 = v11[3];
  if (v16 && (v30[3] & 1) == 0 && *(*(v16 + 16) + 136) && (*(v16 + 24) & 1) == 0)
  {
    v17 = *(a1 + 24);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 0x40000000;
    v20[2] = sub_100014FB8;
    v20[3] = &unk_1003359F0;
    v20[4] = &v37;
    v20[5] = a1;
    v20[6] = a4;
    dispatch_sync(v17, v20);
    v16 = v38[3];
  }

  if (a3)
  {
    *a3 = v16;
  }

  if (v16)
  {
    v18 = 1;
  }

  else
  {
    if (a2)
    {
      dispatch_semaphore_signal(*(a1 + 120));
    }

    else
    {
      pthread_mutex_unlock((a1 + 56));
    }

    CFRelease(a1);
    v18 = v38[3] != 0;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  return v18;
}

uint64_t sub_100008A70(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a3 && sub_10000869C(a4) != a3)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = 0;
    if (a1)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 0x40000000;
      v25 = sub_100184038;
      v26 = &unk_100342578;
      v27 = a5;
      v28 = &v29;
      v33 = 0;
      sub_10000874C(a3, 0, &v33, v6);
      v10 = v33;
      if (v33)
      {
        (v25)(v24, v33);
LABEL_18:
        sub_10000DBFC(v10);
      }
    }

    else
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 0x40000000;
      v20 = sub_100184074;
      v21 = &unk_1003425A0;
      v22 = a5;
      v23 = &v29;
      v33 = 0;
      sub_10000874C(a3, 1, &v33, v6);
      v10 = v33;
      if (v33)
      {
        (v20)(v19, v33);
        goto LABEL_18;
      }
    }

    LOBYTE(v6) = *(v30 + 24);
    _Block_object_dispose(&v29, 8);
    return v6 & 1;
  }

  off_10039D5C8();
  if (!*v11)
  {
    v14 = v11;
    v15 = a1 ^ 1;
    if ((v15 & 1) == 0 && a2)
    {
      v16 = sub_10000869C(0);
      sub_100014CA8(v16);
    }

    v17 = sub_10000869C(v6);
    if (v17)
    {
      if (sub_10000874C(v17, v15, v14, v6))
      {
        v18 = (*(a5 + 16))(a5, *v14);
        sub_10000DBFC(*v14);
        *v14 = 0;
        return v18;
      }
    }

    else
    {
      if (!v6)
      {
        return v6 & 1;
      }

      if (!*v6)
      {
        sub_1000103CC(-25316, v6, @"failed to get a db handle");
      }
    }

    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v12 = *(a5 + 16);

  return v12(a5);
}

CFStringRef sub_100008CD0(const __CFData *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 == CFDataGetTypeID())
  {

    return CFDataCreateCopy(0, v1);
  }

  else if (v2 == CFStringGetTypeID())
  {

    return CFStringCreateCopy(0, v1);
  }

  else
  {
    if (v2 != CFNumberGetTypeID())
    {
      return 0;
    }

    CFRetain(v1);
    return v1;
  }
}

void sub_100008D78(void *a1, const __CFString *a2, uint64_t a3)
{
  if (CFEqual(*a1, kSecAttrSynchronizable))
  {
    *(a3 + 112) = 1;
    if (CFEqual(a2, kSecAttrSynchronizableAny))
    {
      return;
    }
  }

  v6 = *(a1 + 2);
  if (v6 > 6)
  {
    if (v6 <= 13)
    {
      if ((v6 - 11) < 2)
      {
LABEL_22:
        v7 = sub_100009D84(a2);
        goto LABEL_24;
      }

      if (v6 == 7)
      {
        v7 = sub_100011E48(a2);
        goto LABEL_24;
      }

LABEL_34:
      sub_1000103CC(-50, (a3 + 40), @"attribute %@: value: %@ failed to convert", *a1, a2);
      return;
    }

    if (v6 == 14)
    {
LABEL_20:
      v7 = sub_1000084A4(a2);
      goto LABEL_24;
    }

    if (v6 != 15)
    {
      if (v6 == 16)
      {
        v7 = sub_100011F00(a2);
        goto LABEL_24;
      }

      goto LABEL_34;
    }

LABEL_19:
    v7 = sub_100008CD0(a2);
    goto LABEL_24;
  }

  if (v6 > 2)
  {
    if ((v6 - 4) < 3)
    {
      v7 = sub_100011EB8(a2);
      goto LABEL_24;
    }

    if (v6 == 3)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v7 = sub_100009008(a2);
LABEL_24:
  Mutable = v7;
  if (!v7)
  {
    goto LABEL_34;
  }

  v9 = *(a3 + 8);
  if (v9 && *(a1 + 2) != 7)
  {
    CFDictionarySetValue(v9, *a1, Mutable);
  }

  if ((a1[2] & 8) != 0)
  {
    v10 = sub_100009008(Mutable);
    CFRelease(Mutable);
    if (!v10)
    {
      sub_1000103CC(-26276, (a3 + 40), @"failed to get attribute %@ data", *a1);
      return;
    }

    Mutable = CFDataCreateMutable(0, 20);
    CFDataSetLength(Mutable, 20);
    CFDataGetBytePtr(v10);
    CFDataGetLength(v10);
    CFDataGetMutableBytePtr(Mutable);
    CCDigest();
    CFRelease(v10);
  }

  if (*(a1 + 2) == 15)
  {
    if (!Mutable)
    {
      return;
    }

    goto LABEL_38;
  }

  v11 = *(a3 + 32);
  if (v11 + 1 < *(a3 + 256))
  {
    v12 = *a1;
    *(a3 + 32) = v11 + 1;
    v13 = a3 + 16 * v11;
    *(v13 + 264) = v12;
    *(v13 + 272) = Mutable;
    return;
  }

  sub_1000103CC(-26276, (a3 + 40), @"q_pairs overflow");
  if (Mutable)
  {
LABEL_38:

    CFRelease(Mutable);
  }
}

CFDataRef sub_100009008(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFDataGetTypeID())
  {

    return CFDataCreateCopy(0, a1);
  }

  else if (v2 == CFStringGetTypeID())
  {

    return CFStringCreateExternalRepresentation(0, a1, 0x8000100u, 0);
  }

  else if (v2 == CFNumberGetTypeID())
  {
    valuePtr = -1431655766;
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    return CFDataCreate(0, &valuePtr, 4);
  }

  else
  {
    return 0;
  }
}

void sub_1000090E8(__CFString *a1, const __CFString *a2, CFArrayRef theArray, _BYTE *a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v8 = Count;
      sub_100009A48(a1, a4);
      CFStringAppend(a1, a2);
      CFStringAppend(a1, @" IN (?");
      if (v8 >= 2)
      {
        v9 = v8 - 1;
        do
        {
          CFStringAppend(a1, @",?");
          --v9;
        }

        while (v9);
      }

      CFStringAppend(a1, @""));
    }
  }
}

uint64_t sub_1000091A8(const __CFArray *a1, const __CFString *cf, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count)
      {
        v8 = Count;
        v10.location = 0;
        v10.length = Count;
        if (CFArrayContainsValue(a1, v10, cf))
        {
          return 1;
        }

        v11.location = 0;
        v11.length = v8;
        if (CFArrayContainsValue(a1, v11, @"*") || a3 && *(a3 + 19) == 1 && CFStringHasSuffix(cf, kSecNetworkExtensionAccessGroupSuffix))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void *sub_10000927C(void *result, CFTypeRef cf, __CFString **a3)
{
  if (cf && (v5 = result, v6 = CFGetTypeID(cf), result = CFStringGetTypeID(), v6 == result) && (result = sub_1000074BC(cf)) != 0 && (!*v5 || *v5 == result))
  {
    *v5 = result;
  }

  else if (a3 && !*a3)
  {
    if (cf)
    {
      v7 = -25306;
    }

    else
    {
      v7 = -50;
    }

    return sub_1000103CC(v7, a3, @"can find class named: %@", cf);
  }

  return result;
}

void sub_100009324(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(v2 + 128))
  {
    goto LABEL_28;
  }

  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(v2 + 16);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 1;
  cf[0] = _NSConcreteStackBlock;
  cf[1] = 0x40000000;
  cf[2] = sub_100087784;
  cf[3] = &unk_100335BC8;
  cf[4] = &v33;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v38 = sub_1000105E8;
  v39 = &unk_100335678;
  v40 = cf;
  sub_100008380(v5, &buf);
  v6 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  if (v6)
  {
    v31 = 0;
    v7 = sub_100086DDC(v2, 0);
    if (v7)
    {
      v8 = v7;
      cf[0] = 0;
      if (sub_100086EF0(v7, &v31, cf))
      {
        v9 = cf[0];
        if (cf[0])
        {
          cf[0] = 0;
          CFRelease(v9);
        }

        if (v4)
        {
          *v4 = v8;
        }

        v10 = sub_100006274("#SecDB");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#SecDB starting maintenance", &buf, 2u);
        }

        if (*(v8 + 40))
        {
          goto LABEL_55;
        }

        v11 = *(v8 + 16);
        v12 = *(v11 + 136);
        if (!v12)
        {
          v13 = 0;
          goto LABEL_56;
        }

        v33 = 0;
        *(v11 + 144) = 0;
        v13 = (*(v12 + 16))(v12, v11, v8, v31, v11 + 144, &v33);
        *(v2 + 128) = v13;
        if ((v13 & 1) == 0)
        {
          v14 = sub_100006274("SecError");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v33;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "opened block failed: %@", &buf, 0xCu);
          }
        }

        if (!v3 || (*(v8 + 40) & 1) != 0 || *v3)
        {
          if (v33)
          {
            v15 = sub_100006274("SecError");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v33;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "opened block failed: error (%@) is being released and lost", &buf, 0xCu);
            }

            v16 = v33;
            if (v33)
            {
              v33 = 0;
              CFRelease(v16);
            }
          }
        }

        else
        {
          *v3 = v33;
        }

        if (*(v8 + 40))
        {
LABEL_55:
          v13 = sub_1000868E8(v8, 0, v3);
        }

LABEL_56:
        v30 = sub_100006274("#SecDB");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "#SecDB ending maintenance", &buf, 2u);
          if (!v13)
          {
LABEL_59:
            CFRelease(v8);
            if (v4)
            {
              *v4 = 0;
            }

            goto LABEL_26;
          }
        }

        else if (!v13)
        {
          goto LABEL_59;
        }

        CFArrayAppendValue(*(v2 + 40), v8);
        goto LABEL_59;
      }

      v25 = sub_100006274("SecError");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = cf[0];
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unable to create database: %@", &buf, 0xCu);
      }

      if (cf[0])
      {
        Domain = CFErrorGetDomain(cf[0]);
        if (CFEqual(Domain, @"com.apple.utilities.sqlite3"))
        {
          Code = CFErrorGetCode(cf[0]);
          v29 = Code == 11 || Code == 26;
          *(v8 + 40) = v29;
        }
      }

      LOBYTE(v13) = 0;
      if (!v3 || (*(v8 + 40) & 1) != 0)
      {
        goto LABEL_26;
      }

      if (!*v3)
      {
        LOBYTE(v13) = 0;
        *v3 = cf[0];
        goto LABEL_26;
      }
    }
  }

  else
  {
    v17 = *__error();
    v18 = __error();
    sub_1000111B4(v17, kCFErrorDomainPOSIX, 0, v3, v19, @"Unable to process corruption marker: %{darwin.errno}d", *v18);
  }

  LOBYTE(v13) = 0;
LABEL_26:
  *(*(*(a1 + 48) + 8) + 24) = v13;
  *(*(*(a1 + 40) + 8) + 24) = v13;
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    return;
  }

  v2 = *(a1 + 64);
LABEL_28:
  v20 = 40;
  if (*(a1 + 88))
  {
    v20 = 48;
  }

  v21 = *(v2 + v20);
  if (CFArrayGetCount(v21) && !*(*(*(a1 + 56) + 8) + 24))
  {
    v22 = *(a1 + 32);
    ValueAtIndex = CFArrayGetValueAtIndex(v21, 0);
    if ((*(v22 + 16))(v22, ValueAtIndex))
    {
      v24 = *(*(*(a1 + 56) + 8) + 24);
      if (v24)
      {
        CFRetain(v24);
      }
    }

    CFArrayRemoveValueAtIndex(v21, 0);
  }
}

void sub_100009848(__CFString *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3 >= 1)
  {
    sub_100009A48(a1, a4);
    CFStringAppendFormat(a1, 0, @"%@=%lld", a2, a3);
  }
}

void sub_1000098AC(__CFString *a1, const __CFString *a2, _BYTE *a3)
{
  sub_100009A48(a1, a3);
  CFStringAppend(a1, a2);

  CFStringAppend(a1, @"=?");
}

void sub_100009900(__CFString *a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 32);
  if (v3 >= 1)
  {
    v6 = (a2 + 264);
    do
    {
      v7 = *v6;
      v6 += 2;
      sub_1000098AC(a1, v7, a3);
      --v3;
    }

    while (v3);
  }
}

BOOL sub_100009954(CFTypeRef cf1)
{
  if (qword_10039DFE8 != -1)
  {
    dispatch_once(&qword_10039DFE8, &stru_100338F30);
  }

  return CFEqual(cf1, qword_10039DFF0) != 0;
}

uint64_t sub_1000099B4(const __CFData *a1, _DWORD *a2)
{
  if (CFDataGetLength(a1) != 16)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v5 = (*BytePtr ^ 0x9A460A992EBEC436 | *(BytePtr + 2) ^ 0xA40989ACLL) == 0;
  if (a2 && !(*BytePtr ^ 0x9A460A992EBEC436 | *(BytePtr + 2) ^ 0xA40989ACLL))
  {
    *a2 = bswap32(*(BytePtr + 3));
    return 1;
  }

  return v5;
}

void sub_100009A48(__CFString *a1, _BYTE *a2)
{
  if (a2 && (*a2 & 1) != 0)
  {
    CFStringAppend(a1, @" WHERE ");
    *a2 = 0;
  }

  else
  {

    CFStringAppend(a1, @" AND ");
  }
}

void sub_100009AA8(__CFString *a1, uint64_t a2, _BYTE *a3)
{
  sub_100009A48(a1, a3);
  if (sub_1000099B4(*(a2 + 128), 0))
  {
    v5 = @"(musr = ? OR musr = ?)";
  }

  else
  {
    if (sub_100009954(*(a2 + 128)))
    {
      return;
    }

    v6 = *(a2 + 128);
    if (v6)
    {
      CFGetTypeID(v6);
      CFNullGetTypeID();
    }

    v5 = @"musr = ?";
  }

  CFStringAppend(a1, v5);
}

void sub_100009B34(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 184);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 184)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 184) = cf;
  }
}

uint64_t sub_100009B80(uint64_t a1, CFErrorRef *a2)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (a2 && v3)
  {
    if (*a2)
    {
      if (CFErrorGetCode(*a2) != -25330)
      {
        goto LABEL_9;
      }

      v4 = *a2;
      if (*a2)
      {
        *a2 = 0;
        CFRelease(v4);
LABEL_9:
        if (*a2)
        {
          goto LABEL_10;
        }
      }
    }

    result = 0;
    *a2 = v3;
    return result;
  }

  if (v3)
  {
    if (!a2)
    {
LABEL_10:
      CFRelease(v3);
      return 0;
    }

    goto LABEL_9;
  }

  return 1;
}

void sub_100009C0C(__CFString *a1, uint64_t a2, const __CFArray *a3)
{
  v7 = 1;
  sub_100009848(a1, @"ROWID", *(a2 + 72), &v7);
  sub_100009900(a1, a2, &v7);
  sub_100009AA8(a1, a2, &v7);
  v6 = *(a2 + 80);
  if (v6 && CFDataGetLength(v6) == 16)
  {
    if (v7)
    {
      CFStringAppend(a1, @" WHERE ");
      v7 = 0;
    }

    else
    {
      CFStringAppend(a1, @" AND ");
    }

    CFStringAppend(a1, @"persistref = ?");
  }

  sub_1000090E8(a1, @"agrp", a3, &v7);
  if (*(a2 + 153) == 1)
  {
    if (v7)
    {
      CFStringAppend(a1, @" WHERE ");
      v7 = 0;
    }

    else
    {
      CFStringAppend(a1, @" AND ");
    }

    CFStringAppend(a1, @"clip = 0");
  }

  if (*(a2 + 154) == 1)
  {
    if (v7)
    {
      CFStringAppend(a1, @" WHERE ");
      v7 = 0;
    }

    else
    {
      CFStringAppend(a1, @" AND ");
    }

    CFStringAppend(a1, @"tomb = 0");
  }
}

CFNumberRef sub_100009D84(const __CFBoolean *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFNumberGetTypeID())
  {
    if (v2 == CFBooleanGetTypeID())
    {
      HIDWORD(valuePtr) = CFBooleanGetValue(v1);
      p_valuePtr = &valuePtr + 4;
    }

    else
    {
      if (v2 != CFStringGetTypeID())
      {
        return 0;
      }

      LODWORD(valuePtr) = CFStringGetIntValue(v1);
      v4 = CFStringCreateWithFormat(0, 0, @"%ld", valuePtr, valuePtr);
      v5 = CFEqual(v4, v1);
      CFRelease(v4);
      if (!v5)
      {
        return CFStringCreateCopy(0, v1);
      }

      p_valuePtr = &valuePtr;
    }

    return CFNumberCreate(0, kCFNumberSInt32Type, p_valuePtr);
  }

  CFRetain(v1);
  return v1;
}

void sub_100009E74(uint64_t a1)
{
  if (!qword_10039E170)
  {
    if (qword_10039DCC8 != -1)
    {
      dispatch_once(&qword_10039DCC8, &stru_100335840);
    }

    v2 = *(a1 + 32);
    v3 = qword_10039E170;
    qword_10039E170 = 0;
    v4 = sub_10017FD94();
    if (v4)
    {
      v5 = v4;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2000000000;
      v23 = 0;
      aBlock = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_10017FF48;
      v18 = &unk_100342440;
      v19 = &v20;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_1000865E8;
      v28 = &unk_1003358C0;
      v29 = &qword_10039DCD8;
      if (qword_10039DCD0 != -1)
      {
        dispatch_once(&qword_10039DCD0, buf);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        if (getenv("__OSINSTALL_ENVIRONMENT"))
        {
          v7 = sub_100006274("#SecDB");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "SecDB: running from installer", buf, 2u);
          }

          Copy = @"file::memory:?cache=shared";
        }

        else
        {
          Copy = CFStringCreateCopy(kCFAllocatorDefault, v5);
        }

        *(Instance + 16) = Copy;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 0x40000000;
        v25[2] = sub_1000867FC;
        v25[3] = &unk_1003358E0;
        v25[4] = Instance;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_1000105E8;
        v28 = &unk_100335678;
        v29 = v25;
        sub_100008380(v5, buf);
        v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-commit", v5, aBlock, v16, v17, v18, v19, v20);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 0x40000000;
        v24[2] = sub_100086830;
        v24[3] = &unk_100335900;
        v24[4] = Instance;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_1000105E8;
        v28 = &unk_100335678;
        v29 = v24;
        sub_100008380(v10, buf);
        if (v10)
        {
          CFRelease(v10);
        }

        *(Instance + 40) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        *(Instance + 48) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v26.__sig = 0xAAAAAAAAAAAAAAAALL;
        *v26.__opaque = 0xAAAAAAAAAAAAAAAALL;
        if (pthread_mutexattr_init(&v26) || (v11 = &v26, pthread_mutexattr_setpolicy_np(&v26, 1)))
        {
          v12 = sub_100006274("SecCritical");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecDb: SecDbCreate failed to create attributes for the write mutex; fairness properties are no longer present", buf, 2u);
          }

          v11 = 0;
        }

        if (pthread_mutex_init((Instance + 56), v11))
        {
          v13 = sub_100006274("SecCritical");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SecDb: SecDbCreate failed to init the write mutex, this will end badly", buf, 2u);
          }
        }

        pthread_mutexattr_destroy(&v26);
        *(Instance + 120) = dispatch_semaphore_create(5);
        *(Instance + 128) = 0;
        *(Instance + 136) = _Block_copy(&aBlock);
        *(Instance + 144) = 0;
        *(Instance + 148) = 0;
        *(Instance + 152) = 0;
        *(Instance + 160) = 384;
        *(Instance + 162) = 16843009;
        *(Instance + 166) = 6;
        *(Instance + 168) = 0;
        *(Instance + 168) = _Block_copy(&stru_100342480);
      }

      if (v2)
      {
        *v2 = v21[3];
      }

      _Block_object_dispose(&v20, 8);
      qword_10039E170 = Instance;
      CFRelease(v5);
    }

    else
    {
      v9 = sub_100006274("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "no keychain path available", buf, 2u);
      }
    }

    if (v3)
    {
      v14 = sub_100006274("SecError");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v3;
        *&buf[12] = 2112;
        *&buf[14] = qword_10039E170;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "replaced %@ with %@", buf, 0x16u);
      }

      CFRelease(v3);
    }
  }
}

BOOL sub_10000A404(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    *v2 = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

sqlite3_stmt *sub_10000A434(uint64_t a1, const __CFString *a2, CFStringRef *a3, CFTypeRef *a4)
{
  v12.location = 0;
  v12.length = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_10000ADDC;
    v13[3] = &unk_100335C98;
    v13[4] = &v14;
    v13[5] = a1;
    v13[6] = a4;
    v13[7] = &v12;
    sub_100008380(a2, v13);
    v7 = v15[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v14, 8);
  if (v12.length >= 1)
  {
    v8 = CFGetAllocator(a2);
    v9 = CFStringCreateWithSubstring(v8, a2, v12);
    v10 = v9;
    if (a3)
    {
      *a3 = v9;
    }

    else
    {
      sub_10001D9F0(2, a4, @"prepare_v2: %@ unused sql: %@", a2, v9);
      if (v10)
      {
        CFRelease(v10);
      }

      sub_10000DB94(v7, a4);
      return 0;
    }
  }

  return v7;
}

BOOL sub_10000A574(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4 = *a2;
  if (*(*a2 + 64))
  {

    return sub_1000103CC(-50, a3, @"value ref not supported by queries");
  }

  else
  {
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (*(v4 + 104) == 1)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    *(a2 + 24) = Mutable;
    v11 = sub_10000AA4C(v4, v9);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 0x40000000;
    v18[2] = sub_10000ACF4;
    v18[3] = &unk_100339C10;
    v18[4] = v4;
    v18[5] = v9;
    v18[6] = a3;
    v18[7] = v8;
    v18[8] = a1;
    v18[9] = a2;
    v18[10] = a2;
    v12 = sub_10000A928(v8, v11, a3, v18);
    v13 = *(v4 + 8);
    if (v13)
    {
      v14 = *(a2 + 32);
      if (v14 >= 20)
      {
        Value = CFDictionaryGetValue(v13, kSecAttrAccessGroup);
        v16 = sub_100006274("SecItemDb");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          v20 = v14;
          v21 = 2112;
          v22 = v11;
          v23 = 2112;
          v24 = Value;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "🚨 Returning %d items for query: %@ for access group: %@", buf, 0x1Cu);
        }
      }
    }

    CFRelease(v11);
    if ((sub_100009B80(v4, a3) & v12) != 1)
    {
      return 0;
    }

    if (*(a2 + 32))
    {
      return 1;
    }

    v17 = sub_1000103CC(-25300, a3, @"no matching items found");
    if (*(v4 + 200) == 1)
    {
      sub_10008A0C0(@"ItemNotFound", 1405091848);
    }

    return v17;
  }
}

BOOL sub_10000A7F4(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, __CFString **a5)
{
  v13[0] = a2;
  v13[1] = a4;
  v13[2] = a1;
  cf = 0;
  v8 = *(a2 + 80);
  if (v8 && CFDataGetLength(v8) == 16 && *(a2 + 32))
  {
    v9 = @"attributes to query illegal; both persistent ref and other attributes can't be searched at the same time";
LABEL_16:

    return sub_1000103CC(-50, a5, v9);
  }

  if (*(a2 + 240) && *(a2 + 32) != 1)
  {
    v9 = @"attributes to query illegal; both token persistent ref and other attributes can't be searched at the same time";
    goto LABEL_16;
  }

  v10 = kSecAttrTombstone;
  if (!CFDictionaryContainsKey(*(a2 + 8), kSecAttrTombstone))
  {
    sub_1000079A0(v10, kCFBooleanFalse, a2);
  }

  v15 = 0xAAAAAAAA00000000;
  v11 = sub_10000A574(sub_10000EECC, v13, a5);
  if (a3 && v11)
  {
    *a3 = cf;
    return 1;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t sub_10000A928(uint64_t a1, const __CFString *cf, CFTypeRef *a3, uint64_t a4)
{
  v6 = cf;
  CFRetain(cf);
  if (!v6)
  {
    return 1;
  }

  LOBYTE(v8) = 1;
  do
  {
    v11 = 0;
    if (v8)
    {
      v8 = sub_10000A434(a1, v6, &v11, a3);
      if (v8)
      {
        if (a4)
        {
          v9 = (*(a4 + 16))(a4, v8);
        }

        else
        {
          v9 = sub_1000103CC(-50, a3, @"SecDbWithSQL perform block missing");
        }

        v8 = (v9 & sub_10000DB94(v8, a3));
      }
    }

    else
    {
      sub_10001D9F0(1, a3, @"Error with unexecuted sql remaining %@", v6);
      v8 = 0;
    }

    CFRelease(v6);
    v6 = v11;
  }

  while (v11);
  return v8;
}

__CFString *sub_10000AA4C(uint64_t a1, const __CFArray *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  v5 = *(a1 + 80);
  if (*a1 == &off_10033DFA8)
  {
    if (v5 && CFDataGetLength(v5) == 16)
    {
      v7 = CFSTR("SELECT crowid, certdata, certpersistref, rowid, data, persistref FROM (SELECT cert.rowid AS crowid, cert.labl AS labl, cert.issr AS issr, cert.slnr AS slnr, cert.skid AS skid, cert.tkid AS tkid, keys.*,cert.data AS certdata, cert.persistref AS certpersistref FROM keys, cert WHERE keys.priv == 1 AND cert.pkhh == keys.klbl");
    }

    else
    {
      v7 = CFSTR("SELECT crowid, certdata, rowid, data FROM (SELECT cert.rowid AS crowid, cert.labl AS labl, cert.issr AS issr, cert.slnr AS slnr, cert.skid AS skid, cert.tkid AS tkid, keys.*,cert.data AS certdata FROM keys, cert WHERE keys.priv == 1 AND cert.pkhh == keys.klbl");
    }

    CFStringAppend(Mutable, v7);
    sub_1000090E8(Mutable, @"cert.agrp", a2, 0);
    sub_100009848(Mutable, @"crowid", *(a1 + 72), 0);
    CFStringAppend(Mutable, @""));
    v10 = 1;
    sub_100009900(Mutable, a1, &v10);
    sub_100009AA8(Mutable, a1, &v10);
    v8 = *(a1 + 80);
    if (v8 && CFDataGetLength(v8) == 16)
    {
      if (v10)
      {
        CFStringAppend(Mutable, @" WHERE ");
        v10 = 0;
      }

      else
      {
        CFStringAppend(Mutable, @" AND ");
      }

      CFStringAppend(Mutable, @"certpersistref = ?");
    }

    sub_1000090E8(Mutable, @"agrp", a2, &v10);
    if (*(a1 + 153) == 1)
    {
      if (v10)
      {
        CFStringAppend(Mutable, @" WHERE ");
        v10 = 0;
      }

      else
      {
        CFStringAppend(Mutable, @" AND ");
      }

      CFStringAppend(Mutable, @"clip = 0");
    }

    if (*(a1 + 154) == 1)
    {
      if (v10)
      {
        CFStringAppend(Mutable, @" WHERE ");
        v10 = 0;
      }

      else
      {
        CFStringAppend(Mutable, @" AND ");
      }

      CFStringAppend(Mutable, @"tomb = 0");
    }
  }

  else
  {
    if (v5 && CFDataGetLength(v5) == 16)
    {
      v6 = @"SELECT rowid, data, agrp, persistref FROM ";
    }

    else if ((*(a1 + 48) & 8) != 0)
    {
      v6 = @"SELECT rowid, data, agrp, persistref FROM ";
    }

    else
    {
      v6 = @"SELECT rowid, data, agrp FROM ";
    }

    CFStringAppend(Mutable, v6);
    CFStringAppend(Mutable, **a1);
    sub_100009C0C(Mutable, a1, a2);
  }

  if (!*(a1 + 176) && !*(a1 + 208) && !*(a1 + 216) && !*(a1 + 232) && !*(a1 + 240) && *(a1 + 104) != -1)
  {
    CFStringAppendFormat(Mutable, 0, @" LIMIT %ld", *(a1 + 104));
  }

  return Mutable;
}

uint64_t sub_10000ACF4(uint64_t a1, sqlite3_stmt *a2)
{
  v11 = 1;
  v4 = *(a1 + 32);
  if (*v4 == &off_10033DFA8)
  {
    result = sub_10000CF18(a2, *(a1 + 40), &v11, *(a1 + 48));
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 32);
  }

  result = sub_10000CFD4(a2, v4, *(a1 + 40), &v11, *(a1 + 48));
  if (result)
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10000FD04;
    v10[3] = &unk_100339BF0;
    v8 = *(a1 + 72);
    v10[4] = *(a1 + 64);
    v10[5] = a2;
    v9 = *(a1 + 32);
    v10[6] = v8;
    v10[7] = v9;
    v10[8] = *(a1 + 80);
    sub_10000D2AC(v6, a2, v7, v10);
    return 1;
  }

  return result;
}

uint64_t sub_10000ADDC(void *a1, char *zSql, unint64_t nByte)
{
  v33 = 0;
  v7 = a1[5];
  v6 = a1[6];
  if (qword_10039E148 != -1)
  {
    dispatch_once(&qword_10039E148, &stru_100342178);
  }

  if (byte_10039E140 == 1)
  {
    __s = 0;
    asprintf(&__s, "%s%s", "EXPLAIN QUERY PLAN ", zSql);
    v8 = sub_100006274("item");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = zSql;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EXPLAIN QUERY PLAN for %s:", &buf, 0xCu);
    }

    v9 = *(v7 + 64);
    pzTail = 0;
    ppStmt = 0;
    v10 = strlen(__s);
    v11 = sqlite3_prepare_v2(v9, __s, v10, &ppStmt, &pzTail);
    if (v11)
    {
      v12 = v11;
      v13 = sub_100006274("item");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        free(__s);
        goto LABEL_27;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = v12;
      v14 = "Unable to prepare query: %d";
      p_buf = &buf;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, p_buf, 8u);
      goto LABEL_26;
    }

    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    cf = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v41 = sub_100086D38;
    v42 = &unk_100335C70;
    v43 = ppStmt;
    v44 = Mutable;
    sub_100015DAC(v7, ppStmt, &cf, &buf);
    CStringPtr = CFStringGetCStringPtr(Mutable, 0x8000100u);
    v18 = sub_100006274("item");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (CStringPtr)
    {
      if (v19)
      {
        *v38 = 136315138;
        v39 = CStringPtr;
        v20 = "query plan: %s";
        v21 = v18;
        v22 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, v38, v22);
      }
    }

    else if (v19)
    {
      *v38 = 0;
      v20 = "Failed to get query plan";
      v21 = v18;
      v22 = 2;
      goto LABEL_14;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (cf)
    {
      v23 = sub_100006274("item");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 138412290;
        v39 = cf;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to show plan: %@", v38, 0xCu);
      }

      v24 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v24);
      }
    }

    v25 = sqlite3_finalize(ppStmt);
    if (!v25)
    {
      goto LABEL_26;
    }

    v26 = v25;
    v13 = sub_100006274("item");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *v38 = 67109120;
    LODWORD(v39) = v26;
    v14 = "Unable to finalize query: %d";
    p_buf = v38;
    goto LABEL_25;
  }

LABEL_27:
  v27 = *(v7 + 64);
  if (nByte >> 31)
  {
    result = sub_10001D8CC(18, *(v7 + 64), v6, @"prepare_v2: sql bigger than INT_MAX");
LABEL_29:
    v29 = 0;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      *&buf = 0;
      result = sqlite3_prepare_v2(v27, zSql, nByte, &buf, &v33);
      if (!result)
      {
        break;
      }

      result = sub_10001D288(v7, result, @"preparev2", i, v6);
      if ((result & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v29 = buf;
  }

  *(*(a1[4] + 8) + 24) = v29;
  v31 = a1[7];
  if (v31)
  {
    v32 = v33 - zSql;
    if (v33 > zSql && v33 < &zSql[nByte])
    {
      *v31 = v32;
      v31[1] = nByte - v32;
    }
  }

  return result;
}

void sub_10000B218(CFTypeRef cf2, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16) - 1;
  *(a3 + 16) = v6;
  v7 = a3 + 16 * v6;
  *(v7 + 264) = cf2;
  *(v7 + 272) = a2;
  if (!CFEqual(kSecMatchLimit, cf2))
  {
    if (CFEqual(kSecMatchIssuers, cf2))
    {
      v9 = CFGetTypeID(a2);
      if (v9 == CFArrayGetTypeID())
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (!Mutable)
        {
          return;
        }

        v11 = Mutable;
        Count = CFArrayGetCount(a2);
        if (Count >= 1)
        {
          v13 = Count;
          for (i = 0; i != v13; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
            TypeID = CFDataGetTypeID();
            if (TypeID == CFGetTypeID(ValueAtIndex))
            {
              v17 = SecDistinguishedNameCopyNormalizedContent();
              if (v17)
              {
                v18 = v17;
                CFArrayAppendValue(v11, v17);
                CFRelease(v18);
              }
            }
          }
        }

        if (CFArrayGetCount(v11) >= 1)
        {
          *(a3 + 176) = v11;
          return;
        }

        v29 = v11;
        goto LABEL_46;
      }
    }

    if (CFEqual(kSecMatchPolicy, cf2))
    {
      v20 = CFGetTypeID(a2);
      if (v20 == CFArrayGetTypeID())
      {
        v21 = _CFXPCCreateXPCObjectFromCFObject();
        if (v21)
        {
          v22 = v21;
          v23 = SecPolicyXPCArrayCopyArray();
          xpc_release(v22);
          if (!v23)
          {
            return;
          }

          if (CFArrayGetCount(v23) == 1)
          {
            v24 = CFArrayGetValueAtIndex(v23, 0);
            v25 = CFGetTypeID(v24);
            if (v25 == SecPolicyGetTypeID())
            {
              v26 = CFArrayGetValueAtIndex(v23, 0);
              sub_10016DA50(a3, v26);
LABEL_31:
              v29 = v23;
LABEL_46:

              CFRelease(v29);
              return;
            }
          }

          CFRelease(v23);
          v30 = @"unsupported array of policies";
        }

        else
        {
          v30 = @"unsupported kSecMatchPolicy object in query";
        }
      }

      else
      {
        v30 = @"unsupported value for kSecMatchPolicy attribute";
      }
    }

    else if (CFEqual(kSecMatchValidOnDate, cf2))
    {
      v27 = CFGetTypeID(a2);
      if (v27 == CFNullGetTypeID())
      {
        Current = CFAbsoluteTimeGetCurrent();
        v23 = CFDateCreate(kCFAllocatorDefault, Current);
        sub_10016DA9C(a3, v23);
        goto LABEL_31;
      }

      v32 = CFGetTypeID(a2);
      if (v32 == CFDateGetTypeID())
      {

        sub_10016DA9C(a3, a2);
        return;
      }

      v30 = @"unsupported value for kSecMatchValidOnDate attribute";
    }

    else if (CFEqual(kSecMatchTrustedOnly, cf2))
    {
      v31 = CFGetTypeID(a2);
      if (v31 == CFBooleanGetTypeID())
      {

        sub_10016DAE8(a3, a2);
        return;
      }

      v30 = @"unsupported value for kSecMatchTrustedOnly attribute";
    }

    else if (CFEqual(kSecMatchHostOrSubdomainOfHost, cf2))
    {
      v33 = CFGetTypeID(a2);
      if (v33 == CFStringGetTypeID())
      {

        sub_10016DB34(a3, a2);
        return;
      }

      v30 = @"unsupported value for kSecMatchHostOrSubdomainOfHost attribute";
    }

    else
    {
      if (!CFEqual(kSecMatchEmailAddressIfPresent, cf2))
      {
        return;
      }

      v34 = CFGetTypeID(a2);
      if (v34 == CFStringGetTypeID())
      {

        sub_10016DB80(a3, a2);
        return;
      }

      v30 = @"unsupported value for kSecMatchEmailAddressIfPresent attribute";
    }

    sub_1000103CC(-50, (a3 + 40), v30);
    return;
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFNumberGetTypeID())
  {
    if (CFEqual(kSecMatchLimitAll, a2))
    {
      v19 = -1;
    }

    else
    {
      if (!CFEqual(kSecMatchLimitOne, a2))
      {
        sub_1000103CC(-50, (a3 + 40), @"unsupported match limit %@", a2);
        return;
      }

      v19 = 1;
    }

    *(a3 + 104) = v19;
    return;
  }

  if (!CFNumberGetValue(a2, kCFNumberCFIndexType, (a3 + 104)))
  {
    sub_1000103CC(-50, (a3 + 40), @"failed to convert match limit %@ to CFIndex", a2);
  }
}

const UInt8 *sub_10000B738(const __CFAllocator *a1, CFDataRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9 = ccder_decode_tl();
    if (v9 && (v11 = v9, a5 - v9 >= 0))
    {
      v13 = CFDataCreate(a1, v9, 0);
      *a2 = v13;
      if (v13)
      {
        return v11;
      }

      sub_1000111B4(-3, @"com.apple.security.cfder.error", 0, a3, v14, @"Failed to create data");
    }

    else
    {
      sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, v10, @"Unknown data encoding");
    }
  }

  else
  {
    sub_1000111B4(-6, @"com.apple.security.cfder.error", 0, a3, a5, @"null input");
  }

  return 0;
}

void sub_10000B824(size_t size, uint64_t a2)
{
  if (size)
  {
    if (size > 0x800)
    {
      v5 = malloc_type_malloc(size, 0x2B51245EuLL);
      (*(a2 + 16))(a2, size, v5);
      if (v5)
      {

        free(v5);
      }
    }

    else
    {
      __chkstk_darwin();
      memset(&v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, &v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
    }
  }

  else
  {
    v4 = *(a2 + 16);

    v4(a2, 0, 0);
  }
}

uint64_t sub_10000B9AC(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

void sub_10000BA2C(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    if (CFEqual(v3, cf))
    {
      return;
    }

    v7 = @"conflicting kSecAccess and kSecAccessControl attributes";
    goto LABEL_10;
  }

  *(a1 + 136) = CFRetain(cf);
  Protection = SecAccessControlGetProtection();
  if (!Protection)
  {
    v7 = @"kSecAccessControl missing protection";
LABEL_10:

    sub_1000103CC(-50, (a1 + 40), v7);
    return;
  }

  v5 = Protection;
  v6 = *(a1 + 8);

  CFDictionarySetValue(v6, kSecAttrAccessible, v5);
}

unint64_t sub_10000BAD8(uint64_t a1, uint64_t a2, const void *a3, void *a4, const __CFData *a5, const __CFData *a6, uint64_t a7, const __CFString *a8, const void **a9, unsigned int *a10, char a11, _DWORD *a12, __CFString **a13)
{
  dataOutAvailable = a8;
  v108 = a5;
  v114 = a4;
  v112 = a3;
  v18 = a9;
  v17 = a10;
  Mutable = CFDataCreateMutable(0, 32);
  CFDataSetLength(Mutable, 32);
  if (a9)
  {
    *a9 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  v123 = 0;
  v124 = 0;
  v122 = 0;
  Length = CFDataGetLength(a6);
  BytePtr = CFDataGetBytePtr(a6);
  if (Length <= 3)
  {
    v22 = sub_1000103CC(-26275, a13, @"ks_decrypt_data: Check for underflow (length)");
    v23 = 0;
    v24 = 0;
    v115 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_85;
  }

  v27 = BytePtr;
  v107 = a13;
  v111 = a9;
  v109 = a10;
  v28 = BytePtr + 4;
  v29 = *BytePtr;
  v30 = *BytePtr & 0x7FFFFFFF;
  if (*BytePtr < 0)
  {
    v31 = &unk_100294A2C;
  }

  else
  {
    v31 = 0;
  }

  if (v29 < 0)
  {
    v32 = 12;
  }

  else
  {
    v32 = 0;
  }

  v33 = Length - 4;
  v113 = *BytePtr & 0x7FFFFFFF;
  if (v30 >= 7)
  {
    v106 = objc_autoreleasePoolPush();
    [NSData dataWithBytes:v28 length:Length - 4];
    v105 = v121 = 0;
    v34 = [[SecDbKeychainItemV7 alloc] initWithData:v105 decryptionKeybag:a1 error:&v121];
    v35 = v121;
    if (a12)
    {
      *a12 = [(SecDbKeychainItemV7 *)v34 keyclass];
    }

    v120 = v35;
    v36 = [(SecDbKeychainItemV7 *)v34 metadataAttributesWithError:&v120];
    v37 = v120;

    v38 = [v36 mutableCopy];
    v22 = 0;
    v24 = 0;
    v18 = v111;
    v39 = v107;
    v40 = 0;
    if (!v38)
    {
      v17 = v109;
      goto LABEL_80;
    }

    v17 = v109;
    if (v37)
    {
      goto LABEL_80;
    }

    v115 = [v38 objectForKeyedSubscript:@"SecAccessControl"];
    v40 = SecAccessControlCreateFromData();
    [v38 removeObjectForKey:@"SecAccessControl"];
    if (CFEqual(@"odel", v112))
    {
      v41 = objc_autoreleasePoolPush();
      v119 = 0;
      v42 = [(SecDbKeychainItemV7 *)v34 deleteWithAcmContext:v108 accessControl:v40 callerAccessGroups:dataOutAvailable keyDiversify:v113 != 7 error:&v119];
      v37 = v119;
      objc_autoreleasePoolPop(v41);
      if ((v42 & 1) == 0)
      {
        v22 = 0;
        v24 = 0;
        v17 = v109;
LABEL_78:
        v18 = v111;
LABEL_79:

LABEL_80:
        v115 = v40;
        if (v39 && (v22 & 1) == 0)
        {
          *v39 = v37;
        }

        objc_autoreleasePoolPop(v106);
        v23 = 0;
        v25 = 0;
        goto LABEL_84;
      }

      v17 = v109;
    }

    else if ((a11 & 1) != 0 || SecAccessControlGetConstraints())
    {
      v54 = objc_autoreleasePoolPush();
      v118 = 0;
      v55 = [(SecDbKeychainItemV7 *)v34 secretAttributesWithAcmContext:v108 accessControl:v40 callerAccessGroups:dataOutAvailable keyDiversify:v113 != 7 error:&v118];
      v56 = v118;
      v37 = v56;
      if (!v55)
      {
        v70 = [v56 code];
        v18 = v111;
        v39 = v107;
        if (v113 == 8 && v70 == -26275)
        {
          v71 = sub_100006274("SecError");
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = 8;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "ks_decrypt_data failed to decrypt secretdata: version %u mismatch with content", buf, 8u);
          }
        }

        objc_autoreleasePoolPop(v54);
        v22 = 0;
        v24 = 0;
        v17 = v109;
        goto LABEL_79;
      }

      if (a11)
      {
        [v38 addEntriesFromDictionary:v55];
      }

      objc_autoreleasePoolPop(v54);
      v17 = v109;
      v39 = v107;
    }

    else
    {
      v37 = 0;
    }

    v24 = v38;
    v22 = 1;
    goto LABEL_78;
  }

  if (v30 - 4 > 2)
  {
    if (v33 <= 3)
    {
      v43 = @"ks_decrypt_data: Check for underflow (keyclass)";
      goto LABEL_65;
    }

    LODWORD(v105) = *v28;
    v46 = (v105 & 0x1F) - 6;
    if (v46 <= 6 && **(&off_100338D98 + v46))
    {
      LODWORD(v106) = v30 - 4;
      v103 = v32;
      v104 = v31;
      v47 = SecAccessControlCreate();
      if (v47)
      {
        v115 = v47;
        if ((SecAccessControlSetProtection() & 1) == 0)
        {
          v22 = sub_1000103CC(-26275, v107, @"ks_decrypt_data: SecAccessControlSetProtection failed");
          v23 = 0;
          v24 = 0;
          goto LABEL_67;
        }

        v51 = v27 + 8;
        v45 = Length - 8;
        v17 = v109;
        v25 = v115;
        goto LABEL_34;
      }

      v43 = @"ks_decrypt_data: SecAccessControlCreate failed";
    }

    else
    {
      v43 = @"ks_decrypt_data: invalid keyclass detected";
    }

    v57 = v107;
LABEL_66:
    v22 = sub_1000103CC(-26275, v57, v43);
    v23 = 0;
    v24 = 0;
    v115 = 0;
LABEL_67:
    v25 = 0;
LABEL_68:
    v17 = v109;
    goto LABEL_69;
  }

  if (v33 <= 3)
  {
    v43 = @"ks_decrypt_data: Check for underflow (prot_length)";
LABEL_65:
    v57 = v107;
    goto LABEL_66;
  }

  v44 = *v28;
  v45 = Length - 8 - v44;
  if (Length - 8 < v44)
  {
    v43 = @"ks_decrypt_data: Check for underflow (prot)";
    goto LABEL_65;
  }

  LODWORD(v106) = v30 - 4;
  v103 = v32;
  v104 = v31;
  *buf = 0;
  v102 = &BytePtr[v44 + 8];
  sub_1000068E0(0, buf, 0, (BytePtr + 8), v102);
  v58 = *buf;
  if (!*buf)
  {
    v43 = @"ks_decrypt_data: invalid ACL";
    goto LABEL_65;
  }

  v25 = SecAccessControlCreate();
  if (!v25)
  {
    v23 = 0;
    v24 = 0;
    v115 = 0;
    v22 = 1;
    goto LABEL_68;
  }

  v59 = SecAccessControlSetProtection();
  CFRelease(v58);
  if ((v59 & 1) == 0)
  {
    v115 = v25;
    sub_1000103CC(-26275, v107, @"ks_decrypt_data: invalid ACL");
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_75;
  }

  Protection = SecAccessControlGetProtection();
  v61 = sub_10001BD38(Protection, v107);
  v17 = v109;
  if (!v61)
  {
    v115 = v25;
    v53 = sub_1000103CC(-26275, v107, @"ks_decrypt_data: invalid ACL");
    goto LABEL_73;
  }

  LODWORD(v105) = v61;
  v51 = v102;
LABEL_34:
  v117 = 0;
  v115 = v25;
  if (v113 - 2 >= 5)
  {
    v52 = 0;
    if (!v113)
    {
      v72 = v51;
      v63 = CFDataGetLength(Mutable) + 8;
      v22 = v45 - v63;
      if (v45 >= v63)
      {
        v62 = v72;
        v66 = v107;
LABEL_115:
        v26 = v113;
        if (v22 > 0xF)
        {
          if ((v22 & 0xF) == 0)
          {
            dataOutAvailable = v22;
            LODWORD(v22) = 1;
            goto LABEL_124;
          }

          v80 = sub_1000103CC(-26275, v66, @"ks_decrypt_data: invalid length on CBC data");
        }

        else
        {
          v80 = sub_1000103CC(-26275, v66, @"ks_decrypt_data: Check for underflow (CBC check)");
        }

        v22 = v80;
        v23 = 0;
LABEL_120:
        v24 = 0;
        v25 = 0;
        goto LABEL_121;
      }

LABEL_72:
      v53 = sub_1000103CC(-26275, v107, @"ks_decrypt_data: Check for underflow (wrapped_key/taglen)");
      goto LABEL_73;
    }
  }

  else
  {
    v52 = 16;
    v117 = 16;
  }

  if (v45 <= 3)
  {
    v53 = sub_1000103CC(-26275, v107, @"ks_decrypt_data: Check for underflow (wrapped_key_size)");
LABEL_73:
    v22 = v53;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_69;
  }

  v64 = *v51;
  v62 = v51 + 4;
  v63 = v64;
  v65 = v52 + v64;
  v22 = v45 - 4 - v65;
  if (v45 - 4 < v65)
  {
    goto LABEL_72;
  }

  v66 = v107;
  if (v113 <= 1)
  {
    goto LABEL_115;
  }

  if (v106 > 2)
  {
    dataOutAvailable = v22;
    LODWORD(v22) = 0;
    v26 = v113;
LABEL_124:
    v81 = a1;
    v106 = v63;
    v82 = v62;
    v83 = sub_10000D43C(v112, v81, a2, v105, v63, v62, 0, Mutable, 0, v66);
    v23 = 0;
    if (v83)
    {
      goto LABEL_130;
    }

    v22 = 0;
    v24 = 0;
    v25 = 0;
LABEL_121:
    v18 = v111;
    goto LABEL_85;
  }

  if (dataOutAvailable)
  {
    v102 = v62;
    v67 = v63;
    v68 = sub_100169488(dataOutAvailable, v107, v48, v49, v50);
    v63 = v67;
    v62 = v102;
    v69 = v107;
    v23 = v68;
    if (!v68)
    {
      v24 = 0;
      v25 = 0;
      v22 = 0;
LABEL_69:
      v18 = v111;
LABEL_84:
      v26 = v113;
      goto LABEL_85;
    }
  }

  else
  {
    v69 = v107;
    v23 = 0;
  }

  v84 = a1;
  v85 = a7;
  v82 = v62;
  v106 = v63;
  v26 = v113;
  if (!sub_100169524(v84, v85, v62, v63, v25, v113, &v124, &v122, &v123, v69))
  {
    v24 = 0;
    v25 = 0;
    v22 = 0;
    goto LABEL_121;
  }

  if (CFEqual(v112, @"od"))
  {
    dataOutAvailable = v22;
    v22 = 0;
    if (sub_100193AC4(v122, v123, Mutable, v108, v23, v25, v107))
    {
LABEL_130:
      if (v29 < 0)
      {
        v86 = (v82 - CFDataGetBytePtr(a6));
      }

      else
      {
        v86 = 0;
      }

      v87 = CFDataCreateMutable(0, dataOutAvailable);
      v25 = v87;
      v18 = v111;
      if (v87)
      {
        v112 = v86;
        v88 = &v106[v82];
        CFDataSetLength(v87, dataOutAvailable);
        if (v117)
        {
          v108 = &v101;
          __chkstk_darwin();
          v90 = &v101 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
          memset(v90, 170, v89);
          CFDataGetBytePtr(Mutable);
          CFDataGetLength(Mutable);
          CFDataGetMutableBytePtr(v25);
          v91 = CCCryptorGCM();
          if (v91)
          {
            v22 = sub_1000103CC(-26275, v107, @"ks_decrypt_data: CCCryptorGCM failed: %d", v91);
            v17 = v109;
            v18 = v111;
            v26 = v113;
LABEL_152:
            v24 = 0;
            goto LABEL_85;
          }

          v18 = v111;
          v26 = v113;
          if (v117 != 16)
          {
            v97 = sub_1000103CC(-26276, v107, @"ks_decrypt_data: CCCryptorGCM expected: 16 got: %ld byte tag", v117);
            goto LABEL_151;
          }

          if (timingsafe_bcmp(v90, dataOutAvailable + v88, 0x10uLL))
          {
            v97 = sub_1000103CC(-26275, v107, @"ks_decrypt_data: CCCryptorGCM computed tag not same as tag in blob");
LABEL_151:
            v22 = v97;
            v17 = v109;
            goto LABEL_152;
          }

          v17 = v109;
          goto LABEL_155;
        }

        *buf = 0xAAAAAAAAAAAAAAAALL;
        v93 = CFDataGetBytePtr(Mutable);
        v94 = CFDataGetLength(Mutable);
        dataOut = CFDataGetMutableBytePtr(v25);
        v96 = CCCrypt(1u, 0, 1u, v93, v94, 0, v88, dataOutAvailable, dataOut, dataOutAvailable, buf);
        if (!v96)
        {
          CFDataSetLength(v25, *buf);
          v26 = v113;
LABEL_155:
          if (v22)
          {
            v24 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionaryAddValue(v24, @"v_Data", v25);
          }

          else
          {
            if (v26 == 2)
            {
              v98 = sub_1001698C4(v25, v107);
            }

            else
            {
              v98 = sub_100169910(v25, v107);
            }

            v24 = v98;
          }

          if (v24)
          {
            v22 = 1;
            if (v26 >= 4 && v124)
            {
              context[0] = _NSConcreteStackBlock;
              context[1] = 3221225472;
              context[2] = sub_100169A24;
              context[3] = &unk_1003469D0;
              context[4] = v24;
              CFDictionaryApplyFunction(v124, sub_100169384, context);
            }

            goto LABEL_85;
          }

          v99 = sub_100006274("SecError");
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            v100 = v107;
            if (v107)
            {
              v100 = *v107;
            }

            *buf = 67109378;
            *&buf[4] = v113;
            v126 = 2112;
            v127 = v100;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "decode v%d failed: %@", buf, 0x12u);
          }

          v24 = 0;
LABEL_75:
          v22 = 0;
          goto LABEL_68;
        }

        v92 = sub_1000103CC(-26275, v107, @"ks_decrypt_data: CCCrypt failed: %d", v96);
      }

      else
      {
        v92 = sub_1000103CC(-26275, v107, @"ks_decrypt_data: failed to allocate data for plain text");
      }

      v22 = v92;
      v24 = 0;
      goto LABEL_84;
    }

    goto LABEL_120;
  }

  if (!CFEqual(v112, @"odel"))
  {
    v22 = sub_1000103CC(-26276, v107, @"ks_decrypt_data: invalid operation");
    goto LABEL_120;
  }

  v18 = v111;
  if (sub_100193D24(v122, v108, v23, v25, v107))
  {
    v24 = v124;
    if (v124)
    {
      CFRetain(v124);
    }

    v25 = 0;
    v22 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v22 = 0;
  }

LABEL_85:
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v74 = CFDataGetLength(Mutable);
  v75 = CFDataGetLength(Mutable);
  memset_s(MutableBytePtr, v74, 0, v75);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v114)
  {
    *v114 = v115;
  }

  else if (v115)
  {
    CFRelease(v115);
  }

  if (v22)
  {
    if (v18)
    {
      v76 = *v18;
      if (*v18 != v24)
      {
        if (!v24 || (CFRetain(v24), (v76 = *v18) != 0))
        {
          CFRelease(v76);
        }

        *v18 = v24;
      }
    }

    if (v17)
    {
      *v17 = v26;
    }
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v77 = v124;
  if (v124)
  {
    v124 = 0;
    CFRelease(v77);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v78 = v123;
  if (v123)
  {
    v123 = 0;
    CFRelease(v78);
  }

  if (v122)
  {
    aks_ref_key_free();
  }

  return v22;
}

BOOL sub_10000CA48(uint64_t a1, char *a2, unint64_t a3)
{
  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (a3 >> 31)
  {
    result = sub_10000CAD8(18, v6, v5, @"bind_text[%d]: text bigger than INT_MAX", *(a1 + 56));
  }

  else
  {
    v8 = sqlite3_bind_text(*(a1 + 40), v4, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
    result = sub_10000CAD8(v8, v6, v5, @"bind_text[%d]", v4);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL sub_10000CAD8(uint64_t a1, sqlite3_stmt *a2, CFTypeRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a3)
  {
    v7 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
    v8 = sqlite3_db_handle(a2);
    v9 = sqlite3_sql(a2);
    v10 = sqlite3_extended_errcode(v8);
    v11 = sqlite3_errmsg(v8);
    if (v10 == a1)
    {
      sub_10001D9F0(a1, a3, @"%@: [%d] %s sql: %s", v7, a1, v11, v9, v13, va);
    }

    else
    {
      sub_10001D9F0(a1, a3, @"%@: [%d->%d] %s sql: %s", v7, a1, v10, v11, v9, va);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return a1 == 0;
}

uint64_t sub_10000CBCC(sqlite3_stmt *a1, uint64_t a2, const __CFString *cf, CFTypeRef *a4)
{
  v4 = &v26;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  if (!cf)
  {
    goto LABEL_4;
  }

  v9 = CFGetTypeID(cf);
  if (v9 == CFNullGetTypeID())
  {
    v4 = v27;
LABEL_4:
    *(v4 + 24) = 1;
    goto LABEL_5;
  }

  if (v9 == CFStringGetTypeID())
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 0x40000000;
    v24[2] = sub_10000CA48;
    v24[3] = &unk_100335A60;
    v24[4] = &v26;
    v24[5] = a1;
    v25 = a2;
    v24[6] = a4;
    sub_100008380(cf, v24);
    goto LABEL_5;
  }

  if (v9 == CFDataGetTypeID())
  {
    Length = CFDataGetLength(cf);
    if (Length)
    {
      v13 = Length;
      BytePtr = CFDataGetBytePtr(cf);
      v15 = sub_10000CE9C(a1, a2, BytePtr, v13, a4);
    }

    else
    {
      v19 = sqlite3_bind_text(a1, a2, "", 0, 0xFFFFFFFFFFFFFFFFLL);
      v15 = sub_10000CAD8(v19, a1, a4, @"bind_text[%d]", a2);
    }

    goto LABEL_16;
  }

  if (v9 == CFDateGetTypeID())
  {
    AbsoluteTime = CFDateGetAbsoluteTime(cf);
    v17 = sqlite3_bind_double(a1, a2, AbsoluteTime);
    v15 = sub_10000CAD8(v17, a1, a4, @"bind_double[%d]", a2);
LABEL_16:
    *(v27 + 24) = v15;
    goto LABEL_5;
  }

  if (v9 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(cf);
    v15 = sub_100087AA4(a1, a2, Value, a4);
    goto LABEL_16;
  }

  if (v9 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(cf))
    {
      valuePtr = NAN;
      v20 = CFNumberGetValue(cf, kCFNumberDoubleType, &valuePtr);
      v21 = sub_100087A50(a1, a2, a4, valuePtr);
    }

    else
    {
      valuePtr = -3.72066208e-103;
      v20 = CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = sub_10000D258(a1, a2, *&valuePtr, a4);
    }

    *(v27 + 24) = v21;
LABEL_26:
    if (!v20)
    {
      sub_10001D9F0(2, a4, @"bind CFNumberGetValue failed for %@", cf);
      *(v27 + 24) = 0;
    }

    goto LABEL_5;
  }

  if (a4)
  {
    v22 = CFCopyTypeIDDescription(v9);
    sub_10001D9F0(20, a4, @"bind unsupported type %@", v22);
    if (v22)
    {
      CFRelease(v22);
    }
  }

LABEL_5:
  v10 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  return v10;
}

BOOL sub_10000CE9C(sqlite3_stmt *a1, uint64_t a2, const void *a3, unint64_t a4, CFTypeRef *a5)
{
  if (a4 >> 31)
  {
    return sub_10000CAD8(18, a1, a5, @"bind_blob[%d]: blob bigger than INT_MAX", a2);
  }

  v9 = sqlite3_bind_blob(a1, a2, a3, a4, 0xFFFFFFFFFFFFFFFFLL);
  return sub_10000CAD8(v9, a1, a5, @"bind_blob[%d]", a2);
}

BOOL sub_10000CF18(sqlite3_stmt *a1, CFArrayRef theArray, int *a3, CFTypeRef *a4)
{
  v5 = *a3;
  if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    v10 = Count;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v12;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
      if ((sub_10000CBCC(a1, (v5 + v13), ValueAtIndex, a4) & 1) == 0)
      {
        break;
      }

      v12 = v13 + 1;
      v11 = v13 + 1 >= v10;
    }

    while (v10 != v13 + 1);
    v5 += v13 + 1;
  }

  else
  {
    v11 = 1;
  }

  *a3 = v5;
  return v11;
}

uint64_t sub_10000CFD4(sqlite3_stmt *a1, uint64_t a2, const __CFArray *a3, _DWORD *a4, CFTypeRef *a5)
{
  v10 = *a4;
  v11 = *(a2 + 32);
  if (v11 >= 1)
  {
    v12 = (a2 + 272);
    do
    {
      v13 = v10;
      v10 = (v10 + 1);
      v14 = *v12;
      v12 += 2;
      if ((sub_10000CBCC(a1, v13, v14, a5) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (--v11);
  }

  v25 = -1431655766;
  if (!sub_1000099B4(*(a2 + 128), &v25))
  {
    if (sub_100009954(*(a2 + 128)))
    {
      *bytes = v10;
      goto LABEL_25;
    }

    v19 = *(a2 + 128);
    if (v19)
    {
      v20 = CFGetTypeID(v19);
      if (v20 == CFNullGetTypeID())
      {
        if (qword_10039DFD8 != -1)
        {
          dispatch_once(&qword_10039DFD8, &stru_100338EF0);
        }

        v21 = qword_10039DFE0;
      }

      else
      {
        v21 = *(a2 + 128);
      }
    }

    else
    {
      v21 = 0;
    }

    LODWORD(v15) = v10 + 1;
    v23 = sub_10000CBCC(a1, v10, v21, a5);
    *bytes = v10 + 1;
    if (v23)
    {
      v10 = (v10 + 1);
      goto LABEL_25;
    }

LABEL_29:
    result = 0;
    LODWORD(v10) = v15;
    goto LABEL_30;
  }

  if (qword_10039DFC8 != -1)
  {
    dispatch_once(&qword_10039DFC8, &stru_100338EB0);
  }

  v15 = (v10 + 1);
  if ((sub_10000CBCC(a1, v10, qword_10039DFD0, a5) & 1) == 0)
  {
    goto LABEL_29;
  }

  *bytes = 0x104B57A5353A5AA7;
  v27 = -1803342146;
  v28 = bswap32(v25);
  v16 = CFDataCreate(0, bytes, 16);
  v10 = (v10 + 2);
  v17 = sub_10000CBCC(a1, v15, v16, a5);
  v18 = v17;
  if (v16)
  {
    CFRelease(v16);
    *bytes = v10;
    if (v18)
    {
      goto LABEL_25;
    }

LABEL_20:
    result = 0;
    goto LABEL_30;
  }

  *bytes = v10;
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_25:
  v24 = *(a2 + 80);
  if (v24 && CFDataGetLength(v24) == 16 && (result = sub_10000CBCC(a1, v10, *(a2 + 80), a5), *bytes = v10 + 1, !result))
  {
    LODWORD(v10) = v10 + 1;
  }

  else
  {
    result = sub_10000CF18(a1, a3, bytes, a5);
    LODWORD(v10) = *bytes;
  }

LABEL_30:
  *a4 = v10;
  return result;
}

uint64_t sub_10000D2AC(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3, uint64_t a4)
{
  for (i = 0; ; i = (i + 1))
  {
    if (*(a1 + 24) == 1 && !sqlite3_stmt_readonly(pStmt))
    {
      v9 = sub_100006274("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sqlite3_sql(pStmt);
        *buf = 136315138;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecDbForEach: SecDbConnection is readonly but we're about to write: %s", buf, 0xCu);
      }
    }

    v11 = sqlite3_step(pStmt);
    if (v11 != 100)
    {
      break;
    }

    if (a4)
    {
      if (((*(a4 + 16))(a4, i) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v12 = sqlite3_sql(pStmt);
      sub_10001D9F0(100, a3, @"step[%d]: %s returned SQLITE_ROW with NULL row block", i, v12);
    }
  }

  if (v11 == 101)
  {
    return 1;
  }

  sub_10001C958(a1, v11, a3, @"SecDbForEach step[%d]", i);
  return 0;
}

BOOL sub_10000D43C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, _DWORD *a7, CFDataRef theData, char a9, __CFString **a10)
{
  v18 = CFDataGetLength(theData);
  length[0] = v18;
  if (CFEqual(a1, @"oe"))
  {
    CFDataGetMutableBytePtr(theData);
    if (a9)
    {
      v27 = v18;
      v19 = aks_kc_backup_wrap_key();
      if (v19)
      {
        v20 = sub_100006274("SecError");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          length[1] = 67109120;
          length[2] = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ks_crypt: aks_kc_backup_wrap_key returned %d", &length[1], 8u);
        }
      }

      else
      {
        length[0] = v27;
        if (a7)
        {
          *a7 = a4;
        }
      }

      goto LABEL_19;
    }

    v22 = aks_wrap_key();
LABEL_18:
    v19 = v22;
    goto LABEL_19;
  }

  if (!CFEqual(a1, @"od"))
  {
    if (!CFEqual(a1, @"odel"))
    {
      v19 = 3758097090;
      goto LABEL_36;
    }

    CFDataGetMutableBytePtr(theData);
    goto LABEL_17;
  }

  CFDataGetMutableBytePtr(theData);
  if (!a3)
  {
LABEL_17:
    v22 = aks_unwrap_key();
    goto LABEL_18;
  }

  v27 = v18;
  v21 = sub_100006274("ks_crypt");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(length[1]) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "have a backup_keypair, attempting to use", &length[1], 2u);
  }

  v19 = aks_kc_backup_unwrap_key();
  if (!v19)
  {
    length[0] = v27;
  }

LABEL_19:
  if (v19 > -536870161)
  {
    switch(v19)
    {
      case 0xE00002F0:
        return sub_1000103CC(-25291, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) No key available for class.", 3758097136, a1, a4, a2);
      case 0xE007C013:
        return sub_1000103CC(-26275, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.", v19, a1, a4, a2);
      case 0:
        CFDataSetLength(theData, length[0]);
        return 1;
    }

    goto LABEL_36;
  }

  if (v19 == -536870212)
  {
    return sub_1000103CC(-26275, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.", v19, a1, a4, a2);
  }

  if (v19 != -536870207 && v19 != -536870174)
  {
LABEL_36:
    if (!CFEqual(a1, @"od") && !CFEqual(a1, @"odel"))
    {
      return sub_1000103CC(-25291, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d)", v19, a1, a4, a2);
    }

    v27 = 0;
    *&length[1] = 0;
    v26 = sub_1001932F8(a2, a6, a5, &v27, &length[1], a10);
    if (*&length[1])
    {
      CFRelease(*&length[1]);
    }

    aks_ref_key_free();
    if (!v26)
    {
      return sub_1000103CC(-25291, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d)", v19, a1, a4, a2);
    }

    return sub_1000103CC(-26275, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.", v19, a1, a4, a2);
  }

  v23 = a4 == 10 || a4 == 7;
  v24 = "";
  if (v23)
  {
    v24 = " (hibernation?)";
  }

  return sub_1000103CC(-25308, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) Access to item attempted while keychain is locked%s.", v19, a1, a4, a2, v24);
}

void *sub_10000DA84(const __CFData *a1)
{
  v1 = sub_10000DAE4(0, a1, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

CFTypeRef sub_10000DAE4(int a1, CFDataRef theData, CFTypeRef *a3)
{
  cf = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v8 = &BytePtr[Length];
  v9 = sub_1000068E0(a1, &cf, a3, BytePtr, &BytePtr[Length]);
  if (!v9 || v9 == v8)
  {
    return cf;
  }

  sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, v10, @"trailing garbage after plist item");
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

BOOL sub_10000DB94(sqlite3_stmt *a1, CFTypeRef *a2)
{
  v4 = sqlite3_db_handle(a1);
  v5 = sqlite3_finalize(a1);
  return !v5 || sub_10001D8CC(v5, v4, a2, @"finalize: %p", a1);
}

void sub_10000DBFC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = *(v2 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10000DD04;
    block[3] = &unk_100335A10;
    block[4] = a1;
    block[5] = v2;
    v7 = v3;
    dispatch_sync(v4, block);
    if (v3 == 1)
    {
      dispatch_semaphore_signal(*(v2 + 120));
    }

    else
    {
      pthread_mutex_unlock((v2 + 56));
    }

    CFRelease(a1);
    CFRelease(v2);
  }

  else
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecDbConnectionRelease called with NULL dbconn", buf, 2u);
    }
  }
}

void sub_10000DD04(uint64_t a1)
{
  if (*(*(a1 + 32) + 48) == 1)
  {
    v2 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecDbConnectionRelease: IO failure reported in connection, throwing away currently idle caches", &v20, 2u);
    }

    CFArrayRemoveAllValues(*(*(a1 + 40) + 40));
    CFArrayRemoveAllValues(*(*(a1 + 40) + 48));
  }

  else
  {
    Count = CFArrayGetCount(*(*(a1 + 40) + 48));
    v4 = CFArrayGetCount(*(*(a1 + 40) + 40)) + Count;
    v5 = 40;
    if (*(a1 + 48))
    {
      v5 = 48;
    }

    v6 = *(*(a1 + 40) + v5);
    v7 = CFArrayGetCount(v6);
    if (*(a1 + 48))
    {
      v8 = 5;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(*(a1 + 40) + 166);
    if (v7 >= v8 || v4 >= v9)
    {
      if (v9 < 6)
      {
        v17 = sub_100006274("dbconn");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v18 = "rw";
        if (*(a1 + 48))
        {
          v18 = "ro";
        }

        v19 = *(*(a1 + 40) + 166);
        v20 = 136315394;
        v21 = v18;
        v22 = 1024;
        v23 = v19;
        v13 = "releasing %s connection rather than storing in size %d cache";
        v14 = v17;
        v15 = 18;
      }

      else
      {
        v11 = sub_100006274("SecError");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (*(a1 + 48))
        {
          v12 = "ro";
        }

        else
        {
          v12 = "rw";
        }

        v20 = 136315138;
        v21 = v12;
        v13 = "dbconn: did not expect to run out of room in the %s cache when releasing connection";
        v14 = v11;
        v15 = 12;
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
      return;
    }

    v16 = *(a1 + 32);

    CFArrayAppendValue(v6, v16);
  }
}

uint64_t sub_10000DF70(const void **a1, CFErrorRef *a2)
{
  v3 = sub_100009B80(a1, a2);
  v4 = a1[4];
  if (v4 >= 1)
  {
    v5 = a1 + 34;
    do
    {
      v7 = *v5;
      v5 += 2;
      v6 = v7;
      if (v7)
      {
        CFRelease(v6);
      }

      --v4;
    }

    while (v4);
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[16];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[21];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[22];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[17];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[18];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[23];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[26];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[27];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[29];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = a1[30];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = a1[10];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[31];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[28];
  if (v21)
  {
    CFRelease(v21);
  }

  free(a1);
  return v3;
}

uint64_t sub_10000E078(const __CFDictionary *a1, uint64_t a2)
{
  v3 = xmmword_100294920;
  v4 = a2;
  CFDictionaryApplyFunction(a1, sub_10000E5C4, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000E0E0(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (sub_10000E384(a1, a3) && sub_10000E384(a2, a3))
  {

    return ccder_sizeof();
  }

  else
  {
    sub_1000111B4(-6, @"com.apple.security.cfder.error", 0, a3, v5, @"null input");
    return 0;
  }
}

uint64_t sub_10000E17C(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v6.location = 0;
  v6.length = Length;
  CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, MaximumSizeForEncoding, &usedBufLen);
  return ccder_sizeof();
}

uint64_t sub_10000E1FC(const __CFDictionary *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v12[0] = 0xAAAAAAAAAAAAAA01;
  v12[1] = a2;
  BYTE1(v12[0]) = a3;
  v12[2] = Mutable;
  v12[3] = 0;
  CFDictionaryApplyFunction(a1, sub_10000E97C, v12);
  if ((v12[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v13.length = CFArrayGetCount(Mutable);
  v13.location = 0;
  CFArraySortValues(Mutable, v13, sub_10000EE08, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a2, v11, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_10000E384(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    sub_1000111B4(-5, @"com.apple.security.cfder.error", 0, a2, a5, @"Null CFType");
    return 0;
  }

  v7 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v7)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v9 = 0;
      v10 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 2);
        v9 += sub_10000E384(ValueAtIndex, a2);
        --v10;
      }

      while (v10 > 1);
    }

    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v7)
  {
LABEL_14:

    return ccder_sizeof();
  }

  if (CFDataGetTypeID() == v7)
  {
    CFDataGetLength(a1);

    return ccder_sizeof_raw_octet_string();
  }

  if (CFDateGetTypeID() == v7)
  {
    CFDateGetAbsoluteTime(a1);
    sub_100013024();
    goto LABEL_14;
  }

  if (CFDictionaryGetTypeID() == v7)
  {

    return sub_10000E078(a1, a2);
  }

  if (CFSetGetTypeID() == v7)
  {

    return sub_100089094(a1, a2);
  }

  if (CFStringGetTypeID() == v7)
  {

    return sub_10000E17C(a1);
  }

  if (CFNumberGetTypeID() != v7)
  {
    if (CFNullGetTypeID() == v7)
    {
      goto LABEL_14;
    }

    sub_1000111B4(-5, @"com.apple.security.cfder.error", 0, a2, v13, @"Unsupported CFType");
    return 0;
  }

  return sub_10000EACC(a1, a2);
}

uint64_t sub_10000E5C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    result = sub_10000E0E0(result, a2, *(a3 + 16));
    if (result)
    {
      *(a3 + 8) += result;
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_10000E614(const __CFString *a1, CFTypeRef *a2, uint64_t a3, UInt8 *a4, unint64_t a5)
{
  if (!a1)
  {
    sub_1000111B4(-5, @"com.apple.security.cfder.error", 0, a2, a5, @"Null CFType");
    return 0;
  }

  v10 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v10)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = Count + 1;
      v13 = a5;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12 - 2);
        v13 = sub_10000E614(ValueAtIndex, a2, a3, a4, v13);
        --v12;
      }

      while (v12 > 1);
    }

    goto LABEL_6;
  }

  if (CFBooleanGetTypeID() == v10)
  {
    CFBooleanGetValue(a1);
    ccder_encode_body();
    v15 = ccder_encode_tl();
LABEL_11:
    v17 = v15;
    if (!v15)
    {
      sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a2, v16, @"ccder failed to encode");
    }

    return v17;
  }

  if (CFDataGetTypeID() == v10)
  {

    return sub_10001263C(a1, a2);
  }

  if (CFDateGetTypeID() == v10)
  {
    AbsoluteTime = CFDateGetAbsoluteTime(a1);
    sub_1000126DC(a2, a3, a4, a5, AbsoluteTime);
LABEL_6:
    v15 = ccder_encode_constructed_tl();
    goto LABEL_11;
  }

  if (CFDictionaryGetTypeID() == v10)
  {

    return sub_10000E1FC(a1, a2, a3);
  }

  if (CFSetGetTypeID() == v10)
  {

    return sub_10008914C(a1, a2, a3);
  }

  if (CFStringGetTypeID() == v10)
  {

    return sub_10000ECFC(a1, a2, a4, a5, v20);
  }

  if (CFNumberGetTypeID() == v10)
  {

    return sub_10000EBA8(a1, a2, a4, a5);
  }

  if (CFNullGetTypeID() != v10)
  {
    sub_1000111B4(-5, @"com.apple.security.cfder.error", 0, a2, v21, @"Unsupported CFType");
    return 0;
  }

  return sub_100088EB8(a2);
}

void sub_10000E97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    v6 = sub_10000E0E0(a1, a2, *(a3 + 8));
    if (!v6)
    {
      *a3 = 0;
      return;
    }

    v7 = v6;
    Mutable = CFDataCreateMutable(*(a3 + 24), v6);
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v10 = *(a3 + 8);
    v11 = *(a3 + 1);
    v12 = sub_10000E614(a2, v10, v11, MutableBytePtr, &MutableBytePtr[v7]);
    sub_10000E614(a1, v10, v11, MutableBytePtr, v12);
    v13 = ccder_encode_constructed_tl();
    if (v13)
    {
      v16.length = v13 - MutableBytePtr;
      v16.location = 0;
      CFDataDeleteBytes(Mutable, v16);
      CFArrayAppendValue(*(a3 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, v10, v14, @"ccder failed to encode");
      *a3 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_10000EACC(const __CFNumber *a1, CFTypeRef *a2)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    if (HIBYTE(valuePtr) - 255 <= 0xFFFFFF01)
    {
      v4 = 9;
      v5 = 48;
      do
      {
        if ((v4 - 2) < 2)
        {
          break;
        }

        v6 = valuePtr >> v5;
        --v4;
        v5 -= 8;
      }

      while (HIBYTE(valuePtr) == v6);
    }

    return ccder_sizeof();
  }

  else
  {
    sub_1000111B4(-4, @"com.apple.security.cfder.error", 0, a2, v3, @"Unable to get number from data");
    return 0;
  }
}

uint64_t sub_10000EBA8(const __CFNumber *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    sub_1000111B4(-4, @"com.apple.security.cfder.error", 0, a2, v7, @"Unable to get number from data");
    return 0;
  }

  v8 = valuePtr;
  v9 = HIBYTE(valuePtr);
  if (HIBYTE(valuePtr) - 255 > 0xFFFFFF01)
  {
    v14 = 8;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = 9;
    v11 = 48;
    v12 = 1;
    while ((v10 - 2) >= 2)
    {
      v13 = valuePtr >> v11;
      --v10;
      v11 -= 8;
      if (v9 != v13)
      {
        v12 = v10 - 1;
        goto LABEL_11;
      }
    }

    v10 = 2;
LABEL_11:
    if ((((valuePtr >> (8 * v12 - 8)) ^ v9) & 0x80) != 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    if (!a4)
    {
      goto LABEL_22;
    }
  }

  if (a4 - a3 < v14)
  {
LABEL_22:
    sub_1000111B4(-3, @"com.apple.security.cfder.error", 0, a2, v7, @"Unknown size");
    return 0;
  }

  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  do
  {
    *--a4 = v8;
    v8 >>= 8;
    --v15;
  }

  while (v15);
  valuePtr = v8;
  result = ccder_encode_tl();
  if (!result)
  {
    sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a2, v17, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_10000ECFC(const __CFString *a1, CFTypeRef *a2, UInt8 *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    v14.location = 0;
    v14.length = Length;
    if (CFStringGetBytes(a1, v14, 0x8000100u, 0, 0, a3, a4 - a3, &usedBufLen) == Length)
    {
      ccder_encode_body();
      result = ccder_encode_tl();
      if (result)
      {
        return result;
      }

      sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a2, v12, @"ccder failed to encode");
    }

    else
    {
      sub_1000111B4(-5, @"com.apple.security.cfder.error", 0, a2, v10, @"String extraction failed");
    }
  }

  else
  {
    sub_1000111B4(-6, @"com.apple.security.cfder.error", 0, a2, a5, @"null input");
  }

  return 0;
}

uint64_t sub_10000EE08(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_10000EECC(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(*a2 + 48);
  v6 = sqlite3_column_int64(a1, 0);
  theDict = 0;
  while ((sub_10000F9B0(a1, v4, 1, *(a2 + 8), &theDict, 0, 0, v4 + 5) & 1) != 0)
  {
    if (!theDict)
    {
      *(v4 + 12) = v5;
      return;
    }

    if (!CFDictionaryContainsKey(theDict, kSecAttrTokenID) || (v7 = *(v4 + 12), (v7 & 1) != 0))
    {
      v9 = v4[30];
      if (v9)
      {
        Value = CFDictionaryGetValue(theDict, kSecValueData);
        if (!sub_10017A188(v9, Value))
        {
          goto LABEL_99;
        }
      }

      if (*v4 != &off_10033DFA8)
      {
        goto LABEL_45;
      }

      *buf = 0;
      v11 = v4[10];
      if (v11 && CFDataGetLength(v11) == 16)
      {
        v12 = *(a2 + 8);
        v13 = (v4 + 5);
        v14 = a1;
        v15 = v4;
        v16 = 4;
      }

      else
      {
        v12 = *(a2 + 8);
        v13 = (v4 + 5);
        v14 = a1;
        v15 = v4;
        v16 = 3;
      }

      if (!sub_10000F9B0(v14, v15, v16, v12, buf, 0, 0, v13) || !*buf)
      {
        goto LABEL_99;
      }

      v32 = CFDictionaryGetValue(theDict, kSecValueData);
      if (v32)
      {
        CFDictionarySetValue(*buf, @"certdata", v32);
        CFDictionaryRemoveValue(theDict, kSecValueData);
      }

      v33 = CFDictionaryGetValue(theDict, kSecAttrTokenID);
      if (v33)
      {
        CFDictionarySetValue(*buf, @"certtkid", v33);
        CFDictionaryRemoveValue(theDict, kSecAttrTokenID);
      }

      CFDictionaryApplyFunction(theDict, sub_10017A204, *buf);
      CFRelease(theDict);
      theDict = *buf;
LABEL_45:
      if (*(v4 + 116) == 1)
      {
        v34 = CFDictionaryGetValue(theDict, kSecAttrSharingGroup);
        if (v34)
        {
          v35 = v34;
          v36 = CFGetTypeID(v34);
          if (v36 == CFStringGetTypeID())
          {
            if (CFStringCompare(v35, kSecAttrSharingGroupNone, 0))
            {
              goto LABEL_99;
            }
          }
        }
      }

      if (!sub_100011FDC(*(a2 + 16), v4, *(a2 + 8), theDict))
      {
        goto LABEL_99;
      }

      v37 = CFDictionaryGetValue(theDict, kSecAttrPersistentReference);
      v38 = theDict;
      v39 = CFDictionaryGetValue(theDict, kSecValueData);
      v40 = *(v4 + 12);
      if ((v40 & 8) != 0)
      {
        if (v37 && CFDataGetLength(v37) == 16)
        {
          v42 = **v4;
          UUIDBasedPersistentRef = _SecItemCreateUUIDBasedPersistentRef();
        }

        else
        {
          v52 = sub_100006274("pref");
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v6;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "handle_result: Creating old persistent ref for %llu", buf, 0xCu);
          }

          v53 = **v4;
          UUIDBasedPersistentRef = _SecItemCreatePersistentRef();
        }

        v41 = UUIDBasedPersistentRef;
        v40 = *(v4 + 12);
      }

      else
      {
        v41 = 0;
      }

      switch(v40)
      {
        case 8:
          if (v37 && CFDataGetLength(v37) == 16)
          {
            v54 = **v4;
            PersistentRef = _SecItemCreateUUIDBasedPersistentRef();
          }

          else
          {
            v56 = sub_100006274("pref");
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v6;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "handle_result: Creating old persistent ref for %llu", buf, 0xCu);
            }

            v57 = **v4;
            PersistentRef = _SecItemCreatePersistentRef();
          }

          break;
        case 1:
          if (v39)
          {
            CFRetain(v39);
            v38 = v39;
            if (v41)
            {
              goto LABEL_88;
            }

            goto LABEL_89;
          }

          PersistentRef = CFDataCreate(kCFAllocatorDefault, 0, 0);
          break;
        case 0:
          v38 = kCFNull;
          if (!v41)
          {
            goto LABEL_89;
          }

LABEL_88:
          CFRelease(v41);
          goto LABEL_89;
        default:
          if ((v40 & 4) != 0)
          {
            CFDictionarySetValue(v38, kSecClass, **v4);
            goto LABEL_140;
          }

          if ((v40 & 2) == 0)
          {
            if (v39)
            {
              CFRetain(v39);
            }

            CFDictionaryRemoveAllValues(v38);
            if (v39 && (v4[6] & 1) != 0)
            {
              CFDictionarySetValue(v38, kSecValueData, v39);
              goto LABEL_139;
            }

            if (v39)
            {
LABEL_139:
              CFRelease(v39);
            }

LABEL_140:
            if ((v4[6] & 8) != 0 && v41)
            {
              CFDictionarySetValue(v38, kSecValuePersistentRef, v41);
            }

            CFRetain(v38);
            if (v41)
            {
              goto LABEL_88;
            }

LABEL_89:
            if (v38)
            {
              if (v38 != kCFNull)
              {
                if (v4[13] == 1)
                {
                  *(a2 + 24) = v38;
                  goto LABEL_95;
                }

                CFArrayAppendValue(*(a2 + 24), v38);
              }

              CFRelease(v38);
LABEL_95:
              ++*(a2 + 32);
            }

            if (CFDictionaryContainsKey(theDict, kSecAttrPersistentReference) && (v4[6] & 2) != 0)
            {
              CFDictionaryRemoveValue(theDict, kSecAttrPersistentReference);
            }

LABEL_99:
            v58 = theDict;
            *(v4 + 12) = v5;
            if (v58)
            {
LABEL_100:
              CFRelease(v58);
            }

            return;
          }

          if ((v40 & 1) == 0)
          {
            CFDictionaryRemoveValue(v38, kSecValueData);
          }

          v61 = (*v4)[2];
          if (!v61)
          {
LABEL_137:
            CFDictionaryRemoveValue(v38, kSecAttrUUID);
            goto LABEL_140;
          }

          v62 = 0;
          v63 = *v4 + 3;
          while (2)
          {
            if ((v61[2] & 0x10) != 0 && !CFDictionaryGetValue(v38, *v61) && v61[3])
            {
              v65 = 0;
              *buf = 0;
              if (!v62)
              {
                v62 = sub_10001A690(*v4, v38, dword_10039E2F8, buf);
                v65 = *buf;
              }

              if (v65 || !v62)
              {
                goto LABEL_133;
              }

              if (*(v61 + 2) != 7 || (v4[6] & 1) != 0)
              {
                v66 = v61[3](v62, v61, buf);
                v65 = *buf;
                if (!*buf && v66)
                {
                  CFDictionarySetValue(v38, *v61, v66);
                  goto LABEL_132;
                }

                if (v66)
                {
LABEL_132:
                  CFRelease(v66);
                  v65 = *buf;
                }

LABEL_133:
                if (v65)
                {
                  *buf = 0;
                  CFRelease(v65);
                }
              }
            }

            v64 = *v63++;
            v61 = v64;
            if (!v64)
            {
              if (v62)
              {
                CFRelease(v62);
              }

              goto LABEL_137;
            }

            continue;
          }
      }

      v38 = PersistentRef;
      if (!v41)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    *(v4 + 12) = v7 | 1;
    v8 = theDict;
    if (theDict)
    {
      theDict = 0;
      CFRelease(v8);
    }
  }

  v17 = v4[5];
  OSStatus = SecErrorGetOSStatus();
  v19 = OSStatus;
  if (OSStatus > -25331)
  {
    if (OSStatus == -25330)
    {
      v49 = sub_100006274("SecWarning");
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v50 = **v4;
      v51 = v4[5];
      *buf = 138413058;
      *&buf[4] = v50;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      *&buf[22] = 1024;
      LODWORD(v69) = -25330;
      WORD2(v69) = 2112;
      *(&v69 + 6) = v51;
      v47 = "Authentication is needed for %@,rowid=%lld (%d): %@";
      v48 = v49;
LABEL_59:
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v47, buf, 0x26u);
      return;
    }

    if (OSStatus == -25308)
    {
      if (qword_10039E078 != -1)
      {
        dispatch_once(&qword_10039E078, &stru_100339C50);
      }

      dispatch_source_merge_data(qword_10039E080, 1uLL);
      return;
    }

LABEL_55:
    v44 = sub_100006274("SecError");
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v45 = **v4;
    v46 = v4[5];
    *buf = 138413058;
    *&buf[4] = v45;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 1024;
    LODWORD(v69) = v19;
    WORD2(v69) = 2112;
    *(&v69 + 6) = v46;
    v47 = "decode %@,rowid=%lld failed (%d): %@";
    v48 = v44;
    goto LABEL_59;
  }

  if (OSStatus == -34018)
  {
    goto LABEL_111;
  }

  if (OSStatus != -26275)
  {
    goto LABEL_55;
  }

  v20 = sub_100006274("SecWarning");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = **v4;
    v22 = v4[5];
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    *&v69 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ignoring corrupt %@,rowid=%lld %@", buf, 0x20u);
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, **v4);
  v24 = sub_10000869C(0);
  if (v24)
  {
    v25 = v24;
    CFRetain(v24);
    CFRetain(Copy);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_1001849CC;
    *&v69 = &unk_100342610;
    *(&v69 + 1) = v25;
    v70 = Copy;
    v71 = v6;
    if (qword_10039E198 != -1)
    {
      dispatch_once(&qword_10039E198, &stru_100343060);
    }

    dispatch_async(qword_10039E1A0, buf);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  v26 = sub_10000FDB8(a1, 1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Mutable)
  {
    BytePtr = CFDataGetBytePtr(v26);
    Length = CFDataGetLength(v26);
    if ((Length & 0x8000000000000000) == 0)
    {
      v30 = Length;
      CFStringAppendFormat(Mutable, 0, @"%04lx:", Length);
      if (v30 > 8)
      {
        *buf = 0;
        CNCRC();
        for (i = 0; i != 8; ++i)
        {
          CFStringAppendFormat(Mutable, 0, @"%02X", BytePtr[i]);
        }

        CFStringAppendFormat(Mutable, 0, @"...|%08llx", *buf);
      }

      else
      {
        for (; v30; --v30)
        {
          v31 = *BytePtr++;
          CFStringAppendFormat(Mutable, 0, @"%02X", v31);
        }
      }
    }

    v60 = sub_100006274("item");
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = Mutable;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "corrupted edata=%@", buf, 0xCu);
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_111:
  v58 = v4[5];
  if (v58)
  {
    v4[5] = 0;
    goto LABEL_100;
  }
}

uint64_t sub_10000F9B0(sqlite3_stmt *a1, uint64_t a2, int a3, const __CFArray *a4, const void **a5, void *a6, _DWORD *a7, __CFString **a8)
{
  v14 = sub_10000FDB8(a1, a3);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  cf = 0;
  v29 = 0;
  v16 = (*(a2 + 48) & 5) != 0 || *(a2 + 208) || *(a2 + 216) || *(a2 + 232);
  v17 = objc_autoreleasePoolPush();
  v18 = sub_10000BAD8(*(a2 + 120), 0, @"od", &cf, *(a2 + 144), v15, *a2, *(a2 + 184), a5, &v29, v16, a7, a8);
  objc_autoreleasePoolPop(v17);
  if (v18)
  {
    if (v29 > 1)
    {
      v20 = SecAccessControlCopyData();
      Value = CFDictionaryGetValue(*a5, kSecAttrAccessGroup);
      if (sub_1000091A8(a4, Value, 0))
      {
        if (v29 >= 4)
        {
          CFDictionarySetValue(*a5, kSecAttrAccessControl, v20);
        }

        v19 = 1;
      }

      else
      {
        v25 = sub_100006274("SecError");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = CFDictionaryGetValue(*a5, kSecAttrAccessGroup);
          *buf = 138412546;
          v32 = v26;
          v33 = 2112;
          v34 = a4;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "item's accessGroup '%@' not in %@", buf, 0x16u);
        }

        v27 = CFDictionaryGetValue(*a5, kSecAttrAccessGroup);
        sub_1000103CC(-34018, a8, @"item's access group '%@' not in %@", v27, a4);
        v28 = *a5;
        if (*a5)
        {
          *a5 = 0;
          CFRelease(v28);
        }

        v19 = 0;
      }

      goto LABEL_11;
    }

    sub_1000103CC(-26275, a8, @"version is unexpected: %d", v29);
  }

  v19 = 0;
  v20 = 0;
LABEL_11:
  v21 = cf;
  if (a6)
  {
    if (cf)
    {
      CFRetain(cf);
      v22 = cf;
    }

    else
    {
      v22 = 0;
    }

    *a6 = v21;
    v21 = v22;
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(v15);
  return v19;
}

BOOL sub_10000FD04(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 56);
  v3 = *(v2 + 40);
  if (v3)
  {
    Code = CFErrorGetCode(v3);
    v5 = Code == -25330;
    v2 = *(a1 + 56);
    if (*(v2 + 152) == 1 && Code == -25330)
    {
      v7 = *(v2 + 40);
      if (v7)
      {
        *(v2 + 40) = 0;
        CFRelease(v7);
        v2 = *(a1 + 56);
      }

      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(v2 + 104);
  return (v8 == -1 || v8 > *(*(a1 + 64) + 32)) && (*(v2 + 40) == 0 || v5);
}

CFDataRef sub_10000FDB8(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_blob(a1, a2);
  v5 = sqlite3_column_bytes(a1, a2);

  return CFDataCreateWithBytesNoCopy(0, v4, v5, kCFAllocatorNull);
}

void sub_10000FFEC(uint64_t a1)
{
  v2 = qword_10039E2E8;
  if (!qword_10039E2E8)
  {
    v3 = [objc_alloc(*(a1 + 40)) _init];
    v4 = qword_10039E2E8;
    qword_10039E2E8 = v3;

    v2 = qword_10039E2E8;
  }

  v5 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v5, v2);
}

id sub_100010058(void *a1, uint64_t a2)
{
  v2 = [a1 valueForEntitlement:a2];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100010118(CFIndex a1, const __CFString *a2, __CFString *cf, CFTypeRef *a4, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return;
  }

  if (*a4)
  {
    if (cf && *a4 != cf)
    {

      CFRelease(cf);
    }

    return;
  }

  v10 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
  v28 = 0;
  if (!cf)
  {
    goto LABEL_30;
  }

  v11 = CFErrorCopyUserInfo(cf);
  Value = CFDictionaryGetValue(v11, kCFErrorDescriptionKey);
  if (Value)
  {
    v13 = CFStringCompare(v10, Value, 0) == kCFCompareEqualTo;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = 0;
  if (v11)
  {
LABEL_11:
    CFRelease(v11);
  }

LABEL_12:
  Code = CFErrorGetCode(cf);
  Domain = CFErrorGetDomain(cf);
  v16 = CFStringCompare(a2, Domain, 0);
  v18 = Code == a1 && v16 == kCFCompareEqualTo;
  v19 = cf;
  if (v18 && v13)
  {
    goto LABEL_19;
  }

  v21 = CFErrorCopyUserInfo(cf);
  if (v21)
  {
    v22 = v21;
    v23 = kSOSCountKey;
    if (CFDictionaryContainsKey(v21, kSOSCountKey) == 1)
    {
      v24 = CFDictionaryGetValue(v22, v23);
      if (v24)
      {
        valuePtr = 0;
        CFNumberGetValue(v24, kCFNumberLongType, &valuePtr);
        if (valuePtr > 199)
        {
          CFRelease(v22);
          v19 = cf;
LABEL_19:
          CFRetain(v19);
          *a4 = cf;
          CFRelease(cf);
          if (!v10)
          {
            return;
          }

          v20 = v10;
          goto LABEL_44;
        }

        v28 = valuePtr + 1;
      }
    }

    CFRelease(v22);
  }

LABEL_30:
  v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v28);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v27 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, kCFErrorUnderlyingErrorKey, cf);
  }

  if (v25)
  {
    CFDictionaryAddValue(v27, kSOSCountKey, v25);
  }

  if (v10)
  {
    CFDictionaryAddValue(v27, kCFErrorDescriptionKey, v10);
  }

  *a4 = CFErrorCreate(kCFAllocatorDefault, a2, a1, v27);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    v20 = cf;
LABEL_44:
    CFRelease(v20);
  }
}

BOOL sub_1000103CC(int a1, __CFString **a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1)
  {
    cf = 0;
    if (a2)
    {
      sub_100010118(a1, kCFErrorDomainOSStatus, *a2, &cf, format, va);
      *a2 = cf;
    }

    else
    {
      sub_100010118(a1, kCFErrorDomainOSStatus, 0, &cf, format, va);
      v5 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v5);
      }
    }
  }

  return a1 == 0;
}

xpc_object_t sub_100010460(__CFError *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  Domain = CFErrorGetDomain(a1);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_1000105D8;
  v15[3] = &unk_100335F40;
  v15[4] = v2;
  v15[5] = "domain";
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = sub_1000105E8;
  v16[3] = &unk_100335678;
  v16[4] = v15;
  sub_100008380(Domain, v16);
  Code = CFErrorGetCode(a1);
  xpc_dictionary_set_int64(v2, "code", Code);
  v5 = CFErrorCopyUserInfo(a1);
  v9 = sub_10000E384(v5, 0, v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = malloc_type_malloc(v9, 0xD5244697uLL);
    v12 = &v11[v10];
    v13 = sub_10000E614(v5, 0, 0, v11, v12);
    if (v13)
    {
      xpc_dictionary_set_data(v2, "userinfo", v13, v12 - v13);
    }

    free(v11);
  }

  CFRelease(v5);
  return v2;
}

uint64_t sub_10001078C()
{
  v0 = sub_100006274("KCSharingSyncController");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 67109120;
    v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "KCSharingCloudCoreAdoption is %d", &v3, 8u);
  }

  if (qword_10039DBA8 != -1)
  {
    dispatch_once(&qword_10039DBA8, &stru_1003346A8);
  }

  v1 = sub_100006274("KCSharingSyncController");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 67109120;
    v4 = byte_10039DBA0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "KCSharingCloudCoreAdoption FF value: %d", &v3, 8u);
  }

  return byte_10039DBA0;
}

id sub_1000108D0(id a1, NSError *a2, NSString *a3)
{
  v4 = a2;
  if ([(NSString *)a3 isEqualToString:NSLocalizedDescriptionKey])
  {
    v5 = v4;
    v6 = [(NSError *)v5 domain];
    v7 = [v6 isEqualToString:@"KCSharingErrorDomain"];

    if (v7)
    {
      v8 = 0;
      switch([(NSError *)v5 code])
      {
        case 1:
          v9 = [(NSError *)v5 userInfo];
          v10 = [v9 objectForKeyedSubscript:@"KCSharingInvalidAttribute"];
          [NSString stringWithFormat:@"Item has invalid attributes: %@", v10];
          goto LABEL_32;
        case 2:
          v9 = [(NSError *)v5 userInfo];
          v10 = [v9 objectForKeyedSubscript:@"KCSharingErrorRecordType"];
          [NSString stringWithFormat:@"Unknown record type '%@'", v10];
          goto LABEL_32;
        case 3:
          v8 = @"Failed to decode local entry data blob";
          break;
        case 4:
          v8 = @"Failed to decode remote item blob";
          break;
        case 5:
          v8 = @"Credential and sidecar sharing groups don't match";
          break;
        case 7:
          v8 = @"Can't parse sharing group from record ID";
          break;
        case 8:
          v8 = @"Can't create entry from deletion";
          break;
        case 9:
          v8 = @"Entry doesn't exist";
          break;
        case 0xDLL:
          v8 = @"Can't decode item from share entry";
          break;
        case 0xELL:
          v9 = [(NSError *)v5 userInfo];
          v10 = [v9 objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];
          [NSString stringWithFormat:@"Group sharing sync failed for reasons: %@", v10];
          goto LABEL_32;
        case 0xFLL:
          v8 = @"Operation not allowed";
          break;
        case 0x12:
          v9 = [(NSError *)v5 userInfo];
          v10 = [v9 objectForKeyedSubscript:@"underlyingErrors"];
          [NSString stringWithFormat:@"Operation failed for reasons: %@", v10];
          goto LABEL_32;
        case 0x13:
          v8 = @"Failed to decode shared passkey user entity";
          break;
        case 0x14:
          v8 = @"The requested functionality is not fully implemented yet";
          break;
        case 0x15:
          v8 = @"Can't decode share from item entry";
          break;
        case 0x16:
          v9 = [(NSError *)v5 userInfo];
          v10 = [v9 objectForKeyedSubscript:@"KCSharingMissingAttribute"];
          [NSString stringWithFormat:@"Item is missing attribute '%@'", v10];
          v8 = LABEL_32:;

          break;
        case 0x22:
          v8 = @"Local and remote shared groups are out of sync";
          break;
        case 0x23:
          v8 = @"Can't complete operation because the keychain is locked";
          break;
        case 0x24:
          v8 = @"The Internet connection appears to be offline.";
          break;
        case 0x25:
          v8 = @"An operation of this type is already enqueued";
          break;
        case 0x26:
          v8 = @"Failed to acquire DB while using CloudCore Module";
          break;
        case 0x27:
          v8 = @"Object No Longer Exists";
          break;
        case 0x28:
          v8 = @"Missing operation queue";
          break;
        case 0x29:
          v8 = @"CloudCore Session acquisition in progress";
          break;
        case 0x2BLL:
          v8 = @"Missing CloudCore Session";
          break;
        case 0x2CLL:
          v8 = @"Failed to reprocess Mirror entries";
          break;
        default:
          break;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_100010CA8(const __CFDictionary *a1, uint64_t a2, __CFString **a3)
{
  if (!sub_10000639C(a1, 3, a3))
  {
    return 0;
  }

  v6 = sub_100011D64(a2);
  if (!v6)
  {
    return sub_1000103CC(-34018, a3, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (!Count)
  {
    CFRelease(v7);
    return sub_1000103CC(-34018, a3, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v9 = Count;
  Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
  if (!Value || (sub_1000091A8(v7, Value, a2) & 1) != 0)
  {
    kdebug_trace();
    v21.location = 0;
    v21.length = v9;
    if (CFArrayContainsValue(v7, v21, @"*"))
    {
      CFRelease(v7);
      v7 = 0;
    }

    v11 = sub_100006454(a1, *(a2 + 24), -1, a2, a3);
    if (!v11)
    {
      v16 = 0;
LABEL_42:
      if (v7)
      {
        CFRelease(v7);
      }

      kdebug_trace();
      return v16;
    }

    v12 = v11;
    v13 = *(v11 + 192);
    if (v13 == 2 || v13 == 1 && *(a2 + 36) == 1)
    {
      v14 = *(v11 + 128);
      if (v14)
      {
        *(v12 + 128) = 0;
        CFRelease(v14);
      }

      *(v12 + 128) = CFDataCreateWithBytesNoCopy(0, byte_100294A38, 16, kCFAllocatorNull);
    }

    else
    {
      *(v11 + 192) = 0;
    }

    sub_100009B34(v12, v7);
    if (*(a2 + 44) == 1 && (sub_100184F24(a2) & 1) == 0)
    {
      v18 = sub_1000103CC(-34020, a3, @"App clips are not permitted to use access groups other than application identifier");
LABEL_41:
      v16 = sub_100019700(v12, v18, a3);
      goto LABEL_42;
    }

    if (*(v12 + 192) && (*(a2 + 16) & 1) == 0)
    {
      v17 = @"client doesn't have entitlement for system keychain";
    }

    else if (*(v12 + 196) && (*(a2 + 17) & 1) == 0)
    {
      v17 = @"client doesn't have entitlement for syncbubble keychain";
    }

    else
    {
      if (*(v12 + 104) != -1)
      {
        v17 = @"match limit not supported by delete";
LABEL_39:
        v19 = -50;
        goto LABEL_40;
      }

      if (*(v12 + 24) != *(v12 + 16))
      {
        v17 = @"match not supported by delete";
        goto LABEL_39;
      }

      if (*(v12 + 64))
      {
        v17 = @"value ref not supported by delete";
        goto LABEL_39;
      }

      if (*(v12 + 72) && *(v12 + 32))
      {
        v17 = @"rowid and other attributes are mutually exclusive";
        goto LABEL_39;
      }

      if (*(v12 + 240) && *(v12 + 32) != 1)
      {
        v17 = @"token persistent ref and other attributes are mutually exclusive";
        goto LABEL_39;
      }

      if (*(v12 + 116) != 1 || !CFDictionaryContainsKey(*(v12 + 8), kSecAttrSharingGroup))
      {
        sub_100185528(@"delete", Value, a2);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 0x40000000;
        v20[2] = sub_100014158;
        v20[3] = &unk_100342838;
        v20[4] = a3;
        v20[5] = v12;
        v20[6] = v7;
        v18 = sub_100008A70(1, 1, 0, a3, v20);
        goto LABEL_41;
      }

      v17 = @"can't delete shared items without Keychain Sharing client entitlement";
    }

    v19 = -34018;
LABEL_40:
    v18 = sub_1000103CC(v19, a3, v17);
    goto LABEL_41;
  }

  sub_1000103CC(-34018, a3, @"Client explicitly specifies access group %@ but is only entitled for %@", Value, v7);
  CFRelease(v7);
  return 0;
}

CFDictionaryRef sub_10001104C(CFAllocatorRef allocator, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v22 = &a10;
  v11 = 0;
  if (a9)
  {
    do
    {
      v11 += 2;
      v12 = v22;
      v22 += 2;
    }

    while (v12[1]);
  }

  v13 = v11 >> 1;
  v23 = &a9;
  Mutable = CFDictionaryCreateMutable(allocator, v11 >> 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  if (v11)
  {
    do
    {
      v16 = v23;
      v17 = *v23;
      v23 += 2;
      v18 = v16[1];
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = kCFNull;
      }

      CFDictionarySetValue(v15, v17, v19);
      --v13;
    }

    while (v13);
  }

  Copy = CFDictionaryCreateCopy(allocator, v15);
  CFRelease(v15);
  return Copy;
}

void sub_100011140(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (sub_100014C4C())
  {
    off_10039DD08(77, v4, v3, 0);
  }
}

void sub_1000111E4(const void *a1, const __CFString *a2, uint64_t a3)
{
  if (CFEqual(a1, @"u_ItemList"))
  {
    *(a3 + 88) = a2;
    return;
  }

  if (!CFEqual(a1, kSecUseTombstones))
  {
    if (CFEqual(a1, kSecUseCredentialReference))
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFDataGetTypeID())
      {
        if (*(a3 + 144) != a2)
        {
          CFRetain(a2);
          v8 = *(a3 + 144);
          if (v8)
          {
            CFRelease(v8);
          }

          *(a3 + 144) = a2;
        }
      }

      else
      {
        sub_1000103CC(-50, (a3 + 40), @"add_use: value %@ for key %@ is not CFData", a2, a1);
      }

      return;
    }

    if (CFEqual(a1, kSecUseAuthenticationUI))
    {
      v13 = CFGetTypeID(a2);
      if (v13 == CFStringGetTypeID())
      {
        if (kSecUseAuthenticationUISkip)
        {
          v14 = CFEqual(kSecUseAuthenticationUISkip, a2) != 0;
        }

        else
        {
          v14 = 0;
        }

        *(a3 + 152) = v14;
      }

      else
      {
        sub_1000103CC(-50, (a3 + 40), @"add_use: value %@ for key %@ is not CFString", a2, a1);
      }

      return;
    }

    v15 = kSecUseSystemKeychain;
    if (CFEqual(a1, kSecUseSystemKeychain))
    {
      *(a3 + 120) = dword_10039E2F8;
      if (*(a3 + 192) == 2)
      {
        v19 = kSecUseSystemKeychainAlways;
        v20 = v15;
LABEL_29:
        sub_1000103CC(-50, (a3 + 40), @"add_use: can't specify both %@ and %@", v19, v20);
        return;
      }

      v17 = 1;
    }

    else
    {
      if (qword_10039E138 != -1)
      {
        dispatch_once(&qword_10039E138, &stru_100342138);
      }

      if (byte_10039E130 != 1 || (v16 = kSecUseSystemKeychainAlways, !CFEqual(a1, kSecUseSystemKeychainAlways)))
      {
        if (CFEqual(a1, kSecUseSyncBubbleKeychain))
        {
          v18 = CFGetTypeID(a2);
          if (v18 == CFNumberGetTypeID() && CFNumberGetValue(a2, kCFNumberSInt32Type, (a3 + 196)) && *(a3 + 196) >= 1)
          {
            *(a3 + 120) = dword_10039E2F8;
          }

          else
          {
            sub_1000103CC(-50, (a3 + 40), @"add_use: value %@ for key %@ is not valid uid", a2, a1);
          }
        }

        else
        {
          sub_1000103CC(-50, (a3 + 40), @"add_use: unknown key %@", a1);
        }

        return;
      }

      if (*(a3 + 192) == 1)
      {
        v19 = v15;
        v20 = v16;
        goto LABEL_29;
      }

      *(a3 + 120) = dword_10039E2F8;
      v17 = 2;
    }

    *(a3 + 192) = v17;
    return;
  }

  v6 = CFGetTypeID(a2);
  if (v6 == CFBooleanGetTypeID())
  {
    *(a3 + 96) = a2;
    return;
  }

  v9 = CFGetTypeID(a2);
  if (v9 == CFNumberGetTypeID())
  {
    Value = CFBooleanGetValue(a2);
  }

  else
  {
    v11 = CFGetTypeID(a2);
    if (v11 != CFStringGetTypeID())
    {
      sub_1000103CC(-50, (a3 + 40), @"add_use: value %@ for key %@ is neither CFBoolean nor CFNumber", a2, a1);
      return;
    }

    Value = CFStringGetIntValue(a2);
  }

  v12 = &kCFBooleanTrue;
  if (!Value)
  {
    v12 = &kCFBooleanFalse;
  }

  *(a3 + 96) = *v12;
}

void sub_100011524(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10001165C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_10039B218 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100011920(v6, qword_10039B220);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Returning UserCKRecordID from a sesson", v9, 2u);
  }

  if (*a1)
  {
    v10 = type metadata accessor for AuthenticatedSession.ResolvedUser();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    __chkstk_darwin();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

    AuthenticatedSession.resolvedUser.getter();
    v15 = AuthenticatedSession.ResolvedUser.userRecordID.getter();

    result = (*(v11 + 8))(v14, v10);
    *a3 = v15;
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Missing CloudCore Session", v19, 2u);
    }

    type metadata accessor for KCSharingError(0);
    sub_10001196C(&_swiftEmptyArrayStorage);
    sub_10002C07C(&qword_10039B310, type metadata accessor for KCSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    result = swift_willThrow();
    *a2 = v20[1];
  }

  return result;
}

uint64_t sub_100011920(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10001196C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002ACB8(&qword_10039B338, &qword_1002942A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002BD94(v4, &v13, &qword_10039B330, &qword_1002942A0);
      v5 = v13;
      v6 = v14;
      result = sub_10002AD24(v13, v14, sub_100029EA8);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10002BB38(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100011AB0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 userInfo];
    v4 = [v3 objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

    if (v4)
    {
      v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = sub_100011AB0(*(*(&v19 + 1) + 8 * i));
            [v5 addObject:{v11, v19}];
          }

          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      v12 = [v2 userInfo];
      v13 = [v12 mutableCopy];

      v14 = [v5 copy];
      [v13 setObject:v14 forKeyedSubscript:NSMultipleUnderlyingErrorsKey];

      v15 = [v2 domain];
      v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v15, [v2 code], v13);

      v17 = CKXPCSuitableError();
    }

    else
    {
      v17 = CKXPCSuitableError();
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

CFArrayRef *sub_100011D64(CFArrayRef *a1)
{
  MutableCopy = a1;
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      v6.length = CFArrayGetCount(v2);
      v6.location = 0;
      if (CFArrayContainsValue(MutableCopy[1], v6, kSecAttrAccessGroupToken))
      {
        MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy[1]);
        v7.length = CFArrayGetCount(MutableCopy);
        v7.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v7, kSecAttrAccessGroupToken);
        if (FirstIndexOfValue != -1)
        {
          for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(MutableCopy, v8, kSecAttrAccessGroupToken))
          {
            CFArrayRemoveValueAtIndex(MutableCopy, i);
            v8.length = CFArrayGetCount(MutableCopy);
            v8.location = 0;
          }
        }
      }

      else
      {
        MutableCopy = MutableCopy[1];
        if (MutableCopy)
        {
          CFRetain(MutableCopy);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return MutableCopy;
}

CFDataRef sub_100011E48(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(a1) != 20)
  {
    return 0;
  }

  v3 = CFGetAllocator(a1);

  return CFDataCreateCopy(v3, a1);
}

const void *sub_100011EB8(const void *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFDateGetTypeID())
  {
    return 0;
  }

  CFRetain(v1);
  return v1;
}

CFDataRef sub_100011F00(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFDataGetTypeID())
  {
    if ((CFDataGetLength(a1) & 0xFFFFFFFFFFFFFFEFLL) == 0)
    {

      return CFDataCreateCopy(0, a1);
    }

    return 0;
  }

  if (v2 != CFNullGetTypeID())
  {
    if (v2 == CFUUIDGetTypeID())
    {
      v4 = CFUUIDGetUUIDBytes(a1);
      return CFDataCreate(0, &v4.byte0, 16);
    }

    return 0;
  }

  return CFDataCreate(0, 0, 0);
}

unint64_t sub_100011FDC(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict)
{
  if (*(a2 + 176))
  {
    Value = CFDictionaryGetValue(theDict, kSecAttrIssuer);
    if (!sub_10018450C(a1, a3, *(a2 + 128), Value, *(a2 + 176), 10))
    {
      return 0;
    }
  }

  if (!*(a2 + 208))
  {
    goto LABEL_6;
  }

  if (*a2 == &off_10033DFA8)
  {
    v11 = &off_10033DFA8;
  }

  else
  {
    v9 = *a2;
    if (v9 != sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8))
    {
LABEL_6:
      v10 = 0;
      goto LABEL_36;
    }

    v11 = *a2;
  }

  v12 = sub_1001847A0(v11, theDict);
  if (!v12)
  {
    return 0;
  }

  v10 = v12;
  v13 = *(a2 + 208);
  v14 = *(a2 + 216);
  trust = 0;
  values[0] = v12;
  if (!v13)
  {
    goto LABEL_108;
  }

  result = -1431655766;
  v15 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
  if (SecTrustCreateWithCertificates(v15, v13, &trust) || v14 && (v16 = CFGetTypeID(v14), v16 == CFDateGetTypeID()) && SecTrustSetVerifyDate(trust, v14))
  {
    v21 = 0;
    goto LABEL_30;
  }

  v17 = SecPolicyCopyProperties(v13);
  v18 = v17;
  if (v17)
  {
    v19 = CFDictionaryGetValue(v17, kSecPolicyOid);
    if (v19)
    {
      v20 = v19;
      if (CFEqual(v19, kSecPolicyAppleX509Basic) || CFEqual(v20, kSecPolicyAppleRevocation))
      {
        if (SecTrustEvaluate(trust, &result))
        {
          v21 = 0;
LABEL_29:
          CFRelease(v18);
          goto LABEL_30;
        }

        goto LABEL_22;
      }
    }
  }

  if (!SecTrustEvaluateLeafOnly())
  {
LABEL_22:
    v21 = result == kSecTrustResultUnspecified || result == kSecTrustResultProceed;
    if (v18)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v21 = 0;
  if (v18)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (v15)
  {
    CFRelease(v15);
  }

  if (trust)
  {
    CFRelease(trust);
    if (!v21)
    {
      goto LABEL_108;
    }
  }

  else if (!v21)
  {
    goto LABEL_108;
  }

LABEL_36:
  if (*(a2 + 216))
  {
    if (*a2 == &off_10033DFA8 || (v23 = *a2, v23 == sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8)))
    {
      if (!v10)
      {
        v10 = sub_1001847A0(*a2, theDict);
        if (!v10)
        {
          return 0;
        }
      }

      v40 = *(a2 + 216);
      if (!v40)
      {
        goto LABEL_108;
      }

      AbsoluteTime = CFDateGetAbsoluteTime(v40);
      SecCertificateNotValidBefore();
      v43 = v42;
      SecCertificateNotValidAfter();
      if (v43 == 0.0 || v44 == 0.0 || v43 == v44)
      {
        v45 = sub_100006274("FilterWithDate");
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_108;
        }

        LOWORD(values[0]) = 0;
        v46 = "certificate cannot operate";
      }

      else if (AbsoluteTime >= v43)
      {
        if (AbsoluteTime <= v44)
        {
          goto LABEL_39;
        }

        v45 = sub_100006274("FilterWithDate");
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_108;
        }

        LOWORD(values[0]) = 0;
        v46 = "certificate expired";
      }

      else
      {
        v45 = sub_100006274("FilterWithDate");
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_108;
        }

        LOWORD(values[0]) = 0;
        v46 = "certificate is not valid yet";
      }

      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v46, values, 2u);
      goto LABEL_108;
    }
  }

LABEL_39:
  if (*(a2 + 232))
  {
    if (*a2 == &off_10033DFA8 || (v24 = *a2, v24 == sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8)))
    {
      if (!v10)
      {
        v10 = sub_1001847A0(*a2, theDict);
        if (!v10)
        {
          return 0;
        }
      }

      v25 = CFBooleanGetValue(*(a2 + 232));
      values[0] = v10;
      if (v25)
      {
        v26 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
        trust = 0;
        BasicX509 = SecPolicyCreateBasicX509();
        v29 = BasicX509 && !SecTrustCreateWithCertificates(v26, BasicX509, &trust) && (result = -1431655766, !SecTrustEvaluate(trust, &result)) && (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed);
        if (trust)
        {
          CFRelease(trust);
        }

        if (BasicX509)
        {
          CFRelease(BasicX509);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (!v29)
        {
          goto LABEL_108;
        }
      }
    }
  }

  if (!*(a2 + 224))
  {
    goto LABEL_78;
  }

  if (*a2 != &off_10033DFA8)
  {
    v30 = *a2;
    if (v30 != sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8))
    {
      goto LABEL_78;
    }
  }

  if (!v10)
  {
    v10 = sub_1001847A0(*a2, theDict);
    if (!v10)
    {
      return 0;
    }
  }

  v31 = *(a2 + 224);
  if (!v31)
  {
    goto LABEL_108;
  }

  v32 = CFGetTypeID(*(a2 + 224));
  if (v32 != CFStringGetTypeID())
  {
    goto LABEL_108;
  }

  values[0] = 0;
  if (SecCertificateCopyEmailAddresses(v10, values) || !values[0])
  {
    goto LABEL_108;
  }

  Count = CFArrayGetCount(values[0]);
  if (Count < 1)
  {
    if (values[0])
    {
      CFRelease(values[0]);
    }

    goto LABEL_108;
  }

  v34 = Count;
  v35 = 0;
  v36 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(values[0], v35);
    if (ValueAtIndex && CFStringCompare(v31, ValueAtIndex, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    v36 = ++v35 < v34;
  }

  while (v34 != v35);
  if (values[0])
  {
    CFRelease(values[0]);
  }

  if (!v36)
  {
LABEL_108:
    HasSuffix = 0;
LABEL_109:
    CFRelease(v10);
    return HasSuffix;
  }

LABEL_78:
  if (!*(a2 + 248))
  {
    goto LABEL_80;
  }

  v38 = *a2;
  if (v38 != sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098))
  {
    goto LABEL_80;
  }

  v47 = CFDictionaryGetValue(theDict, kSecAttrServer);
  if (!v47)
  {
    return 0;
  }

  v48 = v47;
  v49 = CFGetTypeID(v47);
  if (v49 != CFStringGetTypeID())
  {
    return 0;
  }

  HasSuffix = *(a2 + 248);
  if (HasSuffix)
  {
    if (CFEqual(v48, HasSuffix))
    {
      goto LABEL_80;
    }

    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    CFStringAppend(Mutable, @".");
    CFStringAppend(Mutable, HasSuffix);
    HasSuffix = CFStringHasSuffix(v48, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (HasSuffix)
    {
LABEL_80:
      HasSuffix = 1;
      if (!v10)
      {
        return HasSuffix;
      }

      goto LABEL_109;
    }
  }

  return HasSuffix;
}