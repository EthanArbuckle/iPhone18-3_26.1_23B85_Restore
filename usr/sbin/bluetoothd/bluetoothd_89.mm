void sub_10066B04C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1000787AC(v2, v3);
}

void sub_10066B0A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  v3 = sub_10009DA04(off_100B508B8);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = sub_10005201C(*(*(&v8 + 1) + 8 * i), *(v2 + 168), *(v2 + 80));
        xpc_array_append_value(*(a1 + 40), v7);
        xpc_release(v7);
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10066B200(void *a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  v2 = off_100B508B8;
  v3 = a1[4];
  v4 = a1[5] == 1;
  v5 = a1[6] == 1;
  v6 = a1[7] == 1;

  sub_1007BF568(v2, v3, v4, v5, v6);
}

void sub_10066B270(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[6] != 0;

  sub_1003B0024(v3, v4, v5, v6, (a1 + 7));
}

void sub_10066B2DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48) != 0;
  v7 = *(a1 + 56);

  sub_1003AFF78(v3, v4, v5, v6, v7);
}

void sub_10066B348(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  sub_1007C2AA4(off_100B508B8, *(a1 + 32));
  if (*(a1 + 40) == 1)
  {
    if (qword_100B508B0 != -1)
    {
      sub_100859FB4();
    }

    v2 = off_100B508A8;
    sub_10004DFB4(v3, *(a1 + 32));
    sub_10074CD90(v2, v3, 2u);
  }
}

void sub_10066B40C(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[6] != 0;

  sub_1003AFD70(v3, v4, v5, v6);
}

uint64_t sub_10066B474(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003AFEE4(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10066B4D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v13[0] = v8;
  v12[0] = @"kCBMsgArgDeviceUUID";
  v12[1] = @"kCBMsgArgPairingType";
  v9 = [NSNumber numberWithUnsignedInt:a4];
  v13[1] = v9;
  v12[2] = @"kCBMsgArgPairingPasskey";
  v10 = [NSNumber numberWithUnsignedInt:a5];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  sub_100052EE4(a1, 18, v11);
}

void sub_10066B620(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    *uuid = 0;
    v14 = 0;
    [v8 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a4);
  if (a4 == 168)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v11 = sub_10078A948(off_100B508C8, v9);
    v12 = v11;
    if (v11)
    {
      *uuid = 0;
      v14 = 0;
      [v11 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceOriginalUUID", uuid);
    }
  }

  else if (!a4)
  {
    v10 = sub_100052B30(v9);
    xpc_dictionary_set_int64(v7, "kCBMsgArgPairingState", v10);
  }

  sub_10004DFB8(a1, 19, v7, 1);
}

void sub_10066B7D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = @"kCBMsgArgDeviceUUID";
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  sub_100052EE4(a1, 20, v5);
}

void sub_10066B8A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = v6;
  if (*(a1 + 168) == 1)
  {
    v10[0] = @"kCBMsgArgDeviceUUID";
    v10[1] = @"kCBMsgArgState";
    v11[0] = v6;
    v8 = [NSNumber numberWithBool:a4];
    v11[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    sub_100052EE4(a1, 177, v9);
  }
}

void sub_10066B9C4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 80) >= 1 && [*(a1 + 32) length])
  {
    if (qword_100B512F8 != -1)
    {
      sub_1000C10B4();
    }

    v3 = sub_1003BF5E0(off_100B512F0, *(a1 + 32));
  }

  else
  {
    v3 = 0;
  }

  xpc_dictionary_set_int64(*(*(*(a1 + 40) + 8) + 24), "kCBMsgArgCount", v3);
  xpc_connection_send_message(*(v2 + 16), *(*(*(a1 + 40) + 8) + 24));
  v4 = *(*(*(a1 + 40) + 8) + 24);

  xpc_release(v4);
}

uint64_t sub_10066BA7C(uint64_t a1, xpc_object_t object, uint64_t a3)
{
  v175 = &off_100AE0A78;
  v176 = 0;
  v173 = &off_100AE0A78;
  v174 = 0;
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      type = xpc_get_type(object);
      sub_10085AF18(type, buf);
    }

    goto LABEL_4;
  }

  if (*(a1 + 80) >= 2)
  {
    v157 = 0;
    value = xpc_dictionary_get_value(object, "kCBAdvOptionHoldPowerAssertion");
    if (value)
    {
      v7 = sub_100013DE8(value, &v157);
      if (v7)
      {
        goto LABEL_5;
      }

      if (v157)
      {
        *(*(a3 + 8) + 360) = 1;
        v10 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v11 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v11 = *v11;
          }

          *buf = 136315138;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session %s asking to hold a power assertion for advertising", buf, 0xCu);
        }
      }
    }
  }

  if (*(a1 + 185) == 1)
  {
    *buf = 0;
    v12 = xpc_dictionary_get_value(object, "kCBAdvOptionUseFGInterval");
    if (v12)
    {
      v7 = sub_100013DE8(v12, buf);
      if (v7)
      {
        goto LABEL_5;
      }

      v13 = 48;
    }

    else
    {
      v13 = 290;
    }

    v25 = xpc_dictionary_get_value(object, "kCBAdvOptionAdvertisingInterval");
    if (v25)
    {
      v7 = sub_100013DE8(v25, buf);
      if (v7)
      {
        goto LABEL_5;
      }

      v13 = *buf;
      if ((*buf - 16385) < 0xFFFFFFFFFFFFC01FLL)
      {
LABEL_4:
        v7 = 3;
        goto LABEL_5;
      }
    }
  }

  else
  {
    v13 = 290;
  }

  if ((((v13 - 37) >> 1) | ((v13 - 37) << 15)) <= 0xBu && ((1 << ((v13 - 37) >> 1)) & 0x92D) != 0 || (v47 = sub_10000C798(), v14 = (*(*v47 + 768))(v47), v14 <= v13))
  {
    LOWORD(v14) = v13;
  }

  else
  {
    v48 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v13 * 0.625;
      *&buf[12] = 2048;
      *&buf[14] = v14 * 0.625;
      *&buf[22] = 2048;
      *&buf[24] = *&buf[14];
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Limit advertising interval from %.2f msec to %.2f msec (hw limit %.2f)", buf, 0x20u);
    }
  }

  *(*(a3 + 8) + 222) = v14;
  v172 = 0;
  if (*(a1 + 80) <= 0)
  {
    v171 = 0;
  }

  else
  {
    v15 = xpc_dictionary_get_value(object, "kCBAdvOptionForcePrimaryPHY");
    if (v15)
    {
      v7 = sub_100013DE8(v15, &v172);
      if (v7)
      {
        goto LABEL_5;
      }

      if (v172 - 1 <= 2)
      {
        *(*(a3 + 8) + 339) = v172;
      }
    }

    v172 = 0;
    v16 = xpc_dictionary_get_value(object, "kCBAdvOptionForceSecondaryPHY");
    if (v16)
    {
      v7 = sub_100013DE8(v16, &v172);
      if (v7)
      {
        goto LABEL_5;
      }

      if (v172 - 1 <= 2)
      {
        *(*(a3 + 8) + 340) = v172;
      }
    }

    v17 = *(a1 + 80);
    v171 = 0;
    if (v17 >= 1)
    {
      v18 = xpc_dictionary_get_value(object, "kCBAdvOptionForcePrimaryPhyOptions");
      if (v18)
      {
        v7 = sub_100013DE8(v18, &v171);
        if (v7)
        {
          goto LABEL_5;
        }

        if (v171 - 1 <= 3)
        {
          *(*(a3 + 8) + 343) = v171;
        }
      }

      v171 = 0;
      v19 = xpc_dictionary_get_value(object, "kCBAdvOptionForceSecondaryPhyOptions");
      if (v19)
      {
        v7 = sub_100013DE8(v19, &v171);
        if (v7)
        {
          goto LABEL_5;
        }

        if (v171 - 1 <= 3)
        {
          *(*(a3 + 8) + 344) = v171;
        }
      }
    }
  }

  v170 = 0;
  v169 = 0;
  v142 = &off_100AE0A78;
  v167 = &off_100AE0A78;
  v168 = 0;
  if (*(a1 + 80) <= 0)
  {
    v141 = 0;
    v166 = 0;
  }

  else
  {
    sub_10000C7D0();
    if (sub_100095E40() && _os_feature_enabled_impl())
    {
      v20 = xpc_dictionary_get_value(object, "kCBAdvOptionUseDecisionBasedAdvPayload");
      v21 = xpc_dictionary_get_value(object, "kCBAdvOptionDBAFDecisionTypeFlags");
      v22 = xpc_dictionary_get_value(object, "kCBAdvOptionDBAFDecisionDataLength");
      v23 = xpc_dictionary_get_value(object, "kCBAdvOptionDBAFDecisionData");
      v141 = 0;
      if (v20)
      {
        if (v21)
        {
          if (v22)
          {
            v24 = v23;
            if (v23)
            {
              if (sub_10037CA58(v20, &v170 + 1) || sub_10037CA58(v21, &v170) || sub_10037CA58(v22, &v169) || sub_1000C9980(v24, &v167))
              {
                if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
                {
                  sub_10085AF5C();
                }

                v7 = 3;
                goto LABEL_275;
              }

              v59 = sub_10000C5F8(&v167);
              v60 = [NSData dataWithBytes:v59 length:v169];
              v61 = *(a3 + 8);
              v62 = v170;
              v63 = v169;
              *(v61 + 345) = HIBYTE(v170);
              *(v61 + 346) = v62;
              *(v61 + 347) = v63;
              v141 = v60;
              objc_storeStrong((v61 + 352), v60);
            }
          }
        }
      }
    }

    else
    {
      v141 = 0;
    }

    v26 = *(a1 + 80);
    v166 = 0;
    if (v26 >= 1)
    {
      v27 = xpc_dictionary_get_value(object, "kCBAdvOptionStopOnAdvertisingAddressChange");
      if (v27)
      {
        v7 = sub_100013DE8(v27, &v166);
        if (v7)
        {
          goto LABEL_274;
        }
      }
    }
  }

  *(*(a3 + 8) + 307) = v166 != 0;
  if (*(a1 + 80) > 1)
  {
    v28 = sub_10000C7D0();
    if ((*(*v28 + 3032))(v28))
    {
      *buf = 0;
      v29 = xpc_dictionary_get_value(object, "kCBAdvertisementEnableEPA");
      if (v29)
      {
        v7 = sub_100013DE8(v29, buf);
        if (v7)
        {
          goto LABEL_274;
        }

        *(*(a3 + 8) + 409) = *buf != 0;
      }
    }

    if (*(a1 + 80) >= 2)
    {
      v30 = sub_10000C7D0();
      if ((*(*v30 + 2720))(v30))
      {
        *buf = 0;
        v31 = xpc_dictionary_get_value(object, "kCBAdvDataObjectLocatorInstance");
        if (v31)
        {
          v7 = sub_100013DE8(v31, buf);
          if (v7)
          {
            goto LABEL_274;
          }

          *(*(a3 + 8) + 308) = *buf != 0;
        }
      }
    }
  }

  v165 = 1;
  v32 = xpc_dictionary_get_value(object, "kCBAdvDataIsConnectable");
  if (v32)
  {
    v7 = sub_100013DE8(v32, &v165);
    if (v7)
    {
      goto LABEL_274;
    }
  }

  v33 = *(a3 + 8);
  v34 = v165 == 0;
  *(v33 + 12) = v165 != 0;
  v35 = v34;
  *(v33 + 264) = v35;
  v164 = 0;
  v36 = xpc_dictionary_get_value(object, "kCBAdvDataIsObjectDiscovery");
  if (v36)
  {
    v7 = sub_100013DE8(v36, &v164);
    if (v7)
    {
      goto LABEL_274;
    }

    *(*(a3 + 8) + 264) = 3;
  }

  v163 = 0;
  v37 = xpc_dictionary_get_value(object, "kCBAdvDataIsExtended");
  if (v37)
  {
    v7 = sub_100013DE8(v37, &v163);
    if (v7)
    {
      goto LABEL_274;
    }

    v38 = *(a3 + 8);
    *(v38 + 264) = 4;
    *(v38 + 12) = 0;
  }

  v162 = 0;
  v39 = xpc_dictionary_get_value(object, "kCBAdvDataIsExtendedConnectable");
  if (v39)
  {
    v7 = sub_100013DE8(v39, &v162);
    if (v7)
    {
      goto LABEL_274;
    }

    v40 = *(a3 + 8);
    *(v40 + 264) = 4;
    *(v40 + 12) = 1;
  }

  v161 = 0;
  v41 = xpc_dictionary_get_value(object, "kCBAdvDataIsTDS");
  if (!v41)
  {
    goto LABEL_97;
  }

  v7 = sub_100013DE8(v41, &v161);
  if (!v7)
  {
    *(*(a3 + 8) + 264) = 2;
LABEL_97:
    v140 = sub_100013C04(object, "kCBAdvDataLocalName");
    if (v140)
    {
      v42 = *(a3 + 8);
      v43 = v140;
      sub_100007E30(&v160, [v140 UTF8String]);
      std::string::operator=((v42 + 16), &v160);
      if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v160.__r_.__value_.__l.__data_);
      }
    }

    v44 = xpc_dictionary_get_value(object, "kCBAdvDataAppearance");
    if (v44)
    {
      *buf = 0;
      v7 = sub_100013DE8(v44, buf);
      if (v7)
      {
LABEL_273:

        goto LABEL_274;
      }

      *(*(a3 + 8) + 40) = *buf;
    }

    v157 = 0;
    v158 = 0;
    v159 = 0;
    v45 = xpc_dictionary_get_value(object, "kCBAdvDataServiceUUIDs");
    if (v45)
    {
      v7 = sub_1000660D0(v45, &v157);
      if (v7)
      {
LABEL_271:
        if (v157)
        {
          v158 = v157;
          operator delete(v157);
        }

        goto LABEL_273;
      }

      for (i = v157; i != v158; i = (i + 20))
      {
        sub_10000CDB8((*(a3 + 8) + 64), i);
      }
    }

    v154 = 0;
    v155 = 0;
    v156 = 0;
    v49 = xpc_dictionary_get_value(object, "kCBAdvDataSolicitedServiceUUIDs");
    if (v49)
    {
      v7 = sub_1000660D0(v49, &v154);
      if (v7)
      {
        goto LABEL_269;
      }

      for (j = v154; j != v155; j = (j + 20))
      {
        sub_10000CDB8((*(a3 + 8) + 88), j);
      }
    }

    if (*(a1 + 185) == 1)
    {
      v51 = xpc_dictionary_get_value(object, "kCBAdvDataAppleMfgData");
      if (v51)
      {
        v7 = sub_1000C9980(v51, &v175);
        if (v7)
        {
          goto LABEL_269;
        }

        sub_10000AE20(*(a3 + 8) + 48, &v175);
      }
    }

    v52 = xpc_dictionary_get_value(object, "kCBAdvDataLeBluetoothDeviceAddress");
    if (v52)
    {
      v7 = sub_1000C9980(v52, &v173);
      if (v7)
      {
        goto LABEL_269;
      }

      sub_10000AE20(*(a3 + 8) + 136, &v173);
    }

    v53 = xpc_dictionary_get_value(object, "kCBAdvDataNonAppleMfgData");
    if (v53)
    {
      v7 = sub_1000C9980(v53, &v175);
      if (v7)
      {
        goto LABEL_269;
      }

      sub_10000AE20(*(a3 + 8) + 152, &v175);
    }

    if (sub_10000D26C(&v175))
    {
      *buf = 0;
      *&buf[8] = 0;
      *&buf[23] = 0;
      *&buf[16] = 0;
      v54 = xpc_dictionary_get_value(object, "kCBAdvDataAppleBeaconKey");
      if (v54)
      {
        v7 = sub_1000C9980(v54, &v175);
        if (v7)
        {
          goto LABEL_269;
        }

        if (sub_10000C5E0(&v175) != 21)
        {
          goto LABEL_140;
        }

        *buf = 5046042;
        *&buf[4] = 5378;
        sub_10004B788(&v175, &buf[6], 0x15uLL);
        v55 = *(a3 + 8);
        sub_10000C704(v178, buf, 0x1BuLL);
        sub_10000AE20(v55 + 48, v178);
        *v178 = &off_100AE0A78;
        if (*&v178[8])
        {
          sub_10000C808(*&v178[8]);
        }
      }
    }

    v56 = xpc_dictionary_get_value(object, "kCBAdvDataTDSData");
    if (v56)
    {
      v57 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "TDS advertising data found", buf, 2u);
      }

      if (*(a1 + 189) == 1)
      {
        v7 = sub_1000C9980(v56, &v175);
        if (v7)
        {
          goto LABEL_269;
        }

        if (sub_10000C5E0(&v175) <= 2)
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v58 = sub_10000C5E0(&v175);
            sub_10085AF98(buf, v58);
          }

LABEL_140:
          v7 = 1;
          goto LABEL_269;
        }

        v65 = sub_10000C5E0(&v175);
        v66 = __chkstk_darwin();
        v67 = &v138 - ((v66 + 17) & 0xFFFFFFFFFFFFFFF0);
        bzero(v67, v66 + 2);
        *v67 = v65 + 1;
        v67[1] = 38;
        sub_10004B788(&v175, v67 + 2, v65);
        v68 = *(a3 + 8);
        sub_10000C704(buf, v67, v65 + 2);
        sub_10000AE20(v68 + 224, buf);
        *buf = &off_100AE0A78;
        if (*&buf[8])
        {
          sub_10000C808(*&buf[8]);
        }
      }

      else
      {
        v64 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "TDS advertising not allowed", buf, 2u);
        }
      }
    }

    v69 = xpc_dictionary_get_value(object, "kCBAdvDataRawBytesDataAdvInd");
    if (v69 || (v69 = xpc_dictionary_get_value(object, "kCBAdvDataRawBytesData")) != 0)
    {
      v70 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Raw bytes advertising data found for ADV_IND", buf, 2u);
      }

      if (*(a1 + 191) == 1)
      {
        v7 = sub_1000C9980(v69, &v175);
        if (v7)
        {
          goto LABEL_269;
        }

        sub_10000AE20(*(a3 + 8) + 272, &v175);
      }

      else
      {
        v71 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Raw bytes advertising not allowed", buf, 2u);
        }
      }
    }

    v72 = xpc_dictionary_get_value(object, "kCBAdvDataRawBytesDataScanRsp");
    if (v72)
    {
      v73 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Raw bytes advertising data found for SCAN_RSP", buf, 2u);
      }

      if (*(a1 + 191) == 1)
      {
        v7 = sub_1000C9980(v72, &v175);
        if (v7)
        {
          goto LABEL_269;
        }

        sub_10000AE20(*(a3 + 8) + 288, &v175);
      }

      else
      {
        v74 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Raw bytes advertising not allowed", buf, 2u);
        }
      }
    }

    v153 = 0;
    if (*(a1 + 80) < 1)
    {
      goto LABEL_171;
    }

    v75 = xpc_dictionary_get_value(object, "kCBAdvDataIsContact");
    if (v75)
    {
      v7 = sub_100013DE8(v75, &v153);
      if (v7)
      {
LABEL_269:
        if (v154)
        {
          v155 = v154;
          operator delete(v154);
        }

        goto LABEL_271;
      }
    }

    if (v153)
    {
      v76 = sub_10000C798();
      if (((*(*v76 + 384))(v76) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085AFDC();
        }

        v7 = 11;
        goto LABEL_269;
      }

      v77 = *(a3 + 8);
      *(v77 + 264) = 2;
      *(v77 + 307) = 1;
      *buf = 0;
      v78 = xpc_dictionary_get_value(object, "kCBAdvOptionUseFGInterval");
      if (v78)
      {
        v7 = sub_100013DE8(v78, buf);
        if (v7)
        {
          goto LABEL_269;
        }

        v79 = 48;
      }

      else
      {
        v79 = 432;
      }

      v107 = xpc_dictionary_get_value(object, "kCBAdvOptionAdvertisingInterval");
      if (v107)
      {
        v7 = sub_100013DE8(v107, buf);
        if (v7)
        {
          goto LABEL_269;
        }

        v79 = *buf;
        if ((*buf - 16385) < 0xFFFFFFFFFFFFC01FLL)
        {
          goto LABEL_173;
        }
      }

      *(*(a3 + 8) + 222) = v79;
      v80 = v153 != 0;
    }

    else
    {
LABEL_171:
      v80 = 0;
    }

    if (sub_10067A1B8(a1, v80, a3))
    {
LABEL_173:
      v7 = 3;
      goto LABEL_269;
    }

    if (*(a1 + 80) == 2)
    {
      v139 = sub_10037CFB0(object, "kCBAdvDataServiceData");
      if (v139)
      {
        v81 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          v82 = [v139 count];
          *buf = 67109120;
          *&buf[4] = v82;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "Service data %d elements", buf, 8u);
        }

        if ([v139 count])
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085B018();
          }

LABEL_219:

          goto LABEL_173;
        }

        v84 = 0;
        *&v83 = 136446466;
        v138 = v83;
        while (1)
        {
          v186[0] = 0;
          v186[1] = 0;
          v85 = v84;
          v187 = 0;
          v86 = [v139 objectAtIndexedSubscript:{v84, v138}];
          v87 = v86;
          v88 = [v86 bytes];
          v89 = [v139 objectAtIndexedSubscript:v85];
          sub_100065F40(v186, v88, [v89 length]);

          v151 = 0;
          v152 = 0;
          v90 = [v139 objectAtIndexedSubscript:v85 | 1];
          v91 = v90;
          v92 = [v90 bytes];
          v93 = [v139 objectAtIndexedSubscript:v85 | 1];
          sub_10000C704(&v151, v92, [v93 length]);

          if (LOBYTE(v186[0]) >= 3u)
          {
            break;
          }

          v94 = sub_10000C5E0(&v151);
          v95 = qword_100BCE950;
          if (v94 >= 0x15)
          {
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_10085B054(&v184, &v185);
            }

            goto LABEL_186;
          }

          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            sub_10003B85C(v186, buf);
            v97 = buf[23];
            v98 = *buf;
            sub_10000C250(&v151, v178);
            v99 = buf;
            if (v97 < 0)
            {
              v99 = v98;
            }

            v100 = v178;
            if (v179 < 0)
            {
              v100 = *v178;
            }

            *v180 = v138;
            v181 = v99;
            v182 = 2080;
            v183 = v100;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Adding service Data UUID:%{public}s data:%s", v180, 0x16u);
            if (v179 < 0)
            {
              operator delete(*v178);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          sub_10067A424(*(a3 + 8), v186, &v151);
          v96 = 1;
LABEL_197:
          v151 = &off_100AE0A78;
          if (v152)
          {
            sub_10000C808(v152);
          }

          if (!v96)
          {
            goto LABEL_219;
          }

          v101 = [v139 objectAtIndexedSubscript:(v85 + 2)];
          v102 = v101 == 0;

          v84 = v85 + 2;
          if (v102)
          {
            goto LABEL_201;
          }
        }

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085B09C(&v149, v150);
        }

LABEL_186:
        v96 = 0;
        goto LABEL_197;
      }

LABEL_201:
    }

    v139 = sub_100013C04(object, "kCBAdvOptionInstanceAddress");
    if (v139)
    {
      v103 = sub_100777FF4(v139);
      v104 = v103;
      if (v103 && (!BYTE6(v103) || BYTE6(v103) == 1 && (v103 & 0xC00000000000) != 0x800000000000))
      {
        v108 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v109 = sub_100063D0C();
          *buf = 138412546;
          *&buf[4] = v139;
          *&buf[12] = 2112;
          *&buf[14] = v109;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Overriding address with address string %@ (%@)", buf, 0x16u);
        }
      }

      else
      {
        v105 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v106 = sub_100063D0C();
          sub_10085B0D0(v139, v106, v180, v105);
        }
      }

      *(*(a3 + 8) + 256) = v104;
    }

    v110 = xpc_dictionary_get_value(object, "kCBAdvOptionInstanceRandomAddressBytes");
    if (!v110)
    {
LABEL_243:
      v127 = sub_10003ED64(object, "kCBManagerListOfClients");
      if (!v127)
      {
        v127 = [NSArray arrayWithObjects:*(a1 + 96), 0];
      }

      v128 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v127;
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Setting client list to %@", buf, 0xCu);
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v129 = v127;
      v130 = [v129 countByEnumeratingWithState:&v145 objects:v177 count:16];
      if (v130)
      {
        v131 = *v146;
        do
        {
          for (k = 0; k != v130; k = k + 1)
          {
            if (*v146 != v131)
            {
              objc_enumerationMutation(v129);
            }

            sub_100007E30(v178, [*(*(&v145 + 1) + 8 * k) UTF8String]);
            sub_100071970(buf, v178);
            if (v179 < 0)
            {
              operator delete(*v178);
            }
          }

          v130 = [v129 countByEnumeratingWithState:&v145 objects:v177 count:16];
        }

        while (v130);
      }

      v133 = *(a3 + 8);
      sub_100068968(&v143, buf);
      if ((v133 + 416) != &v143)
      {
        sub_1000717E8((v133 + 416), v143, &v144);
      }

      sub_10004B61C(&v143, v144);
      if (*(a1 + 80) >= 1)
      {
        *v178 = 0;
        v134 = xpc_dictionary_get_value(object, "kCBOptionUseCase");
        if (v134)
        {
          v7 = sub_100013DE8(v134, v178);
          if (v7)
          {
LABEL_267:
            sub_10004B61C(buf, *&buf[8]);

            goto LABEL_268;
          }

          if (*v178)
          {
            v135 = xpc_dictionary_get_value(object, "kCBOptionUseCaseOptions");
            if (v135)
            {
              v136 = sub_100050F18(v135);
            }

            else
            {
              v136 = 0;
            }

            v137 = *(a3 + 8);
            *(v137 + 440) = *v178;
            objc_storeStrong((v137 + 480), v136);
          }
        }
      }

      v7 = 0;
      goto LABEL_267;
    }

    v7 = sub_1000C9980(v110, &v175);
    if (v7)
    {
LABEL_268:

      goto LABEL_269;
    }

    if (sub_10000C5E0(&v175) < 6)
    {
      v7 = 8;
      goto LABEL_268;
    }

    v111 = *sub_10000C5F8(&v175);
    *&v138 = *(sub_10000C5F8(&v175) + 1);
    v112 = *(sub_10000C5F8(&v175) + 2);
    v113 = *(sub_10000C5F8(&v175) + 3);
    v114 = *(sub_10000C5F8(&v175) + 4);
    v115 = sub_10000C5F8(&v175);
    v116 = (v138 << 32) | (v111 << 40) | (v112 << 24) | (v113 << 16) | (v114 << 8) | *(v115 + 5) | 0x1000000000000;
    v117 = qword_100BCE950;
    if ((v111 & 0xC0) == 0x80)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10000C250(&v175, buf);
        v118 = buf[23];
        v119 = *buf;
        v120 = sub_100063D0C();
        if (v118 >= 0)
        {
          v121 = buf;
        }

        else
        {
          v121 = v119;
        }

        v122 = v120;
        *v178 = 136315394;
        *&v178[4] = v121;
        *&v178[12] = 2112;
        *&v178[14] = v122;
        _os_log_error_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "Overriding address with Invalid address data %s (%@)", v178, 0x16u);

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

LABEL_241:
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000C250(&v175, buf);
      v123 = buf[23];
      v124 = *buf;
      v125 = sub_100063D0C();
      if (v123 >= 0)
      {
        v126 = buf;
      }

      else
      {
        v126 = v124;
      }

      v122 = v125;
      *v178 = 136315394;
      *&v178[4] = v126;
      *&v178[12] = 2112;
      *&v178[14] = v122;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "Overriding address with address data %s (%@)", v178, 0x16u);

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      goto LABEL_241;
    }

    *(*(a3 + 8) + 256) = v116;
    goto LABEL_243;
  }

LABEL_274:

LABEL_275:
  v167 = v142;
  if (v168)
  {
    sub_10000C808(v168);
  }

LABEL_5:
  v173 = &off_100AE0A78;
  if (v174)
  {
    sub_10000C808(v174);
  }

  v175 = &off_100AE0A78;
  if (v176)
  {
    sub_10000C808(v176);
  }

  return v7;
}

void sub_10066D320(_Unwind_Exception *a1)
{
  if (*(v4 - 121) < 0)
  {
    operator delete(*(v4 - 144));
  }

  v6 = *(v1 + 176);
  if (v6)
  {
    *(v1 + 184) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 200);
  if (v7)
  {
    *(v1 + 208) = v7;
    operator delete(v7);
  }

  *(v1 + 296) = *(v1 + 48);
  v8 = *(v1 + 304);
  if (v8)
  {
    sub_10000C808(v8);
  }

  *(v1 + 336) = v3;
  v9 = *(v1 + 344);
  if (v9)
  {
    sub_10000C808(v9);
  }

  *(v1 + 352) = v2;
  v10 = *(v1 + 360);
  if (v10)
  {
    sub_10000C808(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066D5F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B368C(off_100B512F0, *(v2 + 128), a1 + 48);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10066D654(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 48) = &off_100AE0AB8;
  *(a1 + 56) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_10066D688(uint64_t a1)
{
  *(a1 + 48) = &off_100AE0AB8;
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

void sub_10066D6B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1003B3708(v2, v3);
}

uint64_t sub_10066D70C(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  v17 = &off_100AE0A78;
  v18 = 0;
  if (*(a1 + 80) < 2)
  {
    return 0;
  }

  __p = 0;
  value = xpc_dictionary_get_value(xdict, "kCBPeriodicAdvDataAdvHandle");
  if (value)
  {
    v7 = sub_100013DE8(value, &__p);
    if (v7)
    {
      goto LABEL_30;
    }

    if (__p > 0xEF)
    {
      goto LABEL_5;
    }

    *a3 = __p;
  }

  if (*(a1 + 80) >= 2)
  {
    __p = 0;
    v8 = xpc_dictionary_get_value(xdict, "KCBPeriodicAdvDataInterval");
    if (v8)
    {
      v7 = sub_100013DE8(v8, &__p);
      if (v7)
      {
        goto LABEL_30;
      }

      if (__p - 0x10000 < 0xFFFFFFFFFFFF0006)
      {
LABEL_5:
        v7 = 3;
        goto LABEL_30;
      }

      *(a3 + 2) = __p;
    }

    if (*(a1 + 80) >= 2)
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      v9 = xpc_dictionary_get_value(xdict, "KCBPeriodicAdvDataServiceUUIDs");
      if (v9)
      {
        v7 = sub_1000660D0(v9, &__p);
        v10 = __p;
        if (v7)
        {
          if (__p)
          {
            v15 = __p;
            operator delete(__p);
          }

          goto LABEL_30;
        }

        if (__p != v15)
        {
          do
          {
            sub_10000CDB8((a3 + 24), v10);
            v10 = (v10 + 20);
          }

          while (v10 != v15);
          v10 = __p;
        }

        if (v10)
        {
          v15 = v10;
          operator delete(v10);
        }
      }

      if (*(a1 + 80) >= 2)
      {
        v11 = xpc_dictionary_get_value(xdict, "KCBPeriodicAdvDataRandomData");
        if (v11)
        {
          v12 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
          {
            LOWORD(__p) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Raw bytes advertising data found", &__p, 2u);
          }

          v7 = sub_1000C9980(v11, &v17);
          if (v7)
          {
            goto LABEL_30;
          }

          sub_10000AE20(a3 + 48, &v17);
        }
      }
    }
  }

  v7 = 0;
LABEL_30:
  v17 = &off_100AE0A78;
  if (v18)
  {
    sub_10000C808(v18);
  }

  return v7;
}

void sub_10066D93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  if (a14)
  {
    sub_10000C808(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10066D97C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B50C68 != -1)
  {
    sub_10085B150();
  }

  result = sub_10072BBA0(off_100B50C60, *(v2 + 128), a1 + 48);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10066D9D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  sub_10000CB74((a1 + 72), (a2 + 72));
  v5 = *(a2 + 104);
  *(a1 + 96) = &off_100AE0A78;
  *(a1 + 104) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }
}

void sub_10066DA74(_Unwind_Exception *exception_object)
{
  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v1[7] = v2;
  v5 = v1[8];
  if (v5)
  {
    sub_10000C808(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10066DAA8(void *a1)
{
  a1[12] = &off_100AE0A78;
  v2 = a1[13];
  if (v2)
  {
    sub_10000C808(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  a1[7] = &off_100AE0A78;
  v4 = a1[8];
  if (v4)
  {

    sub_10000C808(v4);
  }
}

void *sub_10066DB48(void *a1)
{
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  a1[1] = &off_100AE0A78;
  v4 = a1[2];
  if (v4)
  {
    sub_10000C808(v4);
  }

  return a1;
}

uint64_t sub_10066DBD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B50C68 != -1)
  {
    sub_10085B150();
  }

  result = sub_10072C07C(off_100B50C60, *(v2 + 128), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10066DC30(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1006795AC;
    applier[3] = &unk_100AEE500;
    applier[4] = a2;
    if (xpc_array_apply(a1, applier))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B164(a1);
    }

    return 3;
  }
}

uint64_t sub_10066DD04(void *a1, void ***a2)
{
  if (xpc_get_type(a1) != &_xpc_type_array)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B164(a1);
    }

    return 3;
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100679D08;
  applier[3] = &unk_100AEE500;
  applier[4] = a2;
  if (!xpc_array_apply(a1, applier))
  {
    for (i = *a2; i != a2[1]; ++i)
    {
      v6 = *i;
      __p = 0;
      v11 = 0;
      v12 = 0;
      sub_100007F20(&__p, v6 + 13);
      v8 = __p;
      v7 = v11;
      while (v8 != v7)
      {
        if (*v8)
        {
          (*(**v8 + 8))(*v8);
          v7 = v11;
        }

        ++v8;
      }

      v9 = v6[12];
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      (*(*v6 + 8))(v6);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }
    }

    return 3;
  }

  return 0;
}

void sub_10066DEB4(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  *(*(a1[4] + 8) + 24) = sub_1003B3334(off_100B512F0, *(v2 + 128), a1[6]);
  v3 = qword_100BCE950;
  if (*(*(a1[4] + 8) + 24))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B1E4();
    }

    v4 = a1[6];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Collecting GATT metrics to send to Biome", __p, 2u);
    }

    v5 = objc_opt_new();
    [v5 setObject:@"Peripheral" forKeyedSubscript:@"SessionType"];
    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v6 = [NSNumber numberWithUnsignedChar:sub_10006E254(off_100B512F0, *(v2 + 128))];
    [v5 setObject:v6 forKeyedSubscript:@"SessionState"];

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if (sub_100026F14(off_100B512F0, *(v2 + 128)))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008565BC();
      }

      v7 = sub_100024BEC(off_100B512F0, *(v2 + 128));
    }

    else
    {
      v7 = 0;
    }

    v8 = [NSNumber numberWithBool:v7];
    [v5 setObject:v8 forKeyedSubscript:@"SupportsStateRestoration"];

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v9 = [NSNumber numberWithBool:sub_100070518(off_100B512F0, *(v2 + 128))];
    [v5 setObject:v9 forKeyedSubscript:@"SupportsBackgrounding"];

    [v5 setObject:*(v2 + 96) forKeyedSubscript:@"BundleID"];
    v10 = a1[6];
    v17 = *(v10 + 72);
    v18 = *(v10 + 88);
    sub_10000D03C(&v16, &v17);
    sub_10003B85C(&v16, __p);
    if (v15 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithUTF8String:v11];
    [v5 setObject:v12 forKeyedSubscript:@"ServiceUUID"];

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = sub_10000F034();
    (*(*v13 + 304))(v13, v5);
  }
}

void sub_10066E208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066E26C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  return sub_1003B33AC(v3, v4, v5);
}

void sub_10066E2C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1003ADCD4(v2, v3);
}

void sub_10066E31C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  sub_1003B38FC(off_100B512F0, v3, v4, v5, a1 + 56, &v6);
}

void sub_10066E388(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_10066E3BC(uint64_t a1)
{
  *(a1 + 56) = &off_100AE0A78;
  v1 = *(a1 + 64);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

void sub_10066E3EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  sub_1003B39A8(v3, v4, v5, v6);
}

void sub_10066E450(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  if (sub_1003AD798(off_100B512F0, *(v1 + 128), 1))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B254();
    }
  }
}

void sub_10066E4D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  v11 = qword_100B53FD0;
  v3 = *(v2 + 128);
  v4 = *(v2 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56) != 0;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_10004DFB4(uu, *(a1 + 32));
  sub_1004C6C6C(v11, v3, (v2 + 152), v4, v5, v6, v7, v8, v10, v9, uu, 1, *(a1 + 96));
}

void sub_10066E62C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 64);
  sub_10004DFB4(v8, *(a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10066E72C;
  v7[3] = &unk_100B04808;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 48);
  v7[5] = v2;
  sub_1004C87F8(v3, v4, v5, v8, v6, v7);
}

void sub_10066E72C(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v7 = *(a1 + 40);
  xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBMsgArgResult", a4);
  xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBMsgArgCID", a2);
  xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBMsgArgDataLength", a3);
  xpc_connection_send_message(*(v7 + 16), *(*(*(a1 + 32) + 8) + 24));
  v8 = *(*(*(a1 + 32) + 8) + 24);

  xpc_release(v8);
}

void sub_10066E7E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 48);
  sub_10004DFB4(uu, *(a1 + 32));
  sub_1004C8290(v3, v4, v5, uu);
}

void sub_10066E888(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  sub_1004C562C(qword_100B53FD0, *(v2 + 128), v2 + 152, *(v2 + 40), *(a1 + 40), *(a1 + 48) != 0, *(a1 + 56) != 0, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), 1u, *(a1 + 96));
}

void sub_10066E95C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  sub_1004C64D0(v3, v4, v5);
}

uint64_t sub_10066E9B8(uint64_t a1)
{
  v1 = sub_100777FF4(*(a1 + 32));
  if (qword_100B50C68 != -1)
  {
    sub_10085B150();
  }

  v2 = off_100B50C60;

  return sub_10072D454(v2, v1);
}

BOOL sub_10066EA14(uint64_t a1, int a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v17 = a1;
    sub_10037D154(object, "kCBMsgArgOfflineAdvertisingData");
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v6 = v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          *buf = 0u;
          memset(v24, 0, sizeof(v24));
          [v10 getBytes:buf range:{0, 6}];
          [v10 getBytes:&buf[13] range:{6, 22}];
          *&buf[9] = 1643008;
          *&buf[6] = 5046046;
          v24[19] = v24[19] & 0xFC | (buf[0] >> 6);
          buf[0] |= 0xC0u;
          v11 = [NSData dataWithBytes:buf length:37];
          [v10 setData:v11];
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }

    v12 = sub_1000C9AAC(object, "kCBMsgArgOfflineAdvertisingRotationInterval");
    if (qword_100B512D8 != -1)
    {
      sub_100856954();
    }

    v13 = off_100B512D0;
    v14 = *(*(v17 + 32) + 8);
    v15 = *(v14 + 24);
    *(v14 + 24) = v15 + 1;
    sub_10031206C(v13, v15, v6, [v12 intValue]);
  }

  else
  {
    v5 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleSetOfflineAdvertisingParamsAndData not a dictionary!", buf, 2u);
    }
  }

  return type == &_xpc_type_dictionary;
}

void sub_10066ED08(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);

  sub_1007532C8(v2, v3);
}

void sub_10066ED5C(uint64_t a1, int a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    v4 = *(a1 + 40);
    xpc_dictionary_set_int64(v3, "kCBMsgArgResult", a2);
    xpc_connection_send_message(*(v4 + 16), *(*(*(a1 + 32) + 8) + 24));
    v5 = *(*(*(a1 + 32) + 8) + 24);

    xpc_release(v5);
  }
}

void sub_10066EDDC(uint64_t a1, int a2, void *a3)
{
  v21 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    v6 = *(a1 + 40);
    xpc_dictionary_set_int64(v5, "kCBMsgArgResult", a2);
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = [v21 objectForKeyedSubscript:@"kCBMsgArgTimeoutInMS"];
    xpc_dictionary_set_uint64(v7, "kCBMsgArgTimeoutInMS", [v8 unsignedLongValue]);

    v9 = *(*(*(a1 + 32) + 8) + 24);
    v10 = [v21 objectForKeyedSubscript:@"kCBMsgArgHoldStableAddressState"];
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgHoldStableAddressState", [v10 BOOLValue]);

    v11 = *(*(*(a1 + 32) + 8) + 24);
    v12 = [v21 objectForKeyedSubscript:@"kCBMsgArgOverrideLocalAddressState"];
    xpc_dictionary_set_BOOL(v11, "kCBMsgArgOverrideLocalAddressState", [v12 BOOLValue]);

    v13 = *(*(*(a1 + 32) + 8) + 24);
    v14 = [v21 objectForKeyedSubscript:@"kCBMsgArgPrivateModeState"];
    xpc_dictionary_set_BOOL(v13, "kCBMsgArgPrivateModeState", [v14 BOOLValue]);

    v15 = *(*(*(a1 + 32) + 8) + 24);
    v16 = [v21 objectForKeyedSubscript:@"kCBMsgArgHoldStableAddressCount"];
    xpc_dictionary_set_uint64(v15, "kCBMsgArgHoldStableAddressCount", [v16 unsignedLongValue]);

    v17 = *(*(*(a1 + 32) + 8) + 24);
    v18 = [v21 objectForKeyedSubscript:@"kCBMsgArgLePrivateAddressTimer"];
    xpc_dictionary_set_uint64(v17, "kCBMsgArgLePrivateAddressTimer", [v18 unsignedLongValue]);

    v19 = *(*(*(a1 + 32) + 8) + 24);
    v20 = [v21 objectForKeyedSubscript:@"kCBMsgArgLeHoldStablePrivateAddressTimer"];
    xpc_dictionary_set_uint64(v19, "kCBMsgArgLeHoldStablePrivateAddressTimer", [v20 unsignedLongValue]);

    xpc_connection_send_message(*(v6 + 16), *(*(*(a1 + 32) + 8) + 24));
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
  }
}

void sub_10066F090(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v4, v5);
  sub_10004DFB8(a1, 175, v4, 1);
}

void sub_10066F12C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 **a4)
{
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v7, v6);
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  v8 = sub_1005B308C(a4, &v9);
  sub_10000CEDC(&v9, v10[0]);
  xpc_dictionary_set_value(v7, "kCBMsgArgUUIDs", v8);
  xpc_release(v8);
  sub_10004DFB8(a1, 64, v7, 1);
}

void sub_10066F1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_10000CEDC(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_10066F21C(uint64_t a1, void *a2, uint64_t a3)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  if (!*(a3 + 8))
  {
    goto LABEL_39;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = *(a3 + 8);
  if (*(v7 + 39) < 0)
  {
    sub_100008904(__p, *(v7 + 16), *(v7 + 24));
  }

  else
  {
    *__p = *(v7 + 16);
    value = *(v7 + 32);
  }

  if ((SHIBYTE(value) & 0x80000000) == 0)
  {
    if (!HIBYTE(value))
    {
      goto LABEL_17;
    }

LABEL_9:
    v9 = *(a3 + 8);
    if (*(v9 + 39) < 0)
    {
      sub_100008904(__p, *(v9 + 16), *(v9 + 24));
    }

    else
    {
      *__p = *(v9 + 16);
      value = *(v9 + 32);
    }

    if (value >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    xpc_dictionary_set_string(v6, "kCBAdvDataLocalName", v10);
    if (SHIBYTE(value) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_17;
  }

  v8 = __p[1];
  operator delete(__p[0]);
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_17:
  v11 = *(a3 + 8);
  if (*(v11 + 40))
  {
    xpc_dictionary_set_uint64(v6, "kCBAdvDataAppearance", *(v11 + 40));
    v11 = *(a3 + 8);
  }

  __p[0] = 0;
  __p[1] = 0;
  value = 0;
  sub_10000CB74(__p, (v11 + 64));
  if (__p[1] != __p[0])
  {
    v35[0] = 0;
    v35[1] = 0;
    v34 = v35;
    v12 = sub_1005B308C(__p, &v34);
    sub_10000CEDC(&v34, v35[0]);
    xpc_dictionary_set_value(v6, "kCBAdvDataServiceUUIDs", v12);
    xpc_release(v12);
  }

  v13 = *(a3 + 8);
  if (v13[16])
  {
    v14 = +[NSMutableArray array];
    v15 = v13[14];
    v16 = (v13 + 15);
    if (v15 != (v13 + 15))
    {
      do
      {
        if (v15[32] == 2)
        {
          v34 = 0;
          v35[0] = 0;
          v17 = [NSData dataWithBytes:&v34 length:sub_10007A930(v15 + 32, &v34)];
          [v14 addObject:v17];

          v18 = sub_10000C5F8((v15 + 56));
          v19 = [NSData dataWithBytes:v18 length:sub_10000C5E0((v15 + 56))];
          [v14 addObject:v19];
        }

        v20 = *(v15 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v15 + 2);
            v22 = *v21 == v15;
            v15 = v21;
          }

          while (!v22);
        }

        v15 = v21;
      }

      while (v21 != v16);
    }

    if ([v14 count])
    {
      v23 = sub_1005B31CC(v14);
      xpc_dictionary_set_value(v6, "kCBAdvDataServiceData", v23);
      xpc_release(v23);
    }

    v13 = *(a3 + 8);
  }

  if (sub_10000C5E0((v13 + 6)) && *(a1 + 185) == 1)
  {
    v24 = sub_10000C5F8(*(a3 + 8) + 48);
    v25 = sub_10000C5E0(*(a3 + 8) + 48);
    xpc_dictionary_set_data(v6, "kCBAdvDataAppleMfgData", v24, v25);
  }

  xpc_dictionary_set_value(xdict, "kCBMsgArgAdvertisementData", v6);
  xpc_release(v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_39:
  if (a2[4] != a2[3])
  {
    sub_100007F20(v33, a2 + 3);
    v26 = sub_100485818(v33);
    if (v33[0])
    {
      v33[1] = v33[0];
      operator delete(v33[0]);
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgServices", v26);
    xpc_release(v26);
  }

  if (a2[7] != a2[6])
  {
    v27 = xpc_array_create(0, 0);
    v29 = a2[6];
    for (i = a2[7]; v29 != i; v29 += 18)
    {
      __p[0] = 0;
      __p[1] = 0;
      LOWORD(value) = 0;
      uuid_copy(__p, v29);
      LOWORD(value) = *(v29 + 16);
      v30 = xpc_dictionary_create(0, 0, 0);
      v31 = sub_10004DF60(__p);
      sub_1005B2FB8(a1, v30, v31);

      xpc_dictionary_set_int64(v30, "kCBMsgArgAttributeID", value);
      xpc_array_append_value(v27, v30);
      xpc_release(v30);
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgSubscribedHandles", v27);
    xpc_release(v27);
  }

  sub_10004DFB8(a1, 63, xdict, 1);
}

void sub_10066F6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066F7A0(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, unsigned int a8)
{
  v15 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10066FB24;
  block[3] = &unk_100ADF8F8;
  v30 = a4;
  v31 = a5;
  v29 = a7;
  if (qword_100B6F800 != -1)
  {
    dispatch_once(&qword_100B6F800, block);
  }

  v16 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = a4;
    *&buf[8] = 1024;
    *&buf[10] = a5;
    *&buf[14] = 1024;
    LODWORD(v33) = a7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Channel connected callback : sockets : psm %u, cid %u, sock %d", buf, 0x14u);
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v15;
  v19 = v18;
  if (v18)
  {
    memset(buf, 0, sizeof(buf));
    [v18 getUUIDBytes:buf];
    xpc_dictionary_set_uuid(v17, "kCBMsgArgDeviceUUID", buf);
  }

  xpc_dictionary_set_int64(v17, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v17, "kCBMsgArgPSM", a4);
  xpc_dictionary_set_int64(v17, "kCBMsgArgCID", a5);
  xpc_dictionary_set_int64(v17, "kCBMsgArgOutMTU", a8);
  xpc_dictionary_set_int64(v17, "kCBMsgArgMaxQueuedPacketLength", word_100B54D38);
  xpc_dictionary_set_fd(v17, "kCBMsgArgSocket", a7);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  *buf = 0u;
  v33 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10085681C();
  }

  sub_100740410(off_100B508A8, v19, buf);
  if (*buf)
  {
    v20 = [*&buf[8] mutableCopy];
    v21 = v20;
    if (a6 && ([v20 containsObject:*(a1 + 96)] & 1) == 0)
    {
      [v21 addObject:*(a1 + 96)];
    }

    objc_storeStrong(&buf[8], v21);
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v22 = off_100B508A8;
    v23[0] = *buf;
    v23[1] = *&buf[8];
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    sub_100740538(v22, v19, v23);
  }

  sub_10004DFB8(a1, 27, v17, 1);
}

float sub_10066FB24(uint64_t a1)
{
  v13 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "L2CAPMaxPendingPacketsLength");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v13);
  if (v13)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE1(v20) < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      return result;
    }
  }

  else if (!v5)
  {
    return result;
  }

  v6 = v13;
  word_100B54D38 = v13;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 36);
    v9 = *(a1 + 38);
    v10 = *(a1 + 32);
    *buf = 67109888;
    *&buf[4] = v6;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::channelConnected overriding max queue capacity %d bytes for psm %u, cid %u, sock %d", buf, 0x1Au);
  }

  return result;
}

void sub_10066FC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10066FCE0(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5)
{
  v9 = a2;
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67109632;
    HIDWORD(v14) = a3;
    LOWORD(v15) = 1024;
    *(&v15 + 2) = a4;
    HIWORD(v15) = 1024;
    v16 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Channel disconnected callback result : %d, psm : %u, cid = %u", &v14, 0x14u);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v9;
  v13 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = 0;
    [v12 getUUIDBytes:&v14];
    xpc_dictionary_set_uuid(v11, "kCBMsgArgDeviceUUID", &v14);
  }

  xpc_dictionary_set_int64(v11, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v11, "kCBMsgArgPSM", a4);
  xpc_dictionary_set_int64(v11, "kCBMsgArgCID", a5);
  sub_10004DFB8(a1, 28, v11, 1);
}

void sub_10066FE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v13 = a2;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Channel published callback PSM : %u result : %d", buf, 0xEu);
  }

  v7 = [NSNumber numberWithUnsignedShort:a2, @"kCBMsgArgPSM"];
  v10[1] = @"kCBMsgArgResult";
  v11[0] = v7;
  v8 = [NSNumber numberWithInt:a3];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  sub_100052EE4(a1, 25, v9);
}

void sub_100670008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v13 = a2;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Channel unpublished callback PSM : %u, result : %d", buf, 0xEu);
  }

  v7 = [NSNumber numberWithUnsignedShort:a2, @"kCBMsgArgPSM"];
  v10[1] = @"kCBMsgArgResult";
  v11[0] = v7;
  v8 = [NSNumber numberWithInt:a3];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  sub_100052EE4(a1, 26, v9);
}

void sub_100670184(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v18) = 67109890;
    HIDWORD(v18) = a4;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = a3;
    HIWORD(v19) = 1024;
    v20 = a5;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Channel data received callback PSM : %u, result : %d, cid : %d data : %@", &v18, 0x1Eu);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v11;
  v16 = v15;
  if (v15)
  {
    v18 = 0;
    v19 = 0;
    [v15 getUUIDBytes:&v18];
    xpc_dictionary_set_uuid(v14, "kCBMsgArgDeviceUUID", &v18);
  }

  xpc_dictionary_set_int64(v14, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v14, "kCBMsgArgPSM", a4);
  xpc_dictionary_set_int64(v14, "kCBMsgArgCID", a5);
  v17 = v12;
  xpc_dictionary_set_data(v14, "kCBMsgArgData", [v12 bytes], objc_msgSend(v12, "length"));
  sub_10004DFB8(a1, 32, v14, 1);
}

void sub_10067038C()
{
  v0 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::advertisingStarted", v1, 2u);
  }
}

void sub_1006703F4()
{
  v0 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::advertisingStopped", v1, 2u);
  }
}

void sub_10067045C(uint64_t a1, int a2)
{
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::scanningStarted error:%d", v4, 8u);
  }
}

void sub_100670500(uint64_t a1, int a2)
{
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::scanningStopped error:%d", v4, 8u);
  }
}

void sub_1006705A4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v15 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138413826;
    v17 = a3;
    v18 = 2112;
    v19 = a4;
    v20 = 1024;
    v21 = a5;
    v22 = 1024;
    v23 = a6;
    v24 = 1024;
    v25 = a7;
    v26 = 2048;
    v27 = a1;
    v28 = 1024;
    v29 = a8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::deviceFound data:%@ encryptedAEM:%@ avgRSSI:%d count:%d saturated:%d timestamp:%f lastScanDeltaSeconds:%d", &v16, 0x38u);
  }
}

uint64_t sub_1006706BC(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  result = sub_1007A3CE4(off_100B51070);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10067070C(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_100066A74(off_100B512F0, *(v2 + 128), a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

id sub_100670768(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  for (i = 0; i < [v1 count]; ++i)
  {
    v4 = [v1 objectAtIndex:i];
    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", sub_10002C70C([v4 longLongValue]));
    [v2 addObject:v5];
  }

  v6 = [v2 copy];

  return v6;
}

void sub_10067087C(void *a1)
{
  v2 = a1[6];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[5];

  sub_1003B1ACC(v3, v4, v5, v6);
}

void sub_1006708D8(id a1)
{
  v48 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionMinCELength");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v48);
  if (v48)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else if (!v3)
  {
    goto LABEL_13;
  }

  v4 = qword_100BCE950;
  v5 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v6 = v48;
  if (v5)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionMinCELength:%d", buf, 8u);
    v6 = v48;
  }

  byte_100B6F810 = v6;
  byte_100B6F815 = 1;
LABEL_13:
  v7 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionMaxCELength");
  v8 = (*(*v7 + 88))(v7, buf, __p, &v48);
  if (v48)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else if (!v9)
  {
    goto LABEL_25;
  }

  v10 = qword_100BCE950;
  v11 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v12 = v48;
  if (v11)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionMaxCELength:%d", buf, 8u);
    v12 = v48;
  }

  byte_100B6F811 = v12;
  byte_100B6F815 = 1;
LABEL_25:
  v13 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionMinCIFrames");
  v14 = (*(*v13 + 88))(v13, buf, __p, &v48);
  if (v48)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_37;
    }
  }

  else if (!v15)
  {
    goto LABEL_37;
  }

  v16 = qword_100BCE950;
  v17 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v18 = v48;
  if (v17)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionMinCELength:%d", buf, 8u);
    v18 = v48;
  }

  byte_100B6F810 = v18;
  byte_100B6F815 = 1;
LABEL_37:
  v19 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionMaxCIFrames");
  v20 = (*(*v19 + 88))(v19, buf, __p, &v48);
  if (v48)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v21)
    {
      goto LABEL_49;
    }
  }

  else if (!v21)
  {
    goto LABEL_49;
  }

  v22 = qword_100BCE950;
  v23 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v24 = v48;
  if (v23)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionMaxCELength:%d", buf, 8u);
    v24 = v48;
  }

  byte_100B6F811 = v24;
  byte_100B6F815 = 1;
LABEL_49:
  v25 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionSupervisionTimeout");
  v26 = (*(*v25 + 88))(v25, buf, __p, &v48);
  if (v48)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_61;
    }
  }

  else if (!v27)
  {
    goto LABEL_61;
  }

  v28 = qword_100BCE950;
  v29 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v30 = v48;
  if (v29)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionSupervisionTimeout:%d", buf, 8u);
    v30 = v48;
  }

  byte_100B6F811 = v30;
  byte_100B6F815 = 1;
LABEL_61:
  v45 = 0;
  v31 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideAutoReconnectEnabled");
  v32 = (*(*v31 + 72))(v31, buf, __p, &v45);
  v33 = v45;
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  v34 = v32 & v33;
  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v34)
    {
      goto LABEL_70;
    }
  }

  else if (!v34)
  {
    goto LABEL_70;
  }

  v35 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Warning: AutoReconnectEnabled for everyone", buf, 2u);
  }

  byte_100B6F816 = v45;
LABEL_70:
  v36 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideTxPowerConnectInd");
  v37 = (*(*v36 + 88))(v36, buf, __p, &v48);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v37)
    {
      goto LABEL_79;
    }
  }

  else if (!v37)
  {
    goto LABEL_79;
  }

  v38 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Warning: OverrideTxPowerConnectInd:%d", buf, 8u);
  }

  byte_100B6F812 = v48;
  byte_100B6F815 = 1;
LABEL_79:
  v39 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideTxPowerAuxConnectReq");
  v40 = (*(*v39 + 88))(v39, buf, __p, &v48);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v40)
    {
      goto LABEL_88;
    }
  }

  else if (!v40)
  {
    goto LABEL_88;
  }

  v41 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Warning: OverrideTxPowerAuxConnectReq:%d", buf, 8u);
  }

  LOBYTE(word_100B6F813) = v48;
  byte_100B6F815 = 1;
LABEL_88:
  v42 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideMrcEnable");
  v43 = (*(*v42 + 88))(v42, buf, __p, &v48);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v43)
    {
      return;
    }
  }

  else if (!v43)
  {
    return;
  }

  v44 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Warning: OverrideMrcEnable:%d", buf, 8u);
  }

  HIBYTE(word_100B6F813) = v48;
  byte_100B6F815 = 1;
}

void sub_1006711FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100671278(void *a1)
{
  v2 = a1[6];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[5];

  sub_1003B02AC(v3, v4, v5, v6);
}

uint64_t sub_1006712D4(uint64_t a1)
{
  v2 = 0;
  v6 = 0;
  v5 = 0;
  do
  {
    *(&v5 + v2++) = arc4random_uniform(0x20u);
  }

  while (v2 != 5);
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v3 = off_100B508A8;
  sub_10004DFB4(v7, *(a1 + 32));
  return sub_10076D19C(v3, v7, &v5);
}

void sub_100671394(int a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set LE AFH completed with status=%{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

void sub_100671444(uint64_t a1, __int16 a2, char a3, char a4, char a5)
{
  word_100BCE880 = a2;
  byte_100BCE882 = a3;
  byte_100BCE883 = a4;
  byte_100BCE884 = a5;
  sub_10002286C(&stru_100BCE850);
}

uint64_t sub_100671468(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v3 = off_100B51070;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  return sub_1007A6B74(v3, v4, v5);
}

uint64_t sub_1006714C4(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return sub_1007A6788(v2, v3, v4, v5);
}

uint64_t sub_100671520(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (v2)
  {
    v3 = 0;
    v4 = &v10;
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      v5 = off_100B508C8;
      v6 = [*(a1 + 32) objectAtIndexedSubscript:{v3, v10, v11, v12, v13}];
      v7 = sub_100046458(v5, v6, 0);
      v8 = sub_10009A66C(v7);
      *v4 = v8;
      *(v4 + 6) = BYTE6(v8);
      *(v4 + 2) = WORD2(v8);

      ++v3;
      v4 = (v4 + 7);
    }

    while (v2 != v3);
  }

  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  return sub_1007A682C(off_100B51070, &v10, v2, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_100671680(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1007A6C3C(v2, v3, v4);
}

uint64_t sub_1006716D4()
{
  v0 = *(*sub_10000C7D0() + 656);

  return v0();
}

uint64_t sub_100671754(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v2 = off_100B508A8;
  sub_10004DFB4(v4, *(a1 + 32));
  return sub_10074EFB0(v2, v4, *(a1 + 40));
}

void sub_1006717E8(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = a2;
  v8 = xpc_dictionary_create(0, 0, 0);
  reply = xpc_dictionary_create_reply(v8);
  if (reply)
  {
    v10 = v7;
    v11 = v10;
    if (v10)
    {
      *uuid = 0;
      v13 = 0;
      [v10 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(reply, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", a4);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgNumConfigSupported", *a3);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgMaxProceduresSupported", *(a3 + 1));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgNumAntennasSupported", a3[4]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRolesSupported", a3[5]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgModes_Supported", a3[6]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRTTCapability", a3[7]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRTTCoarseN", a3[8]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRTTSoundingN", a3[9]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRTTRandomPayloadN", a3[10]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgCSSyncPHYsSupported", a3[16]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgSubfeaturesSupported", *(a3 + 9));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTIP1TimesSupported", *(a3 + 10));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTIP2TimesSupported", *(a3 + 11));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTFcsTimesSupported", *(a3 + 12));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTPMTimesSupported", *(a3 + 13));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTSWTimesSupported", a3[28]);
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
  }
}

uint64_t sub_100671A48(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2884(off_100B512F0, *(v2 + 128));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671AA0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B28D4(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671AFC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8[0] = v5;
  *(v8 + 10) = *(a1 + 82);
  result = sub_1003B294C(off_100B512F0, v3, v4, &v7);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671B78(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B29E4(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671BD4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2A5C(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671C30(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8[0] = v5;
  *(v8 + 10) = *(a1 + 82);
  result = sub_1003B2AD4(off_100B512F0, v3, v4, &v7);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671CD8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2BA0(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671D38(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2C20(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671DA4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  result = sub_1003B2CB0(off_100B512F0, v3, v4, v7);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671E18(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2D3C(off_100B512F0, *(v2 + 128), a1 + 48);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100671E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_100671EA8(uint64_t a1)
{
  *(a1 + 48) = &off_100AE0A78;
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

uint64_t sub_100671ED8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2D94(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671F40(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2E28(off_100B512F0, *(v2 + 128));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671F98(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2E78(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671FF4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2EF0(off_100B512F0, *(v2 + 128), *(a1 + 32), a1 + 56);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100672054(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v2 = off_100B508A8;
  sub_10004DFB4(v4, *(a1 + 32));
  return sub_10074F028(v2, v4, *(a1 + 40));
}

uint64_t sub_1006720F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  v8 = *(a1 + 88);
  result = sub_1003B2664(off_100B512F0, v3, v4, v7, *(v2 + 96));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100672170(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B271C(off_100B512F0, *(v2 + 128), *(a1 + 56) != 0, *(a1 + 32), *(a1 + 72), *(a1 + 64));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1006721E0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 56) != 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = *(a1 + 88);
  v9[0] = *(a1 + 72);
  v9[1] = v7;
  result = sub_1003B27B4(off_100B512F0, v3, v4, v5, v6, v9, *(a1 + 104), *(v2 + 96));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100672348(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v3 = off_100B51070;
  v4 = *(v2 + 128);
  v5 = sub_10000C5F8(a1 + 40);
  v6 = sub_10000C5E0(a1 + 40);
  v7 = sub_10000C5F8(a1 + 56);
  v8 = sub_10000C5E0(a1 + 56);
  HIBYTE(v10) = *(a1 + 112);
  LOBYTE(v10) = *(a1 + 104);
  return sub_1007A68D8(v3, v4, v5, v6, v7, v8, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v10, *(a1 + 120), *(a1 + 128), *(a1 + 136));
}

void sub_100672424(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  a1[5] = &off_100AE0A78;
  a1[6] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a2 + 64);
  a1[7] = &off_100AE0A78;
  a1[8] = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }
}

void sub_1006724AC(_Unwind_Exception *exception_object)
{
  *(v1 + 40) = v2;
  v4 = *(v1 + 48);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006724C8(void *a1)
{
  a1[7] = &off_100AE0A78;
  v2 = a1[8];
  if (v2)
  {
    sub_10000C808(v2);
  }

  a1[5] = &off_100AE0A78;
  v3 = a1[6];
  if (v3)
  {

    sub_10000C808(v3);
  }
}

uint64_t sub_100672558(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v3 = off_100B51070;
  v4 = *(v2 + 128);
  v5 = sub_10000C5F8(a1 + 40);
  v6 = sub_10000C5E0(a1 + 40);
  v7 = sub_10000C5F8(a1 + 56);
  v8 = sub_10000C5E0(a1 + 56);
  HIBYTE(v10) = *(a1 + 112);
  LOBYTE(v10) = *(a1 + 104);
  return sub_1007A6A30(v3, v4, v5, v6, v7, v8, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v10, *(a1 + 120));
}

void sub_100672628(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[6] != 0;
  v7 = a1[7] != 0;

  sub_1003B217C(v3, v4, v5, v6, v7, 0);
}

void sub_10067269C(void *a1)
{
  v2 = a1[6];
  if (*(v2 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B410();
    }

    goto LABEL_19;
  }

  v3 = (a1 + 4);
  if (!a1[4])
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B52C();
    }

    goto LABEL_19;
  }

  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  if (sub_1007868D4(off_100B508C8, *v3))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B4BC();
    }

LABEL_19:
    v4 = 0;
    goto LABEL_20;
  }

  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  sub_10003EF30(off_100B508C8);
  *uu = 0;
  v9 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  sub_10078A9E0(off_100B508C8, *v3, uu);
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B44C();
    }

    goto LABEL_19;
  }

  v7 = sub_10004DF60(uu);
  v4 = sub_10005201C(v7, *(v2 + 168), *(v2 + 80));

LABEL_20:
  v6 = a1[5];
  v5 = a1 + 5;
  xpc_dictionary_set_value(*(*(v6 + 8) + 24), "kCBMsgArgDevices", v4);
  xpc_connection_send_message(*(v2 + 16), *(*(*v5 + 8) + 24));
  xpc_release(*(*(*v5 + 8) + 24));
  if (v4)
  {
    xpc_release(v4);
  }
}

void sub_1006728D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1006728F0(void *a1)
{
  v2 = a1[6];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[5];

  sub_1003B23FC(v3, v4, v5, v6);
}

void sub_10067294C(id a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  sub_1003B3B1C();
}

void sub_100672990(id a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  sub_1003B3A54();
}

uint64_t sub_1006729D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = off_100B51070;
  if (*(v1 + 96))
  {
    v3 = *(v1 + 96);
  }

  else
  {
    v3 = @"-";
  }

  return sub_1007AD898(v2, v3);
}

uint64_t sub_100672A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = off_100B51070;
  if (*(v1 + 96))
  {
    v3 = *(v1 + 96);
  }

  else
  {
    v3 = @"-";
  }

  return sub_1007ADB50(v2, v3);
}

void sub_100672A9C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_1003B37AC(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56));
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AppManager::getInstance()->setConnectionLatency returned %d", v5, 8u);
  }
}

uint64_t sub_100672B8C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B30BC(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100672C48(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  sub_1003B3278(v3, v4, v5, v6);
}

void sub_100672CA8(id a1)
{
  v35 = 0;
  __buf = 0;
  arc4random_buf(&__buf, 6uLL);
  v1 = __buf | 0x3FLL;
  LOBYTE(__buf) = __buf | 0x3F;
  v2 = HIBYTE(v35) | 0x3FLL;
  HIBYTE(v35) |= 0x3Fu;
  v3 = BYTE1(__buf);
  v4 = BYTE2(__buf);
  v5 = HIBYTE(__buf);
  v6 = v35;
  *uu = 0;
  v37 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_1000498D4(off_100B508C8, (v1 << 40) | (v3 << 32) | (v4 << 24) | (v5 << 16) | (v6 << 8) | v2 | 0x1000000000000, 1u, 1u, 0, 0, uu);
  if (!uuid_is_null(uu))
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    memset(v20, 0, sizeof(v20));
    v18 = 0u;
    v19 = 0u;
    sub_100007AD0(&v18);
    v7 = sub_100007774(&v19);
    sub_10004D9B0();
    sub_100007774(v7);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v8 = off_100B508C8;
    std::stringbuf::str();
    sub_100783194(v8, uu, &v14, 1);
    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v9 = off_100B508C8;
    v10 = sub_10004DF60(uu);
    sub_100007E30(v12, "_FAKE_LE_DEVICE");
    sub_10078787C(v9, v10, v12);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    *&v19 = v11;
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*(&v21 + 1));
    }

    std::locale::~locale(v20);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }
}

void sub_100673018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1007FC91C(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_100673088()
{
  v10 = 0;
  __buf = 0;
  arc4random_buf(&__buf, 6uLL);
  v8 = 0;
  v7 = 0;
  arc4random_buf(&v7, 6uLL);
  v0 = v7 | 0x3FLL;
  LOBYTE(v7) = v7 | 0x3F;
  v1 = HIBYTE(v8) | 0x3FLL;
  HIBYTE(v8) |= 0x3Fu;
  v2 = BYTE1(v7);
  v3 = BYTE2(v7);
  v4 = HIBYTE(v7);
  v5 = v8;
  *uu = 0;
  v12 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_1000498D4(off_100B508C8, (v0 << 40) | (v2 << 32) | (v3 << 24) | (v4 << 16) | (v5 << 8) | v1 | 0x1000000000000, 1u, 1u, 0, 0, uu);
  result = uuid_is_null(uu);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_100673938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1007FC91C(&a32);
  *(v33 - 184) = a9;
  v35 = *(v33 - 176);
  if (v35)
  {
    sub_10000C808(v35);
  }

  _Unwind_Resume(a1);
}

void sub_100673A68(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_100013C04(*(a1 + 48), "kCBMsgArgName");
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  if (sub_10004FF0C(off_100B508C8, *(a1 + 32), *(v2 + 96), *(v2 + 48)))
  {
    if (*(v2 + 184) == 1)
    {
      v4 = 0;
      if (*(a1 + 32) && v3)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100856AE8();
        }

        v4 = sub_10078928C(off_100B508C8, *(a1 + 32), v3);
      }
    }

    else
    {
      v4 = 0;
    }

    reply = xpc_dictionary_create_reply(*(a1 + 56));
    if (reply)
    {
      v10 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_string(reply, "kCBMsgArgCustomPropertyName", [v3 UTF8String]);
      xpc_dictionary_set_value(reply, "kCBMsgArgCustomPropertyValue", v10);
      xpc_connection_send_message(*(v2 + 16), reply);
      if (v10)
      {
        xpc_release(v10);
      }

      xpc_release(reply);
    }
  }

  else
  {
    v5 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v6 = *(v2 + 96);
      v7 = *(v2 + 48);
      v8 = *(a1 + 32);
      v11 = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v11, 0x20u);
    }
  }
}

void sub_100673C80(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  if (sub_10004FF0C(off_100B508C8, *(a1 + 32), *(v2 + 96), *(v2 + 48)))
  {
    if (*(v2 + 184) == 1 && *(a1 + 32))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      v3 = sub_1007891E0(off_100B508C8, *(a1 + 32));
    }

    else
    {
      v3 = &__NSArray0__struct;
    }

    reply = xpc_dictionary_create_reply(*(a1 + 48));
    if (reply)
    {
      v9 = xpc_array_create(0, 0);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, [v14 UTF8String]);
          }

          v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }

      xpc_dictionary_set_value(reply, "kCBMsgArgCustomPropertyNames", v9);
      xpc_connection_send_message(*(v2 + 16), reply);
      if (v9)
      {
        xpc_release(v9);
      }

      xpc_release(reply);
    }
  }

  else
  {
    v4 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v5 = *(v2 + 96);
      v6 = *(v2 + 48);
      v7 = *(a1 + 32);
      *buf = 138412802;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }
  }
}

uint64_t sub_100673F24(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B388C(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100673F80(uint64_t a1)
{
  v2 = *(a1 + 40);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  sub_1007C5A1C(off_100B508B8, *(a1 + 32), &v42);
  v41 = 0;
  bytes = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10085B568();
  }

  sub_10009BE34(off_100B50A98, &bytes);
  v38 = 0;
  v39 = 0;
  if (qword_100B508C0 != -1)
  {
    sub_1008569B8();
  }

  sub_10000C704(&v38, off_100B508B8 + 184, 0x10uLL);
  v3 = BYTE8(v46);
  v36 = *(&v46 + 9);
  v37 = *(&v46 + 13);
  v34 = 0;
  v35 = 0;
  sub_10000C704(&v34, &v42, 0x10uLL);
  v32 = 0;
  v33 = 0;
  sub_10000C704(&v32, &v43 + 12, 0x10uLL);
  v30 = 0;
  v31 = 0;
  sub_10000C704(&v30, &v43 + 4, 8uLL);
  v28 = 0;
  v29 = 0;
  sub_10000C704(&v28, &v45, 8uLL);
  v26 = 0;
  v27 = 0;
  sub_10000C704(&v26, &v45 + 8, 0x10uLL);
  v24 = 0;
  v25 = 0;
  sub_10000C704(&v24, &v44 + 14, 2uLL);
  v22 = 0;
  v23 = 0;
  sub_10000C704(&v22, &v43 + 2, 2uLL);
  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v5 = reply;
  if (reply)
  {
    xpc_dictionary_set_data(reply, "kCBMsgArgAddressString", &bytes, 6uLL);
    v6 = sub_10000C5F8(&v38);
    v7 = sub_10000C5E0(&v38);
    xpc_dictionary_set_data(v5, "kCBMsgArgLocalIRK", v6, v7);
    v8 = sub_10000C5F8(&v34);
    v9 = sub_10000C5E0(&v34);
    xpc_dictionary_set_data(v5, "kCBMsgArgRemoteLTK", v8, v9);
    v10 = sub_10000C5F8(&v22);
    v11 = sub_10000C5E0(&v22);
    xpc_dictionary_set_data(v5, "kCBMsgArgRemoteEdiv", v10, v11);
    v12 = sub_10000C5F8(&v30);
    v13 = sub_10000C5E0(&v30);
    xpc_dictionary_set_data(v5, "kCBMsgArgRemoteRand", v12, v13);
    v14 = sub_10000C5F8(&v32);
    v15 = sub_10000C5E0(&v32);
    xpc_dictionary_set_data(v5, "kCBMsgArgLocalLTK", v14, v15);
    v16 = sub_10000C5F8(&v24);
    v17 = sub_10000C5E0(&v24);
    xpc_dictionary_set_data(v5, "kCBMsgArgLocalEdiv", v16, v17);
    v18 = sub_10000C5F8(&v28);
    v19 = sub_10000C5E0(&v28);
    xpc_dictionary_set_data(v5, "kCBMsgArgLocalRand", v18, v19);
    v20 = sub_10000C5F8(&v26);
    v21 = sub_10000C5E0(&v26);
    xpc_dictionary_set_data(v5, "kCBMsgArgRemoteIRK", v20, v21);
    xpc_dictionary_set_data(v5, "kCBMsgArgRemoteAddress", &v36, 6uLL);
    xpc_dictionary_set_int64(v5, "kCBMsgArgRemoteAddressType", v3);
    xpc_connection_send_message(*(v2 + 16), v5);
    xpc_release(v5);
  }

  v22 = &off_100AE0A78;
  if (v23)
  {
    sub_10000C808(v23);
  }

  v24 = &off_100AE0A78;
  if (v25)
  {
    sub_10000C808(v25);
  }

  v26 = &off_100AE0A78;
  if (v27)
  {
    sub_10000C808(v27);
  }

  v28 = &off_100AE0A78;
  if (v29)
  {
    sub_10000C808(v29);
  }

  v30 = &off_100AE0A78;
  if (v31)
  {
    sub_10000C808(v31);
  }

  v32 = &off_100AE0A78;
  if (v33)
  {
    sub_10000C808(v33);
  }

  v34 = &off_100AE0A78;
  if (v35)
  {
    sub_10000C808(v35);
  }

  v38 = &off_100AE0A78;
  if (v39)
  {
    sub_10000C808(v39);
  }
}

void sub_100674460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, atomic_uint *a14, uint64_t a15, atomic_uint *a16, uint64_t a17, atomic_uint *a18, uint64_t a19, atomic_uint *a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, atomic_uint *a25)
{
  if (a12)
  {
    sub_10000C808(a12);
  }

  if (a14)
  {
    sub_10000C808(a14);
  }

  if (a16)
  {
    sub_10000C808(a16);
  }

  if (a18)
  {
    sub_10000C808(a18);
  }

  if (a20)
  {
    sub_10000C808(a20);
  }

  if (a22)
  {
    sub_10000C808(a22);
  }

  if (a25)
  {
    sub_10000C808(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067460C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  value = 0;
  v3 = *sub_10000C7D0();
  v4 = (*(v3 + 4160))();
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_int64(reply, "kCBUsageStatsLePercent", WORD4(v9) + WORD2(v9));
    xpc_dictionary_set_int64(v6, "kCBUsageStatsClPercent", WORD5(v9) + WORD3(v9));
    if (qword_100B50910 != -1)
    {
      sub_10085B590();
    }

    v7 = sub_1000AD270(off_100B50908);
    xpc_dictionary_set_int64(v6, "kCBUsageStatsIsAudioStreaming", v7);
    xpc_dictionary_set_int64(v6, "kCBUsageStatsTimeStampNsMonotonic", value);
    xpc_dictionary_set_int64(v6, "kCBMsgArgResult", v4);
    xpc_connection_send_message(*(v2 + 16), v6);
    xpc_release(v6);
  }
}

uint64_t sub_100674798(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003C1668(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56), *(a1 + 64) != 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100674804(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v3 = sub_1000C5064(off_100B508A8);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        if (sub_10004FF0C(off_100B508C8, v7, *(v2 + 96), *(v2 + 48)))
        {
          v8 = sub_10005201C(v7, *(v2 + 168), *(v2 + 80));
          xpc_array_append_value(*(a1 + 40), v8);
          xpc_release(v8);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1006749A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 80) < 1 || *(a1 + 48) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B5B8();
    }

    v3 = 0;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_1007922A8(off_100B508C8, *(a1 + 48));
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    if (*(a1 + 48) >= 1)
    {
      xpc_dictionary_set_int64(v4, "kCBMsgArgResultDeviceCount", v3);
      v4 = *(*(*(a1 + 32) + 8) + 24);
    }

    xpc_connection_send_message(*(v2 + 16), v4);
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
  }
}

uint64_t sub_100674AA0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100013CA4(a2, 0, a3, a4, a5, a6, a7, a8, "kCBCSNumAntennaPath");
  a3[52199] = 0;
  xpc_dictionary_set_data(a2, "kCBCSStepMode", a3 + 14, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepChannel", a3 + 174, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepDataLength", a3 + 334, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepData", a3 + 494, 0x6400uLL);
  xpc_dictionary_set_data(a2, "kCBCSReflectorStepMode", a3 + 26112, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSReflectorStepChannel", a3 + 26272, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepDataLength", a3 + 334, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepData", a3 + 494, 0x6400uLL);
  return 0;
}

void sub_100674C34()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 48);
  if (*(v1 + 80) >= 2)
  {
    v2 = v0;
    v3 = *(v0 + 56);
    if ((v3 & 4) != 0)
    {
      if (qword_100B512F8 != -1)
      {
        sub_1000C10B4();
      }

      memcpy(v7, v2 + 68, sizeof(v7));
      v4 = sub_1003C16F8();
      if ((v2[7] & 0x1000) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 0x1000) == 0)
      {
LABEL_11:
        if (v4 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085B668();
        }

        v5 = *(*(v2[5] + 8) + 24);
        if (v5)
        {
          xpc_dictionary_set_int64(v5, "kCBMsgArgResult", v4);
          xpc_connection_send_message(*(v1 + 16), *(*(v2[5] + 8) + 24));
          xpc_release(*(*(v2[5] + 8) + 24));
        }

        return;
      }
    }

    sub_1003177AC();
    memcpy(v7, v2 + 68, 0x65F2uLL);
    memcpy(__dst, v2 + 26166, sizeof(__dst));
    sub_100318C74();
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085B62C();
  }
}

void sub_100674E2C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  if (v6)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v6, *(a1 + 96), *(a1 + 48)))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1000C10B4();
      }

      if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v6))
      {
        v7 = xpc_dictionary_create(0, 0, 0);
        v8 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v9 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v9 = *v9;
          }

          *value_4 = 138412546;
          *&value_4[4] = v6;
          *&value_4[12] = 2082;
          *&value_4[14] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'connection completed' event for device %@ to session %{public}s", value_4, 0x16u);
        }

        v10 = v6;
        *value_4 = 0;
        *&value_4[8] = 0;
        [v10 getUUIDBytes:value_4];
        xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", value_4);

        xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a4);
        if (!a4)
        {
          if (qword_100B508B0 != -1)
          {
            sub_10085681C();
          }

          v11 = off_100B508A8;
          sub_10004DFB4(value_4, v10);
          v12 = sub_1000501F8(v11, value_4);
          xpc_dictionary_set_int64(v7, "kCBMsgArgConnectionRole", v12);
          if (qword_100B541E8 != -1)
          {
            sub_1000E7B38();
          }

          v13 = sub_1000503B8(qword_100B541E0, v10);
          xpc_dictionary_set_int64(v7, "kCBMsgArgATTMTU", v13);
          if (qword_100B508B0 != -1)
          {
            sub_10085681C();
          }

          v14 = off_100B508A8;
          sub_10004DFB4(value_4, v10);
          if (sub_100050290(v14, value_4))
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          xpc_dictionary_set_int64(v7, "kCBMsgArgConnectionTransport", v15);
          if (*(a1 + 168) == 1)
          {
            if (qword_100B508B0 != -1)
            {
              sub_10085681C();
            }

            v16 = off_100B508A8;
            sub_10004DFB4(value_4, v10);
            v17 = sub_100050304(v16, value_4);
            xpc_dictionary_set_BOOL(v7, "kCBMsgArgIsLinkEncrypted", v17);
          }

          value = 0;
          if (qword_100B50F78 != -1)
          {
            sub_10085A8C0();
          }

          v18 = qword_100B50F70;
          sub_10004DFB4(value_4, v10);
          if (!sub_1005807A8(v18, value_4, &value))
          {
            xpc_dictionary_set_int64(v7, "kCBMsgArgsTransport", value);
          }
        }

        sub_10004DFB8(a1, 92, v7, 1);
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A814();
      }
    }

    else
    {
      v19 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 96);
        v21 = *(a1 + 48);
        *value_4 = 138412802;
        *&value_4[4] = v20;
        *&value_4[12] = 2112;
        *&value_4[14] = v21;
        v24 = 2112;
        v25 = v6;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", value_4, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085B6DC();
  }
}

void sub_100675268(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  sub_10004DFB4(uu2, v4);
  v5 = sub_10004E34C(a1 + 208, uu2);
  v6 = v5;
  if (a1 + 216 != v5)
  {
    v7 = *(v5 + 48);
    v8 = (v5 + 56);
    if (v7 != (v5 + 56))
    {
      do
      {
        v9 = v7[4];
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        v10 = v7[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v7 = v11;
      }

      while (v11 != v8);
    }

    sub_10067D88C((a1 + 208), v6);
  }
}

void sub_1006753A4(uint64_t a1, uint64_t a2, void *a3, BOOL a4)
{
  v6 = a3;
  if (*(a1 + 168) == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v7 = sub_10004FF0C(off_100B508C8, v6, *(a1 + 96), *(a1 + 48));
    v8 = qword_100BCE950;
    if (v7)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v9 = *v9;
        }

        v13 = 138412546;
        v14 = v6;
        v15 = 2082;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'connection state updated' event for device %@ to session %{public}s", &v13, 0x16u);
      }

      v10 = sub_10005201C(v6, *(a1 + 168), *(a1 + 80));
      xpc_dictionary_set_BOOL(v10, "kCBMsgArgConnectionState", a4);
      sub_10004DFB8(a1, 95, v10, 1);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 96);
      v12 = *(a1 + 48);
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v13, 0x20u);
    }
  }
}

void sub_100675580(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xarray = xpc_array_create(0, 0);
  if (a3)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (*(a3 + 16) != *(a3 + 8))
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v7 = sub_1005B308C((a3 + 8), buf);
      sub_10000CEDC(buf, *&buf[8]);
      xpc_dictionary_set_value(v6, "kCBMsgArgUUIDs", v7);
      xpc_release(v7);
    }

    if (*a3 == 1)
    {
      xpc_dictionary_set_BOOL(v6, "kCBScanOptionAllowDuplicates", 1);
    }

    v8 = *(a3 + 56);
    v9 = *(a3 + 64);
    v10 = (a3 + 56);
    if (v9 != v8)
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v11 = sub_1005B308C(v10, buf);
      sub_10000CEDC(buf, *&buf[8]);
      xpc_dictionary_set_value(xdict, "kCBScanOptionSolicitedServiceUUIDs", v11);
      xpc_release(v11);
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgOptions", v6);
    xpc_release(v6);
  }

  for (i = *a2; i != a2[1]; ++i)
  {
    v13 = *i;
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v14 = off_100B508C8;
    v15 = sub_10004DF60(v13);
    LOBYTE(v14) = sub_10004FF0C(v14, v15, *(a1 + 96), *(a1 + 48));

    if ((v14 & 1) == 0)
    {
      v20 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 96);
        v22 = *(a1 + 48);
        v23 = sub_10004DF60(v13);
        *buf = 138412802;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        *&buf[22] = 2112;
        v40 = v23;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      continue;
    }

    memset(buf, 0, sizeof(buf));
    sub_100007F20(buf, (v13 + 24));
    v16 = xpc_dictionary_create(0, 0, 0);
    string = 0;
    v37 = 0;
    v38 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v17 = off_100B508C8;
    v18 = sub_10004DF60(v13);
    sub_10004FFDC(v17, v18, &string);

    if (SHIBYTE(v38) < 0)
    {
      if (v37)
      {
        p_string = string;
        goto LABEL_22;
      }
    }

    else if (HIBYTE(v38))
    {
      p_string = &string;
LABEL_22:
      xpc_dictionary_set_string(v16, "kCBMsgArgName", p_string);
    }

    xpc_dictionary_set_uuid(v16, "kCBMsgArgDeviceUUID", v13);
    if (qword_100B541E8 != -1)
    {
      sub_1000E7B38();
    }

    v24 = qword_100B541E0;
    v25 = sub_10004DF60(v13);
    v26 = sub_1000503B8(v24, v25);
    xpc_dictionary_set_int64(v16, "kCBMsgArgATTMTU", v26);

    xpc_dictionary_set_BOOL(v16, "kCBMsgArgState", *(v13 + 16));
    v27 = xpc_array_create(0, 0);
    for (j = *(v13 + 48); j != *(v13 + 56); j += 18)
    {
      xpc_array_set_int64(v27, 0xFFFFFFFFFFFFFFFFLL, *(j + 16));
    }

    xpc_dictionary_set_value(v16, "kCBMsgArgSubscribedHandles", v27);
    xpc_release(v27);
    v29 = sub_10004DF60(v13);
    sub_100668910(a1, buf, v29);

    __p = 0;
    __dst = 0;
    v35 = 0;
    if (*&buf[8] != *buf)
    {
      sub_1000080CC(&__p, (*&buf[8] - *buf) >> 3);
    }

    v30 = sub_100485818(&__p);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    xpc_dictionary_set_value(v16, "kCBMsgArgServices", v30);
    xpc_release(v30);
    xpc_array_append_value(xarray, v16);
    xpc_release(v16);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(string);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  xpc_dictionary_set_value(xdict, "kCBMsgArgDevices", xarray);
  sub_10004DFB8(a1, 99, xdict, 1);
  xpc_release(xarray);
}

void sub_100675B34(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, int a6)
{
  v10 = a3;
  if (*(a1 + 168) == 1)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    v12 = v10;
    v13 = v12;
    if (v12)
    {
      *uuid = 0;
      v15 = 0;
      [v12 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_double(v11, "kCBMsgArgConnectionInterval", a4 * 1.25);
    xpc_dictionary_set_int64(v11, "kCBMsgArgConnectionLatency", a5);
    xpc_dictionary_set_double(v11, "kCBMsgArgSupervisionTimeout", (10 * a6));
    sub_10004DFB8(a1, 178, v11, 1);
  }
}

void sub_100675C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = a3;
  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = v14;
  v17 = v16;
  if (v16)
  {
    *uuid = 0;
    v19 = 0;
    [v16 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v15, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_uint64(v15, "kCBMsgArgTimeOfDay", a4);
  xpc_dictionary_set_uint64(v15, "kCBMsgArgLocalRefTime", a5);
  xpc_dictionary_set_uint64(v15, "kCBMsgArgRemoteRefTime", a6);
  xpc_dictionary_set_uint64(v15, "kCBMsgArgTimeToSend", a7);
  xpc_dictionary_set_int64(v15, "kCBMsgArgGMTDelta", a8);
  sub_10004DFB8(a1, 193, v15, 1);
}

void sub_100675E18(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  if (*(a1 + 168) == 1)
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v8 = *v8;
      }

      *buf = 138412546;
      v15 = v6;
      v16 = 2082;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending 'host state updated' event for device %@ to session %{public}s", buf, 0x16u);
    }

    if (a4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [NSNumber numberWithLongLong:v9, @"kCBMsgArgDeviceUUID", @"kCBMsgArgState", v6];
    v13[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:&v12 count:2];
    sub_100052EE4(a1, 176, v11);
  }
}

void sub_100675FA8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 169) == 1)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = v7;
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    xpc_dictionary_set_string(v7, "kCBMsgArgName", v9);
    xpc_dictionary_set_int64(v8, "kCBMsgArgState", a3);

    sub_10004DFB8(a1, 98, v8, 1);
  }
}

uint64_t sub_100676054(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2498(off_100B512F0, *(v2 + 128), *(a1 + 32), *(v2 + 182));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1006762F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006764F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void sub_1006768D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_100668C84(v2, *(a1 + 32), *(a1 + 48));
  v4 = *(a1 + 56);
  if (!v4)
  {
    operator new();
  }

  v8 = 0;
  if (!v3)
  {
    if (qword_100B50900 != -1)
    {
      sub_10085AC78();
    }

    v5 = qword_100B508F8;
    if (qword_100B512F8 != -1)
    {
      sub_1000C10B4();
    }

    if (off_100B512F0)
    {
      v6 = off_100B512F0 + 48;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 128);
    sub_10004DFB4(uu1, *(a1 + 32));
    sub_10070D9A4(v5, v6, v7, uu1, v4 == 0, *(a1 + 48), *(a1 + 64));
  }
}

void sub_100676B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  *(a1 + 72) = &off_100AE0A78;
  *(a1 + 80) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_100676B38(uint64_t a1)
{
  *(a1 + 72) = &off_100AE0A78;
  v1 = *(a1 + 80);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

void sub_100677350(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B50900 != -1)
  {
    sub_10085AC78();
  }

  v3 = qword_100B508F8;
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  if (off_100B512F0)
  {
    v4 = off_100B512F0 + 48;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 128);
  sub_10004DFB4(v7, *(a1 + 32));
  sub_100007E30(__p, [*(a1 + 40) UTF8String]);
  sub_10070E28C(v3, v4, v5, v7, __p);
}

void sub_100677498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006774BC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B794();
    }

    v3 = 12;
  }

  else if (*(a1 + 32))
  {
    if (qword_100B512F8 != -1)
    {
      sub_1000C10B4();
    }

    v3 = sub_1003C17F0(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 64), *(a1 + 40));
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B7D0();
    }

    v3 = 8;
  }

  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4)
  {
    xpc_dictionary_set_int64(v4, "kCBMsgArgResult", v3);
    xpc_connection_send_message(*(v2 + 16), *(*(*(a1 + 48) + 8) + 24));
    xpc_release(*(*(*(a1 + 48) + 8) + 24));
  }
}

uint64_t sub_1006775D0(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = sub_10037CE6C(object, "kCBMatchActionRulePeerAddress");
    v8 = sub_10037CE6C(object, "kCBMatchActionRuleLocalToken");
    v9 = v8;
    if (v8 && [v8 length] == 6)
    {
      if (v7 && [v7 length] == 6)
      {
        [v6 setObject:v7 forKeyedSubscript:@"MatchActionRulePeerAddress"];
        [v6 setObject:v9 forKeyedSubscript:@"MatchActionRuleLocalToken"];
        [v6 setObject:&off_100B339A8 forKeyedSubscript:@"MatchActionRuleHopValue"];
        v10 = *(a1 + 32);
        v11 = [v6 copy];
        [v10 addObject:v11];

        v5 = 1;
LABEL_13:

        return v5;
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085B80C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B848();
    }

    v5 = 0;
    goto LABEL_13;
  }

  return 0;
}

void sub_100677758(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100677790(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = sub_1007A3008(off_100B51070, *(a1 + 32));
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "setMatchActionRules returned %d", v4, 8u);
  }
}

void sub_100677860(uint64_t a1)
{
  __dst[0] = 0;
  __dst[1] = 0;
  memcpy(__dst, [*(a1 + 32) bytes], *(a1 + 40));
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  sub_1003B00D4(off_100B512F0, (a1 + 48), __dst);
}

uint64_t sub_100677900(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;

  return sub_1003B0130(v2, (a1 + 32));
}

void sub_100677954(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(a1 + 32);

  sub_1003B97D0(v2, v3);
}

void sub_1006779A8(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v10)
    {
      v7 = [v10 remoteHostID];
      xpc_dictionary_set_string(v5, "kCBMsgArgWhbRemoteControllerId", [v7 UTF8String]);

      v8 = *(a1 + 40);
      v9 = [v10 identifier];
      xpc_dictionary_set_string(v8, "kCBMsgArgWhbRemoteDeviceUUID", [v9 UTF8String]);

      v5 = *(a1 + 40);
    }

    xpc_dictionary_set_int64(v5, "kCBMsgArgResult", a3);
    xpc_connection_send_message(*(v6 + 16), *(a1 + 40));
    xpc_release(*(a1 + 40));
  }
}

void sub_100677ACC(id a1)
{
  if (qword_100B50C68 != -1)
  {
    sub_10085B150();
  }

  v2 = off_100B50C60;

  sub_10072D25C(v2, 1, 3, 1);
}

void sub_100677B1C(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  v2 = sub_1007CE3D4(off_100B508B8, 1);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100677B88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v2 = qword_100B54348;
  v3 = *(v1 + 128);

  return sub_10042E44C(v2, v3);
}

void sub_100677BDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v3 = qword_100B54348;
  v4 = *(v2 + 128);

  sub_10042E5E4(v3, v4, a1 + 40);
}

void *sub_100677C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  return sub_10067BBAC((a1 + 64), (a2 + 64));
}

void sub_100677C54(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void sub_100677C6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v3 = qword_100B54348;
  v4 = *(v2 + 128);

  sub_10042EAE4(v3, v4, (a1 + 40));
}

void sub_100677CE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v3 = qword_100B54348;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  sub_10042E8CC(v3, v4, v5);
}

void sub_100677D40(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v3 = qword_100B54348;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);

  sub_10042EDBC(v3, v4, v5, v6);
}

uint64_t sub_100677DA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54360 != -1)
  {
    sub_10085B898();
  }

  v2 = qword_100B54358;
  v3 = *(v1 + 128);

  return sub_10042F0B4(v2, v3);
}

_BYTE *sub_100677DF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54360 != -1)
  {
    sub_10085B898();
  }

  v3 = qword_100B54358;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 42);

  return sub_10042F0C4(v3, v4, v5, v6, v7);
}

void sub_100677E5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54360 != -1)
  {
    sub_10085B898();
  }

  v3 = qword_100B54358;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);

  sub_10042F154(v3, v4, v5, v6);
}

void sub_100677EBC(uint64_t a1, int a2, void *a3, char a4)
{
  v7 = a3;
  v11 = a4;
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8)
  {
    v9 = *(a1 + 40);
    xpc_dictionary_set_int64(v8, "kCBMsgArgResult", a2);
    if (!a2)
    {
      v10 = objc_opt_new();
      [v10 appendBytes:&v11 length:1];
      [v10 appendData:v7];
      xpc_dictionary_set_data(*(*(*(a1 + 32) + 8) + 24), "kCBFastLeConnectionInfoData", [v10 bytes], objc_msgSend(v10, "length"));
    }

    xpc_connection_send_message(*(v9 + 16), *(*(*(a1 + 32) + 8) + 24));
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
  }
}

void sub_100677FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v6 = *v6;
    }

    *buf = 138412546;
    *&buf[4] = v4;
    v17 = 2082;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'device name updated' event for device %@ to session %{public}s", buf, 0x16u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  if (sub_10004FF0C(off_100B508C8, v4, *(a1 + 96), *(a1 + 48)))
  {
    v13 = @"kCBMsgArgDeviceUUID";
    v14 = @"kCBMsgArgName";
    v15[0] = v4;
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    sub_10004FFDC(off_100B508C8, v4, buf);
    if (v19 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    v8 = [NSString stringWithUTF8String:v7, v13, v14, v15[0]];
    v15[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:&v13 count:2];

    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }

    sub_100052EE4(a1, 189, v9);
  }

  else
  {
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 96);
      v12 = *(a1 + 48);
      *buf = 138412802;
      *&buf[4] = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }
  }
}

void sub_100678264(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  v8 = a3;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v8;
  v11 = v10;
  if (v10)
  {
    *uuid = 0;
    v13 = 0;
    [v10 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v9, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_int64(v9, "kCBMsgArgData", a5);
  xpc_dictionary_set_int64(v9, "kCBMsgArgResult", a4);
  sub_10004DFB8(a1, 191, v9, 1);
}

void sub_10067838C(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    *uuid = 0;
    v11 = 0;
    [v8 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_int64(v7, "kCBMsgArgVisibleInSettings", a4);
  sub_10004DFB8(a1, 196, v7, 1);
}

void sub_10067849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = sub_10000C5F8(a3);
  v9 = sub_10000C5E0(a3);
  xpc_dictionary_set_data(v7, "kCBMsgArgLeZone", v8, v9);
  v10 = sub_10000C5F8(a4);
  v11 = sub_10000C5E0(a4);
  xpc_dictionary_set_data(v7, "kCBMsgArgLeZoneMask", v10, v11);

  sub_10004DFB8(a1, 97, v7, 1);
}

void sub_100678568(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v13[0] = v8;
  v12[0] = @"kCBMsgArgDeviceUUID";
  v12[1] = @"kCBTrackingOptionState";
  v9 = [NSNumber numberWithUnsignedChar:a4];
  v13[1] = v9;
  v12[2] = @"kCBTrackingOptionType";
  v10 = [NSNumber numberWithUnsignedChar:a5];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  sub_100052EE4(a1, 96, v11);
}

void sub_1006786B8(uint64_t a1, int a2, void *a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t value)
{
  v15 = a3;
  if (*(a1 + 80) >= 1)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v15;
    v18 = v17;
    if (v17)
    {
      *uuid = 0;
      v20 = 0;
      [v17 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v16, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTClockEventType", a4);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTLocalClock", a5);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTRemoteClock", a6);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTClockSeconds", a8);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTClockMicroSeconds", value);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTClockEventCounter", a7);
    sub_10004DFB8(a1, 222, v16, 1);
  }
}

void sub_100678860(uint64_t a1, int a2, void *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t value, uint64_t a10)
{
  v16 = a3;
  if (*(a1 + 80) >= 1)
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    v18 = v16;
    v19 = v18;
    if (v18)
    {
      *uuid = 0;
      v21 = 0;
      [v18 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v17, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockExceptionStatus", a4);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTLocalClock", value);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTRemoteClock", HIDWORD(value));
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockEventCounter", a6);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockConnectionIntervalMicroSec", 1250 * a5);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockCEOffset", a7);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockHostTime", a8);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockMicroSeconds", a10);
    sub_10004DFB8(a1, 235, v17, 1);
  }
}

void sub_100678A3C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v6 = a3;
  if (*(a1 + 80) >= 1)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = v6;
    v9 = v8;
    if (v8)
    {
      *uuid = 0;
      v11 = 0;
      [v8 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_uint64(v7, "kCBCSConfigId", *a4);
    xpc_dictionary_set_uint64(v7, "kCBCSStartAclConnEvent", *(a4 + 1));
    xpc_dictionary_set_uint64(v7, "kCBCSProcedureCounter", *(a4 + 2));
    xpc_dictionary_set_uint64(v7, "kCBCSFrequencyCompensation", *(a4 + 3));
    xpc_dictionary_set_uint64(v7, "kCBCSProcedureDoneStatus", a4[9]);
    xpc_dictionary_set_uint64(v7, "kCBCSSubEventDoneStatus", a4[10]);
    xpc_dictionary_set_uint64(v7, "kCBCSReferencePowerLevel", a4[8]);
    xpc_dictionary_set_uint64(v7, "kCBCSNumAntennaPath", a4[12]);
    xpc_dictionary_set_uint64(v7, "kCBCSNumStepsReported", a4[13]);
    xpc_dictionary_set_data(v7, "kCBCSStepMode", a4 + 14, 0xA0uLL);
    xpc_dictionary_set_data(v7, "kCBCSStepChannel", a4 + 174, 0xA0uLL);
    xpc_dictionary_set_data(v7, "kCBCSStepDataLength", a4 + 334, 0xA0uLL);
    xpc_dictionary_set_data(v7, "kCBCSStepData", a4 + 494, 0x6400uLL);
    xpc_dictionary_set_uint64(v7, "kCBCSCurrentStepIndex", a4[26094]);
    sub_10004DFB8(a1, 234, v7, 1);
  }
}

void sub_100678C70(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, const void *a8, char a9, char a10, char a11, char a12, char a13, unsigned __int16 value, int value_2, unsigned __int8 value_6)
{
  v21 = a3;
  if (*(a1 + 80) >= 1)
  {
    v22 = xpc_dictionary_create(0, 0, 0);
    v23 = v21;
    v24 = v23;
    if (v23)
    {
      *uuid = 0;
      v28 = 0;
      [v23 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v22, "kCBMsgArgDeviceUUID", uuid);
    }

    *uuid = 0;
    v28 = 0;
    sub_10000C704(uuid, a8, a9);
    v25 = sub_10000C5F8(uuid);
    v26 = sub_10000C5E0(uuid);
    xpc_dictionary_set_data(v22, "kCBGetRssiStatisticsRawData", v25, v26);
    xpc_dictionary_set_int64(v22, "kCBGetRssiStatisticsDetectionAverage", a10);
    xpc_dictionary_set_int64(v22, "kCBGetRssiStatisticsDetectionMedian", a12);
    xpc_dictionary_set_int64(v22, "kCBGetRssiStatisticsDetectionMaximum", a11);
    xpc_dictionary_set_int64(v22, "kCBGetRssiStatisticsDetectionMinimum", a13);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionCoreMotionAndMask", a4);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionCoreMotionAndMask2", a5);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionCoreMotionXorMask", a6);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionVariance", value);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionState", value_6);
    xpc_dictionary_set_int64(v22, "kCBMsgArgResult", value_2);
    sub_10004DFB8(a1, 226, v22, 1);
    *uuid = &off_100AE0A78;
    if (v28)
    {
      sub_10000C808(v28);
    }
  }
}

void sub_100678F50(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, unsigned int a6, int64_t a7, int a8)
{
  v14 = a3;
  if (*(a1 + 80) >= 1)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v14;
    v17 = v16;
    if (v16)
    {
      *uuid = 0;
      v19 = 0;
      [v16 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v15, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_int64(v15, "kCBUsageStatsLePercent", a4);
    xpc_dictionary_set_int64(v15, "kCBUsageStatsClPercent", a5);
    xpc_dictionary_set_int64(v15, "kCBUsageStatsIsAudioStreaming", a6);
    xpc_dictionary_set_int64(v15, "kCBUsageStatsTimeStampNsMonotonic", a7);
    xpc_dictionary_set_int64(v15, "kCBMsgArgResult", a8);
    sub_10004DFB8(a1, 227, v15, 1);
  }
}

void sub_1006790DC(uint64_t a1, uint64_t a2, void *a3, unsigned __int16 *a4, int a5)
{
  v8 = a3;
  if (*(a1 + 80) >= 1)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = v8;
    v11 = v10;
    if (v10)
    {
      *uuid = 0;
      v13 = 0;
      [v10 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v9, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_int64(v9, "kCBPhyStatsRSSI", *a4);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsTransmitPER", a4[1]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsTransmitPERNumberOfPackets", a4[2]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsTransmitClassicPER", a4[3]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsTransmitClassicPERNumberOfPackets", a4[4]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsReceivePER", a4[5]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsReceivePERNumberOfPackets", a4[6]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsReceiveClassicPER", a4[7]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsReceiveClassicPERNumberOfPackets", a4[8]);
    xpc_dictionary_set_int64(v9, "kCBMsgArgResult", a5);
    sub_10004DFB8(a1, 228, v9, 1);
  }
}

void sub_1006792B0(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7)
{
  v12 = a3;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v12;
  v15 = v14;
  if (v14)
  {
    *uuid = 0;
    v17 = 0;
    [v14 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v13, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_int64(v13, "kCBMsgArgPowerAssertionExecutionState", a7);
  xpc_dictionary_set_int64(v13, "kCBMsgArgPowerAssertionDuration", a5);
  xpc_dictionary_set_int64(v13, "kCBMsgArgPowerAssertionBegin", a4);
  xpc_dictionary_set_int64(v13, "kCBMsgArgResult", a6);
  sub_10004DFB8(a1, 225, v13, 1);
}

void sub_100679418(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, unint64_t a6)
{
  v10 = a3;
  if (a6)
  {
    sub_10004DFB4(uu2, v10);
    v11 = sub_10004E34C(a1 + 208, uu2);
    v12 = v11;
    if (a1 + 216 != v11)
    {
      v13 = *(v11 + 56);
      if (v13)
      {
        v14 = (v11 + 48);
        v15 = (v11 + 56);
        do
        {
          v16 = v13[4];
          v17 = v16 >= a6;
          v18 = v16 < a6;
          if (v17)
          {
            v15 = v13;
          }

          v13 = v13[v18];
        }

        while (v13);
        if (v15 != (v11 + 56) && v15[4] <= a6)
        {
          v19 = *(a6 + 8);
          v20 = sub_1004861F0(a6, a4, a5);
          sub_10004DFB8(a1, v19, v20, 1);
          sub_10002717C(v14, v15);
          operator delete(v15);
          if (!*(v12 + 64))
          {
            sub_10067D88C((a1 + 208), v12);
          }

          (*(*a6 + 8))(a6);
        }
      }
    }
  }
}

BOOL sub_1006795AC(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = 0;
  v4 = sub_100013DE8(a3, &v18);
  if (!v4)
  {
    v5 = *(a1 + 32);
    v7 = v5[1];
    v6 = v5[2];
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 3;
      v12 = (v10 >> 3) + 1;
      if (v12 >> 61)
      {
        sub_1000C7698();
      }

      v13 = v6 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        sub_10035EAA4(v5, v15);
      }

      *(8 * v11) = v18;
      v8 = 8 * v11 + 8;
      memcpy(0, v9, v10);
      v16 = *v5;
      *v5 = 0;
      v5[1] = v8;
      v5[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v18;
      v8 = (v7 + 8);
    }

    v5[1] = v8;
  }

  return v4 == 0;
}

uint64_t sub_1006796BC(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100679790;
    applier[3] = &unk_100AEE500;
    applier[4] = a2;
    if (xpc_array_apply(a1, applier))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B164(a1);
    }

    return 3;
  }
}

uint64_t sub_100679790(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = 0uLL;
  v22 = 0;
  sub_10003A364(&v21);
  if (sub_100013CA4(a3, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgUUID"))
  {
    return 0;
  }

  v19 = xmmword_1008A4AF8;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    return 0;
  }

  v19 = xmmword_1008A4B0C;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    return 0;
  }

  v19 = xmmword_1008A4AD0;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    return 0;
  }

  v19 = xmmword_1008A4AE4;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    v10 = sub_100013C04(a3, "kCBMsgArgData");
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (strlen([v11 UTF8String]) < 0x10000)
      {
        operator new();
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085B8AC();
      }
    }

    return 0;
  }

  v19 = xmmword_1008A4B20;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    *&v19 = &off_100AE0A78;
    *(&v19 + 1) = 0;
    value = xpc_dictionary_get_value(a3, "kCBMsgArgData");
    if (!sub_1000C9980(value, &v19) && sub_10000C5E0(&v19) == 7)
    {
      sub_10072502C(&v19, 2uLL);
      sub_10072502C(&v19, 3uLL);
      sub_10072502C(&v19, 5uLL);
      sub_10072502C(&v19, 6uLL);
      operator new();
    }

    *&v19 = &off_100AE0A78;
    v15 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
LABEL_18:
      sub_10000C808(v15);
    }
  }

  else
  {
    v17 = &off_100AE0A78;
    v18 = 0;
    v14 = xpc_dictionary_get_value(a3, "kCBMsgArgData");
    if (!sub_1000C9980(v14, &v17) && sub_10000C5E0(&v17) <= 0x200)
    {
      operator new();
    }

    v17 = &off_100AE0A78;
    v15 = v18;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

void sub_100679C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18)
{
  if (a18)
  {
    sub_10000C808(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100679D08(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0uLL;
  v12 = 0;
  sub_10003A364(&v11);
  if (!sub_100013CA4(a3, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgAttributeID"))
  {
    operator new();
  }

  return 0;
}

void sub_10067A13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, atomic_uint *a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    sub_10000C808(a33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10067A1B8(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 80) <= 1)
  {
    v4 = *(a3 + 8);
    v5 = *(v4 + 64);
    if (a2)
    {
      v6 = *(v4 + 72);
    }

    else
    {
      v6 = *(v4 + 72);
      if (v5 != v6)
      {
        while (1)
        {
          *buf = xmmword_1008A4DDC;
          v13 = 0;
          if (sub_10004E15C(v5, buf))
          {
            break;
          }

          v5 += 20;
          if (v5 == v6)
          {
            v5 = v6;
            break;
          }
        }

        v6 = *(v4 + 72);
      }

      if (v5 != v6)
      {
        v7 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Contact tracing UUID advertising is not allowed.", buf, 2u);
        }

        return 3;
      }

      v5 = *(v4 + 64);
    }

    if (v5 != v6)
    {
      while (1)
      {
        if (qword_100B541E8 != -1)
        {
          sub_1000E7B38();
        }

        if ((sub_1004EB220(qword_100B541E0, v5, *(a1 + 184)) & 1) == 0)
        {
          v9 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 96);
            sub_10003B85C(v5, buf);
            v11 = buf;
            if (v14 < 0)
            {
              v11 = *buf;
            }

            *v15 = 138412546;
            v16 = v10;
            v17 = 2080;
            v18 = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ wants to advertise for restricted service (%s)", v15, 0x16u);
            if (v14 < 0)
            {
              operator delete(*buf);
            }
          }

          *buf = xmmword_1008A4DB4;
          v13 = -1171415960;
          if (sub_10004E15C(v5, buf))
          {
            break;
          }

          *buf = xmmword_1008A4F34;
          v13 = 0;
          if (sub_10004E15C(v5, buf))
          {
            break;
          }
        }

        v5 += 20;
        if (v5 == v6)
        {
          return 0;
        }
      }

      return 3;
    }
  }

  return 0;
}

uint64_t sub_10067A474(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(object);
    v7 = [NSData dataWithBytes:bytes_ptr length:xpc_data_get_length(object)];
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      v10 = 134218242;
      v11 = a2;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Adding zone %lu = %{public}@", &v10, 0x16u);
    }

    [*(*(a1 + 32) + 112) addObject:v7];
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085B8E8();
  }

  return 1;
}

uint64_t sub_10067A5E4(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  v6 = *(a1 + 40);
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return 0;
  }

  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = &off_100AE0A78;
  v81 = -127;
  v82 = &off_100AE0A78;
  v79 = 1;
  v80 = 0;
  v77 = 1;
  v78 = 1;
  v75 = 0;
  v76 = 2;
  v73 = 0;
  v74 = 0;
  v71 = 0xFFFF;
  v72 = 0xFFFF;
  v70 = 0xFFFF;
  v94 = 0uLL;
  v95 = 0;
  sub_10003A364(&v94);
  v69 = 0;
  v8 = sub_10000C798();
  if ((*(*v8 + 656))(v8))
  {
    v78 = 3;
  }

  value = xpc_dictionary_get_value(object, "kCBScanOptionFilterManufacturerID");
  if (value && sub_10037CAD8(value, &v69))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B958();
    }

    goto LABEL_49;
  }

  v10 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterPayload");
  if (v10 && sub_1000C9980(v10, &v84))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B994();
    }

    goto LABEL_49;
  }

  v11 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterPayloadMask");
  if (v11 && sub_1000C9980(v11, &v82))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B9D0();
    }

    goto LABEL_49;
  }

  v12 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterForceDups");
  if (v12 && sub_100013DE8(v12, &v80))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085BA0C();
    }

    goto LABEL_49;
  }

  v13 = xpc_dictionary_get_value(object, "kCBScanOptionAllowDuplicates");
  if (v13 && sub_100013DE8(v13, &v80))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085BA48();
    }

    goto LABEL_49;
  }

  v14 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterBypassFilterDuplicate");
  if (v14 && sub_100013DE8(v14, &v79))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085BA84();
    }

    goto LABEL_49;
  }

  v15 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterTargetCore");
  if (v15 && sub_100013DE8(v15, &v78))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085BAC0();
    }

    goto LABEL_49;
  }

  v16 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterRSSIThresholdOrder");
  if (v16 && sub_100013DE8(v16, &v77))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v17 = xpc_dictionary_get_value(object, "kCBScanOption127dBmReport");
  if (v17 && sub_100013DE8(v17, &v74))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v18 = xpc_dictionary_get_value(object, "kCBScanOption27dBmReport");
  if (!v18 || !sub_100013DE8(v18, &v73))
  {
    if (xpc_dictionary_get_value(object, "kCBScanOptionPeers"))
    {
      v19 = sub_100066200(object, "kCBScanOptionPeers");
      if (!v19)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BB38();
        }

        goto LABEL_49;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterAddressType");
    if (v22 && sub_100013DE8(v22, &v76))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BB74();
      }

LABEL_71:
      v20 = 0;
      goto LABEL_50;
    }

    if (*(v6 + 80) == 2)
    {
      v23 = sub_10000C7D0();
      if ((*(*v23 + 2712))(v23))
      {
        v24 = xpc_dictionary_get_value(object, "kCBScanOptionRespondToObjectLocatorWithThisType");
        if (v24)
        {
          if (sub_100013DE8(v24, &v75))
          {
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_10085BBB0();
            }

            goto LABEL_71;
          }
        }
      }
    }

    if (xpc_dictionary_get_value(object, "kCBOptionUseCaseList"))
    {
      v20 = sub_10006638C(object, "kCBOptionUseCaseList");
      if (!v20)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BBEC();
        }

        goto LABEL_71;
      }
    }

    else
    {
      v20 = 0;
    }

    v25 = xpc_dictionary_get_value(object, "kCBScanOptionScanWindow");
    if (v25 && sub_1000DB500(v25, &v72))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BC28();
      }

      goto LABEL_50;
    }

    v26 = xpc_dictionary_get_value(object, "kCBScanOptionScanInterval");
    if (v26 && sub_1000DB500(v26, &v71))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BC64();
      }

      goto LABEL_50;
    }

    v27 = xpc_dictionary_get_value(object, "kCBScanOptionScanIntervalBackground");
    if (v27 && sub_1000DB500(v27, &v70))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BCA0();
      }

      goto LABEL_50;
    }

    v28 = xpc_dictionary_get_value(object, "kCBScanOptionFilterServiceUUID");
    if (v28)
    {
      sub_100065E5C(v28, &v94);
      if (v29)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BCDC();
        }

        goto LABEL_50;
      }
    }

    v30 = object;
    v31 = sub_100013C04(object, "kCBScanOptionFilterIdentifierString");
    v32 = v31;
    if (v31 && [(__CFString *)v31 length])
    {
      v61 = v32;
    }

    else
    {

      v61 = @"default";
    }

    if (v86 == 18 && _os_feature_enabled_impl())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BE80();
      }

LABEL_101:
      v7 = 0;
LABEL_151:

      goto LABEL_51;
    }

    v33 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterRssi");
    v62 = xpc_dictionary_get_value(v30, "kCBScanOptionAppleFilterPuckType");
    if (v33 && sub_100013DE8(v33, &v81))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BD18();
      }

      goto LABEL_101;
    }

    v59 = sub_100013C04(v30, "kCBScanOptionFilterNameMatchString");
    v60 = sub_1000C9AAC(v30, "kCBScanOptionFilterNameMatchNSStringCompareOptions");
    if (v60)
    {
      v34 = [v60 unsignedIntValue];
      v58 = 1000;
LABEL_110:
      v37 = v69;
      if (v69)
      {
        v38 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          v63 = *(a1 + 32);
          sub_10000C250(&v84, v92);
          v39 = v93;
          v40 = *v92;
          sub_10000C250(&v82, __p);
          v41 = v92;
          if (v39 < 0)
          {
            v41 = v40;
          }

          v42 = __p;
          if (v68 < 0)
          {
            v42 = __p[0];
          }

          *buf = 134220546;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = v61;
          v88 = 2112;
          v89 = v63;
          v90 = 1024;
          *v91 = v37;
          *&v91[4] = 2080;
          *&v91[6] = v41;
          *&v91[14] = 2080;
          *&v91[16] = v42;
          *&v91[24] = 2048;
          *&v91[26] = v81;
          *&v91[34] = 2048;
          *&v91[36] = v80;
          *&v91[44] = 2048;
          *&v91[46] = v79;
          *&v91[54] = 2048;
          *&v91[56] = v78;
          *&v91[64] = 2048;
          *&v91[66] = v77;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "addEnhancedFilter index:%zu filterId:%@ clientName:%@ mfgrID:%d payload:%s payloadFilter:%s rssi:%lld forceDups:%lld bypassFilterDuplicate:%lld,t targetCore:%lld, rssiThreshold:%lld", buf, 0x6Cu);
          if (v68 < 0)
          {
            operator delete(__p[0]);
          }

          if (v93 < 0)
          {
            operator delete(*v92);
          }

          LOWORD(v37) = v69;
        }

        sub_10067B6F0(*(a1 + 48), v61, *(a1 + 32), v37, &v84, &v82, v81, v80, v79, v78, v77, 0, 0, 1);
        goto LABEL_142;
      }

      if (v94)
      {
        v43 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          v64 = *(a1 + 32);
          sub_10003B85C(&v94, v92);
          if (v93 >= 0)
          {
            v44 = v92;
          }

          else
          {
            v44 = *v92;
          }

          sub_10000C250(&v84, __p);
          v45 = v68;
          v46 = __p[0];
          sub_10000C250(&v82, v65);
          v47 = __p;
          if (v45 < 0)
          {
            v47 = v46;
          }

          v48 = v65;
          if (v66 < 0)
          {
            v48 = v65[0];
          }

          *buf = 134220546;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = v61;
          v88 = 2112;
          v89 = v64;
          v90 = 2080;
          *v91 = v44;
          *&v91[8] = 2080;
          *&v91[10] = v47;
          *&v91[18] = 2080;
          *&v91[20] = v48;
          *&v91[28] = 2048;
          *&v91[30] = v81;
          *&v91[38] = 2048;
          *&v91[40] = v80;
          *&v91[48] = 2048;
          *&v91[50] = v79;
          *&v91[58] = 2048;
          *&v91[60] = v78;
          *&v91[68] = 2048;
          *&v91[70] = v77;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "addEnhancedFilter index:%zu filterId:%@ clientName:%@ uuid:%s payload:%s payloadFilter:%s rssi:%lld forceDups:%lld bypassFilterDuplicate:%lld,t targetCore:%lld, rssiThreshold:%lld", buf, 0x70u);
          if (v66 < 0)
          {
            operator delete(v65[0]);
          }

          if (v68 < 0)
          {
            operator delete(__p[0]);
          }

          if (v93 < 0)
          {
            operator delete(*v92);
          }
        }

        v49 = *(a1 + 48);
        v50 = *(a1 + 32);
        *buf = v94;
        *&buf[16] = v95;
        sub_10003B48C(v49, v61, v50, buf, &v84, &v82, v81, v80, v78, v77, 0, 0, 1);
        goto LABEL_142;
      }

      if ([v59 length])
      {
        v51 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          v52 = *(a1 + 32);
          *buf = 134220546;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = v61;
          v88 = 2112;
          v89 = v52;
          v90 = 2112;
          *v91 = v59;
          *&v91[8] = 1024;
          *&v91[10] = v58;
          *&v91[14] = 2048;
          *&v91[16] = v34;
          *&v91[24] = 2048;
          *&v91[26] = v81;
          *&v91[34] = 2048;
          *&v91[36] = v80;
          *&v91[44] = 2048;
          *&v91[46] = v79;
          *&v91[54] = 2048;
          *&v91[56] = v78;
          *&v91[64] = 2048;
          *&v91[66] = v77;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "addEnhancedFilter index:%zu filterId:%@ clientName:%@ nameMatchStr:%@ nameMatchOpt:%d NSStringCompareOptions:%lu rssi:%lld forceDups:%lld bypassFilterDuplicate:%lld,t targetCore:%lld, rssiThreshold:%lld", buf, 0x6Cu);
        }

        sub_10067B818(*(a1 + 48), v61, *(a1 + 32), v59, v58, v34, v81, v80, v78, v77, 0, 0, 1);
        goto LABEL_142;
      }

      if (*(v6 + 170) == 1)
      {
        if (v62 && !sub_100013DE8(v62, &v86))
        {
          if (v33 && !sub_100013DE8(v33, &v81))
          {
            if (sub_10000C5E0(&v82))
            {
              if (sub_10000C5E0(&v84))
              {
                sub_100032784(*(a1 + 48), *(a1 + 32), v86, v76, &v84, &v82, v81, v80, v79, v78, v77, v19, v75 != 0, 1, v74 != 0, v73 != 0, 1, v20, v72, v71, v70);
LABEL_142:
                v53 = *(a1 + 48);
                v54 = *(v53 + 120);
                for (i = *(v53 + 128); v54 != i; v54 += 112)
                {
                  v56 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
                  {
                    sub_10007FC10(v54);
                    v57 = buf;
                    if (v88 < 0)
                    {
                      v57 = *buf;
                    }

                    *v92 = 136315138;
                    *&v92[4] = v57;
                    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s", v92, 0xCu);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }

                v7 = 1;
                goto LABEL_150;
              }

              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_10085BD90();
              }
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_10085BDCC();
            }
          }

          else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085BE08();
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BE44();
        }
      }

LABEL_163:
      v7 = 0;
LABEL_150:

      goto LABEL_151;
    }

    v35 = sub_100013C04(v30, "kCBScanOptionFilterNameMatchOption");
    if ([v35 isEqualToString:@"kCBScanOptionFilterNameMatchOptionStartsWith"])
    {
      v36 = 1;
    }

    else
    {
      if (([v35 isEqualToString:@"kCBScanOptionFilterNameMatchOptionEndsWith"] & 1) == 0)
      {
        if (([v35 isEqualToString:@"kCBScanOptionFilterNameMatchOptionContains"] & 1) == 0 && objc_msgSend(v35, "length"))
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085BD54();
          }

          goto LABEL_163;
        }

        v58 = 0;
        goto LABEL_109;
      }

      v36 = 2;
    }

    v58 = v36;
LABEL_109:

    v34 = 0;
    goto LABEL_110;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
LABEL_44:
    sub_10085BAFC();
  }

LABEL_49:
  v20 = 0;
  v19 = 0;
LABEL_50:
  v7 = 0;
LABEL_51:

  v82 = &off_100AE0A78;
  if (v83)
  {
    sub_10000C808(v83);
  }

  v84 = &off_100AE0A78;
  if (v85)
  {
    sub_10000C808(v85);
  }

  return v7;
}

void sub_10067B590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, atomic_uint *a42, uint64_t a43, atomic_uint *a44)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  if (a42)
  {
    sub_10000C808(a42);
  }

  if (a44)
  {
    sub_10000C808(a44);
  }

  _Unwind_Resume(a1);
}

void sub_10067B6F0(uint64_t a1, void *a2, void *a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14)
{
  sub_10067C124(v15, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  sub_10067C0C4(a1 + 120, v15);

  v18 = &off_100AE0A78;
  if (v19)
  {
    sub_10000C808(v19);
  }

  v16 = &off_100AE0A78;
  if (v17)
  {
    sub_10000C808(v17);
  }
}

void sub_10067B7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001388F0(va);
  _Unwind_Resume(a1);
}

void sub_10067B818(uint64_t a1, void *a2, void *a3, void *a4, int a5, char a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  sub_10067C298(v14, a2, a3, a4, a5, a7, a6, a8, a9, a10, a11, a12, a13, 1);
  sub_10067C0C4(a1 + 120, v14);

  v17 = &off_100AE0A78;
  if (v18)
  {
    sub_10000C808(v18);
  }

  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }
}

void sub_10067B930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001388F0(va);
  _Unwind_Resume(a1);
}

id sub_10067B94C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10067B9A0(uint64_t a1, void *a2, void *a3, char a4, int a5)
{
  v9 = sub_10048616C(a1, 192, a2);
  *v9 = off_100AF79F8;
  sub_10000CB74(v9 + 3, a3);
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  return a1;
}

uint64_t sub_10067BA24(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, int a6)
{
  v11 = sub_10048616C(a1, 201, a2);
  v11[3] = a3;
  *v11 = off_100AF7A20;
  sub_10000CB74(v11 + 4, a4);
  *(a1 + 56) = a5;
  *(a1 + 60) = a6;
  return a1;
}

uint64_t sub_10067BAB8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_10048616C(a1, 202, a2);
  v7[3] = a3;
  *v7 = off_100AF7A48;
  sub_10000CB74(v7 + 4, a4);
  return a1;
}

void sub_10067BB38(uint64_t a1)
{
  sub_1004861BC(a1);

  operator delete();
}

void sub_10067BB74(uint64_t a1)
{
  sub_1004861BC(a1);

  operator delete();
}

void *sub_10067BBAC(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_10067BC20(result, 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 1));
  }

  return result;
}

void sub_10067BC20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x199999999999999ALL)
  {
    sub_10067BC68(a1, a2);
  }

  sub_1000C7698();
}

void sub_10067BC68(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x199999999999999ALL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10067BCBC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100139064(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10067BD34(a1, i + 16);
  }

  return a1;
}

uint64_t **sub_10067BD34(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_10067BF6C(uint64_t a1, __int16 a2, uint64_t a3, int a4)
{
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *a1 = off_100B08C60;
  *(a1 + 8) = a1 + 24;
  *(a1 + 26) = 0;
  *(a1 + 44) = 0;
  *(a1 + 28) = xmmword_1008AAC3C;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  sub_1006E3E30(a1, a3, a4);
  if (a3)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  *(a1 + 20) = v8;
  return a1;
}

uint64_t sub_10067C00C(uint64_t a1, __int16 a2, __int128 *a3, uint64_t a4, int a5)
{
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *a1 = off_100B08D08;
  *(a1 + 8) = a1 + 24;
  v6 = *a3;
  v7 = *(a3 + 4);
  *(a1 + 24) = a2;
  *(a1 + 26) = 0;
  *(a1 + 28) = v6;
  *(a1 + 44) = v7;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  sub_1006E4624(a1, a4, a5);
  return a1;
}

uint64_t sub_10067C0C4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10006E108(a1, a2);
  }

  else
  {
    sub_100018288(a1, *(a1 + 8), a2);
    result = v3 + 112;
    *(a1 + 8) = v3 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10067C124(uint64_t a1, void *a2, void *a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14)
{
  v21 = a2;
  v22 = a3;
  v23 = v21;
  *a1 = v23;
  v24 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = a4;
  sub_10003A364((a1 + 20));
  v25 = *(a5 + 8);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v25;
  if (v25)
  {
    sub_10000C69C(v25);
  }

  v26 = *(a6 + 8);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v26;
  if (v26)
  {
    sub_10000C69C(v26);
  }

  *(a1 + 72) = a7;
  *(a1 + 73) = a8;
  *(a1 + 74) = a9;
  *(a1 + 75) = a10;
  *(a1 + 76) = a11;
  *(a1 + 77) = a12;
  *(a1 + 78) = a13;
  *(a1 + 79) = a14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 2;

  return a1;
}

void sub_10067C25C(_Unwind_Exception *a1)
{
  *(v1 + 40) = v4;
  v6 = *(v1 + 48);
  if (v6)
  {
    sub_10000C808(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10067C298(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v21;
  *a1 = v24;
  v25 = v22;
  *(a1 + 8) = v25;
  *(a1 + 16) = 0;
  sub_10003A364((a1 + 20));
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = 0;
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = 0;
  *(a1 + 72) = a7;
  *(a1 + 73) = a8;
  *(a1 + 74) = a9;
  *(a1 + 75) = a10;
  *(a1 + 76) = a11;
  *(a1 + 77) = a12;
  *(a1 + 78) = a13;
  *(a1 + 79) = a14;
  *(a1 + 80) = a5;
  *(a1 + 88) = a6;
  *(a1 + 96) = v23;
  *(a1 + 104) = 3;

  return a1;
}

uint64_t sub_10067C3E8(uint64_t a1, __int16 a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__p = 0u;
  v7 = 0u;
  v4 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_100008760(&v4);
  if (a2)
  {
    sub_100007774(&v4);
  }

  if ((a2 & 2) != 0)
  {
    sub_100007774(&v4);
  }

  if ((a2 & 4) != 0)
  {
    sub_100007774(&v4);
  }

  if ((a2 & 8) != 0)
  {
    sub_100007774(&v4);
  }

  if ((a2 & 0x40) != 0)
  {
    sub_100007774(&v4);
  }

  if ((a2 & 0x80) != 0)
  {
    sub_100007774(&v4);
  }

  if ((a2 & 0x100) != 0)
  {
    sub_100007774(&v4);
  }

  if ((a2 & 0x400) != 0)
  {
    sub_100007774(&v4);
  }

  std::stringbuf::str();
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v5);
  std::ostream::~ostream();
  return std::ios::~ios();
}

__int128 *sub_10067C898(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 2)) >= a5)
    {
      v14 = v7 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v7 - a2) >> 2)) >= a5)
      {
        v17 = a2 + 20 * a5;
        v18 = &v7[-20 * a5];
        v19 = *(a1 + 8);
        while (v18 < v7)
        {
          v20 = *v18;
          *(v19 + 16) = *(v18 + 4);
          *v19 = v20;
          v19 += 20;
          v18 = (v18 + 20);
        }

        *(a1 + 8) = v19;
        if (v7 != v17)
        {
          v21 = v7 - 20;
          v22 = (v17 - v7);
          v23 = &v21[-20 * a5];
          do
          {
            v24 = *v23;
            *(v21 + 4) = *(v23 + 4);
            *v21 = v24;
            v21 -= 20;
            v23 -= 20;
            v22 += 20;
          }

          while (v22);
        }

        v25 = 0;
        do
        {
          v26 = a2 + v25;
          v27 = *v6;
          *(v26 + 4) = *(v6 + 4);
          *v26 = v27;
          v6 = (v6 + 20);
          v25 += 20;
        }

        while (v6 != (a3 + 20 * a5));
      }

      else
      {
        v15 = *(a1 + 8);
        if ((a3 + v14) == a4)
        {
          v16 = *(a1 + 8);
        }

        else
        {
          v31 = (a3 + v14);
          v16 = *(a1 + 8);
          do
          {
            v32 = *v31;
            *(v16 + 16) = *(v31 + 4);
            *v16 = v32;
            v16 += 20;
            v31 = (v31 + 20);
            v15 += 20;
          }

          while (v31 != a4);
        }

        *(a1 + 8) = v15;
        if (v14 >= 1)
        {
          v33 = a2 + 20 * a5;
          v34 = (v15 - 20 * a5);
          v35 = v15;
          while (v34 < v7)
          {
            v36 = *v34;
            *(v35 + 16) = *(v34 + 4);
            *v35 = v36;
            v35 += 20;
            v34 = (v34 + 20);
          }

          *(a1 + 8) = v35;
          if (v16 != v33)
          {
            v37 = v15 - 20;
            v38 = &v33[-v15];
            v39 = (v37 - 20 * a5);
            do
            {
              v40 = *v39;
              *(v37 + 16) = *(v39 + 4);
              *v37 = v40;
              v37 -= 20;
              v39 = (v39 - 20);
              v38 += 20;
            }

            while (v38);
          }

          v41 = 0;
          do
          {
            v42 = a2 + v41;
            v43 = *v6;
            *(v42 + 4) = *(v6 + 4);
            *v42 = v43;
            v6 = (v6 + 20);
            v41 += 20;
          }

          while (v6 != (a3 + v14));
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 - 0x3333333333333333 * (&v7[-*a1] >> 2);
      if (v10 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_1000C7698();
      }

      v11 = a2 - v9;
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 2);
      if (2 * v12 > v10)
      {
        v10 = 2 * v12;
      }

      if (v12 >= 0x666666666666666)
      {
        v13 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v13 = v10;
      }

      v49 = a1;
      if (v13)
      {
        sub_100018404(a1, v13);
      }

      v28 = 4 * (v11 >> 2);
      __p = 0;
      v46 = v28;
      v48 = 0;
      v29 = 20 * a5;
      do
      {
        v30 = *v6;
        *(v28 + 16) = *(v6 + 4);
        *v28 = v30;
        v28 += 20;
        v6 = (v6 + 20);
        v29 -= 20;
      }

      while (v29);
      v47 = 4 * (v11 >> 2) + 20 * a5;
      v5 = sub_10067CBF0(a1, &__p, v5);
      if (v47 != v46)
      {
        v47 = (v47 - v46 - 20) % 0x14uLL + v46;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_10067CBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10067CBF0(__int128 **a1, void *a2, __int128 *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v10 = a2[1];
    v9 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = *v7;
      *(v6 + 16) = *(v7 + 4);
      *v6 = v8;
      v6 += 20;
      v7 = (v7 + 20);
    }

    while (v7 != v4);
    v9 = a1[1];
    v10 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v9 - a3;
  a1[1] = a3;
  v11 = *a1;
  v12 = (v10 + *a1 - a3);
  if (*a1 != a3)
  {
    v13 = v12;
    do
    {
      v14 = *v11;
      *(v13 + 4) = *(v11 + 4);
      *v13 = v14;
      v13 = (v13 + 20);
      v11 = (v11 + 20);
    }

    while (v11 != a3);
    v11 = *a1;
  }

  a2[1] = v12;
  *a1 = v12;
  a1[1] = v11;
  a2[1] = v11;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

char *sub_10067CCB4(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      sub_1000C7698();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      sub_1003705C4(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

std::string *sub_10067CED8(void *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = a5;
        sub_10067D124(a1, a2, a1[1], a2 + 24 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = sub_1000DFE5C(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          sub_10067D124(a1, v5, v10, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000C7698();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v33 = a1;
      if (v15)
      {
        sub_10035FDB8(a1, v15);
      }

      v30 = 0;
      v31 = 8 * (v13 >> 3);
      v32 = v31;
      sub_10067D194(&v30, a3, a5);
      v22 = v31;
      memcpy(v32, v5, a1[1] - v5);
      v23 = *a1;
      v24 = v31;
      *&v32 = v32 + a1[1] - v5;
      a1[1] = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = *a1;
      *a1 = v26;
      v28 = a1[2];
      *(a1 + 1) = v32;
      *&v32 = v27;
      *(&v32 + 1) = v28;
      v30 = v27;
      v31 = v27;
      sub_100360AC8(&v30);
      return v22;
    }
  }

  return v5;
}

uint64_t sub_10067D124(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10067D228(&v12, a2, v7, v6);
}

void *sub_10067D194(void *result, __int128 *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        result = sub_100008904(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v4 += 24;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_10067D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_10067D88C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  sub_10000CEDC(a2 + 48, *(a2 + 56));
  operator delete(a2);
  return v3;
}

uint64_t sub_10067D8CC(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_10067D970();
  }

  return result;
}

void sub_10067D9F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10067DA0C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10067DA0C(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10000CEDC((a2 + 6), a2[7]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **sub_10067DAD4(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

unsigned __int8 *sub_10067DD7C(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    while (!sub_10004E15C(v3 + 28, a3))
    {
      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
      if (v7 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void sub_10067DE14()
{
  v0 = objc_autoreleasePoolPush();
  sub_100364534(&stru_100BCE850);
  __cxa_atexit(sub_1003645A0, &stru_100BCE850, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10067DE80(uint64_t a1, uint64_t a2, void *a3, __int16 a4, char a5, int a6)
{
  v11 = a3;
  *a1 = a2;
  *(a1 + 8) = v11;
  *(a1 + 16) = a4;
  *(a1 + 18) = a5;
  *(a1 + 20) = a6;
  *(a1 + 24) = 0x300000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return a1;
}

uint64_t sub_10067DF0C(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v5 = off_100B05178[*(a1 + 32)];
    v6 = a2;
    v7 = off_100B05178[a2];
    v8 = off_100B051C0[*(a1 + 48)];
    v9 = *(a1 + 8);
    v11 = 136446978;
    v12 = v5;
    v13 = 2082;
    v14 = v7;
    v15 = 2082;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Protocol state change (P: %{public}s => %{public}s / L: %{public}s) for device %{public}@", &v11, 0x2Au);
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 32) = a2;
  return qword_1008AAC98[v6];
}

uint64_t sub_10067E020(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v5 = off_100B05178[*(a1 + 32)];
    v6 = off_100B051C0[*(a1 + 48)];
    v7 = a2;
    v8 = off_100B051C0[a2];
    v9 = *(a1 + 8);
    v11 = 136446978;
    v12 = v5;
    v13 = 2082;
    v14 = v6;
    v15 = 2082;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Link state change (P: %{public}s / L: %{public}s => %{public}s) for device %{public}@", &v11, 0x2Au);
  }

  else
  {
    v7 = a2;
  }

  *(a1 + 48) = a2;
  return qword_1008AACE0[v7];
}

void sub_10067E134(uint64_t a1)
{
  v2 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v3 = off_100B05178[*(a1 + 32)];
    v4 = off_100B051C0[*(a1 + 48)];
    v5 = *(a1 + 8);
    v6 = 136446722;
    v7 = v3;
    v8 = 2082;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: State is (P: %{public}s / L: %{public}s) for device %{public}@", &v6, 0x20u);
  }
}

__n128 sub_10067E214(uint64_t a1, uint64_t a2, int a3, _OWORD *a4, _OWORD *a5, int a6, __n128 *a7, __n128 *a8)
{
  *(a1 + 8) = 1;
  *a1 = &off_100B051F0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a6;
  *(a1 + 92) = a3;
  if (!a3)
  {
    *(a1 + 44) = *a4;
    *(a1 + 28) = *a5;
    result = *a7;
    *(a1 + 60) = *a7;
    if (a8)
    {
      result = *a8;
      *(a1 + 76) = *a8;
    }
  }

  return result;
}

void sub_10067E274(uint64_t a1)
{
  if (qword_100B50AB0 != -1)
  {
    sub_10085BF58();
  }

  v2 = off_100B50AA8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 92);
  v5 = *(a1 + 24);

  sub_100567388(v2, v3, v4, a1 + 44, (a1 + 28), v5, (a1 + 60));
}

uint64_t sub_10067E360(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  v5 = (a1 + 40);
  *(a1 + 88) = 0u;
  v6 = (a1 + 88);
  *(a1 + 116) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 124) = 0;
  sub_10069EDF0(a1 + 136);
  sub_10069EDF0(a1 + 560);
  sub_100007E30((a1 + 984), "UNKNOWN");
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  v74 = 0u;
  *__src = 0u;
  sub_10069EDF0(&v74);
  v73 = 0;
  v71 = 0u;
  memset(v72, 0, sizeof(v72));
  sub_10069EDF0(&v71);
  value = xpc_dictionary_get_value(a2, "kMessageGUID");
  v8 = value;
  if (value && xpc_get_type(value) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v8);
    std::string::assign(v4, string_ptr);
  }

  v10 = xpc_dictionary_get_value(a2, "kBody");
  v11 = v10;
  if (v10 && xpc_get_type(v10) == &_xpc_type_string)
  {
    v12 = xpc_string_get_string_ptr(v11);
    std::string::assign(v6, v12);
    *(a1 + 112) = strlen(v12);
  }

  v13 = xpc_dictionary_get_value(a2, "kSubject");
  v14 = v13;
  if (v13 && xpc_get_type(v13) == &_xpc_type_string)
  {
    v15 = xpc_string_get_string_ptr(v14);
    std::string::assign((v4 + 56), v15);
  }

  v16 = xpc_dictionary_get_value(a2, "kSenderFormattedName");
  v17 = v16;
  if (v16)
  {
    if (xpc_get_type(v16) == &_xpc_type_string)
    {
      v36 = xpc_string_get_string_ptr(v17);
      if (v36)
      {
        sub_100007E30(&v70, v36);
        std::string::operator=(__src, &v70);
        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v18 = xpc_dictionary_get_value(a2, "kSenderEmail");
  v19 = v18;
  if (v18 && xpc_get_type(v18) == &_xpc_type_string)
  {
    v37 = xpc_string_get_string_ptr(v19);
    if (v37)
    {
      memset(v64, 0, 24);
      std::string::assign(v64, v37);
      if ((v64[23] & 0x80000000) != 0)
      {
        sub_100008904(__dst, *v64, *&v64[8]);
      }

      else
      {
        *__dst = *v64;
        v69 = *&v64[16];
      }

      sub_1004384F4(&v76[15] + 1, __dst);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__dst[0]);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }
    }

    if (SBYTE7(v76[0]) < 0)
    {
      sub_100008904(v64, __src[0], __src[1]);
    }

    else
    {
      *v64 = *__src;
      *&v64[16] = *&v76[0];
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      v42 = *&v64[8];
      operator delete(*v64);
      if (!v37 || v42)
      {
        goto LABEL_14;
      }
    }

    else if (!v37 || v64[23])
    {
      goto LABEL_14;
    }

    sub_100007E30(&v67, v37);
    std::string::operator=(__src, &v67);
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }
  }

LABEL_14:
  v20 = xpc_dictionary_get_value(a2, "kSenderPhoneNumber");
  v21 = v20;
  if (!v20 || xpc_get_type(v20) != &_xpc_type_string)
  {
    goto LABEL_16;
  }

  v38 = xpc_string_get_string_ptr(v21);
  if (v38)
  {
    v66 = 0;
    *v65 = 0u;
    memset(v64, 0, sizeof(v64));
    std::string::assign(v64, v38);
    if ((v64[23] & 0x80000000) != 0)
    {
      sub_100008904(v59, *v64, *&v64[8]);
    }

    else
    {
      *v59 = *v64;
      v60 = *&v64[16];
    }

    v61 = *&v64[24];
    if (SHIBYTE(v66) < 0)
    {
      sub_100008904(&v62, v65[0], v65[1]);
    }

    else
    {
      v62 = *v65;
      v63 = v66;
    }

    sub_100437C00(&v76[12] + 1, v59);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[0]);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65[0]);
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      operator delete(*v64);
    }
  }

  if (SBYTE7(v76[0]) < 0)
  {
    sub_100008904(v64, __src[0], __src[1]);
  }

  else
  {
    *v64 = *__src;
    *&v64[16] = *&v76[0];
  }

  if ((v64[23] & 0x80000000) != 0)
  {
    v43 = *&v64[8];
    operator delete(*v64);
    if (!v38 || v43)
    {
      goto LABEL_16;
    }
  }

  else if (!v38 || v64[23])
  {
    goto LABEL_16;
  }

  sub_100007E30(&v58, v38);
  std::string::operator=(__src, &v58);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (SBYTE7(v76[0]) < 0)
  {
    sub_100008904(&__str, __src[0], __src[1]);
  }

  else
  {
    *&__str.__r_.__value_.__l.__data_ = *__src;
    __str.__r_.__value_.__r.__words[2] = *&v76[0];
  }

  std::string::operator=((v76 + 8), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v22 = xpc_dictionary_get_value(a2, "kRecipientFormattedName");
  v23 = v22;
  if (v22)
  {
    if (xpc_get_type(v22) == &_xpc_type_string)
    {
      v39 = xpc_string_get_string_ptr(v23);
      if (v39)
      {
        sub_100007E30(&v56, v39);
        std::string::operator=(v72, &v56);
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v24 = xpc_dictionary_get_value(a2, "kRecipientEmail");
  v25 = v24;
  if (v24 && xpc_get_type(v24) == &_xpc_type_string)
  {
    v40 = xpc_string_get_string_ptr(v25);
    if (v40)
    {
      memset(v64, 0, 24);
      std::string::assign(v64, v40);
      if ((v64[23] & 0x80000000) != 0)
      {
        sub_100008904(v54, *v64, *&v64[8]);
      }

      else
      {
        *v54 = *v64;
        v55 = *&v64[16];
      }

      sub_1004384F4(&v72[264], v54);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }
    }

    if ((v72[23] & 0x80000000) != 0)
    {
      sub_100008904(v64, *v72, *&v72[8]);
    }

    else
    {
      *v64 = *v72;
      *&v64[16] = *&v72[16];
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      v44 = *&v64[8];
      operator delete(*v64);
      if (!v40 || v44)
      {
        goto LABEL_25;
      }
    }

    else if (!v40 || v64[23])
    {
      goto LABEL_25;
    }

    sub_100007E30(&v53, v40);
    std::string::operator=(v72, &v53);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }
  }

LABEL_25:
  v26 = xpc_dictionary_get_value(a2, "kRecipientPhoneNumber");
  v27 = v26;
  if (!v26 || xpc_get_type(v26) != &_xpc_type_string)
  {
    goto LABEL_27;
  }

  v41 = xpc_string_get_string_ptr(v27);
  if (v41)
  {
    v66 = 0;
    *v65 = 0u;
    memset(v64, 0, sizeof(v64));
    std::string::assign(v64, v41);
    if ((v64[23] & 0x80000000) != 0)
    {
      sub_100008904(v48, *v64, *&v64[8]);
    }

    else
    {
      *v48 = *v64;
      v49 = *&v64[16];
    }

    v50 = *&v64[24];
    if (SHIBYTE(v66) < 0)
    {
      sub_100008904(&v51, v65[0], v65[1]);
    }

    else
    {
      v51 = *v65;
      v52 = v66;
    }

    sub_100437C00(&v72[216], v48);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48[0]);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65[0]);
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      operator delete(*v64);
    }
  }

  if ((v72[23] & 0x80000000) != 0)
  {
    sub_100008904(v64, *v72, *&v72[8]);
  }

  else
  {
    *v64 = *v72;
    *&v64[16] = *&v72[16];
  }

  if ((v64[23] & 0x80000000) != 0)
  {
    v45 = *&v64[8];
    operator delete(*v64);
    if (!v41 || v45)
    {
      goto LABEL_27;
    }
  }

  else if (!v41 || v64[23])
  {
    goto LABEL_27;
  }

  sub_100007E30(&v47, v41);
  std::string::operator=(v72, &v47);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

LABEL_27:
  if ((v72[23] & 0x80000000) != 0)
  {
    sub_100008904(&__p, *v72, *&v72[8]);
  }

  else
  {
    __p = *v72;
  }

  std::string::operator=(&v72[24], &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v28 = xpc_dictionary_get_value(a2, "kMessageId");
  v29 = v28;
  if (v28 && xpc_get_type(v28) == &_xpc_type_int64)
  {
    *(a1 + 128) = xpc_int64_get_value(v29);
  }

  v30 = xpc_dictionary_get_value(a2, "kAppType");
  v31 = v30;
  if (v30 && xpc_get_type(v30) == &_xpc_type_string)
  {
    v32 = xpc_string_get_string_ptr(v31);
    std::string::assign(v5, v32);
  }

  v33 = xpc_dictionary_get_value(a2, "kIsRead");
  v34 = v33;
  if (v33 && xpc_get_type(v33) == &_xpc_type_BOOL)
  {
    *(a1 + 122) = xpc_BOOL_get_value(v34);
  }

  *(a1 + 32) = xpc_dictionary_get_date(a2, "kDate") / 0x3B9ACA00uLL;
  sub_10067EF60(v4 + 128, &v74);
  sub_10067EF60(a1 + 560, &v71);
  *(a1 + 123) = 0;
  sub_10069F44C(&v71);
  sub_10069F44C(&v74);
  return a1;
}

void sub_10067ED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000DA6C8(&a48);
  sub_10069F44C(&a64);
  sub_10069F44C(&STACK[0x350]);
  if (v64[1007] < 0)
  {
    operator delete(*v68);
  }

  sub_10069F44C(v64 + 560);
  sub_10069F44C(v65 + 16);
  if (v64[111] < 0)
  {
    operator delete(*v67);
  }

  if (v64[87] < 0)
  {
    operator delete(v65[7]);
  }

  if (v64[63] < 0)
  {
    operator delete(*v66);
  }

  if (v64[31] < 0)
  {
    operator delete(*v65);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10067EF60(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=((a1 + 64), (a2 + 64));
  std::string::operator=((a1 + 88), (a2 + 88));
  std::string::operator=((a1 + 112), (a2 + 112));
  std::string::operator=((a1 + 136), (a2 + 136));
  std::string::operator=((a1 + 160), (a2 + 160));
  std::string::operator=((a1 + 184), (a2 + 184));
  std::string::operator=((a1 + 208), (a2 + 208));
  if (a1 == a2)
  {
    std::string::operator=((a1 + 304), (a2 + 304));
    std::string::operator=((a1 + 328), (a2 + 328));
    std::string::operator=((a1 + 352), (a2 + 352));
  }

  else
  {
    sub_10068010C(a1 + 232, *(a2 + 232), *(a2 + 240), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 240) - *(a2 + 232)) >> 3));
    sub_100680498((a1 + 256), *(a2 + 256), *(a2 + 264), (*(a2 + 264) - *(a2 + 256)) >> 7);
    sub_1006807AC((a1 + 280), *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 3));
    std::string::operator=((a1 + 304), (a2 + 304));
    std::string::operator=((a1 + 328), (a2 + 328));
    std::string::operator=((a1 + 352), (a2 + 352));
    sub_10068094C((a1 + 376), *(a2 + 376), *(a2 + 384), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 384) - *(a2 + 376)) >> 3));
  }

  std::string::operator=((a1 + 400), (a2 + 400));
  return a1;
}

uint64_t sub_10067F0DC(uint64_t a1, const std::string *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  v5 = (a1 + 88);
  *(a1 + 116) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 124) = 0;
  sub_10069EDF0(a1 + 136);
  sub_10069EDF0(a1 + 560);
  sub_100007E30((a1 + 984), "UNKNOWN");
  memset(&v115, 0, sizeof(v115));
  memset(&v114, 0, sizeof(v114));
  memset(&v113, 0, sizeof(v113));
  memset(&v112, 0, sizeof(v112));
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
    if (size)
    {
      v7 = a2->__r_.__value_.__r.__words[0];
      goto LABEL_6;
    }

LABEL_182:
    *a1 = ++qword_100B54D40;
    *(a1 + 32) = time(0);
    std::string::operator=(v5, &v115);
    v85 = *(a1 + 111);
    if (v85 < 0)
    {
      v85 = *(a1 + 96);
    }

    *(a1 + 112) = v85;
    v110 = 0;
    memset(__str, 0, sizeof(__str));
    sub_10069EDF0(__str);
    v86 = SHIBYTE(v114.__r_.__value_.__r.__words[2]);
    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = SHIBYTE(v114.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v87 = v114.__r_.__value_.__l.__size_;
    }

    v88 = &v114;
    if (!v87)
    {
      v88 = &v113;
    }

    v89 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    if (v87)
    {
      v89 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
    }

    if (v89 < 0)
    {
      if (v87)
      {
        v90 = v114.__r_.__value_.__l.__size_;
      }

      else
      {
        v90 = v113.__r_.__value_.__l.__size_;
      }

      sub_100008904(&__dst, v88->__r_.__value_.__l.__data_, v90);
    }

    else
    {
      __dst = *v88;
    }

    std::string::operator=(&__str[16], &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v91 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v91 = v113.__r_.__value_.__l.__size_;
    }

    if (v91)
    {
      v107 = 0;
      *v106 = 0u;
      memset(v105, 0, sizeof(v105));
      std::string::operator=(v105, &v113);
      if ((v105[23] & 0x80000000) != 0)
      {
        sub_100008904(v100, *v105, *&v105[8]);
      }

      else
      {
        *v100 = *v105;
        v101 = *&v105[16];
      }

      v102 = *&v105[24];
      if (SHIBYTE(v107) < 0)
      {
        sub_100008904(&v103, v106[0], v106[1]);
      }

      else
      {
        v103 = *v106;
        v104 = v107;
      }

      sub_100437C00(&__str[232], v100);
      if (SHIBYTE(v104) < 0)
      {
        operator delete(v103);
      }

      if (SHIBYTE(v101) < 0)
      {
        operator delete(v100[0]);
      }

      if (SHIBYTE(v107) < 0)
      {
        operator delete(v106[0]);
      }

      if ((v105[23] & 0x80000000) != 0)
      {
        operator delete(*v105);
      }
    }

    v92 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
    if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v92 = v112.__r_.__value_.__l.__size_;
    }

    if (v92)
    {
      memset(v105, 0, 24);
      std::string::operator=(v105, &v112);
      if ((v105[23] & 0x80000000) != 0)
      {
        sub_100008904(v98, *v105, *&v105[8]);
      }

      else
      {
        *v98 = *v105;
        v99 = *&v105[16];
      }

      sub_1004384F4(&__str[280], v98);
      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98[0]);
      }

      if ((v105[23] & 0x80000000) != 0)
      {
        operator delete(*v105);
      }
    }

    sub_10067EF60(v4 + 128, __str);
    v19 = v86 >> 63;
    sub_10069F44C(__str);
    goto LABEL_227;
  }

  if (!*(&a2->__r_.__value_.__s + 23))
  {
    goto LABEL_182;
  }

  v7 = a2;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
LABEL_6:
  v9 = v7 + size;
  if (size >= 9)
  {
    v10 = v7;
    do
    {
      v11 = memchr(v10, 66, size - 8);
      if (!v11)
      {
        break;
      }

      if (*v11 == 0x534D3A4E49474542 && v11[8] == 71)
      {
        goto LABEL_15;
      }

      v10 = (v11 + 1);
      size = v9 - v10;
    }

    while (v9 - v10 > 8);
  }

  v11 = v9;
LABEL_15:
  if (v11 == v9)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 - v7;
  }

  if ((v6 & 0x80000000) != 0)
  {
    v14 = a2->__r_.__value_.__r.__words[0];
    v6 = a2->__r_.__value_.__l.__size_;
  }

  else
  {
    v14 = a2;
  }

  if (v6 >= 9)
  {
    v15 = v14 + v6;
    v16 = v14;
    do
    {
      v17 = memchr(v16, 13, v6 - 8);
      if (!v17)
      {
        break;
      }

      if (*v17 == 0x534D3A444E450A0DLL && v17[8] == 71)
      {
        LODWORD(v19) = 0;
        v20 = v17 - v14;
        if (v17 == v15)
        {
          v20 = -1;
        }

        if (v13 == -1 || v20 == -1)
        {
          goto LABEL_227;
        }

        std::string::basic_string(__str, a2, v13 + 11, v20 - (v13 + 11), v105);
        if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v115.__r_.__value_.__l.__data_);
        }

        v115 = *__str;
        v21 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if (v21 < 0)
        {
          v22 = a2->__r_.__value_.__r.__words[0];
          v23 = a2->__r_.__value_.__l.__size_;
        }

        else
        {
          v22 = a2;
          v23 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        v24 = v22 + v23;
        if (v23 >= 10)
        {
          v26 = v22;
          do
          {
            v25 = memchr(v26, 66, v23 - 9);
            if (!v25)
            {
              break;
            }

            if (*v25 == 0x45423A4E49474542 && *(v25 + 4) == 22094)
            {
              goto LABEL_49;
            }

            v26 = (v25 + 1);
            v23 = v24 - v26;
          }

          while (v24 - v26 > 9);
          v25 = v24;
        }

        else
        {
          v25 = v22 + v23;
        }

LABEL_49:
        v28 = v25 - v22;
        if (v25 == v24)
        {
          v28 = -1;
        }

        if ((v21 & 0x80000000) != 0)
        {
          v29 = a2->__r_.__value_.__r.__words[0];
          v21 = a2->__r_.__value_.__l.__size_;
        }

        else
        {
          v29 = a2;
        }

        if (v21 >= 8)
        {
          __p = v28;
          v30 = v29 + v21;
          v31 = v29;
          while (1)
          {
            v32 = memchr(v31, 69, v21 - 7);
            if (!v32)
            {
              break;
            }

            if (*v32 == 0x564E45423A444E45)
            {
              LODWORD(v19) = 0;
              v33 = v32 - v29;
              if (v32 == v30)
              {
                v33 = -1;
              }

              if (__p == -1 || v33 == -1)
              {
                goto LABEL_227;
              }

              memset(__str, 0, 24);
              std::string::basic_string(__str, a2, __p + 12, v33 - (__p + 12), v105);
              v34 = __str[23];
              if (__str[23] >= 0)
              {
                v35 = __str;
              }

              else
              {
                v35 = *__str;
              }

              if (__str[23] >= 0)
              {
                v36 = __str[23];
              }

              else
              {
                v36 = *&__str[8];
              }

              v37 = &v35[v36];
              __pa = *__str;
              if (v36 >= 11)
              {
                v39 = v36;
                v40 = v35;
                do
                {
                  v38 = memchr(v40, 66, v39 - 10);
                  if (!v38)
                  {
                    break;
                  }

                  if (*v38 == 0x43563A4E49474542 && *(v38 + 3) == 0x44524143563A4E49)
                  {
                    goto LABEL_81;
                  }

                  v40 = v38 + 1;
                  v39 = v37 - v40;
                }

                while (v37 - v40 > 10);
                v38 = &v35[v36];
              }

              else
              {
                v38 = &v35[v36];
              }

LABEL_81:
              v42 = v38 - v35;
              if (v38 == v37)
              {
                v42 = -1;
              }

              v94 = v42;
              if (v36 >= 9)
              {
                v43 = v35;
                do
                {
                  v44 = memchr(v43, 69, v36 - 8);
                  if (!v44)
                  {
                    break;
                  }

                  if (*v44 == 0x524143563A444E45 && v44[8] == 68)
                  {
                    v46 = v44 - v35;
                    if (v44 == v37)
                    {
                      v46 = -1;
                    }

                    if (v94 == -1 || v46 == -1)
                    {
                      break;
                    }

                    memset(v105, 0, 24);
                    std::string::basic_string(v105, __str, v94 + 13, v46 - (v94 + 13), &v111);
                    if (v105[23] >= 0)
                    {
                      v47 = v105;
                    }

                    else
                    {
                      v47 = *v105;
                    }

                    if (v105[23] >= 0)
                    {
                      v48 = v105[23];
                    }

                    else
                    {
                      v48 = *&v105[8];
                    }

                    v49 = &v47[v48];
                    if (v48 >= 4)
                    {
                      v50 = v48;
                      v51 = v47;
                      do
                      {
                        v52 = memchr(v51, 13, v50 - 3);
                        if (!v52)
                        {
                          break;
                        }

                        if (*v52 == 978192909)
                        {
                          goto LABEL_108;
                        }

                        v51 = v52 + 1;
                        v50 = v49 - v51;
                      }

                      while (v49 - v51 > 3);
                    }

                    v52 = &v47[v48];
LABEL_108:
                    if (v52 == v49)
                    {
                      v53 = 3;
                    }

                    else
                    {
                      v53 = v52 - v47 + 4;
                    }

                    v54 = v48 - v53;
                    if (v48 >= v53)
                    {
                      if (v54 >= 2)
                      {
                        v57 = &v47[v53];
                        do
                        {
                          v56 = memchr(v57, 13, v54 - 1);
                          if (!v56)
                          {
                            break;
                          }

                          if (*v56 == 2573)
                          {
                            goto LABEL_122;
                          }

                          v57 = v56 + 1;
                          v54 = v49 - v57;
                        }

                        while (v49 - v57 > 1);
                        v56 = &v47[v48];
                      }

                      else
                      {
                        v56 = &v47[v48];
                      }

LABEL_122:
                      v55 = v56 - v47;
                      if (v56 == v49)
                      {
                        v55 = -1;
                      }
                    }

                    else
                    {
                      v55 = -1;
                    }

                    std::string::basic_string(&v111, v105, v53, v55 - v53, v116);
                    v58 = v105[23];
                    v59 = *&v105[8];
                    v60 = *v105;
                    v114 = v111;
                    if (v105[23] >= 0)
                    {
                      v61 = v105;
                    }

                    else
                    {
                      v61 = *v105;
                    }

                    if (v105[23] >= 0)
                    {
                      v62 = v105[23];
                    }

                    else
                    {
                      v62 = *&v105[8];
                    }

                    if (v62 >= 4)
                    {
                      v63 = &v61[v62];
                      v64 = v62;
                      __pb = v61;
                      do
                      {
                        v65 = memchr(v61, 84, v64 - 3);
                        if (!v65)
                        {
                          break;
                        }

                        if (*v65 == 978077012)
                        {
                          if (v65 != v63)
                          {
                            v66 = v65 - __pb;
                            if (v65 - __pb != -1)
                            {
                              v67 = v66 + 4;
                              v68 = v62 >= (v66 + 4);
                              v69 = v62 - (v66 + 4);
                              if (v68)
                              {
                                if (v69 >= 2)
                                {
                                  v71 = &__pb[v67];
                                  do
                                  {
                                    v72 = memchr(v71, 13, v69 - 1);
                                    if (!v72)
                                    {
                                      break;
                                    }

                                    if (*v72 == 2573)
                                    {
                                      goto LABEL_146;
                                    }

                                    v71 = v72 + 1;
                                    v69 = v63 - v71;
                                  }

                                  while (v63 - v71 > 1);
                                }

                                v72 = v63;
LABEL_146:
                                v70 = v72 - __pb;
                                if (v72 == v63)
                                {
                                  v70 = -1;
                                }
                              }

                              else
                              {
                                v70 = -1;
                              }

                              std::string::basic_string(&v111, v105, v67, v70 - v67, v116);
                              if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v113.__r_.__value_.__l.__data_);
                              }

                              v113 = v111;
                              v58 = v105[23];
                              v59 = *&v105[8];
                              v60 = *v105;
                            }
                          }

                          break;
                        }

                        v61 = v65 + 1;
                        v64 = v63 - v61;
                      }

                      while (v63 - v61 >= 4);
                    }

                    if ((v58 & 0x80u) != 0)
                    {
                      v73 = v59;
                    }

                    else
                    {
                      v60 = v105;
                      v73 = v58;
                    }

                    if (v73 >= 6)
                    {
                      v74 = &v60[v73];
                      v75 = v73;
                      v76 = v60;
                      do
                      {
                        v77 = memchr(v76, 69, v75 - 5);
                        if (!v77)
                        {
                          break;
                        }

                        if (*v77 == 1229016389 && *(v77 + 2) == 14924)
                        {
                          if (v77 != v74)
                          {
                            v79 = v77 - v60;
                            if (v77 - v60 != -1)
                            {
                              v80 = v79 + 8;
                              v68 = v73 >= (v79 + 8);
                              v81 = v73 - (v79 + 8);
                              if (v68)
                              {
                                if (v81 >= 2)
                                {
                                  v83 = &v60[v80];
                                  do
                                  {
                                    v84 = memchr(v83, 13, v81 - 1);
                                    if (!v84)
                                    {
                                      break;
                                    }

                                    if (*v84 == 2573)
                                    {
                                      goto LABEL_173;
                                    }

                                    v83 = v84 + 1;
                                    v81 = v74 - v83;
                                  }

                                  while (v74 - v83 > 1);
                                }

                                v84 = &v60[v73];
LABEL_173:
                                v82 = v84 - v60;
                                if (v84 == v74)
                                {
                                  v82 = -1;
                                }
                              }

                              else
                              {
                                v82 = -1;
                              }

                              std::string::basic_string(&v111, v105, v80, v82 - v80, v116);
                              if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v112.__r_.__value_.__l.__data_);
                              }

                              v112 = v111;
                              LOBYTE(v58) = v105[23];
                            }
                          }

                          break;
                        }

                        v76 = v77 + 1;
                        v75 = v74 - v76;
                      }

                      while (v74 - v76 >= 6);
                    }

                    if ((v58 & 0x80) != 0)
                    {
                      operator delete(*v105);
                    }

                    if ((__str[23] & 0x80000000) != 0)
                    {
                      operator delete(*__str);
                    }

                    goto LABEL_182;
                  }

                  v43 = v44 + 1;
                  v36 = v37 - v43;
                }

                while (v37 - v43 >= 9);
              }

              if (v34 < 0)
              {
                operator delete(__pa);
              }

              goto LABEL_55;
            }

            LODWORD(v19) = 0;
            v31 = (v32 + 1);
            v21 = v30 - v31;
            if (v30 - v31 < 8)
            {
              goto LABEL_227;
            }
          }
        }

        break;
      }

      v16 = (v17 + 1);
      v6 = v15 - v16;
    }

    while (v15 - v16 >= 9);
  }

LABEL_55:
  LODWORD(v19) = 0;
LABEL_227:
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v19)
    {
      goto LABEL_232;
    }

    goto LABEL_231;
  }

  operator delete(v113.__r_.__value_.__l.__data_);
  if (v19)
  {
LABEL_231:
    operator delete(v114.__r_.__value_.__l.__data_);
  }

LABEL_232:
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  return a1;
}