void sub_1000039BC(uint64_t a1)
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"handleMFDNotification:" name:@"com.apple.stockholm.se.mfd" object:0];

  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SESKey registered to receive MFD notifications", v4, 2u);
  }
}

id sub_100003AEC(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received MFD notification, clearing instance representations", v4, 2u);
  }

  return [*(a1 + 32) setInstanceRepresentations:0];
}

void sub_100003F64(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = sub_100050E34(SEProxyAdapter, v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[5];
  v5 = a1[6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000404C;
  v7[3] = &unk_1004C0990;
  v6 = a1[8];
  v7[4] = a1[7];
  v8 = v6;
  sub_100055378(SecureElementManager, v3, v4, v5, v7);
  if (v2)
  {
  }
}

void sub_10000404C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) messageQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000413C;
  v11[3] = &unk_1004C0968;
  v12 = v6;
  v8 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void sub_10000413C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 40) initializeRAMRepresentation:*(a1 + 48)];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 48);
    }

    v6 = v4;
    (*(*(a1 + 56) + 16))(*(a1 + 56), v5);
  }
}

void sub_1000043FC(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = sub_100050E34(SEProxyAdapter, v2);
  }

  else
  {
    v3 = 0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000044E4;
  v6[3] = &unk_1004C0990;
  v4 = a1[5];
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  sub_100055378(SecureElementManager, v3, 0, v4, v6);
  if (v2)
  {
  }
}

void sub_1000044E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) messageQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000045D4;
  v11[3] = &unk_1004C0968;
  v12 = v6;
  v8 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void sub_1000045D4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v5 = [*(a1 + 40) initializeRAMRepresentation:*(a1 + 48)];
    if (!v5)
    {
      v4 = *(a1 + 48);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000047F4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = a1[6];
    v10 = SESEnsureError();
    v11 = *(v12 + 16);
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v13 = 0;
    v10 = [v8 getKeyHandle:v5 key:v9 error:&v13];
    v7 = v13;
    v11 = *(a1[6] + 16);
  }

  v11();
}

id sub_100004BC0(uint64_t a1, void *a2)
{
  v3 = [a2 AID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_100004C28(id a1, KeySlot *a2)
{
  v2 = a2;
  v3 = [(KeySlot *)v2 state]== 2 && [(KeySlot *)v2 designation]== 0;

  return v3;
}

id sub_100004ED4(uint64_t a1, void *a2)
{
  v3 = [a2 AID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_100005038(id a1, InstanceRepresentation *a2)
{
  v2 = [(InstanceRepresentation *)a2 AID];
  v3 = [v2 isEqualToString:@"A000000704C0000000000002"];

  return v3;
}

NSNumber *__cdecl sub_10000507C(id a1, KeySlot *a2)
{
  v2 = a2;
  if ([(KeySlot *)v2 state]== 6)
  {
    v3 = [NSNumber numberWithUnsignedShort:[(KeySlot *)v2 number]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000058F4(uint64_t a1, void *a2)
{
  v3 = [a2 AID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100005938(uint64_t a1, void *a2)
{
  v3 = [a2 keyIdentifier];
  v4 = [*(a1 + 32) keyIdentifier];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

void sub_100005DA8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = a1[8];
    v14 = SESEnsureError();
    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    v8 = a1[4];
    v27 = 0;
    v9 = [v8 getUsableLegacyKeySlot:@"A000000704C0000000000002" outError:&v27];
    v10 = v27;
    if (v10)
    {
      v7 = v10;
      v11 = a1[8];
      v12 = SESEnsureError();
      (*(v11 + 16))(v11, 0, v12);
    }

    else
    {
      v15 = SESDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v9 number];
        *buf = 67109120;
        LODWORD(v29) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Creating key in slot %u", buf, 8u);
      }

      v17 = [@"A000000704C0000000000002" hexStringAsData];
      v18 = a1[5];
      v19 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v9 number]);
      v20 = a1[6];
      v21 = a1[7];
      v26 = 0;
      v12 = sub_10002E4AC(v5, v17, v18, v19, v20, v21, &v26);
      v7 = v26;

      if (v7)
      {
        (*(a1[8] + 16))(a1[8], 0, v7);
      }

      else
      {
        [v9 setState:6];
        v22 = SESDefaultLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v12 publicKeyData];
          v24 = [v23 asHexString];
          v25 = [v9 number];
          *buf = 138412546;
          v29 = v24;
          v30 = 1024;
          v31 = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Created legacy key %@ in slot %u", buf, 0x12u);
        }

        (*(a1[8] + 16))(a1[8], v12, 0);
      }
    }
  }
}

void sub_1000061AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = *(a1 + 48);
    v12 = SESEnsureError();
    (*(v11 + 16))(v11, 0, v12);

LABEL_7:
    goto LABEL_8;
  }

  if ([*(a1 + 32) unsignedIntValue] >= 2 && objc_msgSend(*(a1 + 32), "unsignedIntValue") < 0x10)
  {
    v13 = [@"A000000704C0000000000002" hexStringAsData];
    v7 = sub_100030394(v5, v13, [*(a1 + 32) unsignedShortValue]);

    if (v7)
    {
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [*(a1 + 32) unsignedIntValue];
        *buf = 67109120;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to delete legacy key in slot %u", buf, 8u);
      }
    }

    else
    {
      v16 = [*(a1 + 40) instanceRepresentations];
      v7 = [v16 find:&stru_1004C0BA0];

      v17 = [v7 keys];
      v18 = [v17 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "unsignedIntValue")}];
      [v18 resetLegacyToAvailable];

      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v19 = [*(a1 + 32) unsignedIntValue];
        *buf = 67109120;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Deleted legacy key in slot %u", buf, 8u);
      }
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_7;
  }

  v8 = *(a1 + 48);
  v9 = SESDefaultLogObject();
  [*(a1 + 32) unsignedIntValue];
  v10 = SESCreateAndLogError();
  (*(v8 + 16))(v8, 0, v10);

LABEL_8:
}

BOOL sub_100006474(id a1, InstanceRepresentation *a2)
{
  v2 = [(InstanceRepresentation *)a2 AID];
  v3 = [v2 isEqualToString:@"A000000704C0000000000002"];

  return v3;
}

void sub_10000666C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = a1[8];
    v15 = SESEnsureError();
    (*(v14 + 16))(v14, 0, v15);
  }

  else
  {
    v8 = [@"A000000704C0000000000002" hexStringAsData];
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[7];
    v16 = 0;
    v13 = sub_10002ECB8(v5, v8, v9, v10, v11, v12, &v16);
    v7 = v16;

    (*(a1[8] + 16))();
  }
}

void sub_100006914(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = *(a1 + 64);
    v15 = SESEnsureError();
    (*(v14 + 16))(v14, 0, v15);
  }

  else
  {
    v8 = [@"A000000704C0000000000002" hexStringAsData];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = [*(a1 + 56) unsignedIntValue];
    v16 = 0;
    v13 = sub_10002F2BC(v5, v8, v9, v10, v11, v12, &v16);
    v7 = v16;

    (*(*(a1 + 64) + 16))();
  }
}

void sub_100006B38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v8 = 0;
    v7 = [v6 getOccupiedLegacyKeySlots:&v8];
    v5 = v8;
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100006CDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = *(a1 + 48);
    v13 = SESEnsureError();
    v14 = *(v15 + 16);
  }

  else
  {
    v8 = [*(a1 + 32) DERItem];
    v10 = [KeySlot _acl:v8 containsOperation:v9, "os"];
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (!v10)
    {
      v19 = 0;
      v13 = [v11 _createKey:v5 acl:v12 error:&v19];
      v7 = v19;
      v16 = *(a1 + 48);
      v17 = [v13 key];
      v18 = [v17 keyData];
      (*(v16 + 16))(v16, v18, v7);

      goto LABEL_8;
    }

    v20 = 0;
    v13 = [v11 _createSynchronizableKey:v5 extractedACLs:v12 error:&v20];
    v7 = v20;
    v14 = *(*(a1 + 48) + 16);
  }

  v14();
LABEL_8:
}

void sub_1000072E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000733C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[4];
  v7 = [@"A000000704C0000000000002" hexStringAsData];
  v8 = a1[5];
  v9 = a1[6];
  v10 = [NSData dataWithBytes:a2 length:a3];
  v11 = *(a1[8] + 8);
  obj = *(v11 + 40);
  v12 = sub_100034534(v6, v7, v8, v9, v10, &obj);
  objc_storeStrong((v11 + 40), obj);
  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_100007550(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v13 = *(a1 + 40);
    v14 = SESEnsureError();
    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [@"A000000704C0000000000002" hexStringAsData];
    v15 = 0;
    [v11 _deleteLoadedKey:v7 instanceAID:v12 loadedKey:v8 error:&v15];
    v10 = v15;

    (*(*(a1 + 40) + 16))(*(a1 + 40), v10 == 0, v10);
  }
}

void sub_100007814(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v20 = a1[7];
    v21 = SESEnsureError();
    (*(v20 + 16))(v20, 0, v21);
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 slot];
      v13 = [v12 number];
      v14 = [v8 key];
      *buf = 67109376;
      v24 = v13;
      v25 = 1024;
      v26 = [v14 keyNumber];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sign with slot %u key 0x%x", buf, 0xEu);
    }

    v15 = [@"A000000704C0000000000002" hexStringAsData];
    v16 = a1[4];
    v17 = a1[5];
    v18 = a1[6];
    v22 = 0;
    v19 = sub_100030548(v7, v15, v16, v8, v17, v18, &v22);
    v10 = v22;

    (*(a1[7] + 16))();
  }
}

void sub_100007BA4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v20 = a1[7];
    v21 = SESEnsureError();
    (*(v20 + 16))(v20, 0, v21);
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 slot];
      v13 = [v12 number];
      v14 = [v8 key];
      *buf = 67109376;
      v24 = v13;
      v25 = 1024;
      v26 = [v14 keyNumber];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sign precomputed with slot %u key 0x%x", buf, 0xEu);
    }

    v15 = [@"A000000704C0000000000002" hexStringAsData];
    v16 = a1[4];
    v17 = a1[5];
    v18 = a1[6];
    v22 = 0;
    v19 = sub_100030BD0(v7, v15, v16, v8, v17, v18, &v22);
    v10 = v22;

    (*(a1[7] + 16))();
  }
}

void sub_100007F74(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v20 = a1[7];
    v21 = SESEnsureError();
    (*(v20 + 16))(v20, 0, v21);
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 slot];
      v13 = [v12 number];
      v14 = [v8 key];
      *buf = 67109376;
      v24 = v13;
      v25 = 1024;
      v26 = [v14 keyNumber];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sign with slot # %u key 0x%x", buf, 0xEu);
    }

    v15 = [@"A000000704C0000000000002" hexStringAsData];
    v16 = a1[4];
    v17 = a1[5];
    v18 = a1[6];
    v22 = 0;
    v19 = sub_100030D98(v7, v15, v16, v8, v17, v18, &v22);
    v10 = v22;

    (*(a1[7] + 16))();
  }
}

void sub_10000839C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v26 = a1[10];
    v27 = SESEnsureError();
    (*(v26 + 16))(v26, 0, 0, v27);
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 slot];
      v13 = [v12 number];
      v14 = [v8 key];
      *buf = 67109376;
      v30 = v13;
      v31 = 1024;
      v32 = [v14 keyNumber];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Encrypt with slot # %u key 0x%x", buf, 0xEu);
    }

    v15 = [@"A000000704C0000000000002" hexStringAsData];
    v16 = a1[4];
    v17 = a1[5];
    v18 = a1[6];
    v19 = a1[7];
    v20 = a1[8];
    v21 = a1[9];
    v28 = 0;
    v22 = sub_100031354(v7, v15, v16, v8, v17, v18, v19, v20, v21, &v28);
    v10 = v28;

    v23 = a1[10];
    v24 = [v22 cipherText];
    v25 = [v22 authenticationTag];
    (*(v23 + 16))(v23, v24, v25, v10);
  }
}

void sub_10000885C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v24 = a1[11];
    v25 = SESEnsureError();
    (*(v24 + 16))(v24, 0, v25);
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 slot];
      v13 = [v12 number];
      v14 = [v8 key];
      *buf = 67109376;
      v28 = v13;
      v29 = 1024;
      v30 = [v14 keyNumber];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Decrypt with slot # %u key 0x%x", buf, 0xEu);
    }

    v15 = [@"A000000704C0000000000002" hexStringAsData];
    v16 = a1[4];
    v17 = a1[5];
    v18 = a1[6];
    v19 = a1[7];
    v20 = a1[8];
    v21 = a1[9];
    v22 = a1[10];
    v26 = 0;
    v23 = sub_100031AA0(v7, v15, v16, v8, v17, v18, v19, v20, v21, v22, &v26);
    v10 = v26;

    (*(a1[11] + 16))();
  }
}

void sub_100008DAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v29 = *(a1 + 120);
    v30 = SESEnsureError();
    (*(v29 + 16))(v29, 0, 0, v30);
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 slot];
      v13 = [v12 number];
      v14 = [v8 key];
      *buf = 67109376;
      v33 = v13;
      v34 = 1024;
      v35 = [v14 keyNumber];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Transcode with slot %u key 0x%x", buf, 0xEu);
    }

    v15 = [@"A000000704C0000000000002" hexStringAsData];
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v24 = *(a1 + 112);
    v31 = 0;
    v25 = sub_100032238(v7, v15, v16, v8, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, &v31);
    v10 = v31;

    v26 = *(a1 + 120);
    v27 = [v25 cipherText];
    v28 = [v25 authenticationTag];
    (*(v26 + 16))(v26, v27, v28, v10);
  }
}

void sub_100009240(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v30 = *(a1 + 56);
    v17 = SESEnsureError();
    (*(v30 + 16))(v30, 0, v17);
  }

  else
  {
    v32 = v7;
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 slot];
      v13 = [v12 number];
      v14 = [v8 key];
      *buf = 67109376;
      *v43 = v13;
      *&v43[4] = 1024;
      *&v43[6] = [v14 keyNumber];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "PT Attest with slot %u key 0x%x", buf, 0xEu);
    }

    v31 = v8;

    v15 = SESDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 138412290;
      *v43 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "OIDs %@", buf, 0xCu);
    }

    v17 = +[NSMutableData data];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = *(a1 + 32);
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v37 + 1) + 8 * i);
          if ([v23 isEqualToString:@"1.2.840.113635.100.6.65.16"])
          {
            v36 = 16;
            v24 = &v36;
          }

          else if ([v23 isEqualToString:@"1.2.840.113635.100.6.65.17"])
          {
            v35 = 17;
            v24 = &v35;
          }

          else
          {
            if (![v23 isEqualToString:@"1.2.840.113635.100.6.65.19"])
            {
              continue;
            }

            v34 = 19;
            v24 = &v34;
          }

          v25 = [NSData dataWithBytes:v24 length:1];
          [v17 appendData:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v20);
    }

    v26 = [@"A000000704C0000000000002" hexStringAsData];
    v8 = v31;
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v33 = 0;
    v7 = v32;
    v29 = sub_100032E80(v32, v26, v31, v27, v17, v28, 0, &v33);
    v10 = v33;

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100009790(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v7 = *(a1 + 32);
    v10 = SESEnsureError();
    (*(v7 + 16))(v7, 0);
  }

  else
  {
    v4 = sub_1003AF3C4(a2, a2);
    v5 = [v4 casdCertificate];
    v10 = DERDecodeData(v5);

    v6 = *(a1 + 32);
    if (v10)
    {
      (*(v6 + 16))(v6, v10, 0);
    }

    else
    {
      v8 = SESDefaultLogObject();
      v9 = SESCreateAndLogError();
      (*(v6 + 16))(v6, 0, v9);
    }
  }
}

void sub_100009AC0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (!a2 || v7)
  {
    v17 = a1[9];
    v14 = SESEnsureError();
    (*(v17 + 16))(v17, 0, v14);
  }

  else
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[7];
    v13 = a1[8];
    v18 = 0;
    v14 = [v9 _getBAACertificatesForKey:a2 key:a3 subjectIdentifier:v10 nonce:v11 OIDs:v12 validityInterval:v13 error:&v18];
    v8 = v18;
    v15 = a1[9];
    v16 = sub_1003AAA78(v14);
    (*(v15 + 16))(v15, v16, v8);
  }
}

void sub_10000A064(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (!v13 || v5)
  {
    v9 = *(a1 + 32);
    v10 = SESEnsureError();
    (*(v9 + 16))(v9, 0, 0, v10);
    goto LABEL_6;
  }

  v6 = [@"A000000704C0000000000002" hexStringAsData];
  v7 = sub_10002FFE8(v13, v6);

  if ((v7 - 1) >= 3)
  {
    if (v7 == 4)
    {
      v8 = *(*(a1 + 32) + 16);
      goto LABEL_11;
    }

    if (v7)
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 32);
    v10 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(v11 + 16))(v11, 0, 0, v12);

LABEL_6:
    goto LABEL_12;
  }

  v8 = *(*(a1 + 32) + 16);
LABEL_11:
  v8();
LABEL_12:
}

void sub_10000A524(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v30 = *(a1 + 96);
    v31 = SESEnsureError();
    (*(v30 + 16))(v30, 0, v31);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v44 = 0;
    v10 = [v8 getKeyHandle:v5 key:v9 error:&v44];
    v7 = v44;
    if (v7 || !v10)
    {
      v32 = *(a1 + 96);
      v13 = SESDefaultLogObject();
      v14 = SESCreateAndLogError();
      (*(v32 + 16))(v32, 0, v14);
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v43 = 0;
      v13 = [v11 getKeyHandle:v5 key:v12 error:&v43];
      v7 = v43;
      if (!v7 && v13)
      {
        v35 = v10;
        v36 = v5;
        v14 = +[NSMutableData data];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v34 = a1;
        v15 = *(a1 + 56);
        v16 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = v16;
        v18 = *v40;
        while (1)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v40 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v39 + 1) + 8 * i);
            v21 = 16;
            v38 = 16;
            if ([v20 isEqualToString:@"1.2.840.113635.100.6.65.16"])
            {
              goto LABEL_15;
            }

            if ([v20 isEqualToString:@"1.2.840.113635.100.6.65.17"])
            {
              v21 = 17;
LABEL_15:
              v38 = v21;
              [v14 appendBytes:&v38 length:1];
              continue;
            }

            v22 = SESDefaultLogObject();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v46 = v20;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Ignoring unknown OID %@", buf, 0xCu);
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (!v17)
          {
LABEL_21:

            v23 = [@"A000000704C0000000000002" hexStringAsData];
            v24 = *(a1 + 64);
            v25 = *(a1 + 72);
            v26 = *(a1 + 80);
            v27 = *(a1 + 88);
            v37 = 0;
            v10 = v35;
            v5 = v36;
            v28 = sub_100033CD0(v36, v23, v24, v35, v13, v25, v26, v14, v27, &v37);
            v7 = v37;

            v29 = *(*(v34 + 96) + 16);
            goto LABEL_25;
          }
        }
      }

      v33 = *(a1 + 96);
      v14 = SESDefaultLogObject();
      v28 = SESCreateAndLogError();
      v29 = *(v33 + 16);
LABEL_25:
      v29();
    }
  }
}

void sub_10000AA70(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v28 = a1[6];
    v11 = SESEnsureError();
    (*(v28 + 16))(v28, 0, v11);
  }

  else
  {
    v31 = 0;
    v11 = [_TtC10seserviced35SESKeyDesignationStorageCoordinator getAndReturnError:&v31];
    v10 = v31;
    if (v10 || !v11)
    {
      v29 = a1[6];
      v20 = SESEnsureError();
      v27 = *(v29 + 16);
    }

    else
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v8 slot];
        v14 = [v13 number];
        v15 = [v8 key];
        v16 = [v15 keyNumber];
        *buf = 67109376;
        v33 = v14;
        v34 = 1024;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Update ACL for Key in slot %u key 0x%x", buf, 0xEu);
      }

      v17 = [@"A000000704C0000000000002" hexStringAsData];
      v18 = a1[4];
      v19 = a1[5];
      v30 = 0;
      v20 = sub_100034994(v7, v17, v18, v8, v19, &v30);
      v10 = v30;

      v21 = SESDefaultLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v8 slot];
        v23 = [v22 number];
        *buf = 67109120;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Settings slot %u to unoccupied due to implicit ptc_UpdateACL", buf, 8u);
      }

      v24 = [v8 slot];
      [v24 resetToEmpty];

      v25 = [v8 key];
      v26 = [v25 keyIdentifier];
      [v11 removeDesignationWithKeyIdentifier:v26];

      v27 = *(a1[6] + 16);
    }

    v27();
  }
}

void sub_10000AE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10000AE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  *(*(*(a1 + 40) + 8) + 24) = v5;
  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000B0A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v7 && !v9)
  {
    v39 = 0;
    v11 = [_TtC10seserviced35SESKeyDesignationStorageCoordinator getAndReturnError:&v39];
    v10 = v39;
    if (v10 || !v11)
    {
      v29 = *(a1 + 32);
      v30 = SESEnsureError();
      (*(v29 + 16))(v29, 0, v30);
    }

    else
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v33 = *(a1 + 40);
        v37 = [v8 key];
        v35 = [v37 publicKey];
        v13 = [v35 base64];
        v14 = [v8 key];
        v15 = [v14 assetACL];
        v16 = [v15 base64];
        *buf = 67109890;
        v41 = v33;
        v42 = 2112;
        v43 = v8;
        v44 = 2112;
        v45 = v13;
        v46 = 2112;
        v47 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Setting designation %d for key %@ (%@) (%@)", buf, 0x26u);
      }

      v17 = *(a1 + 40);
      v18 = [v8 slot];
      [v18 setDesignation:v17];

      if (*(a1 + 40))
      {
        v19 = [@"A000000704C0000000000002" hexStringAsData];
        v36 = [v8 slot];
        v32 = [v36 number];
        v38 = [v8 key];
        v20 = [v38 keyIdentifier];
        v34 = [v8 key];
        v21 = [v34 assetACL];
        v31 = [v8 key];
        [v31 assetACLAttestation];
        v23 = v22 = v11;
        v25 = sub_1003AF3C4(v7, v24);
        if ([v25 type] <= 3)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        [v22 designateKeyWithAid:v19 slotNumber:v32 keyIdentifier:v20 assetACL:v21 assetACLAttestation:v23 operationApprovalVersion:v26 designation:*(a1 + 40)];

        v11 = v22;
        v27 = v36;
      }

      else
      {
        v19 = [v8 key];
        v27 = [v19 keyIdentifier];
        [v11 removeDesignationWithKeyIdentifier:v27];
      }

      [v11 commit];
      (*(*(a1 + 32) + 16))(*(a1 + 32), 1, 0);
    }
  }

  else
  {
    v28 = *(a1 + 32);
    v11 = SESEnsureError();
    (*(v28 + 16))(v28, 0, v11);
  }
}

void sub_10000B600(uint64_t a1)
{
  v30 = 0;
  v2 = [_TtC10seserviced35SESKeyDesignationStorageCoordinator getAndReturnError:&v30];
  v3 = v30;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v20 = v3;
    [v2 removeWithDesignation:*(a1 + 48)];
    v21 = v2;
    [v2 commit];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [*(a1 + 32) instanceRepresentations];
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v14 = [v13 keys];
          v15 = [v14 countByEnumeratingWithState:&v22 objects:v31 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v23;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v23 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v22 + 1) + 8 * j);
                if ([v19 designation] == *(a1 + 48))
                {
                  [v19 setDesignation:0];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v22 objects:v31 count:16];
            }

            while (v16);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 40) + 16))();
    v4 = v20;
    v2 = v21;
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = SESEnsureError();
    (*(v6 + 16))(v6, 0, v7);
  }
}

void sub_10000BB2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v20 = *(a1 + 32);
    v21 = +[_TtC10seserviced12SEFidoEvents serviceError];
    [v20 reportCAEvent:v21];

    v22 = *(a1 + 72);
    v23 = SESEnsureError();
    (*(v22 + 16))(v22, 0, v23);
  }

  else
  {
    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = sub_100007324;
    v105 = sub_100007334;
    v106 = 0;
    v8 = +[_TtC10seserviced16SEKeySyncManager singleton];
    v9 = [v8 ptcViewName];
    v10 = [v8 getAvailableTLKForViewName:v9 secureElement:v5];

    if (v10)
    {
      v11 = [*(a1 + 40) _extractedACLForFidoKey];
      v12 = *(a1 + 40);
      v13 = v102;
      v100 = v102[5];
      v14 = [v12 _createKey:v5 acl:v11 error:&v100];
      objc_storeStrong(v13 + 5, v100);
      if (v14 && !v102[5])
      {
        v99 = 0;
        if (ACMContextCreate(&v99) || (v27 = v99) == 0)
        {
          v38 = *(a1 + 32);
          v39 = +[_TtC10seserviced12SEFidoEvents unspecifiedError];
          [v38 reportCAEvent:v39];

          v40 = *(a1 + 72);
          v41 = SESDefaultLogObject();
          v42 = SESCreateAndLogError();
          (*(v40 + 16))(v40, 0, v42);
        }

        else
        {
          v93 = 0;
          v94 = &v93;
          v95 = 0x3032000000;
          v96 = sub_100007324;
          v97 = sub_100007334;
          v98 = 0;
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_10000C4CC;
          v87[3] = &unk_1004C0BF0;
          v91 = &v93;
          v81 = v5;
          v88 = v81;
          v83 = v14;
          v89 = v83;
          v90 = v10;
          v92 = &v101;
          ACMContextGetExternalForm(v27, v87);
          ACMContextDelete(v99, 1);
          v99 = 0;
          if (v94[5] && !v102[5])
          {
            v43 = *(a1 + 32);
            v44 = [@"A000000704C0000000000002" hexStringAsData];
            v45 = *(a1 + 48);
            v46 = *(a1 + 56);
            v47 = *(a1 + 64);
            v48 = v102;
            obj = v102[5];
            v84 = [v43 createFidoAttestationWithSecureElement:v81 instanceAID:v44 fidoKey:v83 relyingParty:v45 relyingPartyAccountHash:v46 challenge:v47 error:&obj];
            objc_storeStrong(v48 + 5, obj);

            if (v84 && !v102[5])
            {
              v59 = *(a1 + 48);
              v77 = v59;
              v78 = *(a1 + 32);
              v76 = *(a1 + 56);
              v60 = [v83 key];
              v79 = [v60 publicKey];
              v61 = [v79 ses_sha256];
              v62 = v94[5];
              v63 = v102;
              v85 = v102[5];
              LODWORD(v78) = [v78 storeKeyWithRelyingParty:v77 relyingPartyAccountHash:v76 fidoKeyHash:v61 keyData:v62 error:&v85];
              objc_storeStrong(v63 + 5, v85);

              if (v78 && !v102[5])
              {
                v80 = *(a1 + 56);
                v82 = *(a1 + 48);
                v74 = [v83 key];
                v75 = [v74 publicKey];
                v37 = [SEFidoKey withRelyingParty:v82 relyingPartyAccountHash:v80 fidoPublicKey:v75 fidoAttestation:v84];

                (*(*(a1 + 72) + 16))();
              }

              else
              {
                v64 = *(a1 + 32);
                v65 = +[_TtC10seserviced12SEFidoEvents keychainAddError];
                [v64 reportCAEvent:v65];

                v66 = SESDefaultLogObject();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  v67 = [v83 slot];
                  v68 = [v67 number];
                  v69 = v102[5];
                  *buf = 67109378;
                  v108 = v68;
                  v109 = 2112;
                  v110 = v69;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to storeKeyWithRelyingParty deleting keys in %d : %@", buf, 0x12u);
                }

                v70 = *(a1 + 40);
                v71 = [@"A000000704C0000000000002" hexStringAsData];
                [v70 _deleteLoadedKey:v81 instanceAID:v71 loadedKey:v83 error:0];

                v72 = *(a1 + 72);
                v73 = v102[5];
                v37 = SESEnsureError();
                (*(v72 + 16))(v72, 0, v37);
              }
            }

            else
            {
              v49 = *(a1 + 32);
              v50 = +[_TtC10seserviced12SEFidoEvents keyAttestationError];
              [v49 reportCAEvent:v50];

              v51 = SESDefaultLogObject();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                v52 = [v83 slot];
                v53 = [v52 number];
                v54 = v102[5];
                *buf = 67109378;
                v108 = v53;
                v109 = 2112;
                v110 = v54;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to get createFidoAttestationWithSecureElement deleting keys in %d : %@", buf, 0x12u);
              }

              v55 = *(a1 + 40);
              v56 = [@"A000000704C0000000000002" hexStringAsData];
              [v55 _deleteLoadedKey:v81 instanceAID:v56 loadedKey:v83 error:0];

              v57 = *(a1 + 72);
              v58 = v102[5];
              v37 = SESEnsureError();
              (*(v57 + 16))(v57, 0, v37);
            }
          }

          else
          {
            v28 = *(a1 + 32);
            v29 = +[_TtC10seserviced12SEFidoEvents keyExportError];
            [v28 reportCAEvent:v29];

            v30 = SESDefaultLogObject();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = [v83 slot];
              v32 = [v31 number];
              v33 = v102[5];
              *buf = 67109378;
              v108 = v32;
              v109 = 2112;
              v110 = v33;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to export fidoKey, deleting it from slot %d (%@)", buf, 0x12u);
            }

            v34 = *(a1 + 40);
            v35 = [@"A000000704C0000000000002" hexStringAsData];
            [v34 _deleteLoadedKey:v81 instanceAID:v35 loadedKey:v83 error:0];

            v36 = *(a1 + 72);
            v84 = SESDefaultLogObject();
            v37 = SESCreateAndLogError();
            (*(v36 + 16))(v36, 0, v37);
          }

          _Block_object_dispose(&v93, 8);
        }
      }

      else
      {
        v15 = *(a1 + 32);
        v16 = +[_TtC10seserviced12SEFidoEvents keyCreationError];
        [v15 reportCAEvent:v16];

        v17 = *(a1 + 72);
        v18 = v102[5];
        v19 = SESEnsureError();
        (*(v17 + 16))(v17, 0, v19);
      }
    }

    else
    {
      v24 = *(a1 + 32);
      v25 = +[_TtC10seserviced12SEFidoEvents viewNotSyncedError];
      [v24 reportCAEvent:v25];

      v26 = *(a1 + 72);
      v11 = SESDefaultLogObject();
      v14 = SESCreateAndLogError();
      (*(v26 + 16))(v26, 0, v14);
    }

    _Block_object_dispose(&v101, 8);
  }
}

void sub_10000C464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_10000C4CC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[4];
  v7 = [@"A000000704C0000000000002" hexStringAsData];
  v8 = a1[5];
  v9 = a1[6];
  v10 = [NSData dataWithBytes:a2 length:a3];
  v11 = *(a1[8] + 8);
  obj = *(v11 + 40);
  v12 = sub_100034534(v6, v7, v8, v9, v10, &obj);
  objc_storeStrong((v11 + 40), obj);
  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_10000CE64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v30 = v5;
  if (!v5 || v6)
  {
    v23 = *(a1 + 32);
    v24 = +[_TtC10seserviced12SEFidoEvents serviceError];
    [v23 reportCAEvent:v24];

    v25 = *(a1 + 48);
    v26 = SESEnsureError();
    (*(v25 + 16))(v25, 0, v26);
  }

  else
  {
    v29 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(a1 + 40);
    v8 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v28 = *v33;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = *(a1 + 32);
          v13 = [v11 relyingParty];
          v14 = [v11 relyingPartyAccountHash];
          v15 = [v11 fidoKeyHash];
          v31 = 0;
          v16 = [v12 findKeyForRelyingParty:v13 relyingPartyAccountHash:v14 fidoKeyHash:v15 secureElement:v30 error:&v31];
          v17 = v31;

          v18 = *(a1 + 32);
          if (v16)
          {
            +[_TtC10seserviced12SEFidoEvents fidoKeyFound];
          }

          else
          {
            +[_TtC10seserviced12SEFidoEvents fidoKeyNotFound];
          }
          v19 = ;
          [v18 reportCAEvent:v19];

          v20 = SESDefaultLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v21 = v16 != 0;
            v37 = v11;
            v38 = 1024;
            v39 = v16 != 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Search Params %@ --> %d", buf, 0x12u);
          }

          else
          {
            v21 = v16 != 0;
          }

          v22 = [NSNumber numberWithInt:v21];
          [v29 addObject:v22];
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 48) + 16))();
    v7 = 0;
  }
}

void sub_10000D2F0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v24 = a1[4];
    v25 = +[_TtC10seserviced12SEFidoEvents serviceError];
    [v24 reportCAEvent:v25];

    v26 = a1[8];
    v27 = SESEnsureError();
    (*(v26 + 16))(v26, 0, v27);
  }

  else
  {
    v8 = a1[5];
    v9 = a1[6];
    v38 = 0;
    v10 = [v8 findAndLoadKey:v9 secureElement:v5 error:&v38];
    v11 = v38;
    v7 = v11;
    if (!v10 || v11)
    {
      v28 = a1[8];
      v17 = SESEnsureError();
      (*(v28 + 16))(v28, 0, v17);
    }

    else
    {
      v12 = a1[4];
      v13 = [@"A000000704C0000000000002" hexStringAsData];
      v14 = [a1[6] relyingParty];
      v15 = [a1[6] relyingPartyAccountHash];
      v16 = a1[7];
      v37 = 0;
      v17 = [v12 createFidoAttestationWithSecureElement:v5 instanceAID:v13 fidoKey:v10 relyingParty:v14 relyingPartyAccountHash:v15 challenge:v16 error:&v37];
      v7 = v37;

      if (!v17 || v7)
      {
        v29 = a1[4];
        v30 = +[_TtC10seserviced12SEFidoEvents keyAttestationError];
        [v29 reportCAEvent:v30];

        v31 = SESDefaultLogObject();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = [v10 slot];
          v33 = [v32 number];
          *buf = 67109378;
          v40 = v33;
          v41 = 2112;
          v42 = v7;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to get createFidoAttestationWithSecureElement deleting keys in %d : %@", buf, 0x12u);
        }

        v34 = a1[5];
        v35 = [@"A000000704C0000000000002" hexStringAsData];
        [v34 _deleteLoadedKey:v5 instanceAID:v35 loadedKey:v10 error:0];

        v36 = a1[8];
        v22 = SESEnsureError();
        v23 = *(v36 + 16);
      }

      else
      {
        v18 = [a1[6] relyingParty];
        v19 = [a1[6] relyingPartyAccountHash];
        v20 = [v10 key];
        v21 = [v20 publicKey];
        v22 = [SEFidoKey withRelyingParty:v18 relyingPartyAccountHash:v19 fidoPublicKey:v21 fidoAttestation:v17];

        v23 = *(a1[8] + 16);
      }

      v23();
    }
  }
}

void sub_10000D9E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v56 = v4;
  if (!v4 || v5)
  {
    v42 = *(a1 + 32);
    v43 = +[_TtC10seserviced12SEFidoEvents serviceError];
    [v42 reportCAEvent:v43];

    v44 = *(a1 + 80);
    v45 = SESEnsureError();
    (*(v44 + 16))(v44, 0, v45);
  }

  else
  {
    v7 = a1;
    v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v52 = [*(a1 + 40) count];
    if (v52)
    {
      v9 = 0;
      v51 = v8;
      while (1)
      {
        v10 = [*(v7 + 40) objectAtIndexedSubscript:v9];
        v11 = [*(v7 + 48) objectAtIndexedSubscript:v9];
        v12 = *(v7 + 56);
        v58 = 0;
        v13 = [v12 findAndLoadKey:v10 secureElement:v56 error:&v58];
        v14 = v58;
        if (!v13 || v14 != 0)
        {
          break;
        }

        v16 = *(v7 + 32);
        v17 = [@"A000000704C0000000000002" hexStringAsData];
        v18 = [v10 relyingParty];
        v19 = v10;
        v20 = [v10 relyingPartyAccountHash];
        v21 = *(v7 + 64);
        if (v21)
        {
          v53 = [*(v7 + 64) objectAtIndexedSubscript:v9];
          v22 = v53;
        }

        else
        {
          v22 = 0;
        }

        v23 = *(v7 + 72);
        v57 = 0;
        v24 = v16;
        v25 = v11;
        v54 = [v24 performFidoSignatureWithSecureElement:v56 instanceAID:v17 loadedKey:v13 relyingParty:v18 relyingPartyAccountHash:v20 challenge:v11 ptaEndPointIdentifierForExtension:v22 externalizedAuth:v23 error:&v57];
        v55 = v57;
        if (v21)
        {
        }

        v26 = v54;
        if (!v54 || v55)
        {
          v34 = *(v7 + 32);
          v35 = +[_TtC10seserviced12SEFidoEvents signatureError];
          [v34 reportCAEvent:v35];

          v36 = SESDefaultLogObject();
          v8 = v51;
          v33 = v55;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v60 = v55;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to perform signature for assertion %@", buf, 0xCu);
          }

          v37 = SESEnsureError();
          [v51 addObject:v37];

          v38 = [@"A000000704C0000000000002" hexStringAsData];
          v39 = [v13 slot];
          v32 = sub_100030394(v56, v38, [v39 number]);

          v40 = [v13 slot];
          [v40 resetToEmpty];

          v41 = SESDefaultLogObject();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v60 = v13;
            v61 = 2112;
            v62 = v32;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Cleaned up failed signature on %@ : %@", buf, 0x16u);
          }

          v26 = v54;
        }

        else
        {
          v27 = v19;
          v50 = [v19 relyingParty];
          v28 = [v19 relyingPartyAccountHash];
          v29 = [v13 key];
          v30 = [v29 publicKey];
          v31 = [v30 ses_sha256];
          v32 = [SEFidoKeySignResult withRelyingParty:v50 relyingPartyAccountHash:v28 fidoKeyHash:v31 fidoAssertion:v54];

          v7 = a1;
          v25 = v11;

          v19 = v27;
          v8 = v51;
          [v51 addObject:v32];
          v33 = 0;
        }

        if (v52 == ++v9)
        {
          goto LABEL_24;
        }
      }

      v46 = v14;
      v47 = *(v7 + 80);
      v48 = SESEnsureError();
      (*(v47 + 16))(v47, 0, v48);
    }

    else
    {
LABEL_24:
      (*(*(v7 + 80) + 16))();
    }

    v6 = 0;
  }
}

void sub_10000E1C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (!v5 || v6)
  {
    v21 = +[_TtC10seserviced12SEFidoEvents serviceError];
    [v8 reportCAEvent:v21];

    v22 = *(a1 + 56);
    v23 = SESDefaultLogObject();
    v24 = SESCreateAndLogError();
    (*(v22 + 16))(v22, &off_1004DC8E8, v24);
  }

  else
  {
    v9 = [*(a1 + 40) relyingParty];
    v10 = [*(a1 + 40) relyingPartyAccountHash];
    v11 = [*(a1 + 40) fidoKeyHash];
    v37 = 0;
    v12 = [v8 findKeyForRelyingParty:v9 relyingPartyAccountHash:v10 fidoKeyHash:v11 secureElement:v5 error:&v37];
    v7 = v37;

    if (!v12 || v7)
    {
      v25 = *(a1 + 32);
      v26 = +[_TtC10seserviced12SEFidoEvents fidoKeyNotFound];
      [v25 reportCAEvent:v26];

      v27 = *(a1 + 56);
      v13 = SESDefaultLogObject();
      v28 = SESCreateAndLogError();
      (*(v27 + 16))(v27, &off_1004DC8E8, v28);
    }

    else
    {
      v36 = 0;
      v13 = [PTClassicKey withData:v12 error:&v36];
      v14 = v36;
      v7 = v14;
      v15 = *(a1 + 32);
      if (!v13 || v14)
      {
        v29 = +[_TtC10seserviced12SEFidoEvents keyDecodeError];
        [v15 reportCAEvent:v29];

        v30 = *(a1 + 56);
        v28 = SESDefaultLogObject();
        v31 = SESCreateAndLogError();
        (*(v30 + 16))(v30, &off_1004DC8E8, v31);
      }

      else
      {
        v16 = [v13 publicKey];
        v17 = *(a1 + 48);
        v35 = 0;
        v18 = [v15 performFidoVerificationWithPublicKey:v16 signedChallenge:v17 error:&v35];
        v7 = v35;
        v19 = [v18 BOOLValue];

        v20 = *(a1 + 32);
        if (v19)
        {
          +[_TtC10seserviced12SEFidoEvents fidoVerificationSucceeded];
        }

        else
        {
          +[_TtC10seserviced12SEFidoEvents fidoVerificationFailed];
        }
        v32 = ;
        [v20 reportCAEvent:v32];

        v33 = SESDefaultLogObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v39 = v19;
          v40 = 2112;
          v41 = v7;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "FIDO verification successful %d error %@", buf, 0x12u);
        }

        v34 = *(a1 + 56);
        v28 = [NSNumber numberWithBool:v19];
        (*(v34 + 16))(v34, v28, v7);
      }
    }
  }
}

void sub_10000E7C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = *(a1 + 40);
    v17 = SESEnsureError();
    (*(v16 + 16))(v16, 0, v17);
  }

  else
  {
    v8 = objc_opt_new();
    v9 = [*(a1 + 32) relyingParty];
    v10 = [*(a1 + 32) relyingPartyAccountHash];
    v11 = [*(a1 + 32) fidoKeyHash];
    v21 = 0;
    v12 = [v8 findKeyForRelyingParty:v9 relyingPartyAccountHash:v10 fidoKeyHash:v11 secureElement:v5 error:&v21];
    v7 = v21;

    if (v7 || !v12)
    {
      v18 = *(a1 + 40);
      v19 = SESEnsureError();
      (*(v18 + 16))(v18, 0, v19);
    }

    else
    {
      v13 = [*(a1 + 32) relyingParty];
      v14 = [*(a1 + 32) relyingPartyAccountHash];
      v15 = [*(a1 + 32) fidoKeyHash];
      v20 = 0;
      [v8 deleteKeyWithRelyingParty:v13 relyingPartyAccountHash:v14 fidoKeyHash:v15 error:&v20];
      v7 = v20;

      (*(*(a1 + 40) + 16))(*(a1 + 40), v7 == 0, v7);
    }
  }
}

void sub_10000F22C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10050CBE8;
  qword_10050CBE8 = v1;
}

void sub_10000F4A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = +[ACAccountStore defaultStore];
  v5 = [v4 aa_primaryAppleAccount];
  v6 = [v5 aa_altDSID];

  if (v6)
  {
    v7 = objc_alloc_init(OTConfigurationContext);
    [v7 setContext:OTDefaultContext];
    [v7 setAltDSID:v6];
    v8 = objc_opt_new();
    [v8 setUseCachedAccountStatus:1];
    v9 = *(a1 + 32);
    v10 = [v6 asAsciiData];
    v11 = [v9 otCliqueForAltDSID:v10];
    v21 = 0;
    v12 = [v11 fetchCliqueStatus:v8 error:&v21];
    v13 = v21;

    if (v13 || v12 == -1)
    {
      v17 = *(*(a1 + 40) + 16);
    }

    else
    {
      if ((v12 - 3) >= 2 && v12 != 1)
      {
        if (v12)
        {
          v18 = *(a1 + 40);
          v19 = SESDefaultLogObject();
          v20 = SESCreateAndLogError();
          (*(v18 + 16))(v18, 0, 0, v20);
        }

        else
        {
          objc_storeStrong((*(a1 + 32) + 16), v6);
          v14 = *(a1 + 40);
          v15 = [v6 asAsciiData];
          (*(v14 + 16))(v14, 1, v15, 0);
        }

        goto LABEL_14;
      }

      v17 = *(*(a1 + 40) + 16);
    }

    v17();
LABEL_14:

    goto LABEL_15;
  }

  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "No aa_primaryAppletAccount", buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_15:
}

void sub_10000F800(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [*(a1 + 32) otCliqueForAltDSID:*(a1 + 40)];
  v27 = 0;
  v7 = [v6 fetchTrustedSecureElementIdentities:&v27];
  v8 = v27;

  if (v8 || !v7)
  {
    v26 = *(a1 + 48);
    v11 = SESDefaultLogObject();
    v22 = SESCreateAndLogError();
    (*(v26 + 16))(v26, 0, 0, v22);
  }

  else
  {
    v9 = [v7 localPeerIdentity];
    v10 = [v9 peerIdentifier];

    v11 = [v7 trustedPeerSecureElementIdentities];
    v12 = [v11 ses_map:&stru_1004C0F40];
    v13 = v12;
    v14 = &__NSArray0__struct;
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v16 = SESDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v29 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Got local peer identity %@", buf, 0xCu);
    }

    v17 = SESDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v11 count];
      v19 = [v15 count];
      *buf = 67109632;
      *v29 = v11 != 0;
      *&v29[4] = 1024;
      *&v29[6] = v18;
      v30 = 1024;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Got %d/%d/%d trusted peers", buf, 0x14u);
    }

    v20 = *(a1 + 32);
    v21 = *(v20 + 32);
    *(v20 + 32) = v10;
    v22 = v10;

    v23 = *(a1 + 32);
    v24 = *(v23 + 40);
    *(v23 + 40) = v15;
    v25 = v15;

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10000FBB4(uint64_t a1)
{
  v2 = [*(a1 + 32) otCliqueForAltDSID:*(a1 + 40)];
  v3 = [*(a1 + 48) asOTPeerIdentity];
  v8 = 0;
  v4 = [v2 setLocalSecureElementIdentity:v3 error:&v8];
  v5 = v8;

  v6 = *(a1 + 56);
  if (v4)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    v7 = SESEnsureError();
    (*(v6 + 16))(v6, v7);
  }
}

void sub_10000FD68(uint64_t a1)
{
  v2 = [*(a1 + 32) otCliqueForAltDSID:*(a1 + 40)];
  v3 = *(a1 + 48);
  v8 = 0;
  v4 = [v2 removeLocalSecureElementIdentityPeerID:v3 error:&v8];
  v5 = v8;

  v6 = *(a1 + 56);
  if (v4)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    v7 = SESEnsureError();
    (*(v6 + 16))(v6, v7);
  }
}

void sub_10000FEE8(uint64_t a1)
{
  v17 = 0;
  v2 = [CKKSControl CKKSControlObject:0 error:&v17];
  v3 = v17;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100010058;
    v12[3] = &unk_1004C1010;
    v9 = *(a1 + 40);
    v16 = *(a1 + 48);
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    v15 = v2;
    [v15 fetchSEViewKeyHierarchy:v9 forceFetch:0 reply:v12];

    v7 = v16;
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    (*(v6 + 16))(v6, 0, v8);
  }
}

void sub_100010058(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412290;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error from fetchSEViewKeyHierarchy -- %@", &v26, 0xCu);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (v9)
    {
      v14 = [SESTLKRecord withCKKSExternalKey:v9];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v10 filterMap:&stru_1004C0FA8];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &__NSArray0__struct;
    }

    v18 = v17;

    v19 = [v11 filterMap:&stru_1004C0FE8];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &__NSArray0__struct;
    }

    v22 = v21;

    v23 = [SESViewInformation withViewName:a1[4] currentTLK:v14 tlkShares:v22 previousTLKs:v18];
    v24 = SESDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = a1[4];
      v26 = 138412546;
      v27 = v25;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "View %@ has cached content %@", &v26, 0x16u);
    }

    [*(a1[5] + 24) setObject:v23 forKeyedSubscript:a1[4]];
    (*(a1[7] + 16))();
  }
}

void sub_1000103E8(uint64_t a1)
{
  v13 = 0;
  v2 = [CKKSControl CKKSControlObject:0 error:&v13];
  v3 = v13;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = [*(a1 + 32) ses_map:&stru_1004C1078];
    v8 = [*(a1 + 40) ses_map:&stru_1004C1098];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010578;
    v10[3] = &unk_1004C10C0;
    v9 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = v2;
    [v11 modifyTLKSharesForSEView:v9 adding:v7 deleting:v8 reply:v10];
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    (*(v6 + 16))(v6, v8);
  }
}

void sub_100010698(uint64_t a1)
{
  v16 = 0;
  v2 = [CKKSControl CKKSControlObject:0 error:&v16];
  v3 = v16;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) asCKKSExternalKey];
    v11 = [*(a1 + 48) asCKKSExternalShare];
    v17 = v11;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100010868;
    v13[3] = &unk_1004C10C0;
    v15 = *(a1 + 56);
    v14 = v2;
    [v14 proposeTLKForSEView:v9 proposedTLK:v10 wrappedOldTLK:0 tlkShares:v12 reply:v13];

    v7 = v15;
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    (*(v6 + 16))(v6, v8);
  }
}

void sub_10001093C(uint64_t a1)
{
  v14 = 0;
  v2 = [CKKSControl CKKSControlObject:0 error:&v14];
  v3 = v14;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010A9C;
    v10[3] = &unk_1004C1110;
    v11 = v9;
    v13 = *(a1 + 40);
    v12 = v2;
    [v12 fetchSEViewKeyHierarchy:v11 forceFetch:1 reply:v10];

    v7 = v11;
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    (*(v6 + 16))(v6, v8);
  }
}

void sub_100010A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Sync of view %@ completed with error %@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100010CB8(uint64_t a1)
{
  v15 = 0;
  v2 = [CKKSControl CKKSControlObject:0 error:&v15];
  v3 = v15;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010E1C;
    v10[3] = &unk_1004C1160;
    v11 = v9;
    v12 = 0;
    v14 = *(a1 + 40);
    v13 = v2;
    [v13 deleteSEView:v11 reply:v10];

    v7 = v11;
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    (*(v6 + 16))(v6, v8);
  }
}

void sub_100010E1C(void *a1, void *a2)
{
  v3 = a2;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Deletion of SE view %@ completed with error %@", &v7, 0x16u);
  }

  (*(a1[7] + 16))();
}

void sub_100010F90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = SESDefaultLogObject();
  v2 = SESCreateAndLogError();
  (*(v1 + 16))(v1, v2);
}

void sub_100011770(uint64_t a1)
{
  v2 = [*(a1 + 32) addItem:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v2)
  {
    v6 = SESDefaultLogObject();
    v4 = SESCreateAndLogError();
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = *(v3 + 16);

    v5(v3, 0);
  }
}

void sub_100011918(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = 0;
  v7 = 0;
  [v2 copyItemData:v3 outData:&v7 updateToApplePayView:*(a1 + 56) error:&v6];
  v4 = v7;
  v5 = v6;
  (*(*(a1 + 48) + 16))();
}

void sub_100011A60(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  v7 = 0;
  [v2 copyMultipleItemData:v3 outDatas:&v7 error:&v6];
  v4 = v7;
  v5 = v6;
  (*(a1[6] + 16))();
}

void sub_100011BA4(uint64_t a1)
{
  v2 = [*(a1 + 32) deleteItem:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v2)
  {
    v6 = SESDefaultLogObject();
    v4 = SESCreateAndLogError();
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = *(v3 + 16);

    v5(v3, 0);
  }
}

void sub_100011D44(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [v2 updateToApplePayView:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

void sub_100012250(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012328;
  block[3] = &unk_1004C1258;
  v10 = a3;
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100012328(void *a1)
{
  if (a1[4])
  {
    v2 = SESDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = a1[4];
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Could not get watch snapshot: %@", &v8, 0xCu);
    }

    return (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[5];
    v5 = a1[6];
    v7 = *(a1[6] + 16);

    return v7();
  }
}

void sub_100012548(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012620;
  block[3] = &unk_1004C1258;
  v10 = a3;
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100012620(void *a1)
{
  if (a1[4])
  {
    v2 = SESDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = a1[4];
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Could not reclaim unused SE memory: %@", &v8, 0xCu);
    }

    return (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[5];
    v5 = a1[6];
    v7 = *(a1[6] + 16);

    return v7();
  }
}

void sub_10001276C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10050CBF8;
  qword_10050CBF8 = v1;
}

void sub_100012BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012BE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012C00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012D08;
  v14[3] = &unk_1004C12C8;
  v15 = v9;
  v16 = v7;
  v17 = v8;
  v18 = *(a1 + 48);
  v11 = v8;
  v12 = v7;
  v13 = v9;
  [v10 invoke:v14];
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100012D08(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = sub_100012D98(SEABAAResponse, v2, v3);
        v5 = *(*(a1 + 64) + 8);
        v6 = *(v5 + 40);
        *(v5 + 40) = v4;
      }
    }
  }
}

id *sub_100012D98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_self();
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 8), a2);
    objc_storeStrong(v8 + 2, a3);
  }

  return v8;
}

void sub_100012E30(uint64_t a1)
{
  v5 = SESDefaultLogObject();
  v2 = SESCreateAndLogError();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100012F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  result = a14;
  v15 = *(a14 + 16);
  return result;
}

uint64_t sub_100013424(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESSession endSession", v4, 2u);
  }

  [*(a1 + 32) endSessionInternal:0];
  return (*(*(a1 + 40) + 16))();
}

id sub_100013548(id a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100013684;
    v16 = sub_100013694;
    v17 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001369C;
    v8[3] = &unk_1004C1390;
    v10 = &v12;
    v8[4] = a1;
    v9 = v5;
    v11 = a2;
    [a1 sync:v8];
    a1 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  return a1;
}

void sub_10001366C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001369C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [@"A000000151435253" hexStringAsData];
  v4 = sub_1003AF1FC(v2, v3);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = *(a1 + 32);
    v8 = [@"80F00100024F00" hexStringAsData];
    v9 = *(*(a1 + 48) + 8);
    obj = *(v9 + 40);
    v10 = sub_1003AEB5C(v7, v8, &obj);
    objc_storeStrong((v9 + 40), obj);

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v11 = *(a1 + 40);
      v12 = [NSString stringWithUTF8String:*(a1 + 56)];
      if (v11)
      {
        [SLAMObjC PerformScriptWithName:v12 sefwPath:*(a1 + 40) seHandle:*(a1 + 32) logSink:*(a1 + 32)];
      }

      else
      {
        [SLAMObjC PerformScriptWithName:v12 seHandle:*(a1 + 32) logSink:*(a1 + 32)];
      }
      v13 = ;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v13);

      sub_1003AF2D8(*(a1 + 32));
    }
  }
}

id sub_100013800(void *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v8 = a4;
  if (!a1)
  {
    goto LABEL_4;
  }

  *a3 = 0;
  if ((sub_1003AAACC(a1, v7) & 1) == 0)
  {
    sub_1003ABF0C(buf);
    v9 = *buf;
    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_6;
  }

  v59 = [NSMutableArray arrayWithCapacity:3];
  v11 = objc_opt_new();
  v12 = v11;
  if (v11)
  {
    *(v11 + 8) = 1;
    sub_1003AAB7C(v11, @"A000000704D011500000000001000000");
    v12[3] = "SLAMLoadCopernicus_2_4_0";
    v12[4] = "SLAMLoadCopernicus_2_4_0";
  }

  else
  {
    sub_1003ABDA0(0);
  }

  v13 = v59;
  v58 = v12;
  [v59 addObject:v12];
  if ((a2 & 8) != 0)
  {
    v14 = objc_opt_new();
    v15 = v14;
    if (v14)
    {
      *(v14 + 8) = 0;
      sub_1003AAB7C(v14, @"A000000809434343444B417631");
      v15[3] = "SLAMInstallCopernicus_CCC_2_4_0";
      v15[4] = "SLAMInstallCopernicus_CCC_2_4_0";
    }

    else
    {
      sub_1003ABDAC(0);
      v13 = v59;
    }

    [v13 addObject:v15];
  }

  if ((a2 & 2) != 0)
  {
    v16 = objc_opt_new();
    v17 = v16;
    if (v16)
    {
      *(v16 + 8) = 0;
      sub_1003AAB7C(v16, @"A00000085801010100000001");
      v17[3] = "SLAMInstallCopernicus_Home_2_4_0";
      v17[4] = "SLAMInstallCopernicus_Home_2_4_0";
    }

    else
    {
      sub_1003ABDB8(0);
      v13 = v59;
    }

    [v13 addObject:v17];
  }

  if ((a2 & 4) != 0)
  {
    v18 = objc_opt_new();
    v19 = v18;
    if (v18)
    {
      *(v18 + 8) = 0;
      sub_1003AAB7C(v18, @"A00000085802010100000001");
      v19[3] = "SLAMInstallCopernicus_Hydra_2_4_0";
      v19[4] = "SLAMInstallCopernicus_Hydra_2_4_0";
    }

    else
    {
      sub_1003ABDC4(0);
      v13 = v59;
    }

    [v13 addObject:v19];
  }

  if ((a2 & 0x10) != 0)
  {
    v20 = objc_opt_new();
    v21 = v20;
    if (v20)
    {
      *(v20 + 8) = 0;
      sub_1003AAB7C(v20, @"A000000909ACCE5501");
      v21[3] = "SLAMInstallCopernicus_Lyon_2_4_0";
      v21[4] = "SLAMInstallCopernicus_Lyon_2_4_0";
    }

    else
    {
      sub_1003ABDD0(0);
      v13 = v59;
    }

    [v13 addObject:v21];
  }

  if (a2)
  {
    v22 = objc_opt_new();
    v23 = v22;
    if (v22)
    {
      *(v22 + 8) = 0;
      sub_1003AAB7C(v22, @"A000000704E000000000");
      v23[3] = "SLAMLoadAndInstallSunsprite_2_1_7";
      v23[4] = "SLAMLoadAndInstallSunsprite_2_1_7";
    }

    else
    {
      sub_1003ABDDC(0);
      v13 = v59;
    }

    [v13 addObject:v23];
  }

  if (!sub_1003AAB8C(a1))
  {
    v9 = 0;
LABEL_42:
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v13;
    v28 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v28)
    {
      v29 = *v67;
      do
      {
        v30 = 0;
        do
        {
          if (*v67 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v66 + 1) + 8 * v30);
          if (v31)
          {
            v32 = *(v31 + 8);
            if (v32 == 1)
            {
              v62 = 0;
              v63 = &v62;
              v64 = 0x2020000000;
              v65 = 0;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v74 = sub_100013684;
              v75 = sub_100013694;
              v39 = *(v31 + 16);
              v76 = [v39 hexStringAsData];

              v61[0] = _NSConcreteStackBlock;
              v61[1] = 3221225472;
              v61[2] = sub_1003AAD44;
              v61[3] = &unk_1004C13B8;
              v61[4] = buf;
              v61[5] = &v62;
              v40 = sub_1003AADBC(a1, v61);

              if (v40)
              {
                v57 = SESDefaultLogObject();
                v9 = SESCreateAndLogError();

                _Block_object_dispose(buf, 8);
                _Block_object_dispose(&v62, 8);

                goto LABEL_94;
              }

              if ((v63[3] & 1) == 0)
              {
                _Block_object_dispose(buf, 8);

                _Block_object_dispose(&v62, 8);
                v9 = 0;
                goto LABEL_66;
              }

              v41 = SESDefaultLogObject();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = *(v31 + 16);
                *v71 = 138412290;
                v72 = v42;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Module %@ already present", v71, 0xCu);
              }

              _Block_object_dispose(buf, 8);
              _Block_object_dispose(&v62, 8);
              goto LABEL_79;
            }

            if (v32)
            {
              v43 = SESDefaultLogObject();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
              {
                v44 = *(v31 + 8);
                v45 = *(v31 + 16);
                *buf = 134218242;
                *&buf[4] = v44;
                *&buf[12] = 2112;
                *&buf[14] = v45;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "SLAMInfo unsupported type %lu for %@", buf, 0x16u);
              }

LABEL_66:
              v46 = sub_1003AF3C4(a1, v36);
              v47 = [v46 isProd];
              if (v31)
              {
                v48 = 24;
                if (v47)
                {
                  v48 = 32;
                }

                v49 = *(v31 + v48);
              }

              else
              {
                v49 = 0;
              }

              v50 = SESDefaultLogObject();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
              {
                if (v31)
                {
                  v51 = *(v31 + 16);
                }

                else
                {
                  v51 = 0;
                }

                *buf = 138412546;
                *&buf[4] = v51;
                *&buf[12] = 2080;
                *&buf[14] = v49;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Installing %@ using script %s", buf, 0x16u);
              }

              *a3 = 1;
              v52 = sub_1003AAA98(a1, v49);

              if (v52)
              {

                v9 = v52;
                goto LABEL_94;
              }

              if (!v31)
              {
                v53 = 0;
                goto LABEL_78;
              }

              if (!*(v31 + 8))
              {
                v53 = *(v31 + 16);
LABEL_78:
                v54 = [v53 hexStringAsData];
                v55 = sub_1003AF34C(a1, v54);

                if (!v55)
                {
                  sub_1003ABDE8(v31 == 0, v31, buf);
                  v9 = *buf;
                  goto LABEL_92;
                }
              }

LABEL_79:
              v9 = 0;
              goto LABEL_80;
            }

            v33 = *(v31 + 16);
          }

          else
          {
            v33 = 0;
          }

          v34 = [v33 hexStringAsData];
          v35 = sub_1003AF34C(a1, v34);

          if (!v35)
          {
            goto LABEL_66;
          }

          v37 = SESDefaultLogObject();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            if (v31)
            {
              v38 = *(v31 + 16);
            }

            else
            {
              v38 = 0;
            }

            *buf = 138412290;
            *&buf[4] = v38;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Applet %@ already present", buf, 0xCu);
          }

LABEL_80:
          v30 = v30 + 1;
        }

        while (v28 != v30);
        v56 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
        v28 = v56;
      }

      while (v56);
    }

LABEL_92:

    if (!v9)
    {
      v9 = sub_1003AB220(a1, v8);
    }

    goto LABEL_94;
  }

  v24 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  if (SESInternalVariant() && ([v24 BOOLForKey:@"debug.skip.applet.downgrade.check"] & 1) != 0)
  {
    v9 = 0;
LABEL_41:

    v13 = v59;
    goto LABEL_42;
  }

  v25 = SESDefaultLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "PTA is newer than iOS -- deleting applets", buf, 2u);
  }

  v26 = sub_1003AAA98(a1, "SLAMDeleteCopernicusAndSunsprite");
  if (!v26)
  {
    v27 = [@"A000000809434343444B417631" hexStringAsData];
    v70 = 0;
    sub_100044F68(a1, v27, 1, &v70);
    v9 = v70;

    goto LABEL_41;
  }

  sub_1003ABE98(v24, v26, buf);
  v9 = *buf;
LABEL_94:

LABEL_6:

  return v9;
}

void sub_100014108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

id sub_100014144(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    [@"A000000704D011500000000001000000" hexStringAsData];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100013684;
    v16 = sub_100013694;
    v17 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003ABD28;
    v4 = v9[3] = &unk_1004C13E0;
    v10 = v4;
    v11 = &v12;
    v5 = sub_1003AADBC(v2, v9);
    v6 = v5;
    if (v5)
    {
      if (a2)
      {
        v7 = v5;
        v2 = 0;
        *a2 = v6;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = v13[5];
    }

    _Block_object_dispose(&v12, 8);
  }

  return v2;
}

void sub_100014298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014404(void *a1)
{
  sub_1003ABB00(v1, a1);
}

id sub_100014434(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 8, 1);
}

void sub_100014450(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 8) = a2;
  *(v2 + 40) = a1;
  *(v2 + 48) = a1;
}

void sub_10001445C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0xCu);
}

id sub_10001447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return [v27 countByEnumeratingWithState:&a27 objects:v28 - 224 count:16];
}

id sub_10001449C()
{

  return [v1 addObject:v0];
}

id sub_1000144B4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v6 length] == 4 && objc_msgSend(v7, "length") && objc_msgSend(v7, "length") < 0xF1)
  {
    v11 = [@"A000000704E000000000" hexStringAsData];
    v12 = sub_1003AF1FC(v5, v11);

    if (v12)
    {
      v13 = v12;
      v9 = v13;
    }

    else
    {
      [v6 DERItem];
      [v7 DERItem];
      v14 = encodeSequenceSpec();
      if (v14)
      {
        v15 = sub_1003AEF50();
        v13 = 0;
        v9 = v13;
      }

      else
      {
        v16 = SESDefaultLogObject();
        v17 = [v6 asHexString];
        v18 = [v7 asHexString];
        v9 = SESCreateAndLogError();

        v13 = 0;
      }
    }
  }

  else
  {
    v8 = SESDefaultLogObject();
    [v6 length];
    [v7 length];
    v9 = SESCreateAndLogError();
  }

  return v9;
}

id sub_1000146EC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 length] == 4)
  {
    v7 = [@"A000000704E000000000" hexStringAsData];
    v8 = sub_1003AF1FC(v5, v7);

    if (v8)
    {
      if (a3)
      {
        v9 = v8;
        v10 = 0;
        *a3 = v8;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_17;
    }

    [v6 DERItem];
    v12 = encodeSequenceSpec();
    if (v12)
    {
      v13 = sub_1003AEF50();
      v14 = 0;
      v8 = v14;
      if (a3)
      {
        v15 = v14;
        *a3 = v8;
      }

      v10 = sub_1003B0934(v13);
    }

    else
    {
      if (!a3)
      {
        v8 = 0;
        v10 = 0;
        goto LABEL_16;
      }

      v13 = SESDefaultLogObject();
      v17 = [v6 asHexString];
      *a3 = SESCreateAndLogError();

      v8 = 0;
      v10 = 0;
    }

LABEL_16:
LABEL_17:

    goto LABEL_18;
  }

  if (a3)
  {
    v11 = SESDefaultLogObject();
    [v6 length];
    *a3 = SESCreateAndLogError();
  }

  v10 = 0;
LABEL_18:

  return v10;
}

id sub_100014918(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ((a2 & 1) == 0 && ([SESBootUUID isFirstLaunchAfterBootForKey:@"sunsprite.sepdata.last.check.uuid"]& 1) == 0)
  {
    v28 = SESDefaultLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Sunsprite provisioning already checked for this boot", buf, 2u);
    }

    goto LABEL_26;
  }

  v7 = [@"A000000704E000000000" hexStringAsData];
  v8 = sub_1003AF34C(v5, v7);

  if (!v8)
  {
    v27 = SESDefaultLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Sunsprite not present; skipping provisioning", buf, 2u);
    }

    [SESBootUUID setFirstLaunchAfterBootDoneForKey:@"sunsprite.sepdata.last.check.uuid"];
LABEL_26:
    v29 = 0;
    goto LABEL_85;
  }

  v9 = [v6 getType];
  if (!v9)
  {
    v30 = SESDefaultLogObject();
    v29 = SESCreateAndLogError();

    goto LABEL_85;
  }

  v10 = v9;
  v90 = 0;
  v11 = sub_1000153E4(@"rcrt", &v90);
  v12 = v90;
  v13 = v12;
  if (v11 && !v12)
  {
    if (v10 != 1)
    {
      v80 = 0;
      v14 = 0;
LABEL_9:
      v79 = v14;
      v15 = +[MSUDataAccessor sharedDataAccessor];
      *md = 0;
      v16 = [v15 copyPathForPersonalizedData:0 error:md];
      v17 = *md;

      if (v17 || !v16)
      {
        v18 = SESDefaultLogObject();
        v25 = SESCreateAndLogError();
        v34 = v25;
        v35 = 0;
LABEL_44:

        v44 = v25;
        v13 = v44;
        if (!v35 || v44)
        {
          v52 = SESDefaultLogObject();
          v29 = SESCreateAndLogError();
          v14 = v79;
          v32 = v80;
        }

        else
        {
          v46 = sub_1003AF3C4(v5, v45);
          v47 = [v46 seid];
          v48 = v11;
          v49 = v47;
          *buf = 0;
          v77 = v48;
          v78 = v35;
          v14 = v79;
          v32 = v80;
          v50 = SSEGetRosePairingInfo(v47, v48, v79, v80, v35, buf);
          v51 = 0;
          v52 = *buf;
          if (!*buf)
          {
            v53 = v50;
            v54 = SESDefaultLogObject();
            v73 = v53;
            v51 = SESCreateAndLogError();
            v55 = v51;

            v32 = v80;
          }

          v13 = v51;

          if (!v52 || v13)
          {
            v63 = SESDefaultLogObject();
            v29 = SESCreateAndLogError();
          }

          else
          {
            memset(buf, 0, 32);
            v86 = 0;
            v87 = 0;
            v86 = [v52 DERItem];
            v87 = v56;
            if (!DERParseSequenceSpec() && *&buf[8])
            {
              *md = 0u;
              v94 = 0u;
              CC_SHA256(*buf, *&buf[8], md);
              v85 = 0;
              v57 = sub_1000154E0(v5, &v85);
              v58 = v85;
              v59 = v58;
              if (!v57 || v58)
              {
                v60 = v52;
                v61 = SESDefaultLogObject();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  *v91 = 138412290;
                  v92 = v59;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Couldn't get config hash, proceeding anyway: %@", v91, 0xCu);
                }

                v52 = v60;
              }

              v11 = v77;
              if ([v57 ses_isEqualToBytes:md length:{32, v73, v74}])
              {
                v62 = SESDefaultLogObject();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                {
                  *v91 = 0;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Sunsprite provisioning data is up-to-date", v91, 2u);
                }

                [SESBootUUID setFirstLaunchAfterBootDoneForKey:@"sunsprite.sepdata.last.check.uuid"];
                v13 = 0;
                v29 = 0;
              }

              else
              {
                v84 = 0;
                v65 = sub_1000155E8(v77, &v84);
                v66 = v84;
                v13 = v66;
                if (v65)
                {
                  v83 = v66;
                  v76 = v65;
                  v81 = sub_1000157E0(v65, &v83);
                  v67 = v83;

                  if (v67)
                  {
                    v13 = v67;
                  }

                  else
                  {
                    v75 = v52;
                    v68 = SESDefaultLogObject();
                    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                    {
                      *v91 = 138412290;
                      v92 = v81;
                      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Using rcrt intermediate %@", v91, 0xCu);
                    }

                    v82 = 0;
                    v69 = sub_1000158C4(v81, &v82);
                    v70 = v82;
                    if (!v70)
                    {
                      v70 = sub_1000159C4(v5, v76, v69, v75);
                      if (!v70)
                      {
                        [SESBootUUID setFirstLaunchAfterBootDoneForKey:@"sunsprite.sepdata.last.check.uuid"];
                      }

                      v71 = SESDefaultLogObject();
                      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                      {
                        *v91 = 138412290;
                        v92 = v70;
                        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Sunsprite provisioned with error %@", v91, 0xCu);
                      }
                    }

                    v13 = v70;

                    v52 = v75;
                  }

                  v29 = v13;
                  v65 = v76;
                }

                else
                {
                  v29 = 0;
                }
              }

              v35 = v78;
              goto LABEL_82;
            }

            v64 = SESDefaultLogObject();
            v29 = SESCreateAndLogError();

            v13 = 0;
          }

          v11 = v77;
          v35 = v78;
        }

LABEL_82:

        goto LABEL_83;
      }

      v18 = [v16 stringByAppendingString:@"/Rose/ftab.bin"];
      v19 = SESDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Resolved rose firmware path %@\n", buf, 0xCu);
      }

      v86 = 0;
      v20 = [NSData dataWithContentsOfFile:v18 options:1 error:&v86];
      v21 = v86;
      if (v21 || [v20 length] <= 0x17)
      {
        v22 = SESDefaultLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v18;
          *&buf[12] = 2112;
          *&buf[14] = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Couldn't find FTAB at default path %@ : %@", buf, 0x16u);
        }

        *buf = 0;
        v23 = [NSData dataWithContentsOfFile:@"/var/db/nearbyd/ftab.bin" options:1 error:buf];
        v17 = *buf;

        if (v17 || [v23 length] <= 0x17)
        {
          v24 = SESDefaultLogObject();
          v73 = v18;
          v74 = @"/var/db/nearbyd/ftab.bin";
          v25 = SESCreateAndLogError();
          v26 = v25;

          goto LABEL_42;
        }

        v20 = v23;
      }

      else
      {
        v23 = v20;
      }

      v37 = [v20 bytes];
      v38 = v37[4];
      v39 = v37[5];
      if (!__CFADD__(v38, v39))
      {
        v40 = v37;
        if ([v23 length] >= (v38 + v39))
        {
          v43 = [v23 subdataWithRange:{v40[4], v40[5]}];
          v25 = 0;
          v17 = 0;
          goto LABEL_43;
        }
      }

      v41 = SESDefaultLogObject();
      v25 = SESCreateAndLogError();
      v42 = v25;

      v17 = 0;
LABEL_42:
      v43 = 0;
LABEL_43:

      v35 = v43;
      goto LABEL_44;
    }

    v89 = 0;
    v14 = sub_1000153E4(@"rMCl", &v89);
    v31 = v89;
    v13 = v31;
    if (!v14 || v31)
    {
      v32 = SESDefaultLogObject();
      v29 = SESCreateAndLogError();
    }

    else
    {
      v88 = 0;
      v32 = sub_1000153E4(@"rSCl", &v88);
      v33 = v88;
      v13 = v33;
      if (v32 && !v33)
      {
        v80 = v32;
        goto LABEL_9;
      }

      v36 = SESDefaultLogObject();
      v29 = SESCreateAndLogError();
    }

LABEL_83:

    goto LABEL_84;
  }

  v14 = SESDefaultLogObject();
  v29 = SESCreateAndLogError();
LABEL_84:

LABEL_85:

  return v29;
}

id sub_1000153E4(uint64_t a1, void *a2)
{
  v7[0] = @"VerifyData";
  v7[1] = @"StripImg4";
  v8[0] = &__kCFBooleanFalse;
  v8[1] = &__kCFBooleanFalse;
  v7[2] = @"GetCombined";
  v8[2] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  v4 = AMFDRSealingMapCopyLocalDataForClass();
  v5 = 0;
  if (a2)
  {
    v5 = 0;
    *a2 = v5;
  }

  return v4;
}

id sub_1000154E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [@"A000000704E000000000" hexStringAsData];
  v5 = sub_1003AF1FC(v3, v4);

  if (v5)
  {
    if (a2)
    {
      v6 = v5;
      v7 = 0;
      *a2 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = -352269696;
    v8 = [NSData dataWithBytesNoCopy:&v11 length:5 freeWhenDone:0];
    v9 = sub_1003AEB5C(v3, v8, a2);
    v7 = sub_1003B0934(v9);
  }

  return v7;
}

id sub_1000155E8(void *a1, void *a2)
{
  v3 = a1;
  [v3 bytes];
  [v3 length];

  AMFDRDecodeCombined();
  if (a2)
  {
    v4 = SESDefaultLogObject();
    *a2 = SESCreateAndLogError();
  }

  return 0;
}

void *sub_1000157E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = SecCertificateCreateWithData(0, v3);
  if (v4)
  {
    a2 = SecCertificateCopyIssuerSummary();
  }

  else if (a2)
  {
    v5 = SESDefaultLogObject();
    v7 = [(__CFData *)v3 base64];
    *a2 = SESCreateAndLogError();

    a2 = 0;
  }

  return a2;
}

void *sub_1000158C4(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"SEP-CA-E1"])
  {
    v4 = &unk_1004077A0;
    v5 = 534;
LABEL_5:
    a2 = [NSData dataWithBytesNoCopy:v4 length:v5 freeWhenDone:0];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"SEP-CA-E2"])
  {
    v4 = &unk_1004079B6;
    v5 = 571;
    goto LABEL_5;
  }

  if (a2)
  {
    v7 = SESDefaultLogObject();
    *a2 = SESCreateAndLogError();

    a2 = 0;
  }

LABEL_6:

  return a2;
}

id sub_1000159C4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  [a3 DERItem];
  [v8 DERItem];
  [v9 DERItem];
  v10 = encodeSequenceContentSpec();
  v11 = v10;
  if (!v10)
  {
    v18 = SESDefaultLogObject();
    v20 = SESCreateAndLogError();
    goto LABEL_11;
  }

  if (![v10 length])
  {
LABEL_9:
    v19 = sub_1003AEF50();
    v20 = 0;
    v18 = v20;
LABEL_11:
    v21 = v20;
    goto LABEL_12;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = [v11 length];
    v15 = &v14[-v12] >= 0xFA ? 250 : &v14[-v12];
    v16 = [v11 subdataWithRange:{v12, v15}];
    v17 = sub_1003AEF50();
    v18 = 0;

    if (v18)
    {
      break;
    }

    v13 += v15;
    v12 = v13;
    if ([v11 length] == v13)
    {
      goto LABEL_9;
    }
  }

  v23 = SESDefaultLogObject();
  v21 = SESCreateAndLogError();

LABEL_12:

  return v21;
}

uint64_t sub_100015BF4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [@"A000000704E000000000" hexStringAsData];
  v5 = sub_1003AF1FC(v3, v4);

  if (v5)
  {
    if (a2)
    {
      v6 = v5;
      v7 = 0;
      *a2 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = sub_1003AEF50();
    v5 = 0;
    v9 = sub_1003B0934(v8);
    v10 = [v9 length];

    if (v10 > 1)
    {
      v13 = sub_1003B0934(v8);
      v14 = [v13 u16BE:0];

      if (v14 <= 0x1FF)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      if (a2)
      {
        v11 = SESDefaultLogObject();
        v12 = sub_1003B0934(v8);
        v16 = [v12 asHexString];
        *a2 = SESCreateAndLogError();
      }

      v7 = 0;
    }
  }

  return v7;
}

_DWORD *sub_100015DA0(uint64_t a1, uint64_t a2)
{
  v2 = [NSPropertyListSerialization dataWithPropertyList:a2 format:200 options:0 error:0];
  v3 = malloc_type_calloc(1uLL, [v2 length] + 200, 0x1000040BEF03554uLL);
  *v3 = 1;
  v3[1] = [v2 length];
  __strlcpy_chk();
  memcpy(v3 + 50, [v2 bytes], objc_msgSend(v2, "length"));

  return v3;
}

id *sub_100015E70(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = sub_100015EEC([SESEndpointDatabase alloc], v5, v4);

  return v6;
}

id *sub_100015EEC(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = SESEndpointDatabase;
    v8 = objc_msgSendSuper2(&v16, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 4, a3);
      *(a1 + 25) = 0;
      objc_storeStrong(a1 + 1, a2);
      v10 = +[NSDistributedNotificationCenter defaultCenter];
      [v10 addObserver:a1 selector:"handleMFDNotification:" name:@"com.apple.stockholm.se.mfd" object:0];

      v11 = SESDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "SESDatabase registered to receive MFD notifications", buf, 2u);
      }

      objc_initWeak(buf, a1);
      v12 = a1[4];
      objc_copyWeak(&v14, buf);
      os_state_add_handler();
      v13 = SESDefaultLogObject();
      sub_1003ACF74(v13, &v14, buf);
    }
  }

  return a1;
}

void sub_100016088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000160A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  v3 = WeakRetained[2];
  if (!v3)
  {
    v5 = sub_1003ABF80(WeakRetained);

    if (!v5)
    {
      v3 = v2[2];
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

LABEL_3:
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000161B8;
  v7[3] = &unk_1004C14E8;
  v9 = &v10;
  v8 = v2;
  [v3 performBlockAndWait:v7];
  v4 = v11[3];

  _Block_object_dispose(&v10, 8);
LABEL_6:

  return v4;
}

void sub_1000161A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000161B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100035DF4(SESDatabaseReadHandle, v2);
  *(*(*(a1 + 40) + 8) + 24) = sub_1003AC44C(v2, v3);
}

void sub_100016228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000162CC;
    v5[3] = &unk_1004C08D8;
    v6 = WeakRetained;
    v4 = v3;
    [v4 performBlockAndWait:v5];
  }
}

uint64_t sub_100016394(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000163AC(uint64_t a1, void *a2)
{
  v13 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = SESDefaultLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 identifier];
          *buf = 138412290;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Deleting CA %@", buf, 0xCu);
        }

        [*(*(a1 + 32) + 16) deleteObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = sub_1003AD108(v13);
  if (v11)
  {
    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to commit changes %@", buf, 0xCu);
    }

    sub_1003AD19C(v13);
  }
}

void sub_100016694(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = sub_100035DF4(SESDatabaseReadHandle, *(a1 + 32));
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100016700(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = sub_100035DF4(SESDatabaseReadHandle, *(a1 + 32));
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100016834(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10050CC08;
  qword_10050CC08 = v1;
}

void sub_100016B58(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  os_unfair_lock_lock(v5 + 2);
  if (([*(a1 + 32) done] & 1) == 0)
  {
    if (!v4)
    {
      v6 = SESDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve proximity chip information; defaulting to production", buf, 2u);
      }

      [SESTapToRadar requestTapToRadar:@"Failure retrieving proximity chip information" client:@"FailedProximityChipQuery"];
    }

    objc_storeStrong((*(a1 + 32) + 16), a2);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100016CB4;
  v9[3] = &unk_1004C1138;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9[4] = *(a1 + 32);
  v10 = v8;
  dispatch_async(v7, v9);

  os_unfair_lock_unlock(v5 + 2);
}

id sub_100016E08(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = +[Invitation fetchRequest];
  v10 = 0;
  v6 = sub_1003AD310(v4, v5, &v10);

  v7 = v10;
  if (a3)
  {
    v8 = v7;
    *a3 = v7;
  }

  return v6;
}

id sub_100016EB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v9 = sub_100016E08(v8, v7, a4);

  if (*a4)
  {
    v10 = 0;
  }

  else
  {
    v13 = v6;
    v11 = Filter();

    v10 = Transform();

    v9 = v11;
  }

  return v10;
}

id sub_100016FDC(uint64_t a1, void *a2)
{
  v3 = [a2 clientName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100017028(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_self();
  v12 = sub_100016E08(v11, v10, a5);

  if (*a5)
  {
    v13 = 0;
  }

  else
  {
    v17 = v9;
    v18 = v8;
    v14 = Find();
    v15 = v14;
    if (v14)
    {
      v13 = [v14 data];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

id sub_10001716C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientName];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1000171E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_self();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000174AC;
  v36 = sub_1000174BC;
  v37 = 0;
  v31 = 0;
  v13 = sub_100016E08(v12, v11, &v31);
  objc_storeStrong(&v37, v31);
  v14 = v33[5];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1000174AC;
    v29[4] = sub_1000174BC;
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000174C4;
    v26 = &unk_1004C1638;
    v27 = v10;
    v28 = v8;
    v30 = Find();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100017540;
    v17[3] = &unk_1004C1660;
    v21 = v29;
    v18 = v28;
    v19 = v9;
    v20 = v27;
    v22 = &v32;
    sub_1003AD2A8(v11, v17);
    v15 = v33[5];

    _Block_object_dispose(v29, 8);
  }

  _Block_object_dispose(&v32, 8);

  return v15;
}

void sub_10001747C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000174AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000174C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientName];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100017540(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[7] + 8) + 40);
  if (v4)
  {
    [v4 setData:a1[5]];
  }

  else
  {
    v5 = sub_1003AD0FC(v3);
    v6 = [NSEntityDescription insertNewObjectForEntityForName:@"Invitation" inManagedObjectContext:v5];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1[7] + 8) + 40) setIdentifier:a1[4]];
    [*(*(a1[7] + 8) + 40) setData:a1[5]];
    [*(*(a1[7] + 8) + 40) setClientName:a1[6]];
    v9 = *(*(a1[7] + 8) + 40);
    v10 = *(a1[8] + 8);
    obj = *(v10 + 40);
    LOBYTE(v5) = [v9 validateForInsert:&obj];
    objc_storeStrong((v10 + 40), obj);
    if ((v5 & 1) == 0)
    {
      sub_1003AD19C(v3);
      goto LABEL_5;
    }
  }

  v11 = sub_1003AD108(v3);
  v12 = *(a1[8] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

LABEL_5:
}

id sub_100017678(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000174AC;
  v30 = sub_1000174BC;
  v31 = 0;
  obj = 0;
  v10 = sub_100016E08(v9, v8, &obj);
  objc_storeStrong(&v31, obj);
  v11 = v27[5];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000178A0;
    v22 = &unk_1004C1638;
    v23 = v7;
    v24 = v6;
    v13 = Find();
    v14 = v13;
    if (v13)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001791C;
      v16[3] = &unk_1004C1688;
      v17 = v13;
      v18 = &v26;
      sub_1003AD2A8(v8, v16);
      v12 = v27[5];
    }

    else
    {
      v12 = 0;
    }
  }

  _Block_object_dispose(&v26, 8);

  return v12;
}

void sub_100017884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000178A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientName];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10001791C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003AD0FC(v3);
  [v4 deleteObject:*(a1 + 32)];

  v5 = sub_1003AD108(v3);

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100017B58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) messageQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017C48;
  v11[3] = &unk_1004C0968;
  v12 = v6;
  v8 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void sub_100017C48(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 40) database];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100017D48;
    v6[3] = &unk_1004C16B0;
    v5 = *(a1 + 48);
    v8 = *(a1 + 56);
    v7 = *(a1 + 48);
    sub_1003ACDB4(v4, v5, v6);
  }
}

uint64_t sub_100017D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    return (*(v4 + 16))(v4, 0, 0, a3);
  }

  else
  {
    return (*(v4 + 16))(v4, *(a1 + 32), a2);
  }
}

void sub_100017E98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017F60;
  v8[3] = &unk_1004C16D8;
  v9 = v3;
  v6 = *(a1 + 48);
  v10 = *(a1 + 56);
  v7 = v3;
  [v4 endPointServiceAvailableWithProxy:v5 reason:v6 reply:v8];
}

void sub_100017F60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v7 && v11 && !v8 && *(a1 + 32))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = SESEnsureError();
    (*(v9 + 16))(v9, 0, 0, 0, v10);
  }
}

void sub_100018200(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = sub_1003ABF80(v2);

  if (!v3)
  {
    v4 = +[_TtC10seserviced20SESBootScopedStorage shared];
    v5 = [v4 getNumberFor:@"database.reconciled.after.boot"];
    v6 = [v5 BOOLValue];

    v7 = *(a1 + 64) | v6 ^ 1;
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 32) database];
      v10 = sub_1003ACF50(v9);
      v11 = *(a1 + 40) != 0;
      *buf = 67109632;
      v25 = v10;
      v26 = 1024;
      v27 = v7 & 1;
      v28 = 1024;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Database reconciled %d required %d proxy %d", buf, 0x14u);
    }

    v12 = [*(a1 + 32) database];
    if (sub_1003ACF50(v12))
    {

LABEL_7:
      v13 = [*(a1 + 32) database];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000184A4;
      v22[3] = &unk_1004C1728;
      v14 = &v23;
      v23 = *(a1 + 56);
      sub_1003ACE94(v13, v22);

LABEL_12:
      goto LABEL_13;
    }

    if (v7)
    {
    }

    else
    {
      v15 = *(a1 + 40);

      if (!v15)
      {
        goto LABEL_7;
      }
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000184BC;
    v19[3] = &unk_1004C1750;
    v21 = v6;
    v14 = &v20;
    v18 = *(a1 + 48);
    v20 = *(a1 + 56);
    [v16 endPointServiceAvailableWithProxy:v17 reason:v18 reply:v19];
    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_13:
}

uint64_t sub_1000184A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    a2 = 0;
  }

  return (*(v3 + 16))(v3, a2);
}

void sub_1000184BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  if (!v6 && (*(a1 + 40) & 1) == 0)
  {
    v7 = +[_TtC10seserviced20SESBootScopedStorage shared];
    [v7 setNumberFor:@"database.reconciled.after.boot" value:&off_1004DC900];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100018668(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018750;
  block[3] = &unk_1004C1258;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_100018750(void *a1)
{
  v1 = a1[6];
  if (a1[4])
  {
    v6 = SESDefaultLogObject();
    v2 = SESCreateAndLogError();
    (*(v1 + 16))(v1, 0, v2);
  }

  else
  {
    v3 = a1[5];
    v4 = *(v1 + 16);
    v5 = a1[6];

    v4(v5, v3, 0);
  }
}

void sub_1000189CC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    (*(a1[7] + 16))();
  }

  else
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = a1[6];
    v16 = 0;
    v17 = 0;
    v10 = [v11 _getEndPointAndValidateAccess:v8 identifier:v12 clientInfo:v13 outEndPointEntity:&v17 outEndPoint:&v16];
    v14 = v17;
    v15 = v16;
    (*(a1[7] + 16))();
  }
}

void sub_100018C44(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    (*(a1[7] + 16))();
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v13 = 0;
    v14 = 0;
    v7 = [v8 _getEndPointAndValidateAccess:v5 identifier:v9 clientInfo:v10 outEndPointEntity:&v14 outEndPoint:&v13];
    v11 = v14;
    v12 = v13;
    (*(a1[7] + 16))();
  }
}

uint64_t sub_100018F54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10003CCA4(SESEndpointDatabase, v3, 0);
  v5 = [v4 identifier];
  v6 = (a1 + 32);
  v7 = [v5 isEqualToString:*(a1 + 32)];

  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1003AD050((a1 + 32), a1);
  }

  v8 = [v4 identifier];
  v9 = [v8 isEqualToString:*v6];
  if ((v9 & 1) == 0)
  {
    v7 = [v4 publicKeyIdentifier];
    v6 = [NSData dataWithHexString:*v6];
    if ([v7 isEqualToData:v6])
    {
      v13 = *(a1 + 40);
      v10 = (a1 + 40);
      if ((sub_1003AD230(v13) & 1) == 0)
      {
LABEL_10:
        v14 = [v3 clientName];
        v16 = sub_1003AD1F4(*v10, v15);
        v12 = [v14 isEqualToString:v16];

        if (v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v11 = *(a1 + 40);
  v10 = (a1 + 40);
  if ((sub_1003AD230(v11) & 1) == 0)
  {
    goto LABEL_10;
  }

  v12 = 1;
LABEL_14:

  return v12;
}

void sub_1000192C4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v14 = v12;
    v15 = *(a1 + 56);
    v16 = SESDefaultLogObject();
    [v14 code];
    v17 = SESCreateAndLogError();
    (*(v15 + 16))(v15, v17);
LABEL_7:

    goto LABEL_8;
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = sub_1003AD1F4(*(a1 + 48), v13);
  v22 = 0;
  LODWORD(v19) = [v18 _preWarmAlishaInternal:v9 handle:v10 proximityChipInfo:v11 manufactuer:v19 clientName:v20 error:&v22];
  v14 = v22;

  v21 = *(a1 + 56);
  if (!v19 || v14)
  {
    v16 = SESDefaultLogObject();
    [v14 code];
    v17 = SESCreateAndLogError();
    (*(v21 + 16))(v21, v17);
    goto LABEL_7;
  }

  (*(v21 + 16))(v21, 0);
LABEL_8:
}

void sub_1000196D0(id a1)
{
  v1 = +[_TtC10seserviced3DSK shared];
  [v1 startWithModule:0];
}

void sub_100019D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019DE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100019E00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 80) + 8);
  obj = *(v7 + 40);
  v8 = sub_1003AD8C8(v3, v4, v5, v6, &obj);
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    goto LABEL_3;
  }

  v11 = *(a1 + 56);
  v12 = [*(*(*(a1 + 72) + 8) + 40) instance];
  v13 = [v12 identifier];
  v14 = [v13 hexStringAsData];
  v15 = *(a1 + 32);
  v16 = *(a1 + 64);
  v17 = *(*(a1 + 80) + 8);
  v50 = *(v17 + 40);
  v18 = sub_100045B50(v11, v14, v15, v16, &v50);
  objc_storeStrong((v17 + 40), v50);
  v19 = *(*(a1 + 88) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    goto LABEL_3;
  }

  if ((*(a1 + 96) - 3) > 1)
  {
    v25 = +[SEABAAManager sharedManager];
    v26 = [*(*(*(a1 + 88) + 8) + 40) secureElementAttestation];
    v28 = sub_1003AF3C4(*(a1 + 56), v27);
    v29 = [v28 casdCertificate];
    v30 = *(*(a1 + 80) + 8);
    v48 = *(v30 + 40);
    v31 = [v25 PerformSEABAAWithAttestation:v26 casdCertificate:v29 nonce:0 OIDs:0 validityInterval:0 error:&v48];
    objc_storeStrong((v30 + 40), v48);

    if (!*(*(*(a1 + 80) + 8) + 40))
    {
      v32 = *(a1 + 96);
      if (v32 == 5 || v32 == 2)
      {
        v33 = sub_1003AAA6C(v31);
        v52[0] = v33;
        v34 = sub_1003AAA78(v31);
        v52[1] = v34;
        v35 = [NSArray arrayWithObjects:v52 count:2];
        [*(*(*(a1 + 88) + 8) + 40) setCertificates:v35];
      }

      else
      {
        if (v32 != 1)
        {
          v42 = SESDefaultLogObject();
          v46 = *(a1 + 96);
          v43 = SESCreateAndLogError();
          v44 = *(*(a1 + 80) + 8);
          v45 = *(v44 + 40);
          *(v44 + 40) = v43;

          goto LABEL_17;
        }

        v33 = sub_1003AAA78(v31);
        v53 = v33;
        v34 = [NSArray arrayWithObjects:&v53 count:1];
        [*(*(*(a1 + 88) + 8) + 40) setCertificates:v34];
      }

      v36 = *(*(*(a1 + 88) + 8) + 40);
      v37 = *(*(a1 + 80) + 8);
      v47 = *(v37 + 40);
      v38 = [v36 encodeWithError:&v47];
      objc_storeStrong((v37 + 40), v47);
      [*(*(*(a1 + 72) + 8) + 40) setEndPointCAData:v38];

      if (!*(*(*(a1 + 80) + 8) + 40))
      {
        v39 = sub_1003AD108(v3);
        v40 = *(*(a1 + 80) + 8);
        v41 = *(v40 + 40);
        *(v40 + 40) = v39;

LABEL_18:
        goto LABEL_4;
      }
    }

LABEL_17:
    sub_1003AD19C(v3);
    goto LABEL_18;
  }

  [*(*(*(a1 + 88) + 8) + 40) setCertificates:&__NSArray0__struct];
  v21 = *(*(*(a1 + 88) + 8) + 40);
  v22 = *(*(a1 + 80) + 8);
  v49 = *(v22 + 40);
  v23 = [v21 encodeWithError:&v49];
  objc_storeStrong((v22 + 40), v49);
  [*(*(*(a1 + 72) + 8) + 40) setEndPointCAData:v23];

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v24 = sub_1003AD108(v3);
    goto LABEL_4;
  }

LABEL_3:
  sub_1003AD19C(v3);
LABEL_4:
}

void sub_10001A408(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v15 = 0;
    v7 = sub_10003C954(SESEndpointDatabase, a2, &v15);
    v6 = v15;
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = *(a1 + 32);
      v8 = Filter();
      v9 = TransformIf();
      v10 = SESDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v7 count];
        v12 = [v8 count];
        v13 = [v9 count];
        *buf = 67109632;
        v17 = v11;
        v18 = 1024;
        v19 = v12;
        v20 = 1024;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Got %d entities, %d filtered, %d transformed", buf, 0x14u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t sub_10001A618(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_1003AD230(*(a1 + 32)))
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 clientName];
    v7 = sub_1003AD1F4(*(a1 + 32), v6);
    v4 = [v5 isEqualToString:v7];
  }

  return v4;
}

void sub_10001A834(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [*(a1 + 32) _cleanupAppletsWithNoEndpoints:a2 handle:a3];
  }

  v9 = v8;
  (*(*(a1 + 40) + 16))();
}

void sub_10001B574(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    v14 = *(a1 + 32);
    if (!v14)
    {
      v15 = sub_1003AD1F4(*(a1 + 40), v13);
      v16 = [v15 length] < 0x1F;

      v14 = sub_1003AD1F4(*(a1 + 40), v17);
      if (!v16)
      {
        v19 = sub_1003AD1F4(*(a1 + 40), v18);
        v20 = [v19 length] - 30;

        v21 = [v14 substringFromIndex:v20];

        v14 = v21;
      }
    }

    v22 = SESDefaultLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = sub_1003AD1F4(*(a1 + 40), v23);
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Resolved authorityIdentifier %@ for client %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v124 = sub_100019DE8;
    v125 = sub_100019DF8;
    v126 = 0;
    v25 = *(a1 + 48);
    v27 = sub_1003AD1F4(*(a1 + 40), v26);
    v28 = *&buf[8];
    v119 = *(*&buf[8] + 40);
    v29 = [v25 _preWarmAlishaInternal:v9 handle:v10 proximityChipInfo:v11 manufactuer:v14 clientName:v27 error:&v119];
    objc_storeStrong((v28 + 40), v119);

    v30 = (*&buf[8] + 40);
    if (*(*&buf[8] + 40))
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }

    if ((v31 & 1) == 0)
    {
      v47 = *(a1 + 160);
      v32 = SESEnsureError();
      (*(v47 + 16))(v47, 0, v32);
LABEL_22:

      _Block_object_dispose(buf, 8);
      goto LABEL_23;
    }

    v118 = 0;
    v32 = sub_1000598B8(SESEndpointDatabase, @"A000000809434343444B417631", v10, &v118);
    objc_storeStrong(v30, v118);
    v33 = (*&buf[8] + 40);
    if (*(*&buf[8] + 40) || !v32)
    {
      v48 = *(a1 + 160);
      v84 = SESDefaultLogObject();
      v45 = SESCreateAndLogError();
      (*(v48 + 16))(v48, 0, v45);
      goto LABEL_21;
    }

    v34 = *(a1 + 48);
    v35 = *(a1 + 56);
    v36 = *(a1 + 64);
    v117 = 0;
    v37 = [v34 _existsDuplicateInDatabase:v32 withIdentifier:v35 orReaderIdentifier:v36 outError:&v117];
    objc_storeStrong(v33, v117);
    v39 = *(*&buf[8] + 40);
    if (v39 || v37)
    {
      v49 = *(a1 + 160);
      v45 = *(*&buf[8] + 40);
      if (!v39)
      {
        v84 = SESDefaultLogObject();
        v45 = SESCreateAndLogError();
      }

      (*(v49 + 16))(v49, 0, v45);
      if (v39)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v40 = *(a1 + 48);
    v41 = sub_1003AD1F4(*(a1 + 40), v38);
    v42 = *&buf[8];
    v116 = *(*&buf[8] + 40);
    v84 = [v40 _ensureCAExistsAndValid:v14 clientName:v41 secureElement:v9 handle:v10 forEndPointType:1 error:&v116];
    objc_storeStrong((v42 + 40), v116);

    v43 = (*&buf[8] + 40);
    if (*(*&buf[8] + 40))
    {
      v44 = *(a1 + 160);
      v45 = SESDefaultLogObject();
      v46 = SESCreateAndLogError();
      (*(v44 + 16))(v44, 0, v46);
LABEL_18:

LABEL_21:
      goto LABEL_22;
    }

    v115 = 0;
    v45 = sub_1000433C4(SESEndpointDatabase, v84, &v115);
    objc_storeStrong(v43, v115);
    if (!v45 || *(*&buf[8] + 40))
    {
      (*(*(a1 + 160) + 16))();
      goto LABEL_21;
    }

    v81 = objc_opt_new();
    v50 = [v45 certificates];
    v51 = [v50 count] == 1;

    if (v51)
    {
      v53 = *(a1 + 72);
      v75 = sub_1003AF3C4(v9, v52);
      v54 = [v75 isProd];
      v55 = *&buf[8];
      v114 = *(*&buf[8] + 40);
      v56 = [v81 getExternalCACertificateFor:v14 environment:v53 prodSE:v54 error:&v114];
      objc_storeStrong((v55 + 40), v114);

      if (*(*&buf[8] + 40))
      {
        v57 = *(a1 + 160);
        v72 = SESDefaultLogObject();
        v58 = *(a1 + 72);
        v76 = sub_1003AF3C4(v9, v59);
        [v76 isProd];
        v60 = SESCreateAndLogError();
        (*(v57 + 16))(v57, 0, v60);

LABEL_36:
        v46 = v81;
        goto LABEL_18;
      }

      v122[0] = v56;
      v77 = [v45 certificates];
      v73 = [v77 objectAtIndexedSubscript:0];
      v122[1] = v73;
      v61 = [NSArray arrayWithObjects:v122 count:2];
      [v45 setCertificates:v61];

      v78 = sub_1000434A0(SESEndpointDatabase, v84, v45, v10);
      if (v78)
      {
        v62 = *(a1 + 160);
        v74 = SESDefaultLogObject();
        v63 = SESCreateAndLogError();
        (*(v62 + 16))(v62, 0, v63);

        goto LABEL_36;
      }
    }

    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = sub_100019DE8;
    v112 = sub_100019DF8;
    v113 = 0;
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10001C13C;
    v85[3] = &unk_1004C1918;
    v86 = *(a1 + 56);
    v87 = v84;
    v88 = *(a1 + 40);
    v89 = v10;
    v106 = buf;
    v46 = v81;
    v90 = v46;
    v91 = v14;
    v92 = *(a1 + 72);
    v93 = *(a1 + 80);
    v107 = &v108;
    v82 = v9;
    v94 = v82;
    v45 = v45;
    v95 = v45;
    v96 = *(a1 + 88);
    v97 = *(a1 + 96);
    v98 = *(a1 + 64);
    v99 = *(a1 + 104);
    v100 = *(a1 + 112);
    v101 = *(a1 + 120);
    v102 = *(a1 + 128);
    v103 = *(a1 + 136);
    v104 = *(a1 + 144);
    v105 = *(a1 + 152);
    sub_1003AD2A8(v89, v85);
    v64 = v109;
    if (!*(*&buf[8] + 40))
    {
      goto LABEL_56;
    }

    if (v109[5])
    {
      v65 = SESDefaultLogObject();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *v120 = 0;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "Failure after creating EP on SE, cleaning it up", v120, 2u);
      }

      v79 = [@"A000000809434343444B417631" hexStringAsData];
      v66 = [v109[5] publicKeyIdentifier];
      v83 = sub_100045800(v82, v79, v66);

      if (v83)
      {
        v67 = SESDefaultLogObject();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *v120 = 138412290;
          v121 = v83;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Failed to clean up EP   : %@", v120, 0xCu);
        }
      }

      v80 = [v109[5] deleteEndPointLongTermPrivacyKey];

      if (v80)
      {
        v68 = SESDefaultLogObject();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *v120 = 138412290;
          v121 = v80;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to delete long term privacy key %@", v120, 0xCu);
        }
      }

      v69 = v109[5];
      v109[5] = 0;

      v64 = v109;
      if (!*(*&buf[8] + 40))
      {
LABEL_56:
        if (v64[5])
        {
          [_TtC10seserviced13EndpointStore insertWithEndpoint:?];
          v64 = v109;
          v70 = *(*&buf[8] + 40);
        }
      }
    }

    v71 = v64[5];
    (*(*(a1 + 160) + 16))();

    _Block_object_dispose(&v108, 8);
    goto LABEL_18;
  }

  (*(*(a1 + 160) + 16))();
LABEL_23:
}

void sub_10001C0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10001C13C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v5 instance];
  v8 = sub_1003AD1F4(*(a1 + 48), v7);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 192) + 8);
  v96[0] = *(v10 + 40);
  v11 = [v3 stageEndPointEntityWithIdentifier:v4 endPointCAEntity:v5 airInstanceEntity:v6 clientName:v8 handle:v9 error:v96];
  objc_storeStrong((v10 + 40), v96[0]);

  v12 = *(*(a1 + 192) + 8);
  v14 = *(v12 + 40);
  v13 = (v12 + 40);
  if (!v14)
  {
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v95 = 0;
    v19 = [v15 getEncryptionCertificateFor:v16 environment:v17 region:v18 error:&v95];
    objc_storeStrong(v13, v95);
    if (*(*(*(a1 + 192) + 8) + 40))
    {
      v20 = SESDefaultLogObject();
      v86 = *(a1 + 88);
      v82 = *(a1 + 72);
      v21 = SESCreateAndLogError();
      v22 = *(*(a1 + 192) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

LABEL_5:
      sub_1003AD19C(v3);
LABEL_16:

      goto LABEL_17;
    }

    v24 = getCertificatePublicKey();
    [v11 setPrivacyEncryptionPK:v24];

    v25 = [v11 privacyEncryptionPK];

    if (!v25)
    {
      v20 = SESDefaultLogObject();
      v84 = [v19 base64];
      v36 = SESCreateAndLogError();
      v37 = *(*(a1 + 192) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;

      goto LABEL_5;
    }

    v26 = *(a1 + 64);
    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    v29 = *(a1 + 88);
    v30 = *(*(a1 + 192) + 8);
    v94 = *(v30 + 40);
    v31 = [v26 getSignatureCertificateFor:v27 environment:v28 region:v29 error:&v94];
    objc_storeStrong((v30 + 40), v94);
    if (*(*(*(a1 + 192) + 8) + 40))
    {
      v32 = SESDefaultLogObject();
      v87 = *(a1 + 88);
      v83 = *(a1 + 72);
      v33 = SESCreateAndLogError();
      v34 = *(*(a1 + 192) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;
    }

    else
    {
      v39 = getCertificatePublicKey();
      [v11 setSignatureVerificationPK:v39];

      v40 = [v11 signatureVerificationPK];

      if (v40)
      {
        v92 = v31;
        v89 = *(a1 + 96);
        v91 = [v11 instance];
        v90 = [v91 identifier];
        v41 = [v90 hexStringAsData];
        v42 = [*(a1 + 104) subjectIdentifier];
        v88 = *(a1 + 32);
        v43 = *(a1 + 112);
        v44 = [*(a1 + 120) opt1];
        v45 = [*(a1 + 120) opt2];
        v46 = [*(a1 + 120) optA];
        v47 = *(a1 + 128);
        v48 = *(a1 + 144);
        v49 = *(a1 + 160);
        v50 = *(a1 + 176);
        v51 = *(a1 + 184);
        v52 = *(*(a1 + 192) + 8);
        v93 = *(v52 + 40);
        v53 = sub_1000439C0(v89, 1, v41, v42, v88, v43, v44, v45, v46, v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50, v51, 0, 0, 0, 0, 0, &v93);
        objc_storeStrong((v52 + 40), v93);
        v54 = *(*(a1 + 200) + 8);
        v55 = *(v54 + 40);
        *(v54 + 40) = v53;

        if (*(*(*(a1 + 192) + 8) + 40) || !*(*(*(a1 + 200) + 8) + 40))
        {
          goto LABEL_13;
        }

        v59 = [*(a1 + 120) nfcExpressOnlyInLPM];
        v60 = [*(*(*(a1 + 200) + 8) + 40) configuration];
        [v60 setNfcExpressOnlyInLPM:v59];

        v61 = [*(a1 + 120) terminationNotPersisted];
        v62 = [*(*(*(a1 + 200) + 8) + 40) configuration];
        [v62 setTerminationNotPersisted:v61];

        if (SESInternalVariant())
        {
          v63 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
          v64 = [v63 objectForKey:@"debug.ursk.ttl.override"];
          v65 = v64;
          v66 = v64 ? [v64 unsignedIntValue] : 11;
        }

        else
        {
          v66 = 11;
        }

        v67 = *(a1 + 96);
        v68 = [@"A000000809434343444B417631" hexStringAsData];
        v69 = [*(*(*(a1 + 200) + 8) + 40) publicKeyIdentifier];
        v70 = [NSNumber numberWithUnsignedChar:v66];
        v71 = sub_1000469C0(v67, v68, v69, 0, 0, 0, 0, 0, 0, 0, 0, v70, 0, 0, 0);
        v72 = *(*(a1 + 192) + 8);
        v73 = *(v72 + 40);
        *(v72 + 40) = v71;

        if (*(*(*(a1 + 192) + 8) + 40))
        {
          goto LABEL_13;
        }

        [*(*(*(a1 + 200) + 8) + 40) setEnvironment:*(a1 + 80)];
        v74 = *(*(*(a1 + 200) + 8) + 40);
        v75 = [*(a1 + 104) certificates];
        [v74 prependCertificateChain:v75];

        v76 = [v3 stageEndPointEntityUpdates:v11 fromEndPoint:*(*(*(a1 + 200) + 8) + 40)];
        v77 = *(*(a1 + 192) + 8);
        v78 = *(v77 + 40);
        *(v77 + 40) = v76;

        if (*(*(*(a1 + 192) + 8) + 40))
        {
LABEL_13:
          sub_1003AD19C(v3);
        }

        else
        {
          v79 = sub_1003AD108(v3);
          v80 = *(*(a1 + 192) + 8);
          v81 = *(v80 + 40);
          *(v80 + 40) = v79;
        }

        v31 = v92;
        goto LABEL_15;
      }

      v32 = SESDefaultLogObject();
      v85 = [v31 base64];
      v56 = SESCreateAndLogError();
      v57 = *(*(a1 + 192) + 8);
      v58 = *(v57 + 40);
      *(v57 + 40) = v56;
    }

    sub_1003AD19C(v3);
LABEL_15:

    goto LABEL_16;
  }

  sub_1003AD19C(v3);
LABEL_17:
}

void sub_10001CF10(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    (*(*(a1 + 112) + 16))();
  }

  else
  {
    v67[0] = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = sub_100019DE8;
    v65 = sub_100019DF8;
    v66 = sub_100013800(v9, 4, v67, v11);
    if (v62[5])
    {
      goto LABEL_4;
    }

    if (v67[0] != 1)
    {
      goto LABEL_7;
    }

    v13 = [*(a1 + 32) database];
    v14 = sub_1003AC964(v13, v9, 1);
    v15 = v62[5];
    v62[5] = v14;

    if (v62[5])
    {
LABEL_4:
      (*(*(a1 + 112) + 16))();
    }

    else
    {
LABEL_7:
      v16 = v62;
      v60 = v62[5];
      v32 = sub_1000598B8(SESEndpointDatabase, @"A00000085802010100000001", v10, &v60);
      objc_storeStrong(v16 + 5, v60);
      if (v62[5] || !v32)
      {
        v29 = *(a1 + 112);
        v22 = SESDefaultLogObject();
        v24 = SESCreateAndLogError();
        (*(v29 + 16))(v29, 0, v24);
      }

      else
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        v20 = sub_1003AD1F4(*(a1 + 48), v17);
        v21 = v62;
        v59 = v62[5];
        v22 = [v18 _ensureCAExistsAndValid:v19 clientName:v20 secureElement:v9 handle:v10 forEndPointType:2 error:&v59];
        objc_storeStrong(v21 + 5, v59);

        v23 = v62 + 5;
        if (!v22 || v62[5])
        {
          v30 = *(a1 + 112);
          v24 = SESEnsureError();
          (*(v30 + 16))(v30, 0, v24);
        }

        else
        {
          v58 = 0;
          v24 = sub_1000433C4(SESEndpointDatabase, v22, &v58);
          objc_storeStrong(v23, v58);
          if (!v24 || v62[5])
          {
            (*(*(a1 + 112) + 16))();
          }

          else
          {
            v52 = 0;
            v53 = &v52;
            v54 = 0x3032000000;
            v55 = sub_100019DE8;
            v56 = sub_100019DF8;
            v57 = 0;
            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_10001D468;
            v33[3] = &unk_1004C1968;
            v34 = *(a1 + 56);
            v22 = v22;
            v35 = v22;
            v36 = *(a1 + 48);
            v37 = v10;
            v48 = &v61;
            v49 = &v52;
            v38 = v9;
            v39 = @"A00000085802010100000001";
            v40 = *(a1 + 40);
            v41 = *(a1 + 64);
            v42 = *(a1 + 72);
            v43 = *(a1 + 80);
            v44 = *(a1 + 88);
            v45 = *(a1 + 96);
            v31 = *(a1 + 120);
            v46 = *(a1 + 104);
            v25 = *(a1 + 136);
            *&v26 = v31;
            *(&v26 + 1) = *(a1 + 128);
            v50 = v26;
            v51 = v25;
            v24 = v24;
            v47 = v24;
            sub_1003AD2A8(v37, v33);
            v27 = v53[5];
            v28 = v62[5];
            (*(*(a1 + 112) + 16))();

            _Block_object_dispose(&v52, 8);
          }
        }
      }
    }

    _Block_object_dispose(&v61, 8);
  }
}

void sub_10001D430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10001D468(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v5 instance];
  v8 = sub_1003AD1F4(*(a1 + 48), v7);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 144) + 8);
  v84[0] = *(v10 + 40);
  v11 = [v3 stageEndPointEntityWithIdentifier:v4 endPointCAEntity:v5 airInstanceEntity:v6 clientName:v8 handle:v9 error:v84];
  objc_storeStrong((v10 + 40), v84[0]);

  if (!*(*(*(a1 + 144) + 8) + 40))
  {
    v75 = *(a1 + 64);
    v76 = v11;
    v79 = [*(a1 + 72) hexStringAsData];
    v12 = *(a1 + 80);
    v73 = v12;
    v74 = *(a1 + 32);
    v72 = [*(a1 + 88) opt1];
    v71 = [*(a1 + 88) opt2];
    v70 = [*(a1 + 88) optA];
    v68 = *(a1 + 104);
    v69 = *(a1 + 96);
    v78 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 112) UTF8String], objc_msgSend(*(a1 + 112), "length"));
    v13 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 120) UTF8String], objc_msgSend(*(a1 + 120), "length"));
    v14 = *(a1 + 160);
    if (v14)
    {
      v15 = [NSNumber numberWithUnsignedInt:*(a1 + 160)];
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 164);
    v77 = v3;
    if (v16)
    {
      v17 = [NSNumber numberWithUnsignedInt:v16];
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a1 + 128);
    v19 = [NSNumber numberWithInt:239];
    v20 = [NSNumber numberWithInt:239];
    v21 = *(*(a1 + 144) + 8);
    v83 = *(v21 + 40);
    v22 = sub_1000439C0(v75, 2, v79, v73, v74, v74, v72, v71, v70, v69, v68, v78, v13, 0, 0, v15, v17, v18, v19, v20, 1, 0x10u, &v83);
    objc_storeStrong((v21 + 40), v83);
    v23 = *(*(a1 + 152) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    if (v16)
    {
    }

    v3 = v77;
    if (v14)
    {
    }

    if (*(*(*(a1 + 144) + 8) + 40) || !*(*(*(a1 + 152) + 8) + 40))
    {
      sub_1003AD19C(v77);
      v11 = v76;
      goto LABEL_31;
    }

    v25 = [*(a1 + 88) nfcExpressOnlyInLPM];
    v26 = [*(*(*(a1 + 152) + 8) + 40) configuration];
    [v26 setNfcExpressOnlyInLPM:v25];

    v27 = [*(a1 + 88) terminationNotPersisted];
    v28 = [*(*(*(a1 + 152) + 8) + 40) configuration];
    [v28 setTerminationNotPersisted:v27];

    v29 = *(a1 + 168);
    v11 = v76;
    if (v29)
    {
      v30 = *(a1 + 172);
      v82[0] = BYTE1(v30);
      v82[1] = v30;
      v82[2] = v29;
      v31 = [NSData dataWithBytes:v82 length:3];
      v32 = *(a1 + 168);
      v33 = [*(*(*(a1 + 152) + 8) + 40) configuration];
      [v33 setLengthPrivateMailBox:v32];

      v34 = *(a1 + 172);
      v35 = [*(*(*(a1 + 152) + 8) + 40) configuration];
      [v35 setOffsetPrivateMailBox:v34];
    }

    else
    {
      v31 = 0;
    }

    v36 = *(a1 + 176);
    if (v36)
    {
      v37 = *(a1 + 180);
      v81[0] = BYTE1(v37);
      v81[1] = v37;
      v81[2] = v36;
      v38 = [NSData dataWithBytes:v81 length:3];
      v39 = *(a1 + 176);
      v40 = [*(*(*(a1 + 152) + 8) + 40) configuration];
      [v40 setLengthConfidentialMailBox:v39];

      v41 = *(a1 + 180);
      v42 = [*(*(*(a1 + 152) + 8) + 40) configuration];
      [v42 setOffsetConfidentialMailBox:v41];
    }

    else
    {
      v38 = 0;
    }

    v43 = *(a1 + 64);
    v44 = [*(a1 + 72) hexStringAsData];
    v45 = [*(*(*(a1 + 152) + 8) + 40) publicKeyIdentifier];
    v46 = sub_1000469C0(v43, v44, v45, v31, v38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v47 = *(*(a1 + 144) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = v46;

    if (*(*(*(a1 + 144) + 8) + 40))
    {
      v49 = SESDefaultLogObject();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v50 = "Failed to set auth1 mailbox configuration on endpoint, cleanup endpoint from SE";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, v50, buf, 2u);
      }
    }

    else
    {
      v51 = *(*(*(a1 + 152) + 8) + 40);
      v52 = [*(a1 + 136) certificates];
      [v51 prependCertificateChain:v52];

      v53 = [v77 stageEndPointEntityUpdates:v76 fromEndPoint:*(*(*(a1 + 152) + 8) + 40)];
      v54 = *(*(a1 + 144) + 8);
      v55 = *(v54 + 40);
      *(v54 + 40) = v53;

      if (!*(*(*(a1 + 144) + 8) + 40))
      {
        v60 = sub_1003AD108(v77);
        v61 = *(*(a1 + 144) + 8);
        v62 = *(v61 + 40);
        *(v61 + 40) = v60;

        if (*(*(*(a1 + 144) + 8) + 40))
        {
          v63 = SESDefaultLogObject();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "Failed to commit new endpoint in database, cleanup endpoint on SE", buf, 2u);
          }

          v64 = *(a1 + 64);
          v65 = [*(a1 + 72) hexStringAsData];
          v66 = [*(*(*(a1 + 152) + 8) + 40) publicKeyIdentifier];
          v67 = sub_100045800(v64, v65, v66);
        }

        goto LABEL_30;
      }

      v49 = SESDefaultLogObject();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v50 = "Failed to update endpoint in database, cleanup endpoint on SE";
        goto LABEL_28;
      }
    }

    v56 = *(a1 + 64);
    v57 = [*(a1 + 72) hexStringAsData];
    v58 = [*(*(*(a1 + 152) + 8) + 40) publicKeyIdentifier];
    v59 = sub_100045800(v56, v57, v58);

    sub_1003AD19C(v77);
LABEL_30:

    goto LABEL_31;
  }

  sub_1003AD19C(v3);
LABEL_31:
}

void sub_10001DE7C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    (*(*(a1 + 104) + 16))();
  }

  else
  {
    v61[0] = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_100019DE8;
    v59 = sub_100019DF8;
    v60 = sub_100013800(v9, 2, v61, v11);
    if (v56[5])
    {
      goto LABEL_4;
    }

    if (v61[0] != 1)
    {
      goto LABEL_7;
    }

    v13 = [*(a1 + 32) database];
    v14 = sub_1003AC964(v13, v9, 1);
    v15 = v56[5];
    v56[5] = v14;

    if (v56[5])
    {
LABEL_4:
      (*(*(a1 + 104) + 16))();
    }

    else
    {
LABEL_7:
      v16 = v56;
      v54 = v56[5];
      v29 = sub_1000598B8(SESEndpointDatabase, @"A00000085801010100000001", v10, &v54);
      objc_storeStrong(v16 + 5, v54);
      if (v56[5] || !v29)
      {
        v27 = *(a1 + 104);
        v22 = SESDefaultLogObject();
        v24 = SESCreateAndLogError();
        (*(v27 + 16))(v27, 0, v24);
      }

      else
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        v20 = sub_1003AD1F4(*(a1 + 48), v17);
        v21 = v56;
        v53 = v56[5];
        v22 = [v18 _ensureCAExistsAndValid:v19 clientName:v20 secureElement:v9 handle:v10 forEndPointType:3 error:&v53];
        objc_storeStrong(v21 + 5, v53);

        v23 = v56 + 5;
        if (!v22 || v56[5])
        {
          v28 = *(a1 + 104);
          v24 = SESEnsureError();
          (*(v28 + 16))(v28, 0, v24);
        }

        else
        {
          v52 = 0;
          v24 = sub_1000433C4(SESEndpointDatabase, v22, &v52);
          objc_storeStrong(v23, v52);
          if (!v24 || v56[5])
          {
            (*(*(a1 + 104) + 16))();
          }

          else
          {
            v46 = 0;
            v47 = &v46;
            v48 = 0x3032000000;
            v49 = sub_100019DE8;
            v50 = sub_100019DF8;
            v51 = 0;
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_10001E398;
            v30[3] = &unk_1004C19B8;
            v31 = *(a1 + 56);
            v22 = v22;
            v32 = v22;
            v33 = *(a1 + 48);
            v34 = v10;
            v43 = &v55;
            v44 = &v46;
            v45 = 3;
            v35 = v9;
            v36 = @"A00000085801010100000001";
            v37 = *(a1 + 40);
            v38 = *(a1 + 64);
            v39 = *(a1 + 72);
            v40 = *(a1 + 80);
            v41 = *(a1 + 88);
            v42 = *(a1 + 96);
            sub_1003AD2A8(v34, v30);
            v25 = v47[5];
            v26 = v56[5];
            (*(*(a1 + 104) + 16))();

            _Block_object_dispose(&v46, 8);
          }
        }
      }
    }

    _Block_object_dispose(&v55, 8);
  }
}

void sub_10001E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10001E398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v5 instance];
  v8 = sub_1003AD1F4(*(a1 + 48), v7);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 128) + 8);
  v51[0] = *(v10 + 40);
  v11 = [v3 stageEndPointEntityWithIdentifier:v4 endPointCAEntity:v5 airInstanceEntity:v6 clientName:v8 handle:v9 error:v51];
  objc_storeStrong((v10 + 40), v51[0]);

  if (*(*(*(a1 + 128) + 8) + 40))
  {
LABEL_2:
    sub_1003AD19C(v3);
    goto LABEL_5;
  }

  v47 = *(a1 + 144);
  v48 = v11;
  v46 = *(a1 + 64);
  v12 = [*(a1 + 72) hexStringAsData];
  v13 = *(a1 + 32);
  v45 = *(a1 + 80);
  v44 = [*(a1 + 88) opt1];
  v43 = [*(a1 + 88) opt2];
  v14 = [*(a1 + 88) optA];
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 112) UTF8String], objc_msgSend(*(a1 + 112), "length"));
  v18 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 120) UTF8String], objc_msgSend(*(a1 + 120), "length"));
  v19 = *(*(a1 + 128) + 8);
  v50 = *(v19 + 40);
  v20 = sub_1000439C0(v46, v47, v12, v45, v13, v13, v44, v43, v14, v15, v16, v17, v18, 0, 0, 0, 0, 0, 0, 0, 0, 0x10u, &v50);
  objc_storeStrong((v19 + 40), v50);
  v21 = *(*(a1 + 136) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  if (*(*(*(a1 + 128) + 8) + 40) || !*(*(*(a1 + 136) + 8) + 40))
  {
    sub_1003AD19C(v3);
    v11 = v48;
    goto LABEL_5;
  }

  v23 = [*(a1 + 88) nfcExpressOnlyInLPM];
  v24 = [*(*(*(a1 + 136) + 8) + 40) configuration];
  [v24 setNfcExpressOnlyInLPM:v23];

  v25 = [*(a1 + 88) terminationNotPersisted];
  v26 = [*(*(*(a1 + 136) + 8) + 40) configuration];
  [v26 setTerminationNotPersisted:v25];

  v11 = v48;
  v27 = [v3 stageEndPointEntityUpdates:v48 fromEndPoint:*(*(*(a1 + 136) + 8) + 40)];
  v28 = *(*(a1 + 128) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  if (*(*(*(a1 + 128) + 8) + 40))
  {
    v30 = SESDefaultLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Failed to update endpoint in database, cleanup endpoint on SE", buf, 2u);
    }

    v31 = *(a1 + 64);
    v32 = [*(a1 + 72) hexStringAsData];
    v33 = [*(*(*(a1 + 136) + 8) + 40) publicKeyIdentifier];
    v34 = sub_100045800(v31, v32, v33);

    goto LABEL_2;
  }

  v35 = sub_1003AD108(v3);
  v36 = *(*(a1 + 128) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v35;

  if (*(*(*(a1 + 128) + 8) + 40))
  {
    v38 = SESDefaultLogObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Failed to commit endpoint in database, cleanup endpoint on SE", buf, 2u);
    }

    v39 = *(a1 + 64);
    v40 = [*(a1 + 72) hexStringAsData];
    v41 = [*(*(*(a1 + 136) + 8) + 40) publicKeyIdentifier];
    v42 = sub_100045800(v39, v40, v41);
  }

LABEL_5:
}

void sub_10001EB4C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    v13 = [v11 isSupported];
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Sunsprite is to be SLAM'd %d", buf, 8u);
    }

    v75 = 0;
    *buf = 0;
    v79 = buf;
    v80 = 0x3032000000;
    v81 = sub_100019DE8;
    v82 = sub_100019DF8;
    v83 = sub_100013800(v9, v13 | 0x10, &v75, v11);
    if (*(v79 + 5))
    {
      goto LABEL_6;
    }

    if (v75 == 1)
    {
      v15 = [*(a1 + 32) database];
      v16 = sub_1003AC964(v15, v9, 1);
      v17 = *(v79 + 5);
      *(v79 + 5) = v16;

      if (*(v79 + 5))
      {
        goto LABEL_6;
      }

      v18 = +[_TtC10seserviced12LyonExternal shared];
      [v18 applyLatestAliroProtocolVersions];
    }

    if (!v13)
    {
      goto LABEL_15;
    }

    v19 = sub_100014918(v9, 1, v11);
    v20 = *(v79 + 5);
    *(v79 + 5) = v19;

    if (!*(v79 + 5))
    {
      v21 = +[_TtC10seserviced3DSK queue];
      dispatch_async(v21, &stru_1004C1A00);

LABEL_15:
      v22 = v79;
      v74 = *(v79 + 5);
      v47 = sub_1000598B8(SESEndpointDatabase, @"A000000909ACCE5501", v10, &v74);
      objc_storeStrong(v22 + 5, v74);
      if (*(v79 + 5) || !v47)
      {
        v43 = *(a1 + 120);
        v28 = SESDefaultLogObject();
        v30 = SESCreateAndLogError();
        (*(v43 + 16))(v43, 0, v30);
      }

      else
      {
        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        v26 = sub_1003AD1F4(*(a1 + 48), v23);
        v27 = v79;
        v73 = *(v79 + 5);
        v28 = [v25 _ensureCAExistsAndValid:v24 clientName:v26 secureElement:v9 handle:v10 forEndPointType:4 error:&v73];
        objc_storeStrong(v27 + 5, v73);

        v29 = (v79 + 40);
        if (!v28 || *(v79 + 5))
        {
          v44 = *(a1 + 120);
          v30 = SESEnsureError();
          (*(v44 + 16))(v44, 0, v30);
        }

        else
        {
          v72 = 0;
          v30 = sub_1000433C4(SESEndpointDatabase, v28, &v72);
          objc_storeStrong(v29, v72);
          if (!v30 || *(v79 + 5))
          {
            (*(*(a1 + 120) + 16))();
          }

          else
          {
            v66 = 0;
            v67 = &v66;
            v68 = 0x3032000000;
            v69 = sub_100019DE8;
            v70 = sub_100019DF8;
            v71 = 0;
            v48[0] = _NSConcreteStackBlock;
            v48[1] = 3221225472;
            v48[2] = sub_10001F3C0;
            v48[3] = &unk_1004C1A28;
            v49 = *(a1 + 56);
            v28 = v28;
            v50 = v28;
            v51 = *(a1 + 48);
            v52 = v10;
            v63 = buf;
            v64 = &v66;
            v31 = v9;
            v65 = 4;
            v53 = v31;
            v54 = @"A000000909ACCE5501";
            v55 = *(a1 + 40);
            v56 = *(a1 + 64);
            v57 = *(a1 + 72);
            v58 = *(a1 + 80);
            v59 = *(a1 + 88);
            v60 = *(a1 + 96);
            v61 = *(a1 + 104);
            v62 = *(a1 + 112);
            sub_1003AD2A8(v52, v48);
            v32 = v67;
            if (!*(v79 + 5))
            {
              goto LABEL_43;
            }

            if (v67[5])
            {
              v33 = SESDefaultLogObject();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *v76 = 0;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Failure after creating EP on SE, cleaning it up", v76, 2u);
              }

              v45 = v31;

              v34 = [v47 identifier];
              v35 = [v34 hexStringAsData];
              v36 = [v67[5] publicKeyIdentifier];
              v46 = sub_100045800(v45, v35, v36);

              if (v46)
              {
                v37 = SESDefaultLogObject();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  *v76 = 138412290;
                  v77 = v46;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to clean up EP   : %@", v76, 0xCu);
                }
              }

              v38 = [v67[5] deleteEndPointLongTermPrivacyKey];

              if (v38)
              {
                v39 = SESDefaultLogObject();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *v76 = 138412290;
                  v77 = v38;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to delete long term privacy key %@", v76, 0xCu);
                }
              }

              v40 = v67[5];
              v67[5] = 0;

              v32 = v67;
              if (!*(v79 + 5))
              {
LABEL_43:
                if (v32[5])
                {
                  [_TtC10seserviced13EndpointStore insertWithEndpoint:?];
                  v32 = v67;
                  v41 = *(v79 + 5);
                }
              }
            }

            v42 = v32[5];
            (*(*(a1 + 120) + 16))();

            _Block_object_dispose(&v66, 8);
          }
        }
      }

      goto LABEL_7;
    }

LABEL_6:
    (*(*(a1 + 120) + 16))();
LABEL_7:
    _Block_object_dispose(buf, 8);

    goto LABEL_8;
  }

  (*(*(a1 + 120) + 16))();
LABEL_8:
}

void sub_10001F324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10001F374(id a1)
{
  v1 = +[_TtC10seserviced3DSK shared];
  [v1 startWithModule:1];
}

void sub_10001F3C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v5 instance];
  v8 = sub_1003AD1F4(*(a1 + 48), v7);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 144) + 8);
  v63[0] = *(v10 + 40);
  v11 = [v3 stageEndPointEntityWithIdentifier:v4 endPointCAEntity:v5 airInstanceEntity:v6 clientName:v8 handle:v9 error:v63];
  objc_storeStrong((v10 + 40), v63[0]);

  if (!*(*(*(a1 + 144) + 8) + 40))
  {
    v59 = v11;
    v60 = v3;
    if (SESInternalVariant())
    {
      v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
      v58 = [v12 BOOLForKey:@"debug.always.enable.sesame"];
    }

    else
    {
      v58 = 0;
    }

    v13 = *(a1 + 64);
    v56 = v13;
    v57 = *(a1 + 160);
    v14 = [*(a1 + 72) hexStringAsData];
    v15 = *(a1 + 32);
    v16 = *(a1 + 80);
    v17 = [*(a1 + 88) optA];
    v19 = *(a1 + 96);
    v18 = *(a1 + 104);
    v20 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 112) UTF8String], objc_msgSend(*(a1 + 112), "length"));
    v21 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 120) UTF8String], objc_msgSend(*(a1 + 120), "length"));
    v22 = *(a1 + 128);
    v23 = *(*(a1 + 144) + 8);
    v62 = *(v23 + 40);
    v24 = sub_1000439C0(v56, v57, v14, v16, v15, v15, v58, 0, v17, v19, v18, v20, v21, 0, 0, 0, v22, &off_1004DC918, 0, 0, 0, 0x10u, &v62);
    objc_storeStrong((v23 + 40), v62);
    v25 = *(*(a1 + 152) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    if (*(*(*(a1 + 144) + 8) + 40) || !*(*(*(a1 + 152) + 8) + 40))
    {
      v3 = v60;
      sub_1003AD19C(v60);
      v11 = v59;
      goto LABEL_8;
    }

    v27 = [*(a1 + 88) nfcExpressOnlyInLPM];
    v28 = [*(*(*(a1 + 152) + 8) + 40) configuration];
    [v28 setNfcExpressOnlyInLPM:v27];

    v29 = [*(a1 + 88) terminationNotPersisted];
    v30 = [*(*(*(a1 + 152) + 8) + 40) configuration];
    [v30 setTerminationNotPersisted:v29];

    v31 = *(a1 + 136);
    v11 = v59;
    v3 = v60;
    if (v31)
    {
      v32 = [v31 UUIDString];
      [*(*(*(a1 + 152) + 8) + 40) setHomeUUIDString:v32];
    }

    v33 = [v60 stageEndPointEntityUpdates:v59 fromEndPoint:*(*(*(a1 + 152) + 8) + 40)];
    v34 = *(*(a1 + 144) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    if (*(*(*(a1 + 144) + 8) + 40))
    {
      v36 = SESDefaultLogObject();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Failed to update endpoint in database, cleanup endpoint on SE", buf, 2u);
      }

      v37 = *(a1 + 64);
      v38 = [*(a1 + 72) hexStringAsData];
      v39 = [*(*(*(a1 + 152) + 8) + 40) publicKeyIdentifier];
      v40 = sub_100045800(v37, v38, v39);
    }

    else
    {
      if (SESInternalVariant())
      {
        v41 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
        v42 = [v41 objectForKey:@"debug.ursk.ttl.override"];
        v43 = v42;
        if (v42)
        {
          v44 = [v42 unsignedIntValue];
        }

        else
        {
          v44 = 12;
        }
      }

      else
      {
        v44 = 12;
      }

      v45 = *(a1 + 64);
      v46 = [*(a1 + 72) hexStringAsData];
      v47 = [*(*(*(a1 + 152) + 8) + 40) publicKeyIdentifier];
      v48 = [NSNumber numberWithUnsignedChar:v44];
      v49 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 88) auth1SignallingBitmap]);
      v50 = sub_1000469C0(v45, v46, v47, 0, 0, 0, 0, 0, 0, 0, 0, v48, v49, 0, 0);
      v51 = *(*(a1 + 144) + 8);
      v52 = *(v51 + 40);
      *(v51 + 40) = v50;

      if (!*(*(*(a1 + 144) + 8) + 40))
      {
        v53 = sub_1003AD108(v60);
        v54 = *(*(a1 + 144) + 8);
        v55 = *(v54 + 40);
        *(v54 + 40) = v53;

        goto LABEL_8;
      }
    }
  }

  sub_1003AD19C(v3);
LABEL_8:
}

void sub_100020040(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    (*(*(a1 + 120) + 16))();
  }

  else
  {
    v13 = [v11 isSupported];
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Sunsprite is to be SLAM'd %d", buf, 8u);
    }

    v64 = 0;
    *buf = 0;
    v66 = buf;
    v67 = 0x3032000000;
    v68 = sub_100019DE8;
    v69 = sub_100019DF8;
    v70 = sub_100013800(v9, v13 | 0x10, &v64, v11);
    v15 = v66;
    if (*(v66 + 5))
    {
      goto LABEL_6;
    }

    if (v64 == 1)
    {
      v16 = [*(a1 + 32) database];
      v17 = sub_1003AC964(v16, v9, 1);
      v18 = *(v66 + 5);
      *(v66 + 5) = v17;

      v15 = v66;
      if (*(v66 + 5))
      {
        goto LABEL_6;
      }
    }

    if (v13 && (sub_100014918(v9, 1, v11), v19 = objc_claimAutoreleasedReturnValue(), v20 = *(v66 + 5), *(v66 + 5) = v19, v20, v15 = v66, *(v66 + 5)))
    {
LABEL_6:
      (*(*(a1 + 120) + 16))();
    }

    else
    {
      v63 = 0;
      v34 = sub_1000598B8(SESEndpointDatabase, @"A000000909ACCE5501", v10, &v63);
      objc_storeStrong(v15 + 5, v63);
      if (*(v66 + 5) || !v34)
      {
        v32 = *(a1 + 120);
        v26 = SESDefaultLogObject();
        v28 = SESCreateAndLogError();
        (*(v32 + 16))(v32, 0, v28);
      }

      else
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        v24 = sub_1003AD1F4(*(a1 + 48), v21);
        v25 = v66;
        v62 = *(v66 + 5);
        v26 = [v22 _ensureCAExistsAndValid:v23 clientName:v24 secureElement:v9 handle:v10 forEndPointType:5 error:&v62];
        objc_storeStrong(v25 + 5, v62);

        v27 = (v66 + 40);
        if (!v26 || *(v66 + 5))
        {
          v33 = *(a1 + 120);
          v28 = SESEnsureError();
          (*(v33 + 16))(v33, 0, v28);
        }

        else
        {
          v61 = 0;
          v28 = sub_1000433C4(SESEndpointDatabase, v26, &v61);
          objc_storeStrong(v27, v61);
          if (!v28 || *(v66 + 5))
          {
            (*(*(a1 + 120) + 16))();
          }

          else
          {
            v55 = 0;
            v56 = &v55;
            v57 = 0x3032000000;
            v58 = sub_100019DE8;
            v59 = sub_100019DF8;
            v60 = 0;
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_100020684;
            v35[3] = &unk_1004C1A78;
            v36 = *(a1 + 56);
            v26 = v26;
            v37 = v26;
            v38 = *(a1 + 48);
            v39 = v10;
            v50 = buf;
            v40 = *(a1 + 64);
            v41 = *(a1 + 72);
            v51 = &v55;
            v42 = v9;
            v43 = *(a1 + 40);
            v54 = *(a1 + 140);
            v44 = *(a1 + 80);
            v45 = *(a1 + 88);
            v46 = *(a1 + 96);
            v47 = *(a1 + 104);
            v52 = *(a1 + 128);
            v48 = *(a1 + 112);
            v53 = *(a1 + 132);
            v28 = v28;
            v49 = v28;
            sub_1003AD2A8(v39, v35);
            v29 = v56;
            if (!*(v66 + 5) && v56[5])
            {
              [_TtC10seserviced13EndpointStore insertWithEndpoint:?];
              v29 = v56;
              v30 = *(v66 + 5);
            }

            v31 = v29[5];
            (*(*(a1 + 120) + 16))();

            _Block_object_dispose(&v55, 8);
          }
        }
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_100020644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100020684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v5 instance];
  v8 = sub_1003AD1F4(*(a1 + 48), v7);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 144) + 8);
  v80[0] = *(v10 + 40);
  v11 = [v3 stageEndPointEntityWithIdentifier:v4 endPointCAEntity:v5 airInstanceEntity:v6 clientName:v8 handle:v9 error:v80];
  objc_storeStrong((v10 + 40), v80[0]);

  if (!*(*(*(a1 + 144) + 8) + 40))
  {
    v12 = [*(a1 + 64) optA];
    v13 = [*(a1 + 72) objectForKeyedSubscript:@"wiredVisibility"];

    v76 = v11;
    if (v13 && ([*(a1 + 72) objectForKeyedSubscript:@"wiredVisibility"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) != 0))
    {
      v74 = v12 | 4;
      v75 = [*(a1 + 72) objectForKeyedSubscript:@"wiredVisibility"];
    }

    else
    {
      v74 = v12;
      v75 = 0;
    }

    v73 = *(a1 + 80);
    v16 = [@"A000000909ACCE5501" hexStringAsData];
    v17 = *(a1 + 32);
    v72 = *(a1 + 172);
    v70 = *(a1 + 96);
    v71 = *(a1 + 88);
    v18 = *(a1 + 104);
    v19 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 112) UTF8String], objc_msgSend(*(a1 + 112), "length"));
    v20 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [*(a1 + 120) UTF8String], objc_msgSend(*(a1 + 120), "length"));
    v21 = *(a1 + 160);
    v22 = v3;
    if (v21)
    {
      v23 = [NSNumber numberWithUnsignedInt:*(a1 + 160)];
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a1 + 128);
    v25 = *(*(a1 + 144) + 8);
    v79 = *(v25 + 40);
    v26 = sub_1000439C0(v73, 5, v16, v71, v17, v17, v72, 0, v74, v70, v18, v19, v20, 0, 0, 0, v23, v24, 0, 0, 0, 0x10u, &v79);
    objc_storeStrong((v25 + 40), v79);
    v27 = *(*(a1 + 152) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    if (v21)
    {
    }

    v3 = v22;
    if (*(*(*(a1 + 144) + 8) + 40) || !*(*(*(a1 + 152) + 8) + 40))
    {
      sub_1003AD19C(v22);
      v11 = v76;
LABEL_30:

      goto LABEL_31;
    }

    v29 = [*(a1 + 64) nfcExpressOnlyInLPM];
    v30 = [*(*(*(a1 + 152) + 8) + 40) configuration];
    [v30 setNfcExpressOnlyInLPM:v29];

    v31 = [*(a1 + 64) terminationNotPersisted];
    v32 = [*(*(*(a1 + 152) + 8) + 40) configuration];
    [v32 setTerminationNotPersisted:v31];

    v33 = [*(a1 + 72) objectForKeyedSubscript:@"serialNumber"];

    v11 = v76;
    if (v33)
    {
      v34 = [*(a1 + 72) objectForKeyedSubscript:@"serialNumber"];
      objc_opt_class();
      v35 = objc_opt_isKindOfClass();

      if (v35)
      {
        v36 = [*(a1 + 72) objectForKeyedSubscript:@"serialNumber"];
        [*(*(*(a1 + 152) + 8) + 40) setHomeUUIDString:v36];
      }
    }

    v37 = *(a1 + 164);
    if (v37)
    {
      v38 = *(a1 + 168);
      v78[0] = BYTE1(v38);
      v78[1] = v38;
      v78[2] = v37;
      v39 = [NSData dataWithBytes:v78 length:3];
      v40 = *(a1 + 164);
      v41 = [*(*(*(a1 + 152) + 8) + 40) configuration];
      [v41 setLengthPrivateMailBox:v40];

      v42 = *(a1 + 168);
      v43 = [*(*(*(a1 + 152) + 8) + 40) configuration];
      [v43 setOffsetPrivateMailBox:v42];
    }

    else
    {
      v39 = 0;
    }

    v44 = *(a1 + 80);
    v45 = [@"A000000909ACCE5501" hexStringAsData];
    v46 = [*(*(*(a1 + 152) + 8) + 40) publicKeyIdentifier];
    v47 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 64) auth1SignallingBitmap]);
    v48 = sub_1000469C0(v44, v45, v46, v39, 0, 0, 0, v75, 0, 0, 0, 0, v47, 0, 0);
    v49 = *(*(a1 + 144) + 8);
    v50 = *(v49 + 40);
    *(v49 + 40) = v48;

    if (*(*(*(a1 + 144) + 8) + 40))
    {
      v51 = SESDefaultLogObject();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v52 = "Failed to set auth1 mailbox configuration on endpoint, cleanup endpoint from SE";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, v52, buf, 2u);
      }
    }

    else
    {
      v53 = *(*(*(a1 + 152) + 8) + 40);
      v54 = [*(a1 + 136) certificates];
      [v53 prependCertificateChain:v54];

      v55 = [v22 stageEndPointEntityUpdates:v76 fromEndPoint:*(*(*(a1 + 152) + 8) + 40)];
      v56 = *(*(a1 + 144) + 8);
      v57 = *(v56 + 40);
      *(v56 + 40) = v55;

      if (!*(*(*(a1 + 144) + 8) + 40))
      {
        v62 = sub_1003AD108(v22);
        v63 = *(*(a1 + 144) + 8);
        v64 = *(v63 + 40);
        *(v63 + 40) = v62;

        if (*(*(*(a1 + 144) + 8) + 40))
        {
          v65 = SESDefaultLogObject();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "Failed to commit new endpoint in database, cleanup endpoint on SE", buf, 2u);
          }

          v66 = *(a1 + 80);
          v67 = [@"A000000909ACCE5501" hexStringAsData];
          v68 = [*(*(*(a1 + 152) + 8) + 40) publicKeyIdentifier];
          v69 = sub_100045800(v66, v67, v68);
        }

        goto LABEL_29;
      }

      v51 = SESDefaultLogObject();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v52 = "Failed to update endpoint in database, cleanup endpoint on SE";
        goto LABEL_27;
      }
    }

    v58 = *(a1 + 80);
    v59 = [@"A000000909ACCE5501" hexStringAsData];
    v60 = [*(*(*(a1 + 152) + 8) + 40) publicKeyIdentifier];
    v61 = sub_100045800(v58, v59, v60);

    sub_1003AD19C(v22);
LABEL_29:

    goto LABEL_30;
  }

  sub_1003AD19C(v3);
LABEL_31:
}

uint64_t sub_100020FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10003CCA4(SESEndpointDatabase, v3, 0);
  v5 = [v4 revocationAttestation];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 instance];
    v8 = [v7 identifier];
    v9 = [*(a1 + 32) identifier];
    if ([v8 isEqualToString:v9])
    {
      v10 = [v4 identifier];
      if ([v10 isEqualToString:*(a1 + 40)])
      {
        v6 = 1;
      }

      else
      {
        v11 = [v4 readerIdentifier];
        v6 = [v11 isEqualToData:*(a1 + 48)];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_10002169C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v26 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    goto LABEL_2;
  }

  if (v26 && v12 && v13)
  {
    v17 = [v12 instance];
    v18 = [v17 identifier];
    v19 = [v18 hexStringAsData];
    v20 = [v13 publicKeyIdentifier];
    v15 = sub_1000469C0(v26, v19, v20, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), 0, 0, 0, 0);

    if (v15)
    {
      goto LABEL_3;
    }

    if (*(a1 + 32))
    {
      v21 = *(a1 + 48);
    }

    else if (*(a1 + 40) == 0 && !*(a1 + 64))
    {
      v15 = 0;
      if (!*(a1 + 88))
      {
        goto LABEL_20;
      }
    }

    v24 = *(a1 + 64);
    v25 = *(a1 + 88);
    v14 = [v13 configurePrivateData:? confidentialData:? contactlessPersistentVisibility:? wiredPersistentVisibility:? nfcExpressOnlyInLPM:?];
    if (v14)
    {
LABEL_2:
      v15 = v14;
LABEL_3:
      v16 = *(*(a1 + 96) + 16);
LABEL_4:
      v16();
      goto LABEL_5;
    }

    v15 = sub_10003D080(SESEndpointDatabase, v12, v13, v11);
LABEL_20:
    v16 = *(*(a1 + 96) + 16);
    goto LABEL_4;
  }

  v22 = *(a1 + 96);
  v15 = SESDefaultLogObject();
  v23 = SESCreateAndLogError();
  (*(v22 + 16))(v22, 0, v23);

LABEL_5:
}

void sub_100022114(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v31 = 0;
    v10 = sub_1000598B8(SESEndpointDatabase, @"A000000909ACCE5501", a3, &v31);
    v11 = v31;
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v9 = v11;
      v13 = *(a1 + 56);
      v14 = SESDefaultLogObject();
      v15 = SESCreateAndLogError();
      (*(v13 + 16))(v13, 0, v15);
LABEL_28:

      goto LABEL_29;
    }

    v16 = *(a1 + 64);
    if (*(a1 + 65))
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    if (*(a1 + 32))
    {
      v18 = [NSData dataWithHexString:?];
      v14 = v18;
      if (!v18 || [v18 length] != 20)
      {
        v19 = *(a1 + 56);
        v15 = SESDefaultLogObject();
        v20 = SESCreateAndLogError();
        (*(v19 + 16))(v19, 0, v20);
LABEL_27:

        v9 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v14 = 0;
    }

    if (*(a1 + 40))
    {
      v15 = [NSData dataWithHexString:?];
      if ([v15 length] != 20)
      {
        v29 = *(a1 + 56);
        v20 = SESDefaultLogObject();
        v30 = SESCreateAndLogError();
        (*(v29 + 16))(v29, 0, v30);

        goto LABEL_27;
      }

      if (!v15)
      {
        v15 = objc_alloc_init(NSData);
      }
    }

    else
    {
      v15 = 0;
    }

    v21 = v16 | v17 | 4u;
    v22 = SESDefaultLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 48);
      v24 = *(a1 + 64);
      v25 = *(a1 + 65);
      *buf = 138413058;
      v33 = v23;
      v34 = 1024;
      v35 = v21;
      v36 = 1024;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Configuring identifier %@ with bitmap %d, accessDocumentPresent %d, revocationDocumentPresent %d ", buf, 0x1Eu);
    }

    v26 = [@"A000000909ACCE5501" hexStringAsData];
    v27 = [*(a1 + 48) hexStringAsData];
    v28 = [NSNumber numberWithUnsignedShort:v21];
    v9 = sub_1000469C0(v7, v26, v27, 0, 0, 0, 0, 0, 0, 0, 0, 0, v28, v14, v15);

    (*(*(a1 + 56) + 16))(*(a1 + 56), v9 == 0, v9);
    goto LABEL_28;
  }

  v9 = v8;
  (*(*(a1 + 56) + 16))();
LABEL_29:
}

void sub_1000226C0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (!v11 || v15)
  {
    v22 = *(a1 + 56);
    v23 = SESEnsureError();
    (*(v22 + 16))(v22, 0, v23);
  }

  else
  {
    v17 = [v14 revocationAttestation];

    if (v17)
    {
      v18 = *(a1 + 56);
      v19 = SESDefaultLogObject();
      v20 = [v14 publicKeyIdentifier];
      v42 = [v20 asHexString];
      v21 = SESCreateAndLogError();
      (*(v18 + 16))(v18, 0, v21);
    }

    else
    {
      v45 = v12;
      v24 = [*(a1 + 32) getEncryptedCarOEMProprietaryData:v14 withEndpointEntity:v13 withSecureElement:v11];
      [v14 setCarOEMProprietaryData:v24];

      v47 = [v14 readerInfo];
      v25 = [v14 bleAddress];
      v26 = 3;
      if (!v25)
      {
        v26 = 1;
      }

      v46 = v26;

      v27 = [v13 instance];
      v28 = [v27 identifier];
      v29 = [v28 hexStringAsData];
      v30 = [v14 publicKeyIdentifier];
      v31 = *(a1 + 40);
      v32 = *(a1 + 48);
      v48 = 0;
      v33 = sub_10004993C(v11, v29, v30, v31, v32, &v48);
      v34 = v48;

      if (v34 || !v33)
      {
        v38 = *(a1 + 56);
        v39 = SESDefaultLogObject();
        v44 = v33;
        [v34 code];
        v40 = [v14 publicKeyIdentifier];
        v43 = [v40 asHexString];
        v41 = SESCreateAndLogError();
        (*(v38 + 16))(v38, 0, v41);

        v33 = v44;
        v36 = v47;
        sub_10004CE08(SESDAnalyticsLogger, 1, v47, v46, 3);
        v12 = v45;
      }

      else
      {
        [v14 setRevocationAttestation:v33];
        v12 = v45;
        v34 = sub_10003D080(SESEndpointDatabase, v13, v14, v45);
        if (v34)
        {
          v35 = SESDefaultLogObject();
          v36 = v47;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v50 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "EndPoint revoked but could not update database : %@", buf, 0xCu);
          }

          v37 = 4;
        }

        else
        {
          v37 = 0;
          v36 = v47;
        }

        [_TtC10seserviced13EndpointStore removeWithEndpoint:v14];
        sub_10004CE08(SESDAnalyticsLogger, 1, v36, v46, v37);
        (*(*(a1 + 56) + 16))();
      }
    }
  }
}

void sub_100022CE4(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v10 || v12)
  {
    v22 = a1[7];
    v20 = SESEnsureError();
    (*(v22 + 16))(v22, 0, v20);
  }

  else
  {
    v14 = [a4 instance];
    v15 = [v14 identifier];
    v16 = [v15 hexStringAsData];
    v17 = [v11 publicKeyIdentifier];
    v18 = a1[4];
    v19 = a1[5];
    v26 = 0;
    v20 = sub_10004851C(v10, v16, v17, v18, v19, &v26);
    v13 = v26;

    v21 = a1[7];
    if (v13 || !v20)
    {
      v23 = SESDefaultLogObject();
      [v13 code];
      v25 = a1[6];
      v24 = SESCreateAndLogError();
      (*(v21 + 16))(v21, 0, v24);
    }

    else
    {
      (*(v21 + 16))(a1[7], v20, 0);
    }
  }
}

void sub_100023074(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v10 || v12)
  {
    v21 = a1[6];
    v19 = SESEnsureError();
    (*(v21 + 16))(v21, 0, v19);
  }

  else
  {
    v14 = [a4 instance];
    v15 = [v14 identifier];
    v16 = [v15 hexStringAsData];
    v17 = [v11 publicKeyIdentifier];
    v18 = a1[4];
    v25 = 0;
    v19 = sub_1000493D0(v10, v16, v17, v18, &v25);
    v13 = v25;

    v20 = a1[6];
    if (v13 || !v19)
    {
      v22 = SESDefaultLogObject();
      [v13 code];
      v24 = a1[5];
      v23 = SESCreateAndLogError();
      (*(v20 + 16))(v20, 0, v23);
    }

    else
    {
      (*(v20 + 16))(a1[6], v19, 0);
    }
  }
}

void sub_10002340C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v31 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    v15 = v14;
    v16 = *(*(a1 + 40) + 16);
LABEL_3:
    v16();
    goto LABEL_10;
  }

  if (v31 && v12 && v13)
  {
    v17 = [v13 privateMailBoxSize];
    v18 = [v17 unsignedIntegerValue];
    v19 = *(a1 + 48);
    v20 = [*(a1 + 32) length] + v19;

    if (v18 >= v20)
    {
      v26 = [v12 instance];
      v27 = [v26 identifier];
      v28 = [v27 hexStringAsData];
      v29 = [v13 publicKeyIdentifier];
      v15 = sub_100046640(v31, v28, v29, *(a1 + 32), *(a1 + 48));

      v16 = *(*(a1 + 40) + 16);
      goto LABEL_3;
    }

    v21 = *(a1 + 40);
    v15 = SESDefaultLogObject();
    v22 = *(a1 + 48);
    [*(a1 + 32) length];
    v30 = [v13 privateMailBoxSize];
    v23 = SESCreateAndLogError();
    (*(v21 + 16))(v21, 0, v23);
  }

  else
  {
    v24 = *(a1 + 40);
    v15 = SESDefaultLogObject();
    v25 = SESCreateAndLogError();
    (*(v24 + 16))(v24, 0, v25);
  }

LABEL_10:
}

void sub_100023890(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v11 && v9 && v10 && !v12)
  {
    v13 = sub_10003D080(SESEndpointDatabase, v10, *(a1 + 32), v9);
    if (!v13 && *(a1 + 32))
    {
      [_TtC10seserviced13EndpointStore updateWithEndpoint:?];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109890;
      v17[1] = v9 != 0;
      v18 = 1024;
      v19 = v10 != 0;
      v20 = 1024;
      v21 = v11 != 0;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "updateEndpoint database %d endpointEntity %d endpoint %d error %@", v17, 0x1Eu);
    }

    v15 = *(a1 + 40);
    v16 = SESEnsureError();
    (*(v15 + 16))(v15, 0, v16);
  }
}

void sub_100023C14(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = v15;
    (*(*(a1 + 32) + 16))();
LABEL_10:

    goto LABEL_11;
  }

  if (!v11 || !v13 || !v14)
  {
    v25 = *(a1 + 32);
    v16 = SESDefaultLogObject();
    v26 = SESCreateAndLogError();
    (*(v25 + 16))(v25, 0, v26);

    goto LABEL_10;
  }

  v17 = [v14 privateMailBoxSize];
  v18 = [v17 unsignedIntegerValue];
  v19 = *(a1 + 42) + *(a1 + 40);

  if (v18 >= v19)
  {
    v34 = [v13 instance];
    v27 = [v34 identifier];
    v28 = [v27 hexStringAsData];
    v29 = [v14 publicKeyIdentifier];
    v30 = *(a1 + 40);
    v31 = *(a1 + 42);
    v35 = 0;
    v32 = sub_100046338(v11, v28, v29, v30, v31, &v35);
    v16 = v35;

    (*(*(a1 + 32) + 16))();
    goto LABEL_10;
  }

  v20 = *(a1 + 32);
  v21 = SESDefaultLogObject();
  v22 = *(a1 + 42);
  v23 = *(a1 + 40);
  v33 = [v14 privateMailBoxSize];
  v24 = SESCreateAndLogError();
  (*(v20 + 16))(v20, 0, v24);

LABEL_11:
}

void sub_100024050(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v10 || v12)
  {
    v19 = *(a1 + 32);
    v20 = SESEnsureError();
    (*(v19 + 16))(v19, 0, v20);
  }

  else
  {
    v14 = [a4 instance];
    v15 = [v14 identifier];
    v16 = [v15 hexStringAsData];
    v17 = [v11 publicKeyIdentifier];
    v21 = 0;
    v18 = sub_100047188(v10, v16, v17, &v21);
    v13 = v21;

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100024310(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v23 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    v15 = v14;
    v16 = *(*(a1 + 48) + 16);
LABEL_7:
    v16();
    goto LABEL_8;
  }

  if (v23 && v12 && v13)
  {
    v17 = [v12 instance];
    v18 = [v17 identifier];
    v19 = [v18 hexStringAsData];
    v20 = [v13 publicKeyIdentifier];
    v15 = sub_100047350(v23, v19, v20, *(a1 + 32), *(a1 + 40), *(a1 + 56));

    v16 = *(*(a1 + 48) + 16);
    goto LABEL_7;
  }

  v21 = *(a1 + 48);
  v15 = SESDefaultLogObject();
  v22 = SESCreateAndLogError();
  (*(v21 + 16))(v21, 0, v22);

LABEL_8:
}

void sub_10002468C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_25;
  }

  if (!v11 || !v13 || !v14)
  {
    v23 = *(a1 + 56);
    v24 = SESDefaultLogObject();
    v25 = SESCreateAndLogError();
LABEL_16:
    v26 = v25;
    (*(v23 + 16))(v23, 0, v25);

    goto LABEL_25;
  }

  if ([v14 endPointType] != 2 && objc_msgSend(v14, "endPointType") != 5)
  {
    v23 = *(a1 + 56);
    v24 = SESDefaultLogObject();
    [v14 endPointType];
    v25 = SESCreateAndLogError();
    goto LABEL_16;
  }

  v16 = [[NSData alloc] initWithBase64EncodedData:*(a1 + 32) options:0];
  if (!v16)
  {
    v17 = SESDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 32) asHexString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to base64 decode %@", &buf, 0xCu);
    }

    v16 = *(a1 + 32);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = sub_100019DE8;
  v45 = sub_100019DF8;
  v46 = 0;
  v39[0] = [v16 DERItem];
  v39[1] = v19;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100024B38;
  v34[3] = &unk_1004C1C58;
  v20 = *(a1 + 40);
  p_buf = &buf;
  v34[4] = v20;
  v35 = v11;
  v36 = v13;
  v37 = *(a1 + 48);
  v21 = DERDecodeSequenceWithBlock(v39, v34);
  v22 = v21;
  if (*(*(&buf + 1) + 40) || v21)
  {
    v27 = SESDefaultLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [*(a1 + 32) asHexString];
      *v40 = 138412290;
      v41 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Invalid mailbox content was %@", v40, 0xCu);
    }

    v29 = *(a1 + 56);
    v30 = *(*(&buf + 1) + 40);
    v31 = v30;
    if (!v30)
    {
      v33 = SESDefaultLogObject();
      v32 = v22;
      v31 = SESCreateAndLogError();
    }

    (*(v29 + 16))(v29, 0, v31);
    if (!v30)
    {
    }

    [SESTapToRadar requestTapToRadar:@"Failure to set mailbox contents" client:@"Hydra", v32];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&buf, 8);
LABEL_25:
}

uint64_t sub_100024B38(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (*a2 == 0xE000000000000002)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v8 = [*(a1 + 48) instance];
    v9 = [v8 identifier];
    v10 = [v11 _applyConfidentialMailboxContents:a2 + 1 secureElement:v12 instanceAID:v9 keyIdentifier:*(a1 + 56)];
    goto LABEL_5;
  }

  if (*a2 == 0xE000000000000001)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) instance];
    v9 = [v8 identifier];
    v10 = [v6 _applyPrivateMailboxContents:a2 + 1 secureElement:v7 instanceAID:v9 keyIdentifier:*(a1 + 56)];
LABEL_5:
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v10;

    goto LABEL_7;
  }

  v8 = SESDefaultLogObject();
  v18 = *a2;
  v15 = SESCreateAndLogError();
  v16 = *(*(a1 + 64) + 8);
  v9 = *(v16 + 40);
  *(v16 + 40) = v15;
LABEL_7:

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    return 0;
  }

  *a3 = 1;
  return 0xFFFFFFFFLL;
}

void sub_1000251F0(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a6;
  v10 = v9;
  if (!a2 || v9)
  {
    v15 = a1[6];
    v16 = SESEnsureError();
    (*(v15 + 16))(v15, 0, v16);
  }

  else
  {
    v11 = a1[4];
    v12 = a1[5];
    v20 = 0;
    v13 = sub_10004BCBC(a2, a5, v11, v12, &v20);
    v10 = v20;
    v14 = a1[6];
    if (v10 || !v13)
    {
      v17 = SESDefaultLogObject();
      [v10 code];
      v19 = a1[4];
      v18 = SESCreateAndLogError();
      (*(v14 + 16))(v14, 0, v18);
    }

    else
    {
      (*(v14 + 16))(a1[6], v13, 0);
    }
  }
}

void sub_100025448(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [@"A000000809434343444B417631" hexStringAsData];
    v10 = 0;
    v9 = sub_10004AB24(v5, v8, &v10);
    v7 = v10;

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10002567C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (!v9 || v5)
  {
    v7 = *(a1 + 40);
    v8 = SESEnsureError();
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    v6 = [@"A000000809434343444B417631" hexStringAsData];
    v5 = sub_10004B1E4(v9, v6, *(a1 + 32));

    (*(*(a1 + 40) + 16))(*(a1 + 40), v5 == 0, v5);
  }
}

void sub_100025960(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v14 = a2;
  v9 = a6;
  if (a5 && v14 && !v9)
  {
    v10 = [a5 appletIdentifier];
    v11 = [*(a1 + 32) hexStringAsData];
    v9 = sub_100047684(v14, v10, v11, *(a1 + 40));

    (*(*(a1 + 48) + 16))(*(a1 + 48), v9 == 0, v9);
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = SESEnsureError();
    (*(v12 + 16))(v12, 0, v13);
  }
}

void sub_100025D88(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v11 && !v15)
  {
    if (*(a1 + 104))
    {
      v17 = [v14 confidentialMailBoxSize];
      v18 = [v17 unsignedIntegerValue];
      v19 = *(a1 + 106) + *(a1 + 104);

      if (v18 < v19)
      {
        v20 = *(a1 + 96);
        v21 = SESDefaultLogObject();
        v22 = *(a1 + 104);
        v23 = *(a1 + 106);
        v24 = [v14 confidentialMailBoxSize];
        v25 = SESCreateAndLogError();
        (*(v20 + 16))(v20, 0, v25);

LABEL_19:
LABEL_20:

        goto LABEL_21;
      }
    }

    v28 = [v14 validateAuthorizedEndpointConfig:*(a1 + 32)];
    if (v28)
    {
      v16 = v28;
      (*(*(a1 + 96) + 16))();
      goto LABEL_9;
    }

    v29 = *(a1 + 40);
    if (v29 && *(a1 + 48))
    {
      v57 = 0;
      v30 = sub_10004B32C(v29, &v57);
      v31 = v57;
      v21 = v31;
      if (!v30 || v31)
      {
        v49 = *(a1 + 96);
        v50 = SESEnsureError();
        (*(v49 + 16))(v49, 0, v50);
      }

      else
      {
        v32 = [*(a1 + 48) ses_sha256];
        v33 = [v32 isEqualToData:v30];

        if (v33)
        {

          goto LABEL_16;
        }

        v51 = *(a1 + 96);
        v50 = SESDefaultLogObject();
        v55 = [*(a1 + 48) asHexString];
        v53 = [v30 asHexString];
        v52 = SESCreateAndLogError();
        (*(v51 + 16))(v51, 0, v52);
      }

      goto LABEL_20;
    }

LABEL_16:
    v34 = *(a1 + 108);
    v35 = [v13 instance];
    v36 = [v35 identifier];
    v37 = [v36 hexStringAsData];
    v38 = [v14 publicKeyIdentifier];
    v39 = *(a1 + 56);
    v40 = *(a1 + 64);
    v41 = *(a1 + 32);
    v42 = *(a1 + 40);
    HIDWORD(v43) = *(a1 + 104);
    LODWORD(v43) = HIDWORD(v43);
    v44 = *(a1 + 72);
    v45 = *(a1 + 80);
    v46 = *(a1 + 88);
    v56 = 0;
    v54 = sub_10004788C(v11, v34, v37, v38, v39, v40, v41, v44, v42, SBYTE6(v43), SHIBYTE(v43), (v43 >> 16) >> 16, v45, v46, &v56);
    v21 = v56;

    v47 = SESDefaultLogObject();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v59 = v21;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Endpoint authorize error %@", buf, 0xCu);
    }

    v48 = *(*(a1 + 96) + 16);
    v24 = v54;
    v48();
    goto LABEL_19;
  }

  v26 = *(a1 + 96);
  v27 = SESEnsureError();
  (*(v26 + 16))(v26, 0, v27);

LABEL_9:
LABEL_21:
}

void sub_10002639C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = v8;
    (*(a1[6] + 16))();
  }

  else
  {
    v10 = [v7 privacyKeyIdentifier];

    if (v10)
    {
      v23[0] = kSecClassKey;
      v22[0] = kSecClass;
      v22[1] = kSecAttrApplicationTag;
      v11 = [v7 privacyKeyIdentifier];
      v23[1] = v11;
      v23[2] = &__kCFBooleanTrue;
      v22[2] = kSecUseDataProtectionKeychain;
      v22[3] = kSecReturnRef;
      v23[3] = &__kCFBooleanTrue;
      v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];

      result = 0;
      v12 = SecItemCopyMatching(v9, &result);
      v13 = result;
      if (!v12 && result && (v14 = CFGetTypeID(result), v14 == SecKeyGetTypeID()))
      {
        v15 = a1[4];
        v16 = a1[5];
        v17 = decryptPrivacyData();
        v18 = 0;
        (*(a1[6] + 16))(a1[6]);
      }

      else
      {
        v19 = a1[6];
        v17 = SESDefaultLogObject();
        v18 = SESCreateAndLogError();
        (*(v19 + 16))(v19);
      }
    }

    else
    {
      v20 = a1[6];
      v9 = SESDefaultLogObject();
      v13 = SESCreateAndLogError();
      (*(v20 + 16))(v20, 0, v13);
    }
  }
}

void sub_100026AFC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (v7)
  {
    v8 = v7;
    (*(a1[6] + 16))();
  }

  else
  {
    v9 = [a3 privacyEncryptionPK];
    if (v9)
    {
      v10 = a1[5];
      v8 = encryptPrivacyData();
      v11 = 0;
      v12 = 0;
      v13 = a1[6];
      if (v8)
      {
        (*(v13 + 16))(v13, 0, v8);
      }

      else
      {
        v17 = [v9 ses_sha256];
        v18 = [SEEndPointPrivacyEncryptResponse responseWithCipherText:v12 ephemeralPublicKeyData:v11 receiverPublicKeyHash:v17];
        (*(v13 + 16))(v13, v18, 0);
      }
    }

    else
    {
      v14 = a1[6];
      v15 = SESDefaultLogObject();
      v19 = a1[4];
      v16 = SESCreateAndLogError();
      (*(v14 + 16))(v14, 0, v16);

      v8 = 0;
    }
  }
}

void sub_100027374(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (!v11 || v15)
  {
    v24 = *(a1 + 56);
    v25 = SESDefaultLogObject();
    [v16 code];
    v26 = SESCreateAndLogError();
    goto LABEL_8;
  }

  if (*(a1 + 64) == 1)
  {
    v17 = [v14 revocationAttestation];

    if (!v17)
    {
      v36 = *(a1 + 56);
      v16 = SESDefaultLogObject();
      v37 = *(a1 + 32);
      v25 = SESCreateAndLogError();
      (*(v36 + 16))(v36, 0, v25);
      goto LABEL_9;
    }
  }

  v18 = [v13 instance];
  v19 = [v18 identifier];
  v20 = [v19 hexStringAsData];
  v21 = [v14 publicKeyIdentifier];
  v16 = sub_100045800(v11, v20, v21);

  if (v16)
  {
    v22 = [*(a1 + 40) database];
    v23 = sub_1003AC964(v22, v11, 1);

    v24 = *(a1 + 56);
    v25 = SESDefaultLogObject();
    [v16 code];
    v26 = SESCreateAndLogError();
LABEL_8:
    v27 = v26;
    (*(v24 + 16))(v24, 0, v26);

LABEL_9:
    goto LABEL_10;
  }

  v28 = [v14 deleteEndPointLongTermPrivacyKey];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100019DE8;
  v45 = sub_100019DF8;
  v46 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000277C4;
  v38[3] = &unk_1004C1688;
  v39 = v13;
  v40 = &v41;
  sub_1003AD2A8(v12, v38);
  v29 = SESDefaultLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v31 = *(a1 + 32);
    v32 = sub_1003AD1F4(*(a1 + 48), v30);
    v33 = v42[5];
    *buf = 138412802;
    v48 = v31;
    v49 = 2112;
    v50 = v32;
    v51 = 2112;
    v52 = v33;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Removed key %@ client %@ error %@", buf, 0x20u);
  }

  v34 = [*(a1 + 40) database];
  v35 = sub_1003AC964(v34, v11, 1);

  [_TtC10seserviced13EndpointStore removeWithEndpoint:v14];
  (*(*(a1 + 56) + 16))(*(a1 + 56), v42[5] == 0);

  _Block_object_dispose(&v41, 8);
LABEL_10:
}

void sub_10002779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000277C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003AD0FC(v3);
  [v4 deleteObject:*(a1 + 32)];

  v5 = sub_1003AD108(v3);

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100027AA4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v60 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    if (!v11 || !v60 || !v12 || !v13)
    {
      v21 = *(a1 + 72);
      v20 = SESDefaultLogObject();
      v22 = SESCreateAndLogError();
      (*(v21 + 16))(v21, 0, v22);

      goto LABEL_10;
    }

    v18 = [v13 revocationAttestation];

    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = [v13 revocationAttestation];
      (*(v19 + 16))(v19, v20, 0);
LABEL_10:

      goto LABEL_11;
    }

    v59 = v13;
    v23 = objc_opt_new();
    v24 = *(a1 + 40);
    if (v24)
    {
      v25 = [v12 signatureVerificationPK];
      v66 = 0;
      v26 = sub_10004A320(v24, v25, &v66);
      v27 = v66;

      if (!v26 || v27)
      {
        v33 = v27;
        v44 = SESDefaultLogObject();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to verify remote termination request!", buf, 2u);
        }

        v45 = SESDefaultLogObject();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = [*(a1 + 40) base64EncodedStringWithOptions:0];
          *buf = 138412290;
          v69 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "RTR %@", buf, 0xCu);
        }

        v47 = SESDefaultLogObject();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = [v12 signatureVerificationPK];
          [v48 asHexString];
          v49 = v23;
          v50 = v12;
          v52 = v51 = v11;
          *buf = 138412290;
          v69 = v52;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "PK %@", buf, 0xCu);

          v11 = v51;
          v12 = v50;
          v23 = v49;
        }

        (*(*(a1 + 72) + 16))();
        v53 = [v59 readerInfo];
        v54 = [v59 bleAddress];
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 1;
        }

        sub_10004CE08(SESDAnalyticsLogger, 2, v53, v55, 1);

        v34 = 0;
        goto LABEL_39;
      }

      v58 = v12;
      v28 = v11;
      [v23 addObjectsFromArray:v26];
    }

    else
    {
      v58 = v12;
      v28 = v11;
      v29 = [*(a1 + 32) hexStringAsData];
      [v23 addObject:v29];
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v57 = v23;
    v30 = [NSSet setWithArray:v23];
    v31 = [v30 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = 0;
      v35 = *v63;
      do
      {
        v36 = 0;
        v37 = v34;
        do
        {
          if (*v63 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v62 + 1) + 8 * v36);
          v39 = *(a1 + 48);
          v40 = *(a1 + 56);
          v41 = *(a1 + 64);
          v61 = 0;
          v34 = [v39 revokeRemoteTerminationRequestEndPoints:v28 handle:v60 identifier:v38 taskID:v40 clientInfo:v41 outError:&v61];
          v42 = v61;

          if (v42)
          {
            v43 = v42;

            v33 = v43;
          }

          v36 = v36 + 1;
          v37 = v34;
        }

        while (v32 != v36);
        v32 = [v30 countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    (*(*(a1 + 72) + 16))();
    v11 = v28;
    v23 = v57;
    v12 = v58;
LABEL_39:

    v14 = 0;
    v13 = v59;
    goto LABEL_11;
  }

  v15 = *(a1 + 72);
  v16 = SESDefaultLogObject();
  [v14 code];
  v56 = *(a1 + 32);
  v17 = SESCreateAndLogError();
  (*(v15 + 16))(v15, 0, v17);

LABEL_11:
}