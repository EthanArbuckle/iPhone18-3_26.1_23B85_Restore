const __CFString *sub_100055D44(uint64_t a1, __CFBundle *a2)
{
  (*(*a1 + 16))(a1);
  if (!a2)
  {
    ValueAtIndex = 0;
    goto LABEL_28;
  }

  v4 = CFPreferencesCopyValue(@"AppleLanguages", @".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
  v5 = v4;
  if (v4 && CFArrayGetCount(v4))
  {
    v6 = CFBundleCopyBundleLocalizations(a2);
    v7 = v6;
    if (v6 && CFArrayGetCount(v6))
    {
      v8 = CFBundleCopyLocalizationsForPreferences(v7, v5);
      v9 = v8;
      if (v8 && CFArrayGetCount(v8))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
        CFRetain(ValueAtIndex);
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_10193B164();
        }

        v14 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning could not get localizations for preferred languages, assuming english", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193B2CC(buf);
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "CFStringRef CLLocalization::copyUserPreferredLocalizationLanguage(CFBundleRef)", "%s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }

        ValueAtIndex = @"en";
        CFRetain(@"en");
      }

      goto LABEL_24;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10193B164();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning could not get localizations array from bundle, assuming english", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193B2CC(buf);
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CFStringRef CLLocalization::copyUserPreferredLocalizationLanguage(CFBundleRef)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    ValueAtIndex = @"en";
    CFRetain(@"en");
LABEL_23:
    v9 = 0;
LABEL_24:
    CFRelease(v5);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_28;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10193B164();
  }

  v11 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning could not get apple languages array, assuming english", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193B2CC(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CFStringRef CLLocalization::copyUserPreferredLocalizationLanguage(CFBundleRef)", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  CFRetain(@"en");
  ValueAtIndex = @"en";
  if (v5)
  {
    v7 = 0;
    goto LABEL_23;
  }

LABEL_28:
  (*(*a1 + 24))(a1);
  return ValueAtIndex;
}

void sub_100056200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100056238()
{
  if (qword_102659FB0 != -1)
  {
    sub_10193B150();
  }

  return qword_1026372B0;
}

void sub_100056270(uint64_t a1, void *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019EEDF4();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v10 = 68290562;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "state_transition";
    v16 = 2082;
    v17 = "DaemonClient";
    v18 = 2050;
    v19 = a1;
    v20 = 2082;
    v21 = "clientKeyPath";
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:escape_only}@, new:%{public, location:escape_only}@}", &v10, 0x4Eu);
  }

  if (!*(a1 + 48))
  {
    goto LABEL_16;
  }

  if ([a2 isEqual:?])
  {
    return;
  }

  if (*(a1 + 72) != 1)
  {

LABEL_16:
    *(a1 + 48) = a2;
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_1019EED30();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 48);
    v10 = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2114;
    v15 = v7;
    v16 = 2114;
    v17 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Attempting to set CLDC clientKeyPath after we've already finished registration. Sticking with the ckp that we originally set fRegistrationReceived with, old:%{public, location:escape_only}@, new:%{public, location:escape_only}@}", &v10, 0x26u);
    if (qword_1025D47A0 != -1)
    {
      sub_1019EED30();
    }
  }

  v8 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v9 = *(a1 + 48);
    v10 = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = a2;
    _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Attempting to set CLDC clientKeyPath after we've already finished registration. Sticking with the ckp that we originally set fRegistrationReceived with", "{msg%{public}.0s:Attempting to set CLDC clientKeyPath after we've already finished registration. Sticking with the ckp that we originally set fRegistrationReceived with, old:%{public, location:escape_only}@, new:%{public, location:escape_only}@}", &v10, 0x26u);
  }
}

uint64_t sub_1000564F4(int a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (a1 < 2)
  {
    if (v4(a2, @"NSLocationAlwaysUsageDescription"))
    {
      v5 = 7;
    }

    else
    {
      v5 = 1;
    }
  }

  else if (v4(a2, @"NSLocationAlwaysAndWhenInUseUsageDescription"))
  {
    if ((*(a2 + 16))(a2, @"NSLocationWhenInUseUsageDescription"))
    {
      v5 = 7;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  if (((*(a2 + 16))(a2, @"NSLocationWhenInUseUsageDescription") & 1) != 0 || (*(a2 + 16))(a2, @"NSLocationAuthorizationPurposeDescriptionDictionary"))
  {
    v5 |= 2uLL;
  }

  if (v5 == 1 && a1 == 0)
  {
    return 7;
  }

  else
  {
    return v5;
  }
}

CFTypeRef sub_1000565F4(__CFBundle *a1)
{
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(a1, @"NSLocationInterestZones");
  if (!ValueForInfoDictionaryKey)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B0D6F4();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a1;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:No Info.plist InterestZones, For Bundle:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    return 0;
  }

  v3 = ValueForInfoDictionaryKey;
  v4 = CFGetTypeID(ValueForInfoDictionaryKey);
  if (v4 != CFDictionaryGetTypeID())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B0D6F4();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a1;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Info.plist InterestZones not of type Dictionary, Bundle:%{public, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101B0D52C();
      }
    }

    v8 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a1;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Info.plist InterestZones not of type Dictionary", "{msg%{public}.0s:Info.plist InterestZones not of type Dictionary, Bundle:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B0D6F4();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 68289538;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2114;
    v15 = a1;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Info.plist InterestZones, For Bundle:%{public, location:escape_only}@, InfoPlistZones:%{public, location:escape_only}@}", &v10, 0x26u);
  }

  return v3;
}

uint64_t sub_1000568A0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 264))
  {
    isEntitled = CLConnection::isEntitled();
    if (qword_1025D4790 != -1)
    {
      sub_1019EEFF0();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v6 = "not entitled";
      v7 = *(a1 + 48);
      if (isEntitled)
      {
        v6 = "entitled";
      }

      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 138412802;
      *v14 = v7;
      *&v14[8] = 2080;
      *&v14[10] = v6;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%@ is %s for %s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLDaemonClient::isEntitled(const std::string &)", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_1019EEFF0();
    }

    v10 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *v14 = 0;
      *&v14[4] = 2082;
      *&v14[6] = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:The underlying fConnection in CLDaemonClient is no longer available}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }
    }

    v11 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      *v14 = 0;
      *&v14[4] = 2082;
      *&v14[6] = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The underlying fConnection in CLDaemonClient is no longer available", "{msg%{public}.0s:The underlying fConnection in CLDaemonClient is no longer available}", buf, 0x12u);
    }

    return 0;
  }

  return isEntitled;
}

void sub_100056BBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_100033370(a1, a2);
  v8 = [*(a1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v7 defaultValue:0];
  v9 = v8;
  v10 = v8;
  if (a4 && !v8)
  {
    sub_10001A3E8();
    if (sub_10001CF3C())
    {
      [*(a1 + 136) setInt:2 forKey:@"CorrectiveCompensationEnabled" atKeyPath:v7];
      v10 = [*(a1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v7 defaultValue:0];
    }

    else
    {
      v10 = 2;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      *&v20[14] = 2114;
      *&v20[16] = v7;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Sliding CorrectiveCompensationUnspecified(0) to CorrectiveCompensationOn(2), Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  [*(a1 + 136) setInt:a3 forKey:@"SupportedAuthorizationMask" atKeyPath:v7];
  sub_10001A3E8();
  if ((sub_10001CF3C() & 1) == 0)
  {
    v12 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v7), "dictionary"}]);
    if (v12 == 4)
    {
      v13 = a3 & 2;
    }

    else
    {
      v13 = 0;
    }

    if ((v12 & a3) != 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    if (v14 == v12)
    {
      if (v10 == v9)
      {
        return;
      }
    }

    else
    {
      v15 = v12;
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        *v20 = v7;
        *&v20[8] = 2048;
        *&v20[10] = a3;
        *&v20[18] = 2048;
        *&v20[20] = v15;
        v21 = 2048;
        v22 = v14;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Client %@ allowable mask (%lu) no longer contains authorization level (%lu) downgrading to (%lu)", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::updateClientAllowableAuthorizationMask(CLClientKeyPath *, CLLocationDictionaryUtilitiesAuthorizationMask, BOOL)", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }

    if ((sub_10078B250(a1, v7, v14, v10, 0, 1, 1) & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        *v20 = v7;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "Client %{public}@ missing for authorization update, but didn't we just create it?", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101932AC4();
      }
    }
  }
}

id sub_100056FA0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v6))}];
  v8 = +[NSMutableDictionary dictionary];
  v9 = *(a1 + 136);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10005732C;
  v29[3] = &unk_102470620;
  v23 = v8;
  v24 = a1;
  v29[4] = v8;
  v29[5] = a3;
  v29[6] = a1;
  v29[7] = a2;
  [v9 iterateIdentitiesRelatedToKeyPath:v7 withBlock:v29];
  result = [a3 count];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = v12;
      v35 = 2114;
      v36 = a3;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:final info.plist zones for #pla registeration, ClientKey:%{public, location:escape_only}s, InfoPlistZones:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = [a3 countByEnumeratingWithState:&v25 objects:v39 count:16];
    v14 = result;
    if (result)
    {
      v15 = *v26;
      *&v13 = 68289794;
      v22 = v13;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(a3);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          v18 = [a3 objectForKeyedSubscript:{v17, v22}];
          if (sub_1007A7500(v18))
          {
            sub_10000EC00(buf, [v17 UTF8String]);
            sub_100791FC0(v24, a2, buf, v18, 1u, v23);
            if (SBYTE3(v34) < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v19 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a2 + 23) >= 0)
              {
                v20 = a2;
              }

              else
              {
                v20 = *a2;
              }

              v21 = [v17 UTF8String];
              *buf = v22;
              *&buf[4] = 0;
              v31 = 2082;
              v32 = "";
              v33 = 2082;
              v34 = v20;
              v35 = 2082;
              v36 = v21;
              v37 = 2114;
              v38 = v18;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Info.plist zone registration failed. Invalid zone., ClientKey:%{public, location:escape_only}s, ZoneId:%{public, location:escape_only}s, Info.PlistZone:%{public, location:escape_only}@}", buf, 0x30u);
            }
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        result = [a3 countByEnumeratingWithState:&v25 objects:v39 count:16];
        v14 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_100057308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005732C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  if ([a2 subIdentityType] != 122)
  {
    return;
  }

  v5 = [a2 zoneId];
  v6 = [objc_msgSend(*(v4 + 136) readonlyStoreAtKeyPath:{a2), "dictionary"}];
  v7 = [*(v4 + 136) intForKey:@"Provenance" atKeyPath:a2 defaultValue:0];
  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v8 = *(a1 + 32);

      [v8 setObject:v6 forKeyedSubscript:a2];
    }

    return;
  }

  v9 = [*(a1 + 40) objectForKeyedSubscript:v5];
  if (v9)
  {
    if (sub_1007A7EA8(v9, v6))
    {
      [*(a1 + 40) removeObjectForKey:v5];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        __p = 68289282;
        v15 = 2082;
        v16 = "";
        v17 = 2082;
        v18 = [v5 UTF8String];
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Zone unchanged. Remove from infoPlistZones. Will skip registration, ZoneId:%{public, location:escape_only}s}", &__p, 0x1Cu);
      }

      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      __p = 68289282;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = [v5 UTF8String];
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Zone has been updated. Delete from clients.plist first. Will be re-registered, ZoneId:%{public, location:escape_only}s}", &__p, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      __p = 68289282;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = [v5 UTF8String];
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ClientsPlistZone is stale. Not found in Info.plist. Delete, ZoneId:%{public, location:escape_only}s}", &__p, 0x1Cu);
    }
  }

  v13 = *(a1 + 56);
  sub_10000EC00(&__p, [v5 UTF8String]);
  sub_100797CA0(v4, v13, &__p, 0);
  if (SBYTE3(v18) < 0)
  {
    operator delete(__p);
  }
}

void sub_100057670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100057698(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_1000184F4(a1, a2);
  v8 = [*(a1 + 360) objectForKey:v7];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 68290306;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v7;
    v18 = 2050;
    v19 = a3;
    v20 = 1026;
    v21 = a3;
    v22 = 1026;
    v23 = a4;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#identityValidation cache updating, Client:%{public, location:escape_only}@, upid:%{public}lld, pid:%{public}d, coming:%{public}hhd, AllowedUniquePids:%{public, location:escape_only}@}", &v12, 0x3Cu);
  }

  if (a4)
  {
    if (!v8)
    {
      v8 = objc_opt_new();
      [*(a1 + 360) setObject:v8 forKeyedSubscript:v7];
    }

    [v8 addObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", a3)}];
  }

  else
  {
    v10 = [v8 indexOfObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", a3)}];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 removeObjectAtIndex:v10];
      if (![v8 count])
      {
        [*(a1 + 360) removeObjectForKey:v7];
        v8 = 0;
      }
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 68290306;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v7;
    v18 = 2050;
    v19 = a3;
    v20 = 1026;
    v21 = a3;
    v22 = 1026;
    v23 = a4;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#identityValidation cache updated, Client:%{public, location:escape_only}@, upid:%{public}lld, pid:%{public}d, coming:%{public}hhd, AllowedUniquePids:%{public, location:escape_only}@}", &v12, 0x3Cu);
  }
}

void sub_100057914(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v8 isValidCKP])
  {
    if (a4)
    {
      v9 = a3 | 2;
    }

    else
    {
      v9 = a3;
    }

    v10 = [*(a1 + 136) intForKey:@"LocationIntelligenceCapabilities" atKeyPath:v8 defaultValue:0];
    if (v9 == v10)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v18 = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2114;
        v23 = v8;
        v12 = "{msg%{public}.0s:skip updating LocationIntelligenceCapabilities - expected and stored mask same, Client:%{public, location:escape_only}@}";
        v13 = v11;
LABEL_14:
        v15 = 28;
LABEL_21:
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, v12, &v18, v15);
      }
    }

    else
    {
      v16 = v10;
      [*(a1 + 136) removeValueForKey:@"LocationIntelligenceCapabilities" atKeyPath:v8];
      if (v9)
      {
        [*(a1 + 136) setInt:v9 forKey:@"LocationIntelligenceCapabilities" atKeyPath:v8];
      }

      [*(a1 + 136) persist];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v18 = 68289794;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2114;
        v23 = v8;
        v24 = 1026;
        v25 = v9;
        v26 = 1026;
        v27 = v16;
        v12 = "{msg%{public}.0s:updated LocationIntelligenceCapabilities, Client:%{public, location:escape_only}@, Expected:%{public}d, Stored:%{public}d}";
        v13 = v17;
        v15 = 40;
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v18 = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = a2;
      v12 = "{msg%{public}.0s:skip updating LocInt entitlement mask. Invalid CKP, Client:%{public, location:escape_only}@}";
      v13 = v14;
      goto LABEL_14;
    }
  }
}

void sub_100057BF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100057EF8(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_100057C64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100057C7C(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_100057CE8(a1 + 8, v3, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }
}

void sub_100057CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100057CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(dword_100000000, "CL: Incoming message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CLConnectionMessage::name(*a3);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v10 = *(a2 + 72);
    *buf = 68290050;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2082;
    v24 = v9;
    v25 = 2050;
    v26 = a2;
    v27 = 1026;
    v28 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Incoming message, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s, this:%{public}p, registrationReceived:%{public}hhd}", buf, 0x36u);
  }

  if ((*(a2 + 72) & 1) != 0 || *(a1 + 32) == 1)
  {
    v11 = sub_100058208(a2);
    v12 = *(a3 + 8);
    v14 = *a3;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_1000CF05C();
    }

    (*(*v13 + 48))(v13, v11, &v14);
    if (v15)
    {
      sub_100008080(v15);
    }
  }

  os_activity_scope_leave(&state);
}

void sub_100057EF8(uint64_t a1, uint64_t a2)
{
  v4 = qword_10265CA00;
  v5 = CLConnectionMessage::name(*a2);
  v6 = sub_100007070(v4, v5);
  v7 = v4[1];
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(*v4 + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_100019DF4(v4, i + 2, v5))
          {
            v19 = *(a2 + 8);
            v20 = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_1000581B4((i + 5), a1);
            if (v20)
            {
              sub_100008080(v20);
            }

            return;
          }
        }

        else
        {
          if (v10 > 1)
          {
            if (v14 >= *&v7)
            {
              v14 %= *&v7;
            }
          }

          else
          {
            v14 &= *&v7 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v15 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v15, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v16 = qword_1025D4798;
  v17 = os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    *buf = 68289538;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "activity";
    v29 = 2050;
    v30 = a1;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
  }

  v18 = *(a2 + 8);
  v21[0] = *a2;
  v21[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100B1B750(v17, v21);
  if (v18)
  {
    sub_100008080(v18);
  }

  os_activity_scope_leave(&state);
}

uint64_t sub_1000581B4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_100058208(uint64_t a1)
{
  *buf = &v4;
  v1 = sub_1000583C0((a1 + 288), &v4)[3];
  if (!v1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v2 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "22CLLocationSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating subscription due to demand, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_10005BC58();
  }

  if (!result)
  {
    sub_1019F0FC0();
  }

  return result;
}

void *sub_1000583C0(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v3)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!sub_10004FCC4(v12[2], *a2))
  {
    goto LABEL_20;
  }

  return v12;
}

void *sub_100058648(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10005871C(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  a3[2] = v8[2];
  a3[3] = v11;
  *a3 = v9;
  a3[1] = v10;
  v12 = v8[4];
  v13 = v8[5];
  v14 = v8[7];
  a3[6] = v8[6];
  a3[7] = v14;
  a3[4] = v12;
  a3[5] = v13;
  v15 = v8[8];
  v16 = v8[9];
  v17 = v8[11];
  a3[10] = v8[10];
  a3[11] = v17;
  a3[8] = v15;
  a3[9] = v16;
  return 1;
}

id sub_1000587A0(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018E4E90();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C81800 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E5084();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018E4E90();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C81800 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E5174();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1000589A4(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1005F796C(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1000587A0(a1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100058A40(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102463DA8;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_100058B24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_100058BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100058BE8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v15[0] = 0;
  v5 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessagePausesLocationUpdatesAutomaticallyKey"];
  if (v5 && (sub_100005EEC(v5, v15) & 1) != 0)
  {
    if (*(a1 + 184) != v15[0])
    {
      *(a1 + 184) = v15[0];
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v6 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 24);
        v8 = *(a1 + 184);
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v18 = 2114;
        v19 = v7;
        v20 = 1026;
        v21 = v8;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client is setting AutoPause, Client:%{public, location:escape_only}@, autopause:%{public}d}", buf, 0x22u);
      }

      sub_100049FD0(a1);
      sub_10000EC00(buf, "kCLConnectionMessageLocation");
      v9 = sub_10004B3BC(a1);
      v10 = v9;
      if (SBYTE3(v19) < 0)
      {
        operator delete(*buf);
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      else if (!v9)
      {
        goto LABEL_16;
      }

      v13 = *(a1 + 184);
      v12 = *(a1 + 188);
      if (v13 < 5)
      {
        if (v12 != 2 && (v13 != 2 || v12 != 3))
        {
          goto LABEL_26;
        }
      }

      else if (v12 == 1)
      {
        goto LABEL_26;
      }

      if (!sub_1000F3990(a1))
      {
LABEL_26:
        sub_10004D6B8(a1);
        goto LABEL_16;
      }

      sub_100111058(a1);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "kCLConnectionMessagePausesLocationUpdatesAutomaticallyKey";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B13430(buf);
      v15[1] = 136446210;
      v16 = "kCLConnectionMessagePausesLocationUpdatesAutomaticallyKey";
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLLocationSubscription::handleMessagePausesLocationUpdatesAutomatically(std::shared_ptr<CLConnectionMessage>)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

LABEL_16:
}

uint64_t sub_100058F3C(uint64_t a1)
{
  result = objc_opt_class();
  if (result)
  {
    result = objc_opt_class();
    if (result)
    {
      v4 = 0;
      v3 = [objc_msgSend(+[RBSProcessHandle handleForIdentifier:error:](RBSProcessHandle handleForIdentifier:+[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier error:{"identifierWithPid:", a1), &v4), "bundle"), "extensionPointIdentifier"}];
      return v3 && ([v3 isEqualToString:@"com.apple.widgetkit-extension"] & 1) != 0;
    }
  }

  return result;
}

void sub_100059094(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1000590C8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1000590E8(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019EECF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLDaemonClient::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019EED08();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonClient::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a2 == 5)
  {
    *(a4 + 371) = *a3;
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1000592B4(uint64_t a1, int a2, void *a3)
{
  result = sub_1000589A4(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

_BYTE *sub_1000593D8(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1000589A4(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_1003E3DEC(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

id sub_1000594D0(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1005F7BFC(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1005F7DD4(a1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005956C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_1000594D0(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10005964C(char *a1, void *a2, int *a3, uint64_t *a4)
{
  v30 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v29 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v28 = v20;
        v26 = *(v20 + 7);
        *&buf[0] = &v30;
        sub_1003E3DEC((v20 + 40), &v30)[5] = *a4;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100059304();
        }

        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v28 = a1 + 64;
        v22 = byte_1025D76C8;
        v27 = v14;
        *&buf[0] = &v27;
        *(sub_100024014((a1 + 56), &v27) + 80) = v22;
        v27 = *a3;
        *&buf[0] = &v27;
        v23 = sub_100024014((a1 + 56), &v27);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v27 = *a3;
        *&buf[0] = &v27;
        v25 = sub_100024014(v21, &v27);
        *&buf[0] = &v30;
        sub_1003E3DEC((v25 + 5), &v30)[5] = *a4;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        LODWORD(buf[0]) = *a3;
        sub_1003C9410((v29 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018E43B0();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v12;
    WORD6(buf[0]) = 1026;
    *(buf + 14) = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1018E4A60(a1, a2);
    return 0;
  }

  return result;
}

id sub_100059A1C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 136) dataForKey:@"ClientStorageToken" atKeyPath:a2 defaultValue:0];
  if (!v4)
  {
    v4 = [[NSMutableData alloc] initWithLength:32];
    if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, [v4 mutableBytes]))
    {
      sub_1019309F4();
    }

    [*(a1 + 136) setData:v4 forKey:@"ClientStorageToken" atKeyPath:a2];
  }

  return v4;
}

void sub_100059B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100059B78(uint64_t a1)
{
  sub_10001A3E8();
  if (sub_100008074())
  {
    sub_10001A3E8();
    v2 = sub_10001CF3C() ? *(a1 + 193) : *(a1 + 96) == 0;
    if (&_SBSCopyBundleInfoValueForKeyAndProcessID && (v2 & 1) != 0)
    {
      v3 = SBSCopyBundleInfoValueForKeyAndProcessID();
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        if (v5 == CFArrayGetTypeID())
        {
          v13.length = CFArrayGetCount(v4);
          v13.location = 0;
          if (CFArrayGetFirstIndexOfValue(v4, v13, @"location") != -1)
          {
            *(a1 + 204) = 1;
            if (qword_1025D4790 != -1)
            {
              sub_1019EEFF0();
            }

            v6 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
            {
              v7 = *(a1 + 48);
              v11 = 138412290;
              v12 = v7;
              _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "client '%@' supports background location", &v11, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019EF188();
            }
          }
        }

        CFRelease(v4);
      }

      else
      {
        if (qword_1025D4790 != -1)
        {
          sub_1019EEFF0();
        }

        v8 = (a1 + 272);
        v9 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
        {
          v10 = *v8;
          v11 = 67109120;
          LODWORD(v12) = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "PID %u either doesn't specify UIBackgroundModes, or SB timed out fetching them", &v11, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019EF27C(v8);
        }
      }
    }
  }
}

void sub_100059D84(uint64_t a1, void *a2, int a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    v7 = *(a1 + 136);
    if (a3)
    {
      [v7 setBool:1 forKey:@"BackgroundLocationCapability" atKeyPath:v6];
    }

    else
    {
      [v7 removeValueForKey:@"BackgroundLocationCapability" atKeyPath:v6];
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v6;
      v19 = 1026;
      v20 = a3;
      v9 = "{msg%{public}.0s:updated BackgroundLocationCapability, Client:%{public, location:escape_only}@, BackgroundLocationCapability:%{public}hhd}";
      v10 = v12;
      v11 = 34;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = a2;
      v9 = "{msg%{public}.0s:skip marking BackgroundLocationCapability. Client not found, Client:%{public, location:escape_only}@}";
      v10 = v8;
      v11 = 28;
LABEL_13:
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, v9, &v13, v11);
    }
  }
}

void sub_100059F44(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *buf = &v22;
  v4 = sub_10005A490(a1 + 41, &v22);
  v5 = v4[3];
  v6 = v4[4];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
    *a2 = 0;
    a2[1] = 0;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4790 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  *a2 = v7;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v7[248] & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      v9 = a1[6];
      *buf = 68289538;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2114;
      v27 = v9;
      v28 = 2082;
      v29 = ("29CLVisitMonitoringSubscription" & 0x7FFFFFFFFFFFFFFFLL);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid persistent subscription detected... getting a fresh one, ClientKeyPath:%{public, location:escape_only}@, subscription:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v10 = a2[1];
    if (v10)
    {
      sub_100008080(v10);
    }

LABEL_14:
    sub_10005A71C(a1[2], a1[6], a2);
    v11 = *a2;
    *(v11 + 144) = (*(*a1 + 80))(a1);
    v12 = *a2;
    p_info = (*(*a1 + 96))(a1);
    v14 = p_info;

    *(v12 + 152) = p_info;
    if (!*a2 || (*(*a2 + 248) & 1) == 0)
    {
      sub_1019EF370(a2);
      abort_report_np();
      while (1)
      {
        __break(1u);
LABEL_36:
        sub_1001456E8();
LABEL_26:
        v19 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (p_info[242] != -1)
          {
            sub_1001456E8();
          }
        }

        v20 = qword_1025D4798;
        if (os_signpost_enabled(qword_1025D4798))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (p_info[242] != -1)
          {
            sub_1001456E8();
          }
        }

        v21 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
      }
    }

    *buf = &v22;
    v15 = sub_10005A490(a1 + 41, &v22);
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = v15[4];
    v15[3] = v17;
    v15[4] = v16;
    if (v18)
    {
      sub_100008080(v18);
    }

    (*(**a2 + 16))(*a2, a1 + 1);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_10005A454(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_100008080(v4);
  }

  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10005A490(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v3)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!sub_10004FCC4(v12[2], *a2))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_10005A71C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1000184F4(a1, a2);
  v22 = v5;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    [v5 cppClientKey];
  }

  else
  {
    *buf = 0;
    *v24 = 0;
    *&v24[8] = 0;
  }

  v6 = sub_10005AD2C((a1 + 1000), buf);
  if ((v24[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = &v21;
  v7 = sub_10005AFCC(v6 + 5, &v21);
  v8 = v7[4];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0 || (v10 = v7[3]) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *v24 = 2082;
      *&v24[2] = "";
      *&v24[10] = 2082;
      *&v24[12] = "29CLVisitMonitoringSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      v25 = 2114;
      v26 = v22;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating persistent subscription due to demand, type:%{public, location:escape_only}s, clientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v20 = sub_100018FC8(a1, v22, &xmmword_101CE6CD8);
    if (v22)
    {
      [v22 cppClientKey];
    }

    else
    {
      v18 = 0uLL;
      v19 = 0;
    }

    sub_10006032C(__p);
    sub_1000603E0(buf, &v18, __p, v21);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    sub_10006033C();
  }

  if (!v11)
  {
    *a3 = 0;
    a3[1] = 0;
    if (qword_1025D47A0 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
      __break(1u);
LABEL_33:
      sub_10192D4D0();
    }
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v11;
  a3[1] = v9;
  sub_100008080(v9);
}

void sub_10005AC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100008080(v29);
  if (*(v28 + 8))
  {
    sub_100008080(*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

const void **sub_10005AD2C(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_10005AFB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100061108(va);
  _Unwind_Resume(a1);
}

void *sub_10005AFCC(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v3)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!sub_10004FCC4(v12[2], *a2))
  {
    goto LABEL_20;
  }

  return v12;
}

void *sub_10005B2F8(uint64_t a1)
{
  *buf = &v4;
  v1 = sub_1000583C0((a1 + 288), &v4)[3];
  if (!v1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v2 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "19CLFenceSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating subscription due to demand, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    operator new();
  }

  if (!result)
  {
    sub_1019EF648();
  }

  return result;
}

uint64_t sub_10005B4FC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v6 = off_1024575E0;
  v6[6] = 0;
  v6[7] = 0;
  *(a1 + 64) = +[CLFenceManagerAdapter isSupported];
  *(a1 + 65) = 0;
  sub_10004FD18(a1 + 72);
  sub_10000EC00(&__p, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
  if (*sub_10005B860(a1))
  {
    sub_10005CE00();
  }

  if (*(a1 + 64) == 1)
  {
    sub_10005BA08(a1);
    sub_10005CE00();
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10005B750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005DA4(v15 + 72);
  v18 = *(v15 + 56);
  *(v15 + 56) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *v16;
  *v16 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sub_100114E74(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B860(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    sub_10005CB3C();
  }

  return a1 + 48;
}

uint64_t sub_10005B924(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_1024D35F0;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

uint64_t sub_10005BA08(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    sub_10005CC2C();
  }

  return a1 + 56;
}

void sub_10005BACC(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 56);
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Background indicator enabled for %@ is now %d (was %d)", &v7, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B145B4(a1, a2);
  }

  if (*(a1 + 56) != a2)
  {
    *(a1 + 56) = a2;
    sub_10004D508(a1);
  }
}

uint64_t sub_10005BBE4(uint64_t a1, const char *a2, _DWORD *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1000052CC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void sub_10005BCD0(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_10005BD1C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, int a7)
{
  v10 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v10 = off_1024CAC08;
  *(v10 + 44) = a7;
  v11 = objc_alloc_init(CLLocationSubscriptionAdapter);
  *(a1 + 104) = 0;
  *(a1 + 48) = v11;
  *(a1 + 56) = 1;
  *(a1 + 58) = 0;
  *(a1 + 64) = 0xBFF0000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x7FF0000000000000;
  *(a1 + 88) = 0;
  *(a1 + 89) = a6;
  *(a1 + 90) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 193) = 1;
  *(a1 + 196) = -1;
  *(a1 + 208) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0xBFF0000000000000;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 248) = _Q1;
  *(a1 + 264) = 0xBFF0000000000000;
  *(a1 + 272) = 0xBFF0000000000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FF0000000000000;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 349) = 0;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 328) = 0;
  *(a1 + 360) = 1000;
  *(a1 + 364) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0xBFF0000000000000;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0xBFF0000000000000;
  *(a1 + 400) = _Q1;
  *(a1 + 416) = _Q1;
  *(a1 + 432) = 0;
  *(a1 + 500) = 0;
  *(a1 + 468) = 0u;
  *(a1 + 484) = 0u;
  *(a1 + 436) = 0u;
  *(a1 + 452) = 0u;
  *(a1 + 504) = 0xBFF0000000000000;
  *(a1 + 512) = 0;
  *(a1 + 520) = off_10245B020;
  operator new();
}

uint64_t sub_10005C54C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 bundleId] && !objc_msgSend(v3, "bundlePath"))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Error no bundle ID or bundle path found - enabling background indicator %{public}@", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DF68();
    }

    return 1;
  }

  if (![v3 isValidCKP])
  {
    return 1;
  }

  v4 = *(a1 + 136);

  return [v4 BOOLForKey:@"BackgroundIndicatorEnabled" atKeyPath:v3 defaultValue:1];
}

void sub_10005C6A4(uint64_t a1, char a2)
{
  *(a1 + 120) = a2;
  v3 = sub_100049A40(a1);
  if (v3)
  {
    v4 = *(a1 + 120);

    sub_10005BACC(v3, v4);
  }
}

uint64_t sub_10005C6F0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  *a1 = off_1024BE7F0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a2;
  *(a1 + 40) = 1;
  return a1;
}

void sub_10005C7B4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  sub_10005C8D4((a1 + 160), &v8);
  for (i = *(a1 + 216); i; i = *i)
  {
    v4 = v8;
    v5 = i[7];
    v6 = i[6];
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 16))(v4, &v6, i[5]);
    if (v7)
    {
      sub_100008080(v7);
    }
  }

  (*(*v8 + 24))(v8);
  sub_10005B258();
}

void sub_10005C8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10005C8D4(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_10005CBFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10005CCEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10005CD1C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_10247C8E8;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

uint64_t sub_10005CEF4(uint64_t a1, unsigned int a2, int *a3, uint64_t a4)
{
  v34 = sub_10005D6B8(a1, a2, a3, a4);
  if (v34)
  {
    v7 = *(a4 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a4 + 8);
    }

    if (v7)
    {
      v8 = *a3 == 2;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = *(a1 + 304);
      if (v10 != (a1 + 312))
      {
        v11 = Current;
        do
        {
          v12 = v10[20];
          while (v12 != (v10 + 19))
          {
            if (v12[9] + 20.0 >= v11)
            {
              v18 = *(v10 + 95);
              if (v18 >= 0)
              {
                v19 = *(v10 + 95);
              }

              else
              {
                v19 = v10[10];
              }

              v20 = *(a4 + 23);
              v21 = v20;
              if ((v20 & 0x80u) != 0)
              {
                v20 = *(a4 + 8);
              }

              if (v19 == v20 && (v18 >= 0 ? (v22 = v10 + 9) : (v22 = v10[9]), v21 >= 0 ? (v23 = a4) : (v23 = *a4), !memcmp(v22, v23, v19)))
              {
                if (qword_1025D4610 != -1)
                {
                  sub_101929410();
                }

                v24 = qword_1025D4618;
                if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
                {
                  sub_1004BFCA0((v10 + 4), buf);
                  v25 = buf;
                  if (v39 < 0)
                  {
                    v25 = *buf;
                  }

                  v26 = *(v12 + 4);
                  v27 = *(v12 + 20);
                  __p = 68289795;
                  *v45 = 2082;
                  *&v45[2] = "";
                  *&v45[10] = 2081;
                  *&v45[12] = v25;
                  *&v45[20] = 1025;
                  *&v45[22] = v26;
                  *&v45[26] = 1025;
                  *&v45[28] = v27;
                  _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:iB: Sending cached notification for fence, region:%{private, location:escape_only}s, state:%{private}d, type:%{private}d}", &__p, 0x28u);
                  if (v39 < 0)
                  {
                    operator delete(*buf);
                  }
                }

                memset(v45, 0, sizeof(v45));
                __p = off_1024576F0;
                memset(v46, 0, sizeof(v46));
                memset(&v47, 0, sizeof(v47));
                v49 = 0;
                v50 = off_102457740;
                v51 = 0u;
                v52 = 0u;
                v53 = 1;
                std::string::operator=(v45, (v10 + 5));
                *&v45[24] = v10[8];
                std::string::operator=(v46, v10 + 3);
                std::string::operator=(&v46[1], v10 + 4);
                std::string::operator=(&v47, v10 + 5);
                v48 = *(v10 + 36);
                v53 = *(v12 + 4);
                v54 = *(v12 + 8);
                if (*(v12 + 20))
                {
                  *buf = 3;
                }

                else
                {
                  std::string::operator=(&v51, (v12 + 4));
                  *(&v52 + 1) = v12[7];
                  *buf = 2;
                }

                (*(*a1 + 152))(a1, buf, &__p, 0, a2, 0);
                v12 = *(v12 + 1);
                v50 = off_102457740;
                if (SBYTE7(v52) < 0)
                {
                  operator delete(v51);
                }

                sub_10005DB2C(&__p);
              }

              else
              {
                v12 = *(v12 + 1);
              }
            }

            else
            {
              if (qword_1025D4610 != -1)
              {
                sub_101929410();
              }

              v13 = qword_1025D4618;
              if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
              {
                sub_1004BFCA0((v10 + 4), &__p);
                v14 = v45[15] >= 0 ? &__p : __p;
                v15 = *(v12 + 4);
                *buf = 136380931;
                *&buf[4] = v14;
                v37 = 1025;
                v38 = v15;
                _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "iB: Pending notification for fence,%{private}s, state,%{private}d, has expired", buf, 0x12u);
                if ((v45[15] & 0x80000000) != 0)
                {
                  operator delete(__p);
                }
              }

              if (sub_10000A100(121, 2))
              {
                bzero(&__p, 0x65CuLL);
                if (qword_1025D4610 != -1)
                {
                  sub_101929410();
                }

                sub_1004BFCA0((v10 + 4), buf);
                v28 = buf;
                if (v39 < 0)
                {
                  v28 = *buf;
                }

                v29 = *(v12 + 4);
                v40 = 136380931;
                v41 = v28;
                v42 = 1025;
                v43 = v29;
                v30 = _os_log_send_and_compose_impl();
                if (v39 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLBTLEFenceManagerConcrete::registerForNotification(int, const CLBTLEFenceManager_Type::Notification &, const std::string &)", "%s\n", v30);
                if (v30 != &__p)
                {
                  free(v30);
                }
              }

              v16 = *v12;
              v17 = *(v12 + 1);
              *(v16 + 8) = v17;
              *v17 = v16;
              --v10[21];
              sub_100754CCC((v12 + 2));
              operator delete(v12);
              v12 = v17;
            }
          }

          if (v10[21])
          {
            v31 = v10[1];
            if (v31)
            {
              do
              {
                v32 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = v10[2];
                v8 = *v32 == v10;
                v10 = v32;
              }

              while (!v8);
            }
          }

          else
          {
            v32 = sub_100756B20((a1 + 304), v10);
          }

          v10 = v32;
        }

        while (v32 != (a1 + 312));
      }
    }
  }

  return v34;
}

uint64_t sub_10005D51C(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v3;
  do
  {
    if (*(v4 + 32) >= v7)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v7));
  }

  while (v4);
  if (v8 == v3)
  {
    return 0;
  }

  if (v7 < *(v8 + 32))
  {
    return 0;
  }

  v9 = *(v8 + 64);
  if (!v9)
  {
    return 0;
  }

  std::string::operator=((a3 + 8), (v9 + 8));
  *(a3 + 32) = *(v9 + 32);
  std::string::operator=((a3 + 40), (v9 + 40));
  std::string::operator=((a3 + 64), (v9 + 64));
  std::string::operator=((a3 + 88), (v9 + 88));
  *(a3 + 112) = *(v9 + 112);
  *(a3 + 120) = *(v9 + 120);
  std::string::operator=((a3 + 136), (v9 + 136));
  *(a3 + 160) = *(v9 + 160);
  v10 = *(v9 + 168);
  *(a3 + 176) = *(v9 + 176);
  *(a3 + 168) = v10;
  return 1;
}

uint64_t sub_10005D604(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_10005DBC8(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10005D6B8(char *a1, int a2, int *a3, const std::string *a4)
{
  v31 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v30 = v10;
      v13 = *a3;
      v16 = *(v10 + 6);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 7) >= v13)
        {
          v17 = v14;
        }

        v14 = *&v14[8 * (*(v14 + 7) < v13)];
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 7))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 8);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 8) >= v13)
        {
          v19 = v18;
        }

        v18 = *&v18[8 * (*(v18 + 8) < v13)];
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 8))
      {
        v29 = v19;
        v26 = *(v19 + 7);
        *buf = &v31;
        v27 = sub_100036120((v19 + 40), &v31);
        std::string::operator=((v27 + 5), a4);
        v33 = 0u;
        *&buf[8] = 0u;
        *buf = off_1024576F0;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0;
        v39 = 0;
        v40 = off_102457740;
        v41 = 0u;
        v42 = 0u;
        v43 = 1;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100756954();
        }

        v40 = off_102457740;
        if (SBYTE7(v42) < 0)
        {
          operator delete(v41);
        }

        sub_10005DB2C(buf);
        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = (a1 + 56);
        v29 = a1 + 64;
        v21 = byte_1025D8300;
        v28 = v13;
        *buf = &v28;
        *(sub_1001830A0((a1 + 56), &v28) + 80) = v21;
        v28 = *a3;
        *buf = &v28;
        v22 = sub_1001830A0((a1 + 56), &v28);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v28 = *a3;
        *buf = &v28;
        v24 = sub_1001830A0(v20, &v28);
        *buf = &v31;
        v25 = sub_100036120((v24 + 5), &v31);
        std::string::operator=((v25 + 5), a4);
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410((v30 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10192947C();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1019296AC(a1);
    return 0;
  }

  return result;
}

void sub_10005DB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100754570(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005DB2C(uint64_t a1)
{
  *a1 = off_1024576F0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  *a1 = off_102457740;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

id sub_10005DBC8(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10005DC28(a1);
}

id sub_10005DC28(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101929F40();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101D05670 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101929F40();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101D05670 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

uint64_t sub_10005DDF0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10005DE54(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_10005DBC8(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10005DF08(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v8 = sub_10005DF90(a1, a2, a3, a4);
  if (v8)
  {
    v9 = *(a4 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a4 + 8);
    }

    if (v9)
    {
      v10 = *a3;
      if (v10 <= 1)
      {
        Current = CFAbsoluteTimeGetCurrent();
        sub_10005E674(a1, v10, a2, a4, Current);
      }
    }
  }

  return v8;
}

uint64_t sub_10005DF90(uint64_t a1, int a2, int *a3, const std::string *a4)
{
  v36 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v35 = v10;
      v13 = *a3;
      v16 = *(v10 + 48);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 28) >= v13)
        {
          v17 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v13));
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 28))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 64);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 32) >= v13)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v13));
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 32))
      {
        v34 = v19;
        v26 = *(v19 + 56);
        *buf = &v36;
        v27 = sub_100036120(v19 + 40, &v36);
        std::string::operator=((v27 + 5), a4);
        sub_10005FB68(buf);
        sub_10005FB68(v40);
        v41 = 0xFFFF;
        v42 = 0u;
        __asm { FMOV            V1.2D, #-1.0 }

        v43 = xmmword_101C75BF0;
        v44 = _Q1;
        v45 = _Q1;
        v46 = _Q1;
        v47 = 0;
        v48 = 0xBFF0000000000000;
        v49 = 0u;
        v50 = 0;
        v51 = 0xBFF0000000000000;
        v52 = 0x7FFFFFFF;
        v54 = 0u;
        v53 = 0;
        v55 = 0;
        v57 = 1;
        v56 = 0u;
        v58 = 0xBFF0000000000000;
        v59 = _Q1;
        v60 = _Q1;
        v61 = _Q1;
        v62 = _Q1;
        v63 = _Q1;
        v64 = _Q1;
        v65 = xmmword_101C75BF0;
        v66 = 0xFFFF;
        v67 = 0u;
        v68 = xmmword_101C75BF0;
        v69 = _Q1;
        v70 = _Q1;
        v71 = _Q1;
        v72 = 0;
        v73 = 0xBFF0000000000000;
        v75 = 0;
        v74 = 0u;
        v76 = 0xBFF0000000000000;
        v77 = 0x7FFFFFFF;
        v80 = 0;
        v78 = 0u;
        v79 = 0;
        v81 = 0xFFFF;
        v82 = 0u;
        v83 = xmmword_101C75BF0;
        v84 = _Q1;
        v85 = _Q1;
        v86 = _Q1;
        v87 = 0;
        v88 = 0xBFF0000000000000;
        v89 = 0u;
        v90 = 0;
        v91 = 0xBFF0000000000000;
        v92 = 0x7FFFFFFF;
        v94 = 0;
        v93 = 0u;
        v95 = 0;
        v96 = 0xFFFF;
        v97 = 0u;
        v98 = xmmword_101C75BF0;
        v99 = _Q1;
        v100 = _Q1;
        v101 = _Q1;
        v102 = 0;
        v103 = 0xBFF0000000000000;
        v104 = 0u;
        v105 = 0;
        v106 = 0xBFF0000000000000;
        v107 = 0x7FFFFFFF;
        v108 = 0u;
        v110 = 0;
        v109 = 0;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        v132 = 0;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1008CAFB0();
        }

        sub_10005E520(buf);
        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = a1 + 56;
        v34 = a1 + 64;
        v21 = byte_1025D9838;
        v33 = v13;
        *buf = &v33;
        *(sub_1001830A0(a1 + 56, &v33) + 80) = v21;
        v33 = *a3;
        *buf = &v33;
        v22 = sub_1001830A0(a1 + 56, &v33);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v33 = *a3;
        *buf = &v33;
        v24 = sub_1001830A0(v20, &v33);
        *buf = &v36;
        v25 = sub_100036120((v24 + 5), &v36);
        std::string::operator=((v25 + 5), a4);
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410(v35 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_101961988();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v38 = 1026;
    v39 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101962614();
    return 0;
  }

  return result;
}

void sub_10005E4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10005E520(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005E520(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    *(a1 + 480) = v2;
    operator delete(v2);
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v3 = *(a1 + 224);
  if (v3)
  {
    *(a1 + 232) = v3;
    operator delete(v3);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10005E5FC(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  sub_1008CB2B8(a3, v8);
  return 1;
}

void sub_10005E674(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = a4;
  v8 = a1;
  v153 = a2;
  v9 = *(a1 + 3912);
  v10 = (a1 + 3920);
  if (v9 != (a1 + 3920))
  {
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v12 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    do
    {
      if (*(v9 + 36) + 20.0 >= a5)
      {
        v33 = *(v9 + 55);
        if (v33 >= 0)
        {
          v34 = *(v9 + 55);
        }

        else
        {
          v34 = v9[5];
        }

        v35 = *(v5 + 23);
        v36 = v35;
        if ((v35 & 0x80u) != 0)
        {
          v35 = *(v5 + 8);
        }

        if (v34 == v35)
        {
          v37 = v33 >= 0 ? v9 + 4 : v9[4];
          v38 = v36 >= 0 ? v5 : *v5;
          if (!memcmp(v37, v38, v34) && *(v9 + 70) == v153)
          {
            if (p_info[200] != -1)
            {
              sub_1019611C8();
            }

            v39 = v12[201];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              if (*(v9 + 55) >= 0)
              {
                v40 = *(v9 + 55);
              }

              else
              {
                v40 = v9[5];
              }

              sub_100070148(v160, v40 + 1);
              v41 = v10;
              v42 = v8;
              v43 = a3;
              v44 = v12;
              v45 = p_info;
              if (v162[9] >= 0)
              {
                v46 = v160;
              }

              else
              {
                v46 = *v160;
              }

              if (v40)
              {
                if (*(v9 + 55) >= 0)
                {
                  v47 = v9 + 4;
                }

                else
                {
                  v47 = v9[4];
                }

                memmove(v46, v47, v40);
              }

              *&v46[v40] = 47;
              v48 = *(v9 + 79);
              if (v48 >= 0)
              {
                v49 = (v9 + 7);
              }

              else
              {
                v49 = v9[7];
              }

              if (v48 >= 0)
              {
                v50 = *(v9 + 79);
              }

              else
              {
                v50 = v9[8];
              }

              v51 = std::string::append(v160, v49, v50);
              v52 = *&v51->__r_.__value_.__l.__data_;
              *&__p[16] = *(&v51->__r_.__value_.__l + 2);
              *__p = v52;
              v51->__r_.__value_.__l.__size_ = 0;
              v51->__r_.__value_.__r.__words[2] = 0;
              v51->__r_.__value_.__r.__words[0] = 0;
              p_info = v45;
              if ((v162[9] & 0x80000000) != 0)
              {
                operator delete(*v160);
              }

              v53 = __p;
              if (__p[23] < 0)
              {
                v53 = *__p;
              }

              v54 = *(v9 + 70) + 1;
              v55 = "---";
              v12 = v44;
              if (v54 <= 4)
              {
                v55 = off_10247C928[v54];
              }

              v56 = "---";
              a3 = v43;
              if ((v153 + 1) <= 4)
              {
                v56 = off_10247C928[v153 + 1];
              }

              *v160 = 136381443;
              *&v160[4] = v53;
              v161 = 2081;
              *v162 = v55;
              *&v162[8] = 2081;
              *&v162[10] = v56;
              v163 = 1026;
              v164 = v43;
              _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "notifyFenceEntryExitForAuthorizedFence,fence,%{private}s,fenceStatus,%{private}s,searchStatus %{private}s,client,%{public}d", v160, 0x26u);
              v8 = v42;
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              v10 = v41;
              v5 = a4;
            }

            if (sub_10000A100(121, 2))
            {
              bzero(v160, 0x65CuLL);
              if (p_info[200] != -1)
              {
                sub_1019611C8();
              }

              sub_1008C3CF8(v9 + 4, &v154);
              v65 = &v154;
              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v65 = v154.__r_.__value_.__r.__words[0];
              }

              v66 = *(v9 + 70) + 1;
              v67 = "---";
              if (v66 <= 4)
              {
                v67 = off_10247C928[v66];
              }

              v68 = "---";
              if ((v153 + 1) <= 4)
              {
                v68 = off_10247C928[v153 + 1];
              }

              *__p = 136381443;
              *&__p[4] = v65;
              *&__p[12] = 2081;
              *&__p[14] = v67;
              *&__p[22] = 2081;
              *&__p[24] = v68;
              v156 = 1026;
              v157 = a3;
              v69 = _os_log_send_and_compose_impl();
              if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v154.__r_.__value_.__l.__data_);
              }

              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceManager::pendingFenceMaintenanceOnClientRegistration(CFAbsoluteTime, CLFenceManager_Type::FenceStatus, int, const std::string &)", "%s\n", v69);
              if (v69 != v160)
              {
                free(v69);
              }
            }

            sub_1008C61E0(v8, (v9 + 4), &v153, (v9 + 39), a3);
          }
        }

        v57 = v9[1];
        if (v57)
        {
          do
          {
            v32 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v32 = v9[2];
            v58 = *v32 == v9;
            v9 = v32;
          }

          while (!v58);
        }
      }

      else
      {
        if (p_info[200] != -1)
        {
          sub_1019611C8();
        }

        v13 = v12[201];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          if (*(v9 + 55) >= 0)
          {
            v14 = *(v9 + 55);
          }

          else
          {
            v14 = v9[5];
          }

          sub_100070148(v160, v14 + 1);
          v15 = v10;
          v16 = v8;
          v17 = a3;
          v18 = v12;
          v19 = p_info;
          if (v162[9] >= 0)
          {
            v20 = v160;
          }

          else
          {
            v20 = *v160;
          }

          if (v14)
          {
            if (*(v9 + 55) >= 0)
            {
              v21 = v9 + 4;
            }

            else
            {
              v21 = v9[4];
            }

            memmove(v20, v21, v14);
          }

          *&v20[v14] = 47;
          v22 = *(v9 + 79);
          if (v22 >= 0)
          {
            v23 = (v9 + 7);
          }

          else
          {
            v23 = v9[7];
          }

          if (v22 >= 0)
          {
            v24 = *(v9 + 79);
          }

          else
          {
            v24 = v9[8];
          }

          v25 = std::string::append(v160, v23, v24);
          v26 = *&v25->__r_.__value_.__l.__data_;
          *&__p[16] = *(&v25->__r_.__value_.__l + 2);
          *__p = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          p_info = v19;
          if ((v162[9] & 0x80000000) != 0)
          {
            operator delete(*v160);
          }

          v27 = __p;
          if (__p[23] < 0)
          {
            v27 = *__p;
          }

          v28 = *(v9 + 70) + 1;
          v29 = "---";
          v12 = v18;
          if (v28 <= 4)
          {
            v29 = off_10247C928[v28];
          }

          v30 = "---";
          a3 = v17;
          if ((v153 + 1) <= 4)
          {
            v30 = off_10247C928[v153 + 1];
          }

          v31 = v9[36];
          *v160 = 136316162;
          *&v160[4] = v27;
          v161 = 2080;
          *v162 = v29;
          *&v162[8] = 2080;
          *&v162[10] = v30;
          v163 = 1024;
          v164 = v17;
          v165 = 2048;
          v166 = v31;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#Warning Fence: avoid notifyFenceEntryExitForAuthorizedFence, fence, %s, status, %s, searchStatus, %s, client, %d, timestamp,%.1lf", v160, 0x30u);
          v8 = v16;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v10 = v15;
          v5 = a4;
        }

        if (sub_10000A100(121, 2))
        {
          bzero(v160, 0x65CuLL);
          if (p_info[200] != -1)
          {
            sub_1019611C8();
          }

          sub_1008C3CF8(v9 + 4, &v154);
          v59 = &v154;
          if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v154.__r_.__value_.__r.__words[0];
          }

          v60 = *(v9 + 70) + 1;
          v61 = "---";
          if (v60 <= 4)
          {
            v61 = off_10247C928[v60];
          }

          v62 = "---";
          if ((v153 + 1) <= 4)
          {
            v62 = off_10247C928[v153 + 1];
          }

          v63 = v9[36];
          *__p = 136316162;
          *&__p[4] = v59;
          *&__p[12] = 2080;
          *&__p[14] = v61;
          *&__p[22] = 2080;
          *&__p[24] = v62;
          v156 = 1024;
          v157 = a3;
          v158 = 2048;
          v159 = v63;
          v64 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v154.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceManager::pendingFenceMaintenanceOnClientRegistration(CFAbsoluteTime, CLFenceManager_Type::FenceStatus, int, const std::string &)", "%s\n", v64);
          if (v64 != v160)
          {
            free(v64);
          }
        }

        v32 = sub_10045E8A0(v8 + 489, v9);
        sub_1008C9D48((v9 + 4));
        operator delete(v9);
      }

      v9 = v32;
    }

    while (v32 != v10);
  }

  v70 = v8[492];
  if (v70 != (v8 + 493))
  {
    do
    {
      if (*(v70 + 36) + 20.0 >= a5)
      {
        v86 = *(v70 + 55);
        if (v86 >= 0)
        {
          v87 = *(v70 + 55);
        }

        else
        {
          v87 = v70[5];
        }

        v88 = *(v5 + 23);
        v89 = v88;
        if ((v88 & 0x80u) != 0)
        {
          v88 = *(v5 + 8);
        }

        if (v87 == v88)
        {
          v90 = v86 >= 0 ? v70 + 4 : v70[4];
          v91 = v89 >= 0 ? v5 : *v5;
          if (!memcmp(v90, v91, v87))
          {
            if (qword_1025D4640 != -1)
            {
              sub_1019611C8();
            }

            v92 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              if (*(v70 + 55) >= 0)
              {
                v93 = *(v70 + 55);
              }

              else
              {
                v93 = v70[5];
              }

              sub_100070148(v160, v93 + 1);
              if (v162[9] >= 0)
              {
                v94 = v160;
              }

              else
              {
                v94 = *v160;
              }

              if (v93)
              {
                if (*(v70 + 55) >= 0)
                {
                  v95 = v70 + 4;
                }

                else
                {
                  v95 = v70[4];
                }

                memmove(v94, v95, v93);
              }

              *&v94[v93] = 47;
              v96 = *(v70 + 79);
              if (v96 >= 0)
              {
                v97 = (v70 + 7);
              }

              else
              {
                v97 = v70[7];
              }

              if (v96 >= 0)
              {
                v98 = *(v70 + 79);
              }

              else
              {
                v98 = v70[8];
              }

              v99 = std::string::append(v160, v97, v98);
              v100 = *&v99->__r_.__value_.__l.__data_;
              *&__p[16] = *(&v99->__r_.__value_.__l + 2);
              *__p = v100;
              v99->__r_.__value_.__l.__size_ = 0;
              v99->__r_.__value_.__r.__words[2] = 0;
              v99->__r_.__value_.__r.__words[0] = 0;
              if ((v162[9] & 0x80000000) != 0)
              {
                operator delete(*v160);
              }

              v101 = __p;
              if (__p[23] < 0)
              {
                v101 = *__p;
              }

              v102 = *(v70 + 70) + 1;
              v103 = "---";
              if (v102 <= 4)
              {
                v103 = off_10247C928[v102];
              }

              v104 = "---";
              if ((v153 + 1) <= 4)
              {
                v104 = off_10247C928[v153 + 1];
              }

              *v160 = 136381443;
              *&v160[4] = v101;
              v161 = 2081;
              *v162 = v103;
              *&v162[8] = 2081;
              *&v162[10] = v104;
              v163 = 1026;
              v164 = a3;
              _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_DEBUG, "sendFenceStatusNotification,fence,%{private}s,fenceStatus,%{private}s,searchStatus %{private}s,client,%{public}d", v160, 0x26u);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(v160, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_1019611C8();
              }

              sub_1008C3CF8(v70 + 4, &v154);
              v112 = &v154;
              if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v112 = v154.__r_.__value_.__r.__words[0];
              }

              v113 = *(v70 + 70) + 1;
              v114 = "---";
              if (v113 <= 4)
              {
                v114 = off_10247C928[v113];
              }

              v115 = "---";
              if ((v153 + 1) <= 4)
              {
                v115 = off_10247C928[v153 + 1];
              }

              *__p = 136381443;
              *&__p[4] = v112;
              *&__p[12] = 2081;
              *&__p[14] = v114;
              *&__p[22] = 2081;
              *&__p[24] = v115;
              v156 = 1026;
              v157 = a3;
              v116 = _os_log_send_and_compose_impl();
              if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v154.__r_.__value_.__l.__data_);
              }

              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceManager::pendingFenceMaintenanceOnClientRegistration(CFAbsoluteTime, CLFenceManager_Type::FenceStatus, int, const std::string &)", "%s\n", v116);
              if (v116 != v160)
              {
                free(v116);
              }
            }

            sub_1008C3904(v8, (v70 + 4), v70 + 70, v70 + 74, a3);
          }
        }

        v105 = v70[1];
        if (v105)
        {
          do
          {
            v85 = v105;
            v105 = *v105;
          }

          while (v105);
        }

        else
        {
          do
          {
            v85 = v70[2];
            v58 = *v85 == v70;
            v70 = v85;
          }

          while (!v58);
        }
      }

      else
      {
        if (qword_1025D4640 != -1)
        {
          sub_1019611C8();
        }

        v71 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          if (*(v70 + 55) >= 0)
          {
            v72 = *(v70 + 55);
          }

          else
          {
            v72 = v70[5];
          }

          sub_100070148(v160, v72 + 1);
          if (v162[9] >= 0)
          {
            v73 = v160;
          }

          else
          {
            v73 = *v160;
          }

          if (v72)
          {
            if (*(v70 + 55) >= 0)
            {
              v74 = v70 + 4;
            }

            else
            {
              v74 = v70[4];
            }

            memmove(v73, v74, v72);
          }

          *&v73[v72] = 47;
          v75 = *(v70 + 79);
          if (v75 >= 0)
          {
            v76 = (v70 + 7);
          }

          else
          {
            v76 = v70[7];
          }

          if (v75 >= 0)
          {
            v77 = *(v70 + 79);
          }

          else
          {
            v77 = v70[8];
          }

          v78 = std::string::append(v160, v76, v77);
          v79 = *&v78->__r_.__value_.__l.__data_;
          *&__p[16] = *(&v78->__r_.__value_.__l + 2);
          *__p = v79;
          v78->__r_.__value_.__l.__size_ = 0;
          v78->__r_.__value_.__r.__words[2] = 0;
          v78->__r_.__value_.__r.__words[0] = 0;
          if ((v162[9] & 0x80000000) != 0)
          {
            operator delete(*v160);
          }

          v80 = __p;
          if (__p[23] < 0)
          {
            v80 = *__p;
          }

          v81 = *(v70 + 70) + 1;
          v82 = "---";
          if (v81 <= 4)
          {
            v82 = off_10247C928[v81];
          }

          v83 = "---";
          if ((v153 + 1) <= 4)
          {
            v83 = off_10247C928[v153 + 1];
          }

          v84 = v70[36];
          *v160 = 136381699;
          *&v160[4] = v80;
          v161 = 2081;
          *v162 = v82;
          *&v162[8] = 2081;
          *&v162[10] = v83;
          v163 = 1026;
          v164 = a3;
          v165 = 2050;
          v166 = v84;
          _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "#Warning Fence: avoid sendFenceStatusNotification, fence, %{private}s, status, %{private}s, searchStatus, %{private}s, client, %{public}d, timestamp,%{public}.1lf", v160, 0x30u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(v160, 0x65CuLL);
          if (qword_1025D4640 != -1)
          {
            sub_1019611C8();
          }

          sub_1008C3CF8(v70 + 4, &v154);
          v106 = &v154;
          if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v106 = v154.__r_.__value_.__r.__words[0];
          }

          v107 = *(v70 + 70) + 1;
          v108 = "---";
          if (v107 <= 4)
          {
            v108 = off_10247C928[v107];
          }

          v109 = "---";
          if ((v153 + 1) <= 4)
          {
            v109 = off_10247C928[v153 + 1];
          }

          v110 = v70[36];
          *__p = 136381699;
          *&__p[4] = v106;
          *&__p[12] = 2081;
          *&__p[14] = v108;
          *&__p[22] = 2081;
          *&__p[24] = v109;
          v156 = 1026;
          v157 = a3;
          v158 = 2050;
          v159 = v110;
          v111 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v154.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceManager::pendingFenceMaintenanceOnClientRegistration(CFAbsoluteTime, CLFenceManager_Type::FenceStatus, int, const std::string &)", "%s\n", v111);
          if (v111 != v160)
          {
            free(v111);
          }
        }

        v85 = sub_10045E8A0(v8 + 492, v70);
        sub_1008C9D48((v70 + 4));
        operator delete(v70);
      }

      v70 = v85;
    }

    while (v85 != (v8 + 493));
  }

  v117 = v8[495];
  if (v117 != (v8 + 496))
  {
    do
    {
      if (*(v117 + 35) + 20.0 >= a5)
      {
        v130 = *(v117 + 55);
        if (v130 >= 0)
        {
          v131 = *(v117 + 55);
        }

        else
        {
          v131 = v117[5];
        }

        v132 = *(v5 + 23);
        v133 = v132;
        if ((v132 & 0x80u) != 0)
        {
          v132 = *(v5 + 8);
        }

        if (v131 == v132)
        {
          v134 = v130 >= 0 ? v117 + 4 : v117[4];
          v135 = v133 >= 0 ? v5 : *v5;
          if (!memcmp(v134, v135, v131))
          {
            if (qword_1025D4640 != -1)
            {
              sub_1019611C8();
            }

            v136 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              if (*(v117 + 55) >= 0)
              {
                v137 = *(v117 + 55);
              }

              else
              {
                v137 = v117[5];
              }

              sub_100070148(v160, v137 + 1);
              if (v162[9] >= 0)
              {
                v138 = v160;
              }

              else
              {
                v138 = *v160;
              }

              if (v137)
              {
                if (*(v117 + 55) >= 0)
                {
                  v139 = v117 + 4;
                }

                else
                {
                  v139 = v117[4];
                }

                memmove(v138, v139, v137);
              }

              *&v138[v137] = 47;
              v140 = *(v117 + 79);
              if (v140 >= 0)
              {
                v141 = (v117 + 7);
              }

              else
              {
                v141 = v117[7];
              }

              if (v140 >= 0)
              {
                v142 = *(v117 + 79);
              }

              else
              {
                v142 = v117[8];
              }

              v143 = std::string::append(v160, v141, v142);
              v144 = *&v143->__r_.__value_.__l.__data_;
              *&__p[16] = *(&v143->__r_.__value_.__l + 2);
              *__p = v144;
              v143->__r_.__value_.__l.__size_ = 0;
              v143->__r_.__value_.__r.__words[2] = 0;
              v143->__r_.__value_.__r.__words[0] = 0;
              if ((v162[9] & 0x80000000) != 0)
              {
                operator delete(*v160);
              }

              v145 = __p;
              if (__p[23] < 0)
              {
                v145 = *__p;
              }

              *v160 = 136380931;
              *&v160[4] = v145;
              v161 = 1026;
              *v162 = a3;
              _os_log_impl(dword_100000000, v136, OS_LOG_TYPE_DEBUG, "sendFenceFailureNotification,fence,%{private}s,client,%{public}d", v160, 0x12u);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(v160, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_1019611C8();
              }

              sub_1008C3CF8(v117 + 4, __p);
              v150 = __p;
              if (__p[23] < 0)
              {
                v150 = *__p;
              }

              LODWORD(v154.__r_.__value_.__l.__data_) = 136380931;
              *(v154.__r_.__value_.__r.__words + 4) = v150;
              WORD2(v154.__r_.__value_.__r.__words[1]) = 1026;
              *(&v154.__r_.__value_.__r.__words[1] + 6) = a3;
              v151 = _os_log_send_and_compose_impl();
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceManager::pendingFenceMaintenanceOnClientRegistration(CFAbsoluteTime, CLFenceManager_Type::FenceStatus, int, const std::string &)", "%s\n", v151);
              if (v151 != v160)
              {
                free(v151);
              }
            }

            sub_1008C37B4(v8, (v117 + 4));
          }
        }

        v146 = v117[1];
        if (v146)
        {
          do
          {
            v129 = v146;
            v146 = *v146;
          }

          while (v146);
        }

        else
        {
          do
          {
            v129 = v117[2];
            v58 = *v129 == v117;
            v117 = v129;
          }

          while (!v58);
        }
      }

      else
      {
        if (qword_1025D4640 != -1)
        {
          sub_1019611C8();
        }

        v118 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          if (*(v117 + 55) >= 0)
          {
            v119 = *(v117 + 55);
          }

          else
          {
            v119 = v117[5];
          }

          sub_100070148(v160, v119 + 1);
          if (v162[9] >= 0)
          {
            v120 = v160;
          }

          else
          {
            v120 = *v160;
          }

          if (v119)
          {
            if (*(v117 + 55) >= 0)
            {
              v121 = v117 + 4;
            }

            else
            {
              v121 = v117[4];
            }

            memmove(v120, v121, v119);
          }

          *&v120[v119] = 47;
          v122 = *(v117 + 79);
          if (v122 >= 0)
          {
            v123 = (v117 + 7);
          }

          else
          {
            v123 = v117[7];
          }

          if (v122 >= 0)
          {
            v124 = *(v117 + 79);
          }

          else
          {
            v124 = v117[8];
          }

          v125 = std::string::append(v160, v123, v124);
          v126 = *&v125->__r_.__value_.__l.__data_;
          *&__p[16] = *(&v125->__r_.__value_.__l + 2);
          *__p = v126;
          v125->__r_.__value_.__l.__size_ = 0;
          v125->__r_.__value_.__r.__words[2] = 0;
          v125->__r_.__value_.__r.__words[0] = 0;
          if ((v162[9] & 0x80000000) != 0)
          {
            operator delete(*v160);
          }

          v127 = __p;
          if (__p[23] < 0)
          {
            v127 = *__p;
          }

          v128 = v117[35];
          *v160 = 136381187;
          *&v160[4] = v127;
          v161 = 1026;
          *v162 = a3;
          *&v162[4] = 2050;
          *&v162[6] = v128;
          _os_log_impl(dword_100000000, v118, OS_LOG_TYPE_DEBUG, "#Warning Fence: avoid sendFenceFailureNotification, fence, %{private}s, client, %{public}d, timestamp,%{public}.1lf", v160, 0x1Cu);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(v160, 0x65CuLL);
          if (qword_1025D4640 != -1)
          {
            sub_1019611C8();
          }

          sub_1008C3CF8(v117 + 4, &v154);
          v147 = &v154;
          if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v147 = v154.__r_.__value_.__r.__words[0];
          }

          v148 = v117[35];
          *__p = 136381187;
          *&__p[4] = v147;
          *&__p[12] = 1026;
          *&__p[14] = a3;
          *&__p[18] = 2050;
          *&__p[20] = v148;
          v149 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v154.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceManager::pendingFenceMaintenanceOnClientRegistration(CFAbsoluteTime, CLFenceManager_Type::FenceStatus, int, const std::string &)", "%s\n", v149);
          if (v149 != v160)
          {
            free(v149);
          }
        }

        v129 = sub_10045E8A0(v8 + 495, v117);
        sub_1008C9E2C((v117 + 4));
        operator delete(v117);
      }

      v117 = v129;
    }

    while (v129 != (v8 + 496));
  }
}

void sub_10005FB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10005FB68(char *a1)
{
  sub_10000EC00(v7, "");
  sub_10000EC00(v5, "");
  sub_10000EC00(__p, "");
  sub_10005FC54(a1, v7, v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return a1;
}

void sub_10005FC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

char *sub_10005FC54(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v15 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244(v12, *a3, *(a3 + 8));
  }

  else
  {
    *v12 = *a3;
    v13 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100007244(v10, *a4, *(a4 + 8));
  }

  else
  {
    *v10 = *a4;
    v11 = *(a4 + 16);
  }

  sub_10000EC00(__p, "");
  sub_10005FDF8(a1, &__dst, v12, v10, -1, __p, 0, 0, 1.79769313e308, 1.79769313e308, -1.0, -1.0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_10005FD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

char *sub_10005FDF8(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4, int a5, __int128 *a6, void *a7, char a8, double a9, double a10, double a11, double a12)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v23 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v23;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v24 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v24;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100007244(__dst + 48, *a4, *(a4 + 1));
  }

  else
  {
    v25 = *a4;
    *(__dst + 8) = *(a4 + 2);
    *(__dst + 3) = v25;
  }

  *(__dst + 9) = a9;
  *(__dst + 10) = a10;
  *(__dst + 11) = a11;
  *(__dst + 12) = a11;
  *(__dst + 13) = a12;
  *(__dst + 14) = 0xBFF0000000000000;
  *(__dst + 15) = CFAbsoluteTimeGetCurrent();
  *(__dst + 16) = 0xBFF0000000000000;
  *(__dst + 17) = 0;
  *(__dst + 36) = 0;
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  *(__dst + 19) = 0xBFF0000000000000;
  __dst[176] = a8;
  *(__dst + 45) = 0;
  *(__dst + 46) = a5;
  __dst[188] = 0;
  if (*(a6 + 23) < 0)
  {
    sub_100007244(__dst + 192, *a6, *(a6 + 1));
  }

  else
  {
    v26 = *a6;
    *(__dst + 26) = *(a6 + 2);
    *(__dst + 12) = v26;
  }

  *(__dst + 27) = 0;
  v27 = a7;
  *(__dst + 28) = 0;
  *(__dst + 27) = v27;
  *(__dst + 29) = 0;
  *(__dst + 30) = 0;
  v28 = *(__dst + 12);
  if (v28 >= 0.0 && v28 < sub_1002298D0(__dst))
  {
    v29 = __dst[23];
    if (v29 < 0)
    {
      if (*(__dst + 1) != 21)
      {
LABEL_27:
        *(__dst + 12) = sub_1002298D0(__dst);
        goto LABEL_28;
      }

      v30 = *__dst;
    }

    else
    {
      v30 = __dst;
      if (v29 != 21)
      {
        goto LABEL_27;
      }
    }

    v31 = *v30;
    v32 = v30[1];
    v33 = *(v30 + 13);
    if (v31 != 0x6C7070612E6D6F63 || v32 != 0x2E65726F74732E65 || v33 != 0x796C6C6F4A2E6572)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  *(__dst + 46) = sub_10006008C(__dst);
  return __dst;
}

void sub_100060008(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006008C(uint64_t a1)
{
  sub_10006023C((a1 + 48), 47, &v17);
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = std::string::append(&v17, v3, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v18, 47);
  v19 = v18;
  memset(&v18, 0, sizeof(v18));
  v9 = *(a1 + 24);
  v8 = a1 + 24;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::string::append(&v19, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21 = v13->__r_.__value_.__r.__words[2];
  v20 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v15 = sub_1000602D0(&v19, &v20);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  return 678072505 * ((((0xC6A4A7935BD1E995 * v15) >> 32) >> 15) ^ (1540483477 * v15)) - 430675100;
}

void sub_1000601DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006023C@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_100070148(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

unint64_t sub_1000602D0(uint64_t a1, char *a2)
{
  v2 = a2[23];
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  result = 0;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  for (; v2; --v2)
  {
    v5 = *v3++;
    result = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ result);
  }

  return result;
}

char *sub_1000603E0(char *__dst, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  *(__dst + 6) = a4;
  return __dst;
}

void sub_10006046C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100060488(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    sub_100007244(v14, *a5, *(a5 + 8));
  }

  else
  {
    *v14 = *a5;
    v15 = *(a5 + 16);
  }

  if (*(a5 + 47) < 0)
  {
    sub_100007244(__p, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    *__p = *(a5 + 24);
    v17 = *(a5 + 40);
  }

  v18 = *(a5 + 48);
  sub_1000606B4(a1, a2, a3, a4, v14);
  *a1 = off_1024DF640;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  *a1 = off_1024DF520;
  *(a1 + 256) = [[CLVisitMonitoringSubscriptionAdapter alloc] initWithSubscription:a1];
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v10 = [objc_msgSend(*(a1 + 128) "vendor")];
  *(a1 + 264) = v10;
  [v10 registerDelegate:*(a1 + 256) inSilo:{objc_msgSend(*(a1 + 128), "silo")}];
  v11 = [objc_msgSend(*(a1 + 128) "vendor")];
  *(a1 + 280) = v11;
  [v11 registerDelegate:*(a1 + 256) inSilo:{objc_msgSend(*(a1 + 128), "silo")}];
  v12 = [objc_msgSend(*(a1 + 128) "vendor")];
  *(a1 + 288) = v12;
  [v12 registerDelegate:*(a1 + 256) inSilo:{objc_msgSend(*(a1 + 128), "silo")}];
  return a1;
}

void sub_100060678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000606B4(uint64_t a1, void *a2, void *a3, void *a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10246B9C8;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = a4;
  v9 = *a5;
  *(a1 + 88) = *(a5 + 2);
  *(a1 + 72) = v9;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  v10 = *(a5 + 24);
  *(a1 + 112) = *(a5 + 5);
  *(a1 + 96) = v10;
  *(a5 + 4) = 0;
  *(a5 + 5) = 0;
  *(a5 + 3) = 0;
  *(a1 + 120) = *(a5 + 6);
  *(a1 + 128) = a2;
  v11 = a3;
  *(a1 + 200) = 0u;
  *(a1 + 136) = v11;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1065353216;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 240) = objc_alloc_init(NSMutableDictionary);
  *(a1 + 248) = 257;
  return a1;
}

void sub_1000607BC(_Unwind_Exception *a1)
{
  sub_1006E6A20(v3);
  sub_1004906DC(v1 + 160);
  sub_1006E69AC(v1 + 72);
  v5 = *(v1 + 56);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_1003C93BC(v2, *(v1 + 32));
  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100060814(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244(v11, *a5, *(a5 + 8));
  }

  else
  {
    *v11 = *a5;
    v12 = *(a5 + 16);
  }

  if (*(a5 + 47) < 0)
  {
    sub_100007244(__p, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    *__p = *(a5 + 24);
    v14 = *(a5 + 40);
  }

  v15 = *(a5 + 48);
  sub_10006097C(a1, v7, v8, v9, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return a1;
}

void sub_1000608F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100060920(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024707E8;
  sub_100060814((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_100060980(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_100008080(v5);
      }
    }
  }
}

uint64_t sub_100060A08(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a2 || a1[6])
  {
    if (qword_1025D4790 != -1)
    {
      sub_101911A20();
    }

    v9 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v10 = a1[6] != 0;
      v11 = *a2 != 0;
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v10;
      v24 = 1026;
      v25 = v11;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "persistence && !fPersistence";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Persistent subscription persistence must be set exactly once and set to a non-null value, fPersistence:%{public}hhd, persistence:%{public}hhd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1025D4790 != -1)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v12 = qword_1025D4798;
      if (os_signpost_enabled(qword_1025D4798))
      {
        v13 = a1[6] != 0;
        v14 = *a2 != 0;
        *buf = 68290051;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 1026;
        v23 = v13;
        v24 = 1026;
        v25 = v14;
        v26 = 2082;
        v27 = "assert";
        v28 = 2081;
        v29 = "persistence && !fPersistence";
        _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Persistent subscription persistence must be set exactly once and set to a non-null value", "{msg%{public}.0s:Persistent subscription persistence must be set exactly once and set to a non-null value, fPersistence:%{public}hhd, persistence:%{public}hhd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
        if (qword_1025D4790 != -1)
        {
          sub_101911A34();
        }
      }

      v15 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        v16 = a1[6] != 0;
        v17 = *a2 != 0;
        *buf = 68290051;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 1026;
        v23 = v16;
        v24 = 1026;
        v25 = v17;
        v26 = 2082;
        v27 = "assert";
        v28 = 2081;
        v29 = "persistence && !fPersistence";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Persistent subscription persistence must be set exactly once and set to a non-null value, fPersistence:%{public}hhd, persistence:%{public}hhd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      }

      abort_report_np();
LABEL_20:
      sub_101911A34();
    }
  }

  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[7];
  a1[6] = v4;
  a1[7] = v5;
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(*a1 + 64);

  return v7(a1);
}

uint64_t sub_100060D30(void *a1)
{
  if (!sub_10003381C(a1, @"activeType"))
  {
    sub_100060D7C(a1);
  }

  return sub_1000308B0(a1);
}

void sub_100060D7C(uint64_t a1)
{
  sub_100033A68(a1);
  v2 = *(a1 + 48);
  sub_10000E198(&v3, (a1 + 8));
  (*(*v2 + 16))(v2, &v3);
  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_100060DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100060E08(uint64_t a1, void *a2)
{
  v4 = *a2;
  if (*(*a2 + 95) < 0)
  {
    sub_100007244(__dst, *(v4 + 72), *(v4 + 80));
  }

  else
  {
    *__dst = *(v4 + 72);
    v14 = *(v4 + 88);
  }

  if (*(v4 + 119) < 0)
  {
    sub_100007244(&__p, *(v4 + 96), *(v4 + 104));
  }

  else
  {
    __p = *(v4 + 96);
    v16 = *(v4 + 112);
  }

  v17 = *(v4 + 120);
  if (v14 >= 0)
  {
    v5 = __dst;
  }

  else
  {
    v5 = __dst[0];
  }

  v6 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientKey:](CLClientKeyPath, "clientKeyPathWithClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v5))}];
  if (v16 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v8 = [NSString stringWithUTF8String:p_p];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#PersistentSubscription PersistenceBackend removeAllPersistedDataForSubscription, client:%{public, location:escape_only}@, storageName:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v10 = a2[1];
  v11 = *a2;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100061098((a1 + 16), &v11);
  if (v12)
  {
    sub_100008080(v12);
  }

  if ([v6 isValidCKP])
  {
    [*(*(a1 + 8) + 136) removeValueForKey:v8 atKeyPath:v6];
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_100061034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100061098(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1007ABE60(a1, v4);
  return 1;
}

uint64_t sub_100061108(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007ABF6C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *sub_100061154(std::string *result, const std::string *a2)
{
  if (result[4].__r_.__value_.__s.__data_[1] != 1)
  {
    return std::string::operator=(result, a2);
  }

  if (SHIBYTE(result->__r_.__value_.__r.__words[2]) < 0)
  {
    result->__r_.__value_.__l.__size_ = 4;
    result = result->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&result->__r_.__value_.__s + 23) = 4;
  }

  strcpy(result, "root");
  return result;
}

id sub_100061198(__int128 *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000612AC;
  v3[3] = &unk_10247CAE0;
  sub_1000350D0(&v4, a1);
  v1 = [v3 copy];
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  return v1;
}

id sub_100061324(uint64_t a1, uint64_t a2)
{
  v3 = [-[NSArray objectAtIndexedSubscript:](sub_100019AB0(a1 a2)];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = a2;
    v11 = 2050;
    v12 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client Effective registration result with TransientAwareness, Client:%{public, location:escape_only}@, registration:%{public, location:CLClientRegistrationResult}lld}", v6, 0x26u);
  }

  return v3;
}

void sub_10006142C(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 95) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 163) = 0u;
  v21 = 0;
  sub_100053930(&v21, &__str);
  if (v21 == 1)
  {
    std::string::operator=((a2 + 24), &__str);
  }

  else
  {
    sub_100034EE4(&__str, v7);
    sub_100034F70(a2, v7);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(*(&v8 + 1));
    }

    if (SBYTE7(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  v5 = a1[1];
  *v7 = *a1;
  v8 = v5;
  CLConnection::getUserNameFromAuditToken(&v6, v7, v4);
  sub_100061154(a2, &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10006157C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v16 - 41) < 0)
  {
    operator delete(*(v16 - 64));
  }

  sub_100039BE8(v15);
  _Unwind_Resume(a1);
}

double sub_1000615C8@<D0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  sub_10003B25C(a1);
  if ((*(a1 + 151) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 136))
    {
LABEL_3:
      sub_10003B25C(a1);
      sub_10006023C((a1 + 104), 40, &v31);
      sub_10003B25C(a1);
      v4 = *(a1 + 151);
      if (v4 >= 0)
      {
        v5 = (a1 + 128);
      }

      else
      {
        v5 = *(a1 + 128);
      }

      if (v4 >= 0)
      {
        v6 = *(a1 + 151);
      }

      else
      {
        v6 = *(a1 + 136);
      }

      v7 = std::string::append(&v31, v5, v6);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      std::string::push_back(&v29, 41);
      v32[0] = v29.__r_.__value_.__l.__size_;
      v9 = v29.__r_.__value_.__r.__words[0];
      *(v32 + 7) = *(&v29.__r_.__value_.__r.__words[1] + 7);
      v10 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      memset(&v29, 0, sizeof(v29));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        __p.__r_.__value_.__r.__words[0] = v9;
        __p.__r_.__value_.__l.__size_ = v32[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v32 + 7);
        *(&__p.__r_.__value_.__s + 23) = v10;
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = v9;
        __p.__r_.__value_.__l.__size_ = v32[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v32 + 7);
        *(&__p.__r_.__value_.__s + 23) = v10;
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        v20 = v31.__r_.__value_.__r.__words[0];
        goto LABEL_38;
      }

      goto LABEL_51;
    }
  }

  else if (*(a1 + 151))
  {
    goto LABEL_3;
  }

  if ((*(a1 + 95) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 95))
    {
      goto LABEL_14;
    }

LABEL_40:
    sub_10003B25C(a1);
    if ((*(a1 + 127) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 112))
      {
        goto LABEL_42;
      }
    }

    else if (*(a1 + 127))
    {
LABEL_42:
      sub_10003B25C(a1);
      v21 = (a1 + 104);
      goto LABEL_50;
    }

    v21 = (a1 + 48);
    v22 = *(a1 + 71);
    if (v22 < 0)
    {
      v22 = *(a1 + 56);
    }

    if (!v22)
    {
      v21 = (a1 + 24);
      v23 = *(a1 + 47);
      if (v23 < 0)
      {
        v23 = *(a1 + 32);
      }

      if (!v23)
      {
        goto LABEL_51;
      }
    }

LABEL_50:
    std::string::operator=(&__p, v21);
    goto LABEL_51;
  }

  if (!*(a1 + 80))
  {
    goto LABEL_40;
  }

LABEL_14:
  if (*(a1 + 71) >= 0)
  {
    v11 = *(a1 + 71);
  }

  else
  {
    v11 = *(a1 + 56);
  }

  v12 = &v29;
  sub_100070148(&v29, v11 + 2);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v29.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    if (*(a1 + 71) >= 0)
    {
      v13 = (a1 + 48);
    }

    else
    {
      v13 = *(a1 + 48);
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "::");
  v14 = *(a1 + 95);
  if (v14 >= 0)
  {
    v15 = (a1 + 72);
  }

  else
  {
    v15 = *(a1 + 72);
  }

  if (v14 >= 0)
  {
    v16 = *(a1 + 95);
  }

  else
  {
    v16 = *(a1 + 80);
  }

  v17 = std::string::append(&v29, v15, v16);
  v18 = v17->__r_.__value_.__r.__words[0];
  v31.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__l.__size_;
  *(v31.__r_.__value_.__r.__words + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v18;
  __p.__r_.__value_.__l.__size_ = v31.__r_.__value_.__r.__words[0];
  *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v31.__r_.__value_.__r.__words + 7);
  *(&__p.__r_.__value_.__s + 23) = v19;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    v20 = v29.__r_.__value_.__r.__words[0];
LABEL_38:
    operator delete(v20);
  }

LABEL_51:
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      goto LABEL_53;
    }

LABEL_66:
    *&v27 = __p.__r_.__value_.__r.__words[0];
    *a2 = __p;
    return *&v27;
  }

  if (!*(a1 + 23))
  {
    goto LABEL_66;
  }

LABEL_53:
  sub_1000619C0(91, a1, &v31);
  std::string::push_back(&v31, 93);
  v29 = v31;
  memset(&v31, 0, sizeof(v31));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v29, p_p, size);
  v27 = *&v26->__r_.__value_.__l.__data_;
  *a2 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return *&v27;
}

void sub_10006194C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000619C0@<X0>(char a1@<W0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  result = sub_100070148(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  *v7 = a1;
  v8 = v7 + 1;
  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  *(v8 + v5) = 0;
  return result;
}

const char *sub_100061A50(unsigned int a1)
{
  if (a1 > 4)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_10245A0D0[a1];
  }
}

void sub_100061A88(id a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_10198AE58();
  }

  v1 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "Ping timer fired, resetting watchdog", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10198AE6C();
  }

  v2 = qword_102637700;
  v3 = *(qword_102637700 + 40);
  if (v3 || (v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q), *(qword_102637700 + 40) = v4, dispatch_source_set_event_handler(v4, &stru_102481C88), dispatch_resume(*(qword_102637700 + 40)), v2 = qword_102637700, (v3 = *(qword_102637700 + 40)) != 0))
  {
    ++*(v2 + 48);
    v5 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v3, v5, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10198AA24();
    }

    v6 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Failed to create watchdog timer", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10198AF48();
    }
  }
}

void sub_100061C1C(uint64_t a1)
{
  if (IOHIDEventGetType() == 13)
  {
    if (IOHIDEventGetIntegerValue() == 1)
    {
      if (qword_1025D4300 != -1)
      {
        sub_100311618();
      }

      v2 = qword_1025D4308;
      if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Received shake data, discarding.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10198C4D0();
      }
    }

    else
    {
      IOHIDEventGetFloatValue();
      *&v3 = v3;
      *buf = LODWORD(v3);
      IOHIDEventGetFloatValue();
      *&v4 = v4;
      v9 = LODWORD(v4);
      IOHIDEventGetFloatValue();
      *&v5 = v5;
      v10 = LODWORD(v5);
      TimeStamp = IOHIDEventGetTimeStamp();
      v7 = sub_1000080EC(TimeStamp);
      sub_100061D4C(a1, buf, &v7);
    }
  }
}

uint64_t sub_100061D4C(uint64_t a1, float *a2, void *a3)
{
  v26[0] = *a3;
  v26[1] = *a2;
  v27 = *(a2 + 2);
  if (qword_1025D4300 != -1)
  {
    sub_100311618();
  }

  v6 = qword_1025D4308;
  if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = *a3;
    *buf = 134218752;
    v29 = v7;
    v30 = 2048;
    v31 = v8;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35[0] = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "[Accelerometer] x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10198C364(a2);
  }

  if (*(a1 + 32) == 1)
  {
    v21 = off_102490DD0;
    Current = CFAbsoluteTimeGetCurrent();
    v12 = *a2;
    v25 = *(a2 + 2);
    v13 = *a3;
    v22 = Current;
    v23 = v13;
    v24 = v12;
    v14 = sub_10015ADF4();
    sub_1010CF5BC(v14, &v21);
    sub_10152D354(buf);
    sub_101554F84(buf);
    v36 |= 1u;
    *(&v35[82] + 6) = v22;
    v15 = *(v35 + 6);
    v16 = *a3;
    *(*(v35 + 6) + 32) |= 1u;
    *(v15 + 8) = v16;
    v17 = *(v35 + 6);
    *&v16 = *a2;
    *(*(v35 + 6) + 32) |= 4u;
    *(v17 + 20) = v16;
    v18 = *(v35 + 6);
    *&v16 = a2[1];
    *(*(v35 + 6) + 32) |= 8u;
    *(v18 + 24) = v16;
    v19 = *(v35 + 6);
    *&v16 = a2[2];
    *(*(v35 + 6) + 32) |= 0x10u;
    *(v19 + 28) = v16;
    if (qword_102637F48 != -1)
    {
      sub_10198C4A8();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  return sub_100061FD8(a1, 0, v26, 24);
}

void sub_100061FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100061FD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 16);
  v9 = a2;
  v10 = v8 + 80 * a2;
  v11 = *(v10 + 32);
  if (v11 != (v10 + 40))
  {
    do
    {
      v12 = *(v11 + 10);
      if (!v12)
      {
        result = (*(*v11[4] + 16))(v11[4], a2, a3, a4);
        v12 = *(v11 + 10);
      }

      *(v11 + 10) = (v12 + 1) % *(v11 + 11);
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v8 = *(v7 + 16);
      v11 = v14;
    }

    while (v14 != (v8 + 80 * v9 + 40));
  }

  v16 = v8 + 80 * v9;
  v17 = *(v16 + 64);
  if (v17 != v16 + 56)
  {
    do
    {
      result = (*(**(v17 + 16) + 16))(*(v17 + 16), a2, a3, a4);
      v17 = *(v17 + 8);
    }

    while (v17 != *(v7 + 16) + 80 * v9 + 56);
  }

  return result;
}

__n128 sub_100062140(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v7 = (*(a1 + 56) + 24 * *(a1 + 64));
  result = *a3;
  v7[1].n128_u64[0] = a3[1].n128_u64[0];
  *v7 = result;
  v9 = *(a1 + 68);
  v10 = *(a1 + 64) + 1;
  *(a1 + 64) = v10;
  if (v10 >= v9)
  {
    v18 = v4;
    v19 = v3;
    v20 = v5;
    v21 = v6;
    v12 = *(a1 + 24);
    v11 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 16);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100137BA0;
    v16[3] = &unk_102474290;
    v16[4] = v13;
    v16[5] = v12;
    v17 = v10;
    v16[6] = v14;
    v16[7] = v11;
    [v15 async:v16];
    operator new[]();
  }

  return result;
}

id sub_10006222C(void *a1, int a2, void *__src, unint64_t a4)
{
  if (a4 >= 0x70)
  {
    v8 = 112;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0x71)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101AB4154();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v26 = 0x8000000101D07567 & 0x7FFFFFFFFFFFFFFFLL;
      v27 = 2048;
      v28 = 112;
      v29 = 2048;
      v30 = a4;
      v31 = 1024;
      v32 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AB4168(a4, a2);
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000626B8;
  v15[3] = &unk_1024BAF58;
  v15[4] = v12;
  v15[5] = v11;
  v20 = __dst[4];
  v21 = __dst[5];
  v22 = __dst[6];
  v16 = __dst[0];
  v17 = __dst[1];
  v19 = __dst[3];
  v18 = __dst[2];
  v23 = v10;
  return [v13 async:v15];
}

void *sub_10006243C(void *__dst, const void *__src, size_t __n)
{
  if (__n)
  {
    v3 = *__src;
    v4 = 102;
    if (v3 != 2)
    {
      v4 = 0;
    }

    v5 = v3 == 1;
    v6 = 8;
    if (!v5)
    {
      v6 = v4;
    }

    if (v6 == __n)
    {
      return memcpy(__dst, __src, __n);
    }
  }

  *__dst = -1;
  return __dst;
}

uint64_t sub_100062474(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4510 != -1)
  {
    sub_101A9C400();
  }

  v4 = qword_1025D4518;
  if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = *(a1 + 56);
    v7 = sub_1000137E0();
    v8 = *(a2 + 9);
    v9 = *(a2 + 13);
    v10 = *(a2 + 17);
    v11 = *(a2 + 21);
    v12 = *(a2 + 25);
    v13 = *(a2 + 29);
    v14 = *(a2 + 33);
    v15 = *(a2 + 41);
    v16 = *(a2 + 49);
    v17 = *(a2 + 57);
    v18 = *(a2 + 65);
    v19 = *(a2 + 73);
    v20 = *(a2 + 101);
    *v23 = 134352896;
    *&v23[4] = v5;
    *&v23[12] = 2050;
    *&v23[14] = v6;
    *&v23[22] = 2050;
    *&v23[24] = v7;
    *v24 = 2050;
    *&v24[2] = v8;
    *&v24[10] = 2050;
    *&v24[12] = v9;
    *&v24[20] = 2050;
    *&v24[22] = v10;
    *&v24[30] = 2050;
    *&v24[32] = v11;
    *v25 = 2050;
    *&v25[2] = v12;
    *&v25[10] = 2050;
    *&v25[12] = v13;
    *&v25[20] = 2050;
    *&v25[22] = v14;
    *&v25[30] = 2050;
    v26 = v15;
    v27 = 2050;
    v28 = v16;
    v29 = 2050;
    v30 = v17;
    v31 = 2050;
    v32 = v18;
    v33 = 2050;
    v34 = v19;
    v35 = 1026;
    v36 = v20;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Report,aopTimestamp,%{public}llu,reportTimestamp,%{public}f,machTimeNow,%{public}f,posX,%{public}f,posY,%{public}f,posZ,%{public}f,dvCumsumX,%{public}f,dvCumsumY,%{public}f,dvCumsumZ,%{public}f,tsPosRollover,%{public}llu,tsVelRollover,%{public}llu,tsDeltaPosXUnavailable,%{public}llu,tsDeltaPosYUnavailable,%{public}llu,tsDeltaPosZUnavailable,%{public}llu,tsDMReinit,%{public}llu,displacingState,%{public}u", v23, 0x9Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A9CB10(a2, a1);
  }

  *v23 = *(a1 + 56);
  *&v23[8] = *(a2 + 1);
  *&v23[16] = *(a2 + 9);
  *v24 = *(a2 + 25);
  *&v24[8] = *(a2 + 33);
  *&v24[24] = *(a2 + 49);
  *v25 = *(a2 + 65);
  *&v25[16] = *(a2 + 81);
  v21 = *(a2 + 97) - *(*(a1 + 72) + 8);
  *&v26 = v21;
  BYTE4(v26) = *(a2 + 101);
  return sub_100061FD8(a1, 0, v23, 112);
}

uint64_t sub_1000626B8(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[20];

    return v3(a1 + 6, v4);
  }

  return result;
}

void sub_10006272C(uint64_t a1)
{
  v8[0] = *(a1 + 128);
  memset(&v8[1], 0, 56);
  v8[3] = 0;
  *(&v8[3] + 7) = 0;
  v1 = *(a1 + 24);
  if (v1 >= *(a1 + 208))
  {
    if (v1 >= *(a1 + 168))
    {
      for (i = 0; i != 3; ++i)
      {
        *(&v8[2] + i + 4) = *(a1 + 184 + 8 * i) <= v1;
      }

      v4 = 0.0;
      v5 = 0.0;
      if ((v8[2] & 0x100000000) != 0)
      {
        v5 = *(a1 + 144) - *(a1 + 32);
      }

      *&v8[1] = v5;
      if (BYTE5(v8[2]) == 1)
      {
        v4 = *(a1 + 148) - *(a1 + 36);
      }

      *(&v8[1] + 1) = v4;
      v6 = 0.0;
      if (BYTE6(v8[2]) == 1)
      {
        v6 = *(a1 + 152) - *(a1 + 40);
      }

      *&v8[2] = v6;
    }

    if (v1 >= *(a1 + 176))
    {
      v8[3] = vsub_f32(*(a1 + 156), *(a1 + 44));
      *&v8[4] = *(a1 + 164) - *(a1 + 52);
      WORD2(v8[4]) = 257;
      BYTE6(v8[4]) = 1;
    }

    LOBYTE(v8[7]) = *(a1 + 236);
    *&v8[5] = *(a1 + 216);
    (*(*a1 + 16))(a1, v8);
  }

  else
  {
    if (qword_1025D4510 != -1)
    {
      sub_101AB3D28();
    }

    v2 = qword_1025D4518;
    if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "DeviceMotion has reinitialized, reference frame has changed", v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AB4064();
    }
  }
}

uint64_t sub_1000628FC(uint64_t a1, uint64_t a2)
{
  result = sub_100062F64(a1);
  if ((result & 1) == 0 && (*(a1 + 1440) != 1 || *(a1 + 1432) != 1 || *(a1 + 1408)))
  {

    return sub_100062BD4(a1 + 608, a2);
  }

  return result;
}

void sub_100062994(uint64_t a1, unsigned __int8 *a2, char *a3, double a4)
{
  *(a1 + 24) = a4;
  sub_10006243C(v11, a2, a3);
  if (a3)
  {
    v7 = *a2;
  }

  else
  {
    v7 = 0;
  }

  if (qword_1025D4510 != -1)
  {
    sub_101AE3F1C();
  }

  v8 = qword_1025D4518;
  if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    v13 = v7;
    v14 = 2050;
    v15 = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "type,%{public}d,size,%{public}lu", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE411C(v7, a3);
  }

  if (v7 == 255)
  {
    if (qword_1025D4510 != -1)
    {
      sub_101AE3F1C();
    }

    v9 = qword_1025D4518;
    if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240448;
      v13 = 255;
      v14 = 2050;
      v15 = a3;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Bad report,type,%{public}d,size,%{public}lu", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AE4340(a3);
    }
  }

  else if ((sub_10006327C(v11, a1) & 1) == 0)
  {
    if (qword_1025D4510 != -1)
    {
      sub_101AE3F1C();
    }

    v10 = qword_1025D4518;
    if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v13 = v7;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "CMInertialOdometryReport::visit() type %{public}d failed.", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AE4238(v7);
    }
  }
}

uint64_t sub_100062BD4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(CLPIndoorEvent);
  [v4 setType:11];
  [v4 setInertialOdometry:objc_alloc_init(CLPInertialOdometry)];
  [objc_msgSend(v4 "inertialOdometry")];
  if (*(a2 + 20) == 1)
  {
    [objc_msgSend(v4 "inertialOdometry")];
  }

  if (*(a2 + 21) == 1)
  {
    [objc_msgSend(v4 "inertialOdometry")];
  }

  if (*(a2 + 22) == 1)
  {
    [objc_msgSend(v4 "inertialOdometry")];
  }

  if (*(a2 + 36) == 1)
  {
    [objc_msgSend(v4 "inertialOdometry")];
  }

  if (*(a2 + 37) == 1)
  {
    [objc_msgSend(v4 "inertialOdometry")];
  }

  if (*(a2 + 38) == 1)
  {
    [objc_msgSend(v4 "inertialOdometry")];
  }

  [*(a1 + 48) addObject:v4];

  return sub_100063090(a1);
}

BOOL sub_100062D7C(uint64_t a1)
{
  if ((*(**(a1 + 32) + 80))(*(a1 + 32)))
  {
    return 0;
  }

  v3 = (*(**a1 + 64))() - *(a1 + 56);
  return v3 > (*(**(a1 + 32) + 64))(*(a1 + 32));
}

BOOL sub_100062E38(uint64_t a1)
{
  if (*(a1 + 912) != 1 || sub_100062D7C(a1 + 608))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    return 1;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_100260340();
  }

  v3 = qword_1025D47D8;
  result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_1000183C0(a1);
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2050;
    v8 = sub_1000183C0(a1);
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@TraceHarvest, #warning: Harvesting was turned off but we're still checking for active traces, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v4, 0x1Cu);
    return 0;
  }

  return result;
}

BOOL sub_100062F64(uint64_t a1)
{
  v2 = *(a1 + 912);
  v3 = sub_100063014(a1);
  if (!v3)
  {
    sub_10024677C((a1 + 608));
    if (v2)
    {
      if ((*(a1 + 440) & 1) == 0)
      {
        v4 = (*(**(a1 + 56) + 64))(*(a1 + 56));
        if (v4 - sub_100141988(a1 + 608) >= *(a1 + 416))
        {
          sub_100C5362C(a1, 0);
          sub_1002CEC90(a1);
        }
      }
    }
  }

  return !v3;
}

BOOL sub_100063014(uint64_t a1)
{
  if (!(*(**(a1 + 56) + 160))(*(a1 + 56)) || *(a1 + 88) != 1)
  {
    return 0;
  }

  return sub_100062E38(a1);
}

uint64_t sub_100063090(uint64_t a1)
{
  result = (*(**(a1 + 32) + 80))(*(a1 + 32));
  if ((result & 1) == 0)
  {
    while (1)
    {
      v3 = [*(a1 + 48) count];
      result = (*(**(a1 + 32) + 16))(*(a1 + 32));
      if (v3 <= result)
      {
        break;
      }

      [*(a1 + 48) removeObjectAtIndex:0];
    }
  }

  return result;
}

void sub_100063128(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = 0;
    *buf = 0;
    IOHIDEventGetVendorDefinedData();
    if (qword_1025D4510 != -1)
    {
      sub_101AE3F1C();
    }

    v2 = qword_1025D4518;
    if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Empty payload, returning", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AE3F44();
    }
  }

  else
  {
    if (qword_1025D4510 != -1)
    {
      sub_101AE3E14();
    }

    v3 = qword_1025D4518;
    if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AE4030();
    }
  }
}

uint64_t sub_10006327C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 255:
      return 0;
    case 2:
      (*(*a2 + 24))(a2, a1);
      break;
    case 1:
      (*(*a2 + 16))(a2, a1);
      break;
  }

  return 1;
}

void sub_10006331C(_OWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 208);
  *(a2 + 80) = *(a2 + 192);
  *(a2 + 96) = v2;
  *(a2 + 112) = *(a2 + 224);
  v3 = *(a2 + 144);
  *(a2 + 16) = *(a2 + 128);
  *(a2 + 32) = v3;
  v4 = *(a2 + 176);
  *(a2 + 48) = *(a2 + 160);
  *(a2 + 64) = v4;
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[6];
  *(a2 + 208) = a1[5];
  *(a2 + 224) = v7;
  *(a2 + 176) = v6;
  *(a2 + 192) = v5;
  v9 = a1[1];
  v8 = a1[2];
  *(a2 + 128) = *a1;
  *(a2 + 144) = v9;
  *(a2 + 160) = v8;
  if (*(a2 + 8) == 1)
  {
    sub_10006272C(a2);
  }

  else
  {
    *(a2 + 8) = 1;
  }
}

void sub_10006337C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientRegisterLQMCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientRegisterLQMCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063E30;
  v9[3] = &unk_10245D2F0;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  [v8 sync:v9];
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100063594(int a1, CFDictionaryRef theDict, void *a3)
{
  if (theDict)
  {
    value = 0;
    valuePtr = 0.0;
    ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"SCALED_LQM", &value);
    v5 = 0.0;
    if (ValueIfPresent && value)
    {
      CFNumberGetValue(value, kCFNumberFloatType, &valuePtr);
      v5 = valuePtr;
    }

    v6 = vcvtad_u64_f64(v5 * 100.0);
    if (v5 <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    [a3 processReceivedWiFiDeviceLinkScore:v7];
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101883FCC();
    }

    v8 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLEmergencyWifiAvailability, onWiFiDeviceClientLQMCallback, empty metrics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101884E08();
    }
  }
}

uint64_t sub_100063698(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = a1 + 832;
  v36 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v37 = 256;
  v6 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientRegisterLQMCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *v43 = 0;
    *&v43[4] = 2082;
    *&v43[6] = "";
    *&v43[14] = 2082;
    *&v43[16] = "activity";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientRegisterLQMCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"RSSI");
    v9 = CFDictionaryGetValue(a3, @"LQMTIMESTAMP");
    if (*(a1 + 648) == 1 && *(a1 + 600) >= 1 && Value)
    {
      v10 = v9;
      v11 = [Value intValue];
      if (*(a1 + 648) == 1)
      {
        *(a1 + 592) = v11;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (v10)
      {
        [v10 timeIntervalSinceReferenceDate];
        v14 = v13;
      }

      else
      {
        v14 = Current;
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "WifiMgr, LQM notification handling error: timestamp missing, use current system time", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CD5B4(buf);
          LOWORD(v38.__r_.__value_.__l.__data_) = 0;
          v27 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientRegisterLQMCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }
      }

      *(a1 + 616) = v14;
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v19 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        __dst[0] = *(a1 + 560);
        v20 = &v38;
        sub_10018F0D0(&v38);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v20 = v38.__r_.__value_.__r.__words[0];
        }

        if (*(a1 + 591) < 0)
        {
          sub_100007244(&__p, *(a1 + 568), *(a1 + 576));
        }

        else
        {
          __p = *(a1 + 568);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v22 = *(a1 + 592);
        v23 = *(a1 + 616);
        *buf = 136381443;
        *v43 = v20;
        *&v43[8] = 2081;
        *&v43[10] = p_p;
        *&v43[18] = 1026;
        *&v43[20] = v22;
        v44 = 2050;
        v45 = v23;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiMgr, update associated rssi via LQM, mac, %{private}s, ssid, %{private}s, rssi, %{public}d, ts, %{public}.1lf", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(buf);
        v33 = *(a1 + 560);
        v26 = &__p;
        sub_10018F0D0(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = __p.__r_.__value_.__r.__words[0];
        }

        if (*(a1 + 591) < 0)
        {
          sub_100007244(__dst, *(a1 + 568), *(a1 + 576));
        }

        else
        {
          *__dst = *(a1 + 568);
          v32 = *(a1 + 584);
        }

        v28 = __dst;
        if (v32 < 0)
        {
          v28 = __dst[0];
        }

        v29 = *(a1 + 592);
        v30 = *(a1 + 616);
        LODWORD(v38.__r_.__value_.__l.__data_) = 136381443;
        *(v38.__r_.__value_.__r.__words + 4) = v26;
        WORD2(v38.__r_.__value_.__r.__words[1]) = 2081;
        *(&v38.__r_.__value_.__r.__words[1] + 6) = v28;
        HIWORD(v38.__r_.__value_.__r.__words[2]) = 1026;
        v39 = v29;
        v40 = 2050;
        v41 = v30;
        v25 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientRegisterLQMCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v25);
        if (v25 != buf)
        {
LABEL_65:
          free(v25);
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v15 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 648) == 1 && *(a1 + 600) > 0;
        *buf = 67240449;
        *v43 = Value == 0;
        *&v43[4] = 1025;
        *&v43[6] = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "WifiMgr, LQM notification handling error: rssi value is null - %{public}d; isAssociated - %{private}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v17 = *(a1 + 648) == 1 && *(a1 + 600) > 0;
        LODWORD(v38.__r_.__value_.__l.__data_) = 67240449;
        HIDWORD(v38.__r_.__value_.__r.__words[0]) = Value == 0;
        LOWORD(v38.__r_.__value_.__r.__words[1]) = 1025;
        *(&v38.__r_.__value_.__r.__words[1] + 2) = v17;
        v25 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientRegisterLQMCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v25);
        if (v25 != buf)
        {
          goto LABEL_65;
        }
      }
    }
  }

  os_activity_scope_leave(&state);
  return (*(*v5 + 24))(v5);
}

void sub_100063DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, os_activity_scope_state_s state, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  sub_1017EC98C(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100063E40(uint64_t result)
{
  if ((*(result + 552) & 1) == 0)
  {
    v1 = result;
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v2 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "WifiService, power mismatch", v3, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CF254();
    }

    return sub_1005961D0(v1);
  }

  return result;
}

id sub_100063EEC(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10196EBB8();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#ctcl,queryServingMccAndMnc,context,%{private}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101974484();
  }

  v5 = a2;
  v6 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008E868;
  v8[3] = &unk_10247E518;
  v8[4] = a2;
  v8[5] = a1;
  return [v6 copyMobileCountryCode:a2 completion:v8];
}

uint64_t sub_100064028(void *a1)
{
  if (!a1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B4BE38();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,cellInfo,invalid,context,%p", &v5, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101B4BF3C();
    return 0;
  }

  if ([a1 slotID] - 1 < 2)
  {
    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101B4BE38();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    v5 = 67109120;
    LODWORD(v6) = [a1 slotID];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,cellInfo,invalidSlot,%d", &v5, 8u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101B4BE4C(a1);
    return 0;
  }

  return result;
}

id *sub_1000641A0(id *a1, void *a2)
{
  *a1 = 0;
  if (!a2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTCellInfo, cellInfo is null", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      return a1;
    }

    sub_1018C7FE4(buf);
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTCellInfo::CLCTCellInfo(CTCellInfo *)", "%s\n", v8);
LABEL_24:
    if (v8 != buf)
    {
      free(v8);
    }

    return a1;
  }

  v3 = [a2 legacyInfo];
  *a1 = v3;
  if (v3)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*a1 count];
      *buf = 134217984;
      v13 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#clct,CLCTCellInfo, cellList size,%lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7FE4(buf);
      [*a1 count];
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService_Type::CLCTCellInfo::CLCTCellInfo(CTCellInfo *)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v6 = *a1;
    return a1;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v9 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#clct,CLCTCellInfo, cellList size,0", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C7FE4(buf);
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService_Type::CLCTCellInfo::CLCTCellInfo(CTCellInfo *)", "%s\n", v8);
    goto LABEL_24;
  }

  return a1;
}

id sub_10006454C(void *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v6 = 0;
  v7 = &v6;
  v3 = sub_1000646F8(a1, &v6);
  [v2 setObject:sub_10006462C(v3 + 3) forKey:@"kSlotOne"];
  if (sub_1000649A0())
  {
    v6 = 1;
    v7 = &v6;
    v4 = sub_1000646F8(a1, &v6);
    [v2 setObject:sub_10006462C(v4 + 3) forKey:@"kSlotTwo"];
  }

  return v2;
}

NSDictionary *sub_10006462C(NSNull **a1)
{
  v3 = @"kCellRefreshNotification";
  v1 = *a1;
  if (!v1)
  {
    v1 = +[NSNull null];
  }

  v4 = v1;
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

uint64_t sub_1000646B0(uint64_t a1)
{
  v2 = sub_1000649A0();
  if ((a1 - 1) <= 1)
  {
    v3 = a1 != 1;
  }

  else
  {
    v3 = 255;
  }

  if (a1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 255;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t *sub_1000646F8(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_100064944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006EFD4(va);
  _Unwind_Resume(a1);
}

id *sub_100064958(id *a1, id *a2)
{
  if (a1 != a2)
  {

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

BOOL sub_1000649A0()
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 != 1)
  {
    return 0;
  }

  if (sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || (sub_10006FDD0())
  {
    return 1;
  }

  return sub_100718F78();
}

uint64_t sub_100064A18(uint64_t a1, int *a2, CFDictionaryRef *a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1017C673C();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 8528);
    v8 = sub_100072010(a2);
    sub_1000238CC(v8, &__p);
    v9 = v54 >= 0 ? &__p : __p;
    *buf = 67109378;
    *&buf[4] = v7;
    *&buf[8] = 2080;
    *&buf[10] = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#nict,%s", buf, 0x12u);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1017C6750();
    }

    v35 = *(a1 + 8528);
    v36 = sub_100072010(a2);
    sub_1000238CC(v36, buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v37 = buf;
    }

    else
    {
      v37 = *buf;
    }

    LODWORD(v51) = 67109378;
    HIDWORD(v51) = v35;
    LOWORD(v52) = 2080;
    *(&v52 + 2) = v37;
    v38 = _os_log_send_and_compose_impl();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNilrController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v38);
    if (v38 != &__p)
    {
      free(v38);
    }
  }

  v10 = sub_100072010(a2);
  if (CFEqual(@"kCLTelephonyServiceDisconnectedNotification", v10))
  {
    if (*(a1 + 6840) == 1)
    {
      if (*(a1 + 6487) < 0)
      {
        operator delete(*(a1 + 6464));
      }

      v11 = *(a1 + 6232);
      if (v11)
      {
        *(a1 + 6240) = v11;
        operator delete(v11);
      }

      *(a1 + 6840) = 0;
    }

    __p = 0;
    v54 = 0uLL;
    sub_100066308(a1 + 3376, &__p);
    *buf = &__p;
    sub_100072124(buf);
    if (qword_1025D4650 != -1)
    {
      sub_1017C6750();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 8528);
      LODWORD(__p) = 67109120;
      HIDWORD(__p) = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#nict,cellInfo,erased", &__p, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017C84D4(a1);
    }

    goto LABEL_23;
  }

  v18 = sub_100072010(a2);
  if (!CFEqual(@"kCellInfoNotification", v18))
  {
    v26 = sub_100072010(a2);
    if (CFEqual(@"kCellRefreshNotification", v26))
    {
      if (qword_1025D4650 != -1)
      {
        sub_1017C6750();
      }

      v27 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(a1 + 8528);
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = v28;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#nict,kCellRefreshNotification", &__p, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017C860C(a1);
      }
    }

    goto LABEL_23;
  }

  if (*a3)
  {
    sub_100005548(v43, *a3);
    v51 = 0;
    v52 = 0uLL;
    memset(buf, 0, sizeof(buf));
    v50 = 1065353216;
    v19 = sub_100065478(*a3, buf);
    v20 = v19;
    if (v19)
    {
      v21 = (a1 + 8528);
      v44 = a1 + 8528;
      if (sub_100065670(buf, (a1 + 8528))[3])
      {
        sub_1000658D0(*v21, buf, &v51);
        sub_100065934(&v51, &__p);
        sub_1000659B0(a1 + 6144, &__p);
        if (v59 == 1)
        {
          if (v58 < 0)
          {
            operator delete(v57);
          }

          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }
        }

        sub_100066308(a1 + 3376, &v51);
        if (qword_1025D4650 != -1)
        {
          sub_1017C6750();
        }

        v22 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v23 = *v21;
          LODWORD(__p) = 67109632;
          HIDWORD(__p) = v23;
          LOWORD(v54) = 2048;
          *(&v54 + 2) = 0x66FD0EB66FD0EB67 * ((v52 - v51) >> 3);
          WORD5(v54) = 1024;
          HIDWORD(v54) = v23;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#nict,#ci,cellInfo,refreshed,cellcount,%lu,sim,%d", &__p, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1017C85C8(&__p);
          v39 = *v21;
          LODWORD(v44) = 67109632;
          HIDWORD(v44) = v39;
          v45 = 2048;
          v46 = 0x66FD0EB66FD0EB67 * ((v52 - v51) >> 3);
          v47 = 1024;
          v48 = v39;
          v40 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLNilrController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v40);
          if (v40 != &__p)
          {
            free(v40);
          }
        }

        if (sub_10006FB38() && *(a1 + 10224) == 1 && sub_10006FB70() && sub_10006FE30())
        {
          if ((a1 + 6848) != &v51)
          {
            sub_1000755FC(a1 + 6848, v51, v52, 0x66FD0EB66FD0EB67 * ((v52 - v51) >> 3));
          }

          v24 = *(*(a1 + 48) + 40);
          v25 = *(a1 + 8528);
          memset(v42, 0, sizeof(v42));
          sub_100071F88(v42, *(a1 + 6848), *(a1 + 6856), 0x66FD0EB66FD0EB67 * ((*(a1 + 6856) - *(a1 + 6848)) >> 3));
          sub_1000827B0(v24, v25, v42);
          __p = v42;
          sub_100072124(&__p);
        }

        goto LABEL_71;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1017C6750();
      }

      v33 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v34 = *v21;
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = v34;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#nict,#ci,cellInfo,emptycells", &__p, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_71:
        sub_100075100(buf);
        __p = &v51;
        sub_100072124(&__p);
        result = sub_100005DA4(v43);
        if ((v20 & 1) == 0)
        {
          return result;
        }

        goto LABEL_23;
      }

      sub_1017C85C8(&__p);
      v41 = *v21;
      LODWORD(v44) = 67109120;
      HIDWORD(v44) = v41;
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v32);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1017C6750();
      }

      v29 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 8528);
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = v30;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#nict,#ci,cellInfo,error fetching cell info", &__p, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_71;
      }

      sub_1017C85C8(&__p);
      v31 = *(a1 + 8528);
      LODWORD(v44) = 67109120;
      HIDWORD(v44) = v31;
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrController::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v32);
    }

    if (v32 != &__p)
    {
      free(v32);
    }

    goto LABEL_71;
  }

LABEL_23:
  if (qword_1025D4650 != -1)
  {
    sub_1017C6750();
  }

  v14 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 8528);
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#ins%d,#nilr,#nict,fSupl.onTelephonyNotification", &__p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017C8700(a1);
  }

  sub_100077DD8(a1 + 3376, a2, a3);
  v16 = sub_100072010(a2);
  result = CFEqual(@"kSimStatusChangeNotification", v16);
  if (result)
  {
    sub_1017BC2F0(a1);
  }

  return result;
}

void sub_1000653FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  sub_100075100(&a21);
  a31 = &a27;
  sub_100072124(&a31);
  sub_100005DA4(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_100065478(void *a1, void *a2)
{
  v4 = [a1 objectForKey:@"kSlotOne"];
  if (!v4)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101B4C13C();
    }

    v9 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#ctcl couldn't get cell information for SIM 1", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101B4C150();
    return 0;
  }

  sub_10006A4E4(&v12, v4);
  v11 = 0;
  *buf = &v11;
  v5 = sub_1000646F8(a2, &v11);
  sub_100064958(v5 + 3, &v12);
  sub_10006499C(&v12);
  if (!sub_1000649A0())
  {
    return 1;
  }

  v6 = [a1 objectForKey:@"kSlotTwo"];
  if (v6)
  {
    sub_10006A4E4(&v12, v6);
    v11 = 1;
    *buf = &v11;
    v7 = sub_1000646F8(a2, &v11);
    sub_100064958(v7 + 3, &v12);
    sub_10006499C(&v12);
    return 1;
  }

  if (qword_1025D4660 != -1)
  {
    sub_101B4C030();
  }

  v10 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#ctcl couldn't get cell information for SIM 2", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101B4C058();
    return 0;
  }

  return result;
}

void sub_100065658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10006499C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100065670(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000658BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006EFD4(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000658D0(int a1, void *a2, uint64_t *a3)
{
  v6 = a1;
  v7 = &v6;
  v4 = sub_100065670(a2, &v6);
  return sub_10006A604(a3, v4[3], 1);
}

uint64_t *sub_100065934@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  a2[696] = 0;
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    while (*v3 != 1 || *(v3 + 4) != 0)
    {
      v3 += 696;
      if (v3 == v4)
      {
        return result;
      }
    }
  }

  if (v3 != v4)
  {
    return sub_100065C94(a2, v3);
  }

  return result;
}

__n128 sub_1000659B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 696) == *(a2 + 696))
  {
    if (*(a1 + 696))
    {
      *a1 = *a2;
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      *(a1 + 16) = v4;
      *(a1 + 80) = *(a2 + 80);
      sub_10007057C(a1 + 88, (a2 + 88));
      *(a1 + 112) = *(a2 + 112);
      v7 = *(a2 + 128);
      v8 = *(a2 + 144);
      v9 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v9;
      *(a1 + 128) = v7;
      *(a1 + 144) = v8;
      v10 = *(a2 + 192);
      v11 = *(a2 + 208);
      v12 = *(a2 + 240);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 240) = v12;
      *(a1 + 192) = v10;
      *(a1 + 208) = v11;
      v13 = *(a2 + 256);
      v14 = *(a2 + 272);
      v15 = *(a2 + 288);
      *(a1 + 300) = *(a2 + 300);
      *(a1 + 272) = v14;
      *(a1 + 288) = v15;
      *(a1 + 256) = v13;
      if (*(a1 + 343) < 0)
      {
        operator delete(*(a1 + 320));
      }

      v16 = *(a2 + 320);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 320) = v16;
      *(a2 + 343) = 0;
      *(a2 + 320) = 0;
      v18 = *(a2 + 424);
      v17 = *(a2 + 440);
      v19 = *(a2 + 408);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 408) = v19;
      *(a1 + 424) = v18;
      *(a1 + 440) = v17;
      v21 = *(a2 + 360);
      v20 = *(a2 + 376);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 360) = v21;
      *(a1 + 376) = v20;
      v22 = *(a2 + 456);
      v23 = *(a2 + 472);
      v24 = *(a2 + 488);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 472) = v23;
      *(a1 + 488) = v24;
      *(a1 + 456) = v22;
      v25 = *(a2 + 512);
      v26 = *(a2 + 528);
      v27 = *(a2 + 560);
      *(a1 + 544) = *(a2 + 544);
      *(a1 + 560) = v27;
      *(a1 + 512) = v25;
      *(a1 + 528) = v26;
      v28 = *(a2 + 576);
      v29 = *(a2 + 592);
      v30 = *(a2 + 624);
      *(a1 + 608) = *(a2 + 608);
      *(a1 + 624) = v30;
      *(a1 + 576) = v28;
      *(a1 + 592) = v29;
      result = *(a2 + 640);
      v32 = *(a2 + 656);
      v33 = *(a2 + 672);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 656) = v32;
      *(a1 + 672) = v33;
      *(a1 + 640) = result;
    }
  }

  else if (*(a1 + 696))
  {
    if (*(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    v34 = *(a1 + 88);
    if (v34)
    {
      *(a1 + 96) = v34;
      operator delete(v34);
    }

    *(a1 + 696) = 0;
  }

  else
  {
    *a1 = *a2;
    v35 = *(a2 + 16);
    v36 = *(a2 + 32);
    v37 = *(a2 + 48);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 32) = v36;
    *(a1 + 48) = v37;
    *(a1 + 16) = v35;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 88) = 0;
    v38 = *(a2 + 176);
    v40 = *(a2 + 128);
    v39 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v38;
    *(a1 + 128) = v40;
    *(a1 + 144) = v39;
    v41 = *(a2 + 240);
    v43 = *(a2 + 192);
    v42 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v41;
    *(a1 + 192) = v43;
    *(a1 + 208) = v42;
    v45 = *(a2 + 272);
    v44 = *(a2 + 288);
    v46 = *(a2 + 256);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 272) = v45;
    *(a1 + 288) = v44;
    *(a1 + 256) = v46;
    *(a1 + 112) = *(a2 + 112);
    v47 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 320) = v47;
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 320) = 0;
    v48 = *(a2 + 440);
    v50 = *(a2 + 392);
    v49 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v48;
    *(a1 + 392) = v50;
    *(a1 + 408) = v49;
    v51 = *(a2 + 344);
    v52 = *(a2 + 376);
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 376) = v52;
    *(a1 + 344) = v51;
    v54 = *(a2 + 472);
    v53 = *(a2 + 488);
    v55 = *(a2 + 456);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 472) = v54;
    *(a1 + 488) = v53;
    *(a1 + 456) = v55;
    v56 = *(a2 + 512);
    v57 = *(a2 + 528);
    v58 = *(a2 + 560);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = v58;
    *(a1 + 512) = v56;
    *(a1 + 528) = v57;
    v59 = *(a2 + 576);
    v60 = *(a2 + 592);
    v61 = *(a2 + 624);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 624) = v61;
    *(a1 + 576) = v59;
    *(a1 + 592) = v60;
    result = *(a2 + 640);
    v62 = *(a2 + 656);
    v63 = *(a2 + 672);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 656) = v62;
    *(a1 + 672) = v63;
    *(a1 + 640) = result;
    *(a1 + 696) = 1;
  }

  return result;
}

id *sub_100065C5C(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100065C94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 696);
  *a1 = *a2;
  v6 = *(a2 + 32);
  v5 = *(a2 + 48);
  v7 = *(a2 + 16);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 16) = v7;
  *(a1 + 80) = *(a2 + 80);
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      sub_100731D80((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    }

    *(a1 + 112) = *(a2 + 112);
    v8 = *(a2 + 128);
    v9 = *(a2 + 144);
    v10 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v10;
    *(a1 + 128) = v8;
    *(a1 + 144) = v9;
    v11 = *(a2 + 192);
    v12 = *(a2 + 208);
    v13 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v13;
    *(a1 + 192) = v11;
    *(a1 + 208) = v12;
    v14 = *(a2 + 256);
    v15 = *(a2 + 272);
    v16 = *(a2 + 288);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 272) = v15;
    *(a1 + 288) = v16;
    *(a1 + 256) = v14;
    std::string::operator=((a1 + 320), (a2 + 320));
    v18 = *(a2 + 360);
    v17 = *(a2 + 376);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 360) = v18;
    *(a1 + 376) = v17;
    v19 = *(a2 + 440);
    v21 = *(a2 + 392);
    v20 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v19;
    *(a1 + 392) = v21;
    *(a1 + 408) = v20;
    v23 = *(a2 + 472);
    v22 = *(a2 + 488);
    v24 = *(a2 + 456);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 472) = v23;
    *(a1 + 488) = v22;
    *(a1 + 456) = v24;
    v25 = *(a2 + 640);
    v26 = *(a2 + 656);
    v27 = *(a2 + 672);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 656) = v26;
    *(a1 + 672) = v27;
    *(a1 + 640) = v25;
    v28 = *(a2 + 576);
    v29 = *(a2 + 592);
    v30 = *(a2 + 624);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 624) = v30;
    *(a1 + 576) = v28;
    *(a1 + 592) = v29;
    v31 = *(a2 + 512);
    v32 = *(a2 + 528);
    v33 = *(a2 + 560);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = v33;
    *(a1 + 512) = v31;
    *(a1 + 528) = v32;
  }

  else
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    sub_10038EB38(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    *(a1 + 112) = *(a2 + 112);
    v34 = *(a2 + 128);
    v35 = *(a2 + 144);
    v36 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v36;
    *(a1 + 144) = v35;
    *(a1 + 128) = v34;
    v37 = *(a2 + 192);
    v38 = *(a2 + 208);
    v39 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 224) = v39;
    *(a1 + 208) = v38;
    *(a1 + 192) = v37;
    v40 = *(a2 + 256);
    v41 = *(a2 + 272);
    v42 = *(a2 + 288);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 288) = v42;
    *(a1 + 272) = v41;
    *(a1 + 256) = v40;
    if (*(a2 + 343) < 0)
    {
      sub_100007244((a1 + 320), *(a2 + 320), *(a2 + 328));
    }

    else
    {
      v43 = *(a2 + 320);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 320) = v43;
    }

    v44 = *(a2 + 344);
    v45 = *(a2 + 376);
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 376) = v45;
    *(a1 + 344) = v44;
    v46 = *(a2 + 392);
    v47 = *(a2 + 408);
    v48 = *(a2 + 440);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v48;
    *(a1 + 392) = v46;
    *(a1 + 408) = v47;
    v49 = *(a2 + 456);
    v50 = *(a2 + 472);
    v51 = *(a2 + 488);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 472) = v50;
    *(a1 + 488) = v51;
    *(a1 + 456) = v49;
    v52 = *(a2 + 512);
    v53 = *(a2 + 528);
    v54 = *(a2 + 560);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = v54;
    *(a1 + 512) = v52;
    *(a1 + 528) = v53;
    v55 = *(a2 + 576);
    v56 = *(a2 + 592);
    v57 = *(a2 + 624);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 624) = v57;
    *(a1 + 576) = v55;
    *(a1 + 592) = v56;
    v58 = *(a2 + 640);
    v59 = *(a2 + 656);
    v60 = *(a2 + 672);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 656) = v59;
    *(a1 + 672) = v60;
    *(a1 + 640) = v58;
    *(a1 + 696) = 1;
  }

  return a1;
}

void sub_100065F04(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100065F20(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssController::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000660EC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000660EC(void *a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  if (qword_1025D4660 != -1)
  {
    sub_1019435C4();
  }

  v7 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = v14 >= 0 ? __p : __p[0];
    *buf = 68289282;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, received CT notification:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**a1 + 288))(*a1, a3, a4);
  v10 = a1[141];
  if (v10)
  {
    sub_100076538(v10, a3, a4);
  }

  v11 = a1[148];
  if (v11)
  {
    sub_1000783BC(v11, a3);
  }

  v12 = a1[142];
  if (v12)
  {
    sub_100075910(v12, a3, a4);
  }
}

uint64_t sub_100066280(uint64_t a1, int *a2, const __CFDictionary **a3)
{
  v6 = *(a1 + 1688);
  if (v6)
  {
    sub_1017694BC(v6, a2, a3);
  }

  result = *(a1 + 2656);
  if (result)
  {

    return sub_100068208(result, a2, a3);
  }

  return result;
}

void sub_100066308(uint64_t a1, void *a2)
{
  if (qword_1025D4660 != -1)
  {
    sub_101617000();
  }

  v4 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 2564);
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,updateCellData", v9, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10161A40C(a1);
  }

  v6 = *(a1 + 2480);
  *(a1 + 2480) = *a2;
  *a2 = v6;
  v7 = *(a1 + 2488);
  *(a1 + 2488) = a2[1];
  a2[1] = v7;
  v8 = *(a1 + 2496);
  *(a1 + 2496) = a2[2];
  a2[2] = v8;
  sub_100066424(a1);
}

void sub_100066424(uint64_t a1)
{
  sub_100065934((a1 + 2480), v11);
  if (v17 == 1 && v12 == 6)
  {
    if (qword_1025D4660 != -1)
    {
      sub_101616C5C();
    }

    v2 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 2564);
      *buf = 67109376;
      v23 = v3;
      v24 = 1024;
      v25 = v12 == 6;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,ServingCellInfoChange,isOnLte,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101616C84(buf);
      v9 = *(a1 + 2564);
      v18 = 67109376;
      v19 = v9;
      v20 = 1024;
      v21 = v12 == 6;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrSupl::process_ServingCellInfoChange()", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v4 = 1;
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101616C5C();
    }

    v5 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 2564);
      *buf = 67109120;
      v23 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,ServingCellInfoChange, not on LTE", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101616C84(buf);
      v7 = *(a1 + 2564);
      v18 = 67109120;
      v19 = v7;
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNilrSupl::process_ServingCellInfoChange()", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v4 = 0;
  }

  *(a1 + 371) = v4;
  sub_10006677C(a1 + 104, 22);
  if (v17 == 1)
  {
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }
}