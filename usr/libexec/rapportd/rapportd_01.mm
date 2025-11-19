Class sub_1000649D4()
{
  if (qword_1001D6210 != -1)
  {
    sub_10011A20C();
  }

  result = objc_getClass("SFService");
  qword_1001D6220 = result;
  off_1001D3E08 = sub_100064A28;
  return result;
}

id sub_100064A34()
{
  if (qword_1001D6228 != -1)
  {
    sub_10011A220();
  }

  v1 = qword_1001D6200;

  return v1;
}

void sub_100064A78(id a1)
{
  if (qword_1001D6210 != -1)
  {
    sub_10011A20C();
  }

  v1 = dlsym(qword_1001D6218, "SFServiceIdentifierAcceptedInvitation");
  if (v1)
  {
    objc_storeStrong(&qword_1001D6200, *v1);
  }

  off_1001D3E10 = sub_100064AE0;
}

id sub_100064AEC()
{
  if (qword_1001D6230 != -1)
  {
    sub_10011A234();
  }

  v1 = qword_1001D61F8;

  return v1;
}

void sub_100064B30(id a1)
{
  if (qword_1001D6210 != -1)
  {
    sub_10011A20C();
  }

  v1 = dlsym(qword_1001D6218, "SFServiceIdentifierHasInvitations");
  if (v1)
  {
    objc_storeStrong(&qword_1001D61F8, *v1);
  }

  off_1001D3E18 = sub_100064B98;
}

void sub_100066FD0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = RPErrorF();
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

void sub_1000670B8(id a1)
{
  v1 = objc_alloc_init(RPIdentityDaemon);
  v2 = qword_1001D6260;
  qword_1001D6260 = v1;
}

void sub_10006AE6C(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v6 = [*(a1 + 32) verifyWithIdentity:v11];
  v7 = v11;
  if (v6)
  {
    v8 = [v11 contactID];

    v9 = [v11 accountID];

    v10 = [v11 type];
    if (v8 || v10 == 2)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }

    else
    {
      v7 = v11;
      if (!v9)
      {
        goto LABEL_8;
      }

      [*(*(*(a1 + 48) + 8) + 40) addObject:v11];
    }

    v7 = v11;
  }

LABEL_8:
}

void sub_10006B094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B0AC(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 verifySignature:a1[4] data:a1[5] error:0];
  v4 = v9;
  if (v3)
  {
    v5 = [v9 accountAltDSID];
    if (!v5)
    {
      v6 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
      v7 = [v6 localDeviceInfo];
      v5 = [v7 accountAltDSID];
    }

    if (![v5 isEqualToString:a1[6]])
    {
      goto LABEL_10;
    }

    if ([v9 type] == 2 || objc_msgSend(v9, "type") == 12 || objc_msgSend(v9, "type") == 8)
    {
      v8 = 0x80000;
    }

    else
    {
      if ([v9 type] != 4)
      {
        goto LABEL_10;
      }

      v8 = 0x4000;
    }

    *(*(a1[7] + 8) + 24) |= v8;
LABEL_10:

    v4 = v9;
  }
}

void sub_10006B384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B3A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    if (dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B5C0(a1);
    }

    v7 = [*(a1 + 40) accountID];
    [*(a1 + 48) setEmailAddress:v7];

    v8 = [*(a1 + 40) accountID];
    [*(a1 + 48) setPhoneNumber:v8];

    [*(a1 + 48) setContactIdentifier:0];
    v9 = objc_alloc_init(off_1001D3FD8[0]());
    [v9 setDispatchQueue:*(*(a1 + 56) + 160)];
    v10 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006B5C4;
    v17[3] = &unk_1001ACE40;
    v18 = v9;
    v19 = v10;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v20 = v11;
    v21 = v12;
    v16 = *(a1 + 64);
    v13 = v16;
    v22 = v16;
    v14 = v9;
    [v14 findContact:v10 completion:v17];
  }

  else
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B634(a1);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    v15 = *(*(*(a1 + 72) + 8) + 24);
    (*(*(a1 + 64) + 16))();
  }
}

void sub_10006B5C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (!v6)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B704(a1, v5);
    }

    v10 = +[RPPeopleDaemon sharedPeopleDaemon];
    v11 = [*(a1 + 48) accountID];
    v12 = [v5 contactIdentifier];
    v13 = [v10 updateFriendIdentityWithAppleID:v11 contactID:v12];

    if (v13)
    {
      if (dword_1001D3F50 > 30)
      {
        v14 = 1;
LABEL_26:
        *(*(*(a1 + 72) + 8) + 24) = v14;
        v15 = *(*(*(a1 + 72) + 8) + 24);
        (*(*(a1 + 64) + 16))();
        goto LABEL_29;
      }

      if (dword_1001D3F50 == -1)
      {
        v14 = 1;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      if (dword_1001D3F50 > 30)
      {
        v14 = 0;
        goto LABEL_26;
      }

      if (dword_1001D3F50 == -1)
      {
        v14 = 0;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    sub_10011B790((a1 + 48), v5);
    goto LABEL_26;
  }

  if (dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B678(a1);
  }

  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v17 = 0;
  [v7 removeIdentity:v8 error:&v17];
  v9 = v17;
  if (v9)
  {
    if (dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      v16 = *(a1 + 48);
      LogPrintF();
    }
  }

  else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B6C0((a1 + 48));
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
  (*(*(a1 + 64) + 16))(*(a1 + 64), *(*(*(a1 + 72) + 8) + 24));

LABEL_29:
}

void sub_10006C734(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 idsDeviceID];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 idsDeviceID];
    [v4 addObject:v5];
  }
}

id sub_10006CB80(uint64_t a1)
{
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B8D8();
  }

  v2 = *(a1 + 32);

  return [v2 _loadTemporarySelfIdentity];
}

void sub_10006CCC0(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  [*(a1 + 32) invalidate];
  if (!v13 || v5)
  {
    if (!v5)
    {
      v5 = RPErrorF();
    }

    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B8F4();
    }

    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = objc_alloc_init(RPIdentity);
    v6 = [v13 identifier];
    v7 = [v6 UUIDString];
    [v5 setIdentifier:v7];

    v8 = [v13 publicKey];
    [v5 setEdPKData:v8];

    v9 = [v13 secretKey];
    [v5 setEdSKData:v9];

    v10 = [v13 altIRK];
    [v5 setDeviceIRKData:v10];

    v11 = [v13 rp_sepPrivateKey];
    if (v11)
    {
      [v5 updateWithSEPPrivateKey:v11];
    }

    v12 = *(*(a1 + 40) + 16);
  }

  v12();
}

void sub_10006D9B4(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 120);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v16 + 1) + 8 * v6);
      v8 = [v7 identifier];
      v9 = [*(a1 + 40) identifier];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v7;

    if (!v11)
    {
      goto LABEL_12;
    }

    [*(a1 + 32) updateSessionPairedIdentity:*(a1 + 40)];
  }

  else
  {
LABEL_9:

LABEL_12:
    v12 = *(*(a1 + 32) + 120);
    if (!v12)
    {
      v13 = +[NSMutableArray array];
      v14 = *(a1 + 32);
      v15 = *(v14 + 120);
      *(v14 + 120) = v13;

      v12 = *(*(a1 + 32) + 120);
    }

    [v12 addObject:{*(a1 + 40), v16}];
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BAA8((a1 + 40));
    }

    [*(a1 + 32) _postIdentitiesChangedNotification];
    v11 = +[RPDaemon sharedDaemon];
    [v11 postDaemonInfoChanges:0x2000];
  }
}

void sub_10006DC48(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 120);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = [v7 identifier];
      v9 = [v8 isEqual:*(a1 + 40)];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_15;
    }

    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BAEC();
    }

    [*(*(a1 + 32) + 120) removeObject:v10];
    [*(a1 + 32) _postIdentitiesChangedNotification];
    v11 = +[RPDaemon sharedDaemon];
    [v11 postDaemonInfoChanges:0x2000];
  }

  else
  {
LABEL_9:

LABEL_15:
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BB2C(a1);
    }
  }
}

void sub_10006DF24(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 120);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v18 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v17 + 1) + 8 * v5);
      v7 = [v6 identifier];
      v8 = [*(a1 + 40) identifier];
      v9 = [v7 isEqual:v8];

      if (v9)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_26;
      }
    }

    v3 = v6;

    if (!v3)
    {
      goto LABEL_27;
    }

    v10 = [v3 name];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
    }

    else
    {
      v13 = [*(a1 + 40) name];

      if (!v13)
      {
        v12 = 0;
LABEL_16:
        v14 = [v3 model];
        if (v14)
        {
        }

        else
        {
          v15 = [*(a1 + 40) model];

          if (v15)
          {
            v16 = [*(a1 + 40) model];
            [v3 setModel:v16];

LABEL_22:
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011BBB0();
            }

            [*(a1 + 32) _postIdentitiesChangedNotification];
            v2 = +[RPDaemon sharedDaemon];
            [v2 postDaemonInfoChanges:0x2000];
            goto LABEL_26;
          }
        }

        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

      v11 = [*(a1 + 40) name];
      [v3 setName:v11];
      v12 = 1;
    }

    goto LABEL_16;
  }

LABEL_26:

LABEL_27:
}

void sub_10006E188(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];

  if (!v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    [*(a1 + 32) setIdentifier:v4];
  }

  v5 = [*(a1 + 32) idsDeviceID];

  if (!v5)
  {
    v6 = [*(a1 + 32) identifier];
    [*(a1 + 32) setIdsDeviceID:v6];
  }

  if ([*(*(a1 + 40) + 128) count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [*(*(a1 + 40) + 128) objectAtIndexedSubscript:v7];
      v9 = [v8 identifier];
      v10 = [*(a1 + 32) identifier];
      if ([v9 isEqual:v10])
      {
        break;
      }

      v11 = [v8 deviceIRKData];
      v12 = [*(a1 + 32) deviceIRKData];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        goto LABEL_17;
      }

      if (++v7 >= [*(*(a1 + 40) + 128) count])
      {
        goto LABEL_10;
      }
    }

LABEL_17:
    v14 = [*(*(a1 + 40) + 128) objectAtIndexedSubscript:v7];
    v19 = [*(a1 + 32) dateAdded];
    [v14 setDateAdded:v19];

    v20 = [*(a1 + 32) deviceIRKData];
    [v14 setDeviceIRKData:v20];

    v21 = [*(a1 + 32) edPKData];
    [v14 setEdPKData:v21];

    [*(*(a1 + 40) + 128) setObject:v14 atIndexedSubscript:v7];
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BBF0();
    }
  }

  else
  {
LABEL_10:
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 40) + 128);
    if (!v15)
    {
      v16 = +[NSMutableArray array];
      v17 = *(a1 + 40);
      v18 = *(v17 + 128);
      *(v17 + 128) = v16;

      v15 = *(*(a1 + 40) + 128);
    }

    [v15 addObject:v14];
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BC30();
    }
  }

  v22 = *(a1 + 40);
  v27 = 0;
  [v22 saveIdentity:v14 error:&v27];
  v23 = v27;
  if (v23 && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    v25 = v14;
    v26 = v23;
    LogPrintF();
  }

  v24 = [RPDaemon sharedDaemon:v25];
  [v24 postDaemonInfoChanges:0x4000];
}

void sub_10006E728(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 idsDeviceID];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v12 idsDeviceID];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v9 = v8;

    if ([v12 type] == 2)
    {
      [v9 addObject:v12];
      v10 = *(a1 + 32);
      v11 = [v12 idsDeviceID];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }
  }

  else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011BCA4();
  }
}

void sub_10006E850(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 count] < 2)
  {
    if ([v5 count] != 1)
    {
      goto LABEL_6;
    }

    v7 = *(a1 + 40);
    v6 = [v5 firstObject];
    [v7 addObject:v6];
  }

  else
  {
    v6 = [v5 copy];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
  }

LABEL_6:
}

void sub_10006E90C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000029FC;
  v9 = sub_100003194;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006EA0C;
  v4[3] = &unk_1001ACEE0;
  v4[4] = &v5;
  [v3 enumerateObjectsUsingBlock:v4];
  if (v6[5])
  {
    [*(a1 + 32) addObject:?];
  }

  _Block_object_dispose(&v5, 8);
}

void sub_10006E9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006EA0C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  v18 = v4;
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [v4 revisionID];
  if (v8 > [*(*(*(a1 + 32) + 8) + 40) revisionID])
  {
LABEL_3:
    v6 = (*(*(a1 + 32) + 8) + 40);
LABEL_4:
    objc_storeStrong(v6, a2);
    goto LABEL_5;
  }

  v9 = [v18 revisionID];
  if (v9 == [*(*(*(a1 + 32) + 8) + 40) revisionID])
  {
    if (![*(*(*(a1 + 32) + 8) + 40) featureFlags] && objc_msgSend(v18, "featureFlags"))
    {
      goto LABEL_3;
    }

    v10 = [v18 dateAdded];
    if (v10)
    {
      v11 = v10;
      v12 = [*(*(*(a1 + 32) + 8) + 40) dateAdded];
      if (v12)
      {
        v13 = v12;
        v14 = [v18 dateAdded];
        v15 = [*(*(*(a1 + 32) + 8) + 40) dateAdded];
        v16 = [v14 laterDate:v15];
        v17 = [v18 dateAdded];

        if (v16 == v17)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }
    }
  }

LABEL_5:
}

void sub_10006EC40(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 128);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v17 + 1) + 8 * v6);
      v8 = [v7 identifier];
      v9 = [v8 isEqual:*(a1 + 40)];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_18;
    }

    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BD00();
    }

    [*(*(a1 + 32) + 128) removeObject:v10];
    v11 = *(a1 + 32);
    v16 = 0;
    [v11 removeIdentity:v10 error:&v16];
    v12 = v16;
    if (v12 && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      v14 = v10;
      v15 = v12;
      LogPrintF();
    }

    [*(a1 + 32) _postIdentitiesChangedNotification];
    v13 = +[RPDaemon sharedDaemon];
    [v13 postDaemonInfoChanges:0x4000];
  }

  else
  {
LABEL_9:

LABEL_18:
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BD40(a1);
    }
  }
}

void sub_10006EF10(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(*(&v10 + 1) + 8 * v7) identifier];
        [v8 removeAdHocPairedIdentityWithIdentifier:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void *sub_10006F2B8(void *result)
{
  if (*(result[4] + 8) != -1)
  {
    v2 = result;
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BDBC();
    }

    v3 = v2[4];

    return [v3 _updateSameAccountIdentities];
  }

  return result;
}

void *sub_10006F334(void *result)
{
  if (*(result[4] + 12) != -1)
  {
    v7 = v1;
    v5 = result;
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BDD8();
    }

    [v5[4] _loadSelfIdentity:{0, v2, v7, v3}];
    v6 = v5[4];

    return [v6 _updateSameAccountIdentities];
  }

  return result;
}

void *sub_10006F3BC(void *result)
{
  if (*(result[4] + 48) != -1)
  {
    v2 = result;
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BDF4();
    }

    v3 = v2[4];

    return [v3 _updatePairedDeviceIdentities];
  }

  return result;
}

void sub_10006F668(id a1)
{
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011BE48();
  }

  notify_post("com.apple.rapport.identitiesChanged");
}

void sub_10006F80C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1001D3F50 <= 30)
  {
    v5 = v2;
    if (dword_1001D3F50 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_10011BF34();
      v3 = v5;
    }
  }
}

void sub_10006F954(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (v5)
  {
    v19 = v6;
    v7 = objc_alloc_init(NSMutableArray);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 identifier];
          v15 = [v14 UUIDString];

          if (v15)
          {
            v16 = [v13 altIRK];
            if (v16)
            {
              v17 = [[RPIdentity alloc] initWithPairedPeer:v13 type:8];
              if (v17)
              {
                [v7 addObject:v17];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    objc_storeStrong((*(a1 + 40) + 40), v7);
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BF90(v7);
    }

    v18 = +[RPDaemon sharedDaemon];
    [v18 postDaemonInfoChanges:256];

    [*(a1 + 40) _postIdentitiesChangedNotification];
    v6 = v20;
    v5 = v21;
  }

  else
  {
    sub_10011BFD4();
  }
}

void *sub_100070D5C(void *result)
{
  v2 = result[4];
  v3 = *(result[5] + 152);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = v4[5];
      v7 = *(v6 + 152);
      *(v6 + 152) = 0;
    }

    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C640();
    }

    v8 = v4[5];

    return [v8 _loadTemporarySelfIdentity];
  }

  return result;
}

Class sub_100072664()
{
  if (qword_1001D6280 != -1)
  {
    sub_10011C7DC();
  }

  result = objc_getClass("CBPeripheralManager");
  qword_1001D6278 = result;
  off_1001D3FC0[0] = sub_1000726B8;
  return result;
}

id sub_1000726F0()
{
  if (qword_1001D6290 != -1)
  {
    sub_10011C7F0();
  }

  v1 = qword_1001D6270;

  return v1;
}

void sub_100072734(id a1)
{
  if (qword_1001D6280 != -1)
  {
    sub_10011C7DC();
  }

  v1 = dlsym(qword_1001D6288, "CBManagerNeedsRestrictedStateOperation");
  if (v1)
  {
    objc_storeStrong(&qword_1001D6270, *v1);
  }

  off_1001D3FC8 = sub_10007279C;
}

Class sub_1000727A8()
{
  if (qword_1001D62A0 != -1)
  {
    sub_10011C804();
  }

  result = objc_getClass("SFContactInfo");
  qword_1001D6298 = result;
  off_1001D3FD0[0] = sub_1000727FC;
  return result;
}

Class sub_100072834()
{
  if (qword_1001D62A0 != -1)
  {
    sub_10011C804();
  }

  result = objc_getClass("SFClient");
  qword_1001D62B0 = result;
  off_1001D3FD8[0] = sub_100072888;
  return result;
}

id sub_1000734EC(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [RPTransportServiceMetadata metadataWithDictionary:*(*(&v10 + 1) + 8 * i), v10];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

Class sub_1000739F0()
{
  if (qword_1001D62C0 != -1)
  {
    sub_10011C818();
  }

  result = objc_getClass("NFConnectionHandoverSelect");
  qword_1001D62B8 = result;
  off_1001D3FE0[0] = sub_100073A44;
  return result;
}

Class sub_100073A7C()
{
  if (qword_1001D62C0 != -1)
  {
    sub_10011C818();
  }

  result = objc_getClass("NFConnectionHandoverRequest");
  qword_1001D62D0 = result;
  off_1001D3FE8 = sub_100073AD0;
  return result;
}

void sub_100073DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100073EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100073FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000740E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007411C(uint64_t a1)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v2 = sub_10000F224(&v5);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

void sub_100074244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000746BC(os_unfair_lock_s *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_unfair_lock_s *a13, int a14)
{
  a11 = v15;
  a12 = v14;
  a13 = a1;
  a14 = a3;

  sub_10011C82C(a1, &a9);
}

void *sub_100074D3C(void *result, int a2)
{
  if (*(result[4] + 48) == 1)
  {
    v4 = result;
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CD58();
    }

    *(v4[4] + 44) = a2;
    v5 = v4[4];

    return [v5 _mediaRemoteVolumeControlUpdate];
  }

  return result;
}

void *sub_100075050(void *result)
{
  if (*(result[4] + 42) == 1)
  {
    v2 = result;
    if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CE14();
    }

    v3 = v2[4];

    return [v3 _mediaRemoteSupportedCommandsGet];
  }

  return result;
}

void sub_100075190(uint64_t a1, const __CFArray *a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 41) = 0;
  if (*(*(a1 + 32) + 42) != 1)
  {
    return;
  }

  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v5 = dword_1001D4060;
  if (dword_1001D4060 > 9)
  {
    goto LABEL_56;
  }

  if (dword_1001D4060 != -1)
  {
LABEL_8:
    if (v5 != -1 || _LogCategory_Initialize())
    {
      sub_10011CE4C();
    }

    goto LABEL_17;
  }

  v6 = _LogCategory_Initialize();
  v5 = dword_1001D4060;
  if (!v6)
  {
LABEL_56:
    if (v5 <= 30 && (v5 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CE8C();
    }

    goto LABEL_17;
  }

  if (dword_1001D4060 <= 9)
  {
    goto LABEL_8;
  }

LABEL_17:
  if (Count < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(a2, i);
      if (MRMediaRemoteCommandInfoGetEnabled())
      {
        Command = MRMediaRemoteCommandInfoGetCommand();
        v10 = v7 | 0x400;
        v11 = v7 | 0x40;
        v12 = v7 | 0x80;
        if (Command != 26)
        {
          v12 = v7;
        }

        if (Command != 25)
        {
          v11 = v12;
        }

        if (Command != 18)
        {
          v10 = v11;
        }

        v13 = v7 | 0x20;
        v14 = v7 | 0x200;
        if (Command != 17)
        {
          v14 = v7;
        }

        if (Command != 10)
        {
          v13 = v14;
        }

        if (Command <= 17)
        {
          v10 = v13;
        }

        v15 = v7 | 4;
        v16 = v7 | 8;
        v17 = v7 | 0x10;
        if (Command != 8)
        {
          v17 = v7;
        }

        if (Command != 5)
        {
          v16 = v17;
        }

        if (Command != 4)
        {
          v15 = v16;
        }

        v18 = v7 | 1;
        v19 = v7 | 2;
        if (Command != 1)
        {
          v19 = v7;
        }

        if (Command)
        {
          v18 = v19;
        }

        if (Command <= 3)
        {
          v15 = v18;
        }

        if (Command <= 9)
        {
          v7 = v15;
        }

        else
        {
          v7 = v10;
        }
      }
    }
  }

  v20 = *(a1 + 32);

  [v20 _mediaControlFlagsUpdate:v7 mask:1791];
}

void sub_100075434(uint64_t a1)
{
  if (*(*(a1 + 32) + 48) == 1)
  {
    v2 = [*(a1 + 40) userInfo];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    if (*(*(a1 + 32) + 44) != Int64Ranged)
    {
      if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
      {
        sub_10011CECC();
      }

      *(*(a1 + 32) + 44) = Int64Ranged;
      v4 = *(a1 + 32);

      [v4 _mediaRemoteVolumeControlUpdate];
    }
  }
}

uint64_t sub_100075BD4(uint64_t a1)
{
  if (dword_1001D4060 <= 30 && (dword_1001D4060 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D0AC();
  }

  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }

  v6 = *(*(a1 + 32) + 20);
  result = MRMediaRemoteSendCommand();
  *(*(a1 + 32) + 16) = 3;
  return result;
}

uint64_t sub_100076258(uint64_t a1)
{
  if (qword_1001D62D8 != -1)
  {
    sub_10011D248();
  }

  v2 = dlsym(qword_1001D62E0, "MACaptionAppearanceGetDisplayType");
  off_1001D40D8[0] = v2;

  return (v2)(a1);
}

uint64_t sub_1000762F0(uint64_t a1, uint64_t a2)
{
  if (qword_1001D62D8 != -1)
  {
    sub_10011D248();
  }

  v4 = dlsym(qword_1001D62E0, "MACaptionAppearanceSetDisplayType");
  off_1001D40E0 = v4;

  return (v4)(a1, a2);
}

Class sub_100076364()
{
  if (qword_1001D62F0 != -1)
  {
    sub_10011D25C();
  }

  result = objc_getClass("AVSystemController");
  qword_1001D62E8 = result;
  off_1001D40D0[0] = sub_1000763B8;
  return result;
}

uint64_t sub_100076798(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 2) != 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000767D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D318();
    }

    [*(*(a1 + 32) + 16) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v3 = v6;
  }
}

void sub_100076B40(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D400(v7);
  }

  v8 = *(a1 + 32);
  v10 = *(v8 + 32);
  v9 = (v8 + 32);
  if (v10)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D468();
    }
  }

  else
  {
    objc_storeStrong(v9, a2);
    v11 = +[RPNWNetworkAgent sharedNetworkAgent];
    v12 = [v11 dispatchQueue];
    [*(*(a1 + 32) + 32) setDispatchQueue:v12];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100076D60;
    v17[3] = &unk_1001AD428;
    v18 = v6;
    v13 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = v13;
    [*(v19 + 32) setInvalidationHandler:v17];
    v14 = [*(*(a1 + 32) + 32) invalidationHandler];
    [*(*(a1 + 32) + 32) setInterruptionHandler:v14];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100076DE4;
    v15[3] = &unk_1001AB2C8;
    v16 = *(a1 + 32);
    [*(v16 + 32) setErrorHandler:v15];
    [*(a1 + 32) handleConnectionRequest:*(*(a1 + 32) + 32) agentClient:*(a1 + 40)];
    [*(a1 + 32) handleConnectionData:1];
  }
}

void sub_100076D60(uint64_t a1)
{
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D484(a1);
  }

  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

void sub_100076DE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D4E4();
  }

  [*(*(a1 + 32) + 32) invalidate];
}

void sub_100076E6C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(*(a1 + 32) + 32);
  if (v6)
  {
    [v6 invalidate];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
  }
}

void sub_100076F38(id a1)
{
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D524();
  }
}

void sub_100076F84(uint64_t a1)
{
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D544(a1);
  }
}

void sub_100076FE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D5A8();
    }

    [*(*(a1 + 32) + 24) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;

    v3 = v8;
  }

  if (dword_1001D40E8 <= 30)
  {
    if (dword_1001D40E8 != -1 || (v6 = _LogCategory_Initialize(), v3 = v8, v6))
    {
      sub_10011D5E8(a1);
      v3 = v8;
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
    v3 = v8;
  }
}

void sub_100077374(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      v10 = *(a1 + 32);
      LogPrintF();
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), 0);
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000775C8;
    v16[3] = &unk_1001AD428;
    v17 = *(a1 + 32);
    v4 = *(a1 + 80);
    v18 = *(a1 + 40);
    v19 = v4;
    [*(v18 + 32) setInvalidationHandler:v16];
    v5 = [*(*(a1 + 40) + 32) invalidationHandler];
    [*(*(a1 + 40) + 32) setInterruptionHandler:v5];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007764C;
    v14[3] = &unk_1001AB2C8;
    v15 = *(a1 + 40);
    [*(v15 + 32) setErrorHandler:v14];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000776D4;
    v11[3] = &unk_1001AD4E8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 72);
    [v6 sendWithRequestID:@"com.apple.oneapi.nearbyinvitation.connection" data:0 status:0 applicationService:v7 listenerID:v8 connectionID:v9 responseHandler:v11];
  }
}

void sub_1000775C8(uint64_t a1)
{
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D6A8(a1);
  }

  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

void sub_10007764C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D6EC();
  }

  [*(*(a1 + 32) + 32) invalidate];
}

void sub_1000776D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D72C(a2, a1);
  }

  if (a2 == 2 && dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D78C(a1);
  }

  (*(*(a1 + 40) + 16))();
}

BOOL sub_1000779A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D7D0(a1);
  }

  v13 = [v11 nearbyInvitationConnection];
  v14 = [v13 framer];

  if (v14)
  {
    v15 = [v11 nearbyInvitationConnection];
    v16 = [v15 framer];
  }

  else
  {
    v16 = [v11 listen_framer];
  }

  v17 = [RPNWFramer writeDataOnFramer:v16 data:v9];

  return v17;
}

uint64_t sub_100077D08(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11 && v12 && v13)
  {
    if ([*(a1 + 32) findNearbyInvitationListenerAndCreateConnection:*(a1 + 40) applicationService:v11 listenerID:v12 connectionID:v13 agentClient:*(a1 + 48)])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D8AC();
    }

    v15 = 0;
  }

  return v15;
}

void sub_10007822C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKeyedSubscript:@"request"];
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D948(v10, a1);
  }

  v11 = [v7 objectForKeyedSubscript:@"status"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 intValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 objectForKeyedSubscript:@"applicationService"];
  v15 = [v8 objectForKeyedSubscript:@"senderID"];
  if (v15)
  {
    v33 = v9;
    v16 = a1;
    v37 = v10;
    v35 = v8;
    v17 = [v8 objectForKeyedSubscript:@"senderIDS"];
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      v31 = v15;
      v32 = v17;
      v30 = v14;
      LogPrintF();
    }

    v34 = v17;
    v19 = [NSUUID alloc];
    [v7 objectForKeyedSubscript:@"connectionID"];
    v21 = v20 = v14;
    v22 = [v19 initWithUUIDString:v21];

    v23 = [NSUUID alloc];
    v24 = [v7 objectForKeyedSubscript:@"listenerID"];
    v25 = [v23 initWithUUIDString:v24];

    v36 = v20;
    v26 = (*(*(v16 + 40) + 16))(*(v16 + 40), v37, v13);
    v27 = 0;
    v28 = objc_alloc_init(NSMutableDictionary);
    v29 = [NSNumber numberWithUnsignedInt:v26];
    [v28 setObject:v29 forKeyedSubscript:@"response"];
    if (v27)
    {
      v9 = v33;
      if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
      {
        v30 = v29;
        v31 = v27;
        LogPrintF();
      }

      [v28 setObject:v27 forKeyedSubscript:{@"listenerID", v30, v31, v32}];
      v8 = v35;
    }

    else
    {
      v8 = v35;
      v9 = v33;
      if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
      {
        sub_10011D99C();
      }
    }

    (*(v9 + 2))(v9, v28, 0, 0);

    v14 = v36;
    v10 = v37;
  }

  else
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D9DC();
    }

    v18 = RPErrorF();
    (*(v9 + 2))(v9, 0, 0, v18);
  }
}

void sub_1000789E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011DAC8(a1);
    }

LABEL_5:
    (*(*(a1 + 56) + 16))();
    goto LABEL_11;
  }

  if (!v12)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011DC10(a1);
    }

    goto LABEL_5;
  }

  v9 = [v12 objectForKeyedSubscript:@"response"];
  v10 = [v9 intValue];

  v11 = [v12 objectForKeyedSubscript:@"listenerID"];
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DB5C(a1, v10);
  }

  (*(*(a1 + 56) + 16))();

LABEL_11:
}

uint64_t sub_100078C50(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v12 && v14)
  {
    v16 = [RPNWAgentClient findAgentClientFromConnectionID:v14];
    if (v16)
    {
      if (v11)
      {
        if ((*(*(a1 + 32) + 16))())
        {
          v17 = 2;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_18;
      }

      if (a3)
      {
        (*(*(a1 + 40) + 16))();
        v17 = 2;
        goto LABEL_18;
      }

      if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
      {
        sub_10011DC98();
      }
    }

    else if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011DCB4();
    }

    v17 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DC98();
  }

  v17 = 0;
LABEL_19:

  return v17;
}

void sub_100079058(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DD6C(a2);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }
}

void sub_10007919C(id a1)
{
  if (CFPrefs_GetInt64())
  {
    v1 = objc_alloc_init(RPMetrics);
    v2 = qword_1001D6300;
    qword_1001D6300 = v1;

    [qword_1001D6300 activate];
  }
}

void sub_100079494(id a1)
{
  if (dword_1001D4158 <= 30 && (dword_1001D4158 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DDEC();
  }
}

void sub_100079578(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
    v5 = [v4 unsignedIntegerValue];

    v6 = [NSNumber numberWithUnsignedInteger:v5 + 1];
    [*(*(a1 + 32) + 32) setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    [v3 setObject:&off_1001B7FD8 forKeyedSubscript:*(a1 + 40)];
  }

  *(*(a1 + 32) + 24) = 1;
}

void sub_1000796EC(uint64_t a1)
{
  v7 = [[NSString alloc] initWithFormat:@"%d, %d, %@", *(a1 + 48), *(a1 + 49), *(a1 + 32)];
  v2 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:?];

  v3 = *(*(a1 + 40) + 48);
  if (v2)
  {
    v4 = [v3 objectForKeyedSubscript:v7];
    v5 = [v4 unsignedIntegerValue];

    v6 = [NSNumber numberWithUnsignedInteger:v5 + 1];
    [*(*(a1 + 40) + 48) setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    [v3 setObject:&off_1001B7FD8 forKeyedSubscript:v7];
  }

  *(*(a1 + 40) + 24) = 1;
}

uint64_t sub_10007A098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1001D6310 != -1)
  {
    sub_10011DE08();
  }

  v8 = dlsym(qword_1001D6318, "PLLogRegisteredEvent");
  off_1001D41C8 = v8;

  return (v8)(a1, a2, a3, a4);
}

void sub_10007A168(id a1)
{
  v1 = objc_alloc_init(RPWiFiP2PTransaction);
  v2 = qword_1001D6328;
  qword_1001D6328 = v1;
}

void sub_10007A304(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void sub_10007A334(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(*v2 + 8);
  if (!v4)
  {
    v5 = +[NSMutableSet set];
    v6 = *(*v2 + 8);
    *(*v2 + 8) = v5;

    v4 = *(*v2 + 8);
  }

  v8 = *(a1 + 40);
  v7 = (a1 + 40);
  [v4 addObject:v8];
  objc_sync_exit(v3);

  if (dword_1001D41D0 <= 30 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DE78(v7, v2);
  }
}

void *sub_10007A408(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (dword_1001D41D0 <= 90 && (dword_1001D41D0 != -1 || _LogCategory_Initialize()))
    {
      sub_10011DEC4();
    }

    v3 = v2[5];
    v4 = *(v2[4] + 8);

    return [v4 removeObject:v3];
  }

  return result;
}

Class sub_10007A6A8()
{
  if (qword_1001D6338 != -1)
  {
    sub_10011DF24();
  }

  result = objc_getClass("WiFiP2PSPITransactionRequestor");
  qword_1001D6330 = result;
  off_1001D4240 = sub_10007A6FC;
  return result;
}

void sub_10007B130(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D42B8 <= 90 && (dword_1001D42B8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EB20();
    }
  }

  else if (dword_1001D42B8 <= 30 && (dword_1001D42B8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011EB60();
  }

  (*(*(a1 + 32) + 16))();
}

Class sub_10007B574()
{
  if (qword_1001D6358 != -1)
  {
    sub_10011EC50();
  }

  result = objc_getClass("CBDiscovery");
  qword_1001D6350 = result;
  off_1001D4328 = sub_10007B5C8;
  return result;
}

id sub_10007C068(uint64_t a1)
{
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011EFA4();
  }

  [*(a1 + 32) _stopPollingCoolDownTimer];
  v2 = *(a1 + 32);

  return [v2 _updatePolling];
}

void sub_10007C27C(uint64_t a1)
{
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F044();
  }

  [*(a1 + 32) _stopConnectToReceiverTimer];
  v2 = [*(a1 + 32) currentTransaction];
  v3 = [v2 role];

  if (v3 != 1)
  {
    v4 = *(a1 + 32);

    [v4 _stopInitiator];
  }
}

id sub_10007C480(uint64_t a1)
{
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F07C();
  }

  v2 = *(a1 + 32);

  return [v2 _stopInitiator];
}

void sub_10007C614(uint64_t a1)
{
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F0C0();
  }

  [*(a1 + 32) _stopBecomeInitiatorTimer];
  v2 = [*(a1 + 32) currentTransaction];

  if (!v2)
  {
    v3 = *(a1 + 32);

    [v3 _startInitiator];
  }
}

void sub_10007D81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) _didReceiveAuthenticationResponseWithResult:a2 error:a3])
  {
    v4 = [*(a1 + 32) currentTransaction];
    v5 = [v4 remoteAuthenticationMessage];
    v6 = [v5 payload];
    v7 = [v6 type];

    if (v7)
    {
      v8 = [*(a1 + 32) dataSource];
      v9 = [v8 transactionController:*(a1 + 32) requestMessageForType:2];

      if (v9)
      {
        v10 = [*(a1 + 32) currentTransaction];
        [v10 setLocalValidationMessage:v9];

        if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
        {
          sub_10011F54C();
        }

        v11 = *(a1 + 40);
        v12 = [v9 connectionHandoverRequest];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10007DAE0;
        v20[3] = &unk_1001AD7E0;
        v20[4] = *(a1 + 32);
        [v11 sendHandoverRequest:v12 responseHandler:v20];
      }

      else
      {
        if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
        {
          sub_10011F58C();
        }

        v18 = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:2 userInfo:0];
        [*(a1 + 32) _finishCurrentTransactionWithError:v18];
      }
    }

    else
    {
      if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F5A8();
      }

      v13 = *(a1 + 32);
      v14 = [v13 currentTransaction];
      v15 = [v14 remoteAuthenticationMessage];
      v16 = [v15 applicationLabel];
      v19 = [v13 _createTapEventForApplicationLabel:v16];

      v17 = [*(a1 + 32) currentTransaction];
      [v17 setTapEvent:v19];

      [*(a1 + 32) _finishCurrentTransactionWithError:0];
    }
  }
}

void sub_10007E2EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = v3;
    if (dword_1001D4330 <= 90)
    {
      if (dword_1001D4330 != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
      {
        sub_10011F82C();
        v4 = v8;
      }
    }

    [*(a1 + 32) _finishCurrentTransactionWithError:v4];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      [v6 _didReceiveAuthenticationMessage:v7];
    }

    else
    {
      [v6 _didReceiveValidationMessage:v7];
    }
  }
}

void sub_10007E824(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
LABEL_7:
      v6 = [*(a1 + 32) URL];
      LogPrintF();
    }
  }

  else if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_7;
  }
}

Class sub_10007EB3C()
{
  if (qword_1001D6370 != -1)
  {
    sub_10011F94C();
  }

  result = objc_getClass("NFConnectionHandoverInitiator");
  qword_1001D6368 = result;
  off_1001D43A0 = sub_10007EB90;
  return result;
}

Class sub_10007EBC8()
{
  if (qword_1001D6370 != -1)
  {
    sub_10011F94C();
  }

  result = objc_getClass("NFConnectionHandoverReceiver");
  qword_1001D6380 = result;
  off_1001D43A8 = sub_10007EC1C;
  return result;
}

Class sub_10007EC28()
{
  if (qword_1001D6390 != -1)
  {
    sub_10011F960();
  }

  result = objc_getClass("LSApplicationWorkspace");
  qword_1001D6388 = result;
  off_1001D43B0 = sub_10007EC7C;
  return result;
}

void sub_10007EDB0(uint64_t a1)
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10007EEB8;
  v9 = &unk_1001ABA80;
  v10 = 0;
  v11 = *(a1 + 40);
  v2 = objc_retainBlock(&v6);
  v3 = *(a1 + 32);
  if (v3[2] && v3[4])
  {
    v4 = [v3 _createAndRunSession];
  }

  else
  {
    v4 = RPErrorF();
  }

  v5 = v4;
  (v2[2])(v2);
}

uint64_t sub_10007EEB8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_1001D4478 <= 90)
    {
      if (dword_1001D4478 != -1 || (v3 = _LogCategory_Initialize(), v4 = *(a1 + 32), v3))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_10007EFD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (v2)
  {
    *(v1 + 56) = 0;
    v6 = v2;

    [v6 invalidate];
    [v6 setDelegate:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;
  }
}

void sub_10007F0EC(uint64_t a1)
{
  v2 = [*(a1 + 32) bleDevice];
  if (v2)
  {
    v14 = v2;
    v3 = [v2 advertisementFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    v5 = [*(a1 + 32) model];
    if (!v5)
    {
      if ([*(a1 + 32) deviceModelCode] == 5)
      {
        v6 = [*(a1 + 32) deviceModelCode];
        if (v6 <= 3)
        {
          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v7 = "SEish";
            }

            else
            {
              v7 = "J3XXish";
            }

            goto LABEL_23;
          }

          if (!v6)
          {
            v7 = "Unknown";
            goto LABEL_23;
          }

          if (v6 == 1)
          {
            v7 = "D22ish";
            goto LABEL_23;
          }
        }

        else
        {
          if (v6 <= 5)
          {
            if (v6 == 4)
            {
              v7 = "N112ish";
            }

            else
            {
              v7 = "B520ish";
            }

            goto LABEL_23;
          }

          if (v6 == 6)
          {
            v7 = "B620ish";
            goto LABEL_23;
          }

          if (v6 == 7)
          {
            v7 = "J255ish";
            goto LABEL_23;
          }
        }

        v7 = "?";
LABEL_23:
        v5 = [NSString stringWithUTF8String:v7];
        goto LABEL_24;
      }

      v5 = 0;
    }

LABEL_24:
    v8 = objc_alloc(off_1001D44E8());
    v9 = [v14 rssi];
    v10 = [v14 identifier];
    v11 = [v10 UUIDString];
    v12 = [v8 initWithRSSI:v11 identifier:v5 model:Int64Ranged channel:v9 machContinuousTimeSeconds:mach_continuous_time()];

    v13 = [*(*(a1 + 40) + 56) devicePresenceNotifier];
    [v13 notifyBluetoothSample:v12];

    v2 = v14;
  }
}

Class sub_10007F988()
{
  if (qword_1001D63A8 != -1)
  {
    sub_10011FAF8();
  }

  result = objc_getClass("NIBluetoothSample");
  qword_1001D63A0 = result;
  off_1001D44E8 = sub_10007F9DC;
  return result;
}

Class sub_10007FA14()
{
  if (qword_1001D63A8 != -1)
  {
    sub_10011FAF8();
  }

  result = objc_getClass("NIRegionPredicate");
  qword_1001D63B8 = result;
  off_1001D44F0 = sub_10007FA68;
  return result;
}

Class sub_10007FA74()
{
  if (qword_1001D63A8 != -1)
  {
    sub_10011FAF8();
  }

  result = objc_getClass("NIDevicePresenceConfiguration");
  qword_1001D63C0 = result;
  off_1001D44F8 = sub_10007FAC8;
  return result;
}

Class sub_10007FAD4()
{
  if (qword_1001D63A8 != -1)
  {
    sub_10011FAF8();
  }

  result = objc_getClass("NISession");
  qword_1001D63C8 = result;
  off_1001D4500 = sub_10007FB28;
  return result;
}

void sub_100080084(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 16))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = objc_opt_new();
          [RPNWEndpoint addEndpointMapping:v10 endpointID:v11 applicationService:*(*(a1 + 32) + 48) discoverySessionID:*(*(a1 + 32) + 40) shouldAutomapListener:1];
        }

        v7 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [*(a1 + 32) updateClientBrowseResult];
  }

  else if (dword_1001D45C8 <= 30)
  {
    if (dword_1001D45C8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
    }

    v12 = [*(v5 + 72) browseToken];
    v13 = *(a1 + 32);
    v14 = objc_alloc_init(NSMutableString);
    [v14 appendFormat:@"%p", v13];

    LogPrintF();
  }

LABEL_14:
}

void sub_100080278(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 32);
  if (*(v3 + 16))
  {
    if (dword_1001D45C8 <= 30)
    {
      if (dword_1001D45C8 != -1 || (v10 = _LogCategory_Initialize(), v3 = *(a1 + 32), v10))
      {
        v4 = [*(v3 + 72) browseToken];
        v5 = *(a1 + 32);
        v6 = objc_alloc_init(NSMutableString);
        [v6 appendFormat:@"%p", v5];

        LogPrintF();
        v3 = *(a1 + 32);
      }
    }

    v7 = objc_opt_new();
    [v3 addMappingForDevice:v11 endpointID:v7];
    goto LABEL_10;
  }

  if (dword_1001D45C8 > 30)
  {
    goto LABEL_11;
  }

  if (dword_1001D45C8 != -1)
  {
LABEL_7:
    v7 = [*(v3 + 72) browseToken];
    v8 = *(a1 + 32);
    v9 = objc_alloc_init(NSMutableString);
    [v9 appendFormat:@"%p", v8];

    LogPrintF();
LABEL_10:

    goto LABEL_11;
  }

  if (_LogCategory_Initialize())
  {
    v3 = *(a1 + 32);
    goto LABEL_7;
  }

LABEL_11:
}

void sub_10008043C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 16))
  {
    v16 = v3;
    if (dword_1001D45C8 <= 30 && (dword_1001D45C8 != -1 || (v11 = _LogCategory_Initialize(), v4 = *(a1 + 32), v11)))
    {
      v5 = [*(v4 + 72) browseToken];
      v6 = *(a1 + 32);
      v7 = objc_alloc_init(NSMutableString);
      [v7 appendFormat:@"%p", v6];

      LogPrintF();
      [*(a1 + 32) updateMappingForDevice:{v16, v5, v7, v16}];
    }

    else
    {
      [v4 updateMappingForDevice:{v16, v13, v14, v15}];
    }

    goto LABEL_10;
  }

  if (dword_1001D45C8 > 30)
  {
    goto LABEL_11;
  }

  v16 = v3;
  if (dword_1001D45C8 != -1)
  {
LABEL_7:
    v8 = [*(v4 + 72) browseToken];
    v9 = *(a1 + 32);
    v10 = objc_alloc_init(NSMutableString);
    [v10 appendFormat:@"%p", v9];

    LogPrintF();
LABEL_10:
    v3 = v16;
    goto LABEL_11;
  }

  v12 = _LogCategory_Initialize();
  v3 = v16;
  if (v12)
  {
    v4 = *(a1 + 32);
    goto LABEL_7;
  }

LABEL_11:
}

void sub_1000805F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 16))
  {
    v16 = v3;
    if (dword_1001D45C8 <= 30 && (dword_1001D45C8 != -1 || (v11 = _LogCategory_Initialize(), v4 = *(a1 + 32), v11)))
    {
      v5 = [*(v4 + 72) browseToken];
      v6 = *(a1 + 32);
      v7 = objc_alloc_init(NSMutableString);
      [v7 appendFormat:@"%p", v6];

      LogPrintF();
      [*(a1 + 32) removeDevice:{v16, v5, v7, v16}];
    }

    else
    {
      [v4 removeDevice:{v16, v13, v14, v15}];
    }

    goto LABEL_10;
  }

  if (dword_1001D45C8 > 30)
  {
    goto LABEL_11;
  }

  v16 = v3;
  if (dword_1001D45C8 != -1)
  {
LABEL_7:
    v8 = [*(v4 + 72) browseToken];
    v9 = *(a1 + 32);
    v10 = objc_alloc_init(NSMutableString);
    [v10 appendFormat:@"%p", v9];

    LogPrintF();
LABEL_10:
    v3 = v16;
    goto LABEL_11;
  }

  v12 = _LogCategory_Initialize();
  v3 = v16;
  if (v12)
  {
    v4 = *(a1 + 32);
    goto LABEL_7;
  }

LABEL_11:
}

void sub_1000807BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = [v2 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100080854;
    block[3] = &unk_1001AA970;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }
}

void sub_100080AD0(id a1)
{
  v1 = objc_alloc_init(RPNWNetworkAgent);
  v2 = qword_1001D63D0;
  qword_1001D63D0 = v1;
}

uint64_t sub_100081B1C(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithCString:a2 encoding:1];
  [*(a1 + 32) addObject:v3];

  return 1;
}

int sub_100081C30(id a1, NSData *a2, NSNumber *a3, RPCompanionLinkDevice *a4, int a5, NSString *a6, NSData *a7, id *a8, id *a9, NSUUID *a10, BOOL a11, NSUUID *a12, id *a13)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = a10;
  v24 = a12;
  if (v20 && v21 && v22)
  {
    v47 = a8;
    if (dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      v42 = v21;
      v43 = v20;
      LogPrintF();
    }

    v26 = [RPNWAgentClient findListenerAgentClientFromApplicationServiceName:v21, v42, v43];
    v27 = v26;
    if (v26)
    {
      v44 = v23;
      v45 = v19;
      v46 = v18;
      v28 = [v26 agentClientID];
      v29 = v28;
      *a9 = v29;
      v30 = [v29 UUIDString];
      v31 = [v30 cStringUsingEncoding:4];

      bonjour_service = nw_endpoint_create_bonjour_service(v31, "_asquic._udp", "local");
      v48 = v22;
      v33 = [NSArray arrayWithObjects:&v48 count:1];
      nw_endpoint_set_public_keys();

      v34 = [(RPCompanionLinkDevice *)v20 idsDeviceIdentifier];

      if (v34)
      {
        v35 = [(RPCompanionLinkDevice *)v20 idsDeviceIdentifier];
        [v35 UTF8String];
        nw_endpoint_set_device_id();
      }

      v36 = [v27 browseClient];
      *v47 = [RPNWUtils publicKeyFromAgentClient:v36];

      if (dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        v37 = [v27 browseToken];
        v38 = [(RPCompanionLinkDevice *)v20 idsDeviceIdentifier];
        [*v47 hash];
        [(NSData *)v22 hash];
        LogPrintF();
      }

      v39 = nw_array_create();
      nw_array_append();
      v40 = [v27 browseResponse];
      (v40)[2](v40, v39);

      if (*v47)
      {
        v25 = 2 * (*a9 != 0);
      }

      else
      {
        v25 = 0;
      }

      v19 = v45;
      v18 = v46;
      v23 = v44;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120034();
    }

    v25 = 0;
  }

  return v25;
}

id sub_100081FE8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, char a11, void *a12)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v22 = a10;
  v23 = a12;
  v24 = v23;
  if (v19 && v20 && v22 && v23)
  {
    v25 = [RPNWListener findListenerForID:v22 applicationService:v20 fromPeer:v19];
    if (!v25 && a11)
    {
      v25 = [RPNWListener addDeviceToApplicationServiceMapping:v20 device:v19 completion:0];
      [v25 setAutomapped:1];
    }

    v26 = [*(*(a1 + 32) + 88) findListenerAndCreateConnection:v19 version:v18 applicationService:v20 listenerID:v22 connectionID:v24];
  }

  else
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120050();
    }

    v26 = 0;
  }

  return v26;
}

uint64_t sub_100082478(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setListen_framer:v3];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120194(a1, (a1 + 32));
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008257C;
  v5[3] = &unk_1001AD9B8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  nw_framer_set_cleanup_handler(v3, v5);

  return 1;
}

void sub_10008257C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012022C(a1, v3);
  }

  [*(a1 + 40) setListen_framer:0];
}

void sub_100082E80(uint64_t a1, int a2, void *a3)
{
  v12 = a3;
  if ((a2 - 1) > 1)
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012074C(a1);
    }

    v7 = [*(a1 + 40) framer];
    v8 = [*(a1 + 32) flowToken];
    [RPNWFramer writeErrorOnFramer:v7 token:v8 error:61];
    goto LABEL_15;
  }

  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001207AC(a1);
  }

  v5 = [*(a1 + 40) peer];
  [v5 handleConnectionData:0];

  v6 = [*(a1 + 32) type];
  if (a2 == 2 && v6 == 4)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001208BC((a1 + 32));
    }

    [*(a1 + 40) setIsConnected:1];
    v7 = [*(a1 + 40) framer];
    v8 = [*(a1 + 32) flowToken];
    [RPNWFramer startConnection:v7 token:v8];
LABEL_15:

    goto LABEL_16;
  }

  if ([*(a1 + 32) type] == 3)
  {
    v9 = [*(a1 + 40) version];
    [v9 doubleValue];
    v11 = v10;

    if (v11 >= 2.0)
    {
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10012085C((a1 + 32));
      }

      [*(a1 + 40) ensureReadyHasBeenSent];
    }
  }

LABEL_16:
}

void sub_1000830BC(uint64_t a1)
{
  if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012091C(a1);
  }

  v3 = [*(a1 + 40) framer];
  v2 = [*(a1 + 32) flowToken];
  [RPNWFramer writeErrorOnFramer:v3 token:v2 error:50];
}

uint64_t sub_100083170(uint64_t a1, void *a2)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setFramer:v5];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012097C(a1, v3);
  }

  v6 = [*(a1 + 40) flowToken];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000833A4;
  v15[3] = &unk_1001ADA08;
  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100083714;
  v12[3] = &unk_1001AB488;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  [RPNWFramer setupDaemonFramer:v5 token:v6 receiveHandler:v15 closeHandler:v12];

  if ([*(a1 + 32) statusCode])
  {
    v7 = *(*(a1 + 56) + 104);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100083790;
    block[3] = &unk_1001AB488;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    dispatch_async(v7, block);
  }

  return 2;
}

void sub_1000833A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (dword_1001D4638 <= 10 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001209F8(a1);
  }

  v8 = (a1 + 40);
  v9 = [*(a1 + 40) outgoingBuffer];

  if (!v9)
  {
    v10 = [NSMutableData dataWithCapacity:0x4000];
    [*v8 setOutgoingBuffer:v10];
  }

  v11 = [*v8 outgoingBuffer];
  [v11 appendBytes:a2 length:a3];

  v12 = [*v8 outgoingBuffer];
  v13 = [v12 length];

  if (v13 >> 9 > 0x1E || a4 == 0)
  {
    v15 = [*v8 outgoingBuffer];
    [*v8 setOutgoingBuffer:0];
    if (dword_1001D4638 <= 10 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120A70();
    }

    [*(a1 + 40) ensureReadyHasBeenSent];
    v16 = [*(a1 + 40) peer];
    v17 = [*(a1 + 32) flowToken];
    v18 = *(a1 + 48);
    v19 = [*(a1 + 40) connectionUUID];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100083624;
    v20[3] = &unk_1001AB540;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    [v16 sendDataForConnection:v15 token:v17 applicationService:v18 connectionID:v19 responseHandler:v20];
  }

  else if (dword_1001D4638 <= 10 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120B2C(a1, (a1 + 40));
  }
}

void sub_100083624(uint64_t a1, uint64_t a2)
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120BBC(a1, a2);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 61;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (a2 != 3)
  {
    return;
  }

  v4 = 50;
LABEL_10:
  v6 = [*(a1 + 40) framer];
  v5 = [*(a1 + 32) flowToken];
  [RPNWFramer writeErrorOnFramer:v6 token:v5 error:v4];
}

id sub_100083714(uint64_t a1)
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120C40(a1);
  }

  [*(a1 + 40) sendStatusUpdate:4];
  v2 = *(a1 + 40);

  return [v2 setIsConnected:0];
}

id sub_100083790(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) statusCode];

  return [v1 handleStatusCode:v2];
}

void sub_100083E50(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (a2 != 2)
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120E54();
    }

    v6 = [*(a1 + 32) framer];
    v7 = [*(a1 + 40) flowToken];
    [RPNWFramer writeErrorOnFramer:v6 token:v7 error:61];
    goto LABEL_14;
  }

  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120E70(a1);
  }

  v5 = [*(a1 + 32) peer];
  [v5 handleConnectionData:0];

  if ([*(a1 + 40) type] == 4)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120F18();
    }

    [*(a1 + 32) setIsConnected:1];
    v6 = [*(a1 + 32) framer];
    v7 = [*(a1 + 40) flowToken];
    [RPNWFramer startConnection:v6 token:v7];
LABEL_14:

    goto LABEL_15;
  }

  if ([*(a1 + 40) type] == 3)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120EFC();
    }

    [*(a1 + 32) sendStatusUpdate:5];
  }

LABEL_15:
}

void sub_100084044(uint64_t a1)
{
  if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120F34();
  }

  v3 = [*(a1 + 32) framer];
  v2 = [*(a1 + 40) flowToken];
  [RPNWFramer writeErrorOnFramer:v3 token:v2 error:50];
}

uint64_t sub_1000840F4(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] setFramer:v3];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120F50();
  }

  v4 = [a1[5] flowToken];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100084284;
  v8[3] = &unk_1001ADA08;
  v9 = a1[4];
  v10 = a1[6];
  v11 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000844B0;
  v6[3] = &unk_1001AA970;
  v7 = a1[4];
  [RPNWFramer setupDaemonFramer:v3 token:v4 receiveHandler:v8 closeHandler:v6];

  return 2;
}

void sub_100084284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSData dataWithBytes:a2 length:a3];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120F90(v4, a1);
  }

  v5 = [*(a1 + 32) peer];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) connectionUUID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000843C4;
  v8[3] = &unk_1001AB540;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  [v5 sendDataForConnection:v4 applicationService:v6 connectionID:v7 responseHandler:v8];
}

void sub_1000843C4(uint64_t a1, uint64_t a2)
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121030(a2);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 61;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (a2 != 3)
  {
    return;
  }

  v4 = 50;
LABEL_10:
  v6 = [*(a1 + 32) framer];
  v5 = [*(a1 + 40) flowToken];
  [RPNWFramer writeErrorOnFramer:v6 token:v5 error:v4];
}

void sub_100084A74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = [RPNWUtils createTokenForClient:v9];
  v12 = nw_agent_client_copy_browse_descriptor();
  if (v12 && nw_browse_descriptor_get_type() == 2)
  {
    v13 = nw_agent_client_copy_parameters();
    if (v13)
    {
      v14 = +[RPNWAgentClient addAgentClient];
      [v14 setBrowseToken:v11];
      if (v14)
      {
        if (a3 && a4)
        {
          v15 = [NSData dataWithBytes:a3 length:a4];
          [v14 setPredicate:v15];
        }

        v16 = [*(a1 + 32) _quicProtocolOptionsFromParameters:v13];
        v17 = v16 != 0;

        pid = nw_parameters_get_pid();
        v18 = [*(a1 + 32) getPersonaFromParameters:v13];
        if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          v19 = @"NO";
          if (v16)
          {
            v19 = @"YES";
          }

          v25 = v11;
          v26 = v14;
          v27 = v19;
          v28 = v13;
          LogPrintF();
        }

        if (nw_browse_descriptor_get_invitation_scope())
        {
          v20 = _os_feature_enabled_impl();
        }

        else
        {
          v20 = 0;
        }

        if ([_TtC8rapportd16RPPairingSession agentClientHasBrowserPairingConfiguration:v9, v25, v26, v27, v28])
        {
          v20 = 2;
        }

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v18;
        }

        v29 = v21;
        v30 = *(a1 + 32);
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100084E14;
        v32[3] = &unk_1001ADA80;
        v33 = v14;
        v34 = v9;
        v42 = v17;
        v35 = v12;
        v36 = v18;
        v40 = pid;
        v41 = v20;
        v22 = *(a1 + 32);
        v37 = v13;
        v38 = v22;
        v39 = v10;
        v23 = v18;
        v24 = v29;
        [v30 executeAgentLogicInPersona:v24 pid:pid handlerDescription:@"Browse Request" handler:v32];
      }

      else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_100121224();
      }
    }

    else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121264();
    }
  }

  else if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001212A4();
  }
}

id sub_100084E14(uint64_t a1)
{
  LODWORD(v8) = *(a1 + 92);
  HIDWORD(v7) = *(a1 + 88);
  LOWORD(v7) = *(a1 + 96);
  [*(a1 + 32) updateAgentClientInfo:*(a1 + 40) browseResponse:0 listener:0 advertiseDescriptor:0 browseDescriptor:*(a1 + 48) isFlowHandler:0 isUsingQUIC:v7 isTCP:*(a1 + 56) agentClientPID:v8 persona:*(a1 + 64) context:? parameters:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 92);

  return [v3 discoverDevices:v2 response:v4 context:v5];
}

void sub_100084E98(id a1, OS_nw_agent_client *a2)
{
  v3 = a2;
  v2 = [RPNWUtils createTokenForClient:?];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001212E4();
  }

  [RPNWAgentClient removeAgentClient:v3 isFlowHandler:0];
}

void sub_1000850B4(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 104);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000851E4;
  block[3] = &unk_1001ADB10;
  v22 = a2;
  v18 = v8;
  v19 = v7;
  *&v10 = *(a1 + 40);
  *(&v10 + 1) = *(a1 + 32);
  v16 = v10;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v20 = v16;
  v21 = v13;
  v14 = v7;
  v15 = v8;
  dispatch_async(v9, block);
}

void sub_1000851E4(uint64_t a1)
{
  v2 = nw_array_create();
  if (*(a1 + 80) != 2)
  {
    if (dword_1001D4638 <= 90)
    {
      if (dword_1001D4638 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v14 = *(a1 + 80);
      }

      v15 = *(a1 + 48);
      [RPNWPeer responseCodeToString:?];
      LogPrintF();
    }

LABEL_17:
    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    v12 = *(*(a1 + 56) + 8);
    v13 = *(a1 + 72);
    nw_agent_send_error_response();
    goto LABEL_18;
  }

  v3 = [*(a1 + 32) UUIDString];
  v4 = [v3 cStringUsingEncoding:4];

  error_with_inferred_domain = nw_endpoint_create_bonjour_service(v4, "_asquic._udp", "local");
  v21 = *(a1 + 40);
  v6 = [NSArray arrayWithObjects:&v21 count:1];
  nw_endpoint_set_public_keys();

  if (dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121324(a1);
  }

  nw_array_append();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [*(*(a1 + 56) + 16) objectForKeyedSubscript:*(a1 + 64)];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v16 + 1) + 8 * i) + 16))();
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

LABEL_18:
  [*(*(a1 + 56) + 16) setObject:0 forKeyedSubscript:*(a1 + 64)];
  [*(*(a1 + 56) + 24) removeObject:*(a1 + 64)];
}

void sub_100085574(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  dispatch_assert_queue_V2(*(v8 + 104));
  v9 = [RPNWUtils createTokenForClient:v5];
  v10 = nw_agent_client_copy_endpoint();
  if (v10)
  {
    v52[0] = 0;
    v52[1] = 0;
    nw_endpoint_get_service_identifier();
    v11 = [[NSUUID alloc] initWithUUIDBytes:v52];
    if ([*(*v7 + 3) containsObject:v11])
    {
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_1001213C4(v7);
      }

      v12 = [*(*v7 + 2) objectForKeyedSubscript:v11];
      if (v12)
      {
        error_with_inferred_domain = [*(*v7 + 2) objectForKeyedSubscript:v11];
        v14 = objc_retainBlock(v6);
        [error_with_inferred_domain addObject:v14];

LABEL_40:
        goto LABEL_41;
      }

      if (dword_1001D4638 > 90 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
      {
LABEL_39:
        error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
        v33 = *(*v7 + 1);
        nw_agent_send_error_response();
        goto LABEL_40;
      }
    }

    else
    {
      v12 = [RPNWEndpoint findEndpoint:v11];
      if (v12)
      {
        error_with_inferred_domain = nw_agent_client_copy_parameters();
        if (error_with_inferred_domain)
        {
          pid = nw_parameters_get_pid();
          v16 = [RPNWUtils publicKeyFromAgentClient:v5];
          v17 = [*v7 convertConnectionParametersToControlFlags:error_with_inferred_domain];
          if (dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
          {
            v38 = &unk_100148C05;
            v39 = [v16 hash];
            v36 = error_with_inferred_domain;
            v37 = v17;
            v34 = v9;
            v35 = v10;
            LogPrintF();
          }

          v20 = *(*v7 + 3);
          if (!v20)
          {
            v21 = objc_alloc_init(NSMutableSet);
            v22 = *(*v7 + 3);
            *(*v7 + 3) = v21;

            v20 = *(*v7 + 3);
          }

          v42 = v16;
          [v20 addObject:{v11, v34, v35, v36, v37, v38, v39}];
          v23 = *(*v7 + 2);
          if (!v23)
          {
            v24 = objc_alloc_init(NSMutableDictionary);
            v25 = *(*v7 + 2);
            *(*v7 + 2) = v24;

            v23 = *(*v7 + 2);
          }

          v41 = v17;
          v26 = [v23 objectForKeyedSubscript:v11];

          if (!v26)
          {
            v27 = objc_alloc_init(NSMutableSet);
            [*(*v7 + 2) setObject:v27 forKeyedSubscript:v11];
          }

          v28 = [*(*v7 + 2) objectForKeyedSubscript:v11];
          v29 = objc_retainBlock(v6);
          [v28 addObject:v29];

          v18 = [*v7 getPersonaFromParameters:error_with_inferred_domain];
          v40 = *v7;
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_100085B44;
          v44[3] = &unk_1001ADB60;
          v45 = v42;
          v30 = v9;
          v31 = *v7;
          v46 = v30;
          v47 = v31;
          v48 = v5;
          v49 = v11;
          v50 = v12;
          v51 = v41;
          v32 = v42;
          [v40 executeAgentLogicInPersona:v18 pid:pid handlerDescription:@"Resolve Request" handler:v44];
        }

        else
        {
          if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
          {
            sub_100121384();
          }

          v18 = nw_error_create_error_with_inferred_domain();
          v19 = *(*v7 + 1);
          nw_agent_send_error_response();
        }

        goto LABEL_40;
      }

      if (dword_1001D4638 > 90 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_39;
      }
    }

    LogPrintF();
    goto LABEL_39;
  }

  if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012140C();
  }

  v11 = nw_error_create_error_with_inferred_domain();
  v15 = *(*v7 + 1);
  nw_agent_send_error_response();
LABEL_41:
}

void sub_100085B44(void *a1)
{
  if (a1[4])
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012144C(a1);
    }

    v2 = a1[8];
    v3 = a1[9];
    v4 = a1[10];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[4];
    v8 = a1[5];

    [v5 resolveRequest:v2 existingEndpoint:v3 controlFlags:v4 clientPublicKey:v7 client:v6 token:v8];
  }

  else
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121490(a1);
    }

    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    v9 = a1[7];
    v10 = *(a1[6] + 8);
    nw_agent_send_error_response();
  }
}

void sub_100085C40(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 104));
  v4 = [RPNWUtils createTokenForClient:v3];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001214D4();
  }

  v5 = nw_agent_client_copy_endpoint();
  if (v5)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v19[0] = 0;
    v19[1] = 0;
    nw_endpoint_get_service_identifier();
    error_with_inferred_domain = [[NSUUID alloc] initWithUUIDBytes:v19];
    v8 = nw_array_create();
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:error_with_inferred_domain];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v14 + 1) + 8 * i) + 16))(*(*(&v14 + 1) + 8 * i), v8);
        }

        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:error_with_inferred_domain];
    [*(*(a1 + 32) + 24) removeObject:error_with_inferred_domain];
  }

  else
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121514();
    }

    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    v7 = *(*(a1 + 32) + 8);
    nw_agent_send_error_response();
  }
}

void sub_10008633C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    [*(a1 + 32) setNearbyInvitationServer:*(a1 + 40)];
    goto LABEL_7;
  }

  if (dword_1001D4638 <= 90)
  {
    v6 = v3;
    if (dword_1001D4638 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1001216BC(a1);
LABEL_7:
      v4 = v6;
    }
  }
}

void sub_1000863D4(uint64_t a1)
{
  if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121728(a1);
  }

  v2 = [*(a1 + 32) nearbyInvitationConnection];
  if (v2)
  {
    v5 = v2;
    v3 = [v2 framer];
    v4 = [*(a1 + 32) flowToken];
    [RPNWFramer writeErrorOnFramer:v3 token:v4 error:57];

    [*(a1 + 40) setNearbyInvitationSession:0];
    v2 = v5;
  }
}

void sub_1000865A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [RPNWUtils createTokenForClient:v5];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001217A4();
  }

  v8 = [*(a1 + 32) _applicationServiceAdvertiseDescriptorForClient:v5];
  if (v8)
  {
    v9 = nw_agent_client_copy_parameters();
    if (v9)
    {
      v35 = [*(a1 + 32) _isTCPTransport:v9];
      v10 = [RPNWAgentClient findAgentClient:"findAgentClient:tryPort:isTCP:isFlowHandler:" tryPort:v5 isTCP:1 isFlowHandler:?];
      if (v10 || (+[RPNWAgentClient addAgentClient], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        v34 = v6;
        v12 = [v10 browseToken];

        if (v12 && dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          sub_1001217E4(v11);
        }

        [v11 setBrowseToken:v7];
        v13 = [*(a1 + 32) _quicProtocolOptionsFromParameters:v9];
        v32 = v13 != 0;

        application_service_name = nw_advertise_descriptor_get_application_service_name(v8);
        pid = nw_parameters_get_pid();
        v15 = [*(a1 + 32) getPersonaFromParameters:v9];
        if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          v16 = @"NO";
          if (v13)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          if (v35)
          {
            v16 = @"YES";
          }

          v29 = v16;
          v30 = v9;
          v26 = v7;
          v27 = application_service_name;
          v28 = v17;
          LogPrintF();
        }

        invitation_route = nw_advertise_descriptor_get_invitation_route();
        invitation_scope = nw_advertise_descriptor_get_invitation_scope();
        v20 = 0;
        v21 = v15;
        if (invitation_route && invitation_scope)
        {
          v20 = _os_feature_enabled_impl() & 1;
          if (v20)
          {
            v21 = 0;
          }

          else
          {
            v21 = v15;
          }
        }

        v31 = v21;
        if ([_TtC8rapportd16RPPairingSession agentClientHasListenerPairingConfiguration:v5, v26, v27, v28, v29, v30])
        {
          v20 = 2;
        }

        v22 = *(a1 + 32);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000869E4;
        v36[3] = &unk_1001ADBD8;
        v37 = v11;
        v38 = v5;
        v6 = v34;
        v43 = v34;
        v46 = v32;
        v47 = v35;
        v39 = v8;
        v40 = v15;
        v44 = pid;
        v45 = v20;
        v23 = *(a1 + 32);
        v41 = v9;
        v42 = v23;
        v24 = v15;
        v25 = v11;
        [v22 executeAgentLogicInPersona:v31 pid:pid handlerDescription:@"Advertise Request" handler:v36];
      }

      else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10012184C();
      }
    }

    else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012188C();
    }
  }

  else if (dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001218CC();
  }
}

id sub_1000869E4(uint64_t a1)
{
  LODWORD(v6) = *(a1 + 92);
  HIDWORD(v5) = *(a1 + 88);
  LOWORD(v5) = *(a1 + 96);
  [*(a1 + 32) updateAgentClientInfo:*(a1 + 40) browseResponse:*(a1 + 80) listener:0 advertiseDescriptor:*(a1 + 48) browseDescriptor:0 isFlowHandler:0 isUsingQUIC:v5 isTCP:*(a1 + 56) agentClientPID:v6 persona:*(a1 + 64) context:? parameters:?];
  [*(a1 + 72) createListener:*(a1 + 32) context:*(a1 + 92)];
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);

  return [v2 _completePendingKeyExchangeForAgentClient:v3];
}

void sub_100086A70(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [RPNWUtils createTokenForClient:?];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012190C();
  }

  v4 = [*(a1 + 32) _applicationServiceAdvertiseDescriptorForClient:v5];
  if (v4)
  {
    [RPNWAgentClient removeAgentClient:v5 isFlowHandler:0];
  }
}

void sub_10008746C(id a1, OS_nw_agent_client *a2)
{
  v3 = a2;
  v2 = [RPNWUtils createTokenForClient:?];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121C50();
  }

  [RPNWAgentClient removeAgentClient:v3 isFlowHandler:1];
}

void sub_10008759C(id a1, OS_nw_agent_client *a2, id a3)
{
  v3 = [RPNWUtils createTokenForClient:a2];
  v4 = v3;
  if (dword_1001D4638 <= 30)
  {
    v6 = v3;
    if (dword_1001D4638 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100121CD0();
      v4 = v6;
    }
  }
}

void sub_100087624(id a1, OS_nw_agent_client *a2)
{
  v2 = [RPNWUtils createTokenForClient:a2];
  v3 = v2;
  if (dword_1001D4638 <= 30)
  {
    v5 = v2;
    if (dword_1001D4638 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100121D10();
      v3 = v5;
    }
  }
}

void sub_100087E00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 104));
  v7 = [RPNWUtils createTokenForClient:v5];
  v8 = nw_agent_client_copy_endpoint();
  if (v8)
  {
    v19[0] = 0;
    v19[1] = 0;
    nw_endpoint_get_service_identifier();
    v9 = [[NSUUID alloc] initWithUUIDBytes:v19];
    v18 = 0;
    v10 = [RPNWEndpoint findEndpoint:v9 isFromDDUI:&v18];
    if (v10)
    {
      if (v18)
      {
        error_with_inferred_domain = nw_array_create();
        v12 = [v10 device];
        v13 = [v12 idsDeviceIdentifier];

        if (v13)
        {
          v14 = [v10 device];
          v15 = [v14 idsDeviceIdentifier];
          [v15 UTF8String];
          nw_endpoint_set_device_id();
        }

        else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        nw_array_append();
        if (dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          sub_100121FFC();
        }

        v6[2](v6, error_with_inferred_domain);
        goto LABEL_28;
      }

      if (dword_1001D4638 > 90 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
      {
LABEL_22:
        error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
        v17 = *(*(a1 + 32) + 48);
        nw_agent_send_error_response();
LABEL_28:

        goto LABEL_29;
      }
    }

    else if (dword_1001D4638 > 90 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_22;
    }

    LogPrintF();
    goto LABEL_22;
  }

  if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012203C();
  }

  v9 = nw_error_create_error_with_inferred_domain();
  v16 = *(*(a1 + 32) + 48);
  nw_agent_send_error_response();
LABEL_29:
}

void sub_10008818C(uint64_t a1, uint64_t a2)
{
  v3 = [RPNWUtils createTokenForClient:a2];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012207C();
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 104));
}

void sub_100088578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100088590(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = v4;
    is_quic = nw_protocol_options_is_quic(v4);
    v5 = v7;
    if (is_quic)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v5 = v7;
    }
  }
}

id sub_100088F5C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

id sub_10008905C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

Class sub_1000891B0()
{
  if (qword_1001D63E8 != -1)
  {
    sub_100122278();
  }

  result = objc_getClass("SFClient");
  qword_1001D63E0 = result;
  off_1001D46A8[0] = sub_100089204;
  return result;
}

Class sub_10008923C()
{
  if (qword_1001D63E8 != -1)
  {
    sub_100122278();
  }

  result = objc_getClass("SFAppleIDClient");
  qword_1001D63F8 = result;
  off_1001D46B0 = sub_100089290;
  return result;
}

void sub_1000893A4(id a1)
{
  v1 = objc_alloc_init(NSMutableArray);
  v2 = qword_1001D6400;
  qword_1001D6400 = v1;

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = qword_1001D6408;
  qword_1001D6408 = v3;
}

id sub_1000898C4(uint64_t a1)
{
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_10012257C(a1);
  }

  [*(a1 + 32) deregisterRequestID:@"com.apple.oneapi.data"];
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_100089944(id a1)
{
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100122600();
  }
}

void sub_100089990(id a1)
{
  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_10012261C();
  }
}

void sub_10008A0EC(void *a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = objc_alloc_init(RPCompanionLinkDevice);
        [v8 updateWithEndpoint:v7];
        v9 = objc_alloc_init(NSUUID);
        [RPNWEndpoint removeEndpointMapping:v8 discoverySessionID:a1[4] immediate:1];
        [RPNWEndpoint addEndpointMapping:v8 endpointID:v9 applicationService:a1[5] discoverySessionID:a1[4] shouldAutomapListener:0];
        [_TtC8rapportd16RPPairingSession addPairingSession:*(a1[6] + 176) forUUID:v9];
      }

      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = a1[6];
  if (*(v10 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = a1[7];
  }

  [RPNWEndpoint updateClientBrowseResult:*(v10 + 120) browseResponse:a1[8] token:*(v10 + 72) agentUUID:v11 agentClientID:*(v10 + 48) agentClientPID:*(v10 + 32) applicationService:a1[5] discoverySessionID:a1[4] predicate:0];
}

void sub_10008A2A0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001D46B8 <= 90)
    {
      v6 = v2;
      if (dword_1001D46B8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_100122838();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_1001D46B8 <= 90)
  {
    v6 = 0;
    if (dword_1001D46B8 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_100122878();
      goto LABEL_13;
    }
  }
}

void sub_10008A8F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1001D46B8 <= 90)
  {
    v6 = v3;
    if (dword_1001D46B8 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100122928(a1);
      v4 = v6;
    }
  }
}

uint64_t sub_10008A978(uint64_t result)
{
  if (dword_1001D46B8 <= 90)
  {
    v1 = result;
    if (dword_1001D46B8 != -1)
    {
      return sub_100122978(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100122978(v1);
    }
  }

  return result;
}

uint64_t sub_10008AA74(uint64_t result)
{
  if (dword_1001D46B8 <= 30)
  {
    v1 = result;
    if (dword_1001D46B8 != -1)
    {
      return sub_1001229C4(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001229C4(v1);
    }
  }

  return result;
}

void sub_10008ADDC(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  if ((a2 - 1) > 1)
  {
    if (dword_1001D46B8 <= 90 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100122BDC(a1);
    }

    v7 = [*(a1 + 40) framer];
    v8 = [*(a1 + 32) flowToken];
    [RPNWFramer writeErrorOnFramer:v7 token:v8 error:61];
    goto LABEL_15;
  }

  if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
  {
    sub_100122C3C(a1);
  }

  v5 = [*(a1 + 40) peer];
  [v5 handleConnectionData:0];

  v6 = [*(a1 + 32) type];
  if (a2 == 2 && v6 == 4)
  {
    if (dword_1001D46B8 <= 30 && (dword_1001D46B8 != -1 || _LogCategory_Initialize()))
    {
      sub_100122CD8((a1 + 32));
    }

    [*(a1 + 40) setIsConnected:1];
    v7 = [*(a1 + 40) framer];
    v8 = [*(a1 + 32) flowToken];
    [RPNWFramer startConnection:v7 token:v8];
LABEL_15:
  }
}

void sub_10008B9F8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 description];
  [v4 appendFormat:@"(PID: %@, BundleID: %@)", v5, v6];
}

id sub_10008BDDC()
{

  return objc_alloc_init(v0);
}

void sub_10008C4E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = v3;
  if ([RPNWPeer shouldIncludeDevice:"shouldIncludeDevice:deviceTypes:controlFlags:" deviceTypes:? controlFlags:?])
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_10008C558(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 2) != 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_10008C580(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_1001230C8();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_1001230E4();
    }

    v4 = objc_alloc_init(NSMutableArray);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [*(a1 + 32) activeDevices];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
          {
            sub_100123100();
          }

          if ([RPNWPeer shouldIncludeDevice:v10 deviceTypes:*(a1 + 64) controlFlags:*(a1 + 56)])
          {
            [v4 addObject:v10];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v11 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v7 = v11;
      }

      while (v11);
    }

    (*(*(a1 + 48) + 16))();
    if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_100123140();
    }

    v3 = 0;
  }
}

void sub_10008CA3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008CBC8;
    v11[3] = &unk_1001ADF18;
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v11[4] = *(a1 + 48);
    v12 = v9;
    LOBYTE(v10) = 0;
    [v6 sendWithRequestID:@"com.apple.oneapi.resolve" token:v5 data:0 status:0 applicationService:v7 clientPublicKey:v8 listenerID:0 automapListener:v10 connectionID:0 responseHandler:v11];

    goto LABEL_11;
  }

  if ([v3 code] == -6721)
  {
    if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_100123248();
    }

    goto LABEL_6;
  }

  if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123200(a1);
  }

  (*(*(a1 + 72) + 16))();
  [*(a1 + 48) invalidate];
LABEL_11:
}

id sub_10008CBC8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_10008CD5C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v11 = a3;
  v9 = a4;
  v10 = a5;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123288(a1, a2);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10008D058(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || [v3 code] == -6721)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10008D27C;
    v12 = &unk_1001ADF90;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v5 = *(a1 + 88);
    v15 = *(a1 + 48);
    v16 = v5;
    [v15 setInvalidationHandler:&v9];
    v6 = [*(a1 + 48) invalidationHandler];
    [*(a1 + 48) setInterruptionHandler:v6];

    v7 = [*(a1 + 48) invalidationHandler];
    [*(a1 + 48) setDisconnectHandler:v7];

    if (v4)
    {
      if (dword_1001D4728 > 30)
      {
LABEL_10:
        v8 = *(a1 + 72);
        [*(a1 + 48) connectToOneAPIPeer:*(a1 + 40) token:*(a1 + 32) inboundConnection:*(a1 + 96) applicationService:*(a1 + 56) listenerID:*(a1 + 64) automapListener:*(a1 + 97) connectionID:v8 connectHandler:{*(a1 + 80), v9, v10, v11, v12}];

        goto LABEL_15;
      }

      if (dword_1001D4728 != -1 || _LogCategory_Initialize())
      {
        sub_100123338();
      }
    }

    if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_100123378((a1 + 32), (a1 + 40));
    }

    goto LABEL_10;
  }

  if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_1001232F0(a1);
  }

  (*(*(a1 + 80) + 16))();
LABEL_15:
}

id sub_10008D27C(uint64_t a1)
{
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_1001233C0(a1);
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) setInvalidationHandler:0];
  [*(a1 + 48) setInterruptionHandler:0];
  v2 = *(a1 + 48);

  return [v2 setDisconnectHandler:0];
}

void sub_10008D8BC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 - 1) <= 1 && dword_1001D4728 <= 30)
  {
    v8 = v5;
    if (dword_1001D4728 != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
    {
      sub_10012363C(a1);
      v6 = v8;
    }
  }
}

void sub_10008D950(id a1)
{
  if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_1001236D8();
  }
}

BOOL sub_10008DA10(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_1001236F4(v11, a1);
  }

  v13 = [v11 connection];
  v14 = [v13 framer];

  if (v14)
  {
    v15 = [v11 connection];
    v16 = [v15 framer];

    if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
LABEL_10:
      v19 = [v11 flowToken];
      v20 = v16;
      LogPrintF();
    }
  }

  else
  {
    v16 = [v11 listen_framer];
    if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_10;
    }
  }

  v17 = [RPNWFramer writeDataOnFramer:v16 data:v9, v19, v20];

  return v17;
}

void sub_10008E868(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKeyedSubscript:@"request"];
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123978(v10, a1);
  }

  v11 = [v7 objectForKeyedSubscript:@"status"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 intValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 objectForKeyedSubscript:@"version"];
  v45 = [v7 objectForKeyedSubscript:@"applicationService"];
  v44 = [v7 objectForKeyedSubscript:@"clientPublicKey"];
  v15 = [v8 objectForKeyedSubscript:@"senderID"];
  if (v15)
  {
    v38 = v12;
    v43 = [v8 objectForKeyedSubscript:@"senderIDS"];
    Int64 = CFDictionaryGetInt64();
    if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      v34 = v15;
      v36 = v43;
      v32 = v45;
      LogPrintF();
    }

    v40 = v14;
    v18 = [RPCompanionLinkDaemon sharedCompanionLinkDaemon:v32];
    v19 = [v18 findServerClientFromID:v15 senderIDS:v43 statusFlags:Int64];

    if (!v19 && dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_1001239CC();
    }

    v42 = [v7 objectForKeyedSubscript:@"connectionID"];
    v41 = [v7 objectForKeyedSubscript:@"listenerID"];
    v20 = [v7 objectForKeyedSubscript:@"automapListener"];
    v21 = [v20 BOOLValue];

    if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_1001239E8(v19);
    }

    v22 = *(a1 + 40);
    v46 = 0;
    v47 = 0;
    LOBYTE(v37) = v21;
    v33 = &v46;
    v35 = v41;
    v39 = v10;
    v23 = (*(v22 + 16))(v22, v10, v40, v19, v13);
    v24 = v47;
    v25 = v46;
    v26 = 0;
    v27 = objc_alloc_init(NSMutableDictionary);
    v28 = [NSNumber numberWithUnsignedInt:v23];
    [v27 setObject:v28 forKeyedSubscript:@"response"];
    if (v26)
    {
      if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
      {
        v33 = v28;
        v35 = v26;
        LogPrintF();
      }

      v29 = @"listenerID";
      v30 = v27;
      v31 = v26;
    }

    else
    {
      if (!v24 || !v25)
      {
        if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
        {
          sub_100123AB0();
        }

        goto LABEL_42;
      }

      if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
      {
        v35 = [v24 length];
        v37 = v25;
        v33 = v28;
        LogPrintF();
      }

      [v27 setObject:v24 forKeyedSubscript:{@"serverPublicKey", v33, v35, v37}];
      v29 = @"bonjourServiceID";
      v30 = v27;
      v31 = v25;
    }

    [v30 setObject:v31 forKeyedSubscript:{v29, v33, v35}];
LABEL_42:
    (*(v9 + 2))(v9, v27, 0, 0);

    v12 = v38;
    v10 = v39;
    v14 = v40;
    goto LABEL_43;
  }

  if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123AF0();
  }

  v17 = RPErrorF();
  (*(v9 + 2))(v9, 0, 0, v17);

LABEL_43:
}

void sub_10008F244(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_100123B0C(a1);
    }

LABEL_5:
    (*(*(a1 + 64) + 16))();
    goto LABEL_16;
  }

  if (!v23)
  {
    if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_100123BA4(a1);
    }

    goto LABEL_5;
  }

  v9 = [v23 objectForKeyedSubscript:@"response"];
  v10 = [v9 intValue];

  v11 = [v23 objectForKeyedSubscript:@"serverPublicKey"];
  v12 = [v23 objectForKeyedSubscript:@"bonjourServiceID"];
  v16 = [v23 objectForKeyedSubscript:@"listenerID"];
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    v22 = *(a1 + 32);
    v17 = [*(a1 + 40) destinationDevice];
    v18 = [v17 name];
    v20 = *(a1 + 56);
    v21 = *(a1 + 48);
    [RPNWPeer responseCodeToString:v10];
    [v11 length];
    v19 = v22;
    LogPrintF();
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v10, v11, v12, v16, v13, v14, v15, v19);

LABEL_16:
}

uint64_t sub_10008F57C(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = a10;
  v24 = a12;
  v25 = v24;
  if (v21 && v24)
  {
    v26 = [RPNWAgentClient findAgentClientFromConnectionID:v24];
    if (v26)
    {
      if (v18)
      {
        if ((*(*(a1 + 32) + 16))())
        {
          v27 = 2;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_18;
      }

      if (a5)
      {
        (*(*(a1 + 40) + 16))();
        v27 = 2;
        goto LABEL_18;
      }

      if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
      {
        sub_100123C38();
      }
    }

    else if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
    {
      sub_100123C54();
    }

    v27 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123C38();
  }

  v27 = 0;
LABEL_19:

  return v27;
}

void sub_10008F9A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123CD4(a1, a2);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2);
  }
}

void sub_10008FBB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D4798 <= 90 && (dword_1001D4798 != -1 || _LogCategory_Initialize()))
    {
      sub_100123D30();
    }
  }

  else if (dword_1001D4798 <= 30 && (dword_1001D4798 != -1 || _LogCategory_Initialize()))
  {
    sub_100123D70();
  }

  (*(*(a1 + 32) + 16))();
}

const char *sub_10008FDDC(unsigned int a1)
{
  if (a1 > 0x5F)
  {
    return "?";
  }

  else
  {
    return (&off_1001AE148)[a1];
  }
}

Class sub_1000900B8()
{
  if (qword_1001D6420 != -1)
  {
    sub_100123DA8();
  }

  result = objc_getClass("CBAdvertiser");
  qword_1001D6418 = result;
  off_1001D4808 = sub_10009010C;
  return result;
}

void sub_100090188(id a1)
{
  v1 = objc_alloc_init(RPAssertionTracker);
  v2 = qword_1001D6430;
  qword_1001D6430 = v1;

  v3 = qword_1001D6430;

  [v3 activate];
}

void sub_100090448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100090460(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10009078C(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090894;
  v4[3] = &unk_1001AE470;
  v4[4] = v2;
  v5 = *(a1 + 40);
  v6 = &v7;
  [v2 _withAssertionsLock:v4];
  if (v8[3])
  {
    [*(a1 + 40) trackerStartAssertion];
    v3 = *(a1 + 32);
    if ((v3[12] & 1) == 0)
    {
      if ([v3 _timerNeeded])
      {
        [*(a1 + 32) _timerStart];
      }
    }
  }

  _Block_object_dispose(&v7, 8);
}

void sub_10009087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100090894(void *a1)
{
  v2 = (a1 + 4);
  result = [*(a1[4] + 16) containsObject:a1[5]];
  if ((result & 1) == 0)
  {
    result = [*(a1[4] + 16) addObject:a1[5]];
    if (dword_1001D4810 <= 30)
    {
      if (dword_1001D4810 != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = sub_100123E08(v2);
      }
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

void sub_1000909B4(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090AC0;
  v4[3] = &unk_1001AE470;
  v4[4] = v2;
  v5 = *(a1 + 40);
  v6 = &v7;
  [v2 _withAssertionsLock:v4];
  if (v8[3])
  {
    [*(a1 + 40) trackerStopAssertion];
    v3 = *(a1 + 32);
    if (v3[12] == 1 && ([v3 _timerNeeded] & 1) == 0)
    {
      [*(a1 + 32) _timerStop];
    }
  }

  _Block_object_dispose(&v7, 8);
}

void sub_100090AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100090AC0(void *a1)
{
  v2 = (a1 + 4);
  result = [*(a1[4] + 16) containsObject:a1[5]];
  if (result)
  {
    result = [*(a1[4] + 16) removeObject:a1[5]];
    if (dword_1001D4810 <= 30)
    {
      if (dword_1001D4810 != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = sub_100123E54(v2);
      }
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

void sub_100090D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100090D34(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10009104C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100091078(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100091344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100091494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000914AC(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1000914E0(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000915C0(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

void sub_1000916EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000918A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000919B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100091AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100091AE0(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100091BC0(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

void sub_100091CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100091DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100091DD4(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 72));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100091EB4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

void sub_100091F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100091FB4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) hash];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000920FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100092114(int8x16_t *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000921A8;
  v2[3] = &unk_1001AE498;
  v4 = a1[3].i64[0];
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  [v1.i64[0] _withLock:v2];
}

void sub_1000921A8(void *a1)
{
  v2 = *(a1[5] + 80);
  v3 = *(a1[4] + 80);
  v4 = v2;
  v5 = v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) == (v4 == 0))
    {
      goto LABEL_17;
    }

    v6 = [v3 isEqual:v4];

    if (!v6)
    {
      goto LABEL_19;
    }
  }

  v7 = a1[4];
  v8 = a1[5];
  if (*(v7 + 16) == v8[2] && *(v7 + 64) == v8[8])
  {
    v9 = v8[5];
    v3 = *(v7 + 40);
    v10 = v9;
    v5 = v10;
    if (v3 == v10)
    {
    }

    else
    {
      if ((v3 != 0) == (v10 == 0))
      {
        goto LABEL_17;
      }

      v6 = [v3 isEqual:v10];

      if (!v6)
      {
        goto LABEL_19;
      }
    }

    v11 = *(a1[5] + 48);
    v3 = *(a1[4] + 48);
    v12 = v11;
    v5 = v12;
    if (v3 == v12)
    {
      LOBYTE(v6) = 1;
      goto LABEL_18;
    }

    if ((v3 != 0) != (v12 == 0))
    {
      LOBYTE(v6) = [v3 isEqual:v12];
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    LOBYTE(v6) = 0;
    goto LABEL_18;
  }

  LOBYTE(v6) = 0;
LABEL_19:
  *(*(a1[6] + 8) + 24) = v6;
}

void sub_10009245C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100092480(void *a1)
{
  v2 = (a1 + 4);
  v1 = a1[4];
  if (!*(v1 + 64))
  {
    *(v1 + 64) = 1;
    v4 = +[NSDate now];
    v5 = a1[4];
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    v7 = objc_retainBlock(*(a1[4] + 56));
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 32));
    if (dword_1001D4810 <= 30 && (dword_1001D4810 != -1 || _LogCategory_Initialize()))
    {
      sub_100123ED8(v2);
    }
  }
}

void sub_1000926C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000926E8(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 64) == 1)
  {
    v4 = *(v1 + 48);
    if (v4)
    {
      v9 = [v4 dateByAddingTimeInterval:*(a1 + 64)];
      v5 = [v9 earlierDate:*(a1 + 40)];

      if (v5 == v9)
      {
        *(*(a1 + 32) + 64) = 2;
        v6 = objc_retainBlock(*(*(a1 + 32) + 24));
        v7 = *(*(a1 + 48) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 32));
        if (dword_1001D4810 <= 90 && (dword_1001D4810 != -1 || _LogCategory_Initialize()))
        {
          sub_100123F38(v2);
        }
      }
    }
  }
}

void sub_100092934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100092958(void *a1)
{
  v2 = (a1 + 4);
  v1 = a1[4];
  if ((*(v1 + 64) - 1) <= 1)
  {
    *(v1 + 64) = 3;
    v4 = objc_retainBlock(*(a1[4] + 72));
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 32));
    if (dword_1001D4810 <= 30 && (dword_1001D4810 != -1 || _LogCategory_Initialize()))
    {
      sub_100123F98(v2);
    }
  }
}

void sub_100092B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100092B54(uint64_t a1)
{
  v2 = [*(a1 + 32) _descriptionWithLevel:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100092F30(id a1)
{
  v1 = objc_alloc_init(RPAutoBugCapture);
  v2 = qword_1001D6440;
  qword_1001D6440 = v1;
}

void sub_10009312C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 64);
  if (v3 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1001AE668)[v3];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [v2 signatureWithDomain:@"Rapport" type:v5 subType:*(a1 + 40) detectedProcess:*(a1 + 48) triggerThresholdValues:*(a1 + 56)];

  v7 = *(*(a1 + 32) + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000932C8;
  v11[3] = &unk_1001AE5A0;
  v14 = *(a1 + 64);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  if (([v7 snapshotWithSignature:v6 delay:0 events:0 payload:0 actions:v11 reply:0.0] & 1) == 0 && dword_1001D4880 <= 90 && (dword_1001D4880 != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v8 = *(a1 + 64);
    LogPrintF();
  }
}

void sub_1000932C8(void *a1, void *a2)
{
  v9 = a2;
  off_1001D48F8();
  if (CFDictionaryGetInt64())
  {
    if (dword_1001D4880 <= 30 && (dword_1001D4880 != -1 || _LogCategory_Initialize()))
    {
      sub_10012400C(a1);
    }
  }

  else
  {
    v3 = off_1001D4900();
    v4 = NSDictionaryGetNSNumber();

    off_1001D4908();
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (dword_1001D4880 <= 90 && (dword_1001D4880 != -1 || _LogCategory_Initialize()))
    {
      v7 = a1[4];
      v8 = a1[5];
      v6 = a1[6];
      LogPrintF();
    }
  }
}

Class sub_10009348C()
{
  if (qword_1001D6470 != -1)
  {
    sub_100124058();
  }

  result = objc_getClass("SDRDiagnosticReporter");
  qword_1001D6468 = result;
  off_1001D48F0[0] = sub_1000934E0;
  return result;
}

id sub_100093518()
{
  if (qword_1001D6480 != -1)
  {
    sub_10012406C();
  }

  v1 = qword_1001D6450;

  return v1;
}

void sub_10009355C(id a1)
{
  if (qword_1001D6470 != -1)
  {
    sub_100124058();
  }

  v1 = dlsym(qword_1001D6478, "kSymptomDiagnosticReplySuccess");
  if (v1)
  {
    objc_storeStrong(&qword_1001D6450, *v1);
  }

  off_1001D48F8 = sub_1000935C4;
}

id sub_1000935D0()
{
  if (qword_1001D6488 != -1)
  {
    sub_100124080();
  }

  v1 = qword_1001D6458;

  return v1;
}

void sub_100093614(id a1)
{
  if (qword_1001D6470 != -1)
  {
    sub_100124058();
  }

  v1 = dlsym(qword_1001D6478, "kSymptomDiagnosticReplyReason");
  if (v1)
  {
    objc_storeStrong(&qword_1001D6458, *v1);
  }

  off_1001D4900 = sub_10009367C;
}

id sub_100093688()
{
  if (qword_1001D6490 != -1)
  {
    sub_100124094();
  }

  v1 = qword_1001D6460;

  return v1;
}

void sub_1000936CC(id a1)
{
  if (qword_1001D6470 != -1)
  {
    sub_100124058();
  }

  v1 = dlsym(qword_1001D6478, "kSymptomDiagnosticReplyReasonString");
  if (v1)
  {
    objc_storeStrong(&qword_1001D6460, *v1);
  }

  off_1001D4908 = sub_100093734;
}

void sub_1000937B8(id a1)
{
  v1 = objc_alloc_init(RPPeopleDaemon);
  v2 = qword_1001D6498;
  qword_1001D6498 = v1;
}

void sub_1000940E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_10009414C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_1000941B8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

id sub_100094530(uint64_t a1)
{
  v1 = (a1 + 32);
  result = *(*(a1 + 32) + 8);
  if (result != -1)
  {
    state64 = 0;
    notify_get_state(result, &state64);
    *(*v1 + 3) = state64;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001244F8(v1);
    }

    [*v1 _update];
    return [*v1 _rangingResponderUpdateForAirDropChange];
  }

  return result;
}

void sub_100094A58(id a1, NSString *a2, RPIdentity *a3, BOOL *a4)
{
  v4 = a3;
  [(RPIdentity *)v4 setDateRequested:0];
  v5 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 saveIdentity:v4 error:0];
}

void sub_100095294(id a1, NSString *a2, RPIdentity *a3, BOOL *a4)
{
  v7 = a3;
  v4 = [(RPIdentity *)v7 dateRemoved];

  if (!v4)
  {
    v5 = [(RPIdentity *)v7 dateRequested];

    if (v5)
    {
      [(RPIdentity *)v7 setDateRequested:0];
      v6 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v6 saveIdentity:v7 error:0];
    }
  }
}

void sub_100095330(id a1, NSString *a2, RPIdentity *a3, BOOL *a4)
{
  v7 = a3;
  v4 = [(RPIdentity *)v7 dateRemoved];

  if (!v4)
  {
    v5 = [(RPIdentity *)v7 dateRequested];

    if (v5)
    {
      [(RPIdentity *)v7 setDateRequested:0];
      v6 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v6 saveIdentity:v7 error:0];
    }
  }
}

void sub_10009584C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(a6 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000958AC(void *result)
{
  if (*(*(result[5] + 8) + 40))
  {
    v1 = result;
    if (dword_1001D4910 > 90)
    {
      goto LABEL_6;
    }

    if (dword_1001D4910 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
LABEL_6:
        if (v1[6])
        {
          result = *(*(v1[5] + 8) + 40);
          *v1[6] = result;
        }

        return result;
      }

      v2 = *(*(v1[5] + 8) + 40);
    }

    v3 = v1[4];
    result = LogPrintF();
    goto LABEL_6;
  }

  return result;
}

void sub_1000969D4(id a1, NSString *a2, RPIdentity *a3, BOOL *a4)
{
  v4 = a3;
  [(RPIdentity *)v4 setDateRequested:0];
  v5 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 saveIdentity:v4 error:0];
}

void sub_100096A40(id a1, NSString *a2, RPIdentity *a3, BOOL *a4)
{
  v4 = a3;
  [(RPIdentity *)v4 setDateRequested:0];
  v5 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 saveIdentity:v4 error:0];
}

_DWORD *sub_1000972EC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[8] == *(a1 + 40))
  {
    return [result _daemonDeviceFound:a2];
  }

  return result;
}

_DWORD *sub_100097310(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[8] == *(a1 + 40))
  {
    return [result _daemonDeviceLost:a2];
  }

  return result;
}

_DWORD *sub_100097334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result[8] == *(a1 + 40))
  {
    return [result _daemonDeviceChanged:a2 changes:a3];
  }

  return result;
}

uint64_t sub_10009735C(uint64_t result)
{
  if (*(*(result + 32) + 32) == *(result + 40) && dword_1001D4910 <= 60)
  {
    if (dword_1001D4910 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1000973F4(uint64_t result)
{
  if (dword_1001D4910 <= 30)
  {
    v1 = result;
    if (dword_1001D4910 != -1)
    {
      return sub_100124CF8(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100124CF8(v1);
    }
  }

  return result;
}

id sub_100097450(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 480);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 480);
    *(v4 + 480) = 0;
  }

  v6 = *(a1 + 32);

  return [v6 _update];
}

void sub_1000974B0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1001D4910 <= 90)
    {
      v6 = v2;
      if (dword_1001D4910 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_100124D3C();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_1001D4910 <= 30)
  {
    v6 = 0;
    if (dword_1001D4910 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_100124D7C();
      goto LABEL_13;
    }
  }
}

void sub_100097FC8(uint64_t a1)
{
  [*(a1 + 32) _update];
  v1 = +[RPDaemon sharedDaemon];
  [v1 postDaemonInfoChanges:1024];
}

void sub_100098034(uint64_t a1)
{
  [*(a1 + 32) _update];
  v1 = +[RPDaemon sharedDaemon];
  [v1 postDaemonInfoChanges:1024];
}

void sub_100098840(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (([v7 present] & 1) == 0)
  {
    v4 = [v7 dateRemoved];

    if (!v4)
    {
      v5 = +[NSDate date];
      [v7 setDateRemoved:v5];

      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100124F28();
      }

      v6 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v6 saveIdentity:v7 error:0];

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

void sub_100099178(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 accountID];
  v6 = [v5 isEqualToString:a1[4]];

  if (v6)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125168(a1);
    }

    v7 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v7 removeIdentity:a1[5] error:0];

    [*(a1[6] + 120) setObject:0 forKeyedSubscript:v8];
  }
}

void sub_10009953C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 208), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Block_object_dispose((v35 - 112), 8);
  _Block_object_dispose((v35 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000995A4(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 dateRemoved];

  if (!v6)
  {
    v7 = [v5 dateRequested];
    if (!v7)
    {
      goto LABEL_34;
    }

    v8 = [v5 dateAcknowledged];
    [v7 timeIntervalSinceNow];
    v10 = -v9;
    v11 = arc4random() % 0x3F481 + 1468800;
    if (v8)
    {
      if (v10 >= v11)
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v12 = *(a1 + 56);
LABEL_32:
        ++*(*(v12 + 8) + 24);
LABEL_33:

LABEL_34:
        v8 = objc_alloc_init(RPCloudMessageContext);
        v14 = [*(a1 + 40) _primaryAppleID:0];
        [(RPCloudMessageContext *)v8 setSendersKnownAlias:v14];

        *(*(*(a1 + 80) + 8) + 24) = 30;
        if ([*(a1 + 40) _sendCloudIdentityFrameType:32 destinationID:v18 flags:0 msgCtx:v8])
        {
          v15 = +[NSDate date];
          [v5 setDateRequested:v15];

          v16 = +[RPIdentityDaemon sharedIdentityDaemon];
          [v16 saveIdentity:v5 error:0];

          v13 = 96;
        }

        else
        {
          v13 = 88;
        }

LABEL_37:
        ++*(*(*(a1 + v13) + 8) + 24);

        goto LABEL_38;
      }
    }

    else if (v10 >= v11)
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v12 = *(a1 + 64);
      goto LABEL_32;
    }

    if (*(a1 + 104) != 1)
    {
      if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v13 = 72;
      goto LABEL_37;
    }

    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      v17 = *(a1 + 32);
      LogPrintF();
    }

    goto LABEL_33;
  }

  if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001251AC();
  }

  ++*(*(*(a1 + 48) + 8) + 24);
LABEL_38:
}

void sub_10009A2AC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 model];
  if (v6)
  {
    v8 = v6;
    v7 = GestaltProductTypeStringToDeviceClass() == 7;
    v6 = v8;
    if (v7)
    {
      *(*(*(a1 + 32) + 8) + 24) |= 4uLL;
      *a4 = 1;
    }
  }
}

void *sub_10009A480(void *result)
{
  if (*(result[4] + 368) != -1)
  {
    v2 = result;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125480();
    }

    v3 = *(v2[4] + 360);

    return [v3 trigger];
  }

  return result;
}

void *sub_10009AA84(void *result)
{
  if (*(result[4] + 204) != -1)
  {
    v2 = result;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001255D0();
    }

    *(v2[4] + 201) = 1;
    v3 = v2[4];

    return [v3 _friendsUpdateSuggestedIfNeeded];
  }

  return result;
}

void *sub_10009AB0C(void *result)
{
  if (result[4] == *(result[5] + 208))
  {
    v7 = v1;
    v5 = result;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001255EC();
    }

    [v5[5] prefsChanged];
    *(v5[5] + 201) = 1;
    v6 = v5[5];

    return [v6 _friendsUpdateSuggestedIfNeeded];
  }

  return result;
}

void sub_10009AB9C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  *(*(a1 + 32) + 200) = 0;
  [*(a1 + 40) invalidate];
  if (v6)
  {
    if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125608();
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125648(v7);
    }

    objc_storeStrong((*(a1 + 32) + 192), a2);
    *(*(a1 + 32) + 276) = 1;
    [*(a1 + 32) _updateFriendIdentities];
  }
}

void sub_10009BF68(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 userAdded];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = [v9 dateAdded];
    v7 = *(a1 + 32);
    [v6 timeIntervalSinceReferenceDate];
    if (vabdd_f64(v7, v8) >= 86400.0)
    {
      [v9 setPresent:0];
    }

    v5 = v9;
  }
}

void sub_10009BFFC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (([v7 present] & 1) == 0)
  {
    v4 = [v7 dateRemoved];

    if (!v4)
    {
      v5 = +[NSDate date];
      [v7 setDateRemoved:v5];

      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125914();
      }

      v6 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v6 saveIdentity:v7 error:0];

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

void sub_10009CBD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 idsDeviceID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125A24();
    }

    [*(a1 + 40) addObject:v6];
  }
}

void sub_10009CC90(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
    {
      sub_100125A64();
      v3 = v8;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = *(*(a1 + 32) + 168);
  v6 = [v3 identifier];
  [v5 setObject:0 forKeyedSubscript:v6];

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v7 removeIdentity:v8 error:0];
}

void sub_10009CD78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 contactID];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) addObject:v4];
    v4 = v5;
  }
}

void sub_10009CDD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 176) = 0;
  [*(a1 + 40) invalidate];
  v7 = v5;
  if (!v7 || v6)
  {
    if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125B2C();
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125AE8(v7);
    }

    [*(a1 + 32) _updateFriendPrivacyResults:v7];
  }
}

void sub_10009D31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_10009D34C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = [v8 contactID];
  v10 = [v9 isEqual:a1[4]];

  if (v10)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10009DAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 240), 8);
  _Block_object_dispose((v53 - 208), 8);
  _Block_object_dispose((v53 - 176), 8);
  _Block_object_dispose((v53 - 144), 8);
  _Block_object_dispose((v53 - 112), 8);
  _Block_object_dispose((v53 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10009DB38(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = [v5 dateRemoved];

  if (v6)
  {
    if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125C60();
    }

    v7 = *(a1 + 40);
LABEL_11:
    ++*(*(v7 + 8) + 24);
    goto LABEL_12;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125CE0();
    }

    v7 = *(a1 + 56);
    goto LABEL_11;
  }

  if ((*(*(a1 + 32) + 384) & 1) == 0)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125CA0();
    }

    [v5 setDateRequested:0];
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  v8 = [v5 dateRequested];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_51;
  }

  [v8 timeIntervalSinceNow];
  v11 = -v10;
  v12 = *(*(a1 + 32) + 312);
  v13 = [v5 dateAcknowledged];
  v14 = v13;
  if (v12 <= 0)
  {
    if (dword_1001D4910 > 10 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_43;
    }

LABEL_33:
    LogPrintF();
LABEL_43:
    v16 = *(a1 + 72);
    goto LABEL_60;
  }

  if (!v13)
  {
    if (v11 >= (arc4random() % 0x3F481 + 1468800))
    {
      if (dword_1001D4910 > 30)
      {
        v15 = 88;
        goto LABEL_50;
      }

      if (dword_1001D4910 == -1)
      {
        v15 = 88;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_50;
        }
      }

      else
      {
        v15 = 88;
      }

      goto LABEL_38;
    }

LABEL_31:
    if (dword_1001D4910 > 10 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_43;
    }

    goto LABEL_33;
  }

  if (*(*(a1 + 32) + 312) > v11)
  {
    goto LABEL_31;
  }

  if (dword_1001D4910 > 30)
  {
    v15 = 80;
    goto LABEL_50;
  }

  if (dword_1001D4910 == -1)
  {
    v15 = 80;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_50;
    }
  }

  else
  {
    v15 = 80;
  }

LABEL_38:
  v22 = v11;
  v23 = v5;
  LogPrintF();
LABEL_50:
  ++*(*(*(a1 + v15) + 8) + 24);

LABEL_51:
  v17 = [v5 sendersKnownAlias];

  if (!v17)
  {
    [v5 setDateRequested:0];
    ++*(*(*(a1 + 120) + 8) + 24);
    goto LABEL_55;
  }

  v14 = objc_alloc_init(RPCloudMessageContext);
  v18 = [v5 sendersKnownAlias];
  [(RPCloudMessageContext *)v14 setSendersKnownAlias:v18];

  [(RPCloudMessageContext *)v14 setNonWakingRequest:1];
  *(*(*(a1 + 96) + 8) + 24) = 30;
  if ([*(a1 + 32) _sendCloudIdentityFrameType:64 destinationID:v24 flags:1 msgCtx:v14])
  {
    v19 = +[NSDate date];
    [v5 setDateRequested:v19];

    ++*(*(a1 + 32) + 232);
    *(*(a1 + 32) + 385) = 1;
    v20 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v20 saveIdentity:v5 error:0];

    ++*(*(*(a1 + 112) + 8) + 24);
LABEL_55:
    if (*(a1 + 128) == 1)
    {
      v21 = *(*(a1 + 48) + 8);
      if ((*(v21 + 24) & 1) == 0 && *(*(*(a1 + 112) + 8) + 24) >= 64)
      {
        *(v21 + 24) = 1;
      }
    }

    goto LABEL_61;
  }

  v16 = *(a1 + 104);
LABEL_60:
  ++*(*(v16 + 8) + 24);

LABEL_61:
LABEL_12:
}

void sub_10009E770(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  [*(a1 + 32) invalidate];
  if (v5)
  {
    ++*(*(a1 + 40) + 244);
    ++*(*(a1 + 40) + 256);
    *(*(a1 + 40) + 385) = 1;
    if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      v12 = *(a1 + 48);
      LogPrintF();
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125DD8(a1);
    }

    ++*(*(a1 + 40) + 260);
    *(*(a1 + 40) + 385) = 1;
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = [v13 contactIdentifier];
    v10 = [*(a1 + 64) sendersKnownAlias];
    LODWORD(v11) = 2;
    [v8 _updateIdentityType:6 idsDeviceID:v6 appleID:v7 contactID:v9 sendersKnownAlias:v10 msg:*(a1 + 72) source:v11];

    [*(a1 + 64) setNonWakingRequest:1];
    [*(a1 + 40) _sendCloudIdentityFrameType:65 destinationID:*(a1 + 80) flags:1 msgCtx:*(a1 + 64)];
  }
}

void sub_10009EC14(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  [*(a1 + 32) invalidate];
  if (v5)
  {
    if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      v15 = *(a1 + 40);
      LogPrintF();
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125ED4(a1);
    }

    v6 = [*(a1 + 56) objectForKeyedSubscript:*(a1 + 40)];
    if (v6)
    {
      v7 = +[NSDate date];
      [v6 setDateAcknowledged:v7];

      v8 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v8 saveIdentity:v6 error:0];
    }

    else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125F18((a1 + 40));
    }

    v9 = *(a1 + 64);
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = [v16 contactIdentifier];
    v13 = [*(a1 + 72) sendersKnownAlias];
    LODWORD(v14) = 2;
    [v9 _updateIdentityType:6 idsDeviceID:v10 appleID:v11 contactID:v12 sendersKnownAlias:v13 msg:*(a1 + 80) source:v14];
  }
}

void sub_10009F0E0(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  [*(a1 + 32) invalidate];
  if (v5)
  {
    if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      v12 = *(a1 + 40);
      LogPrintF();
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100126014(a1);
    }

    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = [v13 contactIdentifier];
    v10 = [*(a1 + 64) sendersKnownAlias];
    LODWORD(v11) = 2;
    [v6 _updateIdentityType:6 idsDeviceID:v7 appleID:v8 contactID:v9 sendersKnownAlias:v10 msg:*(a1 + 72) source:v11];
  }
}

void sub_10009F314(uint64_t a1)
{
  v2 = +[RPIdentityDaemon sharedIdentityDaemon];
  v9 = [v2 identityOfSelfAndReturnError:0];

  v3 = [v9 accountID];

  if (v3)
  {
    v4 = objc_alloc_init(RPCloudMessageContext);
    v5 = v4;
    if (*(a1 + 32))
    {
      [(RPCloudMessageContext *)v4 setSendersKnownAlias:?];
    }

    else
    {
      v6 = [v9 accountID];
      [(RPCloudMessageContext *)v5 setSendersKnownAlias:v6];
    }

    [(RPCloudMessageContext *)v5 setNonWakingRequest:*(a1 + 56)];
    v7 = [*(a1 + 40) _sendCloudIdentityFrameType:64 destinationID:*(a1 + 48) flags:0 msgCtx:v5];
    if (dword_1001D4910 <= 30)
    {
      v8 = v7;
      if (dword_1001D4910 != -1 || _LogCategory_Initialize())
      {
        sub_100126058(v8);
      }
    }
  }
}

void *sub_10009F678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[53])
  {
    return [result _rangingBLEActionScannerDeviceFound:a2];
  }

  return result;
}

void sub_10009F694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 424))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_1001260E0();
      }

      [*(*(a1 + 40) + 424) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 424);
      *(v5 + 424) = 0;

      goto LABEL_7;
    }

    if (dword_1001D4910 <= 30)
    {
      v8 = 0;
      if (dword_1001D4910 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
      {
        sub_100126120();
LABEL_7:
        v4 = v8;
      }
    }
  }
}

void *sub_10009F9E8(void *result)
{
  if (result[4] == *(result[5] + 400))
  {
    v1 = result;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001261D8();
    }

    v2 = *(v1[5] + 400);
    if (v2)
    {
      v3 = v2;
      dispatch_source_cancel(v3);
      v4 = v1[5];
      v5 = *(v4 + 400);
      *(v4 + 400) = 0;
    }

    result = [*(v1[5] + 424) scanRate];
    if (result != 20)
    {
      v6 = *(v1[5] + 424);

      return [v6 setScanRate:20];
    }
  }

  return result;
}

void *sub_10009FD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[55])
  {
    return [result _rangingInitiatorHandlePeer:a2 measurement:a3];
  }

  return result;
}

void sub_10009FD28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(a1 + 32) == *(*(a1 + 40) + 392))
  {
    v6 = v3;
    if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100126210();
    }

    [*(*(a1 + 40) + 392) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 392);
    *(v4 + 392) = 0;

    v3 = v6;
  }
}

void sub_10009FF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000A35A4()
{
  if (qword_1001D64B0 != -1)
  {
    sub_100126A40();
  }

  result = objc_getClass("MSDKDemoState");
  qword_1001D64A8 = result;
  off_1001D4980 = sub_1000A35F8;
  return result;
}

Class sub_1000A3630()
{
  if (qword_1001D64C8 != -1)
  {
    sub_100126A54();
  }

  result = objc_getClass("SFDeviceDiscovery");
  qword_1001D64C0 = result;
  off_1001D4988 = sub_1000A3684;
  return result;
}

Class sub_1000A36BC()
{
  if (qword_1001D64C8 != -1)
  {
    sub_100126A54();
  }

  result = objc_getClass("SFClient");
  qword_1001D64D8 = result;
  off_1001D4990 = sub_1000A3710;
  return result;
}

Class sub_1000A371C()
{
  if (qword_1001D64C8 != -1)
  {
    sub_100126A54();
  }

  result = objc_getClass("SFPeopleSuggesterParams");
  qword_1001D64E0 = result;
  off_1001D4998 = sub_1000A3770;
  return result;
}

Class sub_1000A377C()
{
  if (qword_1001D64C8 != -1)
  {
    sub_100126A54();
  }

  result = objc_getClass("SFContactInfo");
  qword_1001D64E8 = result;
  off_1001D49A0 = sub_1000A37D0;
  return result;
}

Class sub_1000A37DC()
{
  if (qword_1001D64C8 != -1)
  {
    sub_100126A54();
  }

  result = objc_getClass("SFService");
  qword_1001D64F0 = result;
  off_1001D49A8 = sub_1000A3830;
  return result;
}

void sub_1000A3880(id a1)
{
  v1 = objc_alloc_init(RPPrivateDaemon);
  v2 = qword_1001D64F8;
  qword_1001D64F8 = v1;
}

id sub_1000A3C44(uint64_t a1)
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_100126A7C();
  }

  v2 = *(a1 + 32);
  if (!v2[3])
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport.private-discovery"];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    [*(*(a1 + 32) + 24) setDelegate:?];
    [*(*(a1 + 32) + 24) _setQueue:*(*(a1 + 32) + 32)];
    [*(*(a1 + 32) + 24) resume];
    v2 = *(a1 + 32);
  }

  return [v2 prefsChanged];
}

void sub_1000A44A4(void *a1)
{
  v6 = objc_alloc_init(RPPrivateXPCConnection);
  [(RPPrivateXPCConnection *)v6 setDaemon:a1[4]];
  [(RPPrivateXPCConnection *)v6 setDirect:1];
  [(RPPrivateXPCConnection *)v6 setDispatchQueue:*(a1[4] + 32)];
  [(RPPrivateXPCConnection *)v6 setEntitled:1];
  v2 = *(a1[4] + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = a1[4];
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(a1[4] + 16);
  }

  [v2 addObject:v6];
  [(RPPrivateXPCConnection *)v6 xpcPrivateAdvertiserActivate:a1[5] completion:a1[6]];
}

void sub_1000A4628(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 activatedAdvertiser];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          v10 = v7;

          if (v10)
          {
            [*(a1 + 32) _xpcConnectionInvalidated:v10];
          }

          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:
  (*(*(a1 + 48) + 16))();
}

void sub_1000A4848(void *a1)
{
  v6 = objc_alloc_init(RPPrivateXPCConnection);
  [(RPPrivateXPCConnection *)v6 setDaemon:a1[4]];
  [(RPPrivateXPCConnection *)v6 setDirect:1];
  [(RPPrivateXPCConnection *)v6 setDispatchQueue:*(a1[4] + 32)];
  [(RPPrivateXPCConnection *)v6 setEntitled:1];
  v2 = *(a1[4] + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = a1[4];
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(a1[4] + 16);
  }

  [v2 addObject:v6];
  [(RPPrivateXPCConnection *)v6 xpcPrivateDiscoveryActivate:a1[5] completion:a1[6]];
}

void sub_1000A49CC(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 activatedDiscovery];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          v10 = v7;

          if (v10)
          {
            [*(a1 + 32) _xpcConnectionInvalidated:v10];
          }

          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:
  (*(*(a1 + 48) + 16))();
}

void sub_1000A6644(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_1000A66B0(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = CUDescriptionWithLevel();
  NSAppendPrintF();

  objc_storeStrong((v2 + 40), obj);
}

void sub_1000A6738(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = *(a1 + 48);
  v8 = a2;
  v10 = CUDescriptionWithLevel();
  NSAppendPrintF();

  objc_storeStrong((v6 + 40), obj);
  if (++*(*(*(a1 + 40) + 8) + 24) >= 11)
  {
    v9 = *(*(a1 + 32) + 8);
    v11 = *(v9 + 40);
    NSAppendPrintF();
    objc_storeStrong((v9 + 40), v11);
    *a4 = 1;
  }
}

void sub_1000A682C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 event];
  v8 = [v7 objectForKeyedSubscript:@"type"];
  v9 = [v7 objectForKeyedSubscript:@"serviceType"];
  v10 = *(*(a1 + 32) + 8);
  obj = *(v10 + 40);
  [v5 state];

  NSAppendPrintF();
  objc_storeStrong((v10 + 40), obj);
}

void sub_1000A6910(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 event];
  v8 = [v7 objectForKeyedSubscript:@"type"];
  v9 = [v7 objectForKeyedSubscript:@"serviceType"];
  v10 = *(*(a1 + 32) + 8);
  obj = *(v10 + 40);
  [v5 state];

  NSAppendPrintF();
  objc_storeStrong((v10 + 40), obj);
}

void sub_1000A8148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7 != [v6 state])
  {
    v8 = *(a1 + 32);
    v19 = 0;
    v9 = [v8 _acquireRBSAssertionForEntry:v6 error:&v19];
    v10 = v19;
    if (!v10)
    {
      [v6 setState:*(a1 + 40)];
      v11 = [v5 unsignedLongLongValue];
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v14 = v11;
        v15 = *(a1 + 40);
        LogPrintF();
      }

      v12 = [v6 handler];
      if (v12)
      {
        if (*(a1 + 40))
        {
          v13 = 6;
        }

        else
        {
          v13 = 5;
        }

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000A82F8;
        v16[3] = &unk_1001AECA8;
        v18 = v11;
        v17 = v9;
        (v12)[2](v12, v13, 0, v16);
      }
    }
  }
}

void sub_1000A82F8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100127B64(a1);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 invalidate];
  }
}

void sub_1000A86DC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) showPasswordHandler];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v7);
  }
}

void sub_1000A8754(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) hidePasswordHandler];
  if (v3)
  {
    v4 = v3;
    v3[2](v3, a2);
    v3 = v4;
  }
}

void sub_1000A87B4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = [*(a1 + 40) peerDeviceInfo];
    v4 = [v3 verifiedIdentity];
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    v7 = *(v6 + 320);
    *(v6 + 320) = v4;

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127BA8(v5);
    }
  }
}

_DWORD *sub_1000A8DF8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[14] == *(a1 + 40))
  {
    return [result _clientBLEDiscoveryDeviceFound:a2];
  }

  return result;
}

_DWORD *sub_1000A8E1C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[14] == *(a1 + 40))
  {
    return [result _clientBLEDiscoveryDeviceLost:a2];
  }

  return result;
}

_DWORD *sub_1000A8E40(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[14] == *(a1 + 40))
  {
    return [result _clientBLEDiscoveryDeviceFound:a2];
  }

  return result;
}

uint64_t sub_1000A8E64(uint64_t result)
{
  if (*(*(result + 32) + 56) == *(result + 40) && dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000A8EFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127CE8();
    }

    [*(*(a1 + 32) + 48) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    goto LABEL_6;
  }

  if (dword_1001D4BA0 <= 30)
  {
    v8 = 0;
    if (dword_1001D4BA0 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
    {
      sub_100127D28();
LABEL_6:
      v4 = v8;
    }
  }
}

void sub_1000A90D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1001D4BA0 <= 90)
    {
      v7 = v3;
      if (dword_1001D4BA0 != -1 || (v6 = _LogCategory_Initialize(), v4 = v7, v6))
      {
        v5 = *(a1 + 32);
        if (v5 < 0x20000)
        {
          switch(v5)
          {
            case 0x10000u:
            case 0x10001u:
            case 0x10002u:
            case 0x10003u:
            case 0x10004u:
            case 0x10005u:
            case 0x10006u:
            case 0x10007u:
            case 0x10008u:
            case 0x10009u:
            case 0x1000Au:
            case 0x1000Bu:
            case 0x1000Cu:
            case 0x1000Du:
            case 0x1000Eu:
            case 0x1000Fu:
            case 0x10010u:
            case 0x10011u:
            case 0x10012u:
            case 0x10013u:
            case 0x10014u:
            case 0x10015u:
            case 0x10016u:
            case 0x10017u:
            case 0x10018u:
            case 0x10019u:
            case 0x1001Au:
            case 0x1001Bu:
            case 0x1001Cu:
            case 0x1001Du:
            case 0x1001Eu:
            case 0x1001Fu:
              break;
            default:
              JUMPOUT(0);
          }
        }

        LogPrintF();
        v4 = v7;
      }
    }
  }
}

id sub_1000AA650()
{
  if (qword_1001D6530 != -1)
  {
    sub_100127FF8();
  }

  v1 = qword_1001D6528;

  return v1;
}

void sub_1000AACAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128168();
    }

    [*(*(a1 + 32) + 96) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = 0;
  }

  else
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001281A8();
    }

    v6 = *(*(a1 + 32) + 104);
    v7 = v6;
    if (v6)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            v13 = +[RPAssertionTracker sharedTracker];
            [v13 startTracking:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }
}

void sub_1000AAE68(id a1, RPAssertionInfo *a2)
{
  v2 = a2;
  v4 = +[RPMetrics sharedMetrics];
  v3 = [(RPAssertionInfo *)v2 processName];

  [v4 logNeedsAWDLAdvertisementClient:v3 actionType:50 bluetoothType:15];
}

void sub_1000AAEEC(id a1, RPAssertionInfo *a2)
{
  v7 = a2;
  v2 = +[RPAutoBugCapture sharedReporter];
  v3 = [(RPAssertionInfo *)v7 assertionType];
  if (v3 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1001AF240)[v3];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [(RPAssertionInfo *)v7 processName];
  [v2 reportIssueOfType:1 issueContext:v5 processName:v6];
}

void sub_1000AAFB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(v4 + 64) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = 0;
  }

  else
  {
    v7 = *(v4 + 72);
    v8 = v7;
    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            v14 = +[RPAssertionTracker sharedTracker];
            [v14 startTracking:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }
}

void sub_1000AB10C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[RPMetrics sharedMetrics];
  v4 = [v3 processName];

  [v5 logNeedsAWDLAdvertisementClient:v4 actionType:objc_msgSend(*(*(a1 + 32) + 80) bluetoothType:{"nearbyActionV2Type"), 21}];
}

void sub_1000AB1A8(id a1, RPAssertionInfo *a2)
{
  v7 = a2;
  v2 = +[RPAutoBugCapture sharedReporter];
  v3 = [(RPAssertionInfo *)v7 assertionType];
  if (v3 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1001AF240)[v3];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [(RPAssertionInfo *)v7 processName];
  [v2 reportIssueOfType:1 issueContext:v5 processName:v6];
}

void *sub_1000AB3D0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[21])
  {
    return [result _clientBonjourFoundDevice:a2 reevaluate:0];
  }

  return result;
}

void sub_1000AB3EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2[21])
  {
    v4 = a2;
    [v2 _clientBonjourLostDevice:v4];
    [*(a1 + 32) _clientBonjourLostUnresolvedDevice:v4];
  }
}

void *sub_1000AB464(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[21])
  {
    return [result _clientBonjourFoundDevice:a2 reevaluate:0];
  }

  return result;
}

id sub_1000ABF40(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 520));
  v2 = *(a1 + 32);
  v3 = *(v2 + 520);
  *(v2 + 520) = 0;

  result = [*(*(a1 + 32) + 512) count];
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 _processPendingLostDevices];
  }

  return result;
}

void *sub_1000AC84C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[22])
  {
    return [result _clientBonjourAWDLBrowserFoundDevice:a2];
  }

  return result;
}

void *sub_1000AC864(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[22])
  {
    return [result _clientBonjourAWDLBrowserLostDevice:a2];
  }

  return result;
}

void *sub_1000AC87C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[22])
  {
    return [result _clientBonjourAWDLBrowserFoundDevice:a2];
  }

  return result;
}

void sub_1000AC894(id a1, RPAssertionInfo *a2)
{
  v2 = a2;
  v4 = +[RPMetrics sharedMetrics];
  v3 = [(RPAssertionInfo *)v2 processName];

  [v4 logAWDLBrowseClient:v3];
}

void sub_1000AC910(id a1, RPAssertionInfo *a2)
{
  v7 = a2;
  v2 = +[RPAutoBugCapture sharedReporter];
  v3 = [(RPAssertionInfo *)v7 assertionType];
  if (v3 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1001AF240)[v3];
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [(RPAssertionInfo *)v7 processName];
  [v2 reportIssueOfType:1 issueContext:v5 processName:v6];
}

void sub_1000AD9FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v7 = *(a1 + 32);
      LogPrintF();
      [*(a1 + 40) invalidate];
    }

    else
    {
      [*(a1 + 40) invalidate];
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000ADB40;
    v9[3] = &unk_1001ACBF8;
    v9[4] = *(a1 + 32);
    v9[5] = v4;
    v10 = *(a1 + 64);
    v9[6] = *(a1 + 56);
    [v4 sendEventID:@"_rdNeedsAWDL" event:v5 options:0 completion:v9];
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128D40(a1);
    }
  }
}

void sub_1000ADB40(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v7 = *(a1 + 32);
      v8 = v9;
      LogPrintF();
    }
  }

  else if (*(a1 + 56) == 1)
  {
    v3 = *(*(a1 + 48) + 392);
    if (!v3)
    {
      v4 = +[NSMutableSet set];
      v5 = *(a1 + 48);
      v6 = *(v5 + 392);
      *(v5 + 392) = v4;

      v3 = *(*(a1 + 48) + 392);
    }

    [v3 addObject:*(a1 + 32)];
  }

  [*(a1 + 40) invalidate];
}

_DWORD *sub_1000ADD9C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[30] == *(a1 + 40))
  {
    return [result _serverBLENeedsAWDLScannerDeviceFound:a2];
  }

  return result;
}

_DWORD *sub_1000ADDC0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[30] == *(a1 + 40))
  {
    return [result _serverBLENeedsAWDLScannerDeviceLost:a2];
  }

  return result;
}

void sub_1000ADDE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128DF8();
    }

    [*(*(a1 + 32) + 112) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    *(v5 + 112) = 0;

    goto LABEL_6;
  }

  if (dword_1001D4BA0 <= 30)
  {
    v8 = 0;
    if (dword_1001D4BA0 != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
    {
      sub_100128E38();
LABEL_6:
      v4 = v8;
    }
  }
}

void sub_1000AE2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 88);
  if (v5)
  {
    v9 = [v5 dispatchQueue];

    if (v9)
    {
      v10 = *(*(a1 + 32) + 88);

      [v10 updateUseCase:a2 bleScanRate:a3 bleScanRateScreenOff:a4];
    }
  }
}

id sub_1000AE344(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 592));
  v2 = *(a1 + 32);

  return [v2 _update];
}

void sub_1000AE384(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    dispatch_assert_queue_V2(*(*(a1 + 32) + 592));
    [*(a1 + 32) _serverBLENearbyActionV2DiscoveryEnsureStopped];
LABEL_3:
    v4 = v6;
    goto LABEL_7;
  }

  if (dword_1001D4BA0 <= 30)
  {
    v6 = 0;
    if (dword_1001D4BA0 != -1 || (v5 = _LogCategory_Initialize(), v4 = 0, v5))
    {
      sub_100129058();
      goto LABEL_3;
    }
  }

LABEL_7:
}

id sub_1000AEB10(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 linkType];
  if (result == 4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void *sub_1000AEB64(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[56])
  {
    return [result _serverTCPHandleConnectionStarted:a2];
  }

  return result;
}

void sub_1000AEB7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(*(a1 + 32) + 224);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    v10 = v7;
LABEL_17:

    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v19;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      v14 = [v13 tcpConnection];

      if (v14 == v5)
      {
        v15 = v13;

        v10 = v15;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);

  if (v10)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [*(*(a1 + 32) + 224) removeObject:{v10, v5, v6, v18}];
    }

    else
    {
      [*(*(a1 + 32) + 224) removeObject:{v10, v16, v17, v18}];
    }

    goto LABEL_17;
  }

LABEL_18:
}

void sub_1000AF1D0(uint64_t a1)
{
  [*(*(a1 + 32) + 440) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = [*(a1 + 48) client];
  [v2 sessionEndedWithID:*(a1 + 40) netCnx:*(a1 + 48)];
  [*(a1 + 32) _update];
}

void sub_1000AF23C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) client];
  v10 = v9;
  if (v9)
  {
    [v9 _receivedEventID:v13 event:v7 options:v8 sessionID:*(a1 + 40)];
  }

  else
  {
    v11 = objc_alloc_init(RPReceivedMessageEntry);
    [(RPReceivedMessageEntry *)v11 setEventID:v13];
    [(RPReceivedMessageEntry *)v11 setEvent:v7];
    [(RPReceivedMessageEntry *)v11 setOptions:v8];
    [(RPReceivedMessageEntry *)v11 setSessionID:*(a1 + 40)];
    v12 = [*(a1 + 32) receivedMessages];
    [v12 addObject:v11];
  }
}

void sub_1000AF340(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) client];
  v13 = v12;
  if (v12)
  {
    [v12 _receivedRequestID:v16 request:v9 options:v10 responseHandler:v11 sessionID:*(a1 + 40)];
  }

  else
  {
    v14 = objc_alloc_init(RPReceivedMessageEntry);
    [(RPReceivedMessageEntry *)v14 setRequestID:v16];
    [(RPReceivedMessageEntry *)v14 setRequest:v9];
    [(RPReceivedMessageEntry *)v14 setOptions:v10];
    [(RPReceivedMessageEntry *)v14 setResponseHandler:v11];
    v15 = [*(a1 + 32) receivedMessages];
    [v15 addObject:v14];
  }
}

id sub_1000AF458(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _serverHandleSessionStartWithID:*(a1 + 40) netCnx:*(a1 + 48) completion:a2];
  v3 = *(a1 + 32);

  return [v3 _update];
}

void sub_1000AF49C(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) passwordType];
  if (a2 != 1)
  {
    return;
  }

  if (v4 != 10)
  {
    return;
  }

  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v5 = v7;
  if (!v7[40])
  {
    return;
  }

  v8 = [v5 _findMatchingDeviceWithIdentifier:?];
  v12 = v8;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || (v9 = _LogCategory_Initialize(), v8 = v12, v9)))
  {
    sub_100129254(v6);
    v8 = v12;
    if (v12)
    {
LABEL_8:
      v10 = [v8 cameraCapabilities];

      v8 = v12;
      if (v10)
      {
        [*v6 _changeDiscoverySessionStateForDevice:*(*v6 + 40) startReason:*(*v6 + 557)];
        v11 = *(*v6 + 40);
        *(*v6 + 40) = 0;

        v8 = v12;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }
}

uint64_t (**sub_1000AFDE8(void *a1))(id, void)
{
  result = a1[6];
  if (result)
  {
    result = result[2](result, a1[4]);
  }

  if (a1[4])
  {
    v3 = a1[5];

    return [v3 invalidate];
  }

  return result;
}

void sub_1000AFE48(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012929C(a1);
  }

  dispatch_assert_queue_V2(*(*(a1 + 40) + 592));
  v6 = *(a1 + 48);
  if (v6)
  {
    [v6 invalidate];
  }
}

void sub_1000AFEEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v4)
  {
    [v4 invalidate];
    v3 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void sub_1000B0070(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 idsIdentifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 idsIdentifier];
    [v5 addObject:v6];
  }
}

void sub_1000B00EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 peerDeviceInfo];
  v6 = [v4 identifier];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

void sub_1000B0358(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129318();
    }

    [*(a1 + 32) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 416);
    *(v4 + 416) = 0;
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(v6 + 416);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B0448;
    v8[3] = &unk_1001AC870;
    v8[4] = v6;
    [v7 registerEventID:@"_rdNeedsAWDL" options:0 handler:v8];
  }
}

void sub_1000B0448(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 592);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  [*(a1 + 32) _serverReceivedNeedsAWDLEvent:v4];
}

void sub_1000B0708(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 400);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 400);
    *(v4 + 400) = 0;
  }

  if (*(*(a1 + 32) + 384))
  {
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129374();
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 384);
    *(v6 + 384) = 0;

    v8 = *(a1 + 32);

    [v8 _update];
  }
}

void sub_1000B153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(a7 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B1588(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_8;
  }

  if (dword_1001D4BA0 <= 90)
  {
    if (dword_1001D4BA0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v9 = *(a1 + 32);
      goto LABEL_4;
    }
  }

LABEL_6:
  v2 = *(a1 + 40);
  if (*(v2 + 152) == 1)
  {
    *(v2 + 152) = 0;
    [*(a1 + 40) _update];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

LABEL_8:
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

id sub_1000B1A60(uint64_t a1)
{
  [*(a1 + 32) clearCameraCapabilitiesRefetchTimer];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _requestCameraCapabilitiesForDevice:v3];
}

void sub_1000B20FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == *(*(a1 + 40) + 248))
  {
    if (v3)
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012978C();
      }

      v5 = *(a1 + 40);
      v6 = *(v5 + 248);
      *(v5 + 248) = 0;

      [*(a1 + 32) invalidate];
    }

    else
    {
      v7 = [v4 dispatchQueue];
      dispatch_assert_queue_V2(v7);

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000B2304;
      v12[3] = &unk_1001AEF58;
      v13 = *(a1 + 32);
      [v13 registerEventID:@"_camCapUpdate" options:0 handler:v12];
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001297CC();
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000B2424;
      v10[3] = &unk_1001AEF80;
      v11 = *(a1 + 32);
      [v11 registerRequestID:@"_ccConfirmResp" options:0 handler:v10];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000B2548;
      v8[3] = &unk_1001AEF58;
      v9 = *(a1 + 32);
      [v9 registerEventID:@"_ccExit" options:0 handler:v8];
    }
  }
}

void sub_1000B2304(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (*(a1 + 32) == *(v6 + 248))
  {
    v14 = v5;
    v7 = *(v6 + 592);
    v8 = a3;
    dispatch_assert_queue_V2(v7);
    v9 = [v8 objectForKeyedSubscript:@"senderIDS"];

    v10 = [*(a1 + 40) _findMatchingDeviceWithIdentifier:v9];
    v11 = v10;
    if (v10)
    {
      v12 = *(a1 + 40);
      v13 = [v10 cameraCapabilities];
      [v12 _receivedCameraCapabilitiesMessage:v14 fromDevice:v11 isFirstUpdate:v13 == 0];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129800();
    }

    v5 = v14;
  }
}

void sub_1000B2424(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  if (*(a1 + 32) == *(v8 + 248))
  {
    v15 = v7;
    v9 = *(v8 + 592);
    v10 = a4;
    v11 = a3;
    dispatch_assert_queue_V2(v9);
    (*(v10 + 2))(v10, 0, 0, 0);

    v12 = [v11 objectForKeyedSubscript:@"senderIDS"];

    if (v12)
    {
      v13 = [*(*(a1 + 40) + 528) objectForKeyedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        [v13 invalidate];
        [*(*(a1 + 40) + 528) setObject:0 forKeyedSubscript:v12];
      }

      [*(a1 + 40) _handleConfirmationResult:v15 fromDevice:v12];
    }

    else
    {
      sub_100129840();
    }

    v7 = v15;
  }
}

void sub_1000B2548(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (*(a1 + 32) == *(v6 + 248))
  {
    v13 = v5;
    v7 = *(v6 + 592);
    v8 = a3;
    dispatch_assert_queue_V2(v7);
    v9 = [v8 objectForKeyedSubscript:@"senderIDS"];
    v10 = [v8 objectForKeyedSubscript:@"senderSessionPairingID"];
    v11 = [v8 objectForKeyedSubscript:@"peerVerifiedIdentity"];

    v12 = objc_alloc_init(RPCompanionLinkDevice);
    [v12 setIdsDeviceIdentifier:v9];
    [v12 setSessionPairingIdentifier:v10];
    [v12 setVerifiedIdentity:v11];
    if (v9)
    {
      [*(a1 + 40) _receivedCameraExitEvent:v13 from:v12];
    }

    else
    {
      sub_1001298B0();
    }

    v5 = v13;
  }
}

void sub_1000B2A00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = +[NSDictionary dictionary];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000B2CEC;
    v16[3] = &unk_1001AEFA8;
    v15 = *(a1 + 32);
    v14 = *(a1 + 48);
    v8 = v15.i64[1];
    v9.i64[0] = v14;
    v9.i64[1] = *(a1 + 56);
    v10 = vzip2q_s64(v15, v9);
    v9.i64[1] = v15.i64[0];
    v17 = v9;
    v18 = v10;
    [v15.i64[0] sendRequestID:@"_camCap" request:v5 options:0 responseHandler:v16];

    goto LABEL_28;
  }

  [*(a1 + 32) invalidate];
  [*(a1 + 40) setCameraCapabilityRequestIsActive:0];
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 identitiesOfType:13 error:0];

  if ([v3 code] == -6727)
  {
    v6 = [*(a1 + 48) _findMatchingDeviceWithIdentifier:*(a1 + 56)];

    v7 = dword_1001D4BA0;
    if (v6)
    {
      if (dword_1001D4BA0 > 30)
      {
        v11 = 1;
        v12 = 5;
        goto LABEL_22;
      }

      if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
      {
        sub_100129AC0();
      }

      v11 = 1;
      v12 = 5;
      goto LABEL_21;
    }

    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
      {
        sub_100129ADC((a1 + 56), (a1 + 48));
      }

LABEL_20:
      v12 = 0;
      v11 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (([*(a1 + 40) statusFlags] & 0x2000000000) == 0 || objc_msgSend(v5, "count"))
    {
      v12 = 0;
      v11 = 1;
LABEL_21:
      v7 = dword_1001D4BA0;
      goto LABEL_22;
    }

    v7 = dword_1001D4BA0;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
      {
        sub_100129A60(a1, (a1 + 40));
      }

      goto LABEL_20;
    }
  }

  v12 = 0;
  v11 = 0;
LABEL_22:
  if (v7 <= 90 && (v7 != -1 || _LogCategory_Initialize()))
  {
    v13 = *(a1 + 56);
    LogPrintF();
  }

  if (v11)
  {
    [*(a1 + 48) _scheduleCameraCapabilitiesRequest:*(a1 + 40) interval:v12];
  }

LABEL_28:
}

void sub_1000B2CEC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 592));
  [*(a1 + 40) invalidate];
  [*(a1 + 48) setCameraCapabilityRequestIsActive:0];
  if (v6)
  {
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129B68();
    }

    [*(a1 + 32) _scheduleCameraCapabilitiesRequest:*(a1 + 48) interval:0];
  }

  else
  {
    v7 = [*(a1 + 32) _findMatchingDeviceWithIdentifier:*(a1 + 56)];
    v8 = v7;
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = [v7 cameraCapabilities];
      [v9 _receivedCameraCapabilitiesMessage:v11 fromDevice:v8 isFirstUpdate:v10 == 0];
    }

    else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129BA8((a1 + 56));
    }
  }
}

void sub_1000B2E44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    [*(a1 + 32) invalidate];
    [*(*(a1 + 40) + 256) setObject:0 forKeyedSubscript:*(a1 + 48)];
    v3 = v6;
    if (dword_1001D4BA0 <= 90)
    {
      if (dword_1001D4BA0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        v5 = *(a1 + 48);
        LogPrintF();
        v3 = v6;
      }
    }
  }
}

void sub_1000B2F08(uint64_t a1, void *a2)
{
  v8 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 592));
  --*(*(a1 + 32) + 264);
  v3 = *(a1 + 32);
  if (!v3[33])
  {
    [v3 _clearCameraCapabilitiesUpdateCache];
  }

  v4 = v8;
  if (v8)
  {
    v5 = [*(*(a1 + 32) + 256) objectForKeyedSubscript:*(a1 + 40)];
    if (v5)
    {
      [*(*(a1 + 32) + 256) setObject:0 forKeyedSubscript:*(a1 + 40)];
      [v5 invalidate];
    }

    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v7 = *(a1 + 40);
      LogPrintF();
    }

    goto LABEL_15;
  }

  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      sub_100129BE8(a1);
LABEL_15:
      v4 = v8;
    }
  }
}

void sub_1000B31C8(uint64_t a1)
{
  if (*(*(a1 + 32) + 240) == 1)
  {
    if (dword_1001D4BA0 <= 40 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129C2C();
    }

    v2 = *(*(a1 + 32) + 232);
    [*(a1 + 32) _updateCameraCapabilities];
    v3 = *(*(a1 + 32) + 232);
    v4 = v2;
    v5 = v3;
    v6 = v5;
    if (v4 != v5)
    {
      if ((v4 != 0) != (v5 == 0))
      {
        v7 = [v4 isEqual:v5];

        if (v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100129C4C();
      }

      v8 = +[RPCloudDaemon sharedCloudDaemon];
      v9 = [v8 idsDeviceArray];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(a1 + 32) _sendCameraCapabilitiesUpdateEventForDevice:{*(*(&v15 + 1) + 8 * i), v15}];
          }

          v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }

      goto LABEL_22;
    }

LABEL_22:
    [*(a1 + 32) _postNotificationForWombatActivity:{3, v15}];
  }
}

void sub_1000B34EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == *(*(a1 + 40) + 280))
  {
    if (v3)
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100129CF4();
      }

      v5 = *(a1 + 40);
      v6 = *(v5 + 280);
      *(v5 + 280) = 0;

      [*(a1 + 32) invalidate];
    }

    else
    {
      v7 = [v4 dispatchQueue];
      dispatch_assert_queue_V2(v7);

      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100129D34();
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000B36A0;
      v10[3] = &unk_1001AEF80;
      v11 = *(a1 + 32);
      [v11 registerRequestID:@"_camCap" options:0 handler:v10];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000B37D0;
      v8[3] = &unk_1001AEF58;
      v9 = *(a1 + 32);
      [v9 registerEventID:@"_ccExit" options:0 handler:v8];
    }
  }
}

void sub_1000B36A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a1 + 40);
  if (*(a1 + 32) == *(*(a1 + 40) + 280))
  {
    v5 = a4;
    if (CFDictionaryGetInt64() && (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3))
    {
      [*v4 _postNotificationForWombatActivity:3];
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129D50(v4);
    }

    v6 = [NSDictionary dictionaryWithObject:*(*v4 + 29) forKey:@"_cCap"];
    (*(v5 + 2))(v5, v6, 0, 0);
  }
}

void sub_1000B37D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 280))
  {
    v11 = v5;
    v6 = a3;
    v7 = [v6 objectForKeyedSubscript:@"senderIDS"];
    v8 = [v6 objectForKeyedSubscript:@"senderSessionPairingID"];
    v9 = [v6 objectForKeyedSubscript:@"peerVerifiedIdentity"];

    if (v7)
    {
      v10 = objc_alloc_init(RPCompanionLinkDevice);
      [v10 setIdsDeviceIdentifier:v7];
      [v10 setSessionPairingIdentifier:v8];
      [v10 setVerifiedIdentity:v9];
      [*(a1 + 40) _receivedCameraExitEvent:v11 from:v10];
    }

    else
    {
      sub_100129D9C();
    }

    v5 = v11;
  }
}