uint64_t sub_10004238C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004239C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000423AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_1000423BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = v2;
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  v6 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v6;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  v7 = *(a2 + 160);
  v8 = *(a2 + 176);
  v9 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v9;
  *(a1 + 160) = v7;
  *(a1 + 176) = v8;
  result = *(a2 + 224);
  v11 = *(a2 + 240);
  v12 = *(a2 + 256);
  *(a1 + 267) = *(a2 + 267);
  *(a1 + 240) = v11;
  *(a1 + 256) = v12;
  *(a1 + 224) = result;
  return result;
}

uint64_t sub_100042410(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_10004243C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void *sub_100042458(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

__n128 sub_100042494(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = result;
  return result;
}

void *sub_1000424A8(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void *sub_1000424E4(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

__n128 sub_100042520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  result = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100042544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004268C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t sub_100043158(int *a1)
{
  result = pthread_mutex_trylock(&stru_100B5AC18);
  v3 = *a1;
  if (result)
  {
    if (v3 == dword_100B5AD64)
    {
      if (a1[1])
      {
        sub_1008129CC(v4);
      }

      *(a1 + 4) = 1;
    }

    else
    {
      *a1 = dword_100B5AD64;
      *(a1 + 4) = 0;
    }
  }

  else
  {
    if (v3 == dword_100B5AD64)
    {
      dispatch_suspend(qword_100B5AD68);
      dword_100B5AD64 = 0;
    }

    else
    {
      *a1 = dword_100B5AD64;
      *(a1 + 4) = 0;
    }

    return pthread_mutex_unlock(&stru_100B5AC18);
  }

  return result;
}

uint64_t sub_10004325C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, uint64_t a7, unsigned int a8, void *a9, _DWORD *a10, _BYTE *a11, uint64_t a12, unsigned int a13, unsigned __int16 a14, unsigned __int8 a15, void *a16)
{
  v103 = a12;
  v104 = a13;
  v106 = a15;
  v105 = a14;
  v94 = a2;
  obj = a6;
  v20 = a6;
  v98 = a9;
  v95 = a16;
  v97 = sub_10000EE80();
  v22 = *(a1 + 224);
  v23 = a1;
  v24 = (a1 + 232);
  if (v22 == v24)
  {
LABEL_24:
    v101 = 0;
    v33 = a7;
    v34 = *(a7 + 23);
    if (v34 < 0)
    {
      v35 = *a7;
      v34 = *(a7 + 8);
    }

    else
    {
      v35 = a7;
    }

    if (v34 >= 20)
    {
      v36 = &v35[v34];
      v37 = v35;
      do
      {
        v38 = memchr(v37, 99, v34 - 19);
        if (!v38)
        {
          break;
        }

        v39 = *v38 == 0x6C7070612E6D6F63 && v38[1] == 0x6F7465756C622E65;
        if (v39 && *(v38 + 4) == 1684567151)
        {
          break;
        }

        v37 = v38 + 1;
        v34 = v36 - v37;
      }

      while (v36 - v37 >= 20);
    }

    v41 = v23;
    if (qword_100B50B88 != -1)
    {
      sub_100823874();
    }

    if (sub_100044414(qword_100B50B80, a7))
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_100823AB0();
      }

      goto LABEL_121;
    }

    if (qword_100B50B88 != -1)
    {
      sub_100823874();
    }

    v26 = sub_1000117DC(qword_100B50B80, v101);
    (**v97)(v97, v26, v20, a5, v106);
    if (v103 == 1)
    {
      if (qword_100B512C8 != -1)
      {
        sub_100823A88();
      }

      v42 = sub_10000EE78(off_100B512C0);
      if (!v42)
      {
        v43 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v26, buf);
          if (buf[23] >= 0)
          {
            v48 = buf;
          }

          else
          {
            v48 = *buf;
          }

          *v113 = 136446210;
          *&v113[4] = v48;
          v45 = "Bluetooth is powered off - notifying session %{public}s";
LABEL_67:
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v45, v113, 0xCu);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

LABEL_69:
        (*(*v97 + 24))(v97, v26, v42 != 0);
        goto LABEL_70;
      }

      if (*(v23 + 179) == 1)
      {
        v43 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v26, buf);
          if (buf[23] >= 0)
          {
            v44 = buf;
          }

          else
          {
            v44 = *buf;
          }

          *v113 = 136446210;
          *&v113[4] = v44;
          v45 = "Bluetooth is in denylist mode - show LE_DENYLIST_ENABLED alert for %{public}s";
          goto LABEL_67;
        }

        goto LABEL_69;
      }
    }

LABEL_70:
    if (!(*(*v97 + 48))(v97, v26, a8 == 0) || (v103 & 0x100) != 0)
    {
      v49 = 0;
LABEL_101:
      v62 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        if (a8)
        {
          v63 = "peripheral";
        }

        else
        {
          v63 = "central";
        }

        sub_100018384(v26, v113);
        v64 = v116;
        v65 = *v113;
        sub_10005D234();
        v66 = v113;
        v67 = "on";
        if (v64 < 0)
        {
          v66 = v65;
        }

        *buf = 136447490;
        *&buf[4] = v63;
        if (v98)
        {
          v68 = "on";
        }

        else
        {
          v68 = "off";
        }

        if (!v49)
        {
          v67 = "off";
        }

        *&buf[12] = 2082;
        *&buf[14] = v66;
        p_p = &__p;
        if (v100 < 0)
        {
          p_p = __p;
        }

        *&buf[22] = 2082;
        *&buf[24] = v67;
        *v108 = 2082;
        *&v108[2] = v68;
        v109 = 2114;
        v110 = v98;
        v111 = 2080;
        v112 = p_p;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Registering %{public}s session %{public}s with backgrounding: %{public}s, persistence: %{public}s (CBSR) restoreID: %{public}@ %s", buf, 0x3Eu);
        if (v100 < 0)
        {
          operator delete(__p);
        }

        v41 = v23;
        v33 = a7;
        if (v116 < 0)
        {
          operator delete(*v113);
        }
      }

      if (sub_10005C8C0(v41, v26, v20, a8))
      {
        (*(*v97 + 8))(v97, v26, v20);
        if (qword_100B50B88 == -1)
        {
LABEL_120:
          sub_100079604(qword_100B50B80, v101);
LABEL_121:
          v26 = 0;
          goto LABEL_122;
        }

LABEL_187:
        sub_100823874();
        goto LABEL_120;
      }

      if (qword_100B512F8 != -1)
      {
        sub_100823948();
      }

      v71 = sub_10005D040(off_100B512F0, v26, a8);
      v72 = v71;
      if (!v71)
      {
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_100823BC0();
        }

        (*(*v97 + 8))(v97, v26, v20);
        if (qword_100B50B88 == -1)
        {
          goto LABEL_120;
        }

        goto LABEL_187;
      }

      *(v71 + 120) = a3;
      objc_storeStrong((v71 + 88), obj);
      if (qword_100B54208 != -1)
      {
        sub_100823B20();
      }

      *(v72 + 128) = sub_10005E5A8(qword_100B54200, v20);
      objc_storeStrong((v72 + 96), a9);
      if ((*(v41 + 425) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
        {
          sub_100823B48();
        }

        v73 = *(v72 + 96);
        *(v72 + 96) = 0;
      }

      if (*(v72 + 96))
      {
        *(v41 + 178) = 1;
      }

      *(v72 + 28) = (*(*v97 + 56))(v97, v26) != 32;
      *(v72 + 27) = BYTE2(v103);
      *(v72 + 36) = *(&v103 + 3);
      *(v72 + 184) = BYTE6(v103);
      *(v72 + 25) = v104;
      *(v72 + 26) = 0;
      objc_storeStrong((v72 + 104), a2);
      *(v72 + 73) = v106;
      v74 = (*(*v72 + 16))(v72);
      if (v74 == 1)
      {
        v74 = _os_feature_enabled_impl();
        if (v74)
        {
          *(v72 + 240) = HIBYTE(v103);
        }

        else
        {
          v74 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR);
          if (v74)
          {
            sub_100823B84();
          }
        }
      }

      if (!a8)
      {
        *(v72 + 358) = HIBYTE(v105);
        sub_1003AC374(v74, v72, v103, v104 | ((v105 | (v106 << 16)) << 32));
      }

      if (*(v33 + 23) < 0)
      {
        v33 = *v33;
      }

      v79 = [NSString stringWithUTF8String:v33];
      sub_10005E880(v41, v72, v26, v79, BYTE5(v103), 0);
      v80 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v26, v113);
        v81 = v116 >= 0 ? v113 : *v113;
        v82 = *(v41 + 179);
        *buf = 136447234;
        *&buf[4] = v81;
        *&buf[12] = 1024;
        *&buf[14] = BYTE3(v103);
        *&buf[18] = 1024;
        *&buf[20] = BYTE4(v103);
        *&buf[24] = 1024;
        *&buf[26] = v82;
        *&buf[30] = 1024;
        *v108 = BYTE6(v103);
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Session %{public}s : needsRestrictedStateOperation = %d, powerOnInRestrictedState = %d , denylistMode = %d, receivesControllerBTClockEvents=%d ", buf, 0x24u);
        if (v116 < 0)
        {
          operator delete(*v113);
        }
      }

      if ((v104 & 0x100) != 0 || (v104 & 0x1000000) != 0)
      {
        goto LABEL_171;
      }

      if (BYTE3(v103) != 1)
      {
        goto LABEL_170;
      }

      if (qword_100B512C8 != -1)
      {
        sub_100823A88();
      }

      v83 = sub_10000EE78(off_100B512C0);
      if (v83 == 1)
      {
        *a11 = *(v41 + 179);
LABEL_172:
        *a10 = v83;
        v84 = sub_10000E92C();
        sub_100007E30(buf, "Sentinel");
        sub_100007E30(v113, "LEConnection");
        v85 = (*(*v84 + 72))(v84, buf, v113, v72 + 44);
        if (v116 < 0)
        {
          operator delete(*v113);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v85)
        {
          v86 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            v87 = *(v72 + 44);
            *buf = 67109120;
            *&buf[4] = v87;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Sentinel LE Connection Enabled Override %d", buf, 8u);
          }
        }

        v88 = [*(v41 + 320) objectForKeyedSubscript:*(v72 + 88)];
        v89 = v88;
        if (HIBYTE(v105) == 1 && (!v88 || ([v88 containsObject:*(v72 + 104)] & 1) == 0))
        {
          sub_1003AC6F4(v41, *(v72 + 88), *(v72 + 104));
        }

        goto LABEL_122;
      }

      if ((v103 & 0x1000000) == 0)
      {
LABEL_170:
        if (*(v41 + 179))
        {
LABEL_171:
          v83 = 0;
          goto LABEL_172;
        }
      }

      if (qword_100B512C8 != -1)
      {
        sub_100823A88();
      }

      v83 = sub_10000EE78(off_100B512C0);
      goto LABEL_172;
    }

    if (a8)
    {
      if (a8 != 1)
      {
LABEL_100:
        v49 = 1;
        goto LABEL_101;
      }

      v50 = sub_10000F034();
      v51 = 10;
    }

    else
    {
      v50 = sub_10000F034();
      v51 = 9;
    }

    (*(*v50 + 664))(v50, v20, v51);
    goto LABEL_100;
  }

  *&v21 = 136446466;
  v90 = v21;
  while (1)
  {
    v26 = v22[4];
    v25 = v22[5];
    if (*(v25 + 120) == a3)
    {
      v27 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
      {
        sub_100018384(v26, buf);
        v32 = buf;
        if (buf[23] < 0)
        {
          v32 = *buf;
        }

        *v113 = v90;
        *&v113[4] = v32;
        v114 = 2114;
        v115 = v20;
        _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Duplicate check-in message from session %{public}s in application %{public}@", v113, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    if ([*(v25 + 88) isEqualToString:{v20, v90}])
    {
      if (!*(v25 + 120) && *(v25 + 96))
      {
        v28 = qword_100BCE9E0;
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(v25 + 88);
          *buf = 138543362;
          *&buf[4] = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Starting timer for a dead session to clean up leaked prior session for %{public}@", buf, 0xCu);
        }

        sub_1003AC3DC(v23, *(v25 + 88), 15);
      }

      if ([*(v25 + 96) isEqualToString:v98] && (*(*v25 + 16))(v25) == a8)
      {
        break;
      }
    }

    v30 = v22[1];
    if (v30)
    {
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v31 = v22[2];
        v39 = *v31 == v22;
        v22 = v31;
      }

      while (!v39);
    }

    v22 = v31;
    if (v31 == v24)
    {
      goto LABEL_24;
    }
  }

  v46 = qword_100BCE9E0;
  if (*(v25 + 120))
  {
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(v26, v113);
      v47 = v116 >= 0 ? v113 : *v113;
      *buf = 138543874;
      *&buf[4] = v98;
      *&buf[12] = 2082;
      *&buf[14] = v47;
      *&buf[22] = 2114;
      *&buf[24] = v20;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Duplicate restore identifier %{public}@ from session %{public}s in application %{public}@", buf, 0x20u);
      if (v116 < 0)
      {
        operator delete(*v113);
      }
    }

    goto LABEL_121;
  }

  v52 = a10;
  v53 = a7;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(v26, v113);
    v54 = v116 >= 0 ? v113 : *v113;
    *buf = 67109634;
    *&buf[4] = a8;
    *&buf[8] = 2082;
    *&buf[10] = v54;
    *&buf[18] = 2114;
    *&buf[20] = v20;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Restoring zombie'd session type %d %{public}s for application %{public}@", buf, 0x1Cu);
    if (v116 < 0)
    {
      operator delete(*v113);
    }
  }

  *(v25 + 120) = a3;
  v55 = sub_100614E78(v26, a7);
  if (!a8)
  {
    sub_1003AC374(v55, v25, v103, v104 | ((v105 | (v106 << 16)) << 32));
  }

  if (*(a7 + 23) < 0)
  {
    v53 = *a7;
  }

  v56 = [NSString stringWithUTF8String:v53];
  sub_10005E880(v23, v25, v26, v56, BYTE5(v103), 1);
  v57 = [*(v23 + 304) objectForKey:v20];
  if (v57)
  {
    v58 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v26, v113);
      v59 = v116 >= 0 ? v113 : *v113;
      *buf = 138543874;
      *&buf[4] = v98;
      *&buf[12] = 2082;
      *&buf[14] = v59;
      *&buf[22] = 2114;
      *&buf[24] = v20;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Restore identifier %{public}@ from session %{public}s in application %{public}@ found, canceling resurrectionTimer", buf, 0x20u);
      if (v116 < 0)
      {
        operator delete(*v113);
      }
    }

    dispatch_block_cancel(v57);
    [*(v23 + 304) removeObjectForKey:v20];
    [*(v23 + 296) removeObject:v20];
  }

  (*(*v23 + 16))(v23, v26);
  v60 = qword_100BCE9E0;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Ignore needsRestrictedStateOperation since restorable sessions are always apps", buf, 2u);
  }

  if (*(v23 + 179))
  {
    v61 = 0;
  }

  else
  {
    if (qword_100B512C8 != -1)
    {
      sub_100823A88();
      v52 = a10;
    }

    v61 = sub_10000EE78(off_100B512C0);
  }

  *v52 = v61;
  v75 = sub_10000C798();
  v76 = (*(*v75 + 416))(v75);
  if (*v52)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  if (v77 == 1)
  {
    v78 = sub_100007EE8();
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_1003AC628;
    v102[3] = &unk_100AEC130;
    v102[4] = v23;
    v102[5] = v26;
    v102[6] = v25;
    sub_10000CA94(v78, v102);
  }

LABEL_122:
  return v26;
}

uint64_t sub_100044414(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v10[0] = 0;
    v10[1] = 0;
    sub_100007F88(v10, a1 + 40);
    if ((*(a1 + 108) & 1) == 0)
    {
      sub_10000801C(v10);
      (**a1)(a1);
      sub_100007FB8(v10);
    }

    if (a1 + 128 == sub_10000EEB8(a1 + 120, a2))
    {
      if (sub_100044714(a1, a2))
      {
        operator new();
      }
    }

    else
    {
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        buf[0] = 136446210;
        *&buf[1] = v9;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Session %{public}s already attached", buf, 0xCu);
        v6 = qword_100BCE8D8;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1008537D0();
      }
    }

    sub_1000088CC(v10);
  }

  else
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100853810(a2, v4 < 0, v7);
    }
  }

  return 100;
}

unint64_t sub_100044714(uint64_t a1, uint64_t a2)
{
  v3 = HIBYTE(*(a1 + 104));
  v4 = *(a1 + 104);
  v5 = (a1 + 152);
  v6 = *(a1 + 106);
  v7 = 1;
  while (1)
  {
    if (v6 == -2)
    {
      v6 = 0;
    }

    else
    {
      ++v6;
    }

    *(a1 + 106) = v6;
    v8 = *(a2 + 23) >= 0 ? a2 : *a2;
    v9 = *v8;
    if (*v8)
    {
      v10 = v8 + 1;
      v11 = 5381;
      do
      {
        v11 = 33 * v11 + v9;
        v12 = *v10++;
        v9 = v12;
      }

      while (v12);
      v13 = 33 * v11;
    }

    else
    {
      v13 = 46501;
    }

    v14 = 33 * (33 * (33 * (v3 + v13) + v4) + ((v6 & 0xFF00) >> 8)) + v6;
    if ((v14 - 1) <= 0xFFFCu)
    {
      v15 = v14 << 16;
      v16 = *v5;
      if (!*v5)
      {
        break;
      }

      v17 = v5;
      do
      {
        v18 = v16[4];
        v19 = v18 >= v15;
        v20 = v18 < v15;
        if (v19)
        {
          v17 = v16;
        }

        v16 = v16[v20];
      }

      while (v16);
      if (v17 == v5 || v17[4] > v15)
      {
        break;
      }
    }

    v19 = v7++ >= 0xFF;
    if (v19)
    {
      goto LABEL_27;
    }
  }

  v24 = v14 << 16;
  if (v14)
  {
    v23 = v14 << 16;
    v25 = &v23;
    sub_1000448C8(a1 + 144, &v23)[5] = v15;
    v25 = &v24;
    sub_100044998(a1 + 168, &v24)[5] = v15;
    return v24;
  }

LABEL_27:
  v22 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10085388C(v8, v22);
  }

  return 0;
}

void *sub_1000448C8(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_100044998(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100044A68(uint64_t a1, __int128 *a2, int a3)
{
  v6 = sub_100044BBC(a1);
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100008904((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v7;
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = a3;
  return a1;
}

pthread_mutex_t *sub_100044AFC(pthread_mutex_t *a1)
{
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  v2 = pthread_mutex_init(a1, &v4);
  pthread_mutexattr_destroy(&v4);
  if (v2 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10081E3CC();
  }

  return a1;
}

void *sub_100044BC4(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t sub_100044CCC(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_100044BC4(a1, &v3, a2);
  if (!result)
  {
    sub_100044D70();
  }

  return result;
}

void sub_100044E0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100044E28(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'session attached' event for session %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100044F5C;
  v6[3] = &unk_100B023E8;
  v6[4] = a2;
  sub_1000116C8(a1 + 8, v6);
}

uint64_t sub_100044F5C(uint64_t a1, uint64_t (***a2)(void, uint64_t))
{
  v3 = sub_100011794(*(a1 + 32));
  v4 = **a2;

  return v4(a2, v3);
}

void sub_100044FE8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = a2;
  v8 = a3;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v9 = objc_autoreleasePoolPush();
  v10 = +[BTAppInteraction instance];
  [v10 registerApplication:v8 pid:a4 isExtension:a5];

  objc_autoreleasePoolPop(v9);
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  sub_100007E30(__p, [v8 UTF8String]);
  v17 = __p;
  v11 = sub_100045174(a1 + 96, __p);
  sub_1000452CC(v11 + 56, &v16);
  v17 = __p;
  v12 = sub_100045174(a1 + 96, __p);
  if (v12 != v11)
  {
    sub_10039D4A0((v12 + 56), *(v11 + 56), (v11 + 64));
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000088CC(v15);
}

void sub_10004512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000088CC(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_100045174(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *sub_100044BC4(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100045228();
  }

  return v2;
}

void *sub_1000452CC(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100045398(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10039D44C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

id sub_1000453E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[BTAppInteraction instance];
  sub_1000454F0(a1, a2, __p);
  if (v13 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = [v7 isBackgroundingSupported:v9 central:a3];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v6);
  return v10;
}

void sub_1000454BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000454F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v6 = *(a1 + 96);
  if (v6 == (a1 + 104))
  {
LABEL_16:
    sub_100007E30(a3, "");
  }

  else
  {
    while (1)
    {
      v7 = v6[7];
      if (v7 != v6 + 8)
      {
        break;
      }

LABEL_10:
      v11 = v6[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v6[2];
          v10 = *v12 == v6;
          v6 = v12;
        }

        while (!v10);
      }

      v6 = v12;
      if (v12 == (a1 + 104))
      {
        goto LABEL_16;
      }
    }

    while (v7[4] != a2)
    {
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
      if (v9 == v6 + 8)
      {
        goto LABEL_10;
      }
    }

    if (*(v6 + 55) < 0)
    {
      sub_100008904(a3, v6[4], v6[5]);
    }

    else
    {
      v13 = *(v6 + 2);
      *(a3 + 16) = v6[6];
      *a3 = v13;
    }
  }

  return sub_1000088CC(v15);
}

uint64_t sub_100045688(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 64) = a2;
  sub_10000801C(v5);
  return sub_1000088CC(v5);
}

uint64_t sub_1000456EC(void *key, size_t keyLength, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  dataOutMoved = 0;
  cryptorRef = 0;
  v10 = CCCryptorCreate(0, 0, 0, key, keyLength, 0, &cryptorRef);
  if (v10)
  {
    printf("Could not create cryptor : %d\n", v10);
    return 1041;
  }

  else
  {
    v12 = CCCryptorUpdate(cryptorRef, a3, a4, a5, a6, &dataOutMoved);
    if (v12)
    {
      printf("Failed to encrypt : %d (need %d, got %zu)\n", v12, a6, dataOutMoved);
      CCCryptorRelease(cryptorRef);
      return 1042;
    }

    else
    {
      CCCryptorRelease(cryptorRef);
      if (dataOutMoved == a6)
      {
        return 0;
      }

      else
      {
        printf("Incorrect checksum size %ld, expecting %d\n", dataOutMoved, a6);
        return 1043;
      }
    }
  }
}

uint64_t sub_1000457E4(__int128 *a1, __int16 *a2, uint64_t a3)
{
  memset(v29, 0, sizeof(v29));
  v26 = 0;
  v27 = 0;
  if (a1 && a2)
  {
    v4 = 0;
    v30 = *a2;
    v31 = *(a2 + 2);
    key = *a1;
    v5 = 0xF00000000;
    do
    {
      v6 = v29[v4 - 8];
      v29[v4 - 8] = v29[HIDWORD(v5) - 8];
      v29[HIDWORD(v5) - 8] = v6;
      ++v4;
      v5 -= 0x100000000;
    }

    while (v4 != 8);
    v7 = sub_1000456EC(&key, 0x10uLL, v29, 0x10u, &v26, 0x10u);
    if (v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AES128Encrypt returned %d irk:%@ r:%@", v8, v9, v10, v11, v12, v13, v14, v7);
        v15 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }
    }

    else
    {
      *a3 = *(&v27 + 5);
      *(a3 + 2) = HIBYTE(v27);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No IRK key available - can't run AH.", v16, v17, v18, v19, v20, v21, v22, v25);
      v23 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4828;
  }

  return v7;
}

BOOL sub_100045978(uint64_t a1, __int128 *a2)
{
  result = 0;
  v6 = 0;
  v5 = 0;
  if (a1 && a2)
  {
    return *a1 == 1 && (*(a1 + 1) & 0x40) != 0 && !sub_1000457E4(a2, (a1 + 1), &v5) && v5 == *(a1 + 4) && v6 == *(a1 + 6);
  }

  return result;
}

void sub_100045A04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[LeDeviceCache sharedInstance];
  v4 = v3;
  if (v3)
  {
    [v3 findUUIDsWithCustomProperties:*(a1 + 32)];
  }

  else
  {
    v6 = 0uLL;
    v7 = 0;
  }

  v5 = *(*(a1 + 40) + 8);
  sub_10003E3E8(v5 + 48);
  *(v5 + 48) = v6;
  *(v5 + 64) = v7;
  v7 = 0;
  v6 = 0uLL;
  v8 = &v6;
  sub_1000161FC(&v8);

  objc_autoreleasePoolPop(v2);
}

void sub_100045AC4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4812000000;
  v15 = sub_1000422C4;
  v16 = sub_1000425EC;
  v17 = "";
  memset(v18, 0, sizeof(v18));
  v6 = *(a1 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100045A04;
  v9[3] = &unk_100AF5548;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  dispatch_sync(v6, v9);
  v8 = v13;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_10003E428(a3, v8[6], v8[7], 0xAAAAAAAAAAAAAAABLL * ((v8[7] - v8[6]) >> 3));

  _Block_object_dispose(&v12, 8);
  v19 = v18;
  sub_1000161FC(&v19);
}

void sub_100045C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  *(v9 - 40) = v8;
  sub_1000161FC((v9 - 40));

  _Unwind_Resume(a1);
}

void sub_100045C30(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  if (*(a1 + 12) != v4)
  {
    *(a1 + 12) = v4;
LABEL_19:

    os_unfair_lock_unlock(a1);
    return;
  }

  if (*(a1 + 4) != 1)
  {
    if (*(a1 + 16))
    {
      sub_10007A668(a1);
    }

    goto LABEL_19;
  }

  if (*(a1 + 56) && !*(a1 + 24))
  {
    v5 = (a1 + 32);
    v6 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v6 = *v5;
    }

    v7 = [NSString stringWithUTF8String:v6];
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      *buf = 138412546;
      *&buf[4] = v7;
      v37 = 2082;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Watchdog dispatch scheduled: %@ (%{public}s)", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004855A8;
    block[3] = &unk_100AE1200;
    v34 = v7;
    v35 = a1;
    v9 = v7;
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(*(a1 + 56), v10);
  }

  ++*(a1 + 24);
  v11 = sub_10000E92C();
  if ((*(*v11 + 672))(v11))
  {
    WriteStackshotReport_stdc();
  }

  if (*(a1 + 24) == 3)
  {
    v12 = sub_10000E92C();
    if (((*(*v12 + 680))(v12) & 1) == 0)
    {
      v14 = sub_10000E92C();
      if (!(*(*v14 + 8))(v14))
      {
        while (1)
        {
          sub_10048566C(a1);
          __break(1u);
LABEL_31:
          v15 = *(a1 + 55);
          if (v15 >= 0)
          {
            v16 = (a1 + 32);
          }

          else
          {
            v16 = *(a1 + 32);
          }

          if (v15 >= 0)
          {
            v17 = *(a1 + 55);
          }

          else
          {
            v17 = *(a1 + 40);
          }

          while (1)
          {
            v18 = (v2 + 4);
            v19 = *(v2 + 55);
            if ((v19 & 0x8000000000000000) != 0)
            {
              v18 = v2[4];
              v19 = v2[5];
            }

            if (!v17)
            {
              break;
            }

            if (v19 >= v17)
            {
              v23 = &v19[v18];
              v24 = *v16;
              v25 = v18;
              while (1)
              {
                v26 = &v19[-v17];
                if (v26 == -1)
                {
                  goto LABEL_41;
                }

                v27 = memchr(v25, v24, (v26 + 1));
                if (!v27)
                {
                  goto LABEL_41;
                }

                v28 = v27;
                if (!memcmp(v27, v16, v17))
                {
                  break;
                }

                v25 = v28 + 1;
                v19 = (v23 - (v28 + 1));
                if (v19 < v17)
                {
                  goto LABEL_41;
                }
              }

              if (v28 != v23 && v28 - v18 != -1)
              {
                break;
              }
            }

LABEL_41:
            v20 = v2[1];
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
                v21 = v2[2];
                v22 = *v21 == v2;
                v2 = v21;
              }

              while (!v22);
            }

            v2 = v21;
            if (v21 == v1)
            {
              goto LABEL_28;
            }
          }

          v29 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = v16;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Targetted WatchDog Stall signature found, filing ABC Snapshot for %s", buf, 0xCu);
          }

          if (qword_100B53FE8 != -1)
          {
            sub_10082E83C();
          }

          v30 = qword_100B53FE0;
          sub_100007E30(buf, "Watchdog");
          sub_1005780BC(v30, buf, v2 + 4, 60.0);
          if (v39 < 0)
          {
            operator delete(*buf);
          }

LABEL_28:
          sub_10004B61C(&v31, v32[0]);
        }
      }
    }

    v31 = 0;
    v32[0] = 0;
    v32[1] = 0;
    sub_100007E30(buf, "com.apple.UserEventAgent");
    sub_100007E30(v40, "com.apple.cloudpaird");
    sub_100007E30(v41, "com.apple.nearbyd");
    sub_100007E30(v42, "com.apple.bluetooth.coreBluetooth");
    sub_1000C1030(&v31, buf, 4);
    for (i = 0; i != -96; i -= 24)
    {
      if (v42[i + 23] < 0)
      {
        operator delete(*&v42[i]);
      }
    }

    v2 = v31;
    v1 = v32;
    if (v31 != v32)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  os_unfair_lock_unlock(a1);
}

void sub_100046168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_10004B61C(&a12, a13);
  _Unwind_Resume(a1);
}

id sub_100046200(uint64_t a1)
{
  v2 = [*(a1 + 32) internalFlags];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if ((v2 & 0x800) != 0)
  {

    return [v3 deviceBuffered:v4];
  }

  else
  {

    return [v3 deviceFound:v4];
  }
}

void *sub_100046268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[62])
  {
    return [result _stackBLEScannerDeviceFound:a2];
  }

  return result;
}

void sub_100046284(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 98) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1000462F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100046310(uint64_t a1)
{
  sub_10004A5F0(a1);

  operator delete();
}

void sub_100046348(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100046348(a1, *a2);
    sub_100046348(a1, a2[1]);
    a2[5] = &off_100AE0A78;
    v4 = a2[6];
    if (v4)
    {
      sub_10000C808(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1000463C8(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_1000A61B8(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_1000A61B8(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_100046458(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  v7 = v6;
  if (v6)
  {
    if (!*(v6 + 16))
    {
      v8 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
      {
        v9 = sub_100063D0C();
        sub_100873558(v9, v13, v8);
      }
    }

    if (a3 || (v10 = *(v7 + 24)) == 0)
    {
      v10 = *(v7 + 16);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008735A4();
    }

    v10 = 0;
  }

  sub_1000088CC(v12);

  return v10;
}

void sub_100046570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10004659C(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = a5;
  v11 = v10;
  v26 = 0;
  v12 = *(a3 + 8);
  if (v12[304] == 1 && (v12[370] & 1) == 0)
  {
    v17 = *(a1 + 8);
    if (!*(v17 + 146) && *(v17 + 194) << 16 != 0x10000)
    {
      goto LABEL_66;
    }

    goto LABEL_53;
  }

  if (v12[305] != 1)
  {
    [v10 setString:@"default"];
    if (!sub_100053460(a1))
    {
      goto LABEL_66;
    }

    if (!sub_1000535B8(a1))
    {
      goto LABEL_52;
    }

    v13 = sub_10000C5E0(*(a3 + 8) + 48);
    v14 = sub_10000C5F8(*(a3 + 8) + 48);
    v15 = *(*(a1 + 8) + 488);
    if (v15)
    {
      if (v15 == 1)
      {
        if (sub_10004ECB4(a1) && (sub_100057614(a1, a2, a3, a4, &v26) & 1) != 0)
        {
          goto LABEL_52;
        }

        v16 = [*(*(a1 + 8) + 80) count];
        if (v16)
        {
          v5 = sub_10004DF60(a2);
          if (sub_1007B3660(a1, v5))
          {
LABEL_51:

            goto LABEL_52;
          }
        }

        v19 = *(a1 + 8);
        if (*(v19 + 161))
        {
          if (sub_1007B3760(a1, a2, a3))
          {
            goto LABEL_31;
          }

          v19 = *(a1 + 8);
        }

        if (*(v19 + 88) != *(v19 + 96))
        {
          if (sub_10004E638(a1, v14, v13, a4, &v26))
          {
            goto LABEL_31;
          }

          v19 = *(a1 + 8);
        }

        if (*(v19 + 120) != *(v19 + 128))
        {
          if (sub_100053708(a1, a2, a3, &v26, v11))
          {
LABEL_31:
            v20 = 1;
            if (!v16)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          v19 = *(a1 + 8);
        }

        if (*(v19 + 192) && *(v19 + 208))
        {
          v20 = sub_1007B3BC0(a1, a3);
          if (!v16)
          {
LABEL_48:
            if ((v20 & 1) == 0)
            {
              goto LABEL_66;
            }

LABEL_52:
            sub_10004E4DC();
          }

LABEL_47:

          goto LABEL_48;
        }

        if (v16)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      v23 = 0;
      goto LABEL_67;
    }

    if (sub_10004ECB4(a1) && !sub_100057614(a1, a2, a3, a4, &v26))
    {
      goto LABEL_66;
    }

    v18 = [*(*(a1 + 8) + 80) count];
    if (v18)
    {
      v5 = sub_10004DF60(a2);
      if ((sub_1007B3660(a1, v5) & 1) == 0)
      {
LABEL_65:

        goto LABEL_66;
      }
    }

    v21 = *(a1 + 8);
    if (*(v21 + 161))
    {
      if (!sub_1007B3760(a1, a2, a3))
      {
        goto LABEL_45;
      }

      v21 = *(a1 + 8);
    }

    if (*(v21 + 88) != *(v21 + 96))
    {
      if (!sub_10004E638(a1, v14, v13, a4, &v26))
      {
        goto LABEL_45;
      }

      v21 = *(a1 + 8);
    }

    if (*(v21 + 120) == *(v21 + 128))
    {
      goto LABEL_42;
    }

    if (sub_100053708(a1, a2, a3, &v26, v11))
    {
      v21 = *(a1 + 8);
LABEL_42:
      if (!*(v21 + 192) || !*(v21 + 208))
      {
        if (!v18)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      v20 = sub_1007B3BC0(a1, a3);
LABEL_46:
      if (!v18)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

LABEL_45:
    v20 = 0;
    goto LABEL_46;
  }

  if (!*(*(a1 + 8) + 148))
  {
    goto LABEL_66;
  }

LABEL_53:
  v22 = *(a1 + 81);
  v23 = 1;
  if (v22 <= 0x20)
  {
    if (((1 << v22) & 0x100010002) != 0)
    {
      v24 = 32;
LABEL_58:
      ++*(a1 + v24);
      goto LABEL_67;
    }

    if (((1 << v22) & 0x110) != 0)
    {
      v24 = 24;
      goto LABEL_58;
    }
  }

LABEL_67:

  return v23;
}

void sub_100046D30(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100046D48(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004975B0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E438 != -1)
  {
    dispatch_once(&qword_100B6E438, block);
  }

  return byte_100B6E430;
}

uint64_t sub_100046DD8(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 22;
  v3 = v1 - 5000;
  v4 = (v1 - 2001) < 0x7CF;
  if (v3 < 0x3E8)
  {
    v4 = 1;
  }

  return v2 < 4 || v4;
}

void sub_100046E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 40) = &off_100AE0AB8;
  *(a1 + 48) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

uint64_t sub_100046E40(uint64_t a1, unint64_t a2, int a3, uint64_t a4, char a5, int a6)
{
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  memset(v51, 0, sizeof(v51));
  v50 = 0u;
  v49 = 0u;
  sub_100007AD0(&v49);
  if (!a2)
  {
    goto LABEL_72;
  }

  ++*(a1 + 2120);
  if (a6)
  {
    v9 = *(a4 + 8);
    v10 = *(v9 + 476);
    v11 = *(v9 + 478);
    v12 = *(v9 + 342);
    v13 = sub_10000F034();
    v67[0].n128_u16[0] = v11;
    v67[0].n128_u8[2] = v10 & 3;
    v67[0].n128_u8[3] = v10 & 4;
    v67[0].n128_u8[4] = v12;
    memset(v67[0].n128_i64 + 5, 0, 35);
    (*(*v13 + 712))(v13, v67);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000C32C8();
  }

  *uu = 0;
  v69 = 0;
  v41 = off_100B508C8;
  sub_1000498D4(off_100B508C8, a2, 1u, 1u, 0, 0, uu);
  if (!uuid_is_null(uu))
  {
    v43 = sub_10004DF60(uu);
    sub_10004B0DC(v41, v43, *(*(a4 + 8) + 312) != 0);
    v16 = *(a4 + 8);
    if (*(v16 + 304))
    {
      v17 = 1;
    }

    else
    {
      v17 = *(v16 + 305);
    }

    sub_10004B390(v41, v43, v17 & 1);
    v18 = *(a4 + 8);
    if (*(v18 + 13) == 1)
    {
      sub_100046284(v41, v43, 1);
      v18 = *(a4 + 8);
    }

    sub_10004B41C(v41, v43, *(v18 + 12));
    v19 = *(a4 + 8);
    if (*(v19 + 40))
    {
      sub_100787390(v41, v43, *(v19 + 40));
      v19 = *(a4 + 8);
    }

    v40 = v19;
    if (*(v19 + 128))
    {
      v65 = xmmword_1008A4D3C;
      LODWORD(v66) = 0;
      sub_10000D03C(v67, &v65);
      v20 = sub_100058794(v40 + 112, v67);
      v21 = v20;
      if (v40 + 120 != v20 && sub_10000C5E0(v20 + 56) >= 3)
      {
        v22 = sub_10000C5F8(v21 + 56);
        if (*(v22 + 1))
        {
          v23 = [NSString stringWithFormat:@"%d", *(v22 + 1)];
          sub_1007893AC(v41, v43, @"GHSDeviceType", v23);
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_1008760A8();
          }
        }
      }
    }

    if (*(a1 + 3288) == 1)
    {
      v24 = *(a4 + 8);
      if (*(v24 + 367) == 1)
      {
        v25 = *(v24 + 365);
        if (v25 == 1)
        {
          ++*(a1 + 3276);
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_100876118();
          }
        }

        else if (!v25)
        {
          ++*(a1 + 3272);
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_100876188();
          }
        }
      }
    }

    sub_10004B050(v41, v43);
    sub_10004B4A8(v41, v43, *(*(a4 + 8) + 240));
    if (*(*(a4 + 8) + 367) == 1)
    {
      sub_10078B454(v41, v43, a5);
    }

    sub_10004B534(v41, v43, a5);
    v67[0].n128_u64[0] = uu;
    v35 = sub_10004CEA4(a1 + 2088, uu);
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_71;
        }

        if (a6)
        {
          v36 = v35 + 96;
        }

        else
        {
          v36 = v35 + 64;
        }

LABEL_70:
        sub_10000AE20(v36, a4);
LABEL_71:
        v46[1] = 0;
        v46[0] = 0;
        sub_10004B680(v46);
      }
    }

    else if ((a3 - 2) >= 2)
    {
      if (a3 != 4)
      {
        goto LABEL_71;
      }

      if (a6)
      {
        v36 = v35 + 112;
      }

      else
      {
        v36 = v35 + 80;
      }

      goto LABEL_70;
    }

    if (a6)
    {
      v36 = v35 + 96;
    }

    else
    {
      v36 = v35 + 48;
    }

    goto LABEL_70;
  }

  v14 = *(a4 + 8);
  if (*(v14 + 14) == 1)
  {
    v15 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      v39 = sub_100063D0C();
      v67[0].n128_u32[0] = 138543362;
      *(v67[0].n128_u64 + 4) = v39;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get UUID for device %{public}@ that caused AP wakeup", v67, 0xCu);

      v14 = *(a4 + 8);
    }

    memset(v67, 0, 24);
    if (*(v14 + 39) < 0)
    {
      sub_100008904(&v65, *(v14 + 16), *(v14 + 24));
    }

    else
    {
      v65 = *(v14 + 16);
      v66 = *(v14 + 32);
    }

    v26 = HIBYTE(v66);
    if (v66 < 0)
    {
      v26 = *(&v65 + 1);
    }

    if (v26)
    {
      v27 = *(a4 + 8);
      if (*(v27 + 39) < 0)
      {
        sub_100008904(v67, *(v27 + 16), *(v27 + 24));
      }

      else
      {
        v67[0] = *(v27 + 16);
        v67[1].n128_u64[0] = *(v27 + 32);
      }
    }

    else
    {
      sub_100007E30(v67, "Unknown");
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if (*(*(a4 + 8) + 367))
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    v29 = sub_100432718();
    v30 = *(*(a4 + 8) + 56);
    v47 = &off_100AE0A78;
    v48 = v30;
    if (v30)
    {
      sub_10000C69C(v30);
    }

    v31 = sub_100063D0C();
    v32 = v31;
    v33 = [v31 UTF8String];
    if (v67[1].n128_i8[7] >= 0)
    {
      v34 = v67;
    }

    else
    {
      v34 = v67[0].n128_u64[0];
    }

    (*(*v29 + 32))(v29, &v47, v28, "com.apple.bluetoothd", v33, v34);

    v47 = &off_100AE0A78;
    if (v48)
    {
      sub_10000C808(v48);
    }

    if (v67[1].n128_i8[7] < 0)
    {
      operator delete(v67[0].n128_u64[0]);
    }
  }

LABEL_72:
  *&v50 = v37;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(*(&v52 + 1));
  }

  std::locale::~locale(v51);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10004931C(_Unwind_Exception *a1)
{
  std::ostream::sentry::~sentry();

  if (*(v1 + 1495) < 0)
  {
    operator delete(*(v1 + 1472));
  }

  if (*(v1 + 567) < 0)
  {
    operator delete(*(v1 + 544));
  }

  *(v1 + 384) = &off_100AE0A78;
  v4 = *(v1 + 392);
  if (v4)
  {
    sub_10000C808(v4);
  }

  *(v1 + 440) = *(v1 + 176);
  v5 = *(v1 + 448);
  if (v5)
  {
    sub_10000C808(v5);
  }

  sub_10005889C(v1 + 848, *(v1 + 856));
  sub_1007FC91C(v1 + 1808);
  sub_1007FC91C(v1 + 2096);
  *(v1 + 992) = &off_100AE0AB8;
  v6 = *(v1 + 1000);
  if (v6)
  {
    sub_10000C808(v6);
  }

  sub_1007FC91C(v1 + 1024);
  _Unwind_Resume(a1);
}

void sub_1000498D4(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, void *a5@<X4>, __int128 *a6@<X5>, unsigned __int8 *a7@<X8>)
{
  v56 = __PAIR64__(a3, a4);
  dst = a7;
  v59 = a5;
  v71[0] = 0;
  v71[1] = 0;
  sub_100007F88(v71, a1 + 96);
  v58 = a2;
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      sub_10087323C();
    }

    goto LABEL_60;
  }

  if (BYTE6(a2) && (BYTE6(a2) != 1 || (a2 & 0xC00000000000) == 0x800000000000))
  {
LABEL_60:
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v40 = sub_100063D0C();
      sub_100873278(v40, __p);
    }

    goto LABEL_65;
  }

  if (!HIDWORD(v56))
  {
    if (!v59)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

  if (v59 && (v56 & 1) == 0)
  {
LABEL_63:
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873064();
    }

LABEL_65:
    uuid_clear(dst);
    goto LABEL_66;
  }

LABEL_8:
  if (a6)
  {
    v60 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v9 = *(a1 + 176);
    v10 = [v9 countByEnumeratingWithState:&v67 objects:v84 count:16];
    if (v10)
    {
      v11 = *v68;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v68 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(a1 + 176) objectForKey:{*(*(&v67 + 1) + 8 * i), v56, dst}];
          v14 = v13;
          if (!*(v13 + 3))
          {
            *&uu[3] = 0;
            *uu = 0;
            v15 = sub_10009A66C(*(v13 + 2));
            *uu = v15;
            uu[6] = BYTE6(v15);
            *&uu[4] = WORD2(v15);
            if (sub_100045978(uu, a6))
            {
              v16 = qword_100BCE900;
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
              {
                sub_10004D9B0();
                if (v79 >= 0)
                {
                  v17 = __p;
                }

                else
                {
                  v17 = *__p;
                }

                v18 = *v14;
                *buf = 136315394;
                v81 = v17;
                v82 = 2112;
                v83 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Removing previous instances of cloud device with address:%s UUID:%@ from device cache", buf, 0x16u);
                if (v79 < 0)
                {
                  operator delete(*__p);
                }
              }

              v19 = *v14;
              [v60 addObject:v19];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v67 objects:v84 count:16];
      }

      while (v10);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v20 = v60;
    v21 = [v20 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v21)
    {
      v22 = *v64;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v64 != v22)
          {
            objc_enumerationMutation(v20);
          }

          sub_100782C70(a1, *(*(&v63 + 1) + 8 * j));
        }

        v21 = [v20 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v21);
    }

    [v20 removeAllObjects];
    v24 = sub_10009A544(*(a1 + 256), v58);
    if (v24)
    {
      sub_100420224(*(a1 + 256), v24);
      sub_1000D3BB8(v24);
      operator delete();
    }
  }

  *uu = 0;
  v74 = 0;
  sub_10004A438(a1, v58, uu);
  if (!uuid_is_null(uu) || (sub_10004AEAC(a1, v58, __p), uuid_copy(uu, __p), !uuid_is_null(uu)))
  {
    uuid_copy(dst, uu);
    goto LABEL_66;
  }

  v25 = *(a1 + 192);
  if (v25)
  {
    v26 = a1 + 192;
    do
    {
      v27 = *(v25 + 32);
      v28 = v27 >= v58;
      v29 = v27 < v58;
      if (v28)
      {
        v26 = v25;
      }

      v25 = *(v25 + 8 * v29);
    }

    while (v25);
    if (v26 != a1 + 192 && *(v26 + 32) <= v58)
    {
      if (!v59)
      {
        sub_10004ADAC(a1, (v26 + 40));
      }

      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v46 = sub_100063D0C();
        sub_1000D67B4((v26 + 40), __p);
        sub_1008730A0();
      }

      goto LABEL_80;
    }
  }

  if (!v56 || (*(a1 + 172) & 1) != 0)
  {
    goto LABEL_51;
  }

  v30 = sub_10000C798();
  v31 = (*(*v30 + 472))(v30);
  v32 = qword_100BCE900;
  v33 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
  if (!v31)
  {
    if (v33)
    {
      v45 = sub_100063D0C();
      *__p = 138543362;
      *&__p[4] = v45;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Ignoring non-paired device address %{public}@ as the protected cache has not been loaded", __p, 0xCu);
    }

LABEL_80:
    uuid_clear(dst);
    goto LABEL_66;
  }

  if (v33)
  {
    v34 = sub_100063D0C();
    *__p = 138543362;
    *&__p[4] = v34;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Warning: Diagnostics mode detected, ignoring non-paired device cached, creating a new identifier for device address %{public}@ as the protected cache has not been loaded", __p, 0xCu);
  }

LABEL_51:
  v35 = sub_10009A544(*(a1 + 256), v58);
  v36 = v35;
  if (!v35)
  {
    v41 = objc_autoreleasePoolPush();
    if ((v56 & 0x100000000) != 0)
    {
      memset(out, 0, sizeof(out));
      uuid_clear(out);
      if (!v59)
      {
        do
        {
          v47 = objc_autoreleasePoolPush();
          *(v62 + 3) = 0;
          v62[0] = 0;
          v48 = sub_10009A66C(v58);
          v62[0] = v48;
          BYTE2(v62[1]) = BYTE6(v48);
          LOWORD(v62[1]) = WORD2(v48);
          if (uuid_is_null(out))
          {
            v49 = 7;
          }

          else
          {
            v49 = 0;
          }

          sub_10009A698(out, v62, v49);
          v50 = sub_10004DF60(out);
          v51 = [*(a1 + 176) objectForKey:v50];
          v52 = v51 | sub_10009A778(*(a1 + 256), v50);
          v53 = v52 != 0;
          if (v52)
          {
            v54 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
            {
              sub_1000D67B4(out, __p);
              v55 = __p;
              if (v79 < 0)
              {
                v55 = *__p;
              }

              *buf = 136446210;
              v81 = v55;
              _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "UUID generation collision - UUID %{public}s already exists!", buf, 0xCu);
              if (v79 < 0)
              {
                operator delete(*__p);
              }
            }
          }

          objc_autoreleasePoolPop(v47);
        }

        while (v53);
LABEL_72:
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
        {
          v44 = sub_100063D0C();
          sub_1000D67B4(out, __p);
          sub_1008731E4();
        }

        operator new();
      }

      sub_10004DFB4(__p, v59);
      uuid_copy(out, __p);
      v42 = sub_10004DF60(out);
      v43 = [*(a1 + 176) objectForKey:v42];
      if (!(v43 | sub_10009A778(*(a1 + 256), v42)))
      {

        goto LABEL_72;
      }

      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(out, __p);
        sub_100873188();
      }

      uuid_clear(dst);
    }

    else
    {
      uuid_clear(dst);
    }

    objc_autoreleasePoolPop(v41);
    goto LABEL_66;
  }

  v37 = [*v35 copy];
  v38 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v39 = sub_100063D0C();
    *__p = 138543618;
    *&__p[4] = v39;
    v77 = 2114;
    v78 = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Address %{public}@ is already associated with device %{public}@", __p, 0x16u);
  }

  if (!v59)
  {
    if ([*(a1 + 176) objectForKey:v37] && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      sub_100063D0C();
      objc_claimAutoreleasedReturnValue();
      sub_100873140();
    }

    sub_100099554(a1, v36);
  }

  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_100063D0C();
    objc_claimAutoreleasedReturnValue();
    sub_1008730F8();
  }

  uuid_clear(dst);

LABEL_66:
  sub_1000088CC(v71);
}

void sub_10004A2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_1000088CC(&a37);

  _Unwind_Resume(a1);
}

uint64_t sub_10004A438@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 96);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 288);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        sub_1000AFD60(a1, v10, 0, &v14);
        if (v15)
        {
          v11 = v15;
          do
          {
            v12 = v11[4];
            if (v12 <= a2)
            {
              if (v12 >= a2)
              {
                sub_10000CEDC(&v14, v15);
                sub_10004DFB4(a3, v10);

                return sub_1000088CC(v20);
              }

              ++v11;
            }

            v11 = *v11;
          }

          while (v11);
        }

        sub_10000CEDC(&v14, v15);
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  uuid_clear(a3);
  return sub_1000088CC(v20);
}

void sub_10004A5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A5F0(uint64_t a1)
{
  *a1 = &off_100B0A938;
  sub_100046348(a1 + 496, *(a1 + 504));

  *(a1 + 448) = &off_100AE0A78;
  v2 = *(a1 + 456);
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_10004B61C(a1 + 416, *(a1 + 424));

  *(a1 + 288) = &off_100AE0A78;
  v3 = *(a1 + 296);
  if (v3)
  {
    sub_10000C808(v3);
  }

  *(a1 + 272) = &off_100AE0A78;
  v4 = *(a1 + 280);
  if (v4)
  {
    sub_10000C808(v4);
  }

  *(a1 + 224) = &off_100AE0A78;
  v5 = *(a1 + 232);
  if (v5)
  {
    sub_10000C808(v5);
  }

  *(a1 + 152) = &off_100AE0A78;
  v6 = *(a1 + 160);
  if (v6)
  {
    sub_10000C808(v6);
  }

  *(a1 + 136) = &off_100AE0A78;
  v7 = *(a1 + 144);
  if (v7)
  {
    sub_10000C808(v7);
  }

  sub_10004CE24(a1 + 112, *(a1 + 120));
  v8 = *(a1 + 88);
  if (v8)
  {
    *(a1 + 96) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    *(a1 + 72) = v9;
    operator delete(v9);
  }

  *(a1 + 48) = &off_100AE0A78;
  v10 = *(a1 + 56);
  if (v10)
  {
    sub_10000C808(v10);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

const unsigned __int8 *sub_10004A7D0(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *uu1)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((uuid_compare(uu1, v4 + 32) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((uuid_compare(v7 + 32, uu1) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

int8x16_t sub_10004A858(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 12) |= *(v4 + 12);
  *(a1 + 13) |= *(v4 + 13);
  v5 = *(v4 + 39);
  if (v5 < 0)
  {
    if (!*(v4 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (!*(v4 + 39))
  {
    goto LABEL_12;
  }

  if (*(v4 + 472) >= *(a1 + 472))
  {
    if ((v5 & 0x80000000) != 0)
    {
      sub_100008904(&__str, *(v4 + 16), *(v4 + 24));
    }

    else
    {
      __str = *(v4 + 16);
    }

    std::string::operator=((a1 + 16), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v4 = *(a2 + 8);
    *(a1 + 472) = *(v4 + 472);
  }

LABEL_12:
  *(a1 + 40) = *(v4 + 40);
  if (*(v4 + 42) == 1)
  {
    v6 = *(v4 + 43);
    *(a1 + 42) = 1;
    *(a1 + 43) = v6;
  }

  if (sub_10000C5E0(v4 + 48))
  {
    v7 = sub_10000C5E0(a1 + 48);
    v8 = sub_10000C5E0(*(a2 + 8) + 48);
    v9 = v8 + v7;
    __chkstk_darwin(v8, v10);
    v12 = &v35 - v11;
    bzero(&v35 - v11, v9);
    v13 = sub_10004B788(a1 + 48, v12, v9);
    if (sub_10000C5E0(a1 + 48) < 3 || sub_10000C5E0(*(a2 + 8) + 48) < 3)
    {
      v15 = 0;
    }

    else
    {
      v14 = sub_10000C5F8(a1 + 48);
      v15 = 2 * (*v14 == *sub_10000C5F8(*(a2 + 8) + 48));
    }

    v16 = *(a2 + 8);
    v17 = sub_10000C5E0(v16 + 48);
    v18 = sub_10004B8FC(v16 + 48, &v12[v13], v15, v17 - v15);
    sub_10000C704(&v35, v12, v18 + v13);
    sub_10000AE20(a1 + 48, &v35);
    v35 = &off_100AE0A78;
    if (v36)
    {
      sub_10000C808(v36);
    }
  }

  if (sub_10000C5E0(*(a2 + 8) + 224))
  {
    v19 = sub_10000C5E0(*(a2 + 8) + 224);
    v21 = &v35 - ((__chkstk_darwin(v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v21, v19);
    v22 = sub_10004B788(*(a2 + 8) + 224, v21, v19);
    sub_10000C704(&v35, v21, v22);
    sub_10000AE20(a1 + 224, &v35);
    v35 = &off_100AE0A78;
    if (v36)
    {
      sub_10000C808(v36);
    }
  }

  if (sub_10000C5E0(*(a2 + 8) + 448))
  {
    v23 = sub_10000C5F8(*(a2 + 8) + 448);
    v24 = sub_10000C5E0(*(a2 + 8) + 448);
    sub_10000C704(&v35, v23, v24);
    sub_10000AE20(a1 + 448, &v35);
    v35 = &off_100AE0A78;
    if (v36)
    {
      sub_10000C808(v36);
    }
  }

  v25 = *(a2 + 8);
  for (i = *(v25 + 64); i != *(v25 + 72); i = (i + 20))
  {
    sub_10000CDB8((a1 + 64), i);
    v25 = *(a2 + 8);
  }

  for (j = *(v25 + 88); j != *(v25 + 96); j = (j + 20))
  {
    sub_10000CDB8((a1 + 88), j);
    v25 = *(a2 + 8);
  }

  v28 = *(v25 + 112);
  if (v28 != (v25 + 120))
  {
    do
    {
      v35 = (v28 + 4);
      v29 = sub_100099408(a1 + 112, v28 + 32);
      sub_10000AE20(v29 + 56, (v28 + 7));
      v30 = v28[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v28[2];
          v32 = *v31 == v28;
          v28 = v31;
        }

        while (!v32);
      }

      v25 = *(a2 + 8);
      v28 = v31;
    }

    while (v31 != (v25 + 120));
  }

  *(a1 + 305) |= *(v25 + 305);
  *(a1 + 304) |= *(v25 + 304);
  *(a1 + 370) |= *(v25 + 370);
  *(a1 + 376) = *(v25 + 376);
  *(a1 + 384) = *(v25 + 384);
  *(a1 + 392) = *(v25 + 392);
  v33 = *(a2 + 8);
  *(a1 + 396) = *(v33 + 396);
  *(a1 + 312) = *(v33 + 312);
  *(a1 + 316) = *(v33 + 316);
  result = vorrq_s8(*(a1 + 184), *(v33 + 184));
  *(a1 + 168) = vorrq_s8(*(a1 + 168), *(v33 + 168));
  *(a1 + 184) = result;
  return result;
}

void sub_10004AD50(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_10004ADAC(void *a1, unsigned __int8 *uu2)
{
  v4 = (a1 + 26);
  for (i = a1[27]; ; i = *(i + 1))
  {
    if (i == v4)
    {
      goto LABEL_7;
    }

    if (!uuid_compare(i + 16, uu2))
    {
      break;
    }
  }

  if (i == v4)
  {
LABEL_7:
    v8 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873BC4(uu2, v8, &v9);
      v8 = v9;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100873C74();
    }
  }

  else
  {
    v7 = *i;
    v6 = *(i + 1);
    *(v7 + 8) = v6;
    *v6 = v7;
    --a1[28];
    operator delete(i);
  }

  sub_10004B168();
}

uint64_t sub_10004AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 288);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(a1 + 176) objectForKey:{v10, v15}];
        if (sub_1000AF748(v11) && *(v11 + 164) == 1)
        {
          v12 = v11[7];
          if (v12 == a2 && v12 != 0)
          {
            sub_10004DFB4(a3, v10);

            return sub_1000088CC(v19);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  uuid_clear(a3);
  return sub_1000088CC(v19);
}

void sub_10004B018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10004B050(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(a1 + 168) + 1;
    *(a1 + 168) = v5;
    *(v4 + 132) = v5;
  }

  sub_1000088CC(v6);
}

void sub_10004B0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B0DC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 97) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10004B148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10004B1D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  if (!v3 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_100872EE0();
  }

  if ([*(a1 + 176) objectForKey:v3])
  {
    sub_10004DFB4(buf, v3);
    sub_10004ADAC(a1, buf);
  }

  sub_10000801C(v8);
  v4 = sub_10009A778(*(a1 + 256), v3);
  if (v4)
  {
    v5 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      v6 = sub_100063D0C();
      *buf = 138543618;
      v10 = v3;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Device %{public}@ was on disk with address %{public}@", buf, 0x16u);
    }

    sub_100007FB8(v8);
    sub_100099554(a1, v4);
  }

  sub_1000088CC(v8);

  return 0;
}

void sub_10004B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B390(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 96) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10004B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B41C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 609) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10004B488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B4A8(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 400) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10004B514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10004B534(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    sub_10004B5C4(v6, a3);
  }

  sub_1000088CC(v7);
}

char *sub_10004B5C4(uint64_t a1, char a2)
{
  v5 = a2;
  result = sub_10004D7E0((a1 + 584), *(a1 + 584), &v5);
  v4 = *(a1 + 592);
  if ((v4 - *(a1 + 584)) >= 6)
  {
    *(a1 + 592) = v4 - 1;
  }

  return result;
}

void sub_10004B61C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10004B61C(a1, *a2);
    sub_10004B61C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10004B680(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_10004B788(uint64_t a1, void *__dst, size_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(v4 + 16);
    if (v6 > a3)
    {
      v10 = sub_10000E92C();
      sub_100693F88(v10, 1);
      _os_log_pack_size();
      __chkstk_darwin();
      __error();
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "dstSize >= getSize()";
      os_log_create("com.apple.bluetooth", "CBCrash");
      qword_100B55118 = os_log_pack_send_and_compose();
      v12 = abort_with_payload();
      return sub_10004B8FC(v12, v13, v14, v15);
    }

    v7 = (v4 + 24);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  memcpy(__dst, v7, v6);
  v8 = *(a1 + 8);
  if (v8)
  {
    return *(v8 + 16);
  }

  else
  {
    return 0;
  }
}

size_t sub_10004B8FC(uint64_t a1, void *__dst, uint64_t a3, size_t __n)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  if (__n + a3 > v6)
  {
    v9 = sub_10000E92C();
    sub_100693F88(v9, 1);
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "(offset + length) <= getSize()";
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  if (v5)
  {
    v7 = v5 + 24;
  }

  else
  {
    v7 = 0;
  }

  memcpy(__dst, (v7 + a3), __n);
  return __n;
}

uint64_t sub_10004BA6C(uint64_t a1)
{
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  sub_100007AD0(&v37);
  if ((*(a1 + 39) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 39))
  {
LABEL_5:
    v2 = sub_100007774(&v38);
    v3 = sub_100007774(v2);
    sub_100007774(v3);
  }

LABEL_6:
  sub_100007774(&v38);
  v4 = std::ostream::operator<<();
  sub_100007774(v4);
  if ((*(a1 + 217) & 1) == 0)
  {
    sub_100007774(&v38);
  }

  sub_100007774(&v38);
  if (*(a1 + 42) == 1)
  {
    sub_100007774(&v38);
    v5 = std::ostream::operator<<();
    sub_100007774(v5);
  }

  if (*(a1 + 72) != *(a1 + 64))
  {
    sub_100007774(&v38);
    v6 = *(a1 + 64);
    if (*(a1 + 72) != v6)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        sub_10003B85C(v6 + 20 * v7, &v54);
        v9 = sub_100007774(&v38);
        sub_100007774(v9);
        if (v56 < 0)
        {
          operator delete(v54);
        }

        v7 = v8;
        v6 = *(a1 + 64);
        v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 72) - v6) >> 2) > v8++;
      }

      while (v10);
    }

    __p = 0;
    v35 = 0;
    std::ostream::sentry::sentry();
    v11 = &v38 + *(v38 - 24);
    if ((v11[32] & 5) == 0)
    {
      (*(**(v11 + 5) + 32))(&v54);
      if (v57 == -1)
      {
        std::ios_base::clear((&v38 + *(v38 - 24)), *(v40 + *(v38 - 24)) | 4);
      }
    }

    std::ostream::sentry::~sentry();
    sub_100007774(&v38);
  }

  if (*(a1 + 128))
  {
    sub_100007774(&v38);
    v12 = *(a1 + 112);
    if (v12 != (a1 + 120))
    {
      do
      {
        v54 = xmmword_1008A4DDC;
        v55 = 0;
        if (!sub_10004E15C(v12 + 32, &v54))
        {
          sub_10003B85C((v12 + 32), &v54);
          v13 = sub_100007774(&v38);
          v14 = sub_100007774(v13);
          sub_10000C250((v12 + 56), &__p);
          v15 = sub_100007774(v14);
          sub_100007774(v15);
          if (v36 < 0)
          {
            operator delete(__p);
          }

          if (v56 < 0)
          {
            operator delete(v54);
          }
        }

        v16 = *(v12 + 1);
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = *(v12 + 2);
            v18 = *v17 == v12;
            v12 = v17;
          }

          while (!v18);
        }

        v12 = v17;
      }

      while (v17 != (a1 + 120));
    }

    __p = 0;
    v35 = 0;
    std::ostream::sentry::sentry();
    v19 = &v38 + *(v38 - 24);
    if ((v19[32] & 5) == 0)
    {
      (*(**(v19 + 5) + 32))(&v54);
      if (v57 == -1)
      {
        std::ios_base::clear((&v38 + *(v38 - 24)), *(v40 + *(v38 - 24)) | 4);
      }
    }

    std::ostream::sentry::~sentry();
    sub_100007774(&v38);
  }

  if (*(a1 + 96) != *(a1 + 88))
  {
    sub_100007774(&v38);
    v20 = *(a1 + 88);
    if (*(a1 + 96) != v20)
    {
      v21 = 0;
      v22 = 1;
      do
      {
        sub_10003B85C(v20 + 20 * v21, &v54);
        v23 = sub_100007774(&v38);
        sub_100007774(v23);
        if (v56 < 0)
        {
          operator delete(v54);
        }

        v21 = v22;
        v20 = *(a1 + 88);
        v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 96) - v20) >> 2) > v22++;
      }

      while (v10);
    }

    __p = 0;
    v35 = 0;
    std::ostream::sentry::sentry();
    v24 = &v38 + *(v38 - 24);
    if ((v24[32] & 5) == 0)
    {
      (*(**(v24 + 5) + 32))(&v54);
      if (v57 == -1)
      {
        std::ios_base::clear((&v38 + *(v38 - 24)), *(v40 + *(v38 - 24)) | 4);
      }
    }

    std::ostream::sentry::~sentry();
    sub_100007774(&v38);
  }

  if (!sub_10000D26C(a1 + 48))
  {
    sub_100007774(&v38);
    sub_10000C250(a1 + 48, &v54);
    v25 = sub_100007774(&v38);
    sub_100007774(v25);
    sub_10004C764();
  }

  if (!sub_10000D26C(a1 + 136))
  {
    sub_100007774(&v38);
    sub_10000C250(a1 + 136, &v54);
    sub_100007774(&v38);
    if (v56 < 0)
    {
      operator delete(v54);
    }

    sub_100007774(&v38);
  }

  if (!sub_10000D26C(a1 + 152))
  {
    sub_100007774(&v38);
    sub_10000C250(a1 + 152, &v54);
    sub_100007774(&v38);
    if (v56 < 0)
    {
      operator delete(v54);
    }

    sub_100007774(&v38);
  }

  if (!sub_10000D26C(a1 + 224))
  {
    sub_100007774(&v38);
    sub_10000C250(a1 + 224, &v54);
    sub_100007774(&v38);
    if (v56 < 0)
    {
      operator delete(v54);
    }

    sub_100007774(&v38);
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    sub_100007774(&v38);
  }

  sub_100007774(&v38);
  if (*(a1 + 13) == 1)
  {
    sub_100007774(&v38);
  }

  if (*(a1 + 14) == 1)
  {
    sub_100007774(&v38);
  }

  if (*(a1 + 219))
  {
    sub_100007774(&v38);
    v26 = std::ostream::operator<<();
    sub_100007774(v26);
  }

  if (*(a1 + 220) == 1)
  {
    sub_100007774(&v38);
  }

  v27 = sub_100007774(&v38);
  sub_100007774(v27);
  if (!sub_10000D26C(a1 + 448))
  {
    sub_100007774(&v38);
    sub_10000C250(a1 + 448, &v54);
    sub_100007774(&v38);
    if (v56 < 0)
    {
      operator delete(v54);
    }

    sub_100007774(&v38);
  }

  sub_100007774(&v38);
  v28 = std::ostream::operator<<();
  sub_100007774(v28);
  sub_100007774(&v38);
  v29 = std::ostream::operator<<();
  sub_100007774(v29);
  sub_100007774(&v38);
  v30 = std::ostream::operator<<();
  sub_100007774(v30);
  sub_100007774(&v38);
  v31 = std::ostream::operator<<();
  sub_100007774(v31);
  std::stringbuf::str();
  *&v38 = v32;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  std::locale::~locale(&v39);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10004C694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ostream::sentry::~sentry();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10004C828(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 8) + 56);
  v25 = &off_100AE0A78;
  v26 = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  v7 = sub_10000C5E0(&v25);
  v8 = sub_10000C5F8(&v25);
  if (v7 >= 2)
  {
    v10 = v8;
    if (*v8 == 76 && !*(v8 + 1) && v7 >= 4)
    {
      v11 = v8 + v7;
      v12 = (v8 + 2);
      while (1)
      {
        v13 = v12 + 2;
        v14 = v12[1] & 0x1F;
        if (v11 - (v12 + 2) < v14)
        {
          goto LABEL_53;
        }

        if (*v12 == 7)
        {
          break;
        }

        v12 = &v13[v14];
        if (v11 - &v13[v14] <= 1)
        {
          goto LABEL_53;
        }
      }

      if (v14 < 0x11)
      {
        goto LABEL_53;
      }

      v15 = *v13;
      if (v15 != 8 && v15 != 6)
      {
        goto LABEL_53;
      }

      v40 = 0uLL;
      v17 = *v13;
      if (v17 == 6)
      {
        v8 = sub_1000AF798(a1, a2, &v40);
        if ((v8 & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
          {
            sub_100777574();
            sub_1008764AC();
          }

          goto LABEL_53;
        }
      }

      else if (v17 == 8)
      {
        *&buf[3] = 0;
        *buf = 0;
        v18 = sub_10009A66C(a2);
        *buf = v18;
        buf[6] = BYTE6(v18);
        *&buf[4] = WORD2(v18);
        if (qword_100B508C0 != -1)
        {
          sub_100874964();
        }

        v8 = sub_1007CA58C(off_100B508B8, buf, &v40);
        if ((v8 & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            sub_100876470();
          }

          goto LABEL_53;
        }
      }

      __chkstk_darwin(v8, v9);
      bzero(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      memcpy(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      v19 = v13 - v10 + 1;
      if (v17 == 6)
      {
        if (sub_1002D898C(&v40, &v25 + v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &v25 + v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7 - v19))
        {
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            sub_100777574();
            sub_100876564();
          }

          goto LABEL_53;
        }

        v20 = *(a3 + 8);
        *(v20 + 362) = 1;
        v21 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
        {
          sub_100777574();
          if (v28 >= 0)
          {
            v22 = v27;
          }

          else
          {
            v22 = v27[0];
          }

          *buf = 136447747;
          *&buf[4] = v22;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          v30 = 1040;
          v31 = v7;
          v32 = 2097;
          v33 = v10;
          v34 = 2160;
          v35 = 1752392040;
          v36 = 1040;
          v37 = v7;
          v38 = 2097;
          v39 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Decrypt AccessoryStatus ADV success: %{public}s, %{private, mask.hash}.*P -> %{private, mask.hash}.*P", buf, 0x40u);
          if (v28 < 0)
          {
            operator delete(v27[0]);
          }

          v20 = *(a3 + 8);
        }

        goto LABEL_51;
      }

      if (v17 != 8)
      {
        goto LABEL_53;
      }

      ccaes_ecb_decrypt_mode();
      if (!ccecb_one_shot())
      {
        v20 = *(a3 + 8);
        *(v20 + 362) = 1;
        v23 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_100777574();
          if (v28 >= 0)
          {
            v24 = v27;
          }

          else
          {
            v24 = v27[0];
          }

          *buf = 136447747;
          *&buf[4] = v24;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          v30 = 1040;
          v31 = v7;
          v32 = 2097;
          v33 = v10;
          v34 = 2160;
          v35 = 1752392040;
          v36 = 1040;
          v37 = v7;
          v38 = 2097;
          v39 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Decrypt FindMyAccessory ADV success: %{public}s, %{private, mask.hash}.*P -> %{private, mask.hash}.*P", buf, 0x40u);
          if (v28 < 0)
          {
            operator delete(v27[0]);
          }

          v20 = *(a3 + 8);
        }

LABEL_51:
        sub_10000C704(buf, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        sub_10000AE20(v20 + 48, buf);
        *buf = &off_100AE0A78;
        if (*&buf[8])
        {
          sub_10000C808(*&buf[8]);
        }

        goto LABEL_53;
      }

      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100777574();
        sub_100876508();
      }
    }
  }

LABEL_53:
  v25 = &off_100AE0A78;
  if (v26)
  {
    sub_10000C808(v26);
  }
}

void sub_10004CD98(_Unwind_Exception *exception_object)
{
  *(v2 - 224) = v1;
  v4 = *(v2 - 216);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004CE24(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10004CE24(a1, *a2);
    sub_10004CE24(a1, a2[1]);
    a2[7] = &off_100AE0A78;
    v4 = a2[8];
    if (v4)
    {
      sub_10000C808(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_10004CEA4(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100085830();
  }

  return result;
}

void sub_10004CF48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (sub_10000C5E0(*(a3 + 8) + 48) >= 0x1D)
  {
    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008743BC();
      }

      sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, v18);
      v7 = sub_10004DF60(v18);
      sub_10004D9B0();
      if (v17 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      buf[0] = 138412546;
      *&buf[1] = v7;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "decryptProximityPairingPayload device:%@ address:%s", buf, 0x16u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_10000C5F8(*(a3 + 8) + 48);
    v10 = *v9 == 76 && *(v9 + 2) == 7;
    if (v10 && *(v9 + 4) == 1)
    {
      v18[0] = 0;
      v18[1] = 0;
      if (sub_1000AF798(a1, a2, v18))
      {
        sub_10000C5E0(*(a3 + 8) + 48);
        operator new[]();
      }

      v11 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
      {
        v12 = sub_100063D0C();
        LODWORD(__p[0]) = 138543362;
        *(__p + 4) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No encryption key for the device %{public}@", __p, 0xCu);
      }
    }
  }
}

void sub_10004D77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10004D7E0(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      sub_1000C7698();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v26 = a1;
    if (v13)
    {
      operator new();
    }

    v23 = 0;
    v24 = (__src - v10);
    v25 = (__src - v10);
    sub_10009AA7C(&v23, a3);
    v14 = v24;
    memcpy(v25, v4, a1[1] - v4);
    v15 = *a1;
    v16 = v24;
    *&v25 = v25 + a1[1] - v4;
    a1[1] = v4;
    v17 = &v16[v15 - v4];
    memcpy(v17, v15, v4 - v15);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v25;
    *&v25 = v18;
    *(&v25 + 1) = v19;
    v23 = v18;
    v24 = v18;
    if (v18)
    {
      operator delete(v18);
    }

    return v14;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 1;
    }

    else
    {
      v9 = 0;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
      v9 = a1[1];
    }

    v21 = v4 <= a3 && v9 > a3;
    *v4 = a3[v21];
  }

  return v4;
}

void sub_10004D988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004D9B0()
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_100008760(&v20);
  v0 = sub_100007774(&v20);
  *(v0 + *(*v0 - 24) + 8) |= 0x4000u;
  v19 = 48;
  v1 = sub_10004DE98(v0, &v19);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 24) = 2;
  *(v1 + *(v2 - 24) + 8) = *(v1 + *(v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = std::ostream::operator<<();
  v4 = sub_100007774(v3);
  v5 = *v4;
  *(v4 + *(*v4 - 24) + 24) = 2;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::ostream::operator<<();
  v7 = sub_100007774(v6);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 24) = 2;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = std::ostream::operator<<();
  v10 = sub_100007774(v9);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 24) = 2;
  *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  v12 = std::ostream::operator<<();
  v13 = sub_100007774(v12);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 24) = 2;
  *(v13 + *(v14 - 24) + 8) = *(v13 + *(v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  v15 = std::ostream::operator<<();
  v16 = sub_100007774(v15);
  v17 = *v16;
  *(v16 + *(*v16 - 24) + 24) = 2;
  *(v16 + *(v17 - 24) + 8) = *(v16 + *(v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10004DE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003B8618(va);
  _Unwind_Resume(a1);
}

void *sub_10004DE98(void *a1, unsigned __int8 *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

id sub_10004DF60(const unsigned __int8 *a1)
{
  if (uuid_is_null(a1))
  {
    v2 = 0;
  }

  else
  {
    v2 = [[NSUUID alloc] initWithUUIDBytes:a1];
  }

  return v2;
}

void sub_10004DFB8(uint64_t a1, int64_t value, void *a3, int a4)
{
  v6 = value;
  *keys = *off_100AFF4B0;
  values[0] = xpc_int64_create(value);
  values[1] = a3;
  if (((v6 - 62) > 0x1D || ((1 << (v6 - 62)) & 0x20000081) == 0) && v6 != 208)
  {
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10084A09C(a1, v6, v8);
    }
  }

  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = xpc_dictionary_create(keys, values, v9);
  sub_10000EC68(a1, v10);
  v11 = *(a1 + 16);
  if (v11)
  {
    xpc_connection_send_message(v11, v10);
  }

  else
  {
    v12 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v13 = *v13;
      }

      v14 = 136446210;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Invalid Connection on session %{public}s, ignored.", &v14, 0xCu);
    }
  }

  xpc_release(v10);
  xpc_release(values[0]);
  if (a3)
  {
    if (a4)
    {
      xpc_release(a3);
    }
  }
}

BOOL sub_10004E15C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return memcmp(a1 + 4, a2 + 4, v2) == 0;
  }

  else
  {
    *v8 = 0;
    *v7 = 0;
    if (v2 == 4)
    {
      v8[0] = 16;
      *&v8[4] = xmmword_1008A4A6D;
      *&v8[4] = bswap32(*(a1 + 1));
    }

    else if (v2 == 2)
    {
      v8[0] = 16;
      *&v8[4] = xmmword_1008A4A6D;
      *&v8[6] = bswap32(*(a1 + 2)) >> 16;
    }

    else
    {
      *v8 = *a1;
      *&v8[16] = *(a1 + 4);
    }

    if (v3 == 4)
    {
      v7[0] = 16;
      *&v7[4] = xmmword_1008A4A6D;
      *&v7[4] = bswap32(*(a2 + 1));
    }

    else if (v3 == 2)
    {
      v7[0] = 16;
      *&v7[4] = xmmword_1008A4A6D;
      *&v7[6] = bswap32(*(a2 + 2)) >> 16;
    }

    else
    {
      *v7 = *a2;
      *&v7[16] = *(a2 + 4);
    }

    return *v8 == *v7 && *&v8[8] == *&v7[8] && *&v8[16] == *&v7[16];
  }
}

unsigned __int8 *sub_10004E2F0(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 getUUIDBytes:a1];
  }

  else
  {
    uuid_clear(a1);
  }

  return a1;
}

uint64_t sub_10004E34C(uint64_t a1, unsigned __int8 *uu2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = uuid_compare((v3 + 32), uu2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || uuid_compare(uu2, (v5 + 32)) < 0)
  {
    return v2;
  }

  return v5;
}

unsigned __int8 *sub_10004E3C8(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_10007C3A8(a3, v4 + 28))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10007C3A8(v7 + 28, a3))
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_10004E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 120))
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    if (*(a2 + 24))
    {
      v9 = sub_10000EE80();
      (*(*v9 + 40))(v9, a3, a4, a5);
      return 1;
    }
  }

  return result;
}

void sub_10004E4DC()
{
  __p = 0;
  v1 = 0;
  v2 = 0;
  sub_10004ED7C();
}

void sub_10004E570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000533E0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004E594(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100046CC4();
  }

  return result;
}

uint64_t sub_10004E638(uint64_t a1, _WORD *a2, unint64_t a3, uint64_t *a4, _BYTE *a5)
{
  if (a3 < 3 || *(*(a1 + 8) + 88) == *(*(a1 + 8) + 96) || *a2 != 76)
  {
    return 0;
  }

  else
  {
    return sub_10004E668(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_10004E668(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, _BYTE *a5)
{
  if (a3 >= 3)
  {
    v8 = 2;
    v9 = 2;
    while (1)
    {
      v10 = a2 + v8;
      v11 = *(a2 + v8);
      if (v11 == 1)
      {
        if (v9 + 16 >= a3)
        {
          v29 = qword_100BCE918;
          if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          *v40 = 0;
          v30 = "Invalid length";
LABEL_53:
          v32 = v29;
          v33 = 2;
LABEL_54:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v30, v40, v33);
          break;
        }

        v12 = *(a1 + 8);
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        v13 = (v12 + 8);
        if (v15 != v14)
        {
          *v40 = 0;
          v41 = 0;
          v42[0] = 0;
          sub_10000CB74(v40, v13);
          v17 = *v40;
          v16 = v41;
          if (*v40 == v41)
          {
            v18 = 0;
            if (*v40)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v18 = 0;
            do
            {
              v39 = 0;
              v19 = *v17;
              *&buf[16] = *(v17 + 16);
              *buf = v19;
              sub_100570420(buf, &v39 + 1, &v39);
              if (HIBYTE(v39) <= 0xFuLL && ((*(v10 + 1 + HIBYTE(v39)) >> v39) & 1) != 0)
              {
                v20 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                {
                  sub_10003B85C(v17, __p);
                  v21 = __p;
                  if (v38 < 0)
                  {
                    v21 = __p[0];
                  }

                  *buf = 136446722;
                  *&buf[4] = v21;
                  *&buf[12] = 1024;
                  *&buf[14] = HIBYTE(v39);
                  *&buf[18] = 1024;
                  v44 = v39;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Tentatively matched UUID %{public}s (@ byte: %u, bit: %u)", buf, 0x18u);
                  if (v38 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                sub_10000CDB8(a4, v17);
                v18 = 1;
              }

              v17 += 20;
            }

            while (v17 != v16);
            v17 = *v40;
            if (*v40)
            {
LABEL_18:
              v41 = v17;
              operator delete(v17);
            }
          }

          v9 += 17;
          goto LABEL_42;
        }

        v18 = 0;
        v25 = 0;
        LODWORD(v22) = v9 + 1;
        v23 = 16;
      }

      else
      {
        v22 = v9 + 1;
        if (v22 >= a3)
        {
          v29 = qword_100BCE918;
          if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          *v40 = 0;
          v30 = "Invalid length, not enough room for the len field.";
          goto LABEL_53;
        }

        v23 = *(a2 + v22) & 0x1F;
        if (v23 == 31)
        {
          v24 = v9 + 2;
          if (v24 >= a3)
          {
            v29 = qword_100BCE918;
            if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
            {
              break;
            }

            *v40 = 0;
            v30 = "Not enough data for the extended data byte. Ignoring.";
            goto LABEL_53;
          }

          v23 = *(a2 + v24) + 31;
          v25 = 2;
        }

        else
        {
          v25 = 1;
        }

        if (v23 + v9 + v25 > a3)
        {
          v31 = qword_100BCE918;
          if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          *v40 = 67109888;
          *&v40[4] = v9;
          LOWORD(v41) = 1024;
          *(&v41 + 2) = v23;
          HIWORD(v41) = 1024;
          LODWORD(v42[0]) = v25;
          WORD2(v42[0]) = 2048;
          *(v42 + 6) = a3;
          v30 = "Ignoring packet since byte offset of %d + payload length of %d + length size of %d doesnt fit in dataLength %zu";
          v32 = v31;
          v33 = 30;
          goto LABEL_54;
        }

        v26 = sub_10000D124((*(a1 + 8) + 248), 0, 0x100uLL);
        v27 = *(a1 + 8);
        if (v26 && ((*(v27 + ((v11 >> 3) & 0x18) + 248) >> v11) & 1) != 0)
        {
          v28 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            *v40 = 67109120;
            *&v40[4] = v11;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Show dup for given rule with puck type 0x%x", v40, 8u);
            v27 = *(a1 + 8);
          }

          *a5 = 1;
        }

        if (v11 != 2)
        {
          goto LABEL_38;
        }

        if (![*(v27 + 112) count])
        {
          v27 = *(a1 + 8);
LABEL_38:
          if (*(v27 + 88) != *(v27 + 96) && ((*(v27 + ((v11 >> 3) & 0x18) + 280) >> v11) & 1) != 0)
          {
            sub_10004ED20(v27, v11);
            v18 = 1;
            return v18 & 1;
          }

          v18 = 0;
          goto LABEL_41;
        }

        v18 = 1;
      }

LABEL_41:
      v9 = v22 + v25 + v23;
LABEL_42:
      v8 = v9;
      if (v9 >= a3 || (v18 & 1) != 0)
      {
        return v18 & 1;
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10004EB40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100008904(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v13 = *(a3 + 16);
    }

    v6 = v6 + 184 != sub_1000463C8(v6 + 176, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000801C(v14);
  v8 = sub_10005063C(v7, v5);
  if (v8)
  {
    v11 = 0;
    v9 = sub_1000BE4B4();
    if ((*(*v9 + 784))(v9, v8, a3, &v11))
    {
      v6 = v6;
    }

    else
    {
      v6 = (v11 | v6) != 0;
    }
  }

  sub_1000088CC(v14);

  return v6;
}

void sub_10004EC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a18);

  _Unwind_Resume(a1);
}

BOOL sub_10004ECB4(uint64_t a1)
{
  sub_1000534F0(*(a1 + 8), &v4);
  if (v5 == v4)
  {
    v2 = *(*(a1 + 8) + 64) != *(*(a1 + 8) + 56);
    if (!v4)
    {
      return v2;
    }

    goto LABEL_3;
  }

  v2 = 1;
  if (v4)
  {
LABEL_3:
    v5 = v4;
    operator delete(v4);
  }

  return v2;
}

void sub_10004ED20(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  for (i = *(a1 + 96); v2 != i; v2 += 96)
  {
    if (*(v2 + 8) == a2)
    {
      objc_storeStrong((a1 + 184), *v2);
    }
  }
}

void sub_10004EDFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000533E0(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10004EE18(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100053674(a1, *a2, (a2 + 8));
  return a1;
}

BOOL sub_10004EE74(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 48);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 440, uu2);
  v5 = v4;
  if (a1 + 448 == v4)
  {
    v6 = 0;
  }

  else
  {
    sub_1000AFFEC(*(v4 + 56), 0, uu2);
    if (sub_10000D26C(uu2))
    {
      sub_1000AFFEC(*(v5 + 56), 3, &v16);
      if (sub_10000D26C(&v16))
      {
        sub_1000AFFEC(*(v5 + 56), 4, &v14);
        if (sub_10000D26C(&v14))
        {
          sub_1000AFFEC(*(v5 + 56), 5, &v12);
          if (sub_10000D26C(&v12))
          {
            sub_1000AFFEC(*(v5 + 56), 8, &v10);
            if (sub_10000D26C(&v10))
            {
              sub_1000AFFEC(*(v5 + 56), 9, &v8);
              v6 = !sub_10000D26C(&v8);
              v8 = &off_100AE0A78;
              if (v9)
              {
                sub_10000C808(v9);
              }
            }

            else
            {
              v6 = 1;
            }

            v10 = &off_100AE0A78;
            if (v11)
            {
              sub_10000C808(v11);
            }
          }

          else
          {
            v6 = 1;
          }

          v12 = &off_100AE0A78;
          if (v13)
          {
            sub_10000C808(v13);
          }
        }

        else
        {
          v6 = 1;
        }

        v14 = &off_100AE0A78;
        if (v15)
        {
          sub_10000C808(v15);
        }
      }

      else
      {
        v6 = 1;
      }

      v16 = &off_100AE0A78;
      if (v17)
      {
        sub_10000C808(v17);
      }
    }

    else
    {
      v6 = 1;
    }

    *uu2 = &off_100AE0A78;
    if (v20)
    {
      sub_10000C808(v20);
    }
  }

  sub_1000088CC(v18);

  return v6;
}

void sub_10004F100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, atomic_uint *a13, uint64_t a14, atomic_uint *a15, uint64_t a16, atomic_uint *a17, uint64_t a18, atomic_uint *a19)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  if (a13)
  {
    sub_10000C808(a13);
  }

  if (a15)
  {
    sub_10000C808(a15);
  }

  if (a17)
  {
    sub_10000C808(a17);
  }

  if (a19)
  {
    sub_10000C808(a19);
  }

  *(v20 - 56) = &off_100AE0A78;
  v22 = *(v20 - 48);
  if (v22)
  {
    sub_10000C808(v22);
  }

  sub_1000088CC(v20 - 72);

  _Unwind_Resume(a1);
}

void sub_10004F274(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t a6, void *a7)
{
  v11 = a2;
  v12 = a7;
  v13 = *(a1 + 120);
  if (v13)
  {
    v14 = *(v13 - 16);
    LOBYTE(v50) = v13[27];
    BYTE4(v50) = v13[26];
    v15 = v13[29];
    v16 = v13[30];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (*(*(a3 + 8) + 304))
    {
LABEL_26:
      if (v13)
      {
        v28 = v13[24];
        v29 = *(v13 - 16);
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      v33 = sub_10005201C(v11, v28 & 1, v29);
      if (v14 == 2)
      {
        v34 = 1;
      }

      else
      {
        v35 = HIWORD(*(a1 + 360));
        v36 = v35 == 1 || v35 == 10;
        v34 = v36;
      }

      v37 = sub_100050F1C(v11, *(a1 + 88), a3, a4, a6, v34, BYTE4(v50) & 1, v50 & 1, v15 & 1, v16 & 1, v14 > 0);
      xpc_dictionary_set_value(v33, "kCBMsgArgAdvertisementData", v37);
      xpc_release(v37);
      v39 = *(a3 + 8);
      v38 = a3 + 8;
      xpc_dictionary_set_int64(v33, "kCBMsgArgRssi", *(v39 + 216));
      xpc_dictionary_set_int64(v33, "kCBMsgArgAdvertisingMoreAvailable", a5);
      v40 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
      {
        sub_10083B7E4(a5, v38, v40);
      }

      xpc_dictionary_set_int64(v33, "kCBMsgArgAdvertisingIsFromADVBuff", *(*v38 + 304));
      if (v14 >= 1)
      {
        v41 = v12;
        xpc_dictionary_set_string(v33, "kCBScanOptionFilterIdentifierString", [v12 UTF8String]);
      }

      v42 = sub_100050F18(v33);
      sub_100052C08(a1, 91, v42);

      xpc_release(v33);
      goto LABEL_50;
    }

    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083B7A8();
    }

    goto LABEL_50;
  }

  v15 = 0;
  v50 = 0;
  v14 = 0;
  v16 = 0;
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  if (sub_10004FF0C(off_100B508C8, v11, *(a1 + 88), *(a1 + 104)))
  {
    if (sub_100050B20(a1, v11))
    {
      if (sub_100050A7C(a1, (*(a3 + 8) + 64)))
      {
        if (sub_100050A7C(a1, a4))
        {
          v49 = a5;
          v17 = *(a3 + 8);
          memset(buf, 0, sizeof(buf));
          v18 = *(v17 + 112);
          v19 = (v17 + 120);
          if (v18 != (v17 + 120))
          {
            do
            {
              sub_10000CDB8(buf, v18 + 2);
              v20 = *(v18 + 1);
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
                  v21 = *(v18 + 2);
                  v36 = *v21 == v18;
                  v18 = v21;
                }

                while (!v36);
              }

              v18 = v21;
            }

            while (v21 != v19);
          }

          if (sub_100050A7C(a1, buf))
          {
            v22 = sub_10000AE6C(*(a3 + 8));
            v23 = sub_100050900(a1, v22);
            v24 = *(a3 + 8);
            if (v23)
            {
              goto LABEL_18;
            }

            v43 = qword_100BCE988;
            if ((*(v24 + 168) & 4) != 0)
            {
              v44 = *(a3 + 8);
              v45 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
              v24 = v44;
              if (v45)
              {
                *__dst = 138412290;
                *&__dst[4] = v11;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Session can access device %@ with iBeacon", __dst, 0xCu);
                v24 = *(a3 + 8);
              }

LABEL_18:
              v26 = *(v24 + 64);
              v25 = *(v24 + 72);
              if (v26 == v25)
              {
                v27 = v24;
              }

              else
              {
                v48 = v24;
                while (1)
                {
                  *__dst = xmmword_1008A4D00;
                  LODWORD(v56) = 0;
                  if (sub_10004E15C(v26, __dst))
                  {
                    break;
                  }

                  v26 += 20;
                  if (v26 == v25)
                  {
                    v26 = v25;
                    break;
                  }
                }

                v27 = *(a3 + 8);
                v24 = v48;
              }

              a5 = v49;
              if (*(v27 + 12) != 1 || v26 == *(v24 + 72))
              {
                goto LABEL_78;
              }

              if (*(v27 + 39) < 0)
              {
                sub_100008904(__dst, *(v27 + 16), *(v27 + 24));
              }

              else
              {
                *__dst = *(v27 + 16);
                v56 = *(v27 + 32);
              }

              if (sub_1004FA924(__dst, "Powerbeats HR"))
              {
                v46 = 1;
              }

              else
              {
                v47 = *(a3 + 8);
                if (*(v47 + 39) < 0)
                {
                  sub_100008904(__p, *(v47 + 16), *(v47 + 24));
                }

                else
                {
                  *__p = *(v47 + 16);
                  v54 = *(v47 + 32);
                }

                v46 = sub_1004FA924(__p, "Generic Tracker");
                if (SHIBYTE(v54) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (SHIBYTE(v56) < 0)
              {
                operator delete(*__dst);
              }

              if (!v46)
              {
LABEL_78:
                if (*buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }

                goto LABEL_26;
              }

              goto LABEL_55;
            }

            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
            {
              sub_10083B738();
            }
          }

          else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10083B6C8();
          }

LABEL_55:
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          goto LABEL_50;
        }

        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_10083B658();
        }
      }

      else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B5E8();
      }
    }

    else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083B578();
    }
  }

  else
  {
    v30 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 88);
      v32 = *(a1 + 104);
      *buf = 138412802;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = v32;
      *&buf[22] = 2112;
      v58 = v11;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }
  }

LABEL_50:
}

void sub_10004F8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_10004F94C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, void *a8)
{
  v15 = a3;
  v16 = a8;
  v19 = *(a1 + 232);
  v18 = a1 + 232;
  v17 = v19;
  if (v19)
  {
    v20 = v18;
    do
    {
      v21 = *(v17 + 32);
      v22 = v21 >= a2;
      v23 = v21 < a2;
      if (v22)
      {
        v20 = v17;
      }

      v17 = *(v17 + 8 * v23);
    }

    while (v17);
    if (v20 != v18 && *(v20 + 32) <= a2 && !(*(**(v20 + 40) + 16))(*(v20 + 40)))
    {
      v24 = *(v20 + 40);
      ++*(v24 + 344);
      v44 = v24;
      if (*(v24 + 187) == 1)
      {
        if (qword_100B508C0 != -1)
        {
          sub_1008236A8();
        }

        sub_1007C4490(off_100B508B8, 60);
        if (qword_100B508D0 != -1)
        {
          sub_1008236BC();
        }

        v25 = off_100B508C8;
        sub_100007E30(__p, "PrivateModeDevice");
        sub_10078787C(v25, v15, __p);
        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v43 = a7;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      sub_10000CB74(&v49, (*(a4 + 8) + 64));
      v26 = v49;
      v27 = v50;
      if (v49 != v50)
      {
        while (1)
        {
          buf = xmmword_1008A4E18;
          LODWORD(v57) = 0;
          if (sub_10004E15C(v26, &buf))
          {
            break;
          }

          v26 += 20;
          if (v26 == v27)
          {
            v26 = v27;
            break;
          }
        }

        v27 = v50;
      }

      v28 = v43;
      if (v26 != v27)
      {
        v29 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Set TAG as CarPlay", &buf, 2u);
        }

        if (qword_100B508D0 != -1)
        {
          sub_100823A10();
        }

        v30 = off_100B508C8;
        sub_100007E30(v47, "_CARPLAY_DEVICE_");
        sub_10078787C(v30, v15, v47);
        if (v48 < 0)
        {
          operator delete(v47[0]);
        }
      }

      v31 = sub_10000E92C();
      v32 = (*(*v31 + 912))(v31);
      if (v32)
      {
        buf = 0uLL;
        v57 = 0;
        sub_10000CB74(&buf, (*(a4 + 8) + 64));
        v42 = *(a4 + 8);
        v34 = *(&buf + 1);
        v33 = buf;
        if (buf != *(&buf + 1))
        {
          while (1)
          {
            v58 = xmmword_1008A4C9C;
            v59 = 0;
            if (sub_10004E15C(v33, &v58))
            {
              break;
            }

            v33 += 20;
            if (v33 == v34)
            {
              v33 = v34;
              break;
            }
          }

          v34 = *(&buf + 1);
        }

        v28 = v43;
        if (v33 != v34)
        {
          goto LABEL_45;
        }

        v58 = xmmword_1008A4C9C;
        v59 = 0;
        sub_10000D03C(&v55, &v58);
        v35 = sub_100058794(v42 + 112, &v55);
        if (v42 + 120 != v35)
        {
          goto LABEL_45;
        }

        v36 = *(&buf + 1);
        v37 = buf;
        if (buf != *(&buf + 1))
        {
          v41 = v35;
          while (1)
          {
            v58 = xmmword_1008A4CD8;
            v59 = 0;
            if (sub_10004E15C(v37, &v58))
            {
              break;
            }

            v37 += 20;
            if (v37 == v36)
            {
              v37 = v36;
              break;
            }
          }

          v36 = *(&buf + 1);
          v35 = v41;
        }

        v28 = v43;
        if (v37 != v36 || (v38 = v35, v58 = xmmword_1008A4CD8, v59 = 0, sub_10000D03C(&v54, &v58), v38 != sub_100058794(v42 + 112, &v54)))
        {
LABEL_45:
          v39 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v58) = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Set TAG as LEAudio device", &v58, 2u);
          }

          if (qword_100B508D0 != -1)
          {
            sub_100823A10();
          }

          v40 = off_100B508C8;
          sub_100007E30(v45, "_LEAUDIO_DEVICE_");
          sub_10078787C(v40, v15, v45);
          if (v46 < 0)
          {
            operator delete(v45[0]);
          }
        }

        v32 = buf;
        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }
      }

      sub_10004E450(v32, v44, a2, 10, 0);
      sub_10004F274(v44, v15, a4, a5, a6, v28, v16);
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }
    }
  }
}

void sub_10004FE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  v38 = *(v36 - 160);
  if (v38)
  {
    *(v36 - 152) = v38;
    operator delete(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10004FF0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 96);
  v10 = sub_10004B1D8(a1, v7);
  if (v10)
  {
    v11 = sub_100050710(v10, v8, v9);
  }

  else
  {
    sub_10000801C(v13);
    v11 = 1;
  }

  sub_1000088CC(v13);

  return v11;
}

void sub_10004FFDC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    if (*(v6 + 127) < 0)
    {
      sub_100008904(a3, *(v6 + 104), *(v6 + 112));
    }

    else
    {
      v7 = *(v6 + 104);
      *(a3 + 16) = *(v6 + 120);
      *a3 = v7;
    }
  }

  else
  {
    sub_100007E30(a3, "");
  }

  sub_1000088CC(v8);
}

id sub_1000500A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 beaconIdentifier];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100050140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10005016C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 238);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_1000501D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1000501F8(uint64_t a1, unsigned __int8 *a2)
{
  if (a1 + 392 == sub_10004E34C(a1 + 384, a2))
  {
    return 255;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v3 = off_100B508C8;
  v4 = sub_10004DF60(a2);
  v5 = sub_1000D5D08(v3, v4) ^ 1;

  return v5;
}

BOOL sub_100050290(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 392 != sub_10004E34C(a1 + 384, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100050304(uint64_t a1, unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v4 = sub_10004E34C(a1 + 384, a2);
  if (a1 + 392 == v4)
  {
    v5 = 0;
  }

  else
  {
    v7 = 0;
    sub_1000216B4(&v7);
    v5 = sub_1000CB318(*(v4 + 48));
    sub_10002249C(&v7);
  }

  sub_1000088CC(v8);
  return v5;
}

void sub_100050390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1000503B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 40);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 536, uu2);
  if (a1 + 544 == v4)
  {
    v5 = 23;
  }

  else
  {
    uu2[0] = 0;
    sub_1000216B4(uu2);
    v5 = sub_1000D5C70(*(v4 + 48));
    sub_10002249C(uu2);
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10005048C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10002249C(va1);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1000504C8(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_100843904();
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  for (i = *(a1 + 144); i != *(a1 + 152); ++i)
  {
    v7 = *i;
    if (((*(*i + 128) << 40) | (*(*i + 129) << 32) | (*(*i + 130) << 24) | (*(*i + 131) << 16) | (*(*i + 132) << 8) | *(*i + 133)) == a2)
    {
      goto LABEL_11;
    }
  }

  if (a3)
  {
    operator new();
  }

  v7 = 0;
LABEL_11:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_10005063C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v3 = sub_100046458(off_100B508C8, v2, 0);
  if (v3)
  {
    if (qword_100B508F0 != -1)
    {
      sub_1000DAE38();
    }

    v4 = sub_1000504C8(off_100B508E8, v3, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008737D8();
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sub_100050710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 64) beaconIdentifier];

  if (v7)
  {
    v8 = [*(a1 + 64) allowedSessions];

    if (v8)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [*(a1 + 64) allowedSessions];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v14 = [v13 bundleId];
            if ([v5 isEqual:v14])
            {
              v15 = [v13 userIdentifier];
              v16 = [v6 isEqual:v15];

              if (v16)
              {
                goto LABEL_14;
              }
            }

            else
            {
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

LABEL_14:
    }
  }

  return 1;
}

uint64_t sub_100050900(uint64_t a1, uint64_t a2)
{
  if (((*(a1 + 482) & 1) != 0 || _os_feature_enabled_impl() && *(a1 + 472)) && !_os_feature_enabled_impl() || !*(a1 + 208))
  {
    return 1;
  }

  v4 = [NSNumber numberWithUnsignedShort:a2];
  if (a2)
  {
    v5 = [*(a1 + 208) containsObject:v4];
  }

  else
  {
    v5 = 1;
  }

  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 208);
    v9[0] = 67109634;
    v9[1] = a2;
    v10 = 2112;
    v11 = v8;
    v12 = 1024;
    v13 = v5;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "canSessionScanForMFGRData %d %@ there:%d", v9, 0x18u);
  }

  return v5;
}

uint64_t sub_100050A7C(uint64_t a1, uint64_t *a2)
{
  if (((*(a1 + 482) & 1) != 0 || _os_feature_enabled_impl() && *(a1 + 472)) && !_os_feature_enabled_impl())
  {
    return 1;
  }

  if (!*(a1 + 200))
  {
    return 1;
  }

  v6 = a2;
  v4 = *a2;
  v5 = v6[1];
  if (v5 == v4)
  {
    return 1;
  }

  do
  {
    result = sub_1004FF2A4(a1, v4);
    if (result)
    {
      break;
    }

    v4 += 20;
  }

  while (v4 != v5);
  return result;
}

uint64_t sub_100050B20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((_os_feature_enabled_impl() & 1) != 0 && (v4 = *(a1 + 192)) != 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqual:{v3, v10}])
          {
            v6 = 1;
            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id sub_100050C80(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = 8 * count;
  __chkstk_darwin(count, v4);
  v5 = applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v5, 8 * count);
  __chkstk_darwin(v6, v7);
  bzero(v5, 8 * count);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100050E88;
  applier[3] = &unk_100AFF4C8;
  applier[4] = v13;
  applier[5] = v5;
  applier[6] = v5;
  xpc_dictionary_apply(a1, applier);
  v8 = [[NSDictionary alloc] initWithObjects:v5 forKeys:v5 count:count];
  _Block_object_dispose(v13, 8);
  if (count)
  {
    v9 = 8 * count;
    do
    {

      v9 -= 8;
    }

    while (v9);
    v10 = v5 - 8;
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  return v8;
}

void sub_100050E38(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 88), 8);
  if (v3)
  {
    v7 = v4 - 8;
    v8 = v1;
    do
    {

      v8 -= 8;
    }

    while (v8);
    v9 = v2 - 8;
    do
    {

      v1 -= 8;
    }

    while (v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100050E88(void *a1, uint64_t a2, void *a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = a1[5];
  v7 = *(*(a1[4] + 8) + 24);
  v8 = *(v6 + 8 * v7);
  *(v6 + 8 * v7) = v5;

  v9 = sub_1000527A8(a3);
  v10 = a1[6];
  v11 = *(*(a1[4] + 8) + 24);
  v12 = *(v10 + 8 * v11);
  *(v10 + 8 * v11) = v9;

  ++*(*(a1[4] + 8) + 24);
  return 1;
}

xpc_object_t sub_100050F1C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9, char a10, char a11)
{
  v82 = a1;
  v81 = a2;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v85[0] = 0;
  v85[1] = 0;
  v84 = v85;
  if ((a9 & 1) == 0)
  {
    bytes = xmmword_1008A4DDC;
    v100 = 0;
    sub_10000D03C(__p, &bytes);
    sub_100051F7C(&v84, __p);
  }

  if ((a11 & 1) == 0)
  {
    bytes = xmmword_1008A4F0C;
    v100 = 0;
    sub_10000D03C(__p, &bytes);
    sub_100051F7C(&v84, __p);
  }

  *__p = "kCBAdvDataIsConnectable";
  *&__p[8] = xpc_BOOL_create(*(*(a3 + 8) + 12));
  sub_100051E74(&v86, __p);
  if (a6)
  {
    v18 = *(*(a3 + 8) + 200);
    LOBYTE(bytes) = BYTE5(v18);
    BYTE1(bytes) = BYTE4(v18);
    BYTE2(bytes) = BYTE3(v18);
    BYTE3(bytes) = BYTE2(v18);
    BYTE4(bytes) = BYTE1(v18);
    BYTE5(bytes) = v18;
    *__p = "kCBAdvDataDeviceAddress";
    *&__p[8] = xpc_data_create(&bytes, 6uLL);
    sub_100051E74(&v86, __p);
    *__p = "kCBAdvDataDeviceAddressType";
    *&__p[8] = xpc_int64_create(BYTE6(v18));
    sub_100051E74(&v86, __p);
  }

  v19 = *(a3 + 8);
  if (*(v19 + 72) != *(v19 + 64))
  {
    *__p = "kCBAdvDataServiceUUIDs";
    *&__p[8] = sub_1005B308C((v19 + 64), &v84);
    sub_100051E74(&v86, __p);
    v19 = *(a3 + 8);
  }

  v21 = *(v19 + 88);
  v22 = *(v19 + 96);
  v20 = (v19 + 88);
  if (v22 != v21)
  {
    *__p = "kCBAdvDataSolicitedServiceUUIDs";
    *&__p[8] = sub_1005B308C(v20, &v84);
    sub_100051E74(&v86, __p);
  }

  if (*(a4 + 8) != *a4)
  {
    *__p = "kCBAdvDataHashedServiceUUIDs";
    *&__p[8] = sub_1005B308C(a4, &v84);
    sub_100051E74(&v86, __p);
  }

  v23 = *(a3 + 8);
  if (*(v23 + 39) < 0)
  {
    sub_100008904(__p, *(v23 + 16), *(v23 + 24));
  }

  else
  {
    *__p = *(v23 + 16);
    *&__p[16] = *(v23 + 32);
  }

  if ((__p[23] & 0x80000000) == 0)
  {
    if (!__p[23])
    {
      goto LABEL_28;
    }

LABEL_20:
    *&bytes = "kCBAdvDataLocalName";
    v25 = *(a3 + 8);
    if (*(v25 + 39) < 0)
    {
      sub_100008904(__p, *(v25 + 16), *(v25 + 24));
    }

    else
    {
      *__p = *(v25 + 16);
      *&__p[16] = *(v25 + 32);
    }

    if (__p[23] >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = *__p;
    }

    *(&bytes + 1) = xpc_string_create(v26);
    sub_100051E74(&v86, &bytes);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_28;
  }

  v24 = *&__p[8];
  operator delete(*__p);
  if (v24)
  {
    goto LABEL_20;
  }

LABEL_28:
  v27 = *(a3 + 8);
  v28 = *(v27 + 40);
  if (*(v27 + 40))
  {
    *__p = "kCBAdvDataAppearance";
    *&__p[8] = xpc_int64_create(v28);
    sub_100051E74(&v86, __p);
    v27 = *(a3 + 8);
  }

  if (*(v27 + 42) == 1)
  {
    *__p = "kCBAdvDataTxPowerLevel";
    *&__p[8] = xpc_int64_create(*(v27 + 43));
    sub_100051E74(&v86, __p);
    v27 = *(a3 + 8);
  }

  if (*(v27 + 128))
  {
    v29 = xpc_array_create(0, 0);
    v30 = *(v27 + 112);
    v31 = (v27 + 120);
    if (v30 != v31)
    {
      do
      {
        __p[0] = 0;
        if (v85 == sub_10067DD7C(v84, v85, v30 + 32))
        {
          *__p = 0;
          *&__p[8] = 0;
          v32 = sub_10007A930(v30 + 32, __p);
          xpc_array_set_data(v29, 0xFFFFFFFFFFFFFFFFLL, __p, v32);
          v33 = sub_10000C5F8((v30 + 56));
          v34 = sub_10000C5E0((v30 + 56));
          xpc_array_set_data(v29, 0xFFFFFFFFFFFFFFFFLL, v33, v34);
        }

        v35 = *(v30 + 1);
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = *(v30 + 2);
            v37 = *v36 == v30;
            v30 = v36;
          }

          while (!v37);
        }

        v30 = v36;
      }

      while (v36 != v31);
    }

    if (xpc_array_get_count(v29))
    {
      *__p = "kCBAdvDataServiceData";
      *&__p[8] = v29;
      sub_100051E74(&v86, __p);
    }

    else
    {
      xpc_release(v29);
    }
  }

  v38 = sub_10000C5E0(*(a3 + 8) + 48);
  v39 = sub_10000C5F8(*(a3 + 8) + 48);
  v40 = sub_10000C798();
  if ((((*(*v40 + 416))(v40) | a7) & 1) == 0 && v38 >= 3 && *v39 == 76)
  {
    v38 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v41 = *(a3 + 8);
    if (*(v41 + 312) || !v38)
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (!v38)
    {
      goto LABEL_99;
    }

    v41 = *(a3 + 8);
  }

  if (*(v41 + 361) == 1)
  {
    *__p = "kCBAdvDataProximityPairingStatusDecrypted";
    *&__p[8] = xpc_int64_create(1);
    sub_100051E74(&v86, __p);
    v41 = *(a3 + 8);
  }

  if (*(v41 + 362) == 1)
  {
    *__p = "kCBAdvDataAccessoryStatusDecrypted";
    *&__p[8] = xpc_int64_create(1);
    sub_100051E74(&v86, __p);
  }

  if (!*(a5 + 16) || *v39 != 76)
  {
    *__p = "kCBAdvDataManufacturerData";
    *&__p[8] = xpc_data_create(v39, v38);
    sub_100051E74(&v86, __p);
    goto LABEL_99;
  }

  v42 = objc_opt_new();
  v83 = 76;
  [v42 appendBytes:&v83 length:2];
  if (v38 < 3)
  {
    goto LABEL_62;
  }

  for (i = 2; i < v38; i = (v48 + v47 + v46))
  {
    v45 = *(v39 + i);
    if (v45 == 1)
    {
      if (v38 > (i + 16))
      {
        v46 = 0;
        v47 = 16;
        goto LABEL_68;
      }

      v52 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100777574();
        v79 = v101 >= 0 ? &bytes : bytes;
        *__p = 138412802;
        *&__p[4] = v82;
        *&__p[12] = 2080;
        *&__p[14] = v79;
        *&__p[22] = 2112;
        v90 = v81;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "createXpcAdvData error device:%@ address:%s agent:%@, Invalid length", __p, 0x20u);
        if (v101 < 0)
        {
          operator delete(bytes);
        }
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BF24(&bytes, &bytes + 1);
      }

      goto LABEL_94;
    }

    v48 = (i + 1);
    if (v38 <= v48)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100777574();
        sub_10085BEBC();
      }

      goto LABEL_94;
    }

    v47 = *(v39 + v48) & 0x1F;
    if (v47 == 31)
    {
      v49 = (i + 2);
      if (v38 <= v49)
      {
        v58 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100777574();
          if (v101 >= 0)
          {
            p_bytes = &bytes;
          }

          else
          {
            p_bytes = bytes;
          }

          *__p = 138412802;
          *&__p[4] = v82;
          *&__p[12] = 2080;
          *&__p[14] = p_bytes;
          *&__p[22] = 2112;
          v90 = v81;
          v55 = "createXpcAdvData error device:%@ address:%s agent:%@, not enough data for the extended data byte. Ignoring.";
          v56 = v58;
          v57 = 32;
LABEL_132:
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, v55, __p, v57);
          if (v101 < 0)
          {
            operator delete(bytes);
          }
        }

LABEL_94:
        v43 = 1;
        goto LABEL_95;
      }

      v47 = *(v39 + v49) + 31;
      v46 = 2;
    }

    else
    {
      v46 = 1;
    }

    if (v38 < (v47 + v46 + i))
    {
      v53 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100777574();
        if (v101 >= 0)
        {
          v54 = &bytes;
        }

        else
        {
          v54 = bytes;
        }

        *__p = 138413826;
        *&__p[4] = v82;
        *&__p[12] = 2080;
        *&__p[14] = v54;
        *&__p[22] = 2112;
        v90 = v81;
        v91 = 1024;
        v92 = i;
        v93 = 1024;
        v94 = v47;
        v95 = 1024;
        v96 = v46;
        v97 = 2048;
        v98 = v38;
        v55 = "createXpcAdvData error device:%@ address:%s agent:%@, ignoring packet since byte offset of %d + payload length of %d + length size of %d doesnt fit in dataLength %zu";
        v56 = v53;
        v57 = 60;
        goto LABEL_132;
      }

      goto LABEL_94;
    }

    v50 = *(a5 + 8);
    if (!v50)
    {
      continue;
    }

    while (1)
    {
      v51 = *(v50 + 25);
      if (v45 >= v51)
      {
        break;
      }

LABEL_79:
      v50 = *v50;
      if (!v50)
      {
        goto LABEL_80;
      }
    }

    if (v51 < v45)
    {
      ++v50;
      goto LABEL_79;
    }

    [v42 appendBytes:v39 + i length:(v47 + v46 + 1)];
LABEL_68:
    LODWORD(v48) = i + 1;
LABEL_80:
    ;
  }

LABEL_62:
  v43 = 0;
LABEL_95:
  if ([v42 length] >= 3)
  {
    *__p = "kCBAdvDataManufacturerData";
    v59 = v42;
    *&__p[8] = xpc_data_create([v42 bytes], objc_msgSend(v42, "length"));
    sub_100051E74(&v86, __p);
    v60 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      v78 = [v42 length];
      *__p = 138413058;
      *&__p[4] = v42;
      *&__p[12] = 2048;
      *&__p[14] = v78;
      *&__p[22] = 2048;
      v90 = v38;
      v91 = 1024;
      v92 = v43;
      _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "createXpcAdvData sending data:%@ length:%lu originalLength:%zu lenError:%d", __p, 0x26u);
    }
  }

LABEL_99:
  if (sub_10000C5E0(*(a3 + 8) + 136) == 7)
  {
    v61 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v62 = sub_10000C5F8(*(a3 + 8) + 136);
      *__p = 0x704100202;
      *&__p[8] = 2096;
      *&__p[10] = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Create XPC Adv Data with LE BT Address data: %.7P", __p, 0x12u);
    }

    v63 = sub_10000C5F8(*(a3 + 8) + 136);
    *__p = "kCBAdvDataLeBluetoothDeviceAddress";
    *&__p[8] = xpc_data_create(v63, 7uLL);
    sub_100051E74(&v86, __p);
  }

  if (a8)
  {
    v64 = sub_10000C5E0(*(a3 + 8) + 224);
    if (v64)
    {
      v65 = sub_10000C5F8(*(a3 + 8) + 224);
      *__p = "kCBAdvDataTDSData";
      *&__p[8] = xpc_data_create(v65, v64);
      sub_100051E74(&v86, __p);
    }
  }

  v66 = *(a3 + 8);
  v67 = *(v66 + 218);
  if (*(v66 + 218))
  {
    *__p = "kCBAdvDataProximityLevel";
    *&__p[8] = xpc_int64_create(v67);
    sub_100051E74(&v86, __p);
    v66 = *(a3 + 8);
  }

  if (a7)
  {
    *__p = "kCBAdvDataChannel";
    *&__p[8] = xpc_int64_create(*(v66 + 219));
    sub_100051E74(&v86, __p);
    *__p = "kCBAdvDataWlanRSSI";
    *&__p[8] = xpc_BOOL_create(*(*(a3 + 8) + 220));
    sub_100051E74(&v86, __p);
    *__p = "kCBAdvDataWSaturated";
    *&__p[8] = xpc_BOOL_create(*(*(a3 + 8) + 217));
    sub_100051E74(&v86, __p);
    v66 = *(a3 + 8);
  }

  *__p = "kCBAdvDataTimestamp";
  *&__p[8] = xpc_double_create(*(v66 + 240));
  sub_100051E74(&v86, __p);
  *__p = "kCBAdvDataRxPrimaryPHY";
  LOBYTE(v68) = *(*(a3 + 8) + 341);
  *&__p[8] = xpc_double_create(v68);
  sub_100051E74(&v86, __p);
  *__p = "kCBAdvDataRxSecondaryPHY";
  LOBYTE(v69) = *(*(a3 + 8) + 342);
  *&__p[8] = xpc_double_create(v69);
  sub_100051E74(&v86, __p);
  if (a10)
  {
    *__p = "kCBAdvDataScanSourceCore";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 365));
    sub_100051E74(&v86, __p);
    *__p = "kCBAdvDataIsELNAOn";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 366));
    sub_100051E74(&v86, __p);
    *__p = "kCBAdvDataIsPassup";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 367));
    sub_100051E74(&v86, __p);
    *__p = "kCBAdvDataIsFromSCCompensation";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 368));
    sub_100051E74(&v86, __p);
    *__p = "kCBAdvDataIsCoexDenied";
    *&__p[8] = xpc_int64_create(*(*(a3 + 8) + 369));
    sub_100051E74(&v86, __p);
  }

  v70 = *(a3 + 8);
  if (a11 && (*(v70 + 14) & 1) != 0)
  {
    *__p = "kCBAdvDataHostWakeEvent";
    *&__p[8] = xpc_int64_create(1);
    sub_100051E74(&v86, __p);
    v70 = *(a3 + 8);
  }

  if (sub_10000C5E0(v70 + 448))
  {
    v71 = sub_10000C5F8(*(a3 + 8) + 448);
    *__p = "kCBCoordinatedSetRSIAdv";
    v72 = sub_10000C5E0(*(a3 + 8) + 448);
    *&__p[8] = xpc_data_create(v71, v72);
    sub_100051E74(&v86, __p);
  }

  v73 = xpc_dictionary_create(0, 0, 0);
  v75 = v86;
  v74 = v87;
  if (v86 != v87)
  {
    v76 = v86;
    do
    {
      xpc_dictionary_set_value(v73, *v76, v76[1]);
      xpc_release(v76[1]);
      v76 += 2;
    }

    while (v76 != v74);
  }

  sub_10000CEDC(&v84, v85[0]);
  if (v75)
  {
    operator delete(v75);
  }

  return v73;
}

void sub_100051D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, char a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10000CEDC(&a13, a14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100051E74(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_1000C7698();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_1000C7698();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_100051F7C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_10004E3C8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

xpc_object_t sub_10005201C(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    goto LABEL_67;
  }

  v7 = v5;
  *uuid = 0;
  v54 = 0;
  [v7 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v6, "kCBMsgArgDeviceUUID", uuid);

  *uuid = 0;
  v54 = 0;
  v55 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_10004FFDC(off_100B508C8, v7, uuid);
  if (SHIBYTE(v55) < 0)
  {
    if (!v54)
    {
      goto LABEL_10;
    }

    v8 = *uuid;
  }

  else
  {
    if (!HIBYTE(v55))
    {
      goto LABEL_10;
    }

    v8 = uuid;
  }

  xpc_dictionary_set_string(v6, "kCBMsgArgName", v8);
LABEL_10:
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  v9 = off_100B508C8;
  sub_100007E30(v50, "ANCSAuthorized");
  v10 = sub_10004EB40(v9, v7, v50);
  xpc_dictionary_set_BOOL(v6, "kCBMsgArgAncsAuthorization", v10);
  if ((v51 & 0x80000000) == 0)
  {
    if (!a2)
    {
      goto LABEL_20;
    }

LABEL_16:
    v11 = sub_100052B30(v7);
    xpc_dictionary_set_int64(v6, "kCBMsgArgPairingState", v11);
    if (qword_100B50F78 != -1)
    {
      sub_10085A8C0();
    }

    if (sub_100052A90(qword_100B50F70, v7))
    {
      xpc_dictionary_set_BOOL(v6, "kCBMsgArgConnectionState", 1);
    }

    goto LABEL_20;
  }

  operator delete(v50[0]);
  if (a2)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (a3 >= 1)
  {
    if (qword_100B541E8 != -1)
    {
      sub_1000E7B38();
    }

    v12 = sub_1000503B8(qword_100B541E0, v7);
    xpc_dictionary_set_int64(v6, "kCBMsgArgATTMTU", v12);
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v13 = off_100B508A8;
    sub_10004DFB4(bytes, v7);
    v14 = sub_100050304(v13, bytes);
    xpc_dictionary_set_BOOL(v6, "kCBMsgArgIsLinkEncrypted", v14);
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v15 = off_100B508A8;
    sub_10004DFB4(bytes, v7);
    if (sub_100050290(v15, bytes))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    xpc_dictionary_set_int64(v6, "kCBMsgArgConnectionTransport", v16);
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v17 = off_100B508A8;
    sub_10004DFB4(bytes, v7);
    v18 = sub_1000501F8(v17, bytes);
    xpc_dictionary_set_int64(v6, "kCBMsgArgConnectionRole", v18);
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v19 = sub_10005016C(off_100B508C8, v7);
    xpc_dictionary_set_int64(v6, "kCBMsgArgVisibleInSettings", v19 ^ 1u);
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v20 = sub_1000500A0(off_100B508C8, v7);
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      *bytes = 0;
      v57 = 0;
      v44 = v22;
      [v22 getUUIDBytes:bytes];
      xpc_dictionary_set_uuid(v6, "kCBMsgArgFindMyBeaconID", bytes);

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v23 = sub_100790840(off_100B508C8, v7);
      v45 = [v23 mutableCopy];

      if (v45)
      {
        v24 = v45;
        [v45 count];
        v43[1] = v43;
        __chkstk_darwin();
        v26 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v26, v25);
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v27 = v24;
        v28 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
        v43[0] = v21;
        v29 = 0;
        if (v28)
        {
          v30 = *v47;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v46 + 1) + 8 * i);
              *bytes = 0;
              v57 = 0;
              [v32 getUUIDBytes:{bytes, v43[0]}];
              *&v26[8 * v29++] = xpc_data_create(bytes, 0x10uLL);
            }

            v28 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v28);
        }

        v33 = xpc_array_create(v26, v29);
        while (v29)
        {
          xpc_release(*&v26[8 * v29-- - 8]);
        }

        xpc_dictionary_set_value(v6, "kCBMsgArgFindMyGroupMembers", v33);
        xpc_release(v33);
        v21 = v43[0];
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v34 = sub_1000AFA48(off_100B508C8, v7);
      v35 = v34;
      if (v34)
      {
        v36 = v34;
        xpc_dictionary_set_string(v6, "kCBMsgArgFindMySerialNumberString", [v35 UTF8String]);
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v37 = sub_1007904B0(off_100B508C8, v7);
      v38 = v37;
      if (v37)
      {
        v39 = v37;
        *bytes = 0;
        v57 = 0;
        [v39 getUUIDBytes:bytes];
        xpc_dictionary_set_uuid(v6, "kCBMsgArgFindMyUserID", bytes);
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v40 = sub_1007908B4(off_100B508C8, v7);
      xpc_dictionary_set_int64(v6, "kCBMsgArgFindMyPartNumber", v40);
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v41 = sub_10079096C(off_100B508C8, v7);
      xpc_dictionary_set_int64(v6, "kCBMsgArgFindMyManaged", v41);
    }
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(*uuid);
  }

LABEL_67:

  return v6;
}

void sub_1000526B8(_Unwind_Exception *a1)
{
  if (*(v4 - 113) < 0)
  {
    operator delete(*(v4 - 136));
  }

  _Unwind_Resume(a1);
}

__CFString *sub_1000527A8(void *a1)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_int64)
  {
    v6 = [NSNumber numberWithLongLong:xpc_int64_get_value(a1)];
    goto LABEL_28;
  }

  v3 = type;
  if (type == &_xpc_type_uint64)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(a1)];
    goto LABEL_28;
  }

  if (type == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(a1);
    v8 = &__kCFBooleanFalse;
    if (value)
    {
      v8 = &__kCFBooleanTrue;
    }

    v6 = v8;
    goto LABEL_28;
  }

  if (type != &_xpc_type_string)
  {
    if (type == &_xpc_type_data)
    {
      v12 = [NSData alloc];
      bytes_ptr = xpc_data_get_bytes_ptr(a1);
      v6 = [v12 initWithBytes:bytes_ptr length:xpc_data_get_length(a1)];
    }

    else if (type == &_xpc_type_uuid)
    {
      v6 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(a1)];
    }

    else if (type == &_xpc_type_array)
    {
      v6 = sub_1005B2A18(a1);
    }

    else if (type == &_xpc_type_dictionary)
    {
      v6 = sub_100050C80(a1);
    }

    else if (type == &_xpc_type_fd)
    {
      v6 = [NSNumber numberWithInt:xpc_fd_dup(a1)];
    }

    else
    {
      if (type != &_xpc_type_double)
      {
        v4 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134217984;
          v16 = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unknown XPC type: %p", &v15, 0xCu);
        }

        v5 = 0;
        goto LABEL_29;
      }

      v6 = [NSNumber numberWithDouble:xpc_double_get_value(a1)];
    }

LABEL_28:
    v5 = v6;
    goto LABEL_29;
  }

  v9 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(a1)];
  v10 = v9;
  v11 = &stru_100B0F9E0;
  if (v9)
  {
    v11 = v9;
  }

  v5 = v11;

LABEL_29:

  return v5;
}

BOOL sub_100052A90(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004DFB4(uu2, v3);
  v4 = a1 + 56 != sub_10004E34C(a1 + 48, uu2);

  return v4;
}

uint64_t sub_100052B30(void *a1)
{
  v1 = a1;
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  if (sub_10004EE74(off_100B508B8, v1))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_1000B006C(off_100B508C8, v1, v5);
    if (v6 < 0)
    {
      v2 = v5[1] == 0;
      operator delete(v5[0]);
    }

    else
    {
      v2 = v6 == 0;
    }

    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100052C08(void *a1, int64_t a2, void *a3)
{
  v5 = a3;
  v6 = (*(*a1 + 16))(a1);
  v7 = a1[15];
  if (v6 == 3)
  {
    if (v7)
    {
      if (!sub_100052E80(a1))
      {
        sub_100052EE4(v7, a2, v5);
        goto LABEL_17;
      }

LABEL_7:
      v8 = [[BTQueuedMessage alloc] initWithMsg:a2 arguments:v5];
      sub_1004F4C94(a1, v8);
      sub_1000658D0(a1);

LABEL_17:
      v13 = 1;
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    if (!sub_100052E80(a1))
    {
      sub_100052EE4(v7 - 144, a2, v5);
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v9 = [[BTQueuedMessage alloc] initWithMsg:a2 arguments:v5];
  sub_1004F4C94(a1, v9);
  v10 = sub_100052E80(a1);
  if (v10)
  {
    v11 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[11];
      v15 = 134218242;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(CBSR) Queued message available: %lu. Try and ressurrectApp: %{public}@", &v15, 0x16u);
    }

    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    sub_1003BCFEC(off_100B512F0, a1[11]);
  }

  v13 = 0;
LABEL_18:

  return v13;
}

id sub_100052E80(uint64_t a1)
{
  v2 = *(a1 + 112);
  objc_sync_enter(v2);
  v3 = [*(a1 + 112) count];
  objc_sync_exit(v2);

  return v3;
}

void sub_100052ECC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100052EE4(uint64_t a1, int64_t a2, void *a3)
{
  v6 = a3;
  v5 = sub_100052F58(v6);
  sub_10004DFB8(a1, a2, v5, 1);
}

xpc_object_t sub_100052F58(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  __chkstk_darwin();
  v3 = v7 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v3, 8 * v2);
  __chkstk_darwin();
  v4 = v3;
  bzero(v3, 8 * v2);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053118;
  v7[3] = &unk_100AFF4F0;
  v7[4] = v8;
  v7[5] = v3;
  v7[6] = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v7];
  for (i = xpc_dictionary_create(v3, v3, v2); v2; --v2)
  {
    xpc_release(*v4++);
  }

  _Block_object_dispose(v8, 8);

  return i;
}

void sub_1000530E4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 88), 8);

  _Unwind_Resume(a1);
}

void sub_100053118(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v7;
  *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = [v7 UTF8String];
  *(a1[6] + 8 * (*(*(a1[4] + 8) + 24))++) = sub_1000531D4(v5);
}

uint64_t sub_1000531D4(void *a1)
{
  v1 = a1;
  if ([v1 isNSNumber])
  {
    if (CFNumberIsFloatType(v1))
    {
      [v1 doubleValue];
      v3 = xpc_double_create(v2);
    }

    else
    {
      v3 = xpc_int64_create([v1 longLongValue]);
    }
  }

  else if ([v1 isNSString])
  {
    v3 = xpc_string_create([v1 UTF8String]);
  }

  else if ([v1 isNSData])
  {
    v3 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *uuid = 0;
      v8 = 0;
      [v1 getUUIDBytes:uuid];
      v3 = xpc_uuid_create(uuid);
    }

    else if ([v1 isNSArray])
    {
      v3 = sub_1005B2B90(v1);
    }

    else if ([v1 isNSDictionary])
    {
      v3 = sub_100052F58(v1);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v1 data];
        v4 = sub_1000531D4();

        if (v4)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_16:
        [NSException raise:@"Invalid Object" format:@"Object %@ is invalid", v1];
        v4 = 0;
        goto LABEL_17;
      }

      v3 = xpc_null_create();
    }
  }

  v4 = v3;
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v4;
}

void sub_1000533E0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    __p[6] = &off_100AE0AB8;
    v3 = __p[7];
    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL sub_100053460(uint64_t a1)
{
  v2 = sub_10000C798();
  v3 = (*(*v2 + 416))(v2);
  if ((*(a1 + 81) & 0x30) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) != 0 || *(a1 + 81) == 16)
  {
    return 1;
  }

  return sub_10000D1C8(a1);
}

void sub_1000534F0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 += 20)
  {
    v6 = *v3;
    v8 = *(v3 + 16);
    v7 = v6;
    if ((sub_1000574D8(a1, &v7) & 1) == 0)
    {
      sub_10000CDB8(a2, v3);
    }
  }
}

void sub_10005359C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000535B8(uint64_t a1)
{
  if (sub_10004ECB4(a1))
  {
    return 1;
  }

  if ([*(*(a1 + 8) + 80) count])
  {
    return 1;
  }

  v2 = *(a1 + 8);
  return *(v2 + 161) || *(v2 + 88) != *(v2 + 96) || *(v2 + 120) != *(v2 + 128);
}

uint64_t sub_10005361C(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  uuid_copy(a1, a2);
  v5 = *(a3 + 8);
  *(a1 + 16) = &off_100AE0AB8;
  *(a1 + 24) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  return a1;
}

uint64_t sub_100053674(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000625CC(v5, v5 + 1, v4 + 25);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100053708(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v193 = a4;
  v194 = a5;
  v202 = a1;
  if (*(*(a1 + 8) + 120) == *(*(a1 + 8) + 128))
  {
    v119 = 1;
  }

  else
  {
    v250[0] = 0;
    v250[1] = 0;
    v248[1] = 0;
    v249 = v250;
    v247 = v248;
    v248[0] = 0;
    v7 = *(a3 + 8);
    v244 = 0;
    v245 = 0;
    v246 = 0;
    v196 = v7;
    if (v7[16])
    {
      v8 = v7[14];
      v9 = (v7 + 15);
      if (v8 != (v7 + 15))
      {
        do
        {
          sub_10000CDB8(&v244, v8 + 2);
          v10 = *(v8 + 1);
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
              v11 = *(v8 + 2);
              v12 = *v11 == v8;
              v8 = v11;
            }

            while (!v12);
          }

          v8 = v11;
        }

        while (v11 != v9);
      }
    }

    v13 = sub_10000C7D0();
    v224 = (*(*v13 + 2760))(v13);
    v241 = 0;
    v242 = 0;
    v243 = 0;
    sub_100055E98(*(v202 + 8), &v241);
    v14 = v241;
    v219 = v242;
    v209 = a3;
    if (v242 != v241)
    {
      v205 = (v202 + 232);
      do
      {
        v15 = *(a3 + 8);
        v16 = *(v15 + 64);
        v17 = *(v15 + 72);
        v18 = (v15 + 64);
        if (v17 != v16)
        {
          *out = *(v14 + 20);
          *&out[16] = *(v14 + 36);
          v19 = sub_100099EA8(__p, out, 1uLL);
          v20 = sub_100099F20(v19, a2, __p, v18);
          v21 = *__p;
          if (*__p)
          {
            *&__p[8] = *__p;
            operator delete(*__p);
          }

          if (v20)
          {
            goto LABEL_20;
          }
        }

        if (v245 == v244)
        {
          goto LABEL_21;
        }

        *out = *(v14 + 20);
        *&out[16] = *(v14 + 36);
        v22 = sub_100099EA8(__p, out, 1uLL);
        v23 = sub_100099F20(v22, a2, __p, &v244);
        v21 = *__p;
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if ((v23 & 1) == 0)
        {
LABEL_21:
          v25 = *(a3 + 8);
          v26 = *(v25 + 88);
          v27 = *(v25 + 96);
          v28 = (v25 + 88);
          if (v27 == v26)
          {
            v227 = 0;
            goto LABEL_28;
          }

          *out = *(v14 + 20);
          *&out[16] = *(v14 + 36);
          v29 = sub_100099EA8(__p, out, 1uLL);
          v24 = sub_100099F20(v29, a2, __p, v28);
          v21 = *__p;
          if (*__p)
          {
            *&__p[8] = *__p;
            operator delete(*__p);
          }
        }

        else
        {
LABEL_20:
          v24 = 1;
        }

        if ((v224 & v24) == 1)
        {
          v227 = sub_1007B3C3C(v21, *(*(a3 + 8) + 216), *(v14 + 72), *(v14 + 76));
        }

        else
        {
          v227 = v24 & (v224 ^ 1);
        }

LABEL_28:
        v30 = *(v14 + 73);
        v31 = *v14;
        v32 = v31;
        sub_100007E30(__p, [v31 UTF8String]);
        *out = __p;
        *(sub_10009A0E8(&v247, __p) + 56) = v30 != 0;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v33 = *v14;
        v34 = v33;
        sub_100007E30(__p, [v33 UTF8String]);
        v35 = sub_10000EEB8(&v249, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v250 == v35)
        {
          v36 = *v14;
          v39 = v36;
          sub_100007E30(__p, [v36 UTF8String]);
          *out = __p;
          *(sub_10009A0E8(&v249, __p) + 56) = v227;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          v36 = *v14;
          v37 = v36;
          sub_100007E30(__p, [v36 UTF8String]);
          *out = __p;
          v38 = sub_10009A0E8(&v249, __p);
          *(v38 + 56) &= v227;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v40 = qword_100BCE918;
        v41 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
        a3 = v209;
        if (v224)
        {
          if (v41)
          {
            v42 = v202 + 232;
            if (*(v202 + 255) < 0)
            {
              v42 = *v205;
            }

            memset(out, 0, sizeof(out));
            uuid_unparse_upper(a2, out);
            sub_100007E30(&v238, out);
            if (v240 >= 0)
            {
              v43 = &v238;
            }

            else
            {
              v43 = v238;
            }

            *v252 = *(v14 + 20);
            v253 = *(v14 + 36);
            sub_10003B85C(v252, out);
            log = v40;
            if (out[23] >= 0)
            {
              v44 = out;
            }

            else
            {
              v44 = *out;
            }

            v45 = *(*(v209 + 8) + 216);
            if (*(v14 + 76))
            {
              v46 = @">";
            }

            else
            {
              v46 = @"<";
            }

            v47 = *(v14 + 72);
            v214 = *v14;
            v210 = *v14;
            v48 = v210;
            sub_100007E30(&v270, [v210 UTF8String]);
            *&v267 = &v270;
            v49 = *(sub_10009A0E8(&v249, &v270) + 56);
            v50 = *v14;
            v51 = *v14;
            v52 = v51;
            sub_100007E30(&v267, [v51 UTF8String]);
            v236[0] = &v267;
            v53 = *(sub_10009A0E8(&v247, &v267) + 56);
            *__p = 136317698;
            *&__p[4] = v42;
            *&__p[12] = 2080;
            *&__p[14] = v43;
            *&__p[22] = 2080;
            *v258 = v44;
            *&v258[8] = 1024;
            *v259 = v45;
            *&v259[4] = 2112;
            *&v259[6] = v46;
            *&v259[14] = 1024;
            *&v259[16] = v47;
            *&v259[20] = 1024;
            *&v259[22] = v227;
            *&v259[26] = 2112;
            *&v259[28] = v214;
            *&v259[36] = 1024;
            *&v259[38] = v49;
            *&v259[42] = 2112;
            *&v259[44] = v50;
            *v260 = 1024;
            *&v260[2] = v53;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "filterByEnhancedRules uuidWithoutBlobAndMask session:%s device:%s uuid:%s rssi:%d (%@%d?) match:%d matchMap[%@]:%d ignoreDupsMap[%@]:%d", __p, 0x5Cu);
            if (v269 < 0)
            {
              operator delete(v267);
            }

            if (SHIBYTE(v271) < 0)
            {
              operator delete(v270);
            }

            if (out[23] < 0)
            {
              operator delete(*out);
            }

            if (SHIBYTE(v240) < 0)
            {
              operator delete(v238);
            }

LABEL_78:
            a3 = v209;
          }
        }

        else if (v41)
        {
          v54 = v202 + 232;
          if (*(v202 + 255) < 0)
          {
            v54 = *v205;
          }

          memset(out, 0, sizeof(out));
          uuid_unparse_upper(a2, out);
          sub_100007E30(&v238, out);
          v55 = v40;
          if (v240 >= 0)
          {
            v56 = &v238;
          }

          else
          {
            v56 = v238;
          }

          *v252 = *(v14 + 20);
          v253 = *(v14 + 36);
          sub_10003B85C(v252, out);
          if (out[23] >= 0)
          {
            v57 = out;
          }

          else
          {
            v57 = *out;
          }

          v58 = *v14;
          v59 = *v14;
          v60 = v59;
          sub_100007E30(&v270, [v59 UTF8String]);
          *&v267 = &v270;
          v61 = *(sub_10009A0E8(&v249, &v270) + 56);
          v62 = *v14;
          v63 = *v14;
          v64 = v63;
          sub_100007E30(&v267, [v63 UTF8String]);
          v236[0] = &v267;
          v65 = *(sub_10009A0E8(&v247, &v267) + 56);
          *__p = 136316930;
          *&__p[4] = v54;
          *&__p[12] = 2080;
          *&__p[14] = v56;
          *&__p[22] = 2080;
          *v258 = v57;
          *&v258[8] = 1024;
          *v259 = v227;
          *&v259[4] = 2112;
          *&v259[6] = v58;
          *&v259[14] = 1024;
          *&v259[16] = v61;
          *&v259[20] = 2112;
          *&v259[22] = v62;
          *&v259[30] = 1024;
          *&v259[32] = v65;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "filterByEnhancedRules uuidWithoutBlobAndMask session:%s device:%s uuid:%s match:%d matchMap[%@]:%d ignoreDupsMap[%@]:%d", __p, 0x46u);
          if (v269 < 0)
          {
            operator delete(v267);
          }

          if (SHIBYTE(v271) < 0)
          {
            operator delete(v270);
          }

          if (out[23] < 0)
          {
            operator delete(*out);
          }

          if (SHIBYTE(v240) < 0)
          {
            operator delete(v238);
          }

          goto LABEL_78;
        }

        v14 += 112;
      }

      while (v14 != v219);
    }

    v238 = 0;
    v239 = 0;
    v240 = 0;
    sub_100055F38(*(v202 + 8), &v238);
    v66 = v238;
    v195 = v239;
    if (v239 != v238 && v196[16])
    {
      v220 = v196 + 15;
      loga = (v202 + 232);
      while (1)
      {
        v67 = v196[14];
        if (v67 != v220)
        {
          break;
        }

LABEL_179:
        v66 += 112;
        if (v66 == v195)
        {
          goto LABEL_180;
        }
      }

      v228 = 0;
      while (1)
      {
        v270 = *(v66 + 20);
        LODWORD(v271) = *(v66 + 9);
        sub_100099EA8(__p, &v270, 1uLL);
        v267 = *(v67 + 2);
        v268 = *(v67 + 12);
        v68 = sub_100099EA8(out, &v267, 1uLL);
        if (sub_100099F20(v68, a2, __p, out))
        {
          v69 = sub_10000C5F8((v67 + 7));
          v70 = sub_10000C5E0((v67 + 7));
          v71 = sub_10000C5E0((v66 + 40));
          v72 = sub_10000C5F8((v66 + 56));
          v73 = sub_10000C5F8((v66 + 40));
          v74 = sub_1007B3D2C(v73, v69, v70, v71, v72, v73);
        }

        else
        {
          v74 = 0;
        }

        if (*out)
        {
          *&out[8] = *out;
          operator delete(*out);
        }

        v75 = *__p;
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if ((v224 & (v228 | v74)) == 1)
        {
          v228 = sub_1007B3C3C(v75, *(*(v209 + 8) + 216), v66[72], v66[76]);
        }

        else
        {
          v228 = (v224 ^ 1) & (v228 | v74);
        }

        v76 = v66[73];
        v77 = *v66;
        v78 = v77;
        sub_100007E30(__p, [v77 UTF8String]);
        *out = __p;
        *(sub_10009A0E8(&v247, __p) + 56) = v76 != 0;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v79 = *v66;
        v80 = v79;
        sub_100007E30(__p, [v79 UTF8String]);
        v81 = sub_10000EEB8(&v249, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v250 == v81)
        {
          v82 = *v66;
          v85 = v82;
          sub_100007E30(__p, [v82 UTF8String]);
          *out = __p;
          *(sub_10009A0E8(&v249, __p) + 56) = v228;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          v82 = *v66;
          v83 = v82;
          sub_100007E30(__p, [v82 UTF8String]);
          *out = __p;
          v84 = sub_10009A0E8(&v249, __p);
          *(v84 + 56) &= v228;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v86 = qword_100BCE918;
        v87 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
        if (v224)
        {
          if (v87)
          {
            v88 = v202 + 232;
            if (*(v202 + 255) < 0)
            {
              v88 = *loga;
            }

            memset(out, 0, sizeof(out));
            uuid_unparse_upper(a2, out);
            sub_100007E30(&v270, out);
            if (v271 >= 0)
            {
              v89 = &v270;
            }

            else
            {
              v89 = v270;
            }

            v255 = *(v66 + 20);
            v256 = *(v66 + 9);
            sub_10003B85C(&v255, out);
            if (out[23] >= 0)
            {
              v90 = out;
            }

            else
            {
              v90 = *out;
            }

            v91 = *(*(v209 + 8) + 216);
            v92 = @">";
            if (!v66[76])
            {
              v92 = @"<";
            }

            v199 = v92;
            v200 = v66[72];
            sub_10000C250((v67 + 7), &v267);
            v198 = v91;
            v93 = &v267;
            if (v269 < 0)
            {
              v93 = v267;
            }

            v197 = v93;
            sub_10000C250((v66 + 40), v252);
            if (v254 >= 0)
            {
              v94 = v252;
            }

            else
            {
              v94 = v252[0];
            }

            sub_10000C250((v66 + 56), v236);
            v215 = v86;
            if (v237 >= 0)
            {
              v95 = v236;
            }

            else
            {
              v95 = v236[0];
            }

            v211 = *v66;
            v206 = *v66;
            v96 = v206;
            sub_100007E30(v234, [v206 UTF8String]);
            v231 = v234;
            v97 = *(sub_10009A0E8(&v249, v234) + 56);
            v98 = *v66;
            v99 = *v66;
            v100 = v99;
            sub_100007E30(&v231, [v99 UTF8String]);
            v251 = &v231;
            v101 = *(sub_10009A0E8(&v247, &v231) + 56);
            *__p = 136318466;
            *&__p[4] = v88;
            *&__p[12] = 2080;
            *&__p[14] = v89;
            *&__p[22] = 2080;
            *v258 = v90;
            *&v258[8] = 1024;
            *v259 = v198;
            *&v259[4] = 2112;
            *&v259[6] = v199;
            *&v259[14] = 1024;
            *&v259[16] = v200;
            *&v259[20] = 2080;
            *&v259[22] = v197;
            *&v259[30] = 2080;
            *&v259[32] = v94;
            *&v259[40] = 2080;
            *&v259[42] = v95;
            *&v259[50] = 1024;
            *v260 = v228;
            *&v260[4] = 2112;
            *&v260[6] = v211;
            v261 = 1024;
            v262 = v97;
            v263 = 2112;
            v264 = v98;
            v265 = 1024;
            v266 = v101;
            _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_INFO, "filterByEnhancedRules uuidWithBlobAndMask session:%s device:%s uuid:%s rssi:%d (%@%d?) data:%s blob:%s mask:%s match:%d matchMap[%@]:%d ignoreDupsMap[%@]:%d", __p, 0x7Au);
            if (v233 < 0)
            {
              operator delete(v231);
            }

            if (v235 < 0)
            {
              operator delete(v234[0]);
            }

            if (v237 < 0)
            {
              operator delete(v236[0]);
            }

            if (v254 < 0)
            {
              operator delete(v252[0]);
            }

            if (v269 < 0)
            {
              operator delete(v267);
            }

            if (out[23] < 0)
            {
              operator delete(*out);
            }

            if (SHIBYTE(v271) < 0)
            {
              operator delete(v270);
            }

LABEL_172:
          }
        }

        else if (v87)
        {
          v102 = v202 + 232;
          if (*(v202 + 255) < 0)
          {
            v102 = *loga;
          }

          memset(out, 0, sizeof(out));
          uuid_unparse_upper(a2, out);
          sub_100007E30(&v270, out);
          if (v271 >= 0)
          {
            v103 = &v270;
          }

          else
          {
            v103 = v270;
          }

          v255 = *(v66 + 20);
          v256 = *(v66 + 9);
          sub_10003B85C(&v255, out);
          if (out[23] >= 0)
          {
            v104 = out;
          }

          else
          {
            v104 = *out;
          }

          sub_10000C250((v67 + 7), &v267);
          if (v269 >= 0)
          {
            v105 = &v267;
          }

          else
          {
            v105 = v267;
          }

          sub_10000C250((v66 + 40), v252);
          v201 = v105;
          v216 = v86;
          if (v254 >= 0)
          {
            v106 = v252;
          }

          else
          {
            v106 = v252[0];
          }

          sub_10000C250((v66 + 56), v236);
          if (v237 >= 0)
          {
            v107 = v236;
          }

          else
          {
            v107 = v236[0];
          }

          v211 = *v66;
          v207 = *v66;
          v108 = v207;
          sub_100007E30(v234, [v207 UTF8String]);
          v231 = v234;
          v109 = *(sub_10009A0E8(&v249, v234) + 56);
          v98 = *v66;
          v110 = *v66;
          v111 = v110;
          sub_100007E30(&v231, [v110 UTF8String]);
          v251 = &v231;
          v112 = *(sub_10009A0E8(&v247, &v231) + 56);
          *__p = 136317698;
          *&__p[4] = v102;
          *&__p[12] = 2080;
          *&__p[14] = v103;
          *&__p[22] = 2080;
          *v258 = v104;
          *&v258[8] = 2080;
          *v259 = v201;
          *&v259[8] = 2080;
          *&v259[10] = v106;
          *&v259[18] = 2080;
          *&v259[20] = v107;
          *&v259[28] = 1024;
          *&v259[30] = v228;
          *&v259[34] = 2112;
          *&v259[36] = v211;
          *&v259[44] = 1024;
          *&v259[46] = v109;
          *&v259[50] = 2112;
          *v260 = v98;
          *&v260[8] = 1024;
          *&v260[10] = v112;
          _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_INFO, "filterByEnhancedRules uuidWithBlobAndMask session:%s device:%s uuid:%s data:%s blob:%s mask:%s match:%d matchMap[%@]:%d ignoreDupsMap[%@]:%d", __p, 0x64u);
          if (v233 < 0)
          {
            operator delete(v231);
          }

          if (v235 < 0)
          {
            operator delete(v234[0]);
          }

          if (v237 < 0)
          {
            operator delete(v236[0]);
          }

          if (v254 < 0)
          {
            operator delete(v252[0]);
          }

          if (v269 < 0)
          {
            operator delete(v267);
          }

          if (out[23] < 0)
          {
            operator delete(*out);
          }

          if (SHIBYTE(v271) < 0)
          {
            operator delete(v270);
          }

          goto LABEL_172;
        }

        v113 = v67[1];
        if (v113)
        {
          do
          {
            v114 = v113;
            v113 = *v113;
          }

          while (v113);
        }

        else
        {
          do
          {
            v114 = v67[2];
            v12 = *v114 == v67;
            v67 = v114;
          }

          while (!v12);
        }

        v67 = v114;
        if (v114 == v220)
        {
          goto LABEL_179;
        }
      }
    }

LABEL_180:
    v115 = *(v202 + 8);
    v116 = *(v115 + 120);
    v117 = *(v115 + 128);
    v118 = v209;
    if (v116 != v117)
    {
      while (*(v116 + 104) != 2)
      {
        v116 += 112;
        if (v116 == v117)
        {
          goto LABEL_238;
        }
      }

      v217 = sub_10000C5E0(*(v209 + 8) + 48);
      v212 = sub_10000C5F8(*(v209 + 8) + 48);
      if (v217 >= 2 && *v212 != 76)
      {
        v270 = 0uLL;
        v271 = 0;
        sub_1007B410C(*(v202 + 8), &v270);
        v221 = *(&v270 + 1);
        v120 = v270;
        if (v270 != *(&v270 + 1))
        {
          v229 = *v212;
          do
          {
            if (v229 == *(v120 + 16))
            {
              if (sub_10000D26C(v120 + 40))
              {
                v225 = 1;
              }

              else
              {
                v121 = sub_10000D26C(v120 + 56);
                v122 = v217 == 2 || v121;
                if ((v122 & 1) == 0)
                {
                  v123 = sub_10000C5E0(v120 + 40);
                  v124 = sub_10000C5F8(v120 + 56);
                  v125 = sub_10000C5F8(v120 + 40);
                  v121 = sub_1007B3D2C(v125, v212 + 2, v217 - 2, v123, v124, v125);
                }

                v225 = v121;
              }

              v126 = *(v120 + 73);
              v127 = *v120;
              v128 = v127;
              sub_100007E30(__p, [v127 UTF8String]);
              *out = __p;
              *(sub_10009A0E8(&v247, __p) + 56) = v126 != 0;
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              v129 = *v120;
              v130 = v129;
              sub_100007E30(__p, [v129 UTF8String]);
              v131 = sub_10000EEB8(&v249, __p);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              if (v250 == v131)
              {
                v132 = *v120;
                v135 = v132;
                sub_100007E30(__p, [v132 UTF8String]);
                *out = __p;
                *(sub_10009A0E8(&v249, __p) + 56) = v225;
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              else
              {
                v132 = *v120;
                v133 = v132;
                sub_100007E30(__p, [v132 UTF8String]);
                *out = __p;
                v134 = sub_10009A0E8(&v249, __p);
                *(v134 + 56) &= v225;
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              v136 = qword_100BCE918;
              v118 = v209;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
              {
                v137 = v202 + 232;
                if (*(v202 + 255) < 0)
                {
                  v137 = *(v202 + 232);
                }

                memset(out, 0, sizeof(out));
                uuid_unparse_upper(a2, out);
                sub_100007E30(&v267, out);
                if (v269 >= 0)
                {
                  v138 = &v267;
                }

                else
                {
                  v138 = v267;
                }

                v139 = *(v120 + 16);
                sub_10000C704(&v231, v212, v217);
                sub_10000C250(&v231, out);
                if (out[23] >= 0)
                {
                  v140 = out;
                }

                else
                {
                  v140 = *out;
                }

                sub_10000C250(v120 + 40, v252);
                if (v254 >= 0)
                {
                  v141 = v252;
                }

                else
                {
                  v141 = v252[0];
                }

                sub_10000C250(v120 + 56, v236);
                if (v237 >= 0)
                {
                  v142 = v236;
                }

                else
                {
                  v142 = v236[0];
                }

                v143 = *v120;
                v144 = *v120;
                v145 = v144;
                sub_100007E30(v234, [v144 UTF8String]);
                *&v255 = v234;
                v146 = *(sub_10009A0E8(&v249, v234) + 56);
                *__p = 136317442;
                *&__p[4] = v137;
                *&__p[12] = 2080;
                *&__p[14] = v138;
                *&__p[22] = 1024;
                *v258 = v139;
                *&v258[4] = 1024;
                *&v258[6] = v229;
                *v259 = 2080;
                *&v259[2] = v140;
                *&v259[10] = 2080;
                *&v259[12] = v141;
                *&v259[20] = 2080;
                *&v259[22] = v142;
                *&v259[30] = 1024;
                *&v259[32] = v225;
                *&v259[36] = 2112;
                *&v259[38] = v143;
                *&v259[46] = 1024;
                *&v259[48] = v146;
                _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "filterByEnhancedRules NonAppleManufacturerData session:%s device:%s filterMfgrID:%04X payloadMfgrId:%04X payload:%s blob:%s mask:%s match:%d matchMap[%@]:%d", __p, 0x56u);
                if (v235 < 0)
                {
                  operator delete(v234[0]);
                }

                if (v237 < 0)
                {
                  operator delete(v236[0]);
                }

                if (v254 < 0)
                {
                  operator delete(v252[0]);
                }

                if (out[23] < 0)
                {
                  operator delete(*out);
                }

                v231 = &off_100AE0A78;
                if (v232)
                {
                  sub_10000C808(v232);
                }

                if (v269 < 0)
                {
                  operator delete(v267);
                }

                v118 = v209;
              }
            }

            v120 += 112;
          }

          while (v120 != v221);
        }

        *__p = &v270;
        sub_100018458(__p);
      }
    }

LABEL_238:
    v147 = *(v202 + 8);
    for (i = *(v147 + 120); ; i += 112)
    {
      if (i == *(v147 + 128))
      {
        goto LABEL_310;
      }

      if (*(i + 104) == 3)
      {
        break;
      }
    }

    v270 = 0uLL;
    v271 = 0;
    sub_1007B418C(v147, &v270);
    v208 = *(&v270 + 1);
    for (j = v270; j != v208; j += 112)
    {
      v150 = *(v118 + 8);
      if (*(v150 + 39) < 0)
      {
        sub_100008904(__p, *(v150 + 16), *(v150 + 24));
      }

      else
      {
        *__p = *(v150 + 16);
        *&__p[16] = *(v150 + 32);
      }

      if (__p[23] >= 0)
      {
        v151 = __p;
      }

      else
      {
        v151 = *__p;
      }

      v230 = [NSString stringWithUTF8String:v151, v193];
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v222 = *(j + 96);
      v152 = [v222 length];
      if (v152 <= [v230 length])
      {
        v226 = 0;
        v153 = *(j + 80);
        if (v153 > 1)
        {
          if (v153 != 2)
          {
            if (v153 == 1000)
            {
              v155 = *(j + 88);
              if ((v155 & 2) != 0)
              {
                v156 = [v230 compare:v222 options:v155 range:{0, objc_msgSend(v230, "length")}] == 0;
              }

              else
              {
                v156 = [v230 rangeOfString:v222 options:v155 range:{0, objc_msgSend(v230, "length")}] != 0x7FFFFFFFFFFFFFFFLL;
              }

              v226 = v156;
            }

            goto LABEL_285;
          }

          v158 = *(v118 + 8);
          if (*(v158 + 39) < 0)
          {
            sub_100008904(__p, *(v158 + 16), *(v158 + 24));
          }

          else
          {
            *__p = *(v158 + 16);
            *&__p[16] = *(v158 + 32);
          }

          if (__p[23] >= 0)
          {
            v163 = __p;
          }

          else
          {
            v163 = *__p;
          }

          v164 = [NSString stringWithUTF8String:v163];
          v226 = [v164 hasSuffix:v222];

          goto LABEL_283;
        }

        if (!v153)
        {
          v157 = *(v118 + 8);
          if (*(v157 + 39) < 0)
          {
            sub_100008904(__p, *(v157 + 16), *(v157 + 24));
          }

          else
          {
            *__p = *(v157 + 16);
            *&__p[16] = *(v157 + 32);
          }

          if (__p[23] >= 0)
          {
            v161 = __p;
          }

          else
          {
            v161 = *__p;
          }

          v162 = [NSString stringWithUTF8String:v161];
          v226 = [v162 containsString:v222];

LABEL_283:
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          goto LABEL_285;
        }

        if (v153 == 1)
        {
          v154 = *(v118 + 8);
          if (*(v154 + 39) < 0)
          {
            sub_100008904(__p, *(v154 + 16), *(v154 + 24));
          }

          else
          {
            *__p = *(v154 + 16);
            *&__p[16] = *(v154 + 32);
          }

          if (__p[23] >= 0)
          {
            v159 = __p;
          }

          else
          {
            v159 = *__p;
          }

          v160 = [NSString stringWithUTF8String:v159];
          v226 = [v160 hasPrefix:v222];

          goto LABEL_283;
        }
      }

      else
      {
        v226 = 0;
      }

LABEL_285:
      v165 = *(j + 73);
      v166 = *j;
      v167 = v166;
      sub_100007E30(__p, [v166 UTF8String]);
      *out = __p;
      *(sub_10009A0E8(&v247, __p) + 56) = v165 == 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v168 = *j;
      v169 = v168;
      sub_100007E30(__p, [v168 UTF8String]);
      v170 = sub_10000EEB8(&v249, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v250 == v170)
      {
        v171 = *j;
        v174 = v171;
        sub_100007E30(__p, [v171 UTF8String]);
        *out = __p;
        *(sub_10009A0E8(&v249, __p) + 56) = v226;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      else
      {
        v171 = *j;
        v172 = v171;
        sub_100007E30(__p, [v171 UTF8String]);
        *out = __p;
        v173 = sub_10009A0E8(&v249, __p);
        *(v173 + 56) &= v226;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      v175 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v176 = v202 + 232;
        if (*(v202 + 255) < 0)
        {
          v176 = *(v202 + 232);
        }

        memset(out, 0, sizeof(out));
        uuid_unparse_upper(a2, out);
        sub_100007E30(&v267, out);
        if (v269 >= 0)
        {
          v177 = &v267;
        }

        else
        {
          v177 = v267;
        }

        v213 = *(j + 96);
        v178 = *(j + 80);
        v179 = *(j + 88);
        v218 = *j;
        v180 = *j;
        v181 = v180;
        sub_100007E30(out, [v180 UTF8String]);
        v252[0] = out;
        v182 = *(sub_10009A0E8(&v249, out) + 56);
        v183 = *j;
        v184 = *j;
        v185 = v184;
        sub_100007E30(v252, [v184 UTF8String]);
        v236[0] = v252;
        v186 = *(sub_10009A0E8(&v247, v252) + 56);
        *__p = 136317442;
        *&__p[4] = v176;
        *&__p[12] = 2080;
        *&__p[14] = v177;
        *&__p[22] = 2112;
        *v258 = v213;
        *&v258[8] = 1024;
        *v259 = v178;
        *&v259[4] = 1024;
        *&v259[6] = v179;
        *&v259[10] = 1024;
        *&v259[12] = v226;
        *&v259[16] = 2112;
        *&v259[18] = v218;
        *&v259[26] = 1024;
        *&v259[28] = v182;
        *&v259[32] = 2112;
        *&v259[34] = v183;
        *&v259[42] = 1024;
        *&v259[44] = v186;
        _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_INFO, "filterByEnhancedRules Name session:%s device:%s filterNameSubstr:%@ matchOption:%d NSStringCompareOptions:%d match:%d matchMap[%@]:%d ignoreDupsMap[%@:%d", __p, 0x52u);
        if (v254 < 0)
        {
          operator delete(v252[0]);
        }

        if (out[23] < 0)
        {
          operator delete(*out);
        }

        if (v269 < 0)
        {
          operator delete(v267);
        }
      }

      v118 = v209;
    }

    *__p = &v270;
    sub_100018458(__p);
LABEL_310:
    v187 = v249;
    if (v249 == v250)
    {
LABEL_318:
      v119 = 0;
    }

    else
    {
      while (*(v187 + 56) != 1)
      {
        v188 = v187[1];
        if (v188)
        {
          do
          {
            v189 = v188;
            v188 = *v188;
          }

          while (v188);
        }

        else
        {
          do
          {
            v189 = v187[2];
            v12 = *v189 == v187;
            v187 = v189;
          }

          while (!v12);
        }

        v187 = v189;
        if (v189 == v250)
        {
          goto LABEL_318;
        }
      }

      v190 = v187 + 4;
      *out = v187 + 4;
      *v193 = *(sub_1007B541C(&v247, v187 + 4) + 56);
      if (*(v187 + 55) < 0)
      {
        v190 = *v190;
      }

      v191 = [NSString stringWithUTF8String:v190, v193];
      [v194 setString:v191];

      v119 = *(v187 + 56);
    }

    *__p = &v238;
    sub_100018458(__p);
    *__p = &v241;
    sub_100018458(__p);
    if (v244)
    {
      v245 = v244;
      operator delete(v244);
    }

    sub_10004B61C(&v247, v248[0]);
    sub_10004B61C(&v249, v250[0]);
  }

  return v119 & 1;
}