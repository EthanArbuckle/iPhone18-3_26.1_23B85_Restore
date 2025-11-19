void sub_10004939C(void *a1, void *a2, void *a3)
{
  v34 = a2;
  v33 = a3;
  val = a1;
  if (a1)
  {
    v5 = [v34 objectForKey:@"identifier"];
    if (v5)
    {
      v6 = [v34 objectForKey:@"proxies"];
      if (!v6)
      {

        goto LABEL_40;
      }

      v7 = [v34 objectForKey:@"expires"];

      if (v7)
      {
        if ([val configurationValidated:v34 withURL:v33])
        {
          v8 = [v34 objectForKey:@"proxies"];
          v35 = objc_alloc_init(NSMutableArray);
          objc_initWeak(&location, val);
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          obj = v8;
          v9 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
          if (!v9)
          {
            goto LABEL_27;
          }

          v10 = *v51;
          while (1)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v51 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v50 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = v12;
                v14 = [v13 objectForKeyedSubscript:@"proxy"];
                if (v14 && ([v13 objectForKeyedSubscript:@"proxy"], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, v14, (isKindOfClass & 1) != 0))
                {
                  v17 = [v13 objectForKeyedSubscript:@"proxy"];
                }

                else
                {
                  v17 = 0;
                }
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v17 = v12;
              }

              if (v17)
              {
                v18 = [NSURL URLWithString:v17];
                v19 = v18;
                if (v18)
                {
                  v20 = [v18 host];
                  v21 = v20 == 0;

                  if (!v21 && ([v35 containsObject:v19] & 1) == 0)
                  {
                    [v35 addObject:v19];
                  }
                }
              }
            }

            v9 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
            if (!v9)
            {
LABEL_27:

              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v22 = v35;
              v23 = [v22 countByEnumeratingWithState:&v46 objects:v55 count:16];
              if (v23)
              {
                v24 = *v47;
                do
                {
                  for (j = 0; j != v23; j = j + 1)
                  {
                    if (*v47 != v24)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v26 = *(*(&v46 + 1) + 8 * j);
                    if (v26)
                    {
                      v27 = objc_alloc_init(NSURLComponents);
                      [v27 setPath:@"/.well-known/pvd"];
                      [v27 setScheme:@"https"];
                      v28 = [v26 port];
                      v29 = v28 == 0;

                      if (!v29)
                      {
                        v30 = [v26 port];
                        [v27 setPort:v30];
                      }

                      v31 = [v26 host];
                      [v27 setHost:v31];

                      v40 = 0;
                      v41 = &v40;
                      v42 = 0x3032000000;
                      v43 = sub_100001F34;
                      v44 = sub_1000490D0;
                      v45 = [v27 URL];
                      v32 = v41[5];
                      v38[0] = _NSConcreteStackBlock;
                      v38[1] = 3221225472;
                      v38[2] = sub_1000498F8;
                      v38[3] = &unk_100109CD0;
                      objc_copyWeak(&v39, &location);
                      v38[4] = &v40;
                      [val fetchIndividualProxyConfig:v32 completionHander:v38];
                      objc_destroyWeak(&v39);
                      _Block_object_dispose(&v40, 8);
                    }
                  }

                  v23 = [v22 countByEnumeratingWithState:&v46 objects:v55 count:16];
                }

                while (v23);
              }

              objc_destroyWeak(&location);
              break;
            }
          }
        }
      }
    }
  }

LABEL_40:
}

void sub_1000498F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained didReceiveProxyConfig:v3 from:*(*(*(a1 + 32) + 8) + 40)];
  }
}

uint64_t sub_100049B9C()
{
  if (qword_100129778 != -1)
  {
    dispatch_once(&qword_100129778, &stru_100109CF0);
  }

  return byte_100129770;
}

void sub_100049BE4(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_100129770 = v2 != 0;
  }
}

uint64_t sub_100049F3C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  if (!v2)
  {
    v5 = nplog_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v12 = 0;
    v7 = "NSKeyedArchiver initialize failed";
    v8 = &v12;
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_10;
  }

  [a1 encodeWithCoder:v2];
  _CFPreferencesSetFileProtectionClass();
  v3 = [v2 encodedData];
  CFPreferencesSetAppValue(@"DeviceIdentityInfo", v3, kCFPreferencesCurrentApplication);

  LODWORD(v3) = CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  v4 = nplog_obj();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saved device identity info to preference file", v10, 2u);
    }

    v6 = 1;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v7 = "Failed to write device identity info to preference file";
    v8 = buf;
    goto LABEL_14;
  }

LABEL_10:
  v6 = 0;
LABEL_11:

  return v6;
}

void sub_10004A224(id a1)
{
  v1 = [NSPDeviceIdentityCertificate alloc];
  if (v1)
  {
    v17.receiver = v1;
    v17.super_class = NSPDeviceIdentityCertificate;
    v2 = objc_msgSendSuper2(&v17, "init");
    if (!v2)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
      }

      v3 = 0;
      goto LABEL_23;
    }

    v3 = v2;
    v4 = CFPreferencesCopyAppValue(@"DeviceIdentityInfo", kCFPreferencesCurrentApplication);
    if (!v4)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "no saved device identity info", buf, 2u);
      }

      goto LABEL_23;
    }

    v5 = v4;
    v16 = 0;
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v16];
    v7 = v16;
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      CFRelease(v5);
      v11 = [v3 initWithCoder:v6];
      if (v11)
      {
        v3 = v11;
        if (v11[2] == 1)
        {
          v8 = v6;
LABEL_23:

          goto LABEL_24;
        }

        v13 = nplog_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = v3[2];
          *buf = 134218240;
          v19 = v14;
          v20 = 2048;
          v21 = 1;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Saved disk version of device identity info (%ld) does not match latest supported version (%ld)", buf, 0x16u);
        }

        v3 = [v3 init];
      }

      else
      {
        v12 = nplog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to decode device identity info", buf, 2u);
        }

        v3 = 0;
      }
    }

    else
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v8;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the device identity info: %@", buf, 0xCu);
      }

      CFRelease(v5);
    }

    goto LABEL_23;
  }

  v3 = 0;
LABEL_24:
  v15 = qword_100129780;
  qword_100129780 = v3;
}

void sub_10004AB3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10004AB88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v10);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v7 && v8 && !v9)
    {
      v12 = *(*(a1 + 32) + 16);
    }

    else
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "failed to sign data from host with error %@", &v14, 0xCu);
      }

      v12 = *(*(a1 + 32) + 16);
    }

    v12();
  }
}

void sub_10004ACD0(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v9);

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v11 = objc_alloc_init(NSPDeviceIdentityStats);
    v12 = nplog_obj();
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v8;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "device identity request failed with error: %@", buf, 0xCu);
      }

      if ((mobileactivationErrorHasDomainAndErrorCode() & 1) == 0 && (mobileactivationErrorHasDomainAndErrorCode() & 1) == 0 && (mobileactivationErrorHasDomainAndErrorCode() & 1) == 0)
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = v14[3];
          if (!v15 || (v16 = v15, [v14[3] timeIntervalSinceNow], v18 = v17, v16, v18 < 0.0))
          {
            v19 = +[NSDate date];
            v20 = arc4random_uniform(3u);
            v21 = objc_opt_new();
            [v21 setDay:v20];
            v22 = +[NSCalendar currentCalendar];
            v23 = [v22 dateByAddingComponents:v21 toDate:v19 options:0];
            v24 = v14[3];
            v14[3] = v23;

            v25 = nplog_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v19;
              v32 = v21;
              v26 = v14[3];
              v27 = [NSDateFormatter localizedStringFromDate:v26 dateStyle:1 timeStyle:2];
              *buf = 138412290;
              v36 = v27;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device identity would be fetched on %@", buf, 0xCu);

              v21 = v32;
              v19 = v33;
            }

            if ((sub_100049F3C(v14) & 1) == 0)
            {
              v28 = nplog_obj();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to write device identity info to file", buf, 2u);
              }
            }
          }
        }
      }

      [(NSPDeviceIdentityStats *)v11 setSuccess:0];
      v29 = [(__CFError *)v8 domain];
      [(NSPDeviceIdentityStats *)v11 setErrorDomain:v29];

      [(NSPDeviceIdentityStats *)v11 setErrorCode:[(__CFError *)v8 code]];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "device identity request successful", buf, 2u);
      }

      error = 0;
      v30 = SecKeyCreateSignature(a2, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, *(a1 + 32), &error);
      if (!v30 || error)
      {
        v31 = nplog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = error;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "failed to sign data with error %@", buf, 0xCu);
        }

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        (*(*(a1 + 48) + 16))();
        [(NSPDeviceIdentityStats *)v11 setSuccess:1];
      }

      [*(a1 + 40) resetDeviceIdentityInfo];
    }

    [(NSPProxyAnalytics *)v11 sendAnalytics];
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

id *sub_10004B19C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = NSPServerODoH;
    v10 = objc_msgSendSuper2(&v27, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 3, v7);
      objc_storeStrong(a1 + 8, a3);
      objc_storeStrong(a1 + 19, a4);
      objc_opt_self();
      v11 = CFPreferencesCopyAppValue(@"NSPPreferredResolver", kCFPreferencesCurrentApplication);
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = nplog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v30 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Detected preferred resolver: %{public}@", buf, 0xCu);
        }

        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v14 = a1[2];
      a1[2] = v13;

      objc_opt_self();
      v15 = +[NEFileHandleMaintainer sharedMaintainer];
      v16 = [v15 copyAuxiliaryDataForKey:@"NSPServerODoHAuxilaryData"];

      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v18 = objc_opt_class();
        v19 = objc_opt_class();
        v20 = [NSSet setWithObjects:v18, v19, objc_opt_class(), 0];
        v28 = 0;
        v21 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v20 fromData:v16 error:&v28];
        v22 = v28;

        if (!v21 || v22)
        {
          v23 = nplog_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v30 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "failed to unarchivedObjectOfClasses with error %@", buf, 0xCu);
          }

          v17 = 0;
        }

        else
        {
          v17 = v21;
        }

        if (v17)
        {
          v24 = [v17 objectForKeyedSubscript:@"NSPServerODoHAuxilaryDataResolverSwitchedDateKey"];
          v25 = a1[17];
          a1[17] = v24;
        }
      }

      else
      {

        v17 = 0;
      }
    }
  }

  return a1;
}

id sub_10004B4BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v2 = *(a1 + 112);
    v3 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v35;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v34 + 1) + 8 * i);
          v8 = [v7 dohURL];
          v9 = [v8 isEqualToString:*(a1 + 16)];

          if (v9)
          {
            v23 = v7;
            goto LABEL_31;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  v2 = *(a1 + 120);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v2 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v31;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v12 += [*(*(&v30 + 1) + 8 * j) weight];
      }

      v11 = [v2 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v11);
    if (v12)
    {
      do
      {
        v15 = arc4random_uniform(v12 + 1);
      }

      while (!v15);
      v16 = v15;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v2 = v2;
      v17 = [v2 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = *v27;
        while (2)
        {
          for (k = 0; k != v18; k = k + 1)
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v2);
            }

            v22 = *(*(&v26 + 1) + 8 * k);
            v19 += [v22 weight];
            if (v16 <= v19)
            {
              v24 = v22;

              goto LABEL_32;
            }
          }

          v18 = [v2 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v23 = [v2 firstObject];
LABEL_31:
  v24 = v23;
LABEL_32:

  return v24;
}

void sub_10004B764(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 112);
    v3 = [v2 mutableCopy];
    v4 = *(a1 + 120);
    *(a1 + 120) = v3;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = *(a1 + 120);
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if (([v10 hasObliviousDoHConfig] & 1) == 0)
          {
            [*(a1 + 120) removeObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

void sub_10004B894(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Candidate resolver restore timer fired", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_10004B764(WeakRetained);
  }
}

void sub_10004B91C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
    sub_10004B764(a1);
    [*(a1 + 32) setResolver:0];
  }
}

void sub_10004B988(void *a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@ cleaning up DNS network agent", &v7, 0xCu);
    }

    sub_10004BA70(a1);
    v3 = a1[4];
    a1[4] = 0;

    v4 = a1[5];
    a1[5] = 0;

    sub_10004BB98(a1);
    v5 = a1[6];
    a1[6] = 0;

    v6 = a1[7];
    a1[7] = 0;
  }
}

uint64_t sub_10004BA70(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 128);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(v1 + 128);
      *(v1 + 128) = 0;
    }

    v4 = *(v1 + 32);
    if (v4 && (v5 = *(v1 + 40), v4, v5) && [*(v1 + 40) isRegistered])
    {
      v6 = nplog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(v1 + 32);
        v8 = [v7 agentUUID];
        v9 = 138412546;
        v10 = v1;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ un-registering DNS network agent with UUID %@", &v9, 0x16u);
      }

      return [*(v1 + 40) unregisterNetworkAgent];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_10004BB98(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);

    if (v3)
    {
      if ([*(a1 + 56) isRegistered])
      {
        v4 = nplog_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = *(a1 + 48);
          v6 = [v5 agentUUID];
          v7 = 138412546;
          v8 = a1;
          v9 = 2112;
          v10 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ un-registering bootstrap DNS network agent with UUID %@", &v7, 0x16u);
        }

        [*(a1 + 56) unregisterNetworkAgent];
      }
    }
  }
}

uint64_t sub_10004BC9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = sub_100053E68();
      v7 = sub_100074784(v5, v6);

      v8 = *(a1 + 48);
      if (!v8)
      {
        v9 = [(NSPPrivacyProxyDNSAgent *)[NSPPrivacyProxyBootstrapDNSAgent alloc] initWithDelegate:a1];
        v10 = *(a1 + 48);
        *(a1 + 48) = v9;

        v11 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class() session:v7];
        objc_storeStrong((a1 + 56), v11);

        v8 = *(a1 + 48);
      }

      v12 = [v8 resolver];

      if (!v12)
      {
        [*(a1 + 48) setResolver:v4];
      }

      v13 = +[NSPPrivacyProxyAgentManager singleHopProxyAgentUUID];
      [*(a1 + 48) setProxyAgentUUID:v13];

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 48);
        v16 = [v15 resolver];
        v17 = [v16 dohURL];
        v37 = 138412546;
        v38 = a1;
        v39 = 2114;
        v40 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ setting up bootstrap DNS network agent to %{public}@", &v37, 0x16u);
      }

      if ([*(a1 + 56) isRegistered])
      {
        v18 = nplog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 48);
          v20 = [v19 agentUUID];
          v37 = 138412546;
          v38 = a1;
          v39 = 2112;
          v40 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@ updating bootstrap DNS network agent with UUID %@", &v37, 0x16u);
        }

        v21 = *(a1 + 48);
        v22 = *(a1 + 56);
        LOBYTE(v21) = [v22 updateNetworkAgent:v21];

        if (v21)
        {
          goto LABEL_19;
        }

        v23 = nplog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = *(a1 + 48);
          v25 = [v24 agentUUID];
          v37 = 138412546;
          v38 = a1;
          v39 = 2112;
          v40 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@: failed to update the registered bootstrap DNS network agent [%@]", &v37, 0x16u);
        }
      }

      v26 = *(a1 + 48);
      v27 = *(a1 + 56);
      [v27 setRegisteredNetworkAgent:v26 fileDescriptor:0xFFFFFFFFLL];

      [*(a1 + 56) unregisterNetworkAgent];
      v28 = nplog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = *(a1 + 48);
        v30 = [v29 agentUUID];
        v37 = 138412546;
        v38 = a1;
        v39 = 2112;
        v40 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%@ registering bootstrap DNS network agent [%@]", &v37, 0x16u);
      }

      v31 = *(a1 + 48);
      v32 = *(a1 + 56);
      LOBYTE(v31) = [v32 registerNetworkAgent:v31];

      if ((v31 & 1) == 0)
      {
        v33 = nplog_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v35 = *(a1 + 48);
          v36 = [v35 agentUUID];
          v37 = 138412546;
          v38 = a1;
          v39 = 2112;
          v40 = v36;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@: failed to register bootstrap DNS network agent [%@]", &v37, 0x16u);
        }

        a1 = 0;
        goto LABEL_24;
      }

LABEL_19:
      a1 = 1;
LABEL_24:

      goto LABEL_25;
    }

    sub_10004BB98(a1);
    objc_storeStrong((a1 + 48), 0);
    objc_storeStrong((a1 + 56), 0);
    a1 = 1;
  }

LABEL_25:

  return a1;
}

uint64_t sub_10004C128(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100053E68();
    v4 = sub_100074784(v2, v3);

    v5 = *(v1 + 32);
    if (!v5)
    {
      v6 = [(NSPPrivacyProxyDNSAgent *)[NSPSystemPrivacyProxyDNSAgent alloc] initWithDelegate:v1];
      v7 = *(v1 + 32);
      *(v1 + 32) = v6;

      v8 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class() session:v4];
      objc_storeStrong((v1 + 40), v8);

      v5 = *(v1 + 32);
    }

    v9 = [v5 resolver];

    if (!v9)
    {
      v10 = sub_10004B4BC(v1);
      [*(v1 + 32) setResolver:v10];
    }

    v11 = +[NSPPrivacyProxyAgentManager singleHopProxyAgentUUID];
    [*(v1 + 32) setProxyAgentUUID:v11];

    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(v1 + 32);
      v14 = [v13 resolver];
      v15 = [v14 dohURL];
      *buf = 138412546;
      *&buf[4] = v1;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ setting up DNS network agent to %{public}@", buf, 0x16u);
    }

    if (!*(v1 + 128))
    {
      v16 = NPGetInternalQueue();
      v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);
      v18 = *(v1 + 128);
      *(v1 + 128) = v17;

      v19 = *(v1 + 128);
      if (v19)
      {
        v20 = v19;
        v21 = dispatch_time(0x8000000000000000, 1800000000000);
        dispatch_source_set_timer(v20, v21, 0x1A3185C5000uLL, 0);

        objc_initWeak(&location, v1);
        v22 = *(v1 + 128);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10004B894;
        v45 = &unk_100109538;
        v23 = v22;
        objc_copyWeak(&v46, &location);
        dispatch_source_set_event_handler(v23, buf);

        dispatch_resume(*(v1 + 128));
        objc_destroyWeak(&v46);
        objc_destroyWeak(&location);
      }
    }

    if ([*(v1 + 40) isRegistered])
    {
      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(v1 + 32);
        v26 = [v25 agentUUID];
        *buf = 138412546;
        *&buf[4] = v1;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@ updating DNS network agent with UUID %@", buf, 0x16u);
      }

      v27 = *(v1 + 32);
      v28 = *(v1 + 40);
      LOBYTE(v27) = [v28 updateNetworkAgent:v27];

      if (v27)
      {
        goto LABEL_21;
      }

      v29 = nplog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = *(v1 + 32);
        v31 = [v30 agentUUID];
        *buf = 138412546;
        *&buf[4] = v1;
        *&buf[12] = 2112;
        *&buf[14] = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@: failed to update the registered DNS network agent [%@]", buf, 0x16u);
      }
    }

    v32 = *(v1 + 32);
    v33 = *(v1 + 40);
    [v33 setRegisteredNetworkAgent:v32 fileDescriptor:0xFFFFFFFFLL];

    [*(v1 + 40) unregisterNetworkAgent];
    v34 = nplog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = *(v1 + 32);
      v36 = [v35 agentUUID];
      *buf = 138412546;
      *&buf[4] = v1;
      *&buf[12] = 2112;
      *&buf[14] = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@ registering DNS network agent [%@]", buf, 0x16u);
    }

    v37 = *(v1 + 32);
    v38 = *(v1 + 40);
    LOBYTE(v37) = [v38 registerNetworkAgent:v37];

    if ((v37 & 1) == 0)
    {
      v39 = nplog_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v41 = *(v1 + 32);
        v42 = [v41 agentUUID];
        *buf = 138412546;
        *&buf[4] = v1;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@: failed to register DNS network agent [%@]", buf, 0x16u);
      }

      v1 = 0;
      goto LABEL_25;
    }

LABEL_21:
    v1 = 1;
LABEL_25:
  }

  return v1;
}

void sub_10004C6AC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 64);
    v6 = [v5 interface];
    v7 = [v6 interfaceName];
    v8 = [v4 interface];

    v9 = [v8 interfaceName];
    v10 = [v7 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      v11 = +[NSDate now];
      v12 = *(a1 + 80);
      *(a1 + 80) = v11;
    }

    if ([v4 status] == 2)
    {
      v13 = +[NSDate now];
      v14 = *(a1 + 72);
      *(a1 + 72) = v13;
    }

    objc_storeStrong((a1 + 64), a2);
    v15 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:*(a1 + 64)];
    v16 = [v15 objectForKeyedSubscript:@"Signature"];
    v17 = [*(a1 + 88) objectForKeyedSubscript:@"Signature"];
    v18 = v16;
    v19 = v17;
    v20 = v19;
    if (!(v18 | v19) || v18 && v19 && [v18 isEqual:v19])
    {
    }

    else
    {

      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "proxy agent: network signature changed", v22, 2u);
      }

      *(a1 + 104) = 0;
      objc_storeStrong((a1 + 88), v15);
      [*(a1 + 40) resetError];
      [*(a1 + 56) resetError];
    }
  }
}

id *sub_10004C8C0(id *result)
{
  if (result)
  {
    v1 = result;
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3[0] = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resetting error due to configuration change", v3, 2u);
    }

    [v1[5] resetError];
    return [v1[7] resetError];
  }

  return result;
}

id *sub_10004C944(id *result)
{
  if (result)
  {
    v1 = result;
    [result[5] resetError];
    v2 = v1[7];

    return [v2 resetError];
  }

  return result;
}

uint64_t sub_10004C988(id *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v10 = v4;
    v4 = [v4 isEqualToString:a1[2]];
    v5 = v10;
    if ((v4 & 1) == 0)
    {
      objc_storeStrong(a1 + 2, a2);
      v6 = v10;
      objc_opt_self();
      CFPreferencesSetAppValue(@"NSPPreferredResolver", v6, kCFPreferencesCurrentApplication);

      if (!CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication))
      {
        v7 = nplog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to write preferred resolver to preference file", buf, 2u);
        }
      }

      if ([a1[5] isRegistered])
      {
        v8 = sub_10004B4BC(a1);
        [a1[4] setResolver:v8];

        sub_10004C128(a1);
      }

      v4 = sub_10004C8C0(a1);
      v5 = v10;
    }
  }

  return _objc_release_x1(v4, v5);
}

void sub_10004CAD4(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  if (!*(a1 + 16))
  {
    v10 = [*(a1 + 32) resolver];
    v37 = 0u;
    v38 = 0u;
    *location = 0u;
    v36 = 0u;
    v11 = *(a1 + 120);
    v12 = [v11 countByEnumeratingWithState:location objects:&buf count:16];
    if (v12)
    {
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(location[1] + i);
          if (v15 != v10 && [v15 weight])
          {

            if (v10)
            {
              [*(a1 + 120) removeObject:v10];
            }

            if ([*(a1 + 40) isRegistered])
            {
              v16 = sub_10004B4BC(a1);
              [*(a1 + 32) setResolver:v16];

              sub_10004C128(a1);
            }

            v17 = nplog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Switching resolvers", &buf, 2u);
            }

            v18 = +[NSDate now];
            v19 = *(a1 + 136);
            *(a1 + 136) = v18;

            v20 = nplog_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf) = 0;
              _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Updating odoh userevent agent data", &buf, 2u);
            }

            v21 = objc_alloc_init(NSMutableDictionary);
            [v21 setObject:*(a1 + 136) forKeyedSubscript:@"NSPServerODoHAuxilaryDataResolverSwitchedDateKey"];
            location[0] = 0;
            v22 = [NSKeyedArchiver archivedDataWithRootObject:v21 requiringSecureCoding:1 error:location];
            v23 = location[0];
            v24 = v23;
            if (!v22 || v23)
            {
              v26 = nplog_obj();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v24;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "archivedDataWithRootObject failed with error: %@", &buf, 0xCu);
              }
            }

            else
            {
              v25 = +[NEFileHandleMaintainer sharedMaintainer];
              [v25 setAuxiliaryData:v22 forKey:@"NSPServerODoHAuxilaryData"];

              v26 = +[NEFileHandleMaintainer sharedMaintainer];
              [v26 commit];
            }

            goto LABEL_36;
          }
        }

        v12 = [v11 countByEnumeratingWithState:location objects:&buf count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    v8 = objc_alloc_init(NSPOutageReasonStats);
    [(NSPOutageReasonStats *)v8 setTierType:@"SUBSCRIBER"];
    [(NSPOutageReasonStats *)v8 setOutageReasonType:@"DNS"];
    if (a3 == 80)
    {
      v9 = @"ODoHAuthFailure";
    }

    else
    {
      if (a3 != 94)
      {
        v30 = nplog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = a3;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "unexpected error code %d", &buf, 8u);
        }

        v29 = 0;
        goto LABEL_32;
      }

      v9 = @"ODoHBadMessage";
    }

    [(NSPOutageReasonStats *)v8 setOutageReasonSubType:v9];
    v27 = [*(a1 + 32) resolver];
    v28 = [v27 dohURL];
    [(NSPOutageReasonStats *)v8 setOdohProxy:v28];

    v29 = v8;
LABEL_32:

    v31 = *(a1 + 144);
    *(a1 + 144) = v29;

    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = sub_100001F44;
    v42 = sub_10004D038;
    v43 = os_transaction_create();
    objc_initWeak(location, a1);
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10004D040;
    v33[3] = &unk_1001099D0;
    objc_copyWeak(&v34, location);
    v33[4] = &buf;
    [WeakRetained checkPrivacyProxyConnectivityOnInterface:v7 proxyConnectivityCheckType:a4 completionHandler:v33];

    *(a1 + 8) = 1;
    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
    _Block_object_dispose(&buf, 8);
  }

LABEL_36:
}

void sub_10004D008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_10004D040(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[8] = 0;
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  v5 = WeakRetained;
}

id *sub_10004D0A4(id *a1)
{
  if (a1)
  {
    a1 = a1[18];
    v1 = vars8;
  }

  return a1;
}

void sub_10004D41C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_39;
  }

  v7 = WeakRetained[17];
  if (v7)
  {
    v8 = v7;
    v9 = +[NSDate now];
    [v9 timeIntervalSinceDate:*(v6 + 136)];
    v11 = v10;

    if (v11 <= 30.0)
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v6 + 136);
        *buf = 138412290;
        v51 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring DNS error, last resolver switched date %@", buf, 0xCu);
      }

      goto LABEL_38;
    }
  }

  v12 = *(a1 + 56);
  if (v12 == 94)
  {
    v16 = *(v6 + 104) + 1;
    *(v6 + 104) = v16;
    if (v16 < 3)
    {
LABEL_37:
      v14 = *(v6 + 152);
      [v14 setOdohBadMessageCount:[v14 odohBadMessageCount]+ 1];
LABEL_38:

      goto LABEL_39;
    }

    v17 = *(v6 + 64);
    if ([v17 status] == 1)
    {
      v18 = *(v6 + 72);
      if (!v18)
      {
        goto LABEL_18;
      }

      v19 = +[NSDate now];
      v20 = *(a1 + 40);
      if (v20)
      {
        v20 = v20[9];
      }

      v1 = v20;
      [v19 timeIntervalSinceDate:v1];
      if (v21 > 30.0)
      {
        v49 = v19;
LABEL_18:
        v22 = *(v6 + 80);
        if (v22)
        {
          v2 = +[NSDate now];
          v23 = *(a1 + 40);
          if (v23)
          {
            v23 = v23[10];
          }

          v3 = v23;
          [v2 timeIntervalSinceDate:v3];
          if (v24 <= 30.0)
          {
            v26 = 0;
            goto LABEL_46;
          }

          v25 = *(a1 + 32);
          if (!v25)
          {
            v26 = 1;
            goto LABEL_46;
          }
        }

        else
        {
          v25 = *(a1 + 32);
          if (!v25)
          {
            if (v18)
            {
            }

            goto LABEL_54;
          }
        }

        v43 = [v25 interfaceIndex];
        v44 = *(a1 + 40);
        if (v44)
        {
          v45 = *(v44 + 64);
        }

        else
        {
          v45 = 0;
        }

        v46 = [v45 interface];
        v26 = v43 == [v46 interfaceIndex];

        if (!v22)
        {
LABEL_47:
          if (v18)
          {
          }

          if (v26)
          {
LABEL_54:
            sub_10004CAD4(v6, *(a1 + 32), 94, 5);
            *(v6 + 104) = 0;
            goto LABEL_37;
          }

LABEL_26:
          v27 = nplog_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 40);
            if (v28)
            {
              v28 = v28[8];
            }

            v29 = v28;
            v30 = [v29 status];
            v31 = [*(a1 + 32) interfaceName];
            v32 = *(a1 + 40);
            v48 = v31;
            if (v32)
            {
              v32 = v32[8];
            }

            v33 = v32;
            v34 = [v33 interface];
            v35 = [v34 interfaceName];
            v36 = *(a1 + 40);
            v47 = v33;
            if (v36)
            {
              v36 = v36[9];
            }

            v37 = v36;
            v38 = [NSDateFormatter localizedStringFromDate:v37 dateStyle:1 timeStyle:2];
            v39 = *(a1 + 40);
            v40 = v30;
            if (v39)
            {
              v39 = v39[10];
            }

            v41 = v39;
            v42 = [NSDateFormatter localizedStringFromDate:v41 dateStyle:1 timeStyle:2];
            *buf = 134219010;
            v51 = v40;
            v52 = 2112;
            v53 = v48;
            v54 = 2112;
            v55 = v35;
            v56 = 2112;
            v57 = v38;
            v58 = 2112;
            v59 = v42;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "ignoring DNS bad message error, path status %ld reporting interface %@ primary interface %@ last path unsatisfied date %@, last interface change date %@", buf, 0x34u);
          }

          goto LABEL_37;
        }

LABEL_46:

        goto LABEL_47;
      }
    }

    goto LABEL_26;
  }

  if (v12 == 80)
  {
    v13 = *(v6 + 96) + 1;
    *(v6 + 96) = v13;
    if (v13 >= 3)
    {
      sub_10004CAD4(v6, *(a1 + 32), 80, 4);
      *(v6 + 96) = 0;
    }

    v14 = *(v6 + 152);
    [v14 setOdohAuthFailureCount:[v14 odohAuthFailureCount]+ 1];
    goto LABEL_38;
  }

LABEL_39:
}

void sub_10004D8DC()
{
  objc_opt_self();
  v0 = nplog_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "remove userevent agent data", v3, 2u);
  }

  v1 = +[NEFileHandleMaintainer sharedMaintainer];
  [v1 setAuxiliaryData:@"NIL" forKey:@"NSPServerODoHAuxilaryData"];

  v2 = +[NEFileHandleMaintainer sharedMaintainer];
  [v2 commit];
}

void sub_10004E11C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[NSPEventsNormalizer alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000539B8(id a1)
{
  qword_100129790 = [NSString stringWithUTF8String:nw_resolver_config_get_private_dns_agent_type()];

  _objc_release_x1();
}

void sub_100053E20(id a1)
{
  qword_1001297A0 = [NSString stringWithUTF8String:nw_resolver_config_get_system_private_dns_agent_type()];

  _objc_release_x1();
}

id sub_100053E68()
{
  objc_opt_self();
  if (qword_1001297C8 != -1)
  {
    dispatch_once(&qword_1001297C8, &stru_100109E38);
  }

  v0 = qword_1001297C0;

  return v0;
}

void sub_100053EC0(id a1)
{
  v1 = objc_alloc_init(NSPServer);
  v2 = qword_1001297C0;
  qword_1001297C0 = v1;

  if (qword_1001297C0)
  {
    *(qword_1001297C0 + 32) = -1;
  }
}

void *sub_100053F08()
{
  objc_opt_self();
  v0 = sub_100053E68();
  v1 = v0;
  if (v0)
  {
    v2 = *(v0 + 400);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

void *sub_100053F5C()
{
  objc_opt_self();
  v0 = sub_100053E68();
  v1 = v0;
  if (v0)
  {
    v2 = *(v0 + 408);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

void *sub_100053FB0()
{
  objc_opt_self();
  v0 = sub_100053E68();
  v1 = v0;
  if (v0)
  {
    v2 = *(v0 + 416);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

void *sub_100054004()
{
  objc_opt_self();
  v0 = sub_100053E68();
  v1 = v0;
  if (v0)
  {
    v2 = *(v0 + 424);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

void *sub_100054058()
{
  objc_opt_self();
  v0 = sub_100053E68();
  v1 = v0;
  if (v0)
  {
    v2 = *(v0 + 432);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

void *sub_1000540AC()
{
  objc_opt_self();
  v0 = sub_100053E68();
  v1 = v0;
  if (v0)
  {
    v2 = *(v0 + 440);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

uint64_t sub_100054100()
{
  objc_opt_self();
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    v1 = sub_100053E68();
    v2 = v1;
    if (v1)
    {
      v1 = v1[6];
    }

    v3 = [v1 ignorePlatformBinary];

    return v3;
  }

  return result;
}

void sub_10005415C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_26;
  }

  int64 = xpc_dictionary_get_int64(v3, "NSPAgentType");
  v6 = nplog_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v12[0]) = 67109120;
    HIDWORD(v12[0]) = int64;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Got request to fetch an agent UUID for type %d", v12, 8u);
  }

  if (int64 <= 3)
  {
    switch(int64)
    {
      case 1:
        v7 = sub_100053F08();
        if (v7)
        {
          goto LABEL_20;
        }

        break;
      case 2:
        v7 = sub_100053F5C();
        if (v7)
        {
          goto LABEL_20;
        }

        break;
      case 3:
        v7 = sub_100053FB0();
        if (!v7)
        {
          break;
        }

        goto LABEL_20;
      default:
        break;
    }

LABEL_25:
    sub_100054384(v4, 1004, @"unknown agent type");
    goto LABEL_26;
  }

  if (int64 == 4)
  {
    v7 = sub_100054004();
    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (int64 != 5)
  {
    if (int64 != 6)
    {
      goto LABEL_25;
    }

    v7 = sub_1000540AC();
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v7 = sub_100054058();
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_20:
  v8 = v7;
  v9 = v4;
  reply = xpc_dictionary_create_reply(v9);
  v11 = xpc_dictionary_get_remote_connection(v9);

  if (reply && v11)
  {
    v12[0] = 0;
    v12[1] = 0;
    [v8 getUUIDBytes:v12];
    xpc_dictionary_set_uuid(reply, "NSPAgentUUID", v12);
    xpc_connection_send_message(v11, reply);
  }

LABEL_26:
}

void sub_100054384(void *a1, int64_t a2, void *a3)
{
  v10 = a3;
  v5 = a1;
  reply = xpc_dictionary_create_reply(v5);
  v7 = xpc_dictionary_get_remote_connection(v5);

  if (reply && v7)
  {
    xpc_dictionary_set_int64(reply, "NSPServerErrorCode", a2);
    if (v10)
    {
      v8 = reply;
      v9 = v10;
      xpc_dictionary_set_string(v8, "NSPServerErrorString", [v9 UTF8String]);
    }

    xpc_connection_send_message(v7, reply);
  }
}

id sub_100054464(void *a1)
{
  if (a1)
  {
    a1 = NPGetInternalQueue();
    v1 = vars8;
  }

  return a1;
}

void sub_10005449C(uint64_t a1, void *a2)
{
  object = a2;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    switch(xpc_dictionary_get_int64(object, "NSPServerCommandType"))
    {
      case 1:
        sub_100054958(*(a1 + 32), object);
        break;
      case 2:
        sub_1000549F8(*(a1 + 32), object);
        break;
      case 13:
        sub_100054B80(*(a1 + 32), object);
        break;
      case 16:
        sub_100054CFC(*(a1 + 32), object);
        break;
      case 17:
        sub_100055304(*(a1 + 32), object);
        break;
      case 18:
        sub_10005552C(*(a1 + 32), object);
        break;
      case 19:
        sub_100056C0C(*(a1 + 32), object);
        break;
      case 20:
        sub_1000570D0(*(a1 + 32), object);
        break;
      case 21:
        sub_100057430(*(a1 + 32), object);
        break;
      case 22:
        sub_100057670(*(a1 + 32), object);
        break;
      case 23:
        sub_100057864(*(a1 + 32), object);
        break;
      case 24:
        sub_100057A88(*(a1 + 32), object);
        break;
      case 25:
        sub_100057D30(*(a1 + 32), object);
        break;
      case 26:
        sub_100058194(*(a1 + 32), object);
        break;
      case 27:
        sub_100058298(*(a1 + 32), object);
        break;
      case 28:
        sub_10005835C(*(a1 + 32));
        break;
      case 29:
        sub_1000583EC(*(a1 + 32));
        break;
      case 30:
        sub_100055070(*(a1 + 32), object);
        break;
      case 31:
        sub_100057F70(*(a1 + 32), object);
        break;
      case 32:
        sub_10005847C(*(a1 + 32), object);
        break;
      case 33:
        sub_100055770(*(a1 + 32), object);
        break;
      case 34:
        sub_1000559B4(*(a1 + 32), object);
        break;
      case 35:
        sub_100055D80(*(a1 + 32), object);
        break;
      case 36:
        sub_1000562D0(*(a1 + 32), object);
        break;
      case 37:
        sub_100058CB4(*(a1 + 32), object);
        break;
      case 38:
        sub_100058F1C(*(a1 + 32), object);
        break;
      case 39:
        sub_100059570(*(a1 + 32), object);
        break;
      case 40:
        sub_100059798(*(a1 + 32), object);
        break;
      case 41:
        sub_100059C30(*(a1 + 32), object);
        break;
      case 42:
        sub_100059EA4(*(a1 + 32), object);
        break;
      case 43:
        sub_100059110(*(a1 + 32), object);
        break;
      case 44:
        sub_100059378(*(a1 + 32), object);
        break;
      case 45:
        sub_10005A0AC(*(a1 + 32), object);
        break;
      case 46:
        sub_10005A4E0(*(a1 + 32), object);
        break;
      case 47:
        sub_10005A708(*(a1 + 32), object);
        break;
      case 48:
        sub_1000599CC(*(a1 + 32), object);
        break;
      case 49:
        sub_1000586DC(*(a1 + 32), object);
        break;
      case 50:
        sub_1000589C4(*(a1 + 32), object);
        break;
      case 51:
        sub_10005A93C(*(a1 + 32), object);
        break;
      case 52:
        sub_10005CA64(*(a1 + 32), object);
        break;
      case 53:
        sub_10005CE5C(*(a1 + 32), object);
        break;
      case 54:
        sub_10005D0C8(*(a1 + 32), object);
        break;
      case 55:
        sub_10005D2F0(*(a1 + 32), object);
        break;
      case 56:
        sub_10005D524(*(a1 + 32), object);
        break;
      case 57:
        sub_10005D74C(*(a1 + 32), object);
        break;
      case 58:
        sub_10005D974(*(a1 + 32), object);
        break;
      case 59:
        sub_10005DB64(*(a1 + 32), object);
        break;
      case 60:
        sub_10005C834(*(a1 + 32), object);
        break;
      case 61:
        sub_10005DDBC(*(a1 + 32), object);
        break;
      case 62:
        sub_10005E024(*(a1 + 32), object);
        break;
      case 63:
        sub_100056508(*(a1 + 32), object);
        break;
      case 64:
        sub_10005680C(*(a1 + 32), object);
        break;
      case 65:
        sub_10005E290(*(a1 + 32), object);
        break;
      case 66:
        sub_10005E4B8(*(a1 + 32), object);
        break;
      case 67:
        sub_10005EF28(*(a1 + 32), object);
        break;
      case 68:
        sub_10005F400(*(a1 + 32), object);
        break;
      case 69:
        sub_10005F668(*(a1 + 32), object);
        break;
      case 70:
        sub_10005BB10(*(a1 + 32), object);
        break;
      case 71:
        sub_10005BC48(*(a1 + 32), object);
        break;
      case 72:
        sub_10005C250(*(a1 + 32), object);
        break;
      case 73:
        sub_10005C52C(*(a1 + 32), object);
        break;
      case 74:
        sub_10005F85C(*(a1 + 32), object);
        break;
      case 75:
        sub_10005415C(*(a1 + 32), object);
        break;
      case 76:
        sub_10005F94C(*(a1 + 32), object);
        break;
      default:
        xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
        goto LABEL_3;
    }
  }

  else
  {
LABEL_3:
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void sub_100054958(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Handling a request for a copy of the current configuration", v5, 2u);
    }

    sub_10006D634(v3, "NSPServerConfiguration", *(a1 + 48));
  }
}

void sub_1000549F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = [NSSet setWithObjects:objc_opt_class(), 0];
      v6 = get_nsdata_from_xpc_object();
      if (v6)
      {
        v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v6 error:0];
      }

      else
      {
        v7 = 0;
      }

      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Handling set configuration", buf, 2u);
      }

      [*(a1 + 64) updateConfiguration:v7];
      v9 = v4;
      reply = xpc_dictionary_create_reply(v9);
      v11 = xpc_dictionary_get_remote_connection(v9);

      if (reply && v11)
      {
        xpc_connection_send_message(v11, reply);
      }
    }

    else
    {
      sub_10006D73C(v4, "NSPServerErrorString", @"Permission denied");
    }
  }
}

void sub_100054B80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = xpc_dictionary_get_double(v3, "NSPServerLatitude");
    v6 = xpc_dictionary_get_double(v4, "NSPServerLongtitude");
    if (xpc_dictionary_get_double(v4, "NSPServerTimestamp") <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = [NSDate dateWithTimeIntervalSince1970:?];
    }

    string = xpc_dictionary_get_string(v4, "NSPServerSigningIdentifier");
    if (string)
    {
      string = [[NSString alloc] initWithUTF8String:string];
    }

    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218754;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = string;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Handling set latitude and longitude <%f, %f> at %@ for %@", &v10, 0x2Au);
    }
  }
}

void sub_100054CFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = get_nsdata_from_xpc_object();
      v6 = [[NSPPrivacyProxyConfiguration alloc] initWithData:v5];
      if (v6)
      {
        v7 = nplog_large_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v26) = 138412290;
          *(&v26 + 4) = v6;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Handling set privacy proxy configuration %@", &v26, 0xCu);
        }

        v8 = objc_alloc_init(NSPConfiguration);
        v9 = v8;
        if (v8)
        {
          [v8 merge:*(a1 + 48)];
          [v9 setProxyConfiguration:v6];
          v10 = +[NSDate now];
          [v9 setConfigurationFetchDate:v10];

          v11 = [v9 proxyConfiguration];
          v12 = [v11 disableUntil];

          if (v12)
          {
            v13 = [NSDate alloc];
            v14 = [v9 proxyConfiguration];
            v15 = [v13 initWithTimeIntervalSince1970:{objc_msgSend(v14, "disableUntil")}];

            [v15 timeIntervalSinceNow];
            if (v16 > 0.0)
            {
              [v9 setResurrectionDate:v15];
            }
          }

          [*(a1 + 64) updateConfiguration:v9];
          v17 = v4;
          reply = xpc_dictionary_create_reply(v17);
          v19 = xpc_dictionary_get_remote_connection(v17);

          if (reply && v19)
          {
            xpc_connection_send_message(v19, reply);
          }
        }

        else
        {
          sub_10006D73C(v4, "NSPServerErrorString", @"Failed to parse privacyProxyConfiguration to NSPConfiguration");
        }
      }

      else
      {
        sub_10006D73C(v4, "NSPServerErrorString", @"Failed to parse configuration data to privacyProxyConfiguration");
      }
    }

    else
    {
      v20 = xpc_dictionary_get_remote_connection(v4);
      v21 = v20;
      if (v20 && (pid = xpc_connection_get_pid(v20), v26 = 0u, memset(v27, 0, sizeof(v27)), proc_pidinfo(pid, 13, 1uLL, &v26, 64) == 64))
      {
        v23 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v23, v27, 0x10uLL);
      }

      else
      {
        v23 = 0;
      }

      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = "";
        if (v23)
        {
          v25 = v23;
        }

        LODWORD(v26) = 136315138;
        *(&v26 + 4) = v25;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "set current privacy proxy configuration failed due to missing entitlement for %s", &v26, 0xCu);
      }

      if (v23)
      {
        free(v23);
      }

      sub_10006D73C(v4, "NSPServerErrorString", @"Permission denied");
    }
  }
}

void sub_100055070(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "processing privacy proxy configuration convert request", buf, 2u);
    }

    v5 = get_nsdata_from_xpc_object();
    if (v5)
    {
      v6 = [[NSPPrivacyProxySignedConfiguration alloc] initWithData:v5];
      if (v6)
      {
        v7 = objc_alloc_init(NSPConfigurationSignatureInfo);
        v8 = [v6 certificates];
        [v7 setCertificates:v8];

        v9 = [v6 signature];
        [v7 setSignature:v9];

        [v7 setSignatureAlgorithm:{objc_msgSend(v6, "algorithm")}];
        v19 = objc_alloc_init(NSData);
        v10 = NSPPrivacyProxyConfigurationRawConfig();
        v11 = v19;

        if (v10)
        {
          v12 = *(a1 + 48);
          v13 = [v12 configServerHost];
          v14 = *(a1 + 48);
          v15 = [v14 ignoreInvalidCerts];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10006D8AC;
          v16[3] = &unk_10010A0D0;
          v17 = v11;
          v18 = v3;
          [NSPConfiguration verifyConfigurationSignature:v7 configuration:v17 host:v13 validateCert:v15 ^ 1 completionHandler:v16];
        }

        else
        {
          sub_100054384(v3, 1005, @"could not extract raw configuration data");
        }
      }

      else
      {
        sub_100054384(v3, 1005, @"invalid configuration data");
      }
    }

    else
    {
      sub_100054384(v3, 1004, @"invalid parameter");
    }
  }
}

void sub_100055304(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling set privacy proxy status", &v15, 2u);
      }

      [*(a1 + 64) configurationEnabled:{xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyEnabled")}];
      v6 = v4;
      reply = xpc_dictionary_create_reply(v6);
      v8 = xpc_dictionary_get_remote_connection(v6);

      if (reply && v8)
      {
        xpc_connection_send_message(v8, reply);
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v15 = 0u, memset(v16, 0, sizeof(v16)), proc_pidinfo(pid, 13, 1uLL, &v15, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v16, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "setting privacy proxy status failed due to missing entitlement for %s", &v15, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005552C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v17) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling get privacy proxy status", &v17, 2u);
      }

      v6 = [*(a1 + 48) enabled];
      v7 = [v6 BOOLValue];
      v8 = v4;
      reply = xpc_dictionary_create_reply(v8);
      v10 = xpc_dictionary_get_remote_connection(v8);

      if (reply && v10)
      {
        xpc_dictionary_set_BOOL(reply, "NSPServerPrivacyProxyEnabled", v7);
        xpc_connection_send_message(v10, reply);
      }
    }

    else
    {
      v11 = xpc_dictionary_get_remote_connection(v4);
      v12 = v11;
      if (v11 && (pid = xpc_connection_get_pid(v11), v17 = 0u, memset(v18, 0, sizeof(v18)), proc_pidinfo(pid, 13, 1uLL, &v17, 64) == 64))
      {
        v14 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v14, v18, 0x10uLL);
      }

      else
      {
        v14 = 0;
      }

      v15 = nplog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = "";
        if (v14)
        {
          v16 = v14;
        }

        LODWORD(v17) = 136315138;
        *(&v17 + 4) = v16;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "getting privacy proxy status failed due to missing entitlement for %s", &v17, 0xCu);
      }

      if (v14)
      {
        free(v14);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100055770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "process proxy service status request", &v16, 2u);
      }

      v6 = *(a1 + 80);
      if (v6)
      {
        reply = [v6 serviceStatus];
        v8 = [reply serialize];
        sub_100002130(v4, "NSPServerPrivacyProxyServiceStatus", v8);
      }

      else
      {
        v14 = v4;
        reply = xpc_dictionary_create_reply(v14);
        v8 = xpc_dictionary_get_remote_connection(v14);

        if (reply && v8)
        {
          xpc_connection_send_message(v8, reply);
        }
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v17, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v12)
        {
          v15 = v12;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "getting service status for privacy proxy failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_1000559B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v25) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "process proxy report service status", &v25, 2u);
      }

      int64 = xpc_dictionary_get_int64(v4, "NSPServerPrivacyProxyServiceStatus");
      v7 = int64;
      if (int64 <= 3)
      {
        if (int64 <= 1)
        {
          if (int64)
          {
            if (int64 == 1)
            {
              [*(a1 + 80) reportServiceActiveShouldReport:0];
              goto LABEL_32;
            }

LABEL_38:
            sub_100054384(v4, 1004, @"Invalid status");
            reply = nplog_obj();
            if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v25) = 134217984;
              *(&v25 + 4) = v7;
              _os_log_error_impl(&_mh_execute_header, reply, OS_LOG_TYPE_ERROR, "report service status for privacy proxy failed due to bad value: %lld", &v25, 0xCu);
            }

            goto LABEL_36;
          }

          [*(a1 + 80) reportServiceDisabledShouldReport:0];
LABEL_32:
          v21 = v4;
          reply = xpc_dictionary_create_reply(v21);
          v23 = xpc_dictionary_get_remote_connection(v21);

          if (reply && v23)
          {
            xpc_connection_send_message(v23, reply);
          }

LABEL_36:
          goto LABEL_37;
        }

        if (int64 != 2)
        {
          [*(a1 + 80) reportFraudAlert];
          goto LABEL_32;
        }

        v13 = *(a1 + 80);
        v14 = 0;
LABEL_29:
        [v13 reportServiceOutageWithType:v14 outageReasonStats:0];
        goto LABEL_32;
      }

      if (int64 > 5)
      {
        if (int64 != 6)
        {
          if (int64 != 7)
          {
            goto LABEL_38;
          }

          v13 = *(a1 + 80);
          v14 = 2;
          goto LABEL_29;
        }

        v20 = *(a1 + 80);
        v16 = *(a1 + 48);
        v17 = v20;
        v18 = [v16 proxyConfiguration];
        v19 = [v18 regionId];
        [v17 reportSubscriberUnsupportedRegion:v19];
      }

      else
      {
        if (int64 != 4)
        {
          [*(a1 + 80) reportSystemIncompatibility];
          goto LABEL_32;
        }

        v15 = *(a1 + 80);
        v16 = *(a1 + 48);
        v17 = v15;
        v18 = [v16 proxyConfiguration];
        v19 = [v18 regionId];
        [v17 reportUnsupportedRegion:v19];
      }

      goto LABEL_32;
    }

    v8 = xpc_dictionary_get_remote_connection(v4);
    v9 = v8;
    if (v8 && (pid = xpc_connection_get_pid(v8), v25 = 0u, memset(v26, 0, sizeof(v26)), proc_pidinfo(pid, 13, 1uLL, &v25, 64) == 64))
    {
      v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      strncpy(v11, v26, 0x10uLL);
    }

    else
    {
      v11 = 0;
    }

    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v24 = "";
      if (v11)
      {
        v24 = v11;
      }

      LODWORD(v25) = 136315138;
      *(&v25 + 4) = v24;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "reporting service status for privacy proxy failed due to missing entitlement for %s", &v25, 0xCu);
    }

    if (v11)
    {
      free(v11);
    }

    sub_100054384(v4, 1001, @"Permission denied");
  }

LABEL_37:
}

void sub_100055D80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v37) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "process proxy report network status", &v37, 2u);
      }

      v6 = get_nsdata_from_xpc_object();
      v7 = [[PrivacyProxyNetworkStatus alloc] initWithData:v6];
      v8 = v7;
      if (!v7)
      {
        sub_100054384(v4, 1004, @"Invalid status");
        reply = nplog_obj();
        if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v37) = 0;
          v21 = "report service status for privacy proxy failed due to missing value";
          v22 = reply;
          v23 = 2;
LABEL_48:
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, &v37, v23);
          goto LABEL_44;
        }

        goto LABEL_44;
      }

      if ([v7 networkType] == 1)
      {
        v9 = [v8 networkStatus];
        if (v9 == 2)
        {
          v29 = *(a1 + 80);
          v30 = [v8 networkName];
          [v29 reportBlockedOnWiFiName:v30];
        }

        else
        {
          if (v9 != 1)
          {
            if (!v9)
            {
              v10 = *(a1 + 80);
              v11 = [v8 networkName];
              [v10 reportDisabledOnWiFiName:v11];

              v12 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
              v13 = v12;
              v14 = 1;
LABEL_29:
              [v12 wifiDisabled:v14];
LABEL_39:

LABEL_40:
              v34 = v4;
              reply = xpc_dictionary_create_reply(v34);
              v35 = xpc_dictionary_get_remote_connection(v34);

              if (reply && v35)
              {
                xpc_connection_send_message(v35, reply);
              }

              goto LABEL_44;
            }

            sub_100054384(v4, 1004, @"Invalid status");
            reply = nplog_obj();
            if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_47;
            }

            goto LABEL_44;
          }

          v29 = *(a1 + 80);
          v30 = [v8 networkName];
          [v29 reportActiveOnWiFiName:v30];
        }

        v12 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
        v13 = v12;
        v14 = 0;
        goto LABEL_29;
      }

      if ([v8 networkType] != 2)
      {
        goto LABEL_40;
      }

      v24 = [v8 networkStatus];
      if (v24 == 2)
      {
        v32 = *(a1 + 80);
        v33 = [v8 networkName];
        [v32 reportBlockedOnCellularName:v33];
      }

      else
      {
        if (v24 != 1)
        {
          if (v24)
          {
            sub_100054384(v4, 1004, @"Invalid status");
            reply = nplog_obj();
            if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
            {
LABEL_47:
              v36 = [v8 networkStatus];
              LODWORD(v37) = 134217984;
              *(&v37 + 4) = v36;
              v21 = "report service status for privacy proxy failed due to bad value: %lld";
              v22 = reply;
              v23 = 12;
              goto LABEL_48;
            }

LABEL_44:

            goto LABEL_45;
          }

          v25 = *(a1 + 80);
          v26 = [v8 networkName];
          [v25 reportDisabledOnCellularName:v26];

          v27 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
          v13 = v27;
          v28 = 1;
LABEL_38:
          [v27 cellularDisabled:v28];
          goto LABEL_39;
        }

        v32 = *(a1 + 80);
        v33 = [v8 networkName];
        [v32 reportActiveOnCellularName:v33];
      }

      v27 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
      v13 = v27;
      v28 = 0;
      goto LABEL_38;
    }

    v15 = xpc_dictionary_get_remote_connection(v4);
    v16 = v15;
    if (v15 && (pid = xpc_connection_get_pid(v15), v37 = 0u, memset(v38, 0, sizeof(v38)), proc_pidinfo(pid, 13, 1uLL, &v37, 64) == 64))
    {
      v18 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      strncpy(v18, v38, 0x10uLL);
    }

    else
    {
      v18 = 0;
    }

    v19 = nplog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v31 = "";
      if (v18)
      {
        v31 = v18;
      }

      LODWORD(v37) = 136315138;
      *(&v37 + 4) = v31;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "reporting network status for privacy proxy failed due to missing entitlement for %s", &v37, 0xCu);
    }

    if (v18)
    {
      free(v18);
    }

    sub_100054384(v4, 1001, @"Permission denied");
  }

LABEL_45:
}

void sub_1000562D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "process proxy service status timeline request", &v16, 2u);
      }

      v6 = *(a1 + 80);
      if (v6)
      {
        reply = [v6 serviceStatusTimeline];
        sub_10006D634(v4, "NSPServerPrivacyProxyServiceStatusTimeline", reply);
      }

      else
      {
        v13 = v4;
        reply = xpc_dictionary_create_reply(v13);
        v14 = xpc_dictionary_get_remote_connection(v13);

        if (reply && v14)
        {
          xpc_connection_send_message(v14, reply);
        }
      }
    }

    else
    {
      v8 = xpc_dictionary_get_remote_connection(v4);
      v9 = v8;
      if (v8 && (pid = xpc_connection_get_pid(v8), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v11, v17, 0x10uLL);
      }

      else
      {
        v11 = 0;
      }

      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v11)
        {
          v15 = v11;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "getting service status timelinefor privacy proxy failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v11)
      {
        free(v11);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100056508(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v24) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "process get app statuses request", &v24, 2u);
      }

      v6 = [*(a1 + 48) anyAppEnabledDate];
      v7 = [*(a1 + 80) appStatuses];
      reply = xpc_dictionary_create_reply(v4);
      v9 = xpc_dictionary_get_remote_connection(v4);
      if (v9)
      {
        v10 = reply;
        v11 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
        if (v11)
        {
          v12 = v10;
          v13 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(v12, "NSPServerPrivacyProxyAnyAppEnabledDate", v13);
        }

        v14 = v10;
        v15 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
        if (v15)
        {
          v16 = v14;
          v17 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(v16, "NSPServerPrivacyProxyAppStatuses", v17);
        }

        xpc_connection_send_message(v9, v14);
      }
    }

    else
    {
      v18 = xpc_dictionary_get_remote_connection(v4);
      v19 = v18;
      if (v18 && (pid = xpc_connection_get_pid(v18), v24 = 0u, memset(v25, 0, sizeof(v25)), proc_pidinfo(pid, 13, 1uLL, &v24, 64) == 64))
      {
        v21 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v21, v25, 0x10uLL);
      }

      else
      {
        v21 = 0;
      }

      v22 = nplog_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        LODWORD(v24) = 136315138;
        *(&v24 + 4) = v23;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "getting service status for privacy proxy failed due to missing entitlement for %s", &v24, 0xCu);
      }

      if (v21)
      {
        free(v21);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005680C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = [NSSet setWithObjects:objc_opt_class(), 0];
      v6 = get_nsdata_from_xpc_object();
      if (v6)
      {
        v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v6 error:0];
      }

      else
      {
        v7 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buffer) = 138412290;
        *(&buffer + 4) = v7;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "process set app status request: %@", &buffer, 0xCu);
      }

      v14 = [v7 bundleIdentifier];
      if (v14)
      {
      }

      else
      {
        v15 = [v7 path];

        if (!v15)
        {
          v24 = @"Invalid app info";
          goto LABEL_27;
        }
      }

      v16 = [v7 appStatus];
      if (v16 == 2 || [v7 appStatus] == 1)
      {
        v17 = *(a1 + 80);
        v18 = [v7 bundleIdentifier];
        v19 = [v7 path];
        v20 = [v17 changePausedState:v16 == 2 forApp:v18 path:v19];

        if (v20)
        {
          if ((sub_10006D9A0(a1) & 1) == 0)
          {
            if (v16 == 2)
            {
              v21 = +[NSCalendar currentCalendar];
              v22 = +[NSDate date];
              v23 = [v21 nextDateAfterDate:v22 matchingUnit:32 value:0 options:1024];

              [*(a1 + 64) setResetDate:v23];
            }

            else
            {
              [*(a1 + 64) clearResetDate];
            }
          }

          sub_10006E014(a1);
        }

        v25 = v4;
        reply = xpc_dictionary_create_reply(v25);
        v27 = xpc_dictionary_get_remote_connection(v25);

        if (reply && v27)
        {
          xpc_connection_send_message(v27, reply);
        }

        goto LABEL_34;
      }

      v24 = @"Invalid app status";
LABEL_27:
      sub_100054384(v4, 1004, v24);
LABEL_34:

      goto LABEL_35;
    }

    v8 = xpc_dictionary_get_remote_connection(v4);
    v9 = v8;
    if (v8 && (pid = xpc_connection_get_pid(v8), buffer = 0u, memset(v30, 0, sizeof(v30)), proc_pidinfo(pid, 13, 1uLL, &buffer, 64) == 64))
    {
      v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      strncpy(v11, v30, 0x10uLL);
    }

    else
    {
      v11 = 0;
    }

    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v28 = "";
      if (v11)
      {
        v28 = v11;
      }

      LODWORD(buffer) = 136315138;
      *(&buffer + 4) = v28;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "getting service status for privacy proxy failed due to missing entitlement for %s", &buffer, 0xCu);
    }

    if (v11)
    {
      free(v11);
    }

    sub_100054384(v4, 1001, @"Permission denied");
  }

LABEL_35:
}

void sub_100056C0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      string = xpc_dictionary_get_string(v4, "NSPServerSigningIdentifier");
      v7 = 1;
      if (string)
      {
        v6 = [[NSString alloc] initWithUTF8String:string];
        string = v6;
        if (v6)
        {
          if (([v6 isEqualToString:@"com.apple.Preferences"] & 1) != 0 || objc_msgSend(string, "hasPrefix:", @"com.apple.systempreferences"))
          {
            v7 = 0;
          }
        }
      }

      *(a1 + 24) = v7;
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v33) = 138412290;
        *(&v33 + 4) = string;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Handling set privacy proxy user tier from %@", &v33, 0xCu);
      }

      uint64 = xpc_dictionary_get_uint64(v4, "NSPServerPrivacyProxyUserTier");
      if (uint64 - 3 > 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxySetUntilTomorrow");
        if (uint64 == 1 || !v17)
        {
          if (v17)
          {
            v19 = +[NSCalendar currentCalendar];
            v20 = +[NSDate date];
            v21 = [v19 nextDateAfterDate:v20 matchingUnit:32 value:0 options:1024];
          }

          else
          {
            v21 = 0;
          }

          v22 = *(a1 + 64);
          v23 = *(a1 + 80);
          v24 = v22;
          v25 = [v23 hasPausedApps];
          if (*(a1 + 24))
          {
            v26 = 3;
          }

          else
          {
            v26 = 1;
          }

          v27 = [v24 setUserTier:uint64 resetDate:v21 clearResetDate:v25 ^ 1 changeSource:v26];

          if (v27)
          {
            v28 = v4;
            reply = xpc_dictionary_create_reply(v28);
            v30 = xpc_dictionary_get_remote_connection(v28);

            if (reply && v30)
            {
              xpc_connection_send_message(v30, reply);
            }
          }

          else
          {
            v31 = nplog_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v33) = 134217984;
              *(&v33 + 4) = uint64;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "failed to set user tier %lld", &v33, 0xCu);
            }

            sub_100054384(v4, 1003, @"failed to set user tier");
          }

          goto LABEL_44;
        }

        v18 = nplog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v33) = 134217984;
          *(&v33 + 4) = 2;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "user tier %lld cannot be set temporarily", &v33, 0xCu);
        }

        v15 = @"user tier cannot be set temporarily";
      }

      else
      {
        v14 = nplog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v33) = 134217984;
          *(&v33 + 4) = uint64;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "invalid user tier type %lld", &v33, 0xCu);
        }

        v15 = @"invalid user tier";
      }

      sub_100054384(v4, 1003, v15);
LABEL_44:

      goto LABEL_45;
    }

    v8 = xpc_dictionary_get_remote_connection(v4);
    v9 = v8;
    if (v8 && (pid = xpc_connection_get_pid(v8), v33 = 0u, memset(v34, 0, sizeof(v34)), proc_pidinfo(pid, 13, 1uLL, &v33, 64) == 64))
    {
      v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      strncpy(v11, v34, 0x10uLL);
    }

    else
    {
      v11 = 0;
    }

    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v32 = "";
      if (v11)
      {
        v32 = v11;
      }

      LODWORD(v33) = 136315138;
      *(&v33 + 4) = v32;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "setting user tier for privacy proxy failed due to missing entitlement for %s", &v33, 0xCu);
    }

    if (v11)
    {
      free(v11);
    }

    sub_100054384(v4, 1001, @"Permission denied");
  }

LABEL_45:
}

void sub_1000570D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buffer) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling get privacy proxy user tier", &buffer, 2u);
      }

      reply = xpc_dictionary_create_reply(v4);
      v7 = xpc_dictionary_get_remote_connection(v4);
      if (!v7)
      {
        goto LABEL_30;
      }

      v8 = [*(a1 + 48) userTier];

      if (v8)
      {
        v9 = [*(a1 + 48) userTier];
        if (v9)
        {
          v10 = reply;
          xpc_dictionary_set_uint64(v10, "NSPServerPrivacyProxyUserTier", [v9 unsignedIntValue]);
        }
      }

      v11 = *(a1 + 48);
      v12 = [v11 userTier];
      if ([v12 unsignedIntegerValue] == 1)
      {
        v13 = *(a1 + 48);
        v14 = [v13 willResetSubscriberTierTomorrow];
        if ([v14 BOOLValue])
        {
          v15 = *(a1 + 48);
          v16 = [v15 resetTomorrowDate];
          if (v16)
          {
            v17 = v16;
            +[NSCalendar currentCalendar];
            v18 = v26 = v15;
            v19 = [*(a1 + 48) resetTomorrowDate];
            v27 = [v18 isDateInTomorrow:v19];

            if (v27)
            {
              xpc_dictionary_set_BOOL(reply, "NSPServerPrivacyProxySetUntilTomorrow", 1);
            }

            goto LABEL_29;
          }
        }
      }

LABEL_29:
      xpc_connection_send_message(v7, reply);
LABEL_30:

      goto LABEL_31;
    }

    v20 = xpc_dictionary_get_remote_connection(v4);
    v21 = v20;
    if (v20 && (pid = xpc_connection_get_pid(v20), buffer = 0u, memset(v29, 0, sizeof(v29)), proc_pidinfo(pid, 13, 1uLL, &buffer, 64) == 64))
    {
      v23 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      strncpy(v23, v29, 0x10uLL);
    }

    else
    {
      v23 = 0;
    }

    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = "";
      if (v23)
      {
        v25 = v23;
      }

      LODWORD(buffer) = 136315138;
      *(&buffer + 4) = v25;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "getting user tier for privacy proxy failed due to missing entitlement for %s", &buffer, 0xCu);
    }

    if (v23)
    {
      free(v23);
    }

    sub_100054384(v4, 1001, @"Permission denied");
  }

LABEL_31:
}

void sub_100057430(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling set privacy proxy traffic state", &v16, 2u);
      }

      uint64 = xpc_dictionary_get_uint64(v4, "NSPServerPrivacyProxyTrafficMask");
      [*(a1 + 64) setProxyTrafficState:uint64 proxyTraffic:{xpc_dictionary_get_uint64(v4, "NSPServerPrivacyProxyTraffic")}];
      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "setting privacy proxy traffic state failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100057670(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling get privacy proxy traffic state", &v13, 2u);
      }

      v6 = [*(a1 + 48) proxyTrafficState];
      sub_100002068(v4, "NSPServerPrivacyProxyTraffic", v6);
    }

    else
    {
      v7 = xpc_dictionary_get_remote_connection(v4);
      v8 = v7;
      if (v7 && (pid = xpc_connection_get_pid(v7), v13 = 0u, memset(v14, 0, sizeof(v14)), proc_pidinfo(pid, 13, 1uLL, &v13, 64) == 64))
      {
        v10 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v10, v14, 0x10uLL);
      }

      else
      {
        v10 = 0;
      }

      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = "";
        if (v10)
        {
          v12 = v10;
        }

        LODWORD(v13) = 136315138;
        *(&v13 + 4) = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "getting traffic state for privacy proxy failed due to missing entitlement for %s", &v13, 0xCu);
      }

      if (v10)
      {
        free(v10);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100057864(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing privacy proxy policy get request", &v14, 2u);
      }

      v6 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
      v7 = [v6 currentPolicy];
      if (v7)
      {
        sub_100002130(v4, "NSPServerPrivacyProxyPolicy", v7);
      }

      else
      {
        sub_100054384(v4, 1005, @"nil privacy proxy policy");
      }
    }

    else
    {
      v8 = xpc_dictionary_get_remote_connection(v4);
      v9 = v8;
      if (v8 && (pid = xpc_connection_get_pid(v8), v14 = 0u, memset(v15, 0, sizeof(v15)), proc_pidinfo(pid, 13, 1uLL, &v14, 64) == 64))
      {
        v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v11, v15, 0x10uLL);
      }

      else
      {
        v11 = 0;
      }

      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        LODWORD(v14) = 136315138;
        *(&v14 + 4) = v13;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "getting privacy proxy policy failed due to missing entitlement for %s", &v14, 0xCu);
      }

      if (v11)
      {
        free(v11);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100057A88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buffer) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing privacy proxy policy set request", &buffer, 2u);
      }

      v6 = get_nsdata_from_xpc_object();
      v7 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
      v8 = [[NSPPrivacyProxyPolicy alloc] initWithData:v6];
      v9 = [v7 set:v8 flowDivertHandle:0 inProcessFlowDivert:0 ingressProxyURL:0 ingressFallbackProxyURL:0 exceptionBundleIDs:0 exceptionProcessPaths:0];
      v10 = v4;
      reply = xpc_dictionary_create_reply(v10);
      v12 = xpc_dictionary_get_remote_connection(v10);

      if (reply && v12)
      {
        xpc_dictionary_set_BOOL(reply, "NSPServerCommandResult", v9);
        xpc_connection_send_message(v12, reply);
      }
    }

    else
    {
      v13 = xpc_dictionary_get_remote_connection(v4);
      v14 = v13;
      if (v13 && (pid = xpc_connection_get_pid(v13), buffer = 0u, memset(v20, 0, sizeof(v20)), proc_pidinfo(pid, 13, 1uLL, &buffer, 64) == 64))
      {
        v16 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v16, v20, 0x10uLL);
      }

      else
      {
        v16 = 0;
      }

      v17 = nplog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = "";
        if (v16)
        {
          v18 = v16;
        }

        LODWORD(buffer) = 136315138;
        *(&buffer + 4) = v18;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "setting privacy proxy policy failed due to missing entitlement for %s", &buffer, 0xCu);
      }

      if (v16)
      {
        free(v16);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100057D30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing privacy proxy policy removal request", &v16, 2u);
      }

      v6 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
      [v6 remove:0];

      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_dictionary_set_BOOL(reply, "NSPServerCommandResult", 1);
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "removing privacy proxy policy failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100057F70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing privacy proxy policy merge request", &v15, 2u);
      }

      v6 = [*(a1 + 64) mergeProxyTrafficStateWithCurrentPolicy];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 dictionaryRepresentation];
        sub_100002130(v4, "NSPServerPrivacyProxyPolicy", v8);
      }

      else
      {
        sub_100054384(v4, 1005, @"failed to merge policy with traffic state");
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v15 = 0u, memset(v16, 0, sizeof(v16)), proc_pidinfo(pid, 13, 1uLL, &v15, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v16, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "getting privacy proxy policy failed due to missing entitlement for %s", &v15, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100058194(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "processing location authorization request", v10, 2u);
    }

    v5 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
    v6 = [v5 isAuthorized];

    v7 = v3;
    reply = xpc_dictionary_create_reply(v7);
    v9 = xpc_dictionary_get_remote_connection(v7);

    if (reply && v9)
    {
      xpc_dictionary_set_BOOL(reply, "NSPServerCommandResult", v6);
      xpc_connection_send_message(v9, reply);
    }
  }
}

void sub_100058298(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "processing request to set location monitor interval", v6, 2u);
    }

    v4 = xpc_dictionary_get_double(v2, "NSPServerLocationMonitorInterval");
    v5 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
    [v5 setMonitorTimeInterval:v4 * 60.0];
  }
}

void sub_10005835C(uint64_t a1)
{
  if (a1)
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "processing request to start location monitor", v3, 2u);
    }

    v2 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
    [v2 start];
  }
}

void sub_1000583EC(uint64_t a1)
{
  if (a1)
  {
    v1 = nplog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "processing request to stop location monitor", v3, 2u);
    }

    v2 = +[NSPPrivacyProxyLocationMonitor sharedMonitor];
    [v2 stop];
  }
}

void sub_10005847C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v18) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "process proxy info request", &v18, 2u);
      }

      v6 = objc_alloc_init(PrivacyProxyInfo);
      v7 = *(a1 + 64);
      if (v7)
      {
        [v7 copyProxyInfo:v6];
      }

      v8 = *(a1 + 72);
      if (v8)
      {
        [v8 copyProxyInfo:v6];
      }

      v9 = +[NSPPrivacyTokenManager sharedTokenManager];

      if (v9)
      {
        v10 = +[NSPPrivacyTokenManager sharedTokenManager];
        [v10 copyTokenInfo:v6];
      }

      v11 = [v6 serialize];
      sub_100002130(v4, "NSPServerPrivacyProxyInfo", v11);
    }

    else
    {
      v12 = xpc_dictionary_get_remote_connection(v4);
      v13 = v12;
      if (v12 && (pid = xpc_connection_get_pid(v12), v18 = 0u, memset(v19, 0, sizeof(v19)), proc_pidinfo(pid, 13, 1uLL, &v18, 64) == 64))
      {
        v15 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v15, v19, 0x10uLL);
      }

      else
      {
        v15 = 0;
      }

      v16 = nplog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = "";
        if (v15)
        {
          v17 = v15;
        }

        LODWORD(v18) = 136315138;
        *(&v18 + 4) = v17;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "getting info for privacy proxy failed due to missing entitlement for %s", &v18, 0xCu);
      }

      if (v15)
      {
        free(v15);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_1000586DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v18) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to override the ingress proxy", &v18, 2u);
      }

      string = xpc_dictionary_get_string(v4, "NSPServerPrivacyProxyURL");
      if (string)
      {
        string = [[NSString alloc] initWithUTF8String:string];
      }

      if (![string length])
      {

        string = 0;
      }

      v7 = xpc_dictionary_get_string(v4, "NSPServerPrivacyProxyFallbackURL");
      if (v7)
      {
        v7 = [[NSString alloc] initWithUTF8String:v7];
      }

      if (![v7 length])
      {

        v7 = 0;
      }

      v8 = get_nsdata_from_xpc_object();
      if (![v8 length])
      {

        v8 = 0;
      }

      [*(a1 + 72) overrideIngressProxy:string fallbackProxy:v7 key:v8];
      v9 = v4;
      reply = xpc_dictionary_create_reply(v9);
      v11 = xpc_dictionary_get_remote_connection(v9);

      if (reply && v11)
      {
        xpc_connection_send_message(v11, reply);
      }
    }

    else
    {
      v12 = xpc_dictionary_get_remote_connection(v4);
      v13 = v12;
      if (v12 && (pid = xpc_connection_get_pid(v12), v18 = 0u, memset(v19, 0, sizeof(v19)), proc_pidinfo(pid, 13, 1uLL, &v18, 64) == 64))
      {
        v15 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v15, v19, 0x10uLL);
      }

      else
      {
        v15 = 0;
      }

      v16 = nplog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = "";
        if (v15)
        {
          v17 = v15;
        }

        LODWORD(v18) = 136315138;
        *(&v18 + 4) = v17;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "overriding preferred proxy failed due to missing entitlement for %s", &v18, 0xCu);
      }

      if (v15)
      {
        free(v15);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_1000589C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v23) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to get the overridden ingress proxy", &v23, 2u);
      }

      v6 = [*(a1 + 72) overrideIngressProxy];
      v7 = [*(a1 + 72) overrideFallbackIngressProxy];
      v8 = [*(a1 + 72) overrideIngressProxyKey];
      reply = xpc_dictionary_create_reply(v4);
      v10 = xpc_dictionary_get_remote_connection(v4);
      if (v10)
      {
        v11 = v6;
        if (v11)
        {
          v12 = reply;
          xpc_dictionary_set_string(v12, "NSPServerPrivacyProxyURL", [v11 UTF8String]);
        }

        v13 = v7;
        if (v13)
        {
          v14 = reply;
          xpc_dictionary_set_string(v14, "NSPServerPrivacyProxyFallbackURL", [v13 UTF8String]);
        }

        if (v8)
        {
          v15 = reply;
          v16 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(v15, "NSPServerPrivacyProxyKey", v16);
        }

        xpc_connection_send_message(v10, reply);
      }
    }

    else
    {
      v17 = xpc_dictionary_get_remote_connection(v4);
      v18 = v17;
      if (v17 && (pid = xpc_connection_get_pid(v17), v23 = 0u, memset(v24, 0, sizeof(v24)), proc_pidinfo(pid, 13, 1uLL, &v23, 64) == 64))
      {
        v20 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v20, v24, 0x10uLL);
      }

      else
      {
        v20 = 0;
      }

      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = "";
        if (v20)
        {
          v22 = v20;
        }

        LODWORD(v23) = 136315138;
        *(&v23 + 4) = v22;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "get preferred proxy failed due to missing entitlement for %s", &v23, 0xCu);
      }

      if (v20)
      {
        free(v20);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100058CB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to override the preferred proxy", &v16, 2u);
      }

      string = xpc_dictionary_get_string(v4, "NSPServerPrivacyProxyURL");
      if (string)
      {
        string = [[NSString alloc] initWithUTF8String:string];
      }

      if (![string length])
      {

        string = 0;
      }

      [*(a1 + 72) overridePreferredProxy:string];
      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "overriding preferred proxy failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100058F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to get the preferred proxy", &v13, 2u);
      }

      v6 = [*(a1 + 72) overridePreferredProxy];
      sub_10006D73C(v4, "NSPServerPrivacyProxyURL", v6);
    }

    else
    {
      v7 = xpc_dictionary_get_remote_connection(v4);
      v8 = v7;
      if (v7 && (pid = xpc_connection_get_pid(v7), v13 = 0u, memset(v14, 0, sizeof(v14)), proc_pidinfo(pid, 13, 1uLL, &v13, 64) == 64))
      {
        v10 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v10, v14, 0x10uLL);
      }

      else
      {
        v10 = 0;
      }

      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = "";
        if (v10)
        {
          v12 = v10;
        }

        LODWORD(v13) = 136315138;
        *(&v13 + 4) = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "get preferred proxy failed due to missing entitlement for %s", &v13, 0xCu);
      }

      if (v10)
      {
        free(v10);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100059110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to override the preferred resolver", &v16, 2u);
      }

      string = xpc_dictionary_get_string(v4, "NSPServerPrivacyProxyURL");
      if (string)
      {
        string = [[NSString alloc] initWithUTF8String:string];
      }

      if (![string length])
      {

        string = 0;
      }

      sub_10004C988(*(a1 + 208), string);
      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "overriding preferred resolver failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100059378(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to get the preferred resolver", &v14, 2u);
      }

      v6 = *(a1 + 208);
      if (v6)
      {
        v6 = v6[2];
      }

      v7 = v6;
      sub_10006D73C(v4, "NSPServerPrivacyProxyURL", v7);
    }

    else
    {
      v8 = xpc_dictionary_get_remote_connection(v4);
      v9 = v8;
      if (v8 && (pid = xpc_connection_get_pid(v8), v14 = 0u, memset(v15, 0, sizeof(v15)), proc_pidinfo(pid, 13, 1uLL, &v14, 64) == 64))
      {
        v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v11, v15, 0x10uLL);
      }

      else
      {
        v11 = 0;
      }

      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = "";
        if (v11)
        {
          v13 = v11;
        }

        LODWORD(v14) = 136315138;
        *(&v14 + 4) = v13;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "get preferred resolver failed due to missing entitlement for %s", &v14, 0xCu);
      }

      if (v11)
      {
        free(v11);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100059570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling set Geohash sharing preference", &v15, 2u);
      }

      [*(a1 + 64) setGeohashSharingPreference:{xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyGeohashSharingEnabled")}];
      v6 = v4;
      reply = xpc_dictionary_create_reply(v6);
      v8 = xpc_dictionary_get_remote_connection(v6);

      if (reply && v8)
      {
        xpc_connection_send_message(v8, reply);
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v15 = 0u, memset(v16, 0, sizeof(v16)), proc_pidinfo(pid, 13, 1uLL, &v15, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v16, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "reporting service status for privacy proxy failed due to missing entitlement for %s", &v15, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100059798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling get Geohash sharing preference", &v16, 2u);
      }

      v6 = [*(a1 + 64) getGeohashSharingPreference];
      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_dictionary_set_BOOL(reply, "NSPServerPrivacyProxyGeohashSharingEnabled", v6);
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "getting service status for privacy proxy failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_1000599CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      string = xpc_dictionary_get_string(v4, "NSPServerPrivacyProxyGeohash");
      if (string)
      {
        v6 = [NSString stringWithUTF8String:string];
      }

      else
      {
        v6 = 0;
      }

      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v17) = 138412290;
        *(&v17 + 4) = v6;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Handling set Geohash override: %@", &v17, 0xCu);
      }

      [*(a1 + 64) setGeohashOverride:v6];
      v13 = v4;
      reply = xpc_dictionary_create_reply(v13);
      v15 = xpc_dictionary_get_remote_connection(v13);

      if (reply && v15)
      {
        xpc_connection_send_message(v15, reply);
      }
    }

    else
    {
      v7 = xpc_dictionary_get_remote_connection(v4);
      v8 = v7;
      if (v7 && (pid = xpc_connection_get_pid(v7), v17 = 0u, memset(v18, 0, sizeof(v18)), proc_pidinfo(pid, 13, 1uLL, &v17, 64) == 64))
      {
        v10 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v10, v18, 0x10uLL);
      }

      else
      {
        v10 = 0;
      }

      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = "";
        if (v10)
        {
          v16 = v10;
        }

        LODWORD(v17) = 136315138;
        *(&v17 + 4) = v16;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "overriding geohash failed due to missing entitlement for %s", &v17, 0xCu);
      }

      if (v10)
      {
        free(v10);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100059C30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v17) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling get privacy proxy account type", &v17, 2u);
      }

      reply = xpc_dictionary_create_reply(v4);
      v7 = xpc_dictionary_get_remote_connection(v4);
      if (v7)
      {
        v8 = [*(a1 + 48) proxyAccountType];
        if (v8)
        {
          v9 = reply;
          xpc_dictionary_set_uint64(v9, "NSPServerPrivacyProxyAccountType", [v8 unsignedIntValue]);
        }

        v10 = [*(a1 + 48) proxyAccountUnlimited];
        xpc_dictionary_set_BOOL(reply, "NSPServerPrivacyProxyAccountUnlimited", [v10 BOOLValue]);

        xpc_connection_send_message(v7, reply);
      }
    }

    else
    {
      v11 = xpc_dictionary_get_remote_connection(v4);
      v12 = v11;
      if (v11 && (pid = xpc_connection_get_pid(v11), v17 = 0u, memset(v18, 0, sizeof(v18)), proc_pidinfo(pid, 13, 1uLL, &v17, 64) == 64))
      {
        v14 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v14, v18, 0x10uLL);
      }

      else
      {
        v14 = 0;
      }

      v15 = nplog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = "";
        if (v14)
        {
          v16 = v14;
        }

        LODWORD(v17) = 136315138;
        *(&v17 + 4) = v16;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "getting privacy proxy account type failed due to missing entitlement for %s", &v17, 0xCu);
      }

      if (v14)
      {
        free(v14);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_100059EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling get privacy proxy effective user tier", &v13, 2u);
      }

      v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 64) effectiveUserTier]);
      sub_100002068(v4, "NSPServerPrivacyProxyEffectiveUserTier", v6);
    }

    else
    {
      v7 = xpc_dictionary_get_remote_connection(v4);
      v8 = v7;
      if (v7 && (pid = xpc_connection_get_pid(v7), v13 = 0u, memset(v14, 0, sizeof(v14)), proc_pidinfo(pid, 13, 1uLL, &v13, 64) == 64))
      {
        v10 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v10, v14, 0x10uLL);
      }

      else
      {
        v10 = 0;
      }

      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = "";
        if (v10)
        {
          v12 = v10;
        }

        LODWORD(v13) = 136315138;
        *(&v13 + 4) = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "getting effective user tier for privacy proxy failed due to missing entitlement for %s", &v13, 0xCu);
      }

      if (v10)
      {
        free(v10);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005A0AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buffer) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to send RTC report", &buffer, 2u);
      }

      int64 = xpc_dictionary_get_int64(v4, "NSPServerPrivacyProxyRTCReportType");
      v7 = xpc_dictionary_get_int64(v4, "NSPServerPrivacyProxyRTCReportErrorCode");
      string = xpc_dictionary_get_string(v4, "NSPServerPrivacyProxyRTCReportURL");
      if (string)
      {
        string = [[NSString alloc] initWithUTF8String:string];
      }

      if (int64 == 1005)
      {
        v9 = objc_alloc_init(NSPOutageReasonStats);
        v10 = v9;
        if (v7 > 4002)
        {
          if (v7 == 4003)
          {
            [(NSPOutageReasonStats *)v9 setOutageReasonType:@"Proxy"];
            [(NSPOutageReasonStats *)v10 setOutageReasonSubType:@"ProxyConnectionTimeout"];
            [(NSPOutageReasonStats *)v10 setPrimaryIngressProxy:@"https://dummy-canary.foobar.com:443"];
            [(NSPOutageReasonStats *)v10 setPrimaryEgressProxy:@"https://dummy.exp.vendorA-masque.net:2495"];
            [(NSPOutageReasonStats *)v10 setFallbackIngressProxy:@"https://dummy-h2.foobar.com:443"];
            [(NSPOutageReasonStats *)v10 setFallbackEgressProxy:@"https://dummy.vendorB.com:443"];
          }

          else if (v7 == 4004)
          {
            [(NSPOutageReasonStats *)v9 setOutageReasonType:@"DNS"];
            [(NSPOutageReasonStats *)v10 setOutageReasonSubType:@"ODoHAuthFailure"];
            [(NSPOutageReasonStats *)v10 setOdohProxy:@"https://odoh.vendorA-dns.com/dns-query"];
          }
        }

        else if (v7 == 4001)
        {
          [(NSPOutageReasonStats *)v9 setOutageReasonType:@"Token"];
          [(NSPOutageReasonStats *)v10 setOutageReasonSubType:@"TokenFetchFailure"];
          [(NSPOutageReasonStats *)v10 setTokenProxy:@"https://dummy-api.foobar.com/v1/fetchAuthTokens"];
        }

        else if (v7 == 4002)
        {
          [(NSPOutageReasonStats *)v9 setOutageReasonType:@"Captive"];
          [(NSPOutageReasonStats *)v10 setOutageReasonSubType:@"CaptiveProbeRedirected"];
        }

        v16 = [*(a1 + 48) userTier];
        v17 = [v16 intValue];
        if (v17 >= 3)
        {
          v18 = [NSString stringWithFormat:@"(unknown: %i)", v17];
        }

        else
        {
          v18 = *(&off_10010A560 + v17);
        }

        [(NSPOutageReasonStats *)v10 setTierType:v18];

        [*(a1 + 72) sendRTCReportForServiceOutage:v10];
      }

      else
      {
        [*(a1 + 72) sendRTCReportWithFailureType:int64 errorCode:v7 url:string ingressProxy:0 egressProxy:0 tokenServer:0];
      }

      v19 = v4;
      reply = xpc_dictionary_create_reply(v19);
      v21 = xpc_dictionary_get_remote_connection(v19);

      if (reply && v21)
      {
        xpc_connection_send_message(v21, reply);
      }
    }

    else
    {
      v11 = xpc_dictionary_get_remote_connection(v4);
      v12 = v11;
      if (v11 && (pid = xpc_connection_get_pid(v11), buffer = 0u, memset(v24, 0, sizeof(v24)), proc_pidinfo(pid, 13, 1uLL, &buffer, 64) == 64))
      {
        v14 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v14, v24, 0x10uLL);
      }

      else
      {
        v14 = 0;
      }

      v15 = nplog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = "";
        if (v14)
        {
          v22 = v14;
        }

        LODWORD(buffer) = 136315138;
        *(&buffer + 4) = v22;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "failed to send RTC report due to missing entitlement for %s", &buffer, 0xCu);
      }

      if (v14)
      {
        free(v14);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005A4E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to force fallback", &v15, 2u);
      }

      [*(a1 + 72) forceFallback:{xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyForceFallback")}];
      v6 = v4;
      reply = xpc_dictionary_create_reply(v6);
      v8 = xpc_dictionary_get_remote_connection(v6);

      if (reply && v8)
      {
        xpc_connection_send_message(v8, reply);
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v15 = 0u, memset(v16, 0, sizeof(v16)), proc_pidinfo(pid, 13, 1uLL, &v15, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v16, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "failed to force fallback due to missing entitlement for %s", &v15, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005A708(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to get force fallback", &v16, 2u);
      }

      v6 = [*(a1 + 72) forceFallback];
      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_dictionary_set_BOOL(reply, "NSPServerPrivacyProxyForceFallback", v6);
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to get force fallback due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005A93C(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v69 = get_nsdata_from_xpc_object();
    string = xpc_dictionary_get_string(v3, "NSPServerSigningIdentifier");
    if (string)
    {
      string = [[NSString alloc] initWithUTF8String:string];
    }

    v68 = string;
    if (__PAIR128__(v69, string) != 0 && (sub_100001FC4(v3, @"com.apple.private.network.socket-delegate") & 1) == 0)
    {
      v17 = xpc_dictionary_get_remote_connection(v3);
      v18 = v17;
      if (v17 && (pid = xpc_connection_get_pid(v17), v144 = 0u, memset(buffer, 0, sizeof(buffer)), proc_pidinfo(pid, 13, 1uLL, buffer, 64) == 64))
      {
        v20 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v20, &buffer[1], 0x10uLL);
      }

      else
      {
        v20 = 0;
      }

      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v61 = "";
        if (v20)
        {
          v61 = v20;
        }

        LODWORD(buffer[0]) = 136315138;
        *(buffer + 4) = v61;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "failed to fetch private access token due to missing delegation entitlement for %s", buffer, 0xCu);
      }

      if (v20)
      {
        free(v20);
      }

      sub_100054384(v3, 1001, @"Permission denied");
      goto LABEL_107;
    }

    if (xpc_dictionary_get_BOOL(v3, "NSPServerTokenSystemClient"))
    {
      v67 = sub_100001FC4(v3, @"com.apple.private.network.system-token-fetch");
    }

    else
    {
      v67 = 0;
    }

    v5 = xpc_dictionary_get_string(v3, "NSPServerPrivateAccessTokenOriginName");
    if (v5)
    {
      v65 = [[NSString alloc] initWithUTF8String:v5];
    }

    else
    {
      v65 = 0;
    }

    v6 = [a1[6] privateAccessTokensAllowTools];
    if ([v6 BOOLValue])
    {
      v66 = os_variant_allows_internal_security_policies();
    }

    else
    {
      v66 = 0;
    }

    v7 = xpc_dictionary_get_remote_connection(v3);
    v8 = v7;
    if (v7)
    {
      v9 = xpc_connection_get_pid(v7);
    }

    else
    {
      v9 = 0;
    }

    v10 = v68;
    LOBYTE(v123) = 0;
    LOBYTE(v117) = 0;
    LOBYTE(v115[0]) = 0;
    if (v10)
    {
      v11 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v10];
      v139[0] = 0;
      v12 = [RBSProcessHandle handleForPredicate:v11 error:v139];
      v13 = v139[0];

      sub_10006E220(v12, &v123, &v117, v115);
      if (v9)
      {
LABEL_20:
        v14 = [RBSProcessIdentifier identifierWithPid:v9];
        if (v14)
        {
          v129 = 0;
          v15 = [RBSProcessHandle handleForIdentifier:v14 error:&v129];
          v16 = v129;

          sub_10006E220(v15, &v123, &v117, v115);
          v13 = v16;
        }

        else
        {
          v15 = v12;
        }

LABEL_29:
        v21 = nplog_obj();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        v23 = v123;
        if (v22)
        {
          v26 = "not ";
          v27 = v117;
          v24 = v115[0];
          if (v123)
          {
            v28 = "";
          }

          else
          {
            v28 = "not ";
          }

          LODWORD(buffer[0]) = 138413314;
          WORD6(buffer[0]) = 1024;
          if (v117)
          {
            v29 = "";
          }

          else
          {
            v29 = "not ";
          }

          *(buffer + 4) = v10;
          if (LOBYTE(v115[0]))
          {
            v26 = "";
          }

          *(buffer + 14) = v9;
          WORD1(buffer[1]) = 2080;
          *(&buffer[1] + 4) = v28;
          WORD6(buffer[1]) = 2080;
          *(&buffer[1] + 14) = v29;
          WORD3(buffer[2]) = 2080;
          *(&buffer[2] + 1) = v26;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@ (%u) is %sapplication, is %srunning, is %sforeground", buffer, 0x30u);

          if (v23 & v27)
          {
LABEL_48:
            LOBYTE(buffer[0]) = v24 & 1;

            v30 = LOBYTE(buffer[0]);
            if (((v30 | v66) & 1) == 0)
            {
              v42 = [v10 isEqualToString:@"com.apple.DPSubmissionService"];
              if ((v67 & 1) == 0 && (v42 & 1) == 0)
              {
                v43 = xpc_dictionary_get_remote_connection(v3);
                v44 = v43;
                if (v43 && (v45 = xpc_connection_get_pid(v43), v144 = 0u, memset(buffer, 0, sizeof(buffer)), proc_pidinfo(v45, 13, 1uLL, buffer, 64) == 64))
                {
                  v46 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
                  strncpy(v46, &buffer[1], 0x10uLL);
                }

                else
                {
                  v46 = 0;
                }

                v50 = nplog_obj();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  v51 = "";
                  if (v46)
                  {
                    v51 = v46;
                  }

                  LODWORD(buffer[0]) = 136315138;
                  *(buffer + 4) = v51;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Cannot fetch private access token, %s is not a foreground app", buffer, 0xCu);
                }

                if (v46)
                {
                  free(v46);
                }

                sub_100054384(v3, 1001, @"Permission denied, not foreground app");
                goto LABEL_106;
              }
            }

            v31 = nplog_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buffer[0]) = 0;
              _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "processing request to fetch a private access token", buffer, 2u);
            }

            *&buffer[0] = 0;
            *(&buffer[0] + 1) = buffer;
            *&buffer[1] = 0x3032000000;
            *(&buffer[1] + 1) = sub_100001F54;
            *&buffer[2] = sub_100054494;
            *(&buffer[2] + 1) = 0;
            v139[0] = 0;
            v139[1] = v139;
            v139[2] = 0x3032000000;
            v139[3] = sub_100001F54;
            v139[4] = sub_100054494;
            v140 = 0;
            v137[0] = 0;
            v137[1] = v137;
            v137[2] = 0x2020000000;
            v138 = 0;
            v135[0] = 0;
            v135[1] = v135;
            v135[2] = 0x2020000000;
            v136 = 0;
            v129 = 0;
            v130 = &v129;
            v131 = 0x3032000000;
            v132 = sub_100001F54;
            v133 = sub_100054494;
            v134 = 0;
            v123 = 0;
            v124 = &v123;
            v125 = 0x3032000000;
            v126 = sub_100001F54;
            v127 = sub_100054494;
            v128 = 0;
            v117 = 0;
            v118 = &v117;
            v119 = 0x3032000000;
            v120 = sub_100001F54;
            v121 = sub_100054494;
            v122 = 0;
            v115[0] = 0;
            v115[1] = v115;
            v115[2] = 0x3032000000;
            v115[3] = sub_100001F54;
            v115[4] = sub_100054494;
            v116 = 0;
            v109 = 0;
            v110 = &v109;
            v111 = 0x3032000000;
            v112 = sub_100001F54;
            v113 = sub_100054494;
            v114 = 0;
            v107[0] = 0;
            v107[1] = v107;
            v107[2] = 0x3032000000;
            v107[3] = sub_100001F54;
            v107[4] = sub_100054494;
            v108 = 0;
            v105[0] = 0;
            v105[1] = v105;
            v105[2] = 0x3032000000;
            v105[3] = sub_100001F54;
            v105[4] = sub_100054494;
            v106 = 0;
            v103[0] = 0;
            v103[1] = v103;
            v103[2] = 0x3032000000;
            v103[3] = sub_100001F54;
            v103[4] = sub_100054494;
            v104 = 0;
            v32 = xpc_dictionary_get_value(v3, "NSPServerPrivateAccessTokenChallenges");
            v33 = xpc_dictionary_get_BOOL(v3, "NSPServerHasPairedTokenChallenges");
            v64 = xpc_dictionary_get_BOOL(v3, "NSPServerHasAuxiliaryAuthenticationChallenges");
            uint64 = xpc_dictionary_get_uint64(v3, "NSPServerPrivateAccessTokenMetadataSize");
            if (v32)
            {
              v35 = uint64;
              if (xpc_get_type(v32) == &_xpc_type_array)
              {
                if (v33)
                {
                  if (xpc_array_get_count(v32) == 2)
                  {
                    applier[0] = _NSConcreteStackBlock;
                    applier[1] = 3221225472;
                    applier[2] = sub_10006ED4C;
                    applier[3] = &unk_10010A0F8;
                    v101 = v35;
                    v102 = v67;
                    applier[4] = a1;
                    applier[5] = &v129;
                    applier[6] = buffer;
                    applier[7] = v115;
                    applier[8] = v103;
                    applier[9] = v137;
                    applier[10] = &v123;
                    applier[11] = v139;
                    applier[12] = &v109;
                    applier[13] = v135;
                    xpc_array_apply(v32, applier);
                    goto LABEL_53;
                  }

                  v60 = nplog_obj();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    count = xpc_array_get_count(v32);
                    *buf = 134217984;
                    *&buf[4] = count;
                    _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Invalid number of challenges for paired tokens (%zu)", buf, 0xCu);
                  }
                }

                else
                {
                  if (!v64)
                  {
                    v94[0] = _NSConcreteStackBlock;
                    v94[1] = 3221225472;
                    v94[2] = sub_10006F3B4;
                    v94[3] = &unk_10010A148;
                    v95 = v35;
                    v96 = v67;
                    v94[4] = a1;
                    v94[5] = buffer;
                    v94[6] = &v129;
                    v94[7] = v115;
                    v94[8] = v103;
                    v94[9] = v137;
                    xpc_array_apply(v32, v94);
                    goto LABEL_53;
                  }

                  if (xpc_array_get_count(v32) == 2)
                  {
                    v97[0] = _NSConcreteStackBlock;
                    v97[1] = 3221225472;
                    v97[2] = sub_10006F050;
                    v97[3] = &unk_10010A120;
                    v98 = v35;
                    v99 = v67;
                    v97[4] = a1;
                    v97[5] = &v129;
                    v97[6] = buffer;
                    v97[7] = v115;
                    v97[8] = v103;
                    v97[9] = v137;
                    v97[10] = &v117;
                    v97[11] = v107;
                    v97[12] = v105;
                    xpc_array_apply(v32, v97);
                    goto LABEL_53;
                  }

                  v60 = nplog_obj();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    v63 = xpc_array_get_count(v32);
                    *buf = 134217984;
                    *&buf[4] = v63;
                    _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Invalid number of challenges for token with auth aux request (%zu)", buf, 0xCu);
                  }
                }
              }
            }

LABEL_53:
            if (!v130[5] || v33 && !v124[5] || v64 && !v118[5])
            {
              if (v67)
              {
                v47 = nplog_obj();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to find a supported challenge, no key found in configuration for issuer name", buf, 2u);
                }

                v48 = @"No key found in configuration for issuer name";
                v49 = 1005;
              }

              else if (xpc_dictionary_get_BOOL(v3, "NSPServerTokenSystemClient"))
              {
                v47 = nplog_obj();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to find a supported challenge, tried to use system client but not entitled", buf, 2u);
                }

                v48 = @"Permission denied, not able to use system-configured token keys without entitlement";
                v49 = 1001;
              }

              else
              {
                v47 = nplog_obj();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Failed to find a supported challenge", buf, 2u);
                }

                v48 = @"Invalid challenge";
                v49 = 1004;
              }

              sub_100054384(v3, v49, v48);
              goto LABEL_105;
            }

            if (!(v69 | v10))
            {
              *buf = 0u;
              v142 = 0u;
              xpc_dictionary_get_audit_token();
              v69 = [NSData dataWithBytes:buf length:32];
            }

            if ((v67 & 1) == 0)
            {
              sub_100060FFC(a1);
              v36 = a1[6];
              v37 = [v36 privateAccessTokensEnabledStatus];
              v38 = [v37 BOOLValue];

              if ((v38 & 1) == 0)
              {
                v59 = nplog_obj();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Cannot fetch private access token, feature disabled", buf, 2u);
                }

                sub_100054384(v3, 1008, @"Feature disabled");
                goto LABEL_105;
              }
            }

            v39 = xpc_dictionary_get_string(v3, "NSPServerPrivateAccessTokenCustomAttester");
            if (v39)
            {
              v40 = [[NSString alloc] initWithUTF8String:v39];
              if (v40)
              {
                v41 = get_nsdictionary_from_xpc_object();
LABEL_98:
                v52 = xpc_dictionary_get_uint64(v3, "NSPServerPrivateAccessTokenRateLimit");
                v53 = xpc_dictionary_get_string(v3, "NSPServerAuxiliaryAuthenticationCacheKey");
                if (v53)
                {
                  v54 = [[NSString alloc] initWithUTF8String:v53];
                }

                else
                {
                  v54 = 0;
                }

                v55 = v110[5] != 0;
                v70[0] = _NSConcreteStackBlock;
                v70[1] = 3221225472;
                v70[2] = sub_10006F5C8;
                v70[3] = &unk_10010A1E8;
                v90 = v33;
                v78 = &v129;
                v79 = buffer;
                v70[4] = a1;
                v80 = v115;
                v81 = v103;
                v71 = v65;
                v82 = &v123;
                v83 = v139;
                v84 = &v109;
                v69 = v69;
                v72 = v69;
                v73 = v10;
                v91 = v66;
                v92 = v67;
                v93 = v64;
                v74 = v3;
                v85 = v137;
                v56 = v40;
                v75 = v56;
                v57 = v41;
                v76 = v57;
                v86 = &v117;
                v87 = v107;
                v88 = v105;
                v58 = v54;
                v77 = v58;
                v89 = v52;
                sub_10006FEE4(a1, 1, v55, v70);

LABEL_105:
                _Block_object_dispose(v103, 8);

                _Block_object_dispose(v105, 8);
                _Block_object_dispose(v107, 8);

                _Block_object_dispose(&v109, 8);
                _Block_object_dispose(v115, 8);

                _Block_object_dispose(&v117, 8);
                _Block_object_dispose(&v123, 8);

                _Block_object_dispose(&v129, 8);
                _Block_object_dispose(v135, 8);
                _Block_object_dispose(v137, 8);
                _Block_object_dispose(v139, 8);

                _Block_object_dispose(buffer, 8);
LABEL_106:

LABEL_107:
                goto LABEL_108;
              }
            }

            else
            {
              v40 = 0;
            }

            v41 = 0;
            goto LABEL_98;
          }
        }

        else
        {

          if (v23 & 1) != 0 && (v117)
          {
            v24 = v115[0];
            goto LABEL_48;
          }
        }

        v24 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      if (v9)
      {
        goto LABEL_20;
      }
    }

    v15 = v12;
    goto LABEL_29;
  }

LABEL_108:
}

void sub_10005BA2C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10005BB10(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = get_nsdata_from_xpc_object();
    if (v4 && (v5 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v4]) != 0 && (v6 = v5, v12 = 0, v7 = sub_10006E4A4(a1, v5, &v12, 0), v8 = v12, v6, v8))
    {
      v9 = [v8 key];
      sub_100002130(v3, "NSPServerPrivateAccessTokenKey", v9);
    }

    else
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Failed to find a known token key", v11, 2u);
      }

      sub_100054384(v3, 1005, @"No key found");
    }
  }
}

void sub_10005BC48(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = NPGetInternalQueue();
    dispatch_assert_queue_V2(v4);

    if ((sub_100001FC4(v3, @"com.apple.private.network.system-token-fetch") & 1) == 0)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "System client entitlement missing, cannot add token to cache", buf, 2u);
      }

      goto LABEL_52;
    }

    v5 = get_nsdata_from_xpc_object();
    if (!v5)
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get challenge, cannot add token to cache", buf, 2u);
      }

      goto LABEL_51;
    }

    v6 = get_nsdata_from_xpc_object();
    if (v6)
    {
      v7 = v6;
      v8 = get_nsdata_from_xpc_object();
      if (v8)
      {
        v9 = v8;
        v10 = get_nsdata_from_xpc_object();
        if (v10)
        {
          v11 = get_nsdata_from_xpc_object();
          if (v11)
          {
            v12 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v5];
            if (v12)
            {
              v13 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v11];
              if (v13)
              {
                v29 = 0;
                v14 = sub_10006E4A4(a1, v13, &v29, 0);
                v15 = v29;
                v16 = v15;
                if (v15)
                {
                  v17 = [v15 key];
                  if (sub_1000B3ED0(NSPPrivateAccessTokenResponse, v7, v17))
                  {
                    loga = v17;
                    v32 = v7;
                    v18 = [NSArray arrayWithObjects:&v32 count:1];
                    v31 = v9;
                    v26 = [NSArray arrayWithObjects:&v31 count:1];
                    sub_10003FA38(NSPPrivateAccessTokenCache, v13, v18, v26, 0, loga, v12, v10);

                    v19 = v18;
                    v17 = loga;
                  }

                  else
                  {
                    log = nplog_obj();
                    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Key does not match one time token, cannot add token to cache", buf, 2u);
                    }

                    v19 = log;
                  }
                }

                else
                {
                  v17 = nplog_obj();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to find one time token key, cannot add token to cache", buf, 2u);
                  }
                }
              }

              else
              {
                v16 = nplog_obj();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to parse one time token challenge, cannot add token to cache", buf, 2u);
                }
              }
            }

            else
            {
              v13 = nplog_obj();
              if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_ERROR, "Failed to parse long lived token challenge, cannot add token to cache", buf, 2u);
              }
            }
          }

          else
          {
            v12 = nplog_obj();
            if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, &v12->super, OS_LOG_TYPE_ERROR, "Failed to get one time token challenge data, cannot add token to cache", buf, 2u);
            }
          }
        }

        else
        {
          v11 = nplog_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get long lived token, cannot add token to cache", buf, 2u);
          }
        }
      }

      else
      {
        v9 = nplog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get one time token salt, cannot add token to cache", buf, 2u);
        }
      }

      goto LABEL_51;
    }

    v20 = get_nsdata_from_xpc_object();
    if (!v20)
    {
      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get token data, cannot add token to cache", buf, 2u);
      }

      goto LABEL_34;
    }

    v21 = v20;
    v22 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v5];
    v23 = v22;
    if (v22)
    {
      if ([(NSPPrivateAccessTokenChallenge *)v22 tokenType]!= 58796)
      {
        sub_10003D214(NSPPrivateAccessTokenCache, v23, v21, 0);
        goto LABEL_33;
      }

      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v25 = "Cannot manually add ARC token to cache";
LABEL_55:
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
      }
    }

    else
    {
      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v25 = "Failed to parse challenge, cannot add token to cache";
        goto LABEL_55;
      }
    }

LABEL_33:
LABEL_34:

    v7 = 0;
LABEL_51:

LABEL_52:
  }
}

void sub_10005C250(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = NPGetInternalQueue();
    dispatch_assert_queue_V2(v4);

    if ((sub_100001FC4(v3, @"com.apple.private.network.system-token-fetch") & 1) == 0)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "System client entitlement missing, cannot add auxiliary authentication data to cache", v17, 2u);
      }

      goto LABEL_29;
    }

    v5 = get_nsdata_from_xpc_object();
    if (v5)
    {
      string = xpc_dictionary_get_string(v3, "NSPServerAuxiliaryAuthenticationLabel");
      if (string)
      {
        v7 = [[NSString alloc] initWithUTF8String:string];
        if (v7)
        {
          v8 = v7;
          v9 = xpc_dictionary_get_string(v3, "NSPServerAuxiliaryAuthenticationCacheKey");
          if (!v9 || (v10 = [[NSString alloc] initWithUTF8String:v9]) == 0)
          {
            v11 = nplog_obj();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v17[0]) = 0;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get cache key, cannot add auxiliary authentication data to cache", v17, 2u);
            }

            goto LABEL_27;
          }

          v11 = v10;
          int64 = xpc_dictionary_get_int64(v3, "NSPServerAuxiliaryAuthenticationType");
          if (int64 == 1)
          {
            v14 = 0;
          }

          else
          {
            v13 = int64;
            if (int64 == 4)
            {
              v14 = 3;
            }

            else
            {
              if (int64 != 2)
              {
                v16 = nplog_obj();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v17[0] = 67109120;
                  v17[1] = v13;
                  _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to get known type (%u), cannot add auxiliary authentication data to cache", v17, 8u);
                }

                goto LABEL_27;
              }

              v14 = 1;
            }
          }

          sub_10003E06C(NSPPrivateAccessTokenCache, v5, v14, v11, v8, 0, 0);
LABEL_27:

          goto LABEL_28;
        }
      }

      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17[0]) = 0;
        v15 = "Failed to get label, cannot add auxiliary authentication data to cache";
LABEL_18:
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v15, v17, 2u);
      }
    }

    else
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17[0]) = 0;
        v15 = "Failed to get data, cannot add auxiliary authentication data to cache";
        goto LABEL_18;
      }
    }

LABEL_28:

LABEL_29:
  }
}

void sub_10005C52C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = NPGetInternalQueue();
    dispatch_assert_queue_V2(v4);

    if (sub_100001FC4(v3, @"com.apple.private.network.system-token-fetch"))
    {
      string = xpc_dictionary_get_string(v3, "NSPServerAuxiliaryAuthenticationLabel");
      if (string)
      {
        v6 = [[NSString alloc] initWithUTF8String:string];
        if (v6)
        {
          v7 = v6;
          v8 = xpc_dictionary_get_string(v3, "NSPServerAuxiliaryAuthenticationCacheKey");
          if (!v8 || (v9 = [[NSString alloc] initWithUTF8String:v8]) == 0)
          {
            v19 = nplog_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v22[0]) = 0;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get cache key, cannot fetch auxiliary authentication data from cache", v22, 2u);
            }

            sub_100054384(v3, 1004, @"Missing cache key");
            goto LABEL_29;
          }

          v10 = v9;
          int64 = xpc_dictionary_get_int64(v3, "NSPServerAuxiliaryAuthenticationType");
          if (int64 == 1)
          {
            v13 = 0;
          }

          else
          {
            v12 = int64;
            if (int64 == 4)
            {
              v13 = 3;
            }

            else
            {
              if (int64 != 2)
              {
                v21 = nplog_obj();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v22[0] = 67109120;
                  v22[1] = v12;
                  _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get known type (%u), cannot fetch auxiliary authentication data from cache", v22, 8u);
                }

                sub_100054384(v3, 1004, @"Unknown type");
                goto LABEL_28;
              }

              v13 = 1;
            }
          }

          v20 = sub_10003E43C(NSPPrivateAccessTokenCache, v13, v10, v7, 1);
          sub_100002130(v3, "NSPServerAuxiliaryAuthenticationData", v20);

LABEL_28:
LABEL_29:

          goto LABEL_18;
        }
      }

      v18 = nplog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get label, cannot fetch auxiliary authentication data from cache", v22, 2u);
      }

      v15 = @"Missing label";
      v16 = v3;
      v17 = 1004;
    }

    else
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "System client entitlement missing, cannot fetch auxiliary authentication data from cache", v22, 2u);
      }

      v15 = @"Missing entitlement";
      v16 = v3;
      v17 = 1001;
    }

    sub_100054384(v16, v17, v15);
  }

LABEL_18:
}

void sub_10005C834(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    string = xpc_dictionary_get_string(v3, "NSPServerPrivateAccessTokenOriginName");
    if (string && (v6 = [[NSString alloc] initWithUTF8String:string]) != 0)
    {
      v7 = v6;
      v8 = [v6 lowercaseString];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = [*(a1 + 48) proxyConfiguration];
      v10 = [v9 authInfo];
      v11 = [v10 accessTokenKnownOrigins];

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            if (([v8 isEqualToString:v16] & 1) == 0)
            {
              v17 = [@"." stringByAppendingString:v16];
              v18 = [v8 hasSuffix:v17];

              if ((v18 & 1) == 0)
              {
                continue;
              }
            }

            v19 = 1;
            goto LABEL_17;
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          v19 = 0;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v19 = 0;
      }

LABEL_17:
    }

    else
    {
      v19 = 0;
    }

    v20 = v4;
    reply = xpc_dictionary_create_reply(v20);
    v22 = xpc_dictionary_get_remote_connection(v20);

    if (reply && v22)
    {
      xpc_dictionary_set_BOOL(reply, "NSPServerPrivateAccessTokenOriginAllowed", v19);
      xpc_connection_send_message(v22, reply);
    }
  }
}

void sub_10005CA64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((sub_100001FC4(v3, @"com.apple.private.networkserviceproxy") & 1) == 0)
    {
      v8 = xpc_dictionary_get_remote_connection(v4);
      v9 = v8;
      if (v8 && (pid = xpc_connection_get_pid(v8), buffer = 0u, memset(v35, 0, sizeof(v35)), proc_pidinfo(pid, 13, 1uLL, &buffer, 64) == 64))
      {
        v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v11, v35, 0x10uLL);
      }

      else
      {
        v11 = 0;
      }

      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v29 = "";
        if (v11)
        {
          v29 = v11;
        }

        LODWORD(buffer) = 136315138;
        *(&buffer + 4) = v29;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to start proxying to MPTCP converter proxy due to missing entitlement for %s", &buffer, 0xCu);
      }

      if (v11)
      {
        free(v11);
      }

      v5 = @"Permission denied";
      goto LABEL_13;
    }

    if (*(a1 + 23) == 1)
    {
      v5 = @"proxying to MPTCP converter proxy is already started";
      v6 = v4;
      v7 = 1004;
LABEL_14:
      sub_100054384(v6, v7, v5);
      goto LABEL_15;
    }

    v13 = [*(a1 + 64) effectiveUserTier];
    v14 = nplog_obj();
    v15 = v14;
    if (v13 == 2)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buffer) = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "unable to start proxying to MPTCP converter proxy because Private Relay is enabled", &buffer, 2u);
      }

      v5 = @"Private Relay is enabled";
LABEL_13:
      v6 = v4;
      v7 = 1001;
      goto LABEL_14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buffer) = 0;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "processing request to start proxying to MPTCP converter proxy", &buffer, 2u);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v31 = sub_1000702B0;
    v32 = &unk_100109910;
    v33 = v4;
    v16 = v30;
    if (objc_getProperty(a1, v17, 280, 1))
    {
      v18 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
      Property = objc_getProperty(a1, v19, 280, 1);
      if (Property)
      {
        v21 = Property[2];
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      v23 = [v18 addPoliciesForMPTCPConverterProxy:v22];

      if (v23)
      {
        v24 = 1;
        *(a1 + 23) = 1;
        sub_1000654C0(a1);
LABEL_34:
        v31(v16, v24);

        goto LABEL_15;
      }

      v26 = nplog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buffer) = 0;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "failed to add policies for MPTCP converter proxy", &buffer, 2u);
      }

      v28 = objc_getProperty(a1, v27, 280, 1);
      sub_1000A0904(v28, 0);
    }

    else
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buffer) = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "flow divert provider is unavailable", &buffer, 2u);
      }
    }

    v24 = 0;
    goto LABEL_34;
  }

LABEL_15:
}

void sub_10005CE5C(_BYTE *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_22;
  }

  if ((sub_100001FC4(v3, @"com.apple.private.networkserviceproxy") & 1) == 0)
  {
    v12 = xpc_dictionary_get_remote_connection(v4);
    v13 = v12;
    if (v12 && (pid = xpc_connection_get_pid(v12), v21 = 0u, memset(v22, 0, sizeof(v22)), proc_pidinfo(pid, 13, 1uLL, &v21, 64) == 64))
    {
      v15 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      strncpy(v15, v22, 0x10uLL);
    }

    else
    {
      v15 = 0;
    }

    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = "";
      if (v15)
      {
        v20 = v15;
      }

      LODWORD(v21) = 136315138;
      *(&v21 + 4) = v20;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to stop proxying to MPTCP converter proxy due to missing entitlement for %s", &v21, 0xCu);
    }

    if (v15)
    {
      free(v15);
    }

    v17 = @"Permission denied";
    v18 = v4;
    v19 = 1001;
    goto LABEL_21;
  }

  v5 = a1[23];
  v6 = nplog_obj();
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "proxying to MPTCP converter proxy is not started", &v21, 2u);
    }

    v17 = @"proxying to MPTCP converter proxy is not started";
    v18 = v4;
    v19 = 1004;
LABEL_21:
    sub_100054384(v18, v19, v17);
    goto LABEL_22;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v21) = 0;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "processing request to stop proxying to MPTCP converter proxy", &v21, 2u);
  }

  sub_100067F54(a1, v8);
  v9 = v4;
  reply = xpc_dictionary_create_reply(v9);
  v11 = xpc_dictionary_get_remote_connection(v9);

  if (reply && v11)
  {
    xpc_connection_send_message(v11, reply);
  }

LABEL_22:
}

void sub_10005D0C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling set Private Access Tokens enabled", &v15, 2u);
      }

      [*(a1 + 64) setPrivateAccessTokensEnabled:{xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyPrivateAccessTokensEnabled")}];
      v6 = v4;
      reply = xpc_dictionary_create_reply(v6);
      v8 = xpc_dictionary_get_remote_connection(v6);

      if (reply && v8)
      {
        xpc_connection_send_message(v8, reply);
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v15 = 0u, memset(v16, 0, sizeof(v16)), proc_pidinfo(pid, 13, 1uLL, &v15, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v16, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "setting private access token enablement failed due to missing entitlement for %s", &v15, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005D2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling get Private Access Tokens enabled", &v16, 2u);
      }

      v6 = [*(a1 + 64) getPrivateAccessTokensEnabled];
      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_dictionary_set_BOOL(reply, "NSPServerPrivacyProxyPrivateAccessTokensEnabled", v6);
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "getting private access token enablement failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005D524(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling set Private Access Tokens allow tools", &v15, 2u);
      }

      [*(a1 + 64) setPrivateAccessTokensAllowTools:{xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyPrivateAccessTokensEnabled")}];
      v6 = v4;
      reply = xpc_dictionary_create_reply(v6);
      v8 = xpc_dictionary_get_remote_connection(v6);

      if (reply && v8)
      {
        xpc_connection_send_message(v8, reply);
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v15 = 0u, memset(v16, 0, sizeof(v16)), proc_pidinfo(pid, 13, 1uLL, &v15, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v16, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "setting private access token enablement failed due to missing entitlement for %s", &v15, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005D74C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling set Preferred Path Routing enablement", &v15, 2u);
      }

      [*(a1 + 64) setPreferredPathRoutingEnabled:{xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyEnabled")}];
      v6 = v4;
      reply = xpc_dictionary_create_reply(v6);
      v8 = xpc_dictionary_get_remote_connection(v6);

      if (reply && v8)
      {
        xpc_connection_send_message(v8, reply);
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v15 = 0u, memset(v16, 0, sizeof(v16)), proc_pidinfo(pid, 13, 1uLL, &v15, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v16, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "setting preferred path routing enablement failed due to missing entitlement for %s", &v15, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005D974(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Getting domain filters", &v13, 2u);
      }

      v6 = [*(a1 + 72) copyDomainFiltersDictionary];
      sub_100002130(v4, "NSPServerPrivacyProxyDomainFilters", v6);
    }

    else
    {
      v7 = xpc_dictionary_get_remote_connection(v4);
      v8 = v7;
      if (v7 && (pid = xpc_connection_get_pid(v7), v13 = 0u, memset(v14, 0, sizeof(v14)), proc_pidinfo(pid, 13, 1uLL, &v13, 64) == 64))
      {
        v10 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v10, v14, 0x10uLL);
      }

      else
      {
        v10 = 0;
      }

      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = "";
        if (v10)
        {
          v12 = v10;
        }

        LODWORD(v13) = 136315138;
        *(&v13 + 4) = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "getting domain filters failed due to missing entitlement for %s", &v13, 0xCu);
      }

      if (v10)
      {
        free(v10);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005DB64(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling set in-process flow divert", &v16, 2u);
      }

      [a1[8] setInProcessFlowDivert:{xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyInProcessFlowDivertEnabled")}];
      v6 = v4;
      reply = xpc_dictionary_create_reply(v6);
      v8 = xpc_dictionary_get_remote_connection(v6);

      if (reply && v8)
      {
        xpc_connection_send_message(v8, reply);
      }

      v9 = [a1[8] mergeProxyTrafficStateWithCurrentPolicy];
      [a1 policiesUpdated:a1[8] policy:v9 resolverInfoChanged:1];
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "setting in-process flow divert failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005DDBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to override proxied content map enabled", &v16, 2u);
      }

      string = xpc_dictionary_get_string(v4, "NSPServerProxiedContentMapIdentifier");
      if (string)
      {
        string = [[NSString alloc] initWithUTF8String:string];
      }

      [*(a1 + 72) overrideProxiedContentMap:string enabled:{xpc_dictionary_get_BOOL(v4, "NSPServerProxiedContentMapEnabled")}];
      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "overriding proxied content map enabled failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005E024(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v17) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to get the override proxied content map enabled state", &v17, 2u);
      }

      string = xpc_dictionary_get_string(v4, "NSPServerProxiedContentMapIdentifier");
      if (string)
      {
        string = [[NSString alloc] initWithUTF8String:string];
      }

      v7 = [*(a1 + 72) proxiedContentMapIsOverrideEnabled:string];
      v8 = v4;
      reply = xpc_dictionary_create_reply(v8);
      v10 = xpc_dictionary_get_remote_connection(v8);

      if (reply && v10)
      {
        xpc_dictionary_set_BOOL(reply, "NSPServerProxiedContentMapEnabled", v7);
        xpc_connection_send_message(v10, reply);
      }
    }

    else
    {
      v11 = xpc_dictionary_get_remote_connection(v4);
      v12 = v11;
      if (v11 && (pid = xpc_connection_get_pid(v11), v17 = 0u, memset(v18, 0, sizeof(v18)), proc_pidinfo(pid, 13, 1uLL, &v17, 64) == 64))
      {
        v14 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v14, v18, 0x10uLL);
      }

      else
      {
        v14 = 0;
      }

      v15 = nplog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = "";
        if (v14)
        {
          v16 = v14;
        }

        LODWORD(v17) = 136315138;
        *(&v17 + 4) = v16;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "get proxied content map enabled failed due to missing entitlement for %s", &v17, 0xCu);
      }

      if (v14)
      {
        free(v14);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005E290(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Handling set DoH bootstrap enablement", &v15, 2u);
      }

      [*(a1 + 72) setProxiedContentMapDoHBootstrapEnabled:{xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyEnabled")}];
      v6 = v4;
      reply = xpc_dictionary_create_reply(v6);
      v8 = xpc_dictionary_get_remote_connection(v6);

      if (reply && v8)
      {
        xpc_connection_send_message(v8, reply);
      }
    }

    else
    {
      v9 = xpc_dictionary_get_remote_connection(v4);
      v10 = v9;
      if (v9 && (pid = xpc_connection_get_pid(v9), v15 = 0u, memset(v16, 0, sizeof(v16)), proc_pidinfo(pid, 13, 1uLL, &v15, 64) == 64))
      {
        v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v12, v16, 0x10uLL);
      }

      else
      {
        v12 = 0;
      }

      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        if (v12)
        {
          v14 = v12;
        }

        LODWORD(v15) = 136315138;
        *(&v15 + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "setting doh bootstrap enablement failed due to missing entitlement for %s", &v15, 0xCu);
      }

      if (v12)
      {
        free(v12);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005E4B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      string = xpc_dictionary_get_string(v4, "NSPServerPrivacyProxyTokenEventsVendor");
      v6 = NEPolicySession_ptr;
      if (string)
      {
        v7 = [[NSString alloc] initWithUTF8String:string];
      }

      else
      {
        v7 = 0;
      }

      v13 = xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyTokenEventsMostRecent");
      uint64 = xpc_dictionary_get_uint64(v4, "NSPServerPrivacyProxyTokenEventsLimit");
      v15 = xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyTokenEventsStats");
      v16 = nplog_obj();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (v15)
      {
        if (v17)
        {
          LODWORD(buffer[0]) = 138412290;
          *(buffer + 4) = v7;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Getting Privacy Proxy Token Events Stats vendor: %@", buffer, 0xCu);
        }

        v18 = +[NSPCoreData getMinMaxDate];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 objectForKey:@"minDate"];
          v21 = [v19 objectForKey:@"maxDate"];
          v22 = v21;
          if (v20)
          {
            if (v21)
            {
              v23 = uint64;
              if (v13)
              {
                v24 = [v21 dateByAddingTimeInterval:v23 * -86400.0];
                v25 = v20;
                v20 = v24;
              }

              else
              {
                v48 = [v20 dateByAddingTimeInterval:v23 * 86400.0];
                v25 = v22;
                v22 = v48;
              }

              v49 = v22;

              v50 = [NSNumber numberWithInt:30];
              v51 = [NSPCoreData getTokenCountStatsForMultipleWindows:v7 minDate:v20 maxDate:v22 windowDuration:v50];

              v52 = v51;
              v22 = v20;
              v53 = v49;
              v54 = +[NSMutableArray array];
              v55 = v54;
              if (v54)
              {
                v84 = v54;
                v86 = v7;
                v88 = v4;
                obja = v19;
                v56 = objc_alloc_init(NSMutableString);
                if (v56)
                {
                  v57 = v56;
                  v80 = v53;
                  v82 = v22;
                  [v56 appendFormat:@"Stats from %@ to %@\n", v22, v53];
                  [v57 appendString:@"Time(HH:MM-HH:MM)   Mean    Standard Deviation\n"];
                  v95 = 0u;
                  v96 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v79 = v52;
                  v92 = v52;
                  v58 = [v92 countByEnumeratingWithState:&v93 objects:buffer count:16];
                  if (v58)
                  {
                    v59 = v58;
                    v60 = 0;
                    v61 = 0;
                    v62 = *v94;
                    do
                    {
                      v63 = 0;
                      v64 = v60;
                      v65 = v61;
                      do
                      {
                        if (*v94 != v62)
                        {
                          objc_enumerationMutation(v92);
                        }

                        v66 = *(*(&v93 + 1) + 8 * v63);
                        if (v64 <= 0x1D)
                        {
                          v61 = v65;
                        }

                        else
                        {
                          v61 = (v65 + 1);
                        }

                        if (v64 <= 0x1D)
                        {
                          v60 = (v64 + 30);
                        }

                        else
                        {
                          v60 = 0;
                        }

                        v67 = [*(*(&v93 + 1) + 8 * v63) valueForKey:@"mean"];
                        [v67 doubleValue];
                        v69 = v68;

                        v70 = [v66 valueForKey:@"stdDev"];
                        [v70 doubleValue];
                        v72 = v71;

                        if (v72 >= 0.0)
                        {
                          [v57 appendFormat:@"%02d:%02d-%02d:%02d         %05.2f   %05.2f\n", v65, v64, v61, v60, v69, *&v72];
                        }

                        else
                        {
                          [v57 appendFormat:@"%02d:%02d-%02d:%02d         -----   -----\n", v65, v64, v61, v60, v77, v78];
                        }

                        v63 = v63 + 1;
                        v64 = v60;
                        v65 = v61;
                      }

                      while (v59 != v63);
                      v59 = [v92 countByEnumeratingWithState:&v93 objects:buffer count:16];
                    }

                    while (v59);
                  }

                  v55 = v84;
                  [v84 addObject:v57];
                  v73 = v84;
                  v7 = v86;
                  v4 = v88;
                  v19 = obja;
                  v53 = v80;
                  v22 = v82;
                  v52 = v79;
                }

                else
                {
                  v76 = nplog_obj();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
                  {
                    LODWORD(buffer[0]) = 136315138;
                    *(buffer + 4) = "[NSPServer formatTokenEventsStatsForDisplay:minDate:maxDate:]";
                    _os_log_fault_impl(&_mh_execute_header, v76, OS_LOG_TYPE_FAULT, "%s called with null statsStr", buffer, 0xCu);
                  }

                  v57 = 0;
                  v73 = 0;
                  v55 = v84;
                }
              }

              else
              {
                v57 = nplog_obj();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                {
                  LODWORD(buffer[0]) = 136315138;
                  *(buffer + 4) = "[NSPServer formatTokenEventsStatsForDisplay:minDate:maxDate:]";
                  _os_log_fault_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "%s called with null result", buffer, 0xCu);
                }

                v73 = 0;
              }

              sub_10006E15C(v4, v73);
            }

            else
            {
              v53 = nplog_obj();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
              {
                LODWORD(buffer[0]) = 136315138;
                *(buffer + 4) = "[NSPServer dumpPrivacyProxyTokenEvents:]";
                _os_log_fault_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "%s called with null maxDate", buffer, 0xCu);
              }

              v22 = v20;
            }
          }

          else
          {
            v53 = nplog_obj();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
            {
              LODWORD(buffer[0]) = 136315138;
              *(buffer + 4) = "[NSPServer dumpPrivacyProxyTokenEvents:]";
              _os_log_fault_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "%s called with null minDate", buffer, 0xCu);
            }
          }
        }

        else
        {
          sub_100054384(v4, 1007, @"Failed to retrieve data");
        }
      }

      else
      {
        v87 = v4;
        if (v17)
        {
          v75 = "No";
          LODWORD(buffer[0]) = 138412802;
          *(buffer + 4) = v7;
          if (v13)
          {
            v75 = "Yes";
          }

          WORD6(buffer[0]) = 2080;
          *(buffer + 14) = v75;
          WORD3(buffer[1]) = 2048;
          *(&buffer[1] + 1) = uint64;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Getting Privacy Proxy Token Events vendor: %@, most_recent: %s, limist:%llu", buffer, 0x20u);
        }

        v85 = v7;
        v26 = [NSPCoreData fetchEvents:v7 mostRecent:v13 limit:uint64];
        v27 = +[NSMutableArray array];
        v28 = [@"Date" stringByPaddingToLength:27 withString:@" " startingAtIndex:0];
        v29 = [@"Vendor" stringByPaddingToLength:22 withString:@" " startingAtIndex:0];
        v30 = [@"Event" stringByPaddingToLength:22 withString:@" " startingAtIndex:0];
        v31 = [@"Token count" stringByPaddingToLength:22 withString:@" " startingAtIndex:0];
        v32 = [NSString stringWithFormat:@"%@%@%@%@", v28, v29, v30, v31];

        [v27 addObject:v32];
        v83 = v32;
        v33 = [&stru_100110E60 stringByPaddingToLength:objc_msgSend(v32 withString:"length") startingAtIndex:{@"-", 0}];
        v34 = [NSString stringWithFormat:@"%@", v33];

        v91 = v27;
        v81 = v34;
        [v27 addObject:v34];
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        obj = v26;
        v35 = [obj countByEnumeratingWithState:&v93 objects:buffer count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v94;
          do
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v94 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v93 + 1) + 8 * i);
              v40 = [v39 vendor];
              v41 = [v40 stringByPaddingToLength:20 withString:@" " startingAtIndex:0];

              v42 = +[NSPCoreData tokenTypeEnumToString:](NSPCoreData, "tokenTypeEnumToString:", [v39 eventType]);
              v43 = [v42 stringByPaddingToLength:20 withString:@" " startingAtIndex:0];

              v44 = v6[36];
              [v39 date];
              v46 = v45 = v6;
              v47 = [v44 stringWithFormat:@"%@  %@  %@  %d", v46, v41, v43, objc_msgSend(v39, "tokenCount")];

              v6 = v45;
              [v91 addObject:v47];
            }

            v36 = [obj countByEnumeratingWithState:&v93 objects:buffer count:16];
          }

          while (v36);
        }

        v4 = v87;
        sub_10006E15C(v87, v91);

        v7 = v85;
      }
    }

    else
    {
      v8 = xpc_dictionary_get_remote_connection(v4);
      v9 = v8;
      if (v8 && (pid = xpc_connection_get_pid(v8), memset(buffer, 0, 64), proc_pidinfo(pid, 13, 1uLL, buffer, 64) == 64))
      {
        v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v11, &buffer[1], 0x10uLL);
      }

      else
      {
        v11 = 0;
      }

      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v74 = "";
        if (v11)
        {
          v74 = v11;
        }

        LODWORD(buffer[0]) = 136315138;
        *(buffer + 4) = v74;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "dumping privacy proxy token events failed due to missing entitlement for %s", buffer, 0xCu);
      }

      if (v11)
      {
        free(v11);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005EF28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      if (v5)
      {
        v6 = xpc_dictionary_get_value(v4, "NSPServerPrivacyProxyTokenEventsEnableProactiveTokenFetch");

        if (v6)
        {
          v7 = [NSNumber numberWithBool:xpc_dictionary_get_BOOL(v4, "NSPServerPrivacyProxyTokenEventsEnableProactiveTokenFetch")];
          [v5 setObject:v7 forKey:@"NSPEventsKeyProactiveTokenFetchEnabled"];
        }

        else
        {
          v7 = 0;
        }

        v13 = xpc_dictionary_get_value(v4, "NSPServerPrivacyProxyTokenEventsSetStatsDuration");

        if (v13)
        {
          v14 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v4, "NSPServerPrivacyProxyTokenEventsSetStatsDuration")];
          [v5 setObject:v14 forKey:@"NSPEventsKeyStatsDuration"];
        }

        else
        {
          v14 = 0;
        }

        v15 = xpc_dictionary_get_value(v4, "NSPServerPrivacyProxyTokenEventsSetLowerTokenCountThreshold");

        if (v15)
        {
          v16 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v4, "NSPServerPrivacyProxyTokenEventsSetLowerTokenCountThreshold")];
          [v5 setObject:v16 forKey:@"NSPEventsKeyLowerTokenCountThreshold"];
        }

        else
        {
          v16 = 0;
        }

        v17 = xpc_dictionary_get_value(v4, "NSPServerPrivacyProxyTokenEventsSetLowerTokenCountProbability");

        if (v17)
        {
          v18 = [NSNumber numberWithDouble:xpc_dictionary_get_double(v4, "NSPServerPrivacyProxyTokenEventsSetLowerTokenCountProbability")];
          [v5 setObject:v18 forKey:@"NSPEventsKeyLowerTokenCountProbability"];
        }

        else
        {
          v18 = 0;
        }

        v19 = xpc_dictionary_get_value(v4, "NSPServerPrivacyProxyTokenEventsSetUpperLWMCountThreshold");

        if (v19)
        {
          v20 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v4, "NSPServerPrivacyProxyTokenEventsSetUpperLWMCountThreshold")];
          [v5 setObject:v20 forKey:@"NSPEventsKeyUpperLWMCountThreshold"];
        }

        else
        {
          v20 = 0;
        }

        v21 = xpc_dictionary_get_value(v4, "NSPServerPrivacyProxyTokenEventsSetUpperLWMCountProbabilityOffset");

        if (v21)
        {
          v22 = [NSNumber numberWithDouble:xpc_dictionary_get_double(v4, "NSPServerPrivacyProxyTokenEventsSetUpperLWMCountProbabilityOffset")];
          [v5 setObject:v22 forKey:@"NSPEventsKeyUpperLWMCountProbabilityOffset"];
        }

        else
        {
          v22 = 0;
        }

        v23 = v18;
        v24 = [NSPCoreData updateProactiveTokenFetchConfiguration:v7 statsDuration:v14 lowerTokenCountThreshold:v16 lowerTokenCountProbability:v18 upperLWMCountThreshold:v20 upperLWMCountProbabilityOffset:v22];
        if (v24)
        {
          v30 = v14;
          v31 = v16;
          v25 = v7;
          v26 = v4;
          reply = xpc_dictionary_create_reply(v26);
          v28 = xpc_dictionary_get_remote_connection(v26);

          if (reply && v28)
          {
            xpc_connection_send_message(v28, reply);
          }

          v7 = v25;
          v14 = v30;
          v16 = v31;
        }

        else
        {
          sub_100054384(v4, 1007, @"updateProactiveTokenFetchConfiguration Failed");
        }
      }

      else
      {
        sub_100054384(v4, 1007, @"Failed allocate dictionary");
      }
    }

    else
    {
      v8 = xpc_dictionary_get_remote_connection(v4);
      v9 = v8;
      if (v8 && (pid = xpc_connection_get_pid(v8), buffer = 0u, memset(v33, 0, sizeof(v33)), proc_pidinfo(pid, 13, 1uLL, &buffer, 64) == 64))
      {
        v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v11, v33, 0x10uLL);
      }

      else
      {
        v11 = 0;
      }

      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v29 = "";
        if (v11)
        {
          v29 = v11;
        }

        LODWORD(buffer) = 136315138;
        *(&buffer + 4) = v29;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Setting Proactive Token Fetch Params failed due to missing entitlement for %s", &buffer, 0xCu);
      }

      if (v11)
      {
        free(v11);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005F400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to override the preferred oblivious proxy", &v16, 2u);
      }

      string = xpc_dictionary_get_string(v4, "NSPServerPrivacyProxyURL");
      if (string)
      {
        string = [[NSString alloc] initWithUTF8String:string];
      }

      if (![string length])
      {

        string = 0;
      }

      [*(a1 + 72) overridePreferredObliviousProxy:string];
      v7 = v4;
      reply = xpc_dictionary_create_reply(v7);
      v9 = xpc_dictionary_get_remote_connection(v7);

      if (reply && v9)
      {
        xpc_connection_send_message(v9, reply);
      }
    }

    else
    {
      v10 = xpc_dictionary_get_remote_connection(v4);
      v11 = v10;
      if (v10 && (pid = xpc_connection_get_pid(v10), v16 = 0u, memset(v17, 0, sizeof(v17)), proc_pidinfo(pid, 13, 1uLL, &v16, 64) == 64))
      {
        v13 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v13, v17, 0x10uLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        LODWORD(v16) = 136315138;
        *(&v16 + 4) = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "overriding preferred oblivious proxy failed due to missing entitlement for %s", &v16, 0xCu);
      }

      if (v13)
      {
        free(v13);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005F668(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_100001FC4(v3, @"com.apple.private.networkserviceproxy"))
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processing request to get the preferred oblivious proxy", &v13, 2u);
      }

      v6 = [*(a1 + 72) overridePreferredObliviousProxy];
      sub_10006D73C(v4, "NSPServerPrivacyProxyURL", v6);
    }

    else
    {
      v7 = xpc_dictionary_get_remote_connection(v4);
      v8 = v7;
      if (v7 && (pid = xpc_connection_get_pid(v7), v13 = 0u, memset(v14, 0, sizeof(v14)), proc_pidinfo(pid, 13, 1uLL, &v13, 64) == 64))
      {
        v10 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
        strncpy(v10, v14, 0x10uLL);
      }

      else
      {
        v10 = 0;
      }

      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = "";
        if (v10)
        {
          v12 = v10;
        }

        LODWORD(v13) = 136315138;
        *(&v13 + 4) = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "get preferred oblivious proxy failed due to missing entitlement for %s", &v13, 0xCu);
      }

      if (v10)
      {
        free(v10);
      }

      sub_100054384(v4, 1001, @"Permission denied");
    }
  }
}

void sub_10005F85C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Got request to fetch a new configuration from our configuration server", buf, 2u);
    }

    v5 = *(a1 + 64);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006D80C;
    v6[3] = &unk_10010A0A8;
    v7 = v3;
    [v5 refreshConfigurationWithReason:13 completionHandler:v6];
  }
}

void sub_10005F94C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((sub_100001FC4(v3, @"com.apple.private.network.system-token-fetch") & 1) == 0)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "System client entitlement missing, cannot check cost quota", &buf, 2u);
      }

      goto LABEL_49;
    }

    v5 = get_nsdata_from_xpc_object();
    string = xpc_dictionary_get_string(v4, "NSPServerSigningIdentifier");
    if (string)
    {
      v7 = [[NSString alloc] initWithUTF8String:string];
    }

    else
    {
      v7 = 0;
    }

    if (v5 | v7 && (sub_100001FC4(v4, @"com.apple.private.network.socket-delegate") & 1) == 0)
    {
      v23 = xpc_dictionary_get_remote_connection(v4);
      v24 = v23;
      if (v23)
      {
        pid = xpc_connection_get_pid(v23);
        buf = 0u;
        memset(v49, 0, 48);
        if (proc_pidinfo(pid, 13, 1uLL, &buf, 64) == 64)
        {
          v26 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
          strncpy(v26, v49, 0x10uLL);
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v29 = nplog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = "";
        if (v26)
        {
          v31 = v26;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to cost quota due to missing delegation entitlement for %s", &buf, 0xCu);
      }

      if (v26)
      {
        free(v26);
      }

      sub_100054384(v4, 1001, @"Permission denied");
      goto LABEL_48;
    }

    v8 = get_nsdata_from_xpc_object();
    if (v8 && (v9 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v8]) != 0)
    {
      v10 = v9;
      v37 = v8;
      v11 = [(NSPPrivateAccessTokenChallenge *)v9 issuerName];
      v12 = [a1[6] proxyConfiguration];
      v13 = [v12 quotaInfo];
      v14 = [v13 quotaServices];

      if ([v11 length])
      {
        v36 = v5;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v44 objects:&buf count:16];
        if (v16)
        {
          v33 = v14;
          v34 = v10;
          v35 = v7;
          v17 = *v45;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v45 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v44 + 1) + 8 * i);
              v20 = [v19 supportedUseCaseIdentifiers];
              v21 = [v20 containsObject:v11];

              if (v21)
              {
                v16 = v19;
                goto LABEL_30;
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v44 objects:&buf count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

LABEL_30:
          v10 = v34;
          v7 = v35;
          v14 = v33;
        }

        v5 = v36;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v27 = [v16 serviceURL];
        v28 = [NSURL URLWithString:v27];

        if (v28)
        {
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100070004;
          v38[3] = &unk_10010A238;
          v39 = v11;
          v40 = v16;
          v41 = v5;
          v42 = v7;
          v43 = v4;
          sub_10006FEE4(a1, 1, 0, v38);
        }

        else
        {
          v30 = nplog_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v32 = [v16 serviceURL];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v32;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to parse service URL for quota service: %@", &buf, 0xCu);
          }

          sub_100054384(v4, 1005, @"No quota service URL");
        }

        v8 = v37;
LABEL_47:

LABEL_48:
LABEL_49:

        goto LABEL_50;
      }

      v8 = v37;
    }

    else
    {
      v11 = 0;
    }

    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to find known quota service for challenge (issuer name: %@)", &buf, 0xCu);
    }

    sub_100054384(v4, 1004, @"No matching quota service");
    goto LABEL_47;
  }

LABEL_50:
}

void sub_10005FF10(id a1)
{
  v1 = nplog_obj();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Requesting clean exit after client request", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_10005FF7C(uint64_t a1, void *a2)
{
  object = a2;
  if (!object || xpc_get_type(object) != &_xpc_type_dictionary)
  {
    goto LABEL_3;
  }

  int64 = xpc_dictionary_get_int64(object, "NSPServerCommandType");
  if (int64 <= 70)
  {
    switch(int64)
    {
      case '3':
        sub_10005A93C(*(a1 + 32), object);
        goto LABEL_4;
      case '<':
        sub_10005C834(*(a1 + 32), object);
        goto LABEL_4;
      case 'F':
        sub_10005BB10(*(a1 + 32), object);
        goto LABEL_4;
    }

LABEL_19:
    xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
LABEL_3:
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    goto LABEL_4;
  }

  if (int64 > 72)
  {
    if (int64 == 73)
    {
      sub_10005C52C(*(a1 + 32), object);
      goto LABEL_4;
    }

    if (int64 == 76)
    {
      sub_10005F94C(*(a1 + 32), object);
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  if (int64 == 71)
  {
    sub_10005BC48(*(a1 + 32), object);
  }

  else
  {
    sub_10005C250(*(a1 + 32), object);
  }

LABEL_4:
}

void sub_1000600CC(id a1)
{
  v1 = nplog_obj();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Requesting clean exit after client token request", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100060708(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 11) == 1)
    {
      [*(v2 + 112) removeObserver:v2 forKeyPath:@"path" context:v2];
      v4 = *(v2 + 112);
      *(v2 + 112) = 0;
    }

    Property = objc_getProperty(v2, a2, 256, 1);
    dispatch_source_cancel(Property);
    v7 = *(a1 + 32);
    if (v7 && *(v7 + 9) == 1)
    {
      *(v7 + 10) = 1;
      v8 = *(a1 + 32);
      if (v8)
      {
        v8 = objc_getProperty(v8, v6, 280, 1);
      }

      sub_1000A0904(v8, 0);
    }
  }

  exit(0);
}

void sub_1000607A4(uint64_t a1, void *a2)
{
  object = a2;
  if (object)
  {
    if (xpc_get_type(object) == &_xpc_type_connection)
    {
      v4 = *(a1 + 32);
      v5 = object;
      v6 = v5;
      if (v4)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v14 = 0x3032000000;
        v15 = sub_100001F54;
        v16 = sub_100054494;
        v7 = v5;
        v17 = v7;
        v8 = NPGetInternalQueue();
        xpc_connection_set_target_queue(v7, v8);

        v9 = *(*(&buf + 1) + 40);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10005FF7C;
        handler[3] = &unk_100109E60;
        handler[4] = v4;
        handler[5] = &buf;
        xpc_connection_set_event_handler(v9, handler);
        xpc_connection_resume(*(*(&buf + 1) + 40));
        if (deviceClassIsHomepod())
        {
          v10 = dispatch_time(0, 30000000000);
          dispatch_after(v10, &_dispatch_main_q, &stru_100109EA0);
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else if (xpc_get_type(object) == &_xpc_type_error)
    {
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = xpc_dictionary_get_string(object, _xpc_error_key_description);
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Exiting, got invalid token fetch XPC connection: %s", &buf, 0xCu);
      }

      exit(1);
    }
  }
}

void sub_100060A08(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[6] enabled];
    v5 = [v4 BOOLValue];

    v6 = nplog_obj();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Refreshing metadata in response to XPC activity notification", buf, 2u);
      }

      xpc_activity_set_state(v3, 4);
      objc_initWeak(&location, a1);
      *buf = 0;
      v14 = buf;
      v15 = 0x3032000000;
      v16 = sub_100001F54;
      v17 = sub_100054494;
      v18 = os_transaction_create();
      v8 = a1[8];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100060D90;
      v9[3] = &unk_100109F10;
      objc_copyWeak(&v12, &location);
      v10 = v3;
      v11 = buf;
      [v8 refreshConfigurationWithReason:1 completionHandler:v9];

      objc_destroyWeak(&v12);
      _Block_object_dispose(buf, 8);

      objc_destroyWeak(&location);
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Metadata refresh XPC activity is finished because NSP is disabled", buf, 2u);
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100060C78;
      v20[3] = &unk_100109478;
      v21 = v3;
      sub_100060C84(a1, v20);
    }
  }
}

void sub_100060C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 80));
  _Unwind_Resume(a1);
}

void sub_100060C84(void *a1, void *a2)
{
  v3 = a2;
  xpc_activity_unregister("com.apple.networkserviceproxy.metadata-refresh-22h");
  objc_initWeak(&location, a1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006121C;
  handler[3] = &unk_100109F58;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  xpc_activity_register("com.apple.networkserviceproxy.metadata-refresh-22h", XPC_ACTIVITY_CHECK_IN, handler);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_100060D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100060D90(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"failure";
    if (a2)
    {
      v5 = @"success";
    }

    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Configuration refresh activity finished with result %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[9] removeExpiredTokens];
    sub_100060FFC(v7);
    v8 = arc4random_uniform(0x64u);
    v9 = [v7[6] proxyConfiguration];
    v10 = [v9 hasPreferredPathEnabledPercentage];

    v11 = 80;
    if (v10)
    {
      v12 = [v7[6] proxyConfiguration];
      v13 = [v12 preferredPathEnabledPercentage];

      if (v13 >= 0x50)
      {
        v11 = 80;
      }

      else
      {
        v11 = v13;
      }
    }

    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = "Disabling";
      if (v8 < v11)
      {
        v15 = "Enabling";
      }

      *buf = 136446210;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}s preferred path routing based on random value", buf, 0xCu);
    }

    [v7[8] setPreferredPathRoutingEnabled:v8 < v11];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100061138;
    v19[3] = &unk_100109478;
    v20 = *(a1 + 32);
    sub_100060C84(v7, v19);
  }

  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  if (deviceClassIsHomepod())
  {
    v18 = dispatch_time(0, 30000000000);
    dispatch_after(v18, &_dispatch_main_q, &stru_100109EE8);
  }
}

void sub_100060FFC(uint64_t a1)
{
  if (a1)
  {
    v2 = +[AKAccountManager sharedInstance];
    v3 = [v2 primaryAuthKitAccount];
    v4 = NSSelectorFromString(@"privateAttestationEnabledForAccount:");
    v5 = (objc_opt_respondsToSelector() & 1) == 0 || [v2 performSelector:v4 withObject:v3] != 0;
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Private access tokens enabled on account: %u", v7, 8u);
    }

    if (v5 != [*(a1 + 64) getPrivateAccessTokensEnabled])
    {
      [*(a1 + 64) setPrivateAccessTokensEnabled:v5];
    }
  }
}

void sub_100061144(id a1)
{
  v1 = nplog_obj();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Requesting clean exit after refresh activity", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_1000611B0(id a1)
{
  v1 = nplog_obj();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Requesting clean exit after publish stats activity", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_10006121C(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v18 = state;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Metadata refresh XPC activity 22 hour state %ld", buf, 0xCu);
  }

  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (!WeakRetained)
    {
      xpc_activity_set_state(v3, 5);
      goto LABEL_11;
    }

    v11 = WeakRetained;
    v12 = NPGetInternalQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100061480;
    v14[3] = &unk_1001098C0;
    v15 = v11;
    v16 = v3;
    v9 = v11;
    dispatch_async(v12, v14);
  }

  else
  {
    if (state)
    {
      goto LABEL_9;
    }

    objc_opt_self();
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(v9, XPC_ACTIVITY_DELAY, 79200);
    xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 0);
    xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 1);
    xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_int64(v9, XPC_ACTIVITY_GRACE_PERIOD, 3600);
    xpc_activity_set_criteria(v3, v9);
  }

LABEL_9:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v6, v7, v8);
  }

LABEL_11:
}

void sub_10006148C(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v12 = state;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Metadata refresh XPC activity 12 hour state %ld", buf, 0xCu);
  }

  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = NPGetInternalQueue();
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000615FC;
      v8[3] = &unk_1001098C0;
      v9 = WeakRetained;
      v10 = v3;
      dispatch_async(v7, v8);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }
  }
}

void sub_100061608(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v12 = state;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Metadata refresh XPC activity 22 hour state %ld", buf, 0xCu);
  }

  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = NPGetInternalQueue();
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100061778;
      v8[3] = &unk_1001098C0;
      v9 = WeakRetained;
      v10 = v3;
      dispatch_async(v7, v8);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }
  }
}

void sub_100061784(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v13 = state;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Publish daily stats XPC activity state %ld", buf, 0xCu);
  }

  if (deviceClassIsHomepod())
  {
    v6 = dispatch_time(0, 10000000000);
    dispatch_after(v6, &_dispatch_main_q, &stru_100109FA0);
    xpc_activity_set_state(v3, 5);
  }

  else if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v8 = NPGetInternalQueue();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000619A0;
      v9[3] = &unk_1001098C0;
      v10 = WeakRetained;
      v11 = v3;
      dispatch_async(v8, v9);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }
  }
}

void sub_100061934(id a1)
{
  v1 = nplog_obj();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Requesting clean exit after daily stats event", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_1000619A0(uint64_t a1)
{
  +[NSPCoreData trainModel];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Publish daily stats", buf, 2u);
    }

    [v2[8] publishDailyConfigurationStats];
    v5 = [v2[6] enabled];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      [v2[10] publishDailyServiceStatus];
      [v2[10] publishDailyNetworkStatus];
      v7 = [v2[6] geohashSharingEnabledStatus];
      v8 = [v7 BOOLValue];

      v9 = objc_alloc_init(NSPIPAddressLocationPreferenceStats);
      v10 = v9;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      [(NSPIPAddressLocationPreferenceStats *)v9 setLocationPreference:v11];
      v12 = [v2[6] userTier];
      v13 = [v12 intValue];
      if (v13 >= 3)
      {
        v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
      }

      else
      {
        v14 = *(&off_10010A560 + v13);
      }

      [(NSPIPAddressLocationPreferenceStats *)v10 setTierType:v14];

      [(NSPProxyAnalytics *)v10 sendAnalytics];
    }

    xpc_activity_set_state(v3, 5);
    if (deviceClassIsHomepod())
    {
      v15 = dispatch_time(0, 30000000000);
      dispatch_after(v15, &_dispatch_main_q, &stru_100109F30);
    }
  }
}

void sub_100061B54(uint64_t a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061BE4;
    block[3] = &unk_100109478;
    block[4] = a1;
    if (qword_1001297B0 != -1)
    {
      dispatch_once(&qword_1001297B0, block);
    }
  }
}

void sub_100061BE4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (objc_getProperty(v3, a2, 264, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 264, 1);
      }

      xpc_connection_resume(Property);
      [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-xpc-listen-ready" value:random()];
    }

    v6 = *(a1 + 32);
    if (v6 && objc_getProperty(v6, v4, 272, 1))
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v8 = objc_getProperty(v8, v7, 272, 1);
      }

      xpc_connection_resume(v8);
    }
  }
}

void sub_100061C9C(uint64_t a1)
{
  if (a1)
  {
    v2 = NPGetInternalQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061D2C;
    block[3] = &unk_100109478;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

void sub_100061D2C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061DB8;
  block[3] = &unk_100109478;
  block[4] = *(a1 + 32);
  if (qword_1001297B8 != -1)
  {
    dispatch_once(&qword_1001297B8, block);
  }
}

void sub_100061DB8(uint64_t a1)
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    CFPreferencesFlushCaches();
    v2 = *(a1 + 32);

    sub_100061F54(v2);
  }

  else
  {
    out_token = -1;
    objc_initWeak(&location, *(a1 + 32));
    v3 = NPGetInternalQueue();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000622CC;
    handler[3] = &unk_100109FC8;
    objc_copyWeak(&v8, &location);
    v4 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v3, handler);

    if (v4)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to register for first unlock notification.", v6, 2u);
      }
    }

    else if (MKBDeviceUnlockedSinceBoot())
    {
      notify_cancel(out_token);
      CFPreferencesFlushCaches();
      sub_100061F54(*(a1 + 32));
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_100061F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100061F54(id *a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Creating configuration from settings on disk", buf, 2u);
    }

    v3 = +[NSPConfiguration defaultConfiguration];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 copy];
      v6 = a1[6];
      a1[6] = v5;

      if (a1[6])
      {
        v7 = [[NSPConfiguration alloc] initFromPreferences];
        v8 = [[NSPConfigurationSignatureInfo alloc] initFromPreferences];
        v9 = v8;
        if (v7 && v8)
        {
          objc_initWeak(buf, a1);
          v10 = os_variant_allows_internal_security_policies();
          if (v10)
          {
            v11 = [v7 ignoreInvalidCerts]^ 1;
          }

          else
          {
            v11 = 1;
          }

          v13 = [v7 proxyConfigurationData];
          v14 = [v7 configServerHost];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100062358;
          v16[3] = &unk_100109FF0;
          objc_copyWeak(&v19, buf);
          v17 = v7;
          v18 = v4;
          v20 = v10 ^ 1;
          [NSPConfiguration verifyConfigurationSignature:v9 configuration:v13 host:v14 validateCert:v11 completionHandler:v16];

          objc_destroyWeak(&v19);
          objc_destroyWeak(buf);
        }

        else
        {
          v12 = nplog_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Starting and not using configuration settings on disk due lack of config or signature", buf, 2u);
          }

          if (((v7 != 0) & os_variant_allows_internal_security_policies()) == 1)
          {
            [a1[6] saveInternalOptions:v7];
          }

          sub_100062634(a1);
        }

        goto LABEL_18;
      }

      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v22 = "[NSPServer configurationSetup]";
        v15 = "%s called with null self.configuration";
        goto LABEL_24;
      }
    }

    else
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v22 = "[NSPServer configurationSetup]";
        v15 = "%s called with null defaultConfiguration";
LABEL_24:
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v15, buf, 0xCu);
      }
    }

LABEL_18:
  }
}

void sub_1000622A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000622CC(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received first unlock notification.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    CFPreferencesFlushCaches();
    sub_100061F54(WeakRetained);
  }
}