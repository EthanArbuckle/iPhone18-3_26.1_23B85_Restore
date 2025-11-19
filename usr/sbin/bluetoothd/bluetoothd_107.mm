uint64_t sub_1007C32DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 41) == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008784D0();
    }

    v4 = sub_100046458(off_100B508C8, v3, 0);
    v5 = sub_10009A66C(v4);
    v9 = v5;
    v11 = BYTE6(v5);
    v10 = WORD2(v5);
    v8 = 0;
    sub_1000216B4(&v8);
    v6 = sub_1002DF928(&v9);
    sub_10002249C(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1007C338C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  sub_10002249C(&a12);

  _Unwind_Resume(a1);
}

BOOL sub_1007C33B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 48);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 440, uu2);
  if (a1 + 448 == v4)
  {
    v5 = 0;
  }

  else
  {
    *uu2 = 0;
    v9 = 0;
    sub_1000AFFEC(*(v4 + 56), 17, uu2);
    v5 = sub_10000D26C(uu2);
    *uu2 = &off_100AE0A78;
    if (v9)
    {
      sub_10000C808(v9);
    }
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007C34B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t (**a12)(), atomic_uint *a13)
{
  a12 = &off_100AE0A78;
  if (a13)
  {
    sub_10000C808(a13);
  }

  sub_1000088CC(&a10);

  _Unwind_Resume(a1);
}

id sub_1007C350C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 48);
  v3 = *(a1 + 440);
  if (v3 != (a1 + 448))
  {
    do
    {
      v4 = sub_10004DF60(v3 + 32);
      if (sub_10004EE74(a1, v4))
      {
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v5 = off_100B508C8;
        v6 = sub_10004DF60(v3 + 32);
        LODWORD(v5) = sub_100789678(v5, v6);

        if (!v5)
        {
          goto LABEL_8;
        }

        v4 = sub_10004DF60(v3 + 32);
        [v2 addObject:v4];
      }

LABEL_8:
      v7 = *(v3 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != (a1 + 448));
  }

  sub_1000088CC(v11);

  return v2;
}

void sub_1007C36A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 48);
  v4 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is tagged as a watch", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v5 = sub_100046458(off_100B508C8, v3, 0);
  sub_1007C37DC(a1, v5, 0xAu);
  sub_1000088CC(v6);
}

uint64_t sub_1007C37DC(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 48);
  v5 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C();
    *buf = 67109378;
    *&buf[4] = a3;
    *v23 = 2114;
    *&v23[2] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding keys %d to synced keychain for device %{public}@ tagged as a watch", buf, 0x12u);
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v7 = a3 - 1;
  if (a3 - 1 < 0x10 && ((0x81EFu >> v7) & 1) != 0)
  {
    v8 = dword_1008C5750[v7];
  }

  else if ((a3 & 0xFFFFFFFE) == 0xE)
  {
    v8 = 4;
  }

  else
  {
    v8 = 16;
  }

  v17 = 0;
  v9 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "addKeyToSyncedKeychainForDevice is calling BTKCCopyLEData", buf, 2u);
  }

  v24[0] = 0;
  v24[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, v24);
  sub_10004DF60(v24);

  sub_1003CD4E8(a2, a3, &v20, &v18 + 1, &v17 + 1, &v19, &v18, &v17);
  v10 = HIDWORD(v18);
  if (!HIDWORD(v17) && HIDWORD(v18))
  {
    v11 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v17;
      *v23 = 1024;
      *&v23[2] = v10;
      *&v23[6] = 1024;
      *&v23[8] = v18;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found key in local Keychain syncedStatus=%d localLen=%d syncedLen=%d", buf, 0x14u);
      v10 = HIDWORD(v18);
    }

    if (v10 == v8)
    {
      if (v17 || memcmp(v20, v19, v8))
      {
        *buf = 0;
        *v23 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, buf);
        v12 = sub_10004DF60(buf);
        sub_1003CD11C(a2, v12, a3, v20, HIDWORD(v18), 1);

        v13 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Added Key to synced keychain", v16, 2u);
        }
      }
    }

    else
    {
      v14 = qword_100BCE908;
      if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      *buf = 67109632;
      *&buf[4] = a3;
      *v23 = 1024;
      *&v23[2] = v8;
      *&v23[6] = 1024;
      *&v23[8] = v10;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Ignoring data of invalid length for key type %d - expected %d byte(s), read %d byte(s)", buf, 0x14u);
    }

    v10 = HIDWORD(v18);
  }

LABEL_26:
  if (v10 && v20)
  {
    operator delete[]();
  }

  if (v18 && v19)
  {
    operator delete[]();
  }

  return sub_1000088CC(v21);
}

void sub_1007C3BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007C3BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 48);
  v4 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is untagged as a watch", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v5 = sub_100046458(off_100B508C8, v3, 0);
  sub_1007C3D28(a1, v5, 0xAu);
  sub_1000088CC(v6);
}

uint64_t sub_1007C3D28(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 48);
  v6 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
  {
    v7 = sub_100063D0C();
    *buf = 67109378;
    *&buf[4] = a3;
    LOWORD(v19[0]) = 2114;
    *(v19 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "removing keys %d from synced keychain for device %{public}@ tagged as a watch", buf, 0x12u);

    v6 = qword_100BCE908;
  }

  v15 = 0;
  v16 = 0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "removeKeyFromSyncedKeychainForDevice is calling BTKCCopyLEData", buf, 2u);
  }

  *buf = 0;
  v19[0] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_1000498D4(buf, off_100B508C8, a2, 0, 1, 0, 0);
  sub_10004DF60(buf);

  sub_1003CD4E8(a2, a3, 0, 0, 0, &v16, &v15 + 1, &v15);
  if (!v15 && HIDWORD(v15))
  {
    v8 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found key", v14, 2u);
    }

    v9 = sub_10004DF60(buf);
    sub_1003CD11C(a2, v9, a3, v16, 0, 1);

    v10 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Moved Key", v14, 2u);
    }

    v11 = sub_10004DF60(buf);
    v12 = sub_10004EE74(a1, v11);

    if (!v12)
    {
      if (a3 == 10 && (*(a1 + 41) & 1) != 0)
      {
        sub_100007EE8();
        operator new();
      }

      sub_1003CD6A0(a2, 0, 1);
    }

    if (v16)
    {
      operator delete[]();
    }
  }

  return sub_1000088CC(v17);
}

void sub_1007C4070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1007C40B0(uint64_t a1, _DWORD *a2)
{
  v3 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004D9B0();
    v4 = v11 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing %{public}s from the cache.", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = 0;
  sub_1000216B4(&v9);
  v5 = sub_1002DC938(a2);
  sub_100022214(&v9);
  v6 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004D9B0();
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removed %{public}s from the cache.", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10002249C(&v9);
  return v5 == 0;
}

_BYTE *sub_1007C4298(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setPrivateModeEnabled %d", &v8, 8u);
  }

  v4 = sub_10000C7D0();
  v5 = (*(*v4 + 2168))(v4, a2);
  v6 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109376;
    v9 = a2;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "enable2MBPHYForDenylistedDevices %d returned %d", &v8, 0xEu);
  }

  LOBYTE(v8) = 0;
  sub_1000216B4(&v8);
  sub_1002D24BC(a2);
  sub_100022214(&v8);
  return sub_10002249C(&v8);
}

void sub_1007C443C(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_100878F9C();
  }

  v2 = qword_100B508F8;
  v3 = *(a1 + 32);

  sub_100707D50(v2, v3);
}

void sub_1007C4490(uint64_t a1, __int16 a2)
{
  if (!*(a1 + 626) || (*(a1 + 628) & 1) != 0)
  {
    *(a1 + 626) = a2;
    sub_1007C4298(a1, 1);
    sub_100007EE8();
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878FB0();
  }

  *(a1 + 628) = 1;
  *(a1 + 626) = a2;
}

void sub_1007C459C(id a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100879028();
  }

  v2 = off_100B508A8;

  sub_100762BD8(v2, 1);
}

void sub_1007C45E4(uint64_t a1)
{
  if (*(a1 + 626))
  {
    v2 = *(a1 + 628);
    v3 = qword_100BCE908;
    v4 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
    if (v2 == 1)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Renew private mode.", buf, 2u);
      }

      sub_100007EE8();
      operator new();
    }

    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disable private mode.", buf, 2u);
    }

    *(a1 + 626) = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    if (qword_100B508C0 != -1)
    {
      sub_10087903C();
    }

    v6 = sub_10009DA04(off_100B508B8);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_10078380C(off_100B508C8, v10, @"PrivateModeDevice");
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }

    sub_1007C4298(v11, 0);
    v12 = sub_100007EE8();
    sub_10000CA94(v12, &stru_100B0D918);
  }

  else
  {
    v5 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Private mode has already been disabled. Nothing more to do here", buf, 2u);
    }
  }
}

void sub_1007C48A8(id a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100879028();
  }

  v2 = off_100B508A8;

  sub_100762BD8(v2, 0);
}

void sub_1007C48F0(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 3784) removeObject:?];
  sub_1007BC6D8(a1, v3, 1);
}

uint64_t sub_1007C496C(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int **a4, int a5)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 48);
  v9 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
  {
    sub_100777574();
    v10 = v29 >= 0 ? __p : *__p;
    v11 = a5 ? "YES" : "NO";
    *buf = 136446466;
    *&buf[4] = v10;
    v25 = 2082;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "readKeyForDevice address:%{public}s syncedKeychain:%{public}s", buf, 0x16u);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*__p);
    }
  }

  v21 = 0;
  cf = 0;
  v20 = 0;
  v35[0] = 0;
  v35[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, v35);
  sub_10004DF60(v35);

  v13 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    if (a5)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    do
    {
      v15 = *v13;
      sub_1003CD488(a2, *v13, &v21, &v20 + 1, &v20, a5, &cf);
      v16 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
      {
        sub_100777574();
        v17 = buf;
        if (v27 < 0)
        {
          v17 = *buf;
        }

        *__p = 136447234;
        *&__p[4] = v17;
        *&__p[12] = 2082;
        *&__p[14] = v14;
        v29 = 1024;
        v30 = v15;
        v31 = 1024;
        v32 = v20;
        v33 = 1024;
        v34 = HIDWORD(v20);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "readKeyForDevice BTKCCopyLEDataEx address:%{public}s synced:%{public}s type:%d status:%d dataLen:%d", __p, 0x28u);
        if (v27 < 0)
        {
          operator delete(*buf);
        }
      }

      if (!v20 && HIDWORD(v20))
      {
        v18 = *(a3 + 8);
        sub_10000C704(__p, v21, HIDWORD(v20));
        sub_100481BF4(v18, v15, __p);
        *__p = &off_100AE0A78;
        if (*&__p[8])
        {
          sub_10000C808(*&__p[8]);
        }

        if (v21)
        {
          operator delete[]();
        }
      }

      ++v13;
    }

    while (v13 != v12);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return sub_1000088CC(v23);
}

void sub_1007C4C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007C4CE4(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v35[0] = 0;
  v35[1] = 0;
  sub_100007F88(v35, a1 + 48);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v10 = a4 - 1;
  if (a4 - 1 < 0x10 && ((0x81EFu >> v10) & 1) != 0)
  {
    v11 = dword_1008C5750[v10];
  }

  else if ((a4 & 0xFFFFFFFE) == 0xE)
  {
    v11 = 4;
  }

  else
  {
    v11 = 16;
  }

  v31 = 0;
  v47[0] = 0;
  v47[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, v47);
  sub_10004DF60(v47);

  sub_1003CD4E8(a2, a4, &v34, &v32 + 1, &v31 + 1, &v33, &v32, &v31);
  v12 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
  {
    sub_100777574();
    p_p = __p;
    v14 = "NO";
    if (v30 >= 0)
    {
      p_p = &__p;
    }

    if (a5)
    {
      v14 = "YES";
    }

    *buf = 136447746;
    *&buf[4] = p_p;
    *&buf[12] = 2082;
    *&buf[14] = v14;
    v37 = 1024;
    v38 = a4;
    v39 = 1024;
    v40 = HIDWORD(v32);
    v41 = 1024;
    v42 = HIDWORD(v31);
    v43 = 1024;
    v44 = v32;
    v45 = 1024;
    v46 = v31;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "readKeyForDevice BTKCCopyLEData address:%{public}s syncedKeychain:%{public}s type:%d localLen:%d localStatus:%d syncedLen:%d, SynedStatus:%d", buf, 0x34u);
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  if (!HIDWORD(v31))
  {
    v15 = HIDWORD(v32);
    if (HIDWORD(v32))
    {
      if (HIDWORD(v32) != v11)
      {
        v16 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109632;
          *&buf[4] = a4;
          *&buf[8] = 1024;
          *&buf[10] = v11;
          *&buf[14] = 1024;
          *&buf[16] = v15;
          _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Ignoring data of invalid length for key type %d - expected %d byte(s), read %d byte(s)", buf, 0x14u);
          v11 = HIDWORD(v32);
        }

        else
        {
          v11 = v15;
        }
      }

      v17 = *(a3 + 8);
      sub_10000C704(buf, v34, v11);
      sub_100481BF4(v17, a4, buf);
      *buf = &off_100AE0A78;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }

      if (v31 || !v32)
      {
        if (!v31 || !a5)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (HIDWORD(v32) >= v32)
        {
          v18 = v32;
        }

        else
        {
          v18 = HIDWORD(v32);
        }

        if (!memcmp(v34, v33, v18) || (a5 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      v27 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "storing synced data with the local values", buf, 2u);
      }

      v26 = sub_10004DF60(v47);
      sub_1007C52C0(a1, a2, v26, a3, a4, 1);
LABEL_48:

LABEL_49:
      v19 = v31;
      goto LABEL_50;
    }
  }

  v19 = v31;
  if (!v31)
  {
    v20 = v32;
    if (v32)
    {
      if (v32 != v11)
      {
        v21 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109632;
          *&buf[4] = a4;
          *&buf[8] = 1024;
          *&buf[10] = v11;
          *&buf[14] = 1024;
          *&buf[16] = v20;
          _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Ignoring data of invalid length for key type %d - expected %d byte(s), read %d byte(s)", buf, 0x14u);
          v11 = v32;
        }

        else
        {
          v11 = v20;
        }
      }

      v22 = *(a3 + 8);
      sub_10000C704(buf, v33, v11);
      sub_100481BF4(v22, a4, buf);
      *buf = &off_100AE0A78;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }

      if (a5)
      {
        goto LABEL_49;
      }

      v23 = sub_10004DF60(v47);
      v24 = sub_10004EE74(a1, v23);

      if (!v24)
      {
        goto LABEL_49;
      }

      v25 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "writing local data with the synced values", buf, 2u);
      }

      v26 = sub_10004DF60(v47);
      sub_1007C52C0(a1, a2, v26, a3, a4, 0);
      goto LABEL_48;
    }
  }

LABEL_50:
  if (!v19 && v33)
  {
    operator delete[]();
  }

  if (!HIDWORD(v31) && v34)
  {
    operator delete[]();
  }

  return sub_1000088CC(v35);
}

void sub_1007C523C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007C52C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, int a6)
{
  v11 = a3;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 48);
  v19 = 0;
  v20 = 0;
  sub_1000AFFEC(*(a4 + 8), a5, &v19);
  if (!sub_10000D26C(&v19))
  {
    v12 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "writeKeyForDevice is calling BTKCSetLEData sync=0", v18, 2u);
    }

    v13 = sub_10000C5F8(&v19);
    v14 = sub_10000C5E0(&v19);
    sub_1003CD11C(a2, v11, a5, v13, v14, 0);
    if (a6)
    {
      v15 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "writeKeyForDevice is calling BTKCSetLEData sync=1", v18, 2u);
      }

      v16 = sub_10000C5F8(&v19);
      v17 = sub_10000C5E0(&v19);
      sub_1003CD11C(a2, v11, a5, v16, v17, 1);
    }
  }

  v19 = &off_100AE0A78;
  if (v20)
  {
    sub_10000C808(v20);
  }

  sub_1000088CC(v21);
}

void sub_1007C5470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007C54C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int **a5, int a6)
{
  v11 = a3;
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 48);
  cf = 0;
  v12 = *a5;
  v13 = a5[1];
  if (*a5 != v13)
  {
    v14 = 0;
    do
    {
      v15 = *v12;
      v20 = 0;
      v21 = 0;
      sub_1000AFFEC(*(a4 + 8), v15, &v20);
      if (!sub_10000D26C(&v20))
      {
        v16 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "writeKeyForDevice is calling BTKCSetLEData sync=0", buf, 2u);
        }

        v17 = sub_10000C5F8(&v20);
        v18 = sub_10000C5E0(&v20);
        sub_1003CCCEC(a2, v11, v15, v17, v18, a6, &cf, 0);
        ++v14;
      }

      v20 = &off_100AE0A78;
      if (v21)
      {
        sub_10000C808(v21);
      }

      ++v12;
    }

    while (v12 != v13);
    if (v14)
    {
      sub_1003CCB94(a2, v11, a6, &cf);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  sub_1000088CC(v23);
}

void sub_1007C56B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 48);
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v8 = off_100B508C8;
  sub_100007E30(__p, "IsAppleWatch");
  v9 = sub_10004EB40(v8, v7, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100063D0C();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Writing keys to disk for device %{public}@ (isWatch=%d)", buf, 0x12u);
  }

  sub_1007C52C0(a1, a2, v7, a4, 0xAu, v9);
  memset(buf, 0, sizeof(buf));
  v12 = 0;
  sub_10036F480(buf, &v12);
  v12 = 1;
  sub_10036F480(buf, &v12);
  v12 = 2;
  sub_10036F480(buf, &v12);
  v12 = 3;
  sub_10036F480(buf, &v12);
  v12 = 4;
  sub_10036F480(buf, &v12);
  v12 = 12;
  sub_10036F480(buf, &v12);
  v12 = 15;
  sub_10036F480(buf, &v12);
  v12 = 5;
  sub_10036F480(buf, &v12);
  v12 = 6;
  sub_10036F480(buf, &v12);
  v12 = 7;
  sub_10036F480(buf, &v12);
  v12 = 8;
  sub_10036F480(buf, &v12);
  v12 = 9;
  sub_10036F480(buf, &v12);
  v12 = 13;
  sub_10036F480(buf, &v12);
  v12 = 14;
  sub_10036F480(buf, &v12);
  v12 = 16;
  sub_10036F480(buf, &v12);
  sub_1007C54C0(a1, a2, v7, a4, buf, 0);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  sub_1000088CC(v15);
}

void sub_1007C5988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  sub_1000088CC(&a16);

  _Unwind_Resume(a1);
}

void sub_1007C5A1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 48);
  sub_10004DFB4(buf, v5);
  v6 = sub_10004E34C(a1 + 488, buf);
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  if (sub_100790420(off_100B508C8, v5))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v7 = sub_10078151C(off_100B508C8, v5);
    v8 = v7;
    if (v7)
    {
      *(a3 + 80) |= 8u;
      *(a3 + 44) = 528;
      v9 = v7;
      *(a3 + 28) = *[v8 bytes];
    }

    else if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100879064();
    }

    goto LABEL_17;
  }

  if (a1 + 496 != v6)
  {
    sub_1007B9EFC(a1, v6 + 48, a3);
    v10 = sub_10000E92C();
    v11 = (*(*v10 + 8))(v10);
    v12 = qword_100BCE908;
    v13 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = [NSData dataWithBytes:a3 + 28 length:*(a3 + 44)];
        v15 = *(a3 + 45);
        *buf = 138543874;
        v24 = v5;
        v25 = 2112;
        v26 = v14;
        v27 = 1024;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "using temporary keys for device %{public}@ LocalLTK:%@(type:%d)", buf, 0x1Cu);
      }

      goto LABEL_17;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

    *buf = 138543362;
    v24 = v5;
    v17 = "using temporary keys for device %{public}@";
    v18 = v12;
    v19 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, 0xCu);
    goto LABEL_17;
  }

  sub_10004DFB4(buf, v5);
  v16 = sub_10004E34C(a1 + 440, buf);
  if (a1 + 448 != v16)
  {
    sub_1007B9EFC(a1, v16 + 48, a3);
    goto LABEL_17;
  }

  v20 = *(a1 + 552);
  v21 = qword_100BCE908;
  if (!*(a1 + 552))
  {
    if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 138543362;
    v24 = v5;
    v17 = "No security keys found for device %{public}@";
    v18 = v21;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v5;
    v25 = 1024;
    LODWORD(v26) = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "using default temporary keys for device %{public}@, keyLen %d", buf, 0x12u);
    v20 = *(a1 + 552);
  }

  *(a3 + 44) = v20;
  *(a3 + 45) = 2;
  memcpy((a3 + 28), (a1 + 536), v20);
LABEL_17:
  sub_1000088CC(v22);
}

void sub_1007C5D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007C5DD0(uint64_t a1, unint64_t a2, unsigned int a3, int a4, char a5)
{
  if (qword_100B508D0 != -1)
  {
    sub_1008784D0();
  }

  *uu = 0;
  v53 = 0;
  sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, uu);
  v9 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(uu, out);
    sub_100007E30(__p, out);
    v10 = v45;
    v11 = __p[0];
    v12 = sub_100063D0C();
    v13 = v12;
    v14 = __p;
    if (v10 < 0)
    {
      v14 = v11;
    }

    v15 = "disabled";
    *buf = 136446722;
    if (a4)
    {
      v15 = "enabled";
    }

    v47 = v15;
    v48 = 2082;
    v49 = v14;
    v50 = 2114;
    v51 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Encryption is now %{public}s for device %{public}s (%{public}@)", buf, 0x20u);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4)
  {
    v16 = sub_10004E34C(a1 + 488, uu);
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v17 = off_100B508C8;
    v18 = sub_10004DF60(uu);
    v19 = sub_100790420(v17, v18);

    v20 = sub_10004DF60(uu);
    v21 = sub_10004EE74(a1, v20);

    if (v21)
    {
      v22 = sub_10000C7D0();
      (*(*v22 + 1176))(v22, a2, 1);
    }

    else if (a1 + 496 == v16 && !v19 && !*(a1 + 552) && (a5 & 1) == 0)
    {
      v23 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, out);
        v34 = out[23];
        v35 = *out;
        v36 = sub_100063D0C();
        v37 = v36;
        v38 = out;
        if (v34 < 0)
        {
          v38 = v35;
        }

        *buf = 136446466;
        v47 = v38;
        v48 = 2114;
        v49 = v36;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unexpected encryption state for device %{public}s (%{public}@), disconnecting", buf, 0x16u);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      if (qword_100B508B0 != -1)
      {
        sub_100878554();
      }

      sub_10074CD90(off_100B508A8, uu, 6u);
    }
  }

  if (a3 == 706)
  {
    if (qword_100B508C0 != -1)
    {
      sub_10087903C();
    }

    v24 = off_100B508B8;
    v25 = sub_10004DF60(uu);
    LODWORD(v24) = sub_10004EE74(v24, v25);

    if (v24)
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_1008790D4();
      }

      if (qword_100B50900 != -1)
      {
        sub_100878E74();
      }

      v26 = qword_100B508F8;
      v27 = sub_10004DF60(uu);
      sub_100707D50(v26, v27);
    }
  }

  v28 = sub_10004DF60(uu);
  v29 = *(a1 + 600);
  for (i = *(a1 + 608); v29 != i; ++v29)
  {
    v31 = *v29;
    v32 = sub_100007EE8();
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1007C6330;
    v40[3] = &unk_100AF7DC8;
    v42 = v31;
    v41 = v28;
    v43 = a4;
    sub_10000CA94(v32, v40);
  }

  v33 = sub_10000F034();
  (*(*v33 + 672))(v33, a3, 2);
}

void sub_1007C62A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007C6360(uint64_t a1, unint64_t a2, uint64_t *a3, int a4)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 48);
  *uu = 0;
  v31 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_1000498D4(off_100B508C8, a2, 1u, 1u, 0, 0, uu);
  if (uuid_is_null(uu))
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  v12 = sub_10004E34C(a1 + 488, uu);
  if (a1 + 496 == v12)
  {
    v12 = sub_10004E34C(a1 + 440, uu);
  }

  if (v12 != a1 + 448)
  {
    v13 = *(v12 + 56);
    v25 = &off_100B01470;
    v26 = v13;
    if (v13)
    {
      sub_10000C69C(v13);
      v13 = v26;
    }

    v23 = 0;
    v24 = 0;
    sub_1000AFFEC(v13, 9, &v23);
    v21 = 0;
    v22 = 0;
    sub_1000AFFEC(v26, 8, &v21);
    v19 = 0;
    v20 = 0;
    sub_1000AFFEC(v26, 7, &v19);
    if (sub_10000D26C(&v23) && sub_10000D26C(&v21))
    {
      v28 = 0;
      if (a4)
      {
        v14 = 0;
      }

      else
      {
        v14 = *a3 == 0;
      }

      v15 = v14;
      if ((sub_10000D26C(&v19) || *sub_10000C5F8(&v19) != 2 && *sub_10000C5F8(&v19) != 3) && (v15 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (sub_10000D26C(&v23) || sub_10000D26C(&v21))
      {
        goto LABEL_35;
      }

      v16 = *sub_10000C5F8(&v21);
      v8 = 0;
      v9 = 0;
      if (*a3 != *sub_10000C5F8(&v23) || v16 != a4)
      {
        goto LABEL_37;
      }
    }

    if (!sub_10000D26C(&v19))
    {
      v8 = *sub_10000C5F8(&v19);
      sub_1000AFFEC(v26, 6, &v28);
      sub_10000AE20(&v21, &v28);
      v28 = &off_100AE0A78;
      if (v29)
      {
        sub_10000C808(v29);
      }

      if (!sub_10000D26C(&v21))
      {
        v9 = *sub_10000C5F8(&v21);
        goto LABEL_37;
      }

LABEL_36:
      v9 = 0;
LABEL_37:
      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }

      v21 = &off_100AE0A78;
      if (v22)
      {
        sub_10000C808(v22);
      }

      v23 = &off_100AE0A78;
      if (v24)
      {
        sub_10000C808(v24);
      }

      v25 = &off_100B01470;
      if (v26)
      {
        sub_10000C808(v26);
      }

      goto LABEL_5;
    }

LABEL_35:
    v8 = 0;
    goto LABEL_36;
  }

  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  v17 = off_100B508C8;
  v18 = sub_10004DF60(uu);
  LOBYTE(v17) = sub_100790420(v17, v18);

  if (v17)
  {
    v9 = 16;
    v8 = 2;
  }

  else
  {
    v9 = *(a1 + 552);
    v8 = 2 * (*(a1 + 552) != 0);
  }

LABEL_5:
  v10 = sub_10009A66C(a2);
  LODWORD(v25) = v10;
  BYTE6(v25) = BYTE6(v10);
  WORD2(v25) = WORD2(v10);
  LOBYTE(v23) = 0;
  sub_1000216B4(&v23);
  sub_1002DAA84(&v25, a3, a4, v9, v8);
  sub_10002249C(&v23);
  return sub_1000088CC(v27);
}

void sub_1007C675C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, atomic_uint *a13, uint64_t a14, atomic_uint *a15, uint64_t a16, atomic_uint *a17, char a18, uint64_t a19, uint64_t (**a20)(), atomic_uint *a21)
{
  a20 = &off_100AE0A78;
  if (a21)
  {
    sub_10000C808(a21);
  }

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

  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

_BYTE *sub_1007C6898(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (qword_100B508D0 != -1)
  {
    sub_1008784D0();
  }

  *uu = 0;
  v14 = 0;
  sub_1000498D4(off_100B508C8, a2, 1u, 1u, 0, 0, uu);
  if (!uuid_is_null(uu))
  {
    v4 = sub_10004DF60(uu);
    sub_1007C5A1C(a1, v4, v15);

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v5 = off_100B508C8;
    v6 = sub_10004DF60(uu);
    BYTE2(v16) = sub_1007900F4(v5, v6);
  }

  v7 = sub_10009A66C(a2);
  v10 = v7;
  v12 = BYTE6(v7);
  v11 = WORD2(v7);
  v9 = 0;
  sub_1000216B4(&v9);
  sub_1002DC354(&v10, v15);
  return sub_10002249C(&v9);
}

uint64_t sub_1007C6A30(uint64_t a1, unint64_t a2, int a3, unsigned __int8 *a4, unsigned int a5)
{
  v10 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100063D0C();
    v13[0] = 67109634;
    v13[1] = a3;
    v14 = 1024;
    v15 = a5;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding temporary security keys (type:%d lengh:%d) to device %{public}@", v13, 0x18u);
  }

  return sub_1007C6B44(a1, a2, a3, a4, a5, 1);
}

uint64_t sub_1007C6B44(uint64_t a1, unint64_t a2, int a3, unsigned __int8 *a4, unsigned int a5, int a6)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 48);
  v12 = sub_10009A66C(a2);
  v23 = v12;
  v25 = BYTE6(v12);
  v24 = WORD2(v12);
  v22 = 0;
  sub_1000216B4(&v22);
  v13 = sub_1000E5EA8(&v23);
  sub_100022214(&v22);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (!v13)
  {
    goto LABEL_38;
  }

  if (qword_100B508B0 != -1)
  {
    sub_100878554();
  }

  if (sub_100748908(off_100B508A8, v13, uu))
  {
    goto LABEL_38;
  }

  if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
  {
    sub_100063D0C();
    objc_claimAutoreleasedReturnValue();
    sub_100879150();
  }

  if (!uuid_is_null(uu))
  {
LABEL_38:
    if (!uuid_is_null(uu))
    {
      goto LABEL_16;
    }

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, src);
    uuid_copy(uu, src);
    if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
    {
      sub_100063D0C();
      objc_claimAutoreleasedReturnValue();
      sub_100879194();
    }

    if (!uuid_is_null(uu))
    {
LABEL_16:
      v14 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        v15 = sub_100063D0C();
        v16 = *a4;
        *src = 138544386;
        *&src[4] = v15;
        *&src[12] = 1024;
        *&src[14] = a3;
        v28 = 1024;
        v29 = v16;
        v30 = 1024;
        v31 = a5;
        v32 = 1024;
        v33 = a6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Key generated for %{public}@ type=%d value=%d len=%d temporary=%d", src, 0x24u);
      }

      *src = &off_100B01470;
      *&src[8] = 0;
      if (a6)
      {
        if (a1 + 472 != sub_10004E34C(a1 + 464, uu))
        {
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
          {
            sub_100063D0C();
            objc_claimAutoreleasedReturnValue();
            sub_1008791D8();
          }

          goto LABEL_28;
        }

        if (a1 + 448 != sub_10004E34C(a1 + 440, uu))
        {
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
          {
            sub_100063D0C();
            objc_claimAutoreleasedReturnValue();
            sub_100879224();
          }

          goto LABEL_28;
        }

        v17 = sub_10004E34C(a1 + 488, uu);
        if (a1 + 496 == v17)
        {
          operator new();
        }
      }

      else
      {
        v17 = sub_10004E34C(a1 + 464, uu);
        if (a1 + 472 == v17)
        {
          operator new();
        }
      }

      sub_10000AE20(src, v17 + 48);
LABEL_28:
      v18 = *&src[8];
      if (*&src[8])
      {
        sub_10000C704(&v20, a4, a5);
        sub_100481BF4(v18, a3, &v20);
        v20 = &off_100AE0A78;
        if (v21)
        {
          sub_10000C808(v21);
        }

        *src = &off_100B01470;
        if (*&src[8])
        {
          sub_10000C808(*&src[8]);
        }
      }
    }
  }

  sub_10002249C(&v22);
  return sub_1000088CC(v26);
}

void sub_1007C70C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  if (a21)
  {
    sub_10000C808(a21);
  }

  sub_10002249C(&a14);
  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007C717C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    v5 = v11 >= 0 ? __p : __p[0];
    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing temporary security keys for device %{public}s", out, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10004E34C(a1 + 488, a2);
  if ((a1 + 496) != result)
  {
    v7 = result;
    v8 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *out = 136446210;
      *&out[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found temporary security keys for device %{public}s, removing now.", out, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return sub_1007D1478((a1 + 488), v7);
  }

  return result;
}

uint64_t sub_1007C7334(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4)
{
  v8 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting default LTK security keys (lengh:%d)", buf, 8u);
  }

  *buf = 0;
  v15 = 0;
  sub_100007F88(buf, a1 + 48);
  if (*(a1 + 552))
  {
    v9 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Setting default LTK security keys twice", v13, 2u);
    }

    v10 = 408;
  }

  else
  {
    if (a3 >= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = a3;
    }

    *(a1 + 552) = v11;
    *(a1 + 560) = a4;
    memcpy((a1 + 536), a2, v11);
    v10 = 0;
  }

  sub_1000088CC(buf);
  return v10;
}

uint64_t sub_1007C7480(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    v5 = v18 >= 0 ? __p : __p[0];
    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing temporary IRK for device %{public}s", out, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10004E34C(a1 + 512, a2);
  v7 = result;
  if (a1 + 520 != result)
  {
    v8 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, sizeof(out));
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      v9 = v18 >= 0 ? __p : __p[0];
      *out = 136446210;
      *&out[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found temporary IRK for device %{public}s, removing now.", out, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508C0 != -1)
    {
      sub_10087903C();
    }

    v10 = off_100B508B8;
    sub_1000AFFEC(v7[7], 11, out);
    v11 = sub_10000C5F8(out);
    sub_1007C77C0(v10, v11);
    *out = &off_100AE0A78;
    if (*&out[8])
    {
      sub_10000C808(*&out[8]);
    }

    sub_1007D1478((a1 + 512), v7);
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v12 = off_100B508C8;
    v13 = sub_10004DF60(a2);
    v14 = sub_100046458(v12, v13, 0);

    v15 = sub_10009A66C(v14);
    *out = v15;
    out[6] = BYTE6(v15);
    *&out[4] = WORD2(v15);
    sub_1007C40B0(v15, out);
    v16 = sub_10000C7D0();
    (*(*v16 + 368))(v16, v14, 1);
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    return sub_10078AFD0(off_100B508C8, a2, 0, 1);
  }

  return result;
}

uint64_t sub_1007C77C0(uint64_t result, _DWORD *a2)
{
  v2 = result + 645;
  v3 = 130;
  while (1)
  {
    v4 = *v2 == *a2 && *(v2 + 3) == *(a2 + 3);
    if (v4 && (*(v2 + 7) & 1) != 0)
    {
      break;
    }

    v2 += 24;
    if (!--v3)
    {
      return result;
    }
  }

  *(v2 + 7) = 0;
  sub_1007C40B0(result, a2);
  v5 = *(*sub_10000C7D0() + 368);

  return v5();
}

void sub_1007C78B8(uint64_t a1, unint64_t a2, int a3)
{
  if (*(a1 + 3750) & 1) != 0 || os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT) && (sub_100878850())
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v23[0] = 0;
    v23[1] = 0;
    sub_100007F88(v23, a1 + 48);
    *uu = 0;
    v29 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, uu);
    if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
    {
      sub_100063D0C();
      objc_claimAutoreleasedReturnValue();
      sub_100879270();
    }

    if (!uuid_is_null(uu))
    {
      v8 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(uu, out);
        sub_100007E30(__p, out);
        v9 = "without";
        if (a3)
        {
          v9 = "with";
        }

        if (v22 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136446466;
        v25 = v9;
        v26 = 2082;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Security (%{public}s man-in-the-middle) was requested by device %{public}s", buf, 0x16u);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 = *(a1 + 456);
      if (v11 >= *(a1 + 3768))
      {
        v18 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_100063D0C();
          *out = 134218242;
          *&out[4] = v11;
          *&out[12] = 2114;
          *&out[14] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignoring security request as there are too many paired devices (%lu), disconnecting %{public}@", out, 0x16u);
        }

        *out = 0;
        if (qword_100B508B0 != -1)
        {
          sub_100878554();
        }

        if (sub_1000C4FCC(off_100B508A8, uu, out))
        {
          LOBYTE(__p[0]) = 0;
          sub_1000216B4(__p);
          sub_10029C4C0(*out, 4835);
          sub_100022214(__p);
          sub_10002249C(__p);
        }

        if (qword_100B508B0 != -1)
        {
          sub_100878554();
        }

        sub_10074CD90(off_100B508A8, uu, 8u);
        goto LABEL_10;
      }

      v12 = *(a1 + 592);
      if (v12)
      {
        v13 = sub_10004DF60(uu);
        v14 = (**v12)(v12, v13, 0);

        v15 = qword_100BCE908;
        if (v14)
        {
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
          {
            memset(out, 0, sizeof(out));
            uuid_unparse_upper(uu, out);
            sub_100007E30(__p, out);
            if (v22 >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0];
            }

            *buf = 136446210;
            v25 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Accepting security request from device %{public}s", buf, 0xCu);
            if (v22 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v17 = sub_10004DF60(uu);
          sub_1007C5A1C(a1, v17, v30);

          v6 = 1;
          goto LABEL_9;
        }
      }

      else
      {
        v15 = qword_100BCE908;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 592))
        {
          v20 = "there are no sessions that support it!";
        }

        else
        {
          v20 = "there is no listener";
        }

        *out = 136446210;
        *&out[4] = v20;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring security request as %{public}s", out, 0xCu);
      }
    }

    v6 = 0;
LABEL_9:
    v7 = sub_10009A66C(a2);
    *out = v7;
    out[6] = BYTE6(v7);
    *&out[4] = WORD2(v7);
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_1002DC64C(out, v6, v30);
    sub_10002249C(__p);
LABEL_10:
    sub_1000088CC(v23);
    return;
  }

  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878894();
  }
}

void sub_1007C7DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007C7E18(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 3750) & 1) != 0 || os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT) && (sub_100878850())
  {
    v16[0] = 0;
    v16[1] = 0;
    sub_100007F88(v16, a1 + 48);
    *uu = 0;
    v22 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    sub_1000498D4(off_100B508C8, a2, 1u, 1u, 0, 0, uu);
    if (!uuid_is_null(uu))
    {
      v6 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(uu, out);
        sub_100007E30(__p, out);
        v7 = v18 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received a pairing request from device %{public}s", buf, 0xCu);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v8 = *(a1 + 456);
      if (v8 >= *(a1 + 3768))
      {
        v12 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          v13 = sub_100063D0C();
          *out = 134218242;
          *&out[4] = v8;
          *&out[12] = 2112;
          *&out[14] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring security request as there are too many paired devices (%lu), disconnecting %@", out, 0x16u);
        }

        *out = 0;
        if (qword_100B508B0 != -1)
        {
          sub_100878554();
        }

        if (sub_1000C4FCC(off_100B508A8, uu, out))
        {
          LOBYTE(__p[0]) = 0;
          sub_1000216B4(__p);
          sub_10029C4C0(*out, 4835);
          sub_100022214(__p);
          sub_10002249C(__p);
        }

        if (qword_100B508B0 != -1)
        {
          sub_100878554();
        }

        sub_10074CD90(off_100B508A8, uu, 8u);
        goto LABEL_9;
      }

      v9 = *(a1 + 592);
      if (v9)
      {
        v10 = sub_10004DF60(uu);
        v11 = (**v9)(v9, v10, 0);

        if (v11)
        {
          v4 = 1;
          goto LABEL_6;
        }
      }

      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, out);
        sub_1008792B4();
      }
    }

    v4 = 0;
LABEL_6:
    v5 = sub_10009A66C(a2);
    *buf = v5;
    BYTE2(v20) = BYTE6(v5);
    LOWORD(v20) = WORD2(v5);
    v15 = 0;
    sub_1000216B4(&v15);
    v14 = 0;
    if (!sub_1002E8270(buf, &v14))
    {
      sub_1002DC724(buf, v4, v14 & 4 | v4);
    }

    sub_10002249C(&v15);
LABEL_9:
    sub_1000088CC(v16);
    return;
  }

  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
  {
    sub_100878894();
  }
}

void sub_1007C81BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007C821C(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int *a4)
{
  if ((*(a1 + 3750) & 1) == 0 && (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT) || (sub_100878850() & 1) == 0))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100878894();
    }

    return;
  }

  v8 = *a4;
  *uu = 0;
  v31 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_1000498D4(off_100B508C8, a2, 0, 1u, 0, 0, uu);
  if (uuid_is_null(uu))
  {
    v9 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
    {
      sub_100879320(a2, v9);
    }
  }

  if (uuid_is_null(uu))
  {
    goto LABEL_8;
  }

  v12 = *(a1 + 592);
  if (!v12 || (sub_10004DF60(uu), v13 = objc_claimAutoreleasedReturnValue(), v14 = (**v12)(v12, v13, 0), v13, !v14))
  {
    v17 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_1008793B0(uu, v17);
    }

LABEL_8:
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v10 = sub_10009A66C(a2);
    LODWORD(v24[0]) = v10;
    BYTE6(v24[0]) = BYTE6(v10);
    WORD2(v24[0]) = WORD2(v10);
    v11 = sub_1002DF704(v24);
    sub_100022214(__p);
    if (v11)
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_100063D0C();
        objc_claimAutoreleasedReturnValue();
        sub_100879468();
      }
    }

    sub_10002249C(__p);
    return;
  }

  v15 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 >= 3)
    {
      if (a3 == 4)
      {
        v16 = "Numeric Comparison";
      }

      else
      {
        v16 = "Out-of-band";
      }
    }

    else
    {
      v16 = off_100B0DB78[a3];
    }

    v18 = v24;
    sub_100007E30(v24, v16);
    if (v25 < 0)
    {
      v18 = v24[0];
    }

    memset(out, 0, 37);
    uuid_unparse_upper(uu, out);
    sub_100007E30(__p, out);
    if (v23 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136446466;
    v27 = v18;
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received %{public}s pairing request for device %{public}s", buf, 0x16u);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  v20 = *(a1 + 592);
  v21 = sub_10004DF60(uu);
  (*(*v20 + 8))(v20, v21, a3, v8);
}

void sub_1007C8608(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007C8684;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1007C8684(uint64_t a1)
{
  v1 = *(a1 + 32);
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, v1 + 48);
  v2 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "In showAuthorizationAlert", &buf, 2u);
  }

  if (*(v1 + 3752))
  {
    v3 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v4 = "Already busy with another notification, waiting for the current one to complete";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &buf, 2u);
    }
  }

  else
  {
    if (![*(v1 + 3760) count])
    {
      v3 = qword_100BCE908;
      if (!os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v31);
      }

      LOWORD(buf) = 0;
      v4 = "No more pending devices for AuthorizationAlert";
      goto LABEL_6;
    }

    v27 = [*(v1 + 3760) objectAtIndex:0];
    v5 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v27;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Display Compromised device alert for %{public}@ ", &buf, 0xCu);
    }

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    sub_10004FFDC(off_100B508C8, v27, &buf);
    v6 = v35;
    if ((v35 & 0x80u) != 0)
    {
      v6 = *(&buf + 1);
    }

    if (v6)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      sub_10004FFDC(off_100B508C8, v27, __p);
      if (v30 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v26 = [NSString stringWithUTF8String:v7];
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      sub_100046458(off_100B508C8, v27, 0);
      v26 = sub_100063D0C();
    }

    if (v35 < 0)
    {
      operator delete(buf);
    }

    v8 = sub_10000C798();
    if ((*(*v8 + 352))(v8))
    {
      v9 = sub_10000C798();
      if ((*(*v9 + 400))(v9))
      {
        v10 = @"iPod";
      }

      else
      {
        v11 = sub_10000C798();
        v12 = (*(*v11 + 392))(v11);
        v13 = @"iPhone";
        if (v12)
        {
          v13 = @"iPad";
        }

        v10 = v13;
      }
    }

    else
    {
      v10 = @"iDevice";
    }

    LODWORD(buf) = 0;
    v14 = sub_100438B14(@"COMPROMISED_DEVICE_TITLE", @"Bluetooth Security Alert");
    v15 = sub_100438B14(@"COMPROMISED_DEVICE_ALLOW", @"Allow");
    v16 = sub_100438B14(@"COMPROMISED_DEVICE_DONT_ALLOW", @"Don't Allow");
    v17 = sub_100438B14(@"COMPROMISED_DEVICE_AUTHORIZATION_MESSAGE", @"%@ is trying to connect using an unsecured Bluetooth connection. Unsecured Bluetooth accessories can be used to control your %@ or gain access to your data.");
    v28 = 0;
    v18 = [NSString stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@%@" error:&v28, v26, v10];
    v19 = v28;

    if (v18)
    {
      v32[0] = kCFUserNotificationAlertTopMostKey;
      v32[1] = SBUserNotificationAllowMenuButtonDismissal;
      v33[0] = &__kCFBooleanTrue;
      v33[1] = &__kCFBooleanTrue;
      v32[2] = SBUserNotificationDismissOnLock;
      v32[3] = kCFUserNotificationAlertHeaderKey;
      v33[2] = &__kCFBooleanTrue;
      v33[3] = v14;
      v32[4] = kCFUserNotificationAlertMessageKey;
      v32[5] = kCFUserNotificationDefaultButtonTitleKey;
      v33[4] = v18;
      v33[5] = v16;
      v32[6] = kCFUserNotificationAlternateButtonTitleKey;
      v33[6] = v15;
      v20 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:7];
      v21 = [v20 mutableCopy];

      v22 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &buf, v21);
      *(v1 + 3752) = v22;
      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v22, sub_1007C8D08, 0);
      if (RunLoopSource)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
        CFRelease(RunLoopSource);
      }

      else
      {
        CFUserNotificationCancel(v22);
        CFRelease(v22);
      }
    }

    else if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_1008794C4();
    }
  }

  return sub_1000088CC(v31);
}

void sub_1007C8D08(uint64_t a1, uint64_t a2)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v3 = off_100B508B8;

  sub_1007C8D5C(v3, a2, a2);
}

void sub_1007C8D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007C8DDC;
  v6[3] = &unk_100AE0860;
  v6[4] = a1;
  v6[5] = a3;
  sub_10000CA94(v5, v6);
}

void sub_1007C8DDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(v2 + 3760) objectAtIndex:0];
  v4 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = "unknown";
    if (!v5)
    {
      v6 = "Disallow";
    }

    v9 = 138543874;
    v10 = v3;
    if (v5 == 1)
    {
      v6 = "Allow";
    }

    v11 = 2082;
    v12 = v6;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User responded to authorization notification for device %{public}@ with %{public}s (%ld) button", &v9, 0x20u);
  }

  v7 = *(a1 + 40);
  if (v7 != 1)
  {
    if (v7)
    {
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
      {
        sub_100879548();
      }
    }

    else
    {
      if (qword_100B508B0 != -1)
      {
        sub_100878554();
      }

      v8 = off_100B508A8;
      sub_10004DFB4(&v9, v3);
      sub_10074CD90(v8, &v9, 7u);
    }
  }

  sub_1007C8FA4(v2, v3);
  CFRelease(*(v2 + 3752));
  *(v2 + 3752) = 0;
  if ([*(v2 + 3760) count])
  {
    sub_1007C8608(v2);
  }
}

void sub_1007C8FA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 3760);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 UUIDString];
        v10 = [v3 UUIDString];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          [*(a1 + 3760) removeObject:v8];
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1007C9134(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 3760);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * v7) UUIDString];
        v9 = [v3 UUIDString];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v12 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v18 = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device '%{public}@' is present in the authorization queue.", buf, 0xCu);
          }

          goto LABEL_15;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device '%{public}@' is not present in the authorization queue, creating device object and adding it to the queue", buf, 0xCu);
  }

  [*(a1 + 3760) addObject:{v3, v13}];
LABEL_15:
}

void sub_1007C936C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_1008784D0();
  }

  v3 = off_100B508C8;
  v7 = sub_10004DF60((a1 + 48));
  v4 = *(*(a1 + 32) + 8);
  v5 = sub_10004DF60((a1 + 48));
  v6 = sub_10004EE74(v2, v5);
  sub_100791DE8(v3, v7, (v4 + 48), v6);
}

uint64_t sub_1007C9470()
{
  if (qword_100B508A0 != -1)
  {
    sub_100879584();
  }

  v0 = *(*off_100B50898 + 64);

  return v0();
}

uint64_t sub_1007C94E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v11 = a2;
  if (sub_1007C33B4(a1, v11))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100879608();
    }

    v12 = 168;
    goto LABEL_34;
  }

  if (sub_1007C32DC(a1, v11))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_ERROR))
    {
      sub_100879598();
    }

    v12 = 169;
    goto LABEL_34;
  }

  if ((a6 & 1) != 0 || (v13 = *(a1 + 456), v13 < *(a1 + 3768)))
  {
    sub_10004DFB4(&buf, v11);
    p_buf = &buf;
    v14 = sub_1007D11F4(a1 + 464, &buf);
    sub_10000AE20(v14 + 48, a3);
    if ((*(a4 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(a4 + 8))
      {
LABEL_25:
        sub_1000AFFEC(*(a3 + 8), 11, &buf);
        v17 = sub_10000C5F8(&buf);
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = v17[4];
        v23 = v17[5];
        v28 = v17[6];
        *&buf = &off_100AE0A78;
        if (*(&buf + 1))
        {
          sub_10000C808(*(&buf + 1));
        }

        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v24 = sub_100046458(off_100B508C8, v11, 0);
        if (a5)
        {
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          v25 = sub_100046458(off_100B508C8, v11, 0);
          sub_1007C37DC(a1, v25, 0xAu);
        }

        v26 = sub_100007EE8();
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1007C98F4;
        v29[3] = &unk_100AEC130;
        v29[4] = a1;
        v29[5] = v24;
        v29[6] = (v18 << 48) | (v19 << 40) | (v20 << 32) | (v21 << 24) | (v22 << 16) | (v23 << 8) | v28;
        sub_10000CA94(v26, v29);
        v12 = 0;
        goto LABEL_34;
      }
    }

    else if (!*(a4 + 23))
    {
      goto LABEL_25;
    }

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v15 = off_100B508C8;
    sub_10004DFB4(&buf, v11);
    if (*(a4 + 23) < 0)
    {
      sub_100008904(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v31 = *(a4 + 16);
    }

    sub_100783194(v15, &buf, __p, 2);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_25;
  }

  v16 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring offline pairing request as there are too many paired devices (%lu)", &buf, 0xCu);
  }

  v12 = 180;
LABEL_34:

  return v12;
}

void sub_1007C9884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007C98F4(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  sub_100007E30(&__p, "");
  sub_1007C11A4(v1, v2, v3, 0, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1007C9964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007C9980(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFC00000000000) == 0x1400000000000)
  {
    v4 = sub_10009A66C(a2);
    v24 = v4;
    v26 = BYTE6(v4);
    v25 = WORD2(v4);
    v5 = *(a1 + 440);
    if (v5 == (a1 + 448))
    {
LABEL_16:
      v11 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sub_100063D0C();
        v13 = v12;
        v14 = [v12 UTF8String];
        *buf = 136446210;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "address %{public}s is not tracked by LeDeviceManager, trying other devices now.", buf, 0xCu);
      }

      v15 = a1 + 629;
      v16 = 130;
      while (*(v15 + 23) != 1 || !sub_100045978(&v24, v15))
      {
        v15 += 24;
        if (!--v16)
        {
          v17 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
          {
            v18 = sub_100063D0C();
            v19 = v18;
            v20 = [v18 UTF8String];
            *buf = 136446210;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "address %{public}s could not be resolved.", buf, 0xCu);
          }

          goto LABEL_26;
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      sub_1000498D4(off_100B508C8, (*(v15 + 17) << 40) | (*(v15 + 18) << 32) | (*(v15 + 19) << 24) | (*(v15 + 20) << 16) | (*(v15 + 21) << 8) | *(v15 + 22) | (*(v15 + 16) << 48), 1u, 1u, 0, 0, buf);
      v2 = sub_10004DF60(buf);
    }

    else
    {
      while (1)
      {
        *buf = 0uLL;
        sub_1000AFFEC(*(v5 + 7), 10, buf);
        if (sub_10000D26C(buf) || (v6 = sub_10000C5F8(buf), !sub_100045978(&v24, v6)))
        {
          v7 = 1;
        }

        else
        {
          v2 = sub_10004DF60(v5 + 32);
          v7 = 0;
        }

        *buf = &off_100AE0A78;
        if (*&buf[8])
        {
          sub_10000C808(*&buf[8]);
        }

        if (!v7)
        {
          break;
        }

        v8 = *(v5 + 1);
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
            v9 = *(v5 + 2);
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
        if (v9 == (a1 + 448))
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v21 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_100063D0C();
      *buf = 136446210;
      *&buf[4] = [v22 UTF8String];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "address %{public}s is not resolvable.", buf, 0xCu);
    }

LABEL_26:
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1007C9D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000C7D0();
  if ((*(*v4 + 2504))(v4))
  {
    if (sub_10004EE74(a1, v3))
    {
      if (v3 && *(a1 + 41) == 1)
      {
        *buf = 0uLL;
        sub_100007F88(buf, a1 + 48);
        sub_10004DFB4(&uu2, v3);
        v5 = sub_10004E34C(a1 + 440, &uu2);
        v6 = v5;
        if (a1 + 448 == v5)
        {
          v12 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(uu2) = 138543362;
            *(&uu2 + 4) = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}@ does not have any keys for Fast IRK resolution", &uu2, 0xCu);
          }

          v10 = 1601;
        }

        else
        {
          v7 = sub_10004DF60((v5 + 32));
          v8 = [v7 isEqual:v3];

          if (v8)
          {
            uu2 = 0uLL;
            sub_1000AFFEC(*(v6 + 56), 10, &uu2);
            if (sub_10000D26C(&uu2))
            {
              v9 = qword_100BCE908;
              if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
              {
                v19 = 138543362;
                v20 = v3;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}@ has an empty IRK", &v19, 0xCu);
              }

              v10 = 1601;
            }

            else
            {
              v13 = sub_10000C7D0();
              if (qword_100B508D0 != -1)
              {
                sub_100878270();
              }

              v14 = off_100B508C8;
              v15 = sub_10004DF60((v6 + 32));
              v16 = sub_100046458(v14, v15, 0);
              v17 = sub_10000C5F8(&uu2);
              v10 = (*(*v13 + 376))(v13, v16, v17, 1);
            }

            *&uu2 = &off_100AE0A78;
            if (*(&uu2 + 1))
            {
              sub_10000C808(*(&uu2 + 1));
            }
          }

          else
          {
            v10 = 0;
          }
        }

        sub_1000088CC(buf);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v11 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is not paired", buf, 0xCu);
      }

      v10 = 1600;
    }
  }

  else
  {
    v10 = 1602;
  }

  return v10;
}

void sub_1007CA094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007CA114(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    sub_10004DFB4(buf, v5);
    if (a1 + 520 == sub_10004E34C(a1 + 512, buf))
    {
      v12 = *(a1 + 41);
      if (v12 == 1)
      {
        operator new();
      }

      v13 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 138543618;
        *&buf[1] = v5;
        v15 = 1024;
        LODWORD(v16) = v12;
        v8 = "Unable to configure IRK for %{public}@ since fStarted = %d";
        v9 = v13;
        v10 = 18;
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 528);
        buf[0] = 134218242;
        *&buf[1] = v7;
        v15 = 2114;
        v16 = v5;
        v8 = "IRK is already configured size=%zu, %{public}@ ";
        v9 = v6;
        v10 = 22;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    v11 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138543362;
      *&buf[1] = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device is nil in setTemporaryIrkForAddress IRK%{public}@ ", buf, 0xCu);
    }
  }
}

void sub_1007CA50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007CA58C(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    v27[0] = 0;
    v27[1] = 0;
    sub_100007F88(v27, a1 + 48);
    v7 = a1 + 629;
    v8 = 130;
    do
    {
      v9 = *(v7 + 16) == *a2 && *(v7 + 19) == *(a2 + 3);
      if (v9 && *(v7 + 23) == 1)
      {
        *a3 = *v7;
        v3 = 1;
        goto LABEL_37;
      }

      v7 += 24;
      --v8;
    }

    while (v8);
    v10 = *(a1 + 440);
    v11 = (a1 + 448);
    if (v10 == (a1 + 448))
    {
      v3 = 0;
    }

    else
    {
      do
      {
        v12 = objc_autoreleasePoolPush();
        v25 = 0;
        v26 = 0;
        sub_1000AFFEC(v10[7], 10, &v25);
        sub_1000AFFEC(v10[7], 11, &v23);
        v13 = sub_10000C5F8(&v23);
        v23 = &off_100AE0A78;
        if (v24)
        {
          sub_10000C808(v24);
        }

        v14 = sub_10000D26C(&v25);
        if (v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = 1;
        }

        if ((v15 & 1) == 0 && (*v13 == *a2 ? (v16 = *(v13 + 3) == *(a2 + 3)) : (v16 = 0), v16))
        {
          v20 = sub_10000C5F8(&v25);
          v21 = sub_10000C5E0(&v25);
          memcpy(a3, v20, v21);
          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        v25 = &off_100AE0A78;
        if (v26)
        {
          sub_10000C808(v26);
        }

        objc_autoreleasePoolPop(v12);
        if (!v17)
        {
          break;
        }

        v18 = v10[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v10[2];
            v9 = *v19 == v10;
            v10 = v19;
          }

          while (!v9);
        }

        v10 = v19;
      }

      while (v19 != v11);
      v3 = v17 ^ 1u;
    }

LABEL_37:
    sub_1000088CC(v27);
  }

  return v3;
}

void sub_1007CA79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_10000C808(a5);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1007CA820(uint64_t a1, void *a2, void *a3, _BYTE *a4, unint64_t *a5)
{
  v9 = a2;
  if (!sub_10004EE74(a1, v9))
  {
    v10 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v9;
      v11 = "Device %{public}@ isn't paired";
      goto LABEL_10;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (!sub_1007C33B4(a1, v9))
  {
    v10 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v9;
      v11 = "Device %{public}@ isn't bonded";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (sub_1007C32DC(a1, v9))
  {
    v10 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v9;
      v11 = "Device %{public}@ pairing at the moment, keys are not complete yet";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v44[0] = 0;
  v44[1] = 0;
  sub_100007F88(v44, a1 + 48);
  sub_10004DFB4(buf, v9);
  v14 = sub_10004E34C(a1 + 440, buf);
  if (a1 + 448 == v14)
  {
    v17 = qword_100BCE908;
    v12 = 0;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device %{public}@ does not have any keys", buf, 0xCu);
      v12 = 0;
    }
  }

  else
  {
    v15 = *(v14 + 56);
    v42 = &off_100B01470;
    v43 = v15;
    if (v15)
    {
      sub_10000C69C(v15);
      v15 = v43;
    }

    v40 = 0;
    v41 = 0;
    sub_1000AFFEC(v15, 10, &v40);
    if (sub_10000D26C(&v40))
    {
      v16 = qword_100BCE908;
      v12 = 0;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v46 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device %{public}@ does not have an IRK", buf, 0xCu);
        v12 = 0;
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      sub_1000AFFEC(v43, 11, &v38);
      v33 = sub_10000D26C(&v38);
      if (v33)
      {
        v18 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v46 = v9;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device %{public}@ does not have an identity address", buf, 0xCu);
        }
      }

      else
      {
        v32 = *(sub_10000C5F8(&v38) + 1);
        v19 = *(sub_10000C5F8(&v38) + 2);
        v20 = *(sub_10000C5F8(&v38) + 3);
        v21 = *(sub_10000C5F8(&v38) + 4);
        v22 = *(sub_10000C5F8(&v38) + 5);
        v23 = *(sub_10000C5F8(&v38) + 6);
        *a5 = (v32 << 40) | (v19 << 32) | (v20 << 24) | (v21 << 16) | (v22 << 8) | v23 | (*sub_10000C5F8(&v38) << 48);
        v24 = sub_10000C5F8(&v40);
        v25 = sub_10000C5E0(&v40);
        memcpy(a3, v24, v25);
        *a4 = sub_10000C5E0(&v40);
        v26 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *a5;
          sub_10000C250(&v38, v36);
          v28 = v37;
          v29 = v36[0];
          sub_10000C250(&v40, __p);
          v30 = v36;
          if (v28 < 0)
          {
            v30 = v29;
          }

          if (v35 >= 0)
          {
            v31 = __p;
          }

          else
          {
            v31 = __p[0];
          }

          *buf = 138544130;
          v46 = v9;
          v47 = 2048;
          v48 = v27;
          v49 = 2080;
          v50 = v30;
          v51 = 2080;
          v52 = v31;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "device %{public}@ address:%lld identity:%s IRK:%s", buf, 0x2Au);
          if (v35 < 0)
          {
            operator delete(__p[0]);
          }

          if (v37 < 0)
          {
            operator delete(v36[0]);
          }
        }
      }

      v12 = !v33;
      v38 = &off_100AE0A78;
      if (v39)
      {
        sub_10000C808(v39);
      }
    }

    v40 = &off_100AE0A78;
    if (v41)
    {
      sub_10000C808(v41);
    }

    v42 = &off_100B01470;
    if (v43)
    {
      sub_10000C808(v43);
    }
  }

  sub_1000088CC(v44);
LABEL_12:

  return v12;
}

void sub_1007CAD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, atomic_uint *a21, uint64_t a22, atomic_uint *a23, uint64_t a24, atomic_uint *a25, char a26)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_10000C808(a21);
  }

  if (a23)
  {
    sub_10000C808(a23);
  }

  if (a25)
  {
    sub_10000C808(a25);
  }

  sub_1000088CC(&a26);

  _Unwind_Resume(a1);
}

uint64_t sub_1007CAE38(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0xFFC00000000000) == 0x1400000000000)
  {
    v5 = sub_10009A66C(a2);
    v28 = v5;
    v30 = BYTE6(v5);
    v29 = WORD2(v5);
    *v32 = 0uLL;
    sub_100007F88(v32, a1 + 48);
    v6 = *(a1 + 440);
    if (v6 == (a1 + 448))
    {
LABEL_13:
      v11 = a1 + 629;
      v12 = 130;
      do
      {
        if (*(v11 + 23) == 1 && sub_100045978(&v28, v11))
        {
          v17 = 0;
          v20 = *(v11 + 16);
          v21 = *(v11 + 20);
          *(a3 + 6) = *(v11 + 22);
          *(a3 + 4) = v21;
          *a3 = v20;
          goto LABEL_29;
        }

        v11 += 24;
        --v12;
      }

      while (v12);
      v13 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_100063D0C();
        v15 = v14;
        v16 = [v14 UTF8String];
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "address %{public}s could not be resolved.", &buf, 0xCu);
      }

      v17 = 114;
    }

    else
    {
      while (1)
      {
        buf = 0uLL;
        sub_1000AFFEC(v6[7], 10, &buf);
        if (!sub_10000D26C(&buf))
        {
          v7 = sub_10000C5F8(&buf);
          if (sub_100045978(&v28, v7))
          {
            break;
          }
        }

        *&buf = &off_100AE0A78;
        if (*(&buf + 1))
        {
          sub_10000C808(*(&buf + 1));
        }

        v8 = v6[1];
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
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
        if (v9 == (a1 + 448))
        {
          goto LABEL_13;
        }
      }

      sub_1000AFFEC(v6[7], 11, &v26);
      v22 = sub_10000C5F8(&v26);
      v26 = &off_100AE0A78;
      if (v27)
      {
        sub_10000C808(v27);
      }

      v23 = *v22;
      v24 = *(v22 + 4);
      *(a3 + 6) = *(v22 + 6);
      *(a3 + 4) = v24;
      *a3 = v23;
      *&buf = &off_100AE0A78;
      if (*(&buf + 1))
      {
        sub_10000C808(*(&buf + 1));
      }

      v17 = 0;
    }

LABEL_29:
    sub_1000088CC(v32);
  }

  else
  {
    v18 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_100063D0C();
      *v32 = 136446210;
      *&v32[4] = [v19 UTF8String];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "address %{public}s is not resolvable.", v32, 0xCu);
    }

    return 114;
  }

  return v17;
}

void sub_1007CB168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, atomic_uint *a4, uint64_t a5, uint64_t a6, atomic_uint *a7, ...)
{
  va_start(va, a7);
  if (a4)
  {
    sub_10000C808(a4);
  }

  if (a7)
  {
    sub_10000C808(a7);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CB20C(uint64_t a1, uint64_t a2, int a3, _OWORD *a4, _OWORD *a5, int a6, int a7, uint64_t a8)
{
  v16 = qword_100BCE908;
  v17 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v17)
    {
      sub_100777574();
      v18 = v32 >= 0 ? v31 : *v31;
      *buf = 136316675;
      *&buf[4] = v18;
      *&buf[12] = 1041;
      *&buf[14] = 16;
      *&buf[18] = 2097;
      *&buf[20] = a4;
      *&buf[28] = 1041;
      *&buf[30] = 16;
      *&buf[34] = 2097;
      *&buf[36] = a5;
      *&buf[44] = 1024;
      *&buf[46] = a6;
      *&buf[50] = 1024;
      *&buf[52] = a7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LeSecurityManager::classicDevicePaired CTKD Device address:%s LTK:%{private}.16P IRK:%{private}.16P useH7:%d Auth:%d", buf, 0x38u);
      if (v32 < 0)
      {
        operator delete(*v31);
      }
    }

    v19 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    v20 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    *v19 = *a5;
    *v20 = *a4;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4812000000;
    *&buf[24] = sub_1007CB5A8;
    *&buf[32] = sub_1007CB5C4;
    *&buf[40] = "";
    *&buf[56] = 0;
    v30 = 0;
    *&buf[48] = 0;
    if (*(a8 + 23) < 0)
    {
      sub_100008904(&buf[48], *a8, *(a8 + 8));
    }

    else
    {
      *&buf[48] = *a8;
      v30 = *(a8 + 16);
    }

    v23 = sub_100007EE8();
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1007CB5D8;
    v26[3] = &unk_100B0D978;
    v27 = a7;
    v28 = a6;
    v26[6] = a2;
    v26[7] = v19;
    v26[8] = v20;
    v26[4] = buf;
    v26[5] = a1;
    sub_10000CA94(v23, v26);
    _Block_object_dispose(buf, 8);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*&buf[48]);
    }
  }

  else
  {
    if (v17)
    {
      sub_100777574();
      v21 = buf[23] >= 0 ? buf : *buf;
      *v31 = 136315138;
      *&v31[4] = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LeSecurityManager::classicDevicePaired Non CTKD Device address:%s", v31, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (_os_feature_enabled_impl())
    {
      v22 = sub_100007EE8();
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1007CB9D4;
      v25[3] = &unk_100AE0860;
      v25[4] = a1;
      v25[5] = a2;
      sub_10000CA94(v22, v25);
    }
  }

  return 0;
}

void sub_1007CB578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  _Block_object_dispose(&a25, 8);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CB5A8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void sub_1007CB5C4(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t sub_1007CB5D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, v2 + 48);
  v26[0] = 0;
  v26[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_1000498D4(off_100B508C8, *(a1 + 48), 1u, 1u, 0, 0, v26);
  v3 = sub_10004DF60(v26);
  v4 = sub_10004EE74(v2, v3);

  if (!v4)
  {
    *(v24 + 3) = 0;
    v24[0] = 0;
    v5 = sub_10009A66C(*(a1 + 48));
    v24[0] = v5;
    BYTE2(v24[1]) = BYTE6(v5);
    LOWORD(v24[1]) = WORD2(v5);
    v23 = 16;
    if (*(a1 + 72))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v22 = v6;
    if (*(a1 + 73))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v21 = v7;
    sub_1007C6B44(v2, *(a1 + 48), 10, *(a1 + 56), 0x10u, 0);
    v8 = *(a1 + 48);
    sub_10000C704(&__p, v24, 7uLL);
    v9 = sub_10000C5F8(&__p);
    sub_1007C6B44(v2, v8, 11, v9, 7u, 0);
    __p.__r_.__value_.__r.__words[0] = &off_100AE0A78;
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_10000C808(__p.__r_.__value_.__l.__size_);
    }

    sub_1007C6B44(v2, *(a1 + 48), 5, *(a1 + 64), 0x10u, 0);
    sub_1007C6B44(v2, *(a1 + 48), 6, &v23, 1u, 0);
    sub_1007C6B44(v2, *(a1 + 48), 7, &v22, 1u, 0);
    sub_1007C6B44(v2, *(a1 + 48), 16, &v21, 1u, 0);
    v10 = *(a1 + 48);
    sub_100007E30(&__p, "");
    sub_1007C11A4(v2, v10, v10, 0, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v11 = off_100B508C8;
    v12 = *(*(a1 + 32) + 8);
    if (*(v12 + 71) < 0)
    {
      sub_100008904(__dst, *(v12 + 48), *(v12 + 56));
    }

    else
    {
      *__dst = *(v12 + 48);
      v19 = *(v12 + 64);
    }

    sub_100783194(v11, v26, __dst, 2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    v13 = off_100B508C8;
    v14 = sub_10004DF60(v26);
    sub_100007E30(v16, "_CTKD_");
    sub_10078787C(v13, v14, v16);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  free(*(a1 + 56));
  free(*(a1 + 64));
  return sub_1000088CC(v25);
}

void sub_1007CB91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v29 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CB9D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, v2 + 48);
  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_10003E228(off_100B508C8, &off_100B346D8);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v7 = off_100B508C8;
        sub_100007E30(v15, "DA_ASK_RETAIN_DEVICE");
        if (sub_10004EB40(v7, v6, v15))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          v8 = off_100B508C8;
          sub_100007E30(__p, "_CTKD_");
          v9 = sub_10004EB40(v8, v6, __p) ^ 1;
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v9 = 0;
        }

        if (v16 < 0)
        {
          operator delete(v15[0]);
          if (!v9)
          {
            goto LABEL_29;
          }
        }

        else if (!v9)
        {
          goto LABEL_29;
        }

        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v10 = sub_10078928C(off_100B508C8, v6, @"ASK_RELATED_RADIO_ADDRESS");
        if (*(a1 + 40) == sub_100777FF4(v10))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_1007893AC(off_100B508C8, v6, @"ASK_LINKED_RADIO_ADDRESS", v10);
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_1007893AC(off_100B508C8, v6, @"ASK_RELATED_RADIO_ADDRESS", 0);
        }

LABEL_29:
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v3);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100878270();
  }

  sub_100784864(off_100B508C8, 0);

  return sub_1000088CC(v21);
}

uint64_t sub_1007CBD30(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1007774DC();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trying to unpair classic device %{public}@ ctkd:%d", buf, 0x12u);
  }

  if (a2)
  {
    *buf = 0;
    *&buf[8] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100878270();
    }

    sub_1000498D4(buf, off_100B508C8, a2, 0, 1, 0, 0);
    if (uuid_is_null(buf))
    {
      return 101;
    }

    if (a3)
    {
      v9 = sub_10004DF60(buf);
      v10 = sub_10004EE74(a1, v9);

      if (v10)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v11 = off_100B508C8;
        v12 = sub_10004DF60(buf);
        sub_100007E30(__p, "_CTKD_");
        v13 = sub_10004EB40(v11, v12, __p);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (v13)
        {
          v14 = qword_100BCE908;
          if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing _CTKD_ Tag", v25, 2u);
          }

          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          v15 = off_100B508C8;
          v16 = sub_10004DF60(buf);
          sub_10078380C(v15, v16, @"_CTKD_");

          v17 = sub_100007EE8();
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3321888768;
          v28[2] = sub_1007CC10C;
          v28[3] = &unk_100AEDE90;
          v28[4] = a1;
          uuid_copy(v29, buf);
          sub_10000D334(v17, v28);
        }
      }
    }

    else
    {
      result = _os_feature_enabled_impl();
      if (!result)
      {
        return result;
      }

      if (qword_100B508D0 != -1)
      {
        sub_100878270();
      }

      v18 = off_100B508C8;
      v19 = sub_10004DF60(buf);
      sub_100007E30(v23, "_CTKD_");
      v20 = sub_10004EB40(v18, v19, v23);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if ((v20 & 1) == 0)
      {
        v21 = sub_100007EE8();
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1007CC178;
        v22[3] = &unk_100AE0860;
        v22[4] = a1;
        v22[5] = a2;
        sub_10000CA94(v21, v22);
      }
    }
  }

  return 0;
}

void sub_1007CC10C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10004DF60((a1 + 40));
  sub_1007C2AA4(v1, v2);
}

void sub_1007CC178(uint64_t a1)
{
  v13 = *(a1 + 32);
  if (qword_100B508D0 != -1)
  {
    sub_1008784D0();
  }

  v2 = sub_10003E228(off_100B508C8, &off_100B346F0);
  v3 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found LE Devices linked with classic radios:%@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (qword_100B508D0 != -1)
        {
          sub_100878270();
        }

        v8 = sub_10078928C(off_100B508C8, v7, @"ASK_LINKED_RADIO_ADDRESS");
        v9 = sub_100777FF4(v8);
        v10 = qword_100BCE908;
        if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
        {
          sub_100777574();
          v11 = buf;
          if (v20 < 0)
          {
            v11 = *buf;
          }

          *v21 = 138412547;
          v22 = v7;
          v23 = 2081;
          v24 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ has linked address %{private}s", v21, 0x16u);
          if (v20 < 0)
          {
            operator delete(*buf);
          }
        }

        if (*(a1 + 40) == v9)
        {
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_1007893AC(off_100B508C8, v7, @"ASK_LINKED_RADIO_ADDRESS", 0);
          if (qword_100B508D0 != -1)
          {
            sub_100878270();
          }

          sub_1007893AC(off_100B508C8, v7, @"ASK_RELATED_RADIO_ADDRESS", 0);
          if (sub_10004EE74(v13, v7))
          {
            v12 = qword_100BCE908;
            if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v7;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unpairing LE device %@", buf, 0xCu);
            }

            sub_1007C2AA4(v13, v7);
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_100878270();
            }

            sub_10078380C(off_100B508C8, v7, @"DA_ASK_RETAIN_DEVICE");
            if (qword_100B508D0 != -1)
            {
              sub_100878270();
            }

            sub_100782C70(off_100B508C8, v7);
          }

          goto LABEL_35;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v25 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_35:
}

void sub_1007CC578(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_10000C798();
  if ((*(*v3 + 368))(v3))
  {
    v9 = 0;
    if (qword_100B508B0 != -1)
    {
      sub_100879028();
    }

    v4 = off_100B508A8;
    sub_10004DFB4(buf, v2);
    if (sub_1000C4FCC(v4, buf, &v9))
    {
      v8 = 0;
      sub_1000216B4(&v8);
      v5 = sub_1001990A4(v9);
      v6 = qword_100BCE908;
      v7 = os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          *buf = 138543362;
          v11 = v2;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not disabled CTKD for device %{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (v7)
        {
          *buf = 138543362;
          v11 = v2;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Disabled CTKD for device %{public}@", buf, 0xCu);
        }

        sub_1002E832C(v9, 1);
      }

      sub_10002249C(&v8);
    }
  }
}

void sub_1007CC744()
{
  v0 = sub_10000E92C();
  if ((*(*v0 + 176))(v0))
  {
    v1 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "checkCTDebugVectors started", buf, 2u);
    }
  }

  v2 = sub_10000E92C();
  if ((*(*v2 + 176))(v2))
  {
    v3 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "checkCTDebugVectors completed!", v4, 2u);
    }
  }
}

uint64_t sub_1007CC840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v5 = sub_1007CC8C0(a1, v7, 0x10uLL, 0);
  return sub_1007CCB2C(v5, v7, 0, a2, a3);
}

uint64_t sub_1007CC8C0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v7 = sub_1007CD89C(a1) ^ 1 | a4;
  v8 = ((CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970) / 600.0) / *(a1 + 32) * *(a1 + 32);
  v9 = sub_10000E92C();
  if ((*(*v9 + 184))(v9))
  {
    v10 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 36);
      v20 = 67109632;
      v21 = v8;
      v22 = 1024;
      *v23 = v11;
      *&v23[4] = 1024;
      *&v23[6] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "getCurrentTEK interval=%d fENIntervalNumber=%d fEKRollingPeriod=%d", &v20, 0x14u);
    }
  }

  if ((v7 & 1) != 0 || v8 >= *(a1 + 32) + *(a1 + 36) || ![*(a1 + 24) count] || v8 < *(a1 + 36))
  {
    *(a1 + 36) = v8;
    v13 = sub_1007CDBE8(a1, v8);
    sub_1007CDD24(a1, v13);
  }

  v14 = [*(a1 + 24) objectAtIndex:0];
  v15 = v14;
  if (a3 >= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = a3;
  }

  [v14 getBytes:a2 length:v16];

  v17 = sub_10000E92C();
  if ((*(*v17 + 184))(v17))
  {
    v18 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 68157954;
      v21 = 16;
      v22 = 2096;
      *v23 = a2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "getCurrentTEK returning %.16P", &v20, 0x12u);
    }
  }

  return 0;
}

uint64_t sub_1007CCB2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = 3;
  if (a4 && a5 == 16)
  {
    if (!a3)
    {
      CFAbsoluteTimeGetCurrent();
    }

    ENRPIKDerive();
    ENRPIDerive();
    return 0;
  }

  return result;
}

uint64_t sub_1007CCBEC(uint64_t a1)
{
  v2 = sub_10000E92C();
  if ((*(*v2 + 176))(v2))
  {
    v3 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Erasing TEK History", v7, 2u);
    }
  }

  v4 = +[NSMutableArray array];
  v5 = *(a1 + 24);
  *(a1 + 24) = v4;

  sub_1003CDC24(12);
  sub_1007CCCD4(a1);
  if (qword_100B54770 != -1)
  {
    sub_100879678();
  }

  return sub_10050F1E8(off_100B54768);
}

uint64_t sub_1007CCCD4(uint64_t a1)
{
  v2 = sub_10000E92C();
  if ((*(*v2 + 184))(v2) && os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
  {
    sub_1008796A0();
  }

  v3 = [*(a1 + 24) count];
  LOWORD(v11) = 22 * v3;
  if (22 * v3)
  {
    v4 = malloc_type_malloc((22 * v3), 0x100004077774924uLL);
    bzero(v4, v11);
    if ([*(a1 + 24) count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v4[v6] = 21;
        v7 = v6 + 1;
        v8 = [*(a1 + 24) objectAtIndex:v5];
        [v8 getBytes:&v4[v7] length:21];

        v6 = v7 + 21;
        ++v5;
      }

      while ([*(a1 + 24) count] > v5);
    }

    if (sub_1003CDA10(0xEu, v4, v11))
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_100879718();
      }
    }

    else
    {
      v9 = sub_1003CDA10(0xDu, &v11, 2u);
      if (!v9)
      {
LABEL_22:
        free(v4);
        return v9;
      }

      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_100879788();
      }
    }

    v9 = 1;
    goto LABEL_22;
  }

  if (sub_1003CDC24(14) && os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
  {
    sub_100879718();
  }

  if (!sub_1003CDA10(0xDu, &v11, 2u))
  {
    return 0;
  }

  if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
  {
    sub_100879788();
  }

  return 1;
}

id sub_1007CCF40(uint64_t a1, char a2, int a3)
{
  if (a3)
  {
    sub_1007CD014(a1);
    if (*(a1 + 41) == 1)
    {
      if (qword_100B54770 != -1)
      {
        sub_1008797F8();
      }

      if (*(off_100B54768 + 10))
      {
        sub_1007CD2D8(a1);
      }
    }
  }

  sub_1007CD3F0(a1);
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1007CD89C(a1);
  }

  if ([*(a1 + 24) count])
  {
    v6 = [*(a1 + 24) subarrayWithRange:{v5, objc_msgSend(*(a1 + 24), "count") - v5}];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

uint64_t sub_1007CD014(uint64_t a1)
{
  if (sub_1007CD89C(a1))
  {
    memset(&v16[1], 0, 13);
    v2 = (a1 + 24);
    v3 = [*(a1 + 24) objectAtIndex:{0, 0, 0}];
    [v3 getBytes:v16 length:21];

    v4 = LOBYTE(v16[2]);
    LODWORD(v3) = BYTE1(v16[2]);
    v5 = BYTE2(v16[2]);
    v6 = BYTE3(v16[2]);
    Current = CFAbsoluteTimeGetCurrent();
    v8 = sub_10000E92C();
    v9 = ((Current + kCFAbsoluteTimeIntervalSince1970) / 600.0) - (v4 | (v3 << 8) | (v5 << 16) | (v6 << 24));
    if ((*(*v8 + 184))(v8) && os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
    {
      sub_100879848();
    }

    if (v9 < *(a1 + 32))
    {
      BYTE4(v16[2]) = ((kCFAbsoluteTimeIntervalSince1970 + CFAbsoluteTimeGetCurrent()) / 600.0) - v4 + 1;
      v10 = sub_10000E92C();
      if ((*(*v10 + 184))(v10) && os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
      {
        sub_1008798B8();
      }

      [*v2 removeObjectAtIndex:0];
      v11 = *v2;
      v12 = [NSData dataWithBytes:v16 length:21];
      [v11 insertObject:v12 atIndex:0];

      v13 = sub_10000E92C();
      if ((*(*v13 + 184))(v13) && os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
      {
        sub_10087993C();
      }
    }
  }

  else
  {
    v14 = sub_10000E92C();
    if ((*(*v14 + 184))(v14) && os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
    {
      sub_10087980C();
    }
  }

  return 0;
}

uint64_t sub_1007CD2D8(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_1007CC8C0(a1, v7, 0x10uLL, 1);
  v1 = sub_10000E92C();
  if ((*(*v1 + 184))(v1))
  {
    v2 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 68157954;
      v4[1] = 16;
      v5 = 2096;
      v6 = v7;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "forceRefreshTEK new TEK:%.16P", v4, 0x12u);
    }
  }

  if (qword_100B54770 != -1)
  {
    sub_100879678();
  }

  return sub_10050F1E8(off_100B54768);
}

uint64_t sub_1007CD3F0(uint64_t a1)
{
  obj = +[NSMutableArray array];
  Current = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 32);
  v3 = sub_10000E92C();
  v4 = ((Current + kCFAbsoluteTimeIntervalSince1970) / 600.0) / v2 * v2 - 2016;
  if ((*(*v3 + 184))(v3) && os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
  {
    sub_1008799B4();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = *(a1 + 24);
  locationa = (a1 + 24);
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v7)
  {
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = v10;
        v12 = *([v10 bytes] + 16);
        v13 = v10;
        v14 = *([v10 bytes] + 17);
        v15 = v10;
        v16 = *([v10 bytes] + 18);
        v17 = v10;
        v18 = *([v10 bytes] + 19);
        v19 = sub_10000E92C();
        v20 = v12 | (v14 << 8) | (v16 << 16) | (v18 << 24);
        if ((*(*v19 + 184))(v19))
        {
          v21 = qword_100BCEA20;
          if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413058;
            v38 = v10;
            v39 = 1024;
            v40 = v20;
            v41 = 1024;
            v42 = v4;
            v43 = 1024;
            v44 = v20 - v4;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "maintainTEKList key:%@ ENIN:%d oldestInterval:%d delta:%d", buf, 0x1Eu);
          }
        }

        if (v20 <= v4)
        {
          v24 = sub_10000E92C();
          if ((*(*v24 + 184))(v24))
          {
            v25 = qword_100BCEA20;
            if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v38 = v10;
              _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "dropping %@ as its too old", buf, 0xCu);
            }
          }
        }

        else
        {
          v22 = sub_10000E92C();
          if ((*(*v22 + 184))(v22))
          {
            v23 = qword_100BCEA20;
            if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v38 = v10;
              _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "keeping %@", buf, 0xCu);
            }
          }

          [obj addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v7);
  }

  objc_storeStrong(locationa, obj);
  v26 = sub_10000E92C();
  if ((*(*v26 + 184))(v26))
  {
    v27 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_INFO))
    {
      v28 = *locationa;
      *buf = 138412290;
      v38 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "updated list of keys:%@", buf, 0xCu);
    }
  }

  return 0;
}

id sub_1007CD89C(uint64_t a1)
{
  result = [*(a1 + 24) count];
  if (result)
  {
    v3 = [*(a1 + 24) objectAtIndex:0];
    v4 = [v3 bytes];

    v5 = sub_10000E92C();
    if ((*(*v5 + 184))(v5))
    {
      if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
      {
        sub_100879A34();
      }
    }

    return (*(a1 + 32) == v4[20]);
  }

  return result;
}

uint64_t sub_1007CD970(CFAbsoluteTime a1)
{
  if (a1 == 0.0)
  {
    a1 = CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970;
  }

  return (a1 / 600.0);
}

void sub_1007CD9B0(uint64_t a1, int a2)
{
  [*(a1 + 24) removeAllObjects];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 32);
  v6 = sub_10000E92C();
  if ((*(*v6 + 176))(v6) && os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
  {
    sub_100879AC0();
  }

  v7 = *(a1 + 32);
  if (0x90 / v7 * a2)
  {
    v8 = 0;
    v9 = ((Current + kCFAbsoluteTimeIntervalSince1970) / 600.0) / v5 * v5 - 144 * a2;
    do
    {
      v10 = sub_1007CDBE8(a1, v9 + v7 * v8);
      sub_1007CDD24(a1, v10);
      v11 = *(a1 + 32);
      v12 = sub_10000E92C();
      v9 += v11;
      if ((*(*v12 + 176))(v12))
      {
        v13 = qword_100BCEA20;
        if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109634;
          v15 = v8;
          v16 = 1024;
          v17 = v9;
          v18 = 2112;
          v19 = v10;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "debugFillTEKHistory i:%d interval:%d tek:%@", buf, 0x18u);
        }
      }

      ++v8;
      v7 = *(a1 + 32);
    }

    while (v8 < 0x90 / v7 * a2);
  }
}

id sub_1007CDBE8(uint64_t a1, int a2)
{
  memset(__buf, 0, 21);
  arc4random_buf(__buf, 0x10uLL);
  LODWORD(__buf[2]) = a2;
  BYTE4(__buf[2]) = *(a1 + 32);
  v4 = sub_10000E92C();
  if ((*(*v4 + 184))(v4))
  {
    v5 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 68158210;
      v8[1] = 21;
      v9 = 2096;
      v10 = __buf;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "createTEKForInterval outBuffer %.21P interval:%d", v8, 0x18u);
    }
  }

  v6 = [NSData dataWithBytes:__buf length:21];

  return v6;
}

void sub_1007CDD24(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 24) insertObject:v3 atIndex:0];
  v4 = sub_10000E92C();
  if ((*(*v4 + 184))(v4) && os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEBUG))
  {
    sub_100879B30();
  }

  sub_1007CD3F0(a1);
  sub_1007CCCD4(a1);
}

uint64_t sub_1007CDDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 3;
  if (a2 && a3 && a4)
  {
    if (a5)
    {
      ENRPIMetadataSerialize();
      ENAEMKDerive();
      ENAEMCrypt();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007CDE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v17 = 0;
  v6 = sub_1007CDFF4(a1, a4, a2, a3, &v17);
  if (v6)
  {
    v7 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v19 = v6;
      v8 = "decryptAEM failed with result %d";
      v9 = v7;
      v10 = 8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
    }
  }

  else
  {
    ENRPIMetadataDeserialize();
    v11 = qword_100BCE908;
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_INFO))
    {
      v12 = *a5;
      v13 = a5[1];
      v14 = a5[2];
      v15 = a5[3];
      *buf = 67109888;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      v8 = "decryptAEM majorVersion:%d minorVersion:%d txPower:%d calibrationConfidence:%d";
      v9 = v11;
      v10 = 26;
      goto LABEL_6;
    }
  }

  return v6;
}

uint64_t sub_1007CDFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 3;
  if (a2 && a3 && a4)
  {
    if (a5)
    {
      ENAEMKDerive();
      ENAEMCrypt();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007CE098(uint64_t a1, int a2)
{
  result = 3;
  if ((a2 - 1) <= 0x8F && *(a1 + 32) != a2)
  {
    sub_1007CD014(a1);
    *(a1 + 32) = a2;
    v5 = sub_10000E92C();
    if ((*(*v5 + 184))(v5))
    {
      v6 = qword_100BCEA20;
      if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8[0] = 67109120;
        v8[1] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setEKRollingPeriod new EKRollingPeriod set to %d", v8, 8u);
      }
    }

    sub_1003CDA10(0xBu, (a1 + 32), 4u);
    if (qword_100B54770 != -1)
    {
      sub_100879678();
    }

    sub_10050F1E8(off_100B54768);
    return 0;
  }

  return result;
}

uint64_t sub_1007CE1DC(uint64_t a1, _OWORD *a2, int a3, void *a4)
{
  if (a2 && a3 == 16)
  {
    __chkstk_darwin();
    v8 = 0uLL;
    v9 = 0;
    v10 = 0;
    v6 = sub_1003CD83C(12, &v8, 24, &v10);
    result = 1;
    if (!v6 && v10 == 24)
    {
      result = 0;
      *a2 = v8;
      *a4 = v9;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_100879BB4();
    }

    return 3;
  }

  return result;
}

BOOL sub_1007CE2F4(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 && a3 == 16)
  {
    __chkstk_darwin();
    v6 = *v3;
    v7 = v4;
    return sub_1003CDA10(0xCu, &v6, 0x18u) != 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_100879C24();
    }

    return 1;
  }
}

id sub_1007CE3D4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_opt_new();
    if (v3)
    {
      v4 = [NSNumber numberWithUnsignedInt:1];
      [v3 setObject:v4 forKeyedSubscript:@"instance"];

      v5 = [NSData dataWithBytes:a1 + 224 length:16];
      [v3 setObject:v5 forKeyedSubscript:@"identity"];

      v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 240)];
      [v3 setObject:v6 forKeyedSubscript:@"address"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1007CE4E8(uint64_t a1, const unsigned __int8 **a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v4 = *(v3 + 7);
      v11 = &off_100B01470;
      v12 = v4;
      if (v4)
      {
        sub_10000C69C(v4);
      }

      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, v3 + 32);
      v5 = v12;
      v9 = &off_100B01470;
      v10 = v12;
      if (v12)
      {
        sub_10000C69C(v12);
      }

      sub_1007CE668(v5, dst, &v9);
      v9 = &off_100B01470;
      if (v10)
      {
        sub_10000C808(v10);
      }

      v11 = &off_100B01470;
      if (v12)
      {
        sub_10000C808(v12);
      }

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
    }

    while (v7 != v2);
  }
}

void sub_1007CE668(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  v5 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(&__p, out);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *out = 136446210;
    *&out[4] = p_p;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", out, 0xCu);
    if (v23 < 0)
    {
      operator delete(__p);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 0, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v7 = out;
    }

    else
    {
      v7 = *out;
    }

    *buf = 136315138;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Remote LTK:     %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 1, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v8 = out;
    }

    else
    {
      v8 = *out;
    }

    *buf = 136315138;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Remote LTK len: %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 3, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v9 = out;
    }

    else
    {
      v9 = *out;
    }

    *buf = 136315138;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Remote EDIV:    %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 4, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v10 = out;
    }

    else
    {
      v10 = *out;
    }

    *buf = 136315138;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Remote Rand:    %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 12, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v11 = out;
    }

    else
    {
      v11 = *out;
    }

    *buf = 136315138;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Remote CSRK:    %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 10, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v12 = out;
    }

    else
    {
      v12 = *out;
    }

    *buf = 136315138;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Remote IRK:     %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 11, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v13 = out;
    }

    else
    {
      v13 = *out;
    }

    *buf = 136446210;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Remote Address: %{public}s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 6, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v14 = out;
    }

    else
    {
      v14 = *out;
    }

    *buf = 136315138;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Local LTK len:  %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 5, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v15 = out;
    }

    else
    {
      v15 = *out;
    }

    *buf = 136315138;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Local LTK:      %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 7, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v16 = out;
    }

    else
    {
      v16 = *out;
    }

    *buf = 136315138;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Local LTK type: %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 8, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v17 = out;
    }

    else
    {
      v17 = *out;
    }

    *buf = 136315138;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Local EDIV:     %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 9, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v18 = out;
    }

    else
    {
      v18 = *out;
    }

    *buf = 136315138;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Local Rand:     %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 13, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v19 = out;
    }

    else
    {
      v19 = *out;
    }

    *buf = 136315138;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       Local CSRK:     %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }

    v5 = qword_100BCE908;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000AFFEC(*(a3 + 8), 16, &__p);
    sub_10000C250(&__p, out);
    if (out[23] >= 0)
    {
      v20 = out;
    }

    else
    {
      v20 = *out;
    }

    *buf = 136315138;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       deriveLKLTK:    %s", buf, 0xCu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    __p = &off_100AE0A78;
    if (v22)
    {
      sub_10000C808(v22);
    }
  }
}

void sub_1007CF178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007CF204(uint64_t a1)
{
  v2 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ---------------- LE Security Manager ----------------", buf, 2u);
  }

  v3 = sub_10000E92C();
  v4 = (*(*v3 + 8))(v3);
  v5 = qword_100BCE908;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004D9B0();
      if (v43 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = *__p;
      }

      *buf = 141560323;
      *&buf[4] = 1752392040;
      *&buf[12] = 1041;
      *&buf[14] = 16;
      *&buf[18] = 2097;
      *&buf[20] = a1 + 184;
      *&buf[28] = 1041;
      *&buf[30] = 16;
      *&buf[34] = 2097;
      *&buf[36] = a1 + 200;
      *&buf[44] = 1041;
      *&buf[46] = 16;
      v45 = 2097;
      v46 = a1 + 136;
      v47 = 1041;
      v48 = 16;
      v49 = 2097;
      v50 = a1 + 168;
      v51 = 2081;
      v52 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: IRK=%{private, mask.hash}.16P DHK=%{private}.16P IR=%{private}.16P ER=%{private}.16P fLocalStaticRandomAddress:%{private}s", buf, 0x56u);
      if (v43 < 0)
      {
        operator delete(*__p);
      }

      v5 = qword_100BCE908;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68224515;
      *&buf[4] = 96;
      *&buf[8] = 2097;
      *&buf[10] = a1 + 312;
      *&buf[18] = 1041;
      *&buf[20] = 64;
      *&buf[24] = 2097;
      *&buf[26] = a1 + 248;
      *&buf[34] = 1041;
      *&buf[36] = 16;
      *&buf[40] = 2097;
      *&buf[42] = a1 + 408;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: CloudPrivate=%{private}.96P CloudPublic=%{private}.64P CloudNonce=%{private}.16P", buf, 0x32u);
      v5 = qword_100BCE908;
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 456);
    v8 = *(a1 + 3768);
    *buf = 134218240;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: Paired LE devices: %lu/%d", buf, 0x12u);
  }

  v9 = sub_10000E92C();
  if ((*(*v9 + 184))(v9))
  {
    v10 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 36);
      *buf = 67109376;
      *&buf[4] = v11;
      *&buf[8] = 1024;
      *&buf[10] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump: fEKRollingPeriod:%d fENIntervalNumber:%d", buf, 0xEu);
    }
  }

  v13 = sub_10000E92C();
  if ((*(*v13 + 184))(v13))
  {
    v14 = qword_100BCEA20;
    if (os_log_type_enabled(qword_100BCEA20, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 24) count];
      v16 = *(a1 + 24);
      *buf = 134218242;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "statedump: fTEKArraySize:%zu fTEKArray:%@", buf, 0x16u);
    }
  }

  v17 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump: Out-of-band devices:", buf, 2u);
  }

  v18 = *(a1 + 568);
  v40 = a1;
  v41 = (a1 + 576);
  if (v18 != (a1 + 576))
  {
    do
    {
      v19 = qword_100BCE908;
      if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v18[4], buf);
        v20 = buf;
        if (buf[23] < 0)
        {
          v20 = *buf;
        }

        *__p = 136446210;
        *&__p[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s", __p, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      v21 = v18[5];
      if (v21 != (v18 + 6))
      {
        v22 = qword_100BCE908;
        do
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            memset(buf, 0, 37);
            uuid_unparse_upper(v21 + 32, buf);
            sub_100007E30(__p, buf);
            if (v43 >= 0)
            {
              v23 = __p;
            }

            else
            {
              v23 = *__p;
            }

            *buf = 136446210;
            *&buf[4] = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "statedump:      %{public}s", buf, 0xCu);
            if (v43 < 0)
            {
              operator delete(*__p);
            }

            v22 = qword_100BCE908;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            if (v21[56])
            {
              v24 = "Yes";
            }

            else
            {
              v24 = "No";
            }

            *buf = 136446210;
            *&buf[4] = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "statedump:         Enabled: %{public}s", buf, 0xCu);
            v22 = qword_100BCE908;
          }

          v25 = *(v21 + 1);
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = *(v21 + 2);
              v27 = *v26 == v21;
              v21 = v26;
            }

            while (!v27);
          }

          v21 = v26;
        }

        while (v26 != v18 + 6);
      }

      v28 = v18[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v18[2];
          v27 = *v29 == v18;
          v18 = v29;
        }

        while (!v27);
      }

      v18 = v29;
    }

    while (v29 != v41);
  }

  v30 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "statedump: In-progress keys:", buf, 2u);
  }

  sub_1007CE4E8(v40, (v40 + 464));
  v31 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "statedump: Temporary Security keys:", buf, 2u);
  }

  sub_1007CE4E8(v40, (v40 + 488));
  v32 = qword_100BCE908;
  if (*(v40 + 552))
  {
    if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "statedump: Default Temporary LTK:", buf, 2u);
      v32 = qword_100BCE908;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v40 + 560);
      *buf = 134218499;
      *&buf[4] = v33;
      *&buf[12] = 1041;
      *&buf[14] = 16;
      *&buf[18] = 2097;
      *&buf[20] = v40 + 536;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "statedump: Usecase %lld, TemporaryLTK %{private}.16P", buf, 0x1Cu);
      v32 = qword_100BCE908;
    }
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "statedump: Temporary IRKs:", buf, 2u);
  }

  sub_1007CE4E8(v40, (v40 + 512));
  v34 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "statedump: All IRKs:", buf, 2u);
    v34 = qword_100BCE908;
  }

  for (i = 652; i != 3772; i += 24)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(v40 + i);
      *buf = 68158723;
      *&buf[4] = 7;
      *&buf[8] = 2096;
      *&buf[10] = v40 + i - 7;
      *&buf[18] = 1041;
      *&buf[20] = 16;
      *&buf[24] = 2097;
      *&buf[26] = v40 + i - 23;
      *&buf[34] = 1024;
      *&buf[36] = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "statedump: Device %{bluetooth:BD_ADDR}.7P with IRK %{private}.16P used:%d", buf, 0x28u);
      v34 = qword_100BCE908;
    }
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "statedump: Security keys:", buf, 2u);
  }

  sub_1007CE4E8(v40, (v40 + 440));
  v37 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    v38 = sub_100063D0C();
    *buf = 138543362;
    *&buf[4] = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump: Current user's RSA: %{public}@", buf, 0xCu);
  }

  if (*(v40 + 424) == 1)
  {
    v39 = *(v40 + 432);
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }
  }
}

uint64_t sub_1007CFBAC(uint64_t a1, uint64_t a2, unsigned __int8 *src, uint64_t a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100B0D9A8;
  *(a1 + 16) = a2;
  uuid_copy((a1 + 24), src);
  v6 = *(a4 + 8);
  *(a1 + 40) = &off_100B01470;
  *(a1 + 48) = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  return a1;
}

void *sub_1007CFC34(void *a1)
{
  *a1 = off_100B0D9A8;
  a1[5] = &off_100B01470;
  v2 = a1[6];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1007CFCA0(void *a1)
{
  *a1 = off_100B0D9A8;
  a1[5] = &off_100B01470;
  v1 = a1[6];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

void sub_1007CFD2C(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 16);
  v4 = sub_10004DF60((a1 + 24));
  sub_1007C56B4(v2, v3, v4, a1 + 40);
}

void sub_1007CFE98(unsigned __int8 *a1)
{
  v1 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007D0108;
  v3[3] = &unk_100ADF8F8;
  v3[4] = v1;
  sub_10000CA94(v2, v3);
}

void sub_1007CFF48(unsigned __int8 *a1, int a2, const void *a3, size_t size)
{
  v4 = size;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = *a1;
  if (size >= 0x11 && os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_FAULT))
  {
    sub_100879C94();
  }

  v13 = (v6 << 40) | (v7 << 32) | (v8 << 24) | (v9 << 16) | (v10 << 8) | v11 | (v12 << 48);
  v14 = malloc_type_malloc(v4, 0x100004077774924uLL);
  memcpy(v14, a3, v4);
  v15 = sub_100007EE8();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007D015C;
  v17[3] = &unk_100AEDA80;
  v18 = a2;
  v17[4] = v13;
  v17[5] = v14;
  v19 = v4;
  sub_10000CA94(v15, v17);
}

uint64_t sub_1007D00AC(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);

  return sub_1007C6360(v2, v3, (a1 + 24), v4);
}

_BYTE *sub_1007D0108(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  return sub_1007C6898(v2, v3);
}

void sub_1007D015C(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  sub_1007C6B44(off_100B508B8, *(a1 + 32), *(a1 + 48), *(a1 + 40), *(a1 + 52), 0);
  v2 = *(a1 + 40);

  free(v2);
}

void sub_1007D01C4(unsigned __int8 *a1, char a2)
{
  v3 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007D0414;
  v5[3] = &unk_100AE15D8;
  v5[4] = v3;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_1007D027C(unsigned __int8 *a1)
{
  v1 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007D046C;
  v3[3] = &unk_100ADF8F8;
  v3[4] = v1;
  sub_10000CA94(v2, v3);
}

void sub_1007D032C(unsigned __int8 *a1, int a2, _OWORD *a3)
{
  v5 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v6 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  *v6 = *a3;
  v7 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007D04C0;
  v8[3] = &unk_100AE0880;
  v9 = a2;
  v8[4] = v5;
  v8[5] = v6;
  sub_10000CA94(v7, v8);
}

void sub_1007D0414(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_1007C78B8(v2, v3, v4);
}

void sub_1007D046C(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007C7E18(v2, v3);
}

void sub_1007D04C0(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  sub_1007C821C(off_100B508B8, *(a1 + 32), *(a1 + 48), *(a1 + 40));
  v2 = *(a1 + 40);

  free(v2);
}

void sub_1007D0520(uint64_t a1, int a2, char a3)
{
  *&v17[3] = 0;
  *v17 = 0;
  sub_1002D0158(a1, v17, 0);
  v6 = (v17[1] << 40) | (v17[2] << 32) | (v17[3] << 24) | (v17[4] << 16) | (v17[5] << 8) | v17[6] | (v17[0] << 48);
  v7 = sub_1002DF928(v17);
  v8 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004D9B0();
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 134218754;
    v19 = a1;
    v20 = 1024;
    v21 = a2;
    v22 = 2082;
    v23 = p_p;
    v24 = 1024;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "encryptionStatusChangedCb handle:%p status=%{bluetooth:OI_STATUS}u address=%{public}s isPairing=%d", buf, 0x22u);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  v10 = sub_100007EE8();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007D0938;
  v11[3] = &unk_100AF9DB0;
  v11[4] = v6;
  v12 = a2;
  v13 = a3;
  v14 = v7;
  sub_10000CA94(v10, v11);
}

void sub_1007D06EC(unsigned __int8 *a1, unsigned __int8 *a2, int a3, uint64_t a4, int a5)
{
  if (a2)
  {
    v9 = (a2[1] << 40) | (a2[2] << 32) | (a2[3] << 24) | (a2[4] << 16) | (a2[5] << 8) | a2[6] | (*a2 << 48);
  }

  else
  {
    v9 = 0;
  }

  v10 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v11 = qword_100BCE908;
  if (os_log_type_enabled(qword_100BCE908, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004D9B0();
    sub_10004D9B0();
    v12 = &v20;
    if (v21 < 0)
    {
      v12 = v20;
    }

    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136446722;
    v23 = v12;
    v24 = 2082;
    v25 = p_p;
    v26 = 1024;
    v27 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "smpPairingCompleted address=%{public}s resolvedAddress:%{public}s status=%{bluetooth:OI_STATUS}u", buf, 0x1Cu);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  sub_1002E82C0(255);
  v14 = sub_100007EE8();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007D09A0;
  v15[3] = &unk_100AF6B70;
  v15[4] = v10;
  v15[5] = v9;
  v16 = a3;
  v17 = a5;
  v15[6] = a2;
  v15[7] = a1;
  sub_10000CA94(v14, v15);
}

void sub_1007D0914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D0938(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44) != 0;
  v6 = *(a1 + 45);

  sub_1007C5DD0(v2, v3, v4, v5, v6);
}

void sub_1007D09A0(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  sub_100007E30(&__p, "");
  sub_1007C11A4(v2, v3, v4, v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!*(a1 + 64) && (*(a1 + 40) || !*(a1 + 38)))
  {
    if (qword_100B508C0 != -1)
    {
      sub_10087903C();
    }

    v6 = *(a1 + 48);
    if (!v6)
    {
      v6 = *(a1 + 56);
    }

    sub_1007BCE58(off_100B508B8, v6);
  }
}

void sub_1007D0A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D0AA4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(result + 8) = 1;
  *result = off_100B0DA18;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = a4;
  if (a3)
  {
    operator new[]();
  }

  return result;
}

void *sub_1007D0B20(void *result)
{
  *result = off_100B0DA18;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_1007D0B7C(void *a1)
{
  *a1 = off_100B0DA18;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

uint64_t sub_1007D0BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000C7D0();
  if (v1 == 1)
  {
    v3 = *(*v2 + 368);

    return v3();
  }

  else
  {
    v5 = *(*v2 + 360);

    return v5();
  }
}

void sub_1007D0CCC()
{
  if (qword_100B508C0 != -1)
  {
    sub_100879534();
  }

  v1 = off_100B508B8;

  sub_1007C45E4(v1);
}

void sub_1007D0D78(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1007D0D78(a1, *a2);
    sub_1007D0D78(a1, *(a2 + 1));
    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1007D0DFC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007D0DFC(a1, *a2);
    sub_1007D0DFC(a1, a2[1]);
    a2[6] = &off_100B01470;
    v4 = a2[7];
    if (v4)
    {
      sub_10000C808(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1007D0F4C(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_1007D0FF0();
  }

  return result;
}

void sub_1007D1088(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007D10A4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007D10A4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    __p[6] = &off_100B01470;
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

uint64_t sub_1007D11F4(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_1007D1298();
  }

  return result;
}

void sub_1007D1330(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007D10A4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D134C(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_1007D13F0();
  }

  return result;
}

void sub_1007D1460(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D1478(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  a2[6] = &off_100B01470;
  v4 = a2[7];
  if (v4)
  {
    sub_10000C808(v4);
  }

  operator delete(a2);
  return v3;
}

void sub_1007D161C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  memset(&v24, 0, sizeof(v24));
  sub_100007E30(&v24, "Unknown");
  memset(&v23, 0, sizeof(v23));
  sub_100007E30(&v23, "");
  if (v6)
  {
    v7 = [v6 UUIDString];
    v8 = v7;
    std::string::assign(&v23, [v7 UTF8String]);

    if (qword_100B508D0 != -1)
    {
      sub_100879D14();
    }

    sub_10004FFDC(off_100B508C8, v6, buf);
    if (v31 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    std::string::assign(&v24, v9);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(*buf);
    }
  }

  if ((a2 - 1) > 3)
  {
    v10 = "UnknownEvent";
  }

  else
  {
    v10 = off_100B0DC18[(a2 - 1)];
  }

  std::string::assign(&v25, v10);
  v11 = qword_100BCE9C8;
  if (os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v25.__r_.__value_.__r.__words[0];
    }

    v13 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v23.__r_.__value_.__r.__words[0];
    }

    v14 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v24.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = v12;
    v29 = 2082;
    v30 = v13;
    v31 = 2080;
    v32 = v14;
    v33 = 2082;
    v34 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ThirdParty App Connection Limit exceeded wakeup by LE %s uuid=%{public}s(%s), bundleID=%{public}s", buf, 0x2Au);
  }

  v15 = objc_autoreleasePoolPush();
  v26[0] = @"WakeEventType";
  v16 = [NSNumber numberWithUnsignedInt:a2];
  v27[0] = v16;
  v26[1] = @"BundleID";
  v17 = [NSString stringWithUTF8String:a3];
  v27[1] = v17;
  v26[2] = @"CBUUID";
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v23;
  }

  else
  {
    v18 = v23.__r_.__value_.__r.__words[0];
  }

  v19 = [NSString stringWithUTF8String:v18];
  v27[2] = v19;
  v26[3] = @"DeviceName";
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v24;
  }

  else
  {
    v20 = v24.__r_.__value_.__r.__words[0];
  }

  v21 = [NSString stringWithUTF8String:v20];
  v27[3] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];

  PLLogRegisteredEvent();
  objc_autoreleasePoolPop(v15);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1007D1978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_1007D1A3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (sub_1005FCA68())
  {
    v7 = objc_autoreleasePoolPush();
    v12[0] = @"BundleID";
    v8 = [NSString stringWithUTF8String:a2];
    v13[0] = v8;
    v12[1] = @"Connect";
    v9 = [NSNumber numberWithBool:a3];
    v13[1] = v9;
    v12[2] = @"CBUUID";
    v10 = [v6 UUIDString];
    v13[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

    PLLogRegisteredEvent();
    objc_autoreleasePoolPop(v7);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100879D3C();
  }
}

void sub_1007D1BF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (sub_1005FCA68())
  {
    v7 = @"Unknown";
    if (v6)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100879D70();
      }

      v8 = sub_100791D58(off_100B508C8, v6);
      v9 = [v6 UUIDString];
      if (qword_100B508D0 != -1)
      {
        sub_100879D70();
      }

      sub_10004FFDC(off_100B508C8, v6, __p);
      if (SHIBYTE(v26) < 0)
      {
        v11 = *&__p[8];
        operator delete(*__p);
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else if (HIBYTE(v26))
      {
LABEL_9:
        if (qword_100B508D0 != -1)
        {
          sub_100879D14();
        }

        sub_10004FFDC(off_100B508C8, v6, __p);
        if (v26 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = *__p;
        }

        v7 = [NSString stringWithUTF8String:v10];
        if (SHIBYTE(v26) < 0)
        {
          operator delete(*__p);
        }

        goto LABEL_21;
      }

      v7 = @"Unknown";
    }

    else
    {
      v8 = 0;
      v9 = @"Unknown";
    }

LABEL_21:
    v12 = qword_100BCE9C8;
    if (os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_10077B320(v8);
      v14 = "disconnect";
      *__p = 138544130;
      *&__p[4] = v6;
      if (a3)
      {
        v14 = "connect";
      }

      *&__p[12] = 2080;
      *&__p[14] = v14;
      v26 = 2082;
      v27 = a2;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PowerLogger device %{public}@ %s for bundleIDs %{public}s peerType %s", __p, 0x2Au);
    }

    v15 = objc_autoreleasePoolPush();
    v16 = [NSString stringWithUTF8String:a2, @"BundleID"];
    v24[0] = v16;
    v23[1] = @"Connect";
    v17 = [NSNumber numberWithBool:a3];
    v18 = v17;
    if (v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = @"Unknown";
    }

    v24[1] = v17;
    v24[2] = v19;
    v23[2] = @"CBUUID";
    v23[3] = @"Name";
    if (v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = @"Unknown";
    }

    v24[3] = v20;
    v23[4] = @"PeerType";
    v21 = [NSNumber numberWithUnsignedInt:v8];
    v24[4] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

    PLLogRegisteredEvent();
    objc_autoreleasePoolPop(v15);

    goto LABEL_32;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100879D3C();
  }

LABEL_32:
}

void sub_1007D1F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007D1FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1005FCA68())
  {
    v7 = objc_autoreleasePoolPush();
    v12[0] = @"Duration";
    v8 = [NSNumber numberWithUnsignedInt:a2];
    v13[0] = v8;
    v12[1] = @"PercentageEPAPower";
    v9 = [NSNumber numberWithUnsignedInt:a3];
    v13[1] = v9;
    v12[2] = @"PercentageIPAPower";
    v10 = [NSNumber numberWithUnsignedInt:a4];
    v13[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

    PLLogRegisteredEvent();
    objc_autoreleasePoolPop(v7);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100879D3C();
  }
}

void sub_1007D2180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1005FCA68())
  {
    v11 = objc_autoreleasePoolPush();
    v18[0] = @"Duration";
    v12 = [NSNumber numberWithUnsignedInt:a2];
    v19[0] = v12;
    v18[1] = @"PercentageEPAPowerFirstWindow";
    v13 = [NSNumber numberWithUnsignedInt:a3];
    v19[1] = v13;
    v18[2] = @"PercentageIPAPowerFirstWindow";
    v14 = [NSNumber numberWithUnsignedInt:a4];
    v19[2] = v14;
    v18[3] = @"PercentageEPAPowerSecondWindow";
    v15 = [NSNumber numberWithUnsignedInt:a5];
    v19[3] = v15;
    v18[4] = @"PercentageIPAPowerSecondWindow";
    v16 = [NSNumber numberWithUnsignedInt:a6];
    v19[4] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

    PLLogRegisteredEvent();
    objc_autoreleasePoolPop(v11);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100879D3C();
  }
}

void sub_1007D2398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a6 && *a6)
  {
    v10 = *(a2 + 8);
    v13 = &off_100AE0A78;
    v14 = v10;
    if (v10)
    {
      sub_10000C69C(v10);
    }

    sub_1007D24D4(&v13, a3, a4, a5, a6, 0);
    v13 = &off_100AE0A78;
    v11 = v14;
    if (!v14)
    {
      return;
    }

LABEL_10:
    sub_10000C808(v11);
    return;
  }

  v12 = *(a2 + 8);
  v15 = &off_100AE0A78;
  v16 = v12;
  if (v12)
  {
    sub_10000C69C(v12);
  }

  sub_1007D24D4(&v15, a3, a4, a5, "Unknown", 0);
  v15 = &off_100AE0A78;
  v11 = v16;
  if (v16)
  {
    goto LABEL_10;
  }
}

void sub_1007D24A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D24D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1005FCA68())
  {
    memset(&v30, 0, sizeof(v30));
    if (a2 <= 3)
    {
      if (a2 <= 1)
      {
        if (!a2)
        {
          std::string::assign(&v30, "Others");
LABEL_28:
          context = objc_autoreleasePoolPush();
          v18 = sub_10000C5F8(a1);
          v19 = [NSData dataWithBytes:v18 length:sub_10000C5E0(a1)];
          v20 = v19;
          v21 = &stru_100B0F9E0;
          if (v19)
          {
            v21 = v19;
          }

          v32[0] = v21;
          v31[0] = @"HostWakeReport";
          v31[1] = @"WakeEventType";
          v22 = [NSNumber numberWithUnsignedInt:a2, context];
          v32[1] = v22;
          v31[2] = @"BundleID";
          if (a3)
          {
            v23 = [NSString stringWithUTF8String:a3];
          }

          else
          {
            v23 = @"Unknown";
          }

          v32[2] = v23;
          v31[3] = @"CBUUID";
          if (a4)
          {
            v24 = [NSString stringWithUTF8String:a4];
          }

          else
          {
            v24 = @"Unknown";
          }

          v32[3] = v24;
          v31[4] = @"DeviceName";
          if (a5)
          {
            v25 = [NSString stringWithUTF8String:a5];
          }

          else
          {
            v25 = @"Unknown";
          }

          v32[4] = v25;
          v31[5] = @"PeerType";
          v26 = [NSNumber numberWithUnsignedInt:a6];
          v32[5] = v26;
          v27 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:6];

          if (a5)
          {
          }

          if (a4)
          {
          }

          if (a3)
          {
          }

          PLLogRegisteredEvent();
          objc_autoreleasePoolPop(contexta);
          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          return;
        }

        if (a2 == 1)
        {
          v12 = "Advertising";
          goto LABEL_24;
        }

LABEL_23:
        v12 = "UnknownEvent";
        goto LABEL_24;
      }

      if (a2 == 2)
      {
        v12 = "PassupAdvertising";
      }

      else
      {
        v12 = "Connection";
      }
    }

    else
    {
      if (a2 > 5)
      {
        switch(a2)
        {
          case 6:
            v12 = "RSSIRegionDetection";
            goto LABEL_24;
          case 7:
            v12 = "SensorTracking";
            goto LABEL_24;
          case 8:
            v12 = "WakeEventAAPData";
            goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (a2 == 4)
      {
        v12 = "Data";
      }

      else
      {
        v12 = "Disconnection";
      }
    }

LABEL_24:
    std::string::assign(&v30, v12);
    v13 = qword_100BCE9C8;
    if (os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      v15 = v30.__r_.__value_.__r.__words[0];
      v16 = sub_10077B320(a6);
      *buf = 136447234;
      v17 = &v30;
      if (v14 < 0)
      {
        v17 = v15;
      }

      v34 = v17;
      v35 = 2082;
      v36 = a3;
      v37 = 2082;
      v38 = a4;
      v39 = 2080;
      v40 = a5;
      v41 = 2082;
      v42 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AP wakeup by LE %{public}s bundleID=%{public}s, uuid=%{public}s, deviceName=%s, peerType=%{public}s", buf, 0x34u);
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100879D3C();
  }
}

void sub_1007D28D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007D295C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  sub_100007E30(__p, "Unknown");
  memset(&v18, 0, sizeof(v18));
  sub_100007E30(&v18, "Unknown");
  if (v8)
  {
    v9 = [v8 UUIDString];
    std::string::assign(&v18, [v9 UTF8String]);

    if (qword_100B508D0 != -1)
    {
      sub_100879D14();
    }

    sub_10004FFDC(off_100B508C8, v8, &v16);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v20 = v17;
    if (a2 == 8)
    {
      v10 = 5;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_100879D14();
      }

      v10 = sub_100791D58(off_100B508C8, v8);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a5 + 8);
  v14 = &off_100AE0A78;
  v15 = v11;
  if (v11)
  {
    sub_10000C69C(v11);
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v18;
  }

  else
  {
    v12 = v18.__r_.__value_.__r.__words[0];
  }

  if (v20 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  sub_1007D24D4(&v14, a2, a3, v12, v13, v10);
  v14 = &off_100AE0A78;
  if (v15)
  {
    sub_10000C808(v15);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007D2B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1007D2B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1005FCA68())
  {
    v9 = objc_autoreleasePoolPush();
    v15[0] = @"LegacyDupFilterOverflowReport";
    v10 = [NSNumber numberWithUnsignedChar:a2];
    v16[0] = v10;
    v15[1] = @"ExtDupFilterOverflow";
    v11 = [NSNumber numberWithUnsignedChar:a3];
    v16[1] = v11;
    v15[2] = @"LegacyDupFilterOverflowCnt";
    v12 = [NSNumber numberWithUnsignedShort:a4];
    v16[2] = v12;
    v15[3] = @"ExtDupFilterOverflowCnt";
    v13 = [NSNumber numberWithUnsignedShort:a5];
    v16[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

    PLLogRegisteredEvent();
    objc_autoreleasePoolPop(v9);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100879D3C();
  }
}

void sub_1007D2D68(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_autoreleasePoolPush();
  v18[0] = @"CTScanCount";
  v12 = [NSNumber numberWithUnsignedLongLong:a3];
  v19[0] = v12;
  v18[1] = @"CTScanDuration";
  v13 = [NSNumber numberWithUnsignedLongLong:a4];
  v19[1] = v13;
  v18[2] = @"CTAdvertisingReports";
  v14 = [NSNumber numberWithUnsignedLongLong:a5];
  v19[2] = v14;
  v18[3] = @"NonCTAdvertisingReports";
  v15 = [NSNumber numberWithUnsignedLongLong:a6];
  v19[3] = v15;
  v18[4] = @"CTLastScanTS";
  v16 = [NSNumber numberWithDouble:a1];
  v19[4] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

  PLLogRegisteredEvent();
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_1007D2FD8(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = a1 + 16;
  *a1 = off_100B0DC48;
  *(a1 + 8) = off_100B0DCE0;
  *(a1 + 16) = &off_100B0DD10;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  if (qword_100B50AA0 != -1)
  {
    sub_100879D84();
  }

  sub_100312650(off_100B50A98 + 64, v2);
  v4 = sub_100017E6C();
  sub_1007D736C(v4 + 784, v3);
  if (sub_1007D312C() && sub_1005FCD94())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1007D3244, kRegulatoryDomainUpdateNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return a1;
}

void sub_1007D30F8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007D312C()
{
  if (qword_100BC7D68 != -1)
  {
    sub_100879D98();
  }

  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v1 = "FALSE";
    if (byte_100BC7D61)
    {
      v2 = "TRUE";
    }

    else
    {
      v2 = "FALSE";
    }

    v5 = 136315650;
    if (byte_100BC7D60)
    {
      v1 = "TRUE";
    }

    v6 = v1;
    if (byte_100BC7D60)
    {
      v3 = "TRUE";
    }

    else
    {
      v3 = v2;
    }

    v7 = 2080;
    v8 = v2;
    v9 = 2080;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "PurpleLocation::useRegulatoryDomainForCountryCode() -- enabled = %s -- overrideEnabled = %s -- returning %s", &v5, 0x20u);
  }

  return (byte_100BC7D60 | byte_100BC7D61) & 1;
}

void sub_1007D3244()
{
  v0 = sub_100017F4C();

  sub_10000CA94(v0, &stru_100B0DDA8);
}

void *sub_1007D3278(void *a1)
{
  *a1 = off_100B0DC48;
  a1[1] = off_100B0DCE0;
  v2 = (a1 + 2);
  a1[2] = &off_100B0DD10;
  v3 = sub_100017E6C();
  sub_1007D769C(v3 + 784, v2);
  if (sub_1007D312C() && sub_1005FCD94())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, kRegulatoryDomainUpdateNotification, 0);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_1007D335C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  sub_100879DAC(v1);
  _Unwind_Resume(a1);
}

void sub_1007D338C(void *a1)
{
  sub_1007D3278(a1);

  operator delete();
}

void sub_1007D33C4(id a1)
{
  byte_100BC7D60 = _os_feature_enabled_impl();
  v1 = sub_10000E92C();
  sub_100007E30(buf, "CountryCode");
  sub_100007E30(__p, "UseRegulatoryDomain");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100BC7D61);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100BC7D61)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: overrideEnabled: %s", buf, 0xCu);
  }
}

void sub_1007D3530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007D3574()
{
  if (*(sub_10000C7D0() + 800) < 0x17u)
  {
    return 0;
  }

  v0 = sub_10000C7D0();
  if (sub_1004106D0(v0, 0xBB8u))
  {
    return 0;
  }

  v2 = sub_1000271F0();
  v3 = (v2 - 119) >= 4 && v2 != 258;
  return (v2 - 260) >= 0xC && v3;
}

BOOL sub_1007D3614()
{
  v0 = *(sub_10000C7D0() + 800);
  if (v0 != 22)
  {
    return v0 == 5000;
  }

  v1 = sub_10000C7D0();
  (*(*v1 + 16))(__p);
  if (v6 < 0)
  {
    if (__p[1] == 2)
    {
      v2 = __p[0];
LABEL_8:
      if (*v2 == 13123)
      {
        v3 = 1;
        if ((v6 & 0x80000000) == 0)
        {
          return v3;
        }

        goto LABEL_10;
      }
    }
  }

  else if (v6 == 2)
  {
    v2 = __p;
    goto LABEL_8;
  }

  v3 = 0;
  if (v6 < 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1007D371C(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4, BOOL *a5)
{
  v8 = a2;
  if ([(__CFString *)v8 isEqualToString:@"XZ"])
  {
    *a3 = 0;
    *a4 = 1;
    *a5 = 1;
    goto LABEL_19;
  }

  v9 = sub_1000271F0();
  if (v9 > 162)
  {
    v10 = @"/Library/Application Support/BTServer/countryCodesJ3tv.plist";
    if (v9 == 163 || v9 == 171)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v9 == 50)
    {
      v10 = @"/Library/Application Support/BTServer/countryCodesV39.plist";
      goto LABEL_15;
    }

    if (v9 == 160)
    {
      v10 = @"/Library/Application Support/BTServer/countryCodesXrosV3.0.plist";
      goto LABEL_15;
    }
  }

  v11 = *(sub_10000C7D0() + 800);
  v12 = sub_10000C798();
  v13 = (*(*v12 + 416))(v12);
  if ((v11 - 23) < 0x7B9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 & 1) != 0 || v11 == 22 && (v31 = sub_10000C798(), ((*(*v31 + 456))(v31)))
  {
    v10 = @"/Library/Application Support/BTServer/countryCodes3.plist";
    goto LABEL_15;
  }

  v32 = sub_10000C798();
  if (!(*(*v32 + 392))(v32))
  {
    goto LABEL_31;
  }

  if (sub_1007D3614())
  {
    v10 = @"/Library/Application Support/BTServer/countryCodesiPads_V2.plist";
    goto LABEL_15;
  }

  if ((v11 - 19) < 0x7BD)
  {
    v10 = @"/Library/Application Support/BTServer/countryCodes2.plist";
  }

  else
  {
LABEL_31:
    v10 = @"/Library/Application Support/BTServer/countryCodes.plist";
  }

LABEL_15:
  v15 = [NSURL fileURLWithPath:v10 isDirectory:0 relativeToURL:0];
  v33 = 0;
  v16 = [NSDictionary dictionaryWithContentsOfURL:v15 error:&v33];
  v17 = v33;
  if (v17)
  {
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      v19 = [v17 localizedDescription];
      sub_100879DC4(v19, v42, v18);
    }
  }

  v20 = [(__CFString *)v8 uppercaseString];
  v21 = [v16 objectForKey:v20];

  v22 = [v21 objectForKey:@"CC"];
  *a3 = [v22 intValue];

  v23 = [v21 objectForKey:@"LEFlag"];
  *a4 = [v23 BOOLValue];

  v24 = [v21 objectForKey:@"HDRFlag"];
  *a5 = v24 != 0;

LABEL_19:
  v25 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(__CFString *)v8 isEqualToString:@"XZ"];
    v27 = @"default";
    if (!v26)
    {
      v27 = v8;
    }

    v28 = *a3;
    v29 = *a4;
    v30 = *a5;
    *buf = 138544130;
    v35 = v27;
    v36 = 1024;
    v37 = v28;
    v38 = 1024;
    v39 = v29;
    v40 = 1024;
    v41 = v30;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Country specific power settings for country: %{public}@ CC %d LEFlag %d HDRFlag %d", buf, 0x1Eu);
  }
}

void sub_1007D3B38(uint64_t a1, void *a2, unsigned __int8 *a3, _BYTE *a4, _BYTE *a5)
{
  v7 = a2;
  if ([(__CFString *)v7 isEqualToString:@"XZ"])
  {
    *a3 = 0;
    *(a3 + 1) = -1;
    *(a3 + 9) = -1;
    *(a3 + 2) = -1;
    *a4 = 1;
    goto LABEL_52;
  }

  v45 = v7;
  v8 = sub_10000C798();
  if ((*(*v8 + 416))(v8))
  {
    if (sub_1007D3574())
    {
      if (sub_1007D35D8())
      {
        v9 = @"/Library/Application Support/BTServer/countryCodes5MacV39.plist";
      }

      else
      {
        v42 = sub_1000271F0() - 291;
        if (v42 >= 4)
        {
          v9 = @"/Library/Application Support/BTServer/countryCodes5Mac.plist";
        }

        else
        {
          v9 = off_100B0DDE8[v42];
        }
      }

      goto LABEL_15;
    }

LABEL_11:
    v9 = @"/Library/Application Support/BTServer/countryCodes4.plist";
    goto LABEL_15;
  }

  v10 = sub_10000C798();
  if ((*(*v10 + 392))(v10))
  {
    if (!sub_1007D3574())
    {
      goto LABEL_11;
    }

    if (sub_1007D36DC())
    {
      v9 = @"/Library/Application Support/BTServer/countryCodes5iPadsV2.0.plist";
    }

    else if (sub_1007D35D8())
    {
      v9 = @"/Library/Application Support/BTServer/countryCodes5MacV39.plist";
    }

    else
    {
      v9 = @"/Library/Application Support/BTServer/countryCodes5iPads.plist";
    }
  }

  else if (*(sub_10000C7D0() + 800) == 25)
  {
    v9 = @"/Library/Application Support/BTServer/countryCodes6_CC6.plist";
  }

  else
  {
    v9 = @"/Library/Application Support/BTServer/countryCodes5.plist";
  }

LABEL_15:
  v11 = sub_10000C7D0();
  if (sub_1004106D0(v11, 0xBB8u))
  {
    v12 = @"/Library/Application Support/BTServer/countryCodes_regV3.0_sarV1.10.plist";
  }

  else
  {
    v12 = v9;
  }

  [NSURL fileURLWithPath:v12 isDirectory:0 relativeToURL:0];
  v44 = v53 = 0;
  v13 = [NSDictionary dictionaryWithContentsOfURL:"dictionaryWithContentsOfURL:error:" error:?];
  v46 = 0;
  v47 = v13;
  if (v46)
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      v15 = [v46 localizedDescription];
      sub_100879DC4(v15, v69, v14);
    }
  }

  *a3 = 0;
  *(a3 + 1) = -1;
  *(a3 + 9) = -1;
  *(a3 + 2) = -1;
  v16 = [(__CFString *)v7 uppercaseString];
  v17 = [v13 objectForKey:v16];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v49 objects:v68 count:16];
  if (v19)
  {
    v20 = *v50;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v49 + 1) + 8 * i);
        if ([(__CFString *)v22 isEqualToString:@"ISM 2.4"])
        {
          v23 = [v18 objectForKey:v22];
          *a3 = [v23 unsignedIntValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"SAR"])
        {
          v24 = [v18 objectForKey:v22];
          *a5 = [v24 unsignedIntValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"LE Flag"])
        {
          v25 = [v18 objectForKey:v22];
          *a4 = [v25 BOOLValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"UNII-1"])
        {
          v26 = [v18 objectForKey:v22];
          a3[3] = [v26 unsignedIntValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"UNII-3"])
        {
          v27 = [v18 objectForKey:v22];
          a3[6] = [v27 unsignedIntValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"UNII-4"])
        {
          v28 = [v18 objectForKey:v22];
          a3[9] = [v28 unsignedIntValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"UNII-5"]|| [(__CFString *)v22 isEqualToString:@"UNII-5a"])
        {
          v29 = [v18 objectForKey:v22];
          a3[12] = [v29 unsignedIntValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"UNII-5b"])
        {
          v30 = [v18 objectForKey:v22];
          a3[15] = [v30 unsignedIntValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"UNII-5c"])
        {
          v31 = [v18 objectForKey:v22];
          a3[18] = [v31 unsignedIntValue];
        }

        else if ([(__CFString *)v22 isEqualToString:@"UNII-5d"])
        {
          v32 = [v18 objectForKey:v22];
          a3[21] = [v32 unsignedIntValue];
        }

        else
        {
          log = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v55 = v22;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "PurpleLocation::getCountrySpecificPowerSettingsHRB: Unexpected key: %@", buf, 0xCu);
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v49 objects:v68 count:16];
    }

    while (v19);
  }

  v7 = v45;
LABEL_52:
  v33 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [(__CFString *)v7 isEqualToString:@"XZ"];
    v35 = *a3;
    v36 = @"default";
    v37 = *a5;
    if (!v34)
    {
      v36 = v7;
    }

    v38 = *a4;
    v39 = a3[3];
    v40 = a3[6];
    v41 = a3[12];
    *buf = 138544898;
    v55 = v36;
    v56 = 1024;
    v57 = v35;
    v58 = 1024;
    v59 = v37;
    v60 = 1024;
    v61 = v38;
    v62 = 1024;
    v63 = v39;
    v64 = 1024;
    v65 = v40;
    v66 = 1024;
    v67 = v41;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Country specific power settings for country: %{public}@ ISM 2.4 CC: %d, SAR CC: %d, LEFlag: %d, UNII-1 CC: %d, UNII-3 CC: %d, UNII-5 CC: %d", buf, 0x30u);
  }
}

void sub_1007D4330(uint64_t a1, void *a2, _BYTE *a3, int a4)
{
  v100 = a2;
  if ([v100 isEqualToString:@"XZ"])
  {
    *a3 = 0;
    *(a3 + 1) = -1;
    *(a3 + 9) = -1;
    *(a3 + 2) = -1;
    goto LABEL_170;
  }

  v6 = a4 - 8212;
  if ((a4 - 8212) >= 0x15 || ((0x1916A1u >> v6) & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 1) = -1;
    *(a3 + 9) = -1;
    *(a3 + 2) = -1;
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v157 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PurpleLocation::getCountrySpecificPowerSettingsForProduct: Unexpected product ID: %u", buf, 8u);
    }

    goto LABEL_170;
  }

  v7 = off_100B0DE08[v6];
  *a3 = 0;
  *(a3 + 1) = -1;
  *(a3 + 9) = -1;
  *(a3 + 2) = -1;
  [NSURL fileURLWithPath:v7 isDirectory:0 relativeToURL:0];
  v97 = v145 = 0;
  v99 = [NSDictionary dictionaryWithContentsOfURL:"dictionaryWithContentsOfURL:error:" error:?];
  v98 = 0;
  if (!v98)
  {
    v11 = [v100 uppercaseString];
    v96 = [v99 objectForKey:v11];

    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v13 = sub_10000C7D0();
      v14 = (*(*v13 + 2872))(v13);
      *buf = 138413315;
      *v157 = v100;
      *&v157[8] = 2112;
      *&v157[10] = v96;
      v158 = 2160;
      v159 = 1752392040;
      v160 = 2081;
      v161 = "device supports HRB";
      v162 = 1024;
      v163 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "PurpleLocation::getCountrySpecificPowerSettingsForProduct: countryString: %@, countryCodeDict: %@, %{private, mask.hash}s: %u", buf, 0x30u);
    }

    v15 = sub_10000C7D0();
    if ((*(*v15 + 2872))(v15))
    {
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      obj = v96;
      v16 = [obj countByEnumeratingWithState:&v141 objects:v155 count:16];
      if (!v16)
      {
        goto LABEL_168;
      }

      v101 = *v142;
      *&v17 = 138412290;
      v95 = v17;
      while (1)
      {
        v18 = 0;
        v102 = v16;
        do
        {
          if (*v142 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v141 + 1) + 8 * v18);
          v103 = v18;
          if ([v19 isEqualToString:{@"ISM 2.4", v95}])
          {
            v20 = [obj objectForKey:v19];
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v137 objects:v154 count:16];
            if (!v22)
            {
              goto LABEL_129;
            }

            v23 = *v138;
            while (1)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v138 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v137 + 1) + 8 * i);
                if ([v25 isEqualToString:@"CC Mapping"])
                {
                  v26 = [v21 objectForKey:v25];
                  v27 = [v26 unsignedIntValue];
                  v28 = a3;
                }

                else if ([v25 isEqualToString:@"Low Disabled"])
                {
                  v26 = [v21 objectForKey:v25];
                  v27 = [v26 unsignedIntValue];
                  v28 = a3 + 1;
                }

                else
                {
                  if (![v25 isEqualToString:@"High Disabled"])
                  {
                    continue;
                  }

                  v26 = [v21 objectForKey:v25];
                  v27 = [v26 unsignedIntValue];
                  v28 = a3 + 2;
                }

                *v28 = v27;
              }

              v22 = [v21 countByEnumeratingWithState:&v137 objects:v154 count:16];
              if (!v22)
              {
                goto LABEL_129;
              }
            }
          }

          if ([v19 isEqualToString:@"UNII-1"])
          {
            v29 = [obj objectForKey:v19];
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v21 = v29;
            v30 = [v21 countByEnumeratingWithState:&v133 objects:v153 count:16];
            if (!v30)
            {
              goto LABEL_129;
            }

            v31 = *v134;
            while (1)
            {
              for (j = 0; j != v30; j = j + 1)
              {
                if (*v134 != v31)
                {
                  objc_enumerationMutation(v21);
                }

                v33 = *(*(&v133 + 1) + 8 * j);
                if ([v33 isEqualToString:@"CC Mapping"])
                {
                  v34 = [v21 objectForKey:v33];
                  v35 = [v34 unsignedIntValue];
                  v36 = a3 + 3;
                }

                else if ([v33 isEqualToString:@"Low Disabled"])
                {
                  v34 = [v21 objectForKey:v33];
                  v35 = [v34 unsignedIntValue];
                  v36 = a3 + 4;
                }

                else
                {
                  if (![v33 isEqualToString:@"High Disabled"])
                  {
                    continue;
                  }

                  v34 = [v21 objectForKey:v33];
                  v35 = [v34 unsignedIntValue];
                  v36 = a3 + 5;
                }

                *v36 = v35;
              }

              v30 = [v21 countByEnumeratingWithState:&v133 objects:v153 count:16];
              if (!v30)
              {
                goto LABEL_129;
              }
            }
          }

          if ([v19 isEqualToString:@"UNII-3"])
          {
            v37 = [obj objectForKey:v19];
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v21 = v37;
            v38 = [v21 countByEnumeratingWithState:&v129 objects:v152 count:16];
            if (!v38)
            {
              goto LABEL_129;
            }

            v39 = *v130;
            while (1)
            {
              for (k = 0; k != v38; k = k + 1)
              {
                if (*v130 != v39)
                {
                  objc_enumerationMutation(v21);
                }

                v41 = *(*(&v129 + 1) + 8 * k);
                if ([v41 isEqualToString:@"CC Mapping"])
                {
                  v42 = [v21 objectForKey:v41];
                  v43 = [v42 unsignedIntValue];
                  v44 = a3 + 6;
                }

                else if ([v41 isEqualToString:@"Low Disabled"])
                {
                  v42 = [v21 objectForKey:v41];
                  v43 = [v42 unsignedIntValue];
                  v44 = a3 + 7;
                }

                else
                {
                  if (![v41 isEqualToString:@"High Disabled"])
                  {
                    continue;
                  }

                  v42 = [v21 objectForKey:v41];
                  v43 = [v42 unsignedIntValue];
                  v44 = a3 + 8;
                }

                *v44 = v43;
              }

              v38 = [v21 countByEnumeratingWithState:&v129 objects:v152 count:16];
              if (!v38)
              {
                goto LABEL_129;
              }
            }
          }

          if ([v19 isEqualToString:@"UNII-4"])
          {
            v45 = [obj objectForKey:v19];
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v21 = v45;
            v46 = [v21 countByEnumeratingWithState:&v125 objects:v151 count:16];
            if (!v46)
            {
              goto LABEL_129;
            }

            v47 = *v126;
            while (1)
            {
              for (m = 0; m != v46; m = m + 1)
              {
                if (*v126 != v47)
                {
                  objc_enumerationMutation(v21);
                }

                v49 = *(*(&v125 + 1) + 8 * m);
                if ([v49 isEqualToString:@"CC Mapping"])
                {
                  v50 = [v21 objectForKey:v49];
                  v51 = [v50 unsignedIntValue];
                  v52 = a3 + 9;
                }

                else if ([v49 isEqualToString:@"Low Disabled"])
                {
                  v50 = [v21 objectForKey:v49];
                  v51 = [v50 unsignedIntValue];
                  v52 = a3 + 10;
                }

                else
                {
                  if (![v49 isEqualToString:@"High Disabled"])
                  {
                    continue;
                  }

                  v50 = [v21 objectForKey:v49];
                  v51 = [v50 unsignedIntValue];
                  v52 = a3 + 11;
                }

                *v52 = v51;
              }

              v46 = [v21 countByEnumeratingWithState:&v125 objects:v151 count:16];
              if (!v46)
              {
                goto LABEL_129;
              }
            }
          }

          if ([v19 isEqualToString:@"UNII-5a"])
          {
            v53 = [obj objectForKey:v19];
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v21 = v53;
            v54 = [v21 countByEnumeratingWithState:&v121 objects:v150 count:16];
            if (!v54)
            {
              goto LABEL_129;
            }

            v55 = *v122;
            while (1)
            {
              for (n = 0; n != v54; n = n + 1)
              {
                if (*v122 != v55)
                {
                  objc_enumerationMutation(v21);
                }

                v57 = *(*(&v121 + 1) + 8 * n);
                if ([v57 isEqualToString:@"CC Mapping"])
                {
                  v58 = [v21 objectForKey:v57];
                  v59 = [v58 unsignedIntValue];
                  v60 = a3 + 12;
                }

                else if ([v57 isEqualToString:@"Low Disabled"])
                {
                  v58 = [v21 objectForKey:v57];
                  v59 = [v58 unsignedIntValue];
                  v60 = a3 + 13;
                }

                else
                {
                  if (![v57 isEqualToString:@"High Disabled"])
                  {
                    continue;
                  }

                  v58 = [v21 objectForKey:v57];
                  v59 = [v58 unsignedIntValue];
                  v60 = a3 + 14;
                }

                *v60 = v59;
              }

              v54 = [v21 countByEnumeratingWithState:&v121 objects:v150 count:16];
              if (!v54)
              {
                goto LABEL_129;
              }
            }
          }

          if ([v19 isEqualToString:@"UNII-5b"])
          {
            v61 = [obj objectForKey:v19];
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v21 = v61;
            v62 = [v21 countByEnumeratingWithState:&v117 objects:v149 count:16];
            if (!v62)
            {
              goto LABEL_129;
            }

            v63 = *v118;
            while (1)
            {
              for (ii = 0; ii != v62; ii = ii + 1)
              {
                if (*v118 != v63)
                {
                  objc_enumerationMutation(v21);
                }

                v65 = *(*(&v117 + 1) + 8 * ii);
                if ([v65 isEqualToString:@"CC Mapping"])
                {
                  v66 = [v21 objectForKey:v65];
                  v67 = [v66 unsignedIntValue];
                  v68 = a3 + 15;
                }

                else if ([v65 isEqualToString:@"Low Disabled"])
                {
                  v66 = [v21 objectForKey:v65];
                  v67 = [v66 unsignedIntValue];
                  v68 = a3 + 16;
                }

                else
                {
                  if (![v65 isEqualToString:@"High Disabled"])
                  {
                    continue;
                  }

                  v66 = [v21 objectForKey:v65];
                  v67 = [v66 unsignedIntValue];
                  v68 = a3 + 17;
                }

                *v68 = v67;
              }

              v62 = [v21 countByEnumeratingWithState:&v117 objects:v149 count:16];
              if (!v62)
              {
LABEL_129:

                goto LABEL_146;
              }
            }
          }

          if ([v19 isEqualToString:@"UNII-5c"])
          {
            v69 = [obj objectForKey:v19];
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v21 = v69;
            v70 = [v21 countByEnumeratingWithState:&v113 objects:v148 count:16];
            if (!v70)
            {
              goto LABEL_129;
            }

            v71 = *v114;
            while (1)
            {
              for (jj = 0; jj != v70; jj = jj + 1)
              {
                if (*v114 != v71)
                {
                  objc_enumerationMutation(v21);
                }

                v73 = *(*(&v113 + 1) + 8 * jj);
                if ([v73 isEqualToString:@"CC Mapping"])
                {
                  v74 = [v21 objectForKey:v73];
                  v75 = [v74 unsignedIntValue];
                  v76 = a3 + 18;
                }

                else if ([v73 isEqualToString:@"Low Disabled"])
                {
                  v74 = [v21 objectForKey:v73];
                  v75 = [v74 unsignedIntValue];
                  v76 = a3 + 19;
                }

                else
                {
                  if (![v73 isEqualToString:@"High Disabled"])
                  {
                    continue;
                  }

                  v74 = [v21 objectForKey:v73];
                  v75 = [v74 unsignedIntValue];
                  v76 = a3 + 20;
                }

                *v76 = v75;
              }

              v70 = [v21 countByEnumeratingWithState:&v113 objects:v148 count:16];
              if (!v70)
              {
                goto LABEL_129;
              }
            }
          }

          if ([v19 isEqualToString:@"UNII-5d"])
          {
            v77 = [obj objectForKey:v19];
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v78 = v77;
            v79 = [v78 countByEnumeratingWithState:&v109 objects:v147 count:16];
            if (v79)
            {
              v80 = *v110;
              do
              {
                for (kk = 0; kk != v79; kk = kk + 1)
                {
                  if (*v110 != v80)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v82 = *(*(&v109 + 1) + 8 * kk);
                  if ([v82 isEqualToString:@"CC Mapping"])
                  {
                    v83 = [v78 objectForKey:v82];
                    v84 = [v83 unsignedIntValue];
                    v85 = a3 + 21;
                  }

                  else if ([v82 isEqualToString:@"Low Disabled"])
                  {
                    v83 = [v78 objectForKey:v82];
                    v84 = [v83 unsignedIntValue];
                    v85 = a3 + 22;
                  }

                  else
                  {
                    if (![v82 isEqualToString:@"High Disabled"])
                    {
                      continue;
                    }

                    v83 = [v78 objectForKey:v82];
                    v84 = [v83 unsignedIntValue];
                    v85 = a3 + 23;
                  }

                  *v85 = v84;
                }

                v79 = [v78 countByEnumeratingWithState:&v109 objects:v147 count:16];
              }

              while (v79);
            }

LABEL_146:
            v16 = v102;
            v18 = v103;
          }

          else
          {
            v86 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              *buf = v95;
              *v157 = v19;
              _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "PurpleLocation::getCountrySpecificPowerSettingsForProduct: Unexpected key: %@", buf, 0xCu);
            }
          }

          v18 = v18 + 1;
        }

        while (v18 != v16);
        v87 = [obj countByEnumeratingWithState:&v141 objects:v155 count:16];
        v16 = v87;
        if (!v87)
        {
LABEL_168:

          goto LABEL_169;
        }
      }
    }

    [v96 objectForKey:@"ISM 2.4"];
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    obj = v106 = 0u;
    v88 = [obj countByEnumeratingWithState:&v105 objects:v146 count:16];
    if (!v88)
    {
LABEL_167:

      goto LABEL_168;
    }

    v89 = *v106;
LABEL_155:
    v90 = 0;
    while (1)
    {
      if (*v106 != v89)
      {
        objc_enumerationMutation(obj);
      }

      v91 = *(*(&v105 + 1) + 8 * v90);
      if ([v91 isEqualToString:@"CC Mapping"])
      {
        break;
      }

      if ([v91 isEqualToString:@"Low Disabled"])
      {
        v92 = [obj objectForKey:v91];
        v93 = [v92 unsignedIntValue];
        v94 = a3 + 1;
        goto LABEL_164;
      }

      if ([v91 isEqualToString:@"High Disabled"])
      {
        v92 = [obj objectForKey:v91];
        v93 = [v92 unsignedIntValue];
        v94 = a3 + 2;
        goto LABEL_164;
      }

LABEL_165:
      if (v88 == ++v90)
      {
        v88 = [obj countByEnumeratingWithState:&v105 objects:v146 count:16];
        if (!v88)
        {
          goto LABEL_167;
        }

        goto LABEL_155;
      }
    }

    v92 = [obj objectForKey:v91];
    v93 = [v92 unsignedIntValue];
    v94 = a3;
LABEL_164:
    *v94 = v93;

    goto LABEL_165;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v98 localizedDescription];
    *buf = 67109378;
    *v157 = a4;
    *&v157[4] = 2112;
    *&v157[6] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PurpleLocation::getCountrySpecificPowerSettingsForProduct: Unable to extract country code plist for productID 0x%08X: %@", buf, 0x12u);
  }

LABEL_169:

LABEL_170:
}

void sub_1007D5684(uint64_t a1)
{
  v2 = sub_10000C7D0();
  if (sub_100413640(v2))
  {
    if (sub_1007D312C())
    {
      v3 = sub_1005FCD94();
      v4 = qword_100BCE8D8;
      v5 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v3)
      {
        if (v5)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CountryCode: Location update triggered using RegulatoryDomain", buf, 2u);
        }

        sub_1007D57E4(a1);
      }

      else
      {
        if (v5)
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RegulatoryDomain is not available -- setting country code to default", v9, 2u);
        }

        sub_1007D5BA0(a1, @"XZ");
      }
    }

    else
    {
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CountryCode: Location update triggered using Geo", v8, 2u);
      }

      sub_1007D6014(a1);
    }
  }

  else
  {
    v6 = *(a1 + 88);
    *(a1 + 88) = @"XZ";
  }
}

void sub_1007D57E4(id *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PurpleLocation::startLocationUpdatesRD() -- using RegulatoryDomain for country code", buf, 2u);
  }

  v3 = sub_10000C7D0();
  v4 = (*(*v3 + 3936))(v3);
  if (v4)
  {
    v17 = 0;
    v5 = sub_1007D6834(v4, &v17);
    v6 = v17;
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CountryCode from RegulatoryDomain, Current Country: %{public}@, Last Known Country: %{public}@", buf, 0x16u);
    }

    if (!v5)
    {
      v12 = +[GEOCountryConfiguration sharedConfiguration];
      v13 = [v12 countryCode];
      v5 = [NSString stringWithFormat:@"%@", v13];

      v14 = qword_100BCE8D8;
      v15 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        if (v15)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Both RegulatoryDomain and GEOCountryConfiguration returned nil", buf, 2u);
        }

        v16 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "RegulatoryDomain and GeoCountryConfiguration returned nil -- setting country code to default", buf, 2u);
        }

        v5 = 0;
        sub_1007D5BA0(a1, @"XZ");
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting country code from GeoCountryConfiguration %{public}@", buf, 0xCu);
      }
    }

    v8 = [a1[11] isEqualToString:v5];
    v9 = qword_100BCE8D8;
    v10 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CountryCode: update not needed -- same country code %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CountryCode changed -- new country code %{public}@", buf, 0xCu);
      }

      sub_1007D5BA0(a1, v5);
    }

LABEL_25:

    return;
  }

  if (([a1[11] isEqualToString:@"XZ"] & 1) == 0)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Does not support location based power tables -- setting country code to default", buf, 2u);
    }

    sub_1007D5BA0(a1, @"XZ");
  }
}

void sub_1007D5BA0(id *a1, void *a2)
{
  v4 = a2;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 1;
  v31 = 0;
  v5 = sub_10000C7D0();
  v6 = *(v5 + 800);
  if ((v6 - 23) < 0x7B9 || (v6 - 3000) <= 0x3E7)
  {
    v28 = 0;
    v29 = -1;
    memset(v30, 255, sizeof(v30));
    sub_1007D3B38(v5, v4, &v28, &v33, &v31);
    v9 = sub_10000C7D0();
    v10 = v28;
    v11 = v33;
    v12 = BYTE2(v29);
    v13 = BYTE5(v29);
    v14 = v30[3];
    HIBYTE(v27) = v30[12];
    LOBYTE(v27) = v30[9];
    (*(*v9 + 576))(v9, 1, v28, v33, BYTE2(v29), BYTE5(v29), v30[3], v30[6], v27, &v34, 0);
    v15 = sub_10000C7D0();
    if ((*(*v15 + 2944))(v15))
    {
      buf[0] = v31;
      v16 = sub_10000C7D0();
      (*(*v16 + 1464))(v16, 1, buf, 1);
    }

    sub_1007D6C20(a1, v4, v10, v11, v12, v13, v14);
    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544642;
      v37 = v4;
      v38 = 1024;
      v39 = v10;
      v40 = 1024;
      v41 = v11;
      v42 = 1024;
      v43 = v12;
      v44 = 1024;
      v45 = v13;
      v46 = 1024;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PurpleLocation: Notify HRB Listeners - country: %{public}@, ISM 2.4 CC: %u, LEFlag: %u, UNII-1 CC: %u, UNII-3 CC: %u, UNII-5 CC: %u", buf, 0x2Au);
    }

    (*(*a1 + 11))(a1, v4, v10, v11, 1);
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v37 = v4;
      v38 = 1024;
      v39 = v10;
      v40 = 1024;
      v41 = v11;
      v42 = 1024;
      v43 = 1;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PurpleLocation: Notify Legacy Listeners - country: %{public}@, ISM 2.4 CC: %u, LEFlag: %u, HDR Flag: %u", buf, 0x1Eu);
    }
  }

  else
  {
    (*(*a1 + 1))(a1, v4, &v35, &v33, &v32);
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v37 = v4;
      v38 = 1024;
      v39 = v33;
      v40 = 1024;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PurpleLocation: Action - country: %{public}@,  LEFlag: %u, HDR Flag: %u", buf, 0x18u);
    }

    v8 = sub_10000C7D0();
    (*(*v8 + 568))(v8, 1, v35, v33, &v34, 0);
    (*(*a1 + 11))(a1, v4, v35, v33, v32);
  }

  objc_storeStrong(a1 + 11, a2);
  v19 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100879E1C(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

void sub_1007D6014(id *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PurpleLocation::startLocationUpdates() -- using Geo for country code", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007D6410;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100BC7D70 != -1)
  {
    dispatch_once(&qword_100BC7D70, block);
  }

  v3 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/MobileWiFi.framework"];
  v4 = [CLLocationManager authorizationStatusForBundle:v3];

  if (v4 - 3 > 1)
  {
    if (([a1[11] isEqualToString:@"XZ"] & 1) == 0)
    {
      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CountryCode: Location Services disabled!", buf, 2u);
      }

      sub_1007D5BA0(a1, @"XZ");
    }
  }

  else
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_100879E54(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = +[GEOCountryConfiguration sharedConfiguration];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1007D6610;
    v15[3] = &unk_100B0DD38;
    v15[4] = a1;
    [v13 updateCountryConfiguration:v15];
  }
}

void sub_1007D6238()
{
  v5 = 0;
  v0 = sub_10000C7D0();
  if ((*(*v0 + 2968))(v0))
  {
    v1 = sub_10000C7D0();
    v2 = (*(*v1 + 1496))(v1, &v5, 0);
    if (v2)
    {
      v3 = v2;
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100879E8C(v3, v4);
      }
    }
  }
}

void sub_1007D6300(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CountryCode: Location refresh timer expiry", buf, 2u);
  }

  sub_1007D6014(a1);
  v5 = dispatch_time(0, 1000000000 * a2);
  global_queue = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007D6400;
  v7[3] = &unk_100ADF940;
  v7[4] = a1;
  v8 = a2;
  dispatch_after(v5, global_queue, v7);
}

void sub_1007D6410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 3599;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LOCATION");
  sub_100007E30(__p, "RefreshTime");
  (*(*v2 + 128))(v2, buf, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CountryCode: Location refresh time set to %u", buf, 8u);
  }

  v4 = dispatch_time(0, 1000000000 * v10);
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007D6600;
  v6[3] = &unk_100ADF940;
  v6[4] = v1;
  v7 = v10;
  dispatch_after(v4, global_queue, v6);
}

void sub_1007D65C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 25) < 0)
  {
    operator delete(*(v20 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D6610(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CountryCode: Callback from GEO..country code available?%d", v5, 8u);
  }

  sub_1007D66C8(v3);
}

void sub_1007D66C8(id *a1)
{
  v2 = +[GEOCountryConfiguration sharedConfiguration];
  v3 = [v2 countryCode];
  v4 = [NSString stringWithFormat:@"%@", v3];

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CountryCode: Callback from GEO, Country: %{public}@", buf, 0xCu);
  }

  if (v4 && ([a1[11] isEqualToString:v4] & 1) == 0)
  {
    sub_1007D5BA0(a1, v4);
  }

  else
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_100879F04(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

id sub_1007D6834(uint64_t a1, void *a2)
{
  v3 = +[RDEstimate currentEstimates];
  if (![v3 count])
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RegulatoryDomain current estimates not available", &v16, 2u);
    }

    v5 = 0;
    goto LABEL_10;
  }

  v4 = [v3 objectAtIndex:0];
  v5 = [v4 countryCode];
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v5;
    v18 = 1024;
    v19 = [v5 length];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RegulatoryDomain current estimates -- countryCode = %@ countryCode length = %d", &v16, 0x12u);
  }

  if (!v5 || [v5 length] != 2)
  {
LABEL_10:

    v5 = 0;
  }

  *a2 = 0;
  v8 = +[RDEstimate lastKnownEstimates];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    v10 = [v9 countryCode];
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 length];
      v16 = 138412546;
      v17 = v10;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RegulatoryDomain last-known estimates -- countryCode = %@ countryCode length = %d", &v16, 0x12u);
    }

    if (v10 && [v10 length] == 2)
    {
      v13 = v10;
      *a2 = v10;
    }
  }

  else
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "RegulatoryDomain last-known estimates not available", &v16, 2u);
    }

    v10 = 0;
  }

  return v5;
}