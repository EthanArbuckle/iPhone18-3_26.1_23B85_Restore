void sub_1000017A4(FILE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

  fprintf(a1, "%s\n", [v11 UTF8String]);
}

void sub_10000182C(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = objc_alloc_init(NSMutableDictionary);
  sub_10000195C(v6, v5, a3);

  v7 = v6;
  v8 = v7;
  if (a2)
  {
    v15 = 0;
    v9 = [NSJSONSerialization dataWithJSONObject:v7 options:3 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v9)
    {
      v12 = [v9 bytes];
      v13 = [v9 length];
      fwrite(v12, v13, 1uLL, __stdoutp);
      fputc(10, __stdoutp);
    }

    else
    {
      v14 = [v10 localizedDescription];
      NSLog(@"error: %@", v14);
    }
  }

  else
  {
    sub_100001AF8(v7, 0);
  }
}

void sub_10000195C(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * v11);
        v14 = [v6 objectForKeyedSubscript:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
        }

        else
        {
          v15 = [NSString stringWithFormat:@"%@", v13];
        }

        v9 = v15;

        v16 = sub_10000366C(v14, a3);
        [v5 setObject:v16 forKeyedSubscript:v9];

        v11 = v11 + 1;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

void sub_100001AF8(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:{v11, v13}];
        sub_100003410(v11, v12, a2);
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

id sub_100001C54(uint64_t a1)
{
  IsICDP = PCSIdentitySetIsICDP();
  IsICDPNetwork = PCSIdentitySetIsICDPNetwork();
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v5 forKeyedSubscript:@"all_status"];
  v6 = [NSNumber numberWithBool:IsICDP];
  [v5 setObject:v6 forKeyedSubscript:@"icdp_status"];

  v7 = [NSNumber numberWithBool:IsICDPNetwork];
  [v5 setObject:v7 forKeyedSubscript:@"icdp_status_network"];

  if (IsICDP)
  {
    v35 = 0;
    v8 = [NSNumber numberWithBool:PCSIdentityiCDPWalrus()];
    [v5 setObject:v8 forKeyedSubscript:@"icdp_status_w"];

    v9 = [NSNumber numberWithBool:PCSIdentityiCDPPlesio()];
    [v5 setObject:v9 forKeyedSubscript:@"icdp_status_2"];
  }

  v10 = [NSNumber numberWithUnsignedInt:PCSReportManateeStatus()];
  [v5 setObject:v10 forKeyedSubscript:@"CKKS_Engram"];

  v11 = [NSNumber numberWithUnsignedInt:PCSReportManateeStatus()];
  [v5 setObject:v11 forKeyedSubscript:@"CKKS_Manatee"];

  v12 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v12 forKeyedSubscript:@"current_identities"];
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_1000020C0;
  v32 = &unk_1000187F0;
  v34 = a1;
  v13 = v12;
  v33 = v13;
  PCSServiceItemsGetEachName();
  v14 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v14 forKeyedSubscript:@"current_identity_pointers"];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100002198;
  v26 = &unk_1000187F0;
  v28 = a1;
  v15 = v14;
  v27 = v15;
  PCSServiceItemsGetEachName();
  v16 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v16 forKeyedSubscript:@"identities"];
  v17 = PCSIdentitySetCopyIdentities();
  if (v17)
  {
    v18 = v17;
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_1000022E0;
    context[3] = &unk_100018818;
    v21 = v16;
    v22 = a1;
    CFDictionaryApplyFunction(v18, sub_1000038C4, context);
    CFRelease(v18);
  }

  return v4;
}

void sub_1000020C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = PCSIdentitySetCopyCurrentIdentityWithError();
  if (v5)
  {
    v6 = v5;
    v7 = [NSString stringWithFormat:@"%@", v5];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:a2];

    CFRelease(v6);
  }

  else
  {
    [*(a1 + 32) setObject:@"missing" forKeyedSubscript:a2];
  }
}

void sub_100002198(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = *(a1 + 40);
  v6 = PCSIdentitySetCopyCurrentIdentityPointer();
  v7 = v6;
  if (v6)
  {
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@", [v6 identity]);
    [v4 setObject:v8 forKeyedSubscript:@"service"];
    v9 = [v7 currentItemPointerModificationTime];
    v10 = [v9 description];
    [v4 setObject:v10 forKeyedSubscript:@"currentItemModificationTime"];
  }

  [*(a1 + 32) setObject:v4 forKeyedSubscript:a2];
}

void sub_1000022E0(uint64_t a1, uint64_t a2)
{
  context = objc_autoreleasePoolPush();
  v4 = _PCSIdentityCopyBAT();
  ServiceName = PCSIdentityGetServiceName();
  v6 = PCSIdentityCopyCircleFingerPrint();
  KeyID = PCSIdentityGetKeyID();
  if (!ServiceName)
  {
    ServiceName = [NSString stringWithFormat:@"UNKNOWN-%d", PCSIdentityGetServiceID()];
  }

  v8 = [*(a1 + 32) objectForKey:ServiceName];
  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setObject:v8 forKeyedSubscript:ServiceName];
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSNumber numberWithInteger:PCSIdentityGetServiceID()];
  [v9 setObject:v10 forKeyedSubscript:@"service_id"];

  [v9 setObject:a2 forKeyedSubscript:@"public_key"];
  CFDataGetBytePtr(KeyID);
  CFDataGetLength(KeyID);
  v11 = _PCSCreateHexString();
  [v9 setObject:v11 forKeyedSubscript:@"key_id"];

  v12 = PCSIdentityWebSafePublicKeyID();
  [v9 setObject:v12 forKeyedSubscript:@"key_id_websafe"];

  v13 = *(a1 + 40);
  v14 = [NSNumber numberWithBool:_PCSIdentitySetIsCurrentIdentityPreferCache()];
  [v9 setObject:v14 forKeyedSubscript:@"current"];

  v15 = [NSNumber numberWithBool:_PCSIdentityIsManatee()];
  [v9 setObject:v15 forKeyedSubscript:@"manatee"];

  v16 = [NSNumber numberWithBool:PCSIdentityIsFullManatee()];
  [v9 setObject:v16 forKeyedSubscript:@"manatee_full"];

  if (v6)
  {
    v17 = [v6 base64EncodedStringWithOptions:0];
    [v9 setObject:v17 forKeyedSubscript:@"circleFingerPrint"];
  }

  if (v4)
  {
    [v9 setObject:v4 forKeyedSubscript:@"build_time"];
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (!_PCSIdentityValidate())
  {
    [v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"key_valid"];
LABEL_11:
    [v9 setObject:Mutable forKeyedSubscript:@"key_valid_status"];
    goto LABEL_12;
  }

  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"key_valid"];
  if (CFStringGetLength(Mutable) > 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  [v8 addObject:v9];

  objc_autoreleasePoolPop(context);
}

id sub_100002644()
{
  IsICDP = PCSIdentitySetIsICDP();
  v0 = PCSIdentitySetCopyIdentities();
  v1 = &PCSAccountDisableWalrus_ptr;
  v2 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = v0;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v25;
    v22 = v3;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        [v3 objectForKeyedSubscript:v7];

        ServiceID = PCSIdentityGetServiceID();
        if (ServiceID)
        {
          v9 = [NSString stringWithFormat:@"%d", ServiceID];
          v10 = [v2 objectForKeyedSubscript:v9];
          if (!v10)
          {
            v10 = [v1[237] dictionary];
          }

          v11 = [v1[237] dictionary];
          if (_PCSIdentityIsManatee())
          {
            [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"manatee"];
            if ((PCSIdentityIsFullManatee() & 1) == 0)
            {
              [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"fake-manatee"];
            }
          }

          else
          {
            v12 = v5;
            v13 = v1;
            v14 = v2;
            v15 = [NSNumber numberWithBool:_PCSIdentitySetIsCurrentIdentityPreferCache()];
            [v11 setObject:v15 forKeyedSubscript:@"current"];

            v2 = v14;
            v1 = v13;
            v5 = v12;
            v3 = v22;
          }

          v16 = _PCSIdentityCopyBAT();
          if (v16)
          {
            [v11 setObject:v16 forKeyedSubscript:@"bat"];
          }

          [v10 setObject:v11 forKeyedSubscript:v7];
          [v2 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v5);
  }

  v28[0] = @"iCDP";
  [NSNumber numberWithBool:IsICDP];
  v18 = v17 = v2;
  v28[1] = @"services";
  v29[0] = v18;
  v29[1] = v17;
  v19 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v19;
}

id sub_100002974()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  if (OctagonPlatformSupportsSOS())
  {
    v18 = 0;
    v1 = SOSCCThisDeviceIsInCircle() + 1;
    if (v1 > 4)
    {
      v2 = @"unknown";
    }

    else
    {
      v2 = off_1000188F8[v1];
    }

    [v0 setObject:v2 forKeyedSubscript:@"circle_status"];
    v20[0] = kSOSViewPCSMasterKey;
    v20[1] = kSOSViewPCSiCloudDrive;
    v20[2] = kSOSViewPCSPhotos;
    v20[3] = kSOSViewPCSCloudKit;
    v20[4] = kSOSViewPCSEscrow;
    v20[5] = kSOSViewPCSFDE;
    v20[6] = kSOSViewPCSMailDrop;
    v20[7] = kSOSViewPCSiCloudBackup;
    v20[8] = kSOSViewPCSNotes;
    v20[9] = kSOSViewPCSiMessage;
    v20[10] = kSOSViewPCSFeldspar;
    v3 = [NSArray arrayWithObjects:v20 count:11];
    v4 = objc_alloc_init(NSMutableDictionary);
    [v0 setObject:v4 forKeyedSubscript:@"view_status"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = SOSCCView() - 1;
          v12 = @"unknown";
          if (v11 <= 3)
          {
            v12 = off_100018920[v11];
          }

          [v4 setObject:v12 forKeyedSubscript:{v10, v14}];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }
  }

  return v0;
}

id sub_100002BF4()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  v1 = dispatch_semaphore_create(0);
  v6 = v0;
  v7 = v1;
  v2 = v1;
  PCSKeySyncingGetAllClients();
  v3 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v2, v3);
  v4 = v6;

  return v6;
}

void sub_100002CE0(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:@"clients"];
  }

  if (v5)
  {
    v6 = [v5 description];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"clients_error"];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

id sub_100002D8C(const void *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFDictionaryGetTypeID())
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100002E6C;
      v5[3] = &unk_100018818;
      v6 = v2;
      v7 = a1;
      CFDictionaryApplyFunction(a1, sub_1000038C4, v5);
    }
  }

  return v2;
}

void sub_100002E6C(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = objc_alloc_init(NSMutableArray);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:a2];
  v7 = *(a1 + 40);
  if (!v7 || (v8 = CFGetTypeID(v7), v8 != CFDictionaryGetTypeID()))
  {
    [NSString stringWithFormat:@"ERROR: %@ is not a dictionary", a3];
    v12 = LABEL_8:;
    [v6 addObject:v12];

    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(a3, kPCSSecureBackupCFKeyRegistryPublicIdentities);
  v10 = Value;
  if (!Value || (v11 = CFGetTypeID(Value), v11 != CFArrayGetTypeID()))
  {
    [NSString stringWithFormat:@"ERROR: %@ is not an array", v10];
    goto LABEL_8;
  }

  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_100002FE4;
  context[3] = &unk_100018868;
  v14 = v6;
  v15.length = CFArrayGetCount(v10);
  v15.location = 0;
  CFArrayApplyFunction(v10, v15, sub_1000038E0, context);

LABEL_9:
}

void sub_100002FE4(uint64_t a1)
{
  v2 = PCSPublicIdentityCreateWithPublicKeyInfo();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v2;
    v5 = [NSString stringWithFormat:@"%d/%@", PCSPublicIdentityGetServiceID(), v2];
    [v3 addObject:v5];

    CFRelease(v4);
  }

  else
  {
    v6 = [NSString stringWithFormat:@"ERROR: PCSPublicIdentityCreateWithPublicKeyInfo error: %@", 0];
    [v3 addObject:v6];
  }
}

_UNKNOWN **sub_1000030B4()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000325C;
  v10 = sub_10000326C;
  v11 = 0;
  v0 = dispatch_semaphore_create(0);
  PCSRestoreCKBackupWithCompletion();
  v1 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v0, v1))
  {
    v2 = &off_10001A090;
  }

  else
  {
    v3 = [NSNumber numberWithBool:PCSReportKeyRollPending(), _NSConcreteStackBlock, 3221225472, sub_100003274, &unk_100018890];
    [v7[5] setObject:v3 forKeyedSubscript:@"rollPending"];

    v2 = v7[5];
  }

  v4 = v2;

  _Block_object_dispose(&v6, 8);

  return v4;
}

void sub_100003244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000325C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = +[NSMutableDictionary dictionary];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(*(a1 + 40) + 8) + 40);
  v19[0] = @"RecoveryIssues";
  v14 = [NSNumber numberWithUnsignedInt:a2];
  v20[0] = v14;
  v19[1] = @"RecoveredToIdentitySet";
  v15 = [NSNumber numberWithUnsignedInt:a3];
  v20[1] = v15;
  v19[2] = @"AlreadyInRecoverySet";
  v16 = [NSNumber numberWithUnsignedInt:a4];
  v20[2] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
  [v13 addEntriesFromDictionary:v17];

  if (v9)
  {
    v18 = [v9 description];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v18 forKeyedSubscript:@"error"];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100003410(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3 == 1)
    {
      sub_1000017A4(__stdoutp, @"\n%*s%@ -", v7, v8, v9, v10, v11, v12, 4);
      sub_1000017A4(__stdoutp, @"%*s------------------------", v25, v26, v27, v28, v29, v30, 4);
    }

    else if (a3)
    {
      sub_1000017A4(__stdoutp, @"%*s%@ -", v7, v8, v9, v10, v11, v12, (4 * a3));
    }

    else
    {
      sub_1000017A4(__stdoutp, @"\n%*s%@ -", v7, v8, v9, v10, v11, v12, 0);
      sub_1000017A4(__stdoutp, @"%*s========================", v13, v14, v15, v16, v17, v18, 0);
    }

    sub_100001AF8(v6, (a3 + 1));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_1000017A4(__stdoutp, @"%*s%@ -", v19, v20, v21, v22, v23, v24, (4 * a3));
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000035F0;
      v31[3] = &unk_1000188B0;
      v32 = a3 + 1;
      [v6 enumerateObjectsUsingBlock:v31];
    }

    else
    {
      sub_1000017A4(__stdoutp, @"%*s%@: %@", v19, v20, v21, v22, v23, v24, (4 * a3));
    }
  }
}

void sub_1000035F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  sub_100003410(v6, v5, *(a1 + 32));
}

id sub_10000366C(void *a1, int a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    sub_10000195C();

    v3 = v4;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000385C;
    v9[3] = &unk_1000188D8;
    v10 = v3;
    v11 = a2;
    [v5 enumerateObjectsUsingBlock:v9];

    goto LABEL_13;
  }

  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 base64EncodedStringWithOptions:0];
LABEL_12:
      v7 = v6;

      v3 = v7;
      goto LABEL_13;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [NSString stringWithFormat:@"%@", v3];
        goto LABEL_12;
      }
    }
  }

LABEL_13:

  return v3;
}

void sub_10000385C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000366C(a2, *(a1 + 40));
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
}

uint64_t start(int a1, char **a2)
{
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v4 = 0;
  v76 = 0;
  v77 = 0;
  v5 = 0;
  v6 = 0;
  value = 0;
  v90 = 0;
  optind = 0;
  for (i = 2; ; i = 1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = getopt_long(a1, a2, "CDPdfjOsDRrc:hp:s:UuvwZy", &off_10001D530, 0);
          if (v8 <= 81)
          {
            break;
          }

          switch(v8)
          {
            case 'Z':
              LOBYTE(v78) = 1;
              continue;
            case '[':
            case '\\':
            case ']':
            case '^':
            case '_':
            case 'a':
            case 'b':
            case 'e':
            case 'g':
            case 'i':
            case 'k':
            case 'l':
            case 'm':
            case 'n':
            case 'o':
            case 'q':
            case 't':
            case 'x':
              goto LABEL_87;
            case 'c':
              v11 = [NSString stringWithUTF8String:optarg];

              v81 = v11;
              continue;
            case 'd':
              LOBYTE(v79) = 1;
              continue;
            case 'f':
              LOBYTE(v77) = 1;
              continue;
            case 'h':
              i = 3;
              continue;
            case 'j':
              BYTE4(v77) = 1;
              continue;
            case 'p':
              v10 = [NSString stringWithUTF8String:optarg];

              value = v10;
              continue;
            case 'r':
              v76 = 1;
              continue;
            case 's':
              v4 = 1;
              if (optarg)
              {
                v9 = [NSString stringWithUTF8String:?];

                v80 = v9;
              }

              continue;
            case 'u':
              continue;
            case 'v':
              BYTE4(v78) = 1;
              continue;
            case 'w':
              BYTE4(v79) = 1;
              continue;
            case 'y':
              v6 = 1;
              continue;
            default:
              if (v8 == 82)
              {
                i = 5;
              }

              else if (v8 != 85)
              {
                goto LABEL_87;
              }

              break;
          }
        }

        if (v8 <= 78)
        {
          break;
        }

        if (v8 == 79)
        {
          i = 2;
        }

        else
        {
          if (v8 != 80)
          {
            goto LABEL_87;
          }

          v5 = 1;
        }
      }

      if (v8 != 67)
      {
        break;
      }

      i = 4;
    }

    if (v8 != 68)
    {
      break;
    }
  }

  if (v8 != -1)
  {
LABEL_87:
    errx(1, "unknown command: %c", v8);
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 1;
  if (v5)
  {
    v12 = +[PCSAccountsModel accountForCurrentPersona];
    v13 = v12;
    if (!v12)
    {
      errx(1, "no accounts");
    }

    v14 = [v12 aa_personID];
    v15 = v14;
    if (!v14)
    {
      errx(1, "no dsid");
    }

    v95 = kPCSSetupDSID;
    v96 = v14;
    v16 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v17 = PCSIdentitySetCreate();
    if (!v17)
    {
      errx(1, "didn't find any identites in keychain");
    }

    v18 = sub_100002644();
    if (!v18)
    {
      errx(1, "no status");
    }

    CFRelease(v17);
    v85 = 0;
    v19 = [NSPropertyListSerialization dataWithPropertyList:v18 format:100 options:0 error:&v85];
    v20 = v85;
    if (!v19)
    {
      [NSString stringWithFormat:@"failed to make plist: %@", v20];
      v74 = [objc_claimAutoreleasedReturnValue() UTF8String];
      errx(1, "%s", v74);
    }

    v21 = v19;
    v22 = [v19 bytes];
    v23 = [v19 length];
    fwrite(v22, v23, 1uLL, __stdoutp);
    *(v87 + 6) = 0;

    goto LABEL_44;
  }

  if (v4)
  {
    v84 = dispatch_semaphore_create(0);
    PCSSyncKeyRegistryWithServiceName();
    dispatch_semaphore_wait(v84, 0xFFFFFFFFFFFFFFFFLL);

LABEL_40:
    v13 = 0;
    goto LABEL_44;
  }

  if (v6)
  {
    PCSKeySyncingTriggerDaily();
    v13 = 0;
LABEL_43:
    *(v87 + 6) = 0;
    goto LABEL_44;
  }

  if ((v79 & 0x100000000) != 0)
  {
    v83 = dispatch_semaphore_create(0);
    PCSTriggerWatchSyncing();
    dispatch_semaphore_wait(v83, 0xFFFFFFFFFFFFFFFFLL);
    *(v87 + 6) = 0;

    goto LABEL_40;
  }

  if (v79)
  {
    v26 = +[PCSAccountsModel accountForCurrentPersona];
    v13 = v26;
    if (v26)
    {
      v27 = [v26 aa_personID];
    }

    else
    {
      warnx("Failed to a configured account, will delete all PCS data");
      v27 = 0;
    }

    *(v87 + 6) = 0;
    if ((__PCSDeleteFromKeychainICDP() & 1) == 0)
    {
      v46 = [NSString stringWithFormat:@"Failed to delete from icloud keychain: %@", v90];
      v47 = v46;
      warnx("%s", [v46 UTF8String]);

      v48 = v90;
      if (v90)
      {
        v90 = 0;
        CFRelease(v48);
      }

      *(v87 + 6) = 1;
    }

    if ((__PCSDeleteFromKeychain() & 1) == 0)
    {
      v49 = [NSString stringWithFormat:@"Failed to delete from keychain: %@", v90];
      v50 = v49;
      warnx("%s", [v49 UTF8String]);

      v51 = v90;
      if (v90)
      {
        v90 = 0;
        CFRelease(v51);
      }

      *(v87 + 6) = 1;
    }

    if ((__PCSDeleteKeyfile() & 1) == 0)
    {
      v52 = [NSString stringWithFormat:@"Failed to delete from keyfile: %@", v90];
      v53 = v52;
      warnx("%s", [v52 UTF8String]);

      v54 = v90;
      if (v90)
      {
        v90 = 0;
        CFRelease(v54);
      }

      *(v87 + 6) = 1;
    }

    v55 = [[PCSUserRegistry alloc] initWithBackup:0];
    [(PCSUserRegistry *)v55 clearCloudKitCache];

    goto LABEL_44;
  }

  if (v81)
  {
    v28 = +[PCSAccountsModel accountForCurrentPersona];
    if (!value)
    {
      errx(1, "password missing");
    }

    v13 = v28;
    v29 = __stdoutp;
    v30 = [v28 aa_personID];
    sub_1000017A4(v29, @"converting dsid %@\n", v31, v32, v33, v34, v35, v36, v30);

    v37 = [v13 username];
    v38 = [v13 aa_personID];
    sub_10000E7EC(i, v37, value, v38, BYTE4(v78) & 1);

    goto LABEL_43;
  }

  if (v78)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v40 = Mutable;
    if (!Mutable)
    {
      errx(1, "out of memory");
    }

    if (value)
    {
      CFDictionarySetValue(Mutable, kPCSSetupPassword, value);
    }

    if (v77)
    {
      CFDictionarySetValue(v40, kPCSSetupForceUpdate, kCFBooleanTrue);
    }

    v13 = +[PCSAccountsModel accountForCurrentPersona];
    v41 = kPCSSetupUsername;
    v42 = [v13 username];
    CFDictionarySetValue(v40, v41, v42);

    v43 = kPCSSetupDSID;
    v44 = [v13 aa_personID];
    CFDictionarySetValue(v40, v43, v44);

    if ((PCSIdentitySynchronizeKeys() & 1) == 0)
    {
      [NSString stringWithFormat:@"PCSIdentitySynchronizeKeys: %@", v90];
      v75 = [objc_claimAutoreleasedReturnValue() UTF8String];
      errx(1, "%s", v75);
    }

    CFRelease(v40);
    v45 = v90;
    if (v90)
    {
      v90 = 0;
      CFRelease(v45);
    }

    goto LABEL_43;
  }

  if (v76)
  {
    v13 = +[PCSAccountsModel accountForCurrentPersona];
    v56 = [v13 aa_personID];
    v57 = v56;
    if (!v56)
    {
      errx(1, "no iCloud primary account");
    }

    v93 = kPCSSetupDSID;
    v94 = v56;
    v58 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v59 = __PCSCopyStingrayInfo();
    v60 = v59;
    if (!v59)
    {
      errx(1, "metadata");
    }

    v61 = [v59 objectForKeyedSubscript:kSecureBackupStingrayMetadataKey];
    v62 = [v61 objectForKeyedSubscript:kSecureBackupClientMetadataKey];
    v63 = [v62 objectForKeyedSubscript:kPCSSecureBackupCFSecureBackupKeyRegistry];

    v64 = sub_100002D8C(v63);
    sub_100001C4C(v64, BYTE4(v77) & 1);

    *(v87 + 6) = 0;
    goto LABEL_44;
  }

  v65 = +[PCSAccountsModel accountForCurrentPersona];
  v13 = v65;
  if (!v65)
  {
    warnx("no accounts");
    goto LABEL_84;
  }

  v66 = [v65 aa_personID];
  if (!v66)
  {
    warnx("no dsid");
LABEL_84:
    v66 = kPCSSetupDSIDAny;
  }

  v91 = kPCSSetupDSID;
  v92 = v66;
  v67 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
  v68 = PCSIdentitySetCreate();
  if (!v68)
  {
    errx(1, "didn't find any identites in keychain");
  }

  v69 = objc_alloc_init(NSMutableDictionary);
  v70 = sub_100001C54(v68);
  [v69 setObject:v70 forKeyedSubscript:@"status"];

  CFRelease(v68);
  v71 = sub_100002974();
  [v69 setObject:v71 forKeyedSubscript:@"status_keychain"];

  v72 = sub_100002BF4();
  [v69 setObject:v72 forKeyedSubscript:@"status_keysync"];

  v73 = sub_1000030B4();
  [v69 setObject:v73 forKeyedSubscript:@"status_messages"];

  sub_100001C4C(v69, BYTE4(v77) & 1);
  *(v87 + 6) = 0;

LABEL_44:
  v24 = *(v87 + 6);
  _Block_object_dispose(&v86, 8);

  return v24;
}

intptr_t sub_100004608(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    sub_1000017A4(__stderrp, @"error: %@", a3, a4, a5, a6, a7, a8, a3);
  }

  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

void sub_100004A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004AA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained syncUserRegistry];
}

void sub_100004AEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setupSubscriptions];
}

void sub_100004E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_100004E50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004E68(uint64_t a1)
{
  [*(a1 + 32) _onqueueSaveUserRegistryStats];
  [*(a1 + 32) setStats_dirty:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100004F00(id a1)
{
  v1 = objc_alloc_init(CKOperationConfiguration);
  v2 = qword_10001D758;
  qword_10001D758 = v1;

  [qword_10001D758 setTimeoutIntervalForResource:120.0];
  v3 = qword_10001D758;

  [v3 setIsCloudKitSupportOperation:1];
}

void sub_100004FE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 accountStatus];
  v8 = [v6 deviceToDeviceEncryptionAvailability];

  v9 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "accountInfoWithCompletionHandler: %d/%d error: %@", v16, 0x18u);
  }

  if (v7 == 1 && (v8 & 1) != 0)
  {
    v10 = [*(a1 + 32) stats];
    v11 = [v10 lastfetchRecordZoneChangesAtStart] + 86400;
    v12 = time(0);

    if (v11 <= v12)
    {
      v13 = [*(a1 + 32) oslog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting to sync", v16, 2u);
      }

      v14 = [*(a1 + 32) syncUserRegistry];
    }
  }

  else if (v7 == 3)
  {
    v15 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stoping syncing", v16, 2u);
    }
  }
}

void sub_1000053C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000053E0(uint64_t a1)
{
  v2 = [*(a1 + 32) container];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000549C;
  v3[3] = &unk_100018A50;
  objc_copyWeak(&v4, (a1 + 40));
  [v2 serverPreferredPushEnvironmentWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
}

void sub_10000549C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [APSConnection alloc];
  v5 = APSConnectionOverrideNamedDelegatePort;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained queue];
  v8 = [v4 initWithEnvironmentName:v3 namedDelegatePort:v5 queue:v7];

  v9 = qword_10001D768;
  qword_10001D768 = v8;

  v10 = objc_loadWeakRetained((a1 + 32));
  [qword_10001D768 setDelegate:v10];

  v11 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.protectedcloudstorage.protectedcloudkeysyncing"];
  v13 = v11;
  v12 = [NSArray arrayWithObjects:&v13 count:1];
  [qword_10001D768 _setEnabledTopics:v12];
}

void sub_100005A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005A94(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 getConfigData:@"doneSubscription"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100005B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained oslog];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Couldn't create database subscription; syncing is severely degraded: %@", buf, 0xCu);
    }

    v9 = [WeakRetained queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005D6C;
    v11[3] = &unk_100018970;
    v11[4] = WeakRetained;
    dispatch_sync(v9, v11);

    [WeakRetained checkErrorForRetryPause:v5];
    v10 = [WeakRetained subscribeAction];
    [v10 trigger];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "subscription completed", buf, 2u);
    }

    v10 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005CEC;
    block[3] = &unk_100018970;
    block[4] = WeakRetained;
    dispatch_sync(v10, block);
  }
}

void sub_100005CEC(uint64_t a1)
{
  v2 = [*(a1 + 32) userdb];
  v1 = [NSData dataWithBytes:"done" length:4];
  [v2 replaceConfigRecord:@"doneSubscription" data:v1];
}

void sub_100005D6C(uint64_t a1)
{
  v1 = [*(a1 + 32) userdb];
  [v1 deleteRecordID:@"doneSubscription"];
}

void sub_100006000(uint64_t a1)
{
  [*(a1 + 32) _onqueueDeleteServerChangeToken:@"serverChangeToken"];
  [*(a1 + 32) _onqueueDeleteServerChangeToken:@"MBserverChangeToken"];
  v2 = [*(a1 + 32) userdb];
  [v2 deleteRecordID:@"doneSubscription"];
}

void sub_100006078(uint64_t a1)
{
  v2 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Creating resyncing operation, finishing with %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) createPendingSyncOperation:*(a1 + 40)];
  [*(a1 + 32) setCurrentSyncOperations:v4];
  v5 = [*(a1 + 32) mainOperationQueue];
  v6 = [v4 actualOperation];
  [v5 addOperation:v6];
}

void sub_100006638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 144));
  _Unwind_Resume(a1);
}

void sub_100006690(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained oslog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 recordName];
      v14 = [v7 zoneID];
      v20 = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received new record(%@) for: %@", &v20, 0x16u);
    }

    if (v9)
    {
      v15 = [v11 oslog];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Got CloudKit error: %@", &v20, 0xCu);
      }

LABEL_11:

      goto LABEL_12;
    }

    v16 = [v7 zoneID];
    v17 = [v11 mobileBackupRecordZoneID];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      v15 = [v11 oslog];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v7 zoneID];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "got update for unknown zone: %@", &v20, 0xCu);
      }

      goto LABEL_11;
    }

    [v11 saveEscrowChange:v8];
  }

LABEL_12:
}

void sub_1000068CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 recordName];
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Record deleted: %@", &v13, 0xCu);
    }

    v8 = [v3 zoneID];
    v9 = [v5 mobileBackupRecordZoneID];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      [v5 deleteEscrowID:v3];
    }

    else
    {
      v11 = [v5 oslog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v3 zoneID];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "got delete for unknown zone: %@", &v13, 0xCu);
      }
    }
  }
}

void sub_100006A68(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    if (v11)
    {
      v14 = [v11 domain];
      v15 = [v14 isEqualToString:CKErrorDomain];

      v16 = [v13 oslog];
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v22 = 138412546;
          v23 = v11;
          v24 = 2112;
          v25 = v9;
          v18 = "Got CloudKit error while fetching: %@ for zone:%@";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, &v22, 0x16u);
        }
      }

      else if (v17)
      {
        v22 = 138412546;
        v23 = v11;
        v24 = 2112;
        v25 = v9;
        v18 = "Got other error: %@for zone:%@";
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    v19 = [WeakRetained oslog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Finished fetching changes for %@ with change token %@", &v22, 0x16u);
    }

    if (v10)
    {
      v20 = [v13 mobileBackupRecordZoneID];
      v21 = [v9 isEqual:v20];

      if (v21)
      {
        [v13 saveServerChangeToken:v10 forKey:@"MBserverChangeToken"];
      }
    }
  }

LABEL_15:
}

void sub_100006C74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [WeakRetained oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetchRecordzoneChangesCompletionBlock error: %@", buf, 0xCu);
    }
  }

  v7 = [v5 stats];
  [v7 setFetchRecordZoneChanges:{objc_msgSend(v7, "fetchRecordZoneChanges") + 1}];

  [v5 flushStats];
  v8 = [v5 oslog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished fetching changes with error: %@", buf, 0xCu);
  }

  [*(a1 + 32) setError:v3];
  v9 = [v5 mainOperationQueue];
  [v9 addOperation:*(a1 + 32)];

  if (!v3)
  {
    v10 = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006E58;
    block[3] = &unk_100018970;
    block[4] = v5;
    dispatch_sync(v10, block);
  }
}

id sub_100006E58(uint64_t a1)
{
  v2 = time(0);
  v3 = [*(a1 + 32) stats];
  [v3 setLastfetchRecordZoneChangesAtStart:v2];

  v4 = *(a1 + 32);

  return [v4 _onqueueSaveUserRegistryStats];
}

void sub_1000070FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007120(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingSyncOperations];

  v3 = [*(a1 + 32) oslog];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) pendingSyncOperations];
      v6 = [v5 finishOperation];
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Returning pending syncing operation: %@", &v24, 0xCu);
    }

    v7 = [*(a1 + 32) pendingSyncOperations];
    v8 = [v7 finishOperation];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    if (v4)
    {
      v11 = [*(a1 + 32) currentSyncOperations];
      v24 = 138412290;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating new syncing operation, after %@", &v24, 0xCu);
    }

    v12 = [*(a1 + 32) createPendingSyncOperation:0];
    [*(a1 + 32) setPendingSyncOperations:v12];

    v13 = [*(a1 + 32) currentSyncOperations];
    v14 = [v13 finishOperation];

    if (v14)
    {
      v15 = [*(a1 + 32) pendingSyncOperations];
      v16 = [v15 actualOperation];
      v17 = [*(a1 + 32) currentSyncOperations];
      v18 = [v17 finishOperation];
      [v16 addDependency:v18];
    }

    v19 = [*(a1 + 32) pendingSyncOperations];
    v20 = [v19 finishOperation];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v7 = [*(a1 + 32) mainOperationQueue];
    v10 = [*(a1 + 32) pendingSyncOperations];
    v23 = [v10 actualOperation];
    [v7 addOperation:v23];
  }
}

void sub_100007694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20)
{
  _Block_object_dispose(&a20, 8);
  objc_destroyWeak((v20 - 104));
  _Unwind_Resume(a1);
}

void sub_10000770C(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 oslog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning syncing operation %@", &buf, 0xCu);
  }

  if (*(a1 + 64) == 1)
  {
    v5 = [v3 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000080CC;
    block[3] = &unk_100018970;
    block[4] = v3;
    dispatch_sync(v5, block);

    v6 = *(a1 + 32);
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_1000081BC;
    v62[3] = &unk_100018BB8;
    objc_copyWeak(&v63, (a1 + 56));
    objc_copyWeak(&v64, &location);
    objc_copyWeak(&v65, (a1 + 48));
    v62[4] = *(a1 + 40);
    [v6 addExecutionBlock:v62];
    objc_destroyWeak(&v65);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v63);
  }

  v7 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v77 = 0x3032000000;
  v78 = sub_100004E50;
  v79 = sub_100004E60;
  v80 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100004E50;
  v60 = sub_100004E60;
  v61 = 0;
  v8 = [v3 container];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000082D8;
  v52[3] = &unk_100018BE0;
  p_buf = &buf;
  v55 = &v56;
  v9 = v7;
  v53 = v9;
  [v8 accountInfoWithCompletionHandler:v52];

  v10 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    v11 = [NSError errorWithDomain:kPCSErrorDomain code:75 userInfo:0];
    [*(a1 + 32) setError:v11];

    v12 = [v3 mainOperationQueue];
    [v12 addOperation:*(a1 + 32)];
    goto LABEL_34;
  }

  if ([*(*(&buf + 1) + 40) accountStatus] == 1)
  {
    if ([*(*(&buf + 1) + 40) hasValidCredentials])
    {
      v13 = [v3 userdb];
      v12 = [v13 dsid];

      if (!v12 || ([v3 accounts], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "dsid"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v12, "isEqualToString:", v15), v15, v14, (v16 & 1) == 0))
      {
        v17 = [v3 accounts];
        v18 = [v17 dsid];

        if (!v18)
        {
          v39 = [v3 oslog];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *v74 = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No DSID available. Quitting sync.", v74, 2u);
          }

          v40 = kPCSErrorDomain;
          v68 = NSLocalizedDescriptionKey;
          v69 = @"No iCloud account";
          v41 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          v42 = [NSError errorWithDomain:v40 code:66 userInfo:v41];
          [*(a1 + 32) setError:v42];

          v37 = [v3 mainOperationQueue];
          [v37 addOperation:*(a1 + 32)];
          goto LABEL_33;
        }

        v19 = [v3 queue];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100008374;
        v50[3] = &unk_100018AF0;
        v50[4] = v3;
        v51 = v18;
        v20 = v18;
        dispatch_sync(v19, v50);
      }

      v21 = [v3 getServerChangeToken:@"MBserverChangeToken"];
      v22 = v21 == 0;

      if (v22)
      {
        v33 = [v3 oslog];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Creating zone before syncing", v74, 2u);
        }

        v34 = [v3 defaultCKConfiguration];
        v23 = [v3 createZone:v34 withName:@"PCSUserRegistryMobileBackup"];
      }

      else
      {
        v23 = 0;
      }

      v35 = objc_alloc_init(PCSRegistryOperation);
      v36 = v35;
      if (v23)
      {
        [(PCSRegistryOperation *)v35 addDependency:v23];
      }

      v43 = _NSConcreteStackBlock;
      v44 = 3221225472;
      v45 = sub_100008410;
      v46 = &unk_100018C08;
      objc_copyWeak(&v49, (a1 + 56));
      v37 = v23;
      v47 = v37;
      v48 = *(a1 + 32);
      [(PCSRegistryOperation *)v36 addExecutionBlock:&v43];
      v38 = [v3 mainOperationQueue];
      [v38 addOperation:v36];

      objc_destroyWeak(&v49);
LABEL_33:

      goto LABEL_34;
    }

    v30 = [v3 oslog];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v57[5];
      *v74 = 138412290;
      v75 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "iCloud account in grey mode (%@)", v74, 0xCu);
    }

    v32 = [NSError errorWithDomain:CKErrorDomain code:9 userInfo:0];
    [*(a1 + 32) setError:v32];

    v12 = [v3 mainOperationQueue];
    [v12 addOperation:*(a1 + 32)];
  }

  else
  {
    v24 = [v3 oslog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v57[5];
      *v74 = 138412290;
      v75 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Not logged into iCloud (%@)", v74, 0xCu);
    }

    v26 = v57[5];
    v27 = kPCSErrorDomain;
    if (v26)
    {
      v72[0] = NSLocalizedDescriptionKey;
      v72[1] = NSUnderlyingErrorKey;
      v73[0] = @"No iCloud account";
      v73[1] = v26;
      [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
    }

    else
    {
      v70 = NSLocalizedDescriptionKey;
      v71 = @"No iCloud account";
      [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    }
    v28 = ;
    v29 = [NSError errorWithDomain:v27 code:66 userInfo:v28];
    [*(a1 + 32) setError:v29];

    v12 = [v3 mainOperationQueue];
    [v12 addOperation:*(a1 + 32)];
  }

LABEL_34:

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

void sub_10000802C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  objc_destroyWeak((v29 - 248));
  _Unwind_Resume(a1);
}

id sub_1000080CC(uint64_t a1)
{
  v2 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) pendingSyncOperations];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "syncing operation (%@) no longer pending", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) pendingSyncOperations];
  [*(a1 + 32) setCurrentSyncOperations:v4];

  return [*(a1 + 32) setPendingSyncOperations:0];
}

void sub_1000081BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained oslog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 error];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished syncing operation %@: (%@)", &v9, 0x16u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1000082D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100008374(uint64_t a1)
{
  [*(a1 + 32) _onqueueDeleteServerChangeToken:@"MBserverChangeToken"];
  v2 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Caching DSID from Accounts", v5, 2u);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) userdb];
  [v4 setDsid:v3];
}

void sub_100008410(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = a1[4];
  if (v3 && ([v3 error], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [WeakRetained oslog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1[4] error];
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Zone creation failed for some reason: (%@), stopping MobileBackup sync", buf, 0xCu);
    }

    v7 = [a1[4] error];
    [a1[5] setError:v7];

    v8 = [WeakRetained mainOperationQueue];
    [v8 addOperation:a1[5]];
  }

  else
  {
    v9 = [WeakRetained fetchAllChanges:0];
    v10 = objc_alloc_init(PCSRegistryOperation);
    [(PCSRegistryOperation *)v10 addDependency:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100008640;
    v12[3] = &unk_100018C08;
    objc_copyWeak(&v15, a1 + 6);
    v8 = v9;
    v13 = v8;
    v14 = a1[5];
    [(PCSRegistryOperation *)v10 addExecutionBlock:v12];
    v11 = [WeakRetained mainOperationQueue];
    [v11 addOperation:v10];

    objc_destroyWeak(&v15);
  }
}

void sub_100008640(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] error];

  if (v3)
  {
    v4 = [a1[4] error];
    [WeakRetained checkErrorForRetryPause:v4];

    v5 = [a1[4] error];
    v6 = [WeakRetained errorShouldCauseReset:v5];

    v7 = [WeakRetained oslog];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [a1[4] error];
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetch failed for some terrible reason: (%@), restarting entire sync process", buf, 0xCu);
      }

      [WeakRetained resyncDatabase:a1[5]];
    }

    else
    {
      if (v8)
      {
        v16 = [a1[4] error];
        *buf = 138412290;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching failed for some reason: (%@), scheduling sync restart", buf, 0xCu);
      }

      v17 = [WeakRetained resyncRegistryAction];
      [v17 trigger];

      v18 = [a1[4] error];
      [a1[5] setError:v18];

      v19 = [WeakRetained mainOperationQueue];
      [v19 addOperation:a1[5]];
    }
  }

  else
  {
    v10 = [WeakRetained mobileBackup];
    v11 = [v10 isBackupEnabled];

    if (v11)
    {
      v12 = [WeakRetained startBackupOfNewMobileBackupIdentities];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100008A10;
      v24[3] = &unk_100018C08;
      objc_copyWeak(&v27, a1 + 6);
      v13 = v12;
      v25 = v13;
      v26 = a1[5];
      v14 = [NSBlockOperation blockOperationWithBlock:v24];
      v15 = v14;
      if (v13)
      {
        [v14 addDependency:v13];
      }

      else
      {
        v22 = [WeakRetained oslog];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No new items to push; finishing", buf, 2u);
        }
      }

      v23 = [WeakRetained mainOperationQueue];
      [v23 addOperation:v15];

      objc_destroyWeak(&v27);
    }

    else
    {
      v20 = [WeakRetained oslog];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MobileBackup is off; not pushing data to CloudKit", buf, 2u);
      }

      v21 = [WeakRetained mainOperationQueue];
      [v21 addOperation:a1[5]];
    }
  }
}

void sub_100008A10(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained oslog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[4] error];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startBackupOfNewMobileBackupIdentities as part of syncing done: (%@)", &v12, 0xCu);
  }

  v5 = [a1[4] error];

  if (v5)
  {
    v6 = [WeakRetained oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1[4] error];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pushing new changes failed for some reason: (%@), scheduling retry", &v12, 0xCu);
    }

    v8 = [a1[4] error];
    [WeakRetained checkErrorForRetryPause:v8];

    v9 = [WeakRetained resyncRegistryAction];
    [v9 trigger];
  }

  v10 = [a1[4] error];
  [a1[5] setError:v10];

  v11 = [WeakRetained mainOperationQueue];
  [v11 addOperation:a1[5]];
}

void sub_100008DD8(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [*(a1 + 40) recordID];
  v3 = [v2 recordName];
  v4 = [*(a1 + 48) encodedData];
  [v5 replaceRecordID:v3 data:v4 publicKey:*(a1 + 56)];
}

void sub_100009024(uint64_t a1)
{
  v4 = [*(a1 + 32) userdb];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) encodedData];
  [v4 replaceConfigRecord:v2 data:v3];
}

void sub_100009348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000936C(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 getConfigData:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100009540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000955C(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 getConfigData:@"UserRegistryStats"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000097D0(uint64_t a1)
{
  v1 = [*(a1 + 32) userdb];
  [v1 deleteRecordAll];
}

void sub_10000A0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CloudKit timeout complete", v3, 2u);
  }
}

void sub_10000A198(uint64_t a1)
{
  v2 = [*(a1 + 32) mainOperationQueue];
  [v2 addOperation:*(a1 + 40)];
}

void sub_10000A4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A520(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [WeakRetained oslog];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error creating zone (%@): %@", &v14, 0x16u);
    }

    [*(a1 + 40) setError:v7];
    [WeakRetained checkErrorForRetryPause:v7];
  }

  else
  {
    if (v10)
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created zones: %@", &v14, 0xCu);
    }

    v12 = [WeakRetained subscribeAction];
    [v12 trigger];
  }

  v13 = [WeakRetained mainOperationQueue];
  [v13 addOperation:*(a1 + 40)];
}

void sub_10000A854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A894(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained oslog];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = [WeakRetained mobileBackupRecordZoneID];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error deleting zone (%@): %@", &v13, 0x16u);
    }
  }

  else if (v10)
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleted zones: %@", &v13, 0xCu);
  }

  [*(a1 + 32) setError:v7];
  v12 = [WeakRetained mainOperationQueue];
  [v12 addOperation:*(a1 + 32)];
}

void sub_10000AB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AB34(uint64_t a1)
{
  v7 = [*(a1 + 32) userdb];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:v3 forKey:@"record"];

  v5 = [v4 encodedData];
  v6 = [v5 copy];

  *(*(*(a1 + 56) + 8) + 24) = [v7 setEscrowKey:v2 escrowBlob:v6];
}

void sub_10000ACC0(uint64_t a1)
{
  v3 = [*(a1 + 32) recordName];
  v2 = [*(a1 + 40) userdb];
  [v2 deleteEscrowKey:v3];
}

void sub_10000AE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AE8C(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 queryEscrowKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10000AEF8(void *a1)
{
  v1 = a1;
  v2 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v1 error:0];

  v3 = [v2 decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  return v3;
}

void sub_10000B3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_10000B450(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = a2;
  v35 = a3;
  v37 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = v8;
  if (WeakRetained)
  {
    v33 = a1;
    v34 = v8;
    v10 = [WeakRetained oslog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v37;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished uploading registry records (%@)", buf, 0xCu);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = v36;
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v12)
    {
      v13 = *v46;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v45 + 1) + 8 * i);
          v16 = [WeakRetained oslog];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v15 recordID];
            v18 = [v17 recordName];
            *buf = 138412290;
            v52 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stored record, saving in cache: %@", buf, 0xCu);
          }

          [WeakRetained saveEscrowChange:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v12);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = v35;
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v20)
    {
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [WeakRetained deleteEscrowID:*(*(&v41 + 1) + 8 * j)];
        }

        v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v20);
    }

    if (v37)
    {
      v23 = [WeakRetained oslog];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v37;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Retriggering syncing due to error (%@)", buf, 0xCu);
      }

      v24 = [WeakRetained resyncRegistryAction];
      [v24 trigger];

      [v34 setError:v37];
      v25 = [WeakRetained mainOperationQueue];
      [v25 addOperation:v34];
    }

    else
    {
      v26 = *(v33 + 32);
      if (v26)
      {
        v27 = [WeakRetained pushMobileBackupRecordsToCloudKit:v26 removeObjects:&__NSArray0__struct];
        v28 = objc_alloc_init(PCSRegistryOperation);
        [(PCSRegistryOperation *)v28 addDependency:v27];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10000B928;
        v38[3] = &unk_100018D48;
        objc_copyWeak(&v40, (v33 + 48));
        v29 = v27;
        v39 = v29;
        [(PCSRegistryOperation *)v28 addExecutionBlock:v38];
        [v34 addDependency:v28];
        v30 = [WeakRetained mainOperationQueue];
        [v30 addOperation:v34];

        v31 = [WeakRetained mainOperationQueue];
        [v31 addOperation:v28];

        objc_destroyWeak(&v40);
      }

      else
      {
        v32 = [WeakRetained mainOperationQueue];
        [v32 addOperation:v34];
      }
    }

    v9 = v34;
  }

  else
  {
    [v8 cancel];
  }
}

void sub_10000B928(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) error];
  [WeakRetained setError:v2];
}

id sub_10000BB30(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = PCSIdentityGetPublicKey();
  v7 = [NSString stringWithFormat:@"%@-%@%@", v5, v6, v4];

  v8 = [v7 UTF8String];
  ccsha256_di();
  strlen(v8);
  ccdigest();
  v9 = _PCSCreateHexString();

  return v9;
}

void sub_10000C010(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10000C39C(uint64_t a1, uint64_t a2)
{
  if (PCSServiceItemEscrowManateeIdentityByName())
  {
    v4 = *(a1 + 48);
    v5 = PCSIdentitySetCopyOrderedIdentities();
    if (v5)
    {
      v6 = v5;
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_10000C54C;
      context[3] = &unk_100018DC0;
      v7 = *(a1 + 56);
      v8 = *(a1 + 40);
      context[4] = *(a1 + 32);
      v13 = v7;
      v12 = v8;
      v16.length = CFArrayGetCount(v6);
      v16.location = 0;
      CFArrayApplyFunction(v6, v16, sub_10000DFF4, context);
      CFRelease(v6);

      return;
    }

    v9 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = a2;
      v10 = "No identities for %@";
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = a2;
      v10 = "Not doing MobileBackup for %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }
}

void sub_10000C54C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) mobileBackupKeyRecordIdentity:a2 version:@"-v2"];
  v6 = [*(a1 + 32) queryEscrowName:v5];
  v7 = v6;
  if (!v6 || ([v6 etag], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v10 = *(a1 + 32);
    v11 = [v10 mobileBackupRecordZoneID];
    v9 = [v10 keyRecord:a2 withName:v5 zone:v11];

    if ([*(a1 + 32) updateEscrowData:v9 escrowIdentity:*(a1 + 48) identity:a2])
    {
      [*(a1 + 40) addObject:v9];
      v12 = [*(a1 + 32) oslog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = a2;
        v16 = 2112;
        v17 = v5;
        v13 = "Will store %@ as (%@)";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 0x16u);
      }
    }

    else
    {
      v12 = [*(a1 + 32) oslog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = a2;
        v16 = 2112;
        v17 = v5;
        v13 = "Couldn't escrow identity %@ (%@); skipping";
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  v9 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Already stored %@ as (%@); skipping", &v14, 0x16u);
  }

LABEL_12:

  objc_autoreleasePoolPop(v4);
}

void sub_10000CFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D000(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 queryEscrowKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000D764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000D79C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "queryMobileBackupKeysFromCloudKit: error: %@", &v13, 0xCu);
    }

    v8 = 48;
    v9 = v6;
LABEL_9:

    v10 = [v9 copy];
    v11 = *(*(a1 + v8) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    goto LABEL_10;
  }

  if (v5)
  {
    v7 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = [v5 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "queryMobileBackupKeysFromCloudKit got keys (count %lu)", &v13, 0xCu);
    }

    v8 = 56;
    v9 = v5;
    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000DD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000DD58(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 queryEscrowKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10000E158()
{
  if (qword_10001D780 != -1)
  {
    sub_10000EFC8();
  }

  v1 = qword_10001D778;

  return v1;
}

void sub_10000E19C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_suspend(WeakRetained[7]);
    v3 = v2[3];
    if (v3)
    {
      v4 = objc_retainBlock(v3);
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3032000000;
      v15[3] = sub_10000E374;
      v15[4] = sub_10000E384;
      v16 = v2[8];
      v5 = v2[8];
      v2[8] = 0;

      v6 = v2[6];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000E38C;
      v12[3] = &unk_100018E38;
      v7 = v4;
      v13 = v7;
      v14 = v15;
      [v6 addOperationWithBlock:v12];

      _Block_object_dispose(v15, 8);
    }

    v8 = dispatch_time(0, 1000000000 * v2[4]);
    v9 = sub_10000E158();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E3FC;
    block[3] = &unk_100018970;
    v11 = v2;
    dispatch_after(v8, v9, block);
  }
}

void sub_10000E35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E38C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    *(v3 + 40) = 0;
  }
}

void sub_10000E5CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!*(WeakRetained + 9) && !*(WeakRetained + 8))
  {
    v3 = [*(a1 + 32) label];
    [v3 UTF8String];
    v4 = os_transaction_create();
    v5 = v6[8];
    v6[8] = v4;

    WeakRetained = v6;
  }

  dispatch_source_merge_data(*(WeakRetained + 7), 1uLL);
}

void sub_10000E788(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("PCSDelayedActionQueue", v3);
  v2 = qword_10001D778;
  qword_10001D778 = v1;
}

uint64_t sub_10000E7EC(int a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = objc_alloc_init(NSMutableDictionary);
  sub_10000EBEC(v12, v9, v11, v10);

  v19 = 0;
  v20 = 1;
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      if (a5)
      {
        sub_1000017A4(__stdoutp, @"Calling PCSIdentityMigrateDropStingray", v13, v14, v15, v16, v17, v18, v30);
        if (PCSIdentityMigrateDropStingray())
        {
          v21 = __stdoutp;
          v22 = @"PCSIdentityMigrateDropStingray succeeded";
          goto LABEL_33;
        }
      }

      else if (PCSIdentityMigrateDropStingray())
      {
        goto LABEL_34;
      }

      sub_1000017A4(__stderrp, @"PCSIdentityMigrateDropStingray: %@", v13, v14, v15, v16, v17, v18, 0);
    }

    else
    {
      if (a1 == 2)
      {
        if (a5)
        {
          sub_1000017A4(__stdoutp, @"Calling PCSIdentityMigrateToiCDP", v13, v14, v15, v16, v17, v18, v30);
          if (PCSIdentityMigrateToiCDP())
          {
            v21 = __stdoutp;
            v22 = @"PCSIdentityMigrateToiCDP succeeded";
            goto LABEL_33;
          }
        }

        else if (PCSIdentityMigrateToiCDP())
        {
          goto LABEL_34;
        }

        v23 = __stderrp;
        v30 = 0;
        v24 = @"PCSIdentityMigrateToiCDP: %@";
      }

      else
      {
        if (a1 != 3)
        {
          goto LABEL_49;
        }

        v23 = __stderrp;
        v24 = @"Convert HSM no longer supported";
      }

      sub_1000017A4(v23, v24, v13, v14, v15, v16, v17, v18, v30);
    }

    goto LABEL_47;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      if (a5)
      {
        sub_1000017A4(__stdoutp, @"Calling PCSIdentityMigrateCloseDoor", v13, v14, v15, v16, v17, v18, v30);
        if (PCSIdentityMigrateCloseDoor())
        {
          v21 = __stdoutp;
          v22 = @"PCSIdentityMigrateCloseDoor succeeded";
          goto LABEL_33;
        }
      }

      else if (PCSIdentityMigrateCloseDoor())
      {
        goto LABEL_34;
      }

      sub_1000017A4(__stderrp, @"PCSIdentityMigrateCloseDoor: %@", v13, v14, v15, v16, v17, v18, 0);
    }

    else
    {
      if (a5)
      {
        sub_1000017A4(__stdoutp, @"Calling PCSIdentityMigrateRestoreHSM", v13, v14, v15, v16, v17, v18, v30);
        if (PCSIdentityMigrateRestoreHSM())
        {
          v21 = __stdoutp;
          v22 = @"PCSIdentityMigrateRestoreHSM succeeded";
LABEL_33:
          sub_1000017A4(v21, v22, v13, v14, v15, v16, v17, v18, v31);
LABEL_34:
          v19 = 0;
          goto LABEL_35;
        }
      }

      else if (PCSIdentityMigrateRestoreHSM())
      {
        goto LABEL_34;
      }

      sub_1000017A4(__stderrp, @"PCSIdentityMigrateRestoreHSM: %@", v13, v14, v15, v16, v17, v18, 0);
    }

LABEL_47:
    v19 = 0;
    goto LABEL_48;
  }

  if (a1 == 6)
  {
    if (a5)
    {
      sub_1000017A4(__stdoutp, @"Calling PCSAccountEnableWalrus", v13, v14, v15, v16, v17, v18, v30);
    }

    v28 = PCSAccountEnableWalrus();
    v19 = 0;
    if (v28)
    {
      if (a5)
      {
        v26 = __stdoutp;
        v27 = @"PCSAccountEnableWalrus succeeded";
        goto LABEL_29;
      }

LABEL_35:
      v20 = 0;
      goto LABEL_49;
    }

    sub_1000017A4(__stderrp, @"PCSAccountEnableWalrus: %@", v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    if (a1 != 7)
    {
      goto LABEL_49;
    }

    if (a5)
    {
      sub_1000017A4(__stdoutp, @"Calling PCSAccountDisableWalrus", v13, v14, v15, v16, v17, v18, v30);
    }

    v25 = PCSAccountDisableWalrus();
    v19 = 0;
    if (v25)
    {
      if (a5)
      {
        v26 = __stdoutp;
        v27 = @"PCSAccountDisableWalrus succeeded";
LABEL_29:
        sub_1000017A4(v26, v27, v13, v14, v15, v16, v17, v18, v30);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    sub_1000017A4(__stderrp, @"PCSAccountDisableWalrus: %@", v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_48:
  v20 = 1;
LABEL_49:
  if (a5)
  {
    sub_1000017A4(__stderrp, @"convert returning: %d", v13, v14, v15, v16, v17, v18, v20);
  }

  return v20;
}

void sub_10000EBEC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    NSLog(@"Must provide either an AppleID to fetch a PET");
    exit(1);
  }

  v11 = v10;
  v12 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v12 setUsername:v9];
  if (v11)
  {
    [v12 _setPassword:v11];
  }

  [v12 setAuthenticationType:1];
  [v12 setIsUsernameEditable:0];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10000EE38;
  v30 = sub_10000EE48;
  v31 = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = objc_alloc_init(AKAppleIDAuthenticationController);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10000EE50;
  v21 = &unk_100018EA8;
  v15 = v8;
  v22 = v15;
  v16 = v9;
  v23 = v16;
  v25 = &v26;
  v17 = v13;
  v24 = v17;
  [v14 authenticateWithContext:v12 completion:&v18];
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  [v7 setObject:v16 forKeyedSubscript:{kPCSSetupUsername, v18, v19, v20, v21}];
  [v7 setObject:v27[5] forKeyedSubscript:kPCSSetupPassword];
  [v7 setObject:v15 forKeyedSubscript:kPCSSetupDSID];

  _Block_object_dispose(&v26, 8);
}

void sub_10000EE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EE38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000EE50(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  if (v5)
  {
    sub_1000017A4(__stderrp, @"authentication error: %@", v6, v7, v8, v9, v10, v11, v5);
    goto LABEL_11;
  }

  v12 = *(a1 + 32);
  v13 = [v29 objectForKeyedSubscript:AKAuthenticationDSIDKey];
  v14 = [v13 stringValue];
  LOBYTE(v12) = [v12 isEqualToString:v14];

  if ((v12 & 1) == 0)
  {
    v26 = __stderrp;
    v27 = @"authentication error: dsid mismatch";
LABEL_10:
    sub_1000017A4(v26, v27, v15, v16, v17, v18, v19, v20, v28);
LABEL_11:
    exit(1);
  }

  v21 = *(a1 + 40);
  v22 = [v29 objectForKeyedSubscript:AKAuthenticationUsernameKey];
  LOBYTE(v21) = [v21 isEqualToString:v22];

  if ((v21 & 1) == 0)
  {
    v26 = __stderrp;
    v27 = @"authentication error: username mismatch";
    goto LABEL_10;
  }

  v23 = [v29 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v24 = *(*(a1 + 56) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  dispatch_semaphore_signal(*(a1 + 48));
}