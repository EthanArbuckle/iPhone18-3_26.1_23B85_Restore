id sub_1000317E4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    v6 = sub_10003187C([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v5), "dictionary"}]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10003187C(void *a1)
{
  v1 = [a1 objectForKey:@"InterestZones"];
  result = [v1 count];
  if (result)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v3 = result;
      v4 = 0;
      v5 = *v10;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v7 = [v1 objectForKeyedSubscript:*(*(&v9 + 1) + 8 * i)];
          if ([objc_msgSend(v7 objectForKeyedSubscript:{@"Provenance", "intValue"}] != 2)
          {
            v8 = sub_100031744(v7);
            if (!v8)
            {
              v8 = 2 * ([objc_msgSend(v7 objectForKeyedSubscript:{@"TemporaryAuthorization", "intValue"}] & 1u);
            }

            v4 |= v8;
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v3);
      return (v4 != 0);
    }
  }

  return result;
}

CLClientManagerAuthorizationContext *sub_1000319E0(NSMutableDictionary *a1, void *a2, unsigned int a3, int a4, uint64_t a5)
{
  v9 = a1;
  v10 = sub_10003187C(a1);
  if (qword_1025D47A0 != -1)
  {
    sub_101A820F0();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290818;
    v117 = 0;
    v118 = 2082;
    v119 = "";
    v120 = 2050;
    v121 = a2;
    v122 = 2050;
    *v123 = a3;
    *&v123[8] = 1026;
    *&v123[10] = a4;
    *&v123[14] = 1026;
    *&v123[16] = v10;
    LOWORD(v124) = 1040;
    *(&v124 + 2) = LocationLogEncryptionDataSize();
    HIWORD(v124) = 2098;
    *v125 = LocationLogEncryptionEncryptData();
    *&v125[8] = 2114;
    *v126 = v9;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:computing #clldu freshAuthContext, EffectiveRegistration:%{public, location:CLClientRegistrationResult}lld, TransientRegistration:%{public, location:CLClientRegistrationResult}lld, bigSwitchState:%{public}hhd, isClientZonal:%{public}hhd, location:%{public, location:Encrypted_CLClientLocation}.*P, dictionary:%{public, location:escape_only}@}", buf, 0x4Cu);
  }

  v83 = a4;
  v12 = [-[NSMutableDictionary objectForKey:](v9 objectForKey:{@"InUseLevel", "unsignedIntValue"}];
  v102 = sub_1000326F8(v9);
  v82 = [-[NSMutableDictionary objectForKey:](v9 objectForKey:{@"IncidentalUseMode", "unsignedIntValue"}];
  v13 = sub_100032624(v9, @"SignificantTimeStarted", @"SignificantTimeStopped", -1.0);
  v14 = sub_10003275C(a3, v12, v102, v82, v10, v13, [-[NSMutableDictionary objectForKey:](v9 objectForKey:{@"BackgroundLocationCapability", "BOOLValue"}]);
  v16 = v15;
  v92 = [-[NSMutableDictionary objectForKeyedSubscript:](v9 objectForKeyedSubscript:{@"WhenInUseServiceSession", "BOOLValue"}];
  v90 = [-[NSMutableDictionary objectForKeyedSubscript:](v9 objectForKeyedSubscript:{@"AlwaysServiceSession", "BOOLValue"}];
  v94 = v10;
  v17 = [-[NSMutableDictionary objectForKeyedSubscript:](v9 objectForKeyedSubscript:{@"LearnedRoutesServiceSession", "BOOLValue"}];
  v18 = [-[NSMutableDictionary objectForKeyedSubscript:](v9 objectForKeyedSubscript:{@"VisitHistoryServiceSession", "BOOLValue"}];
  v19 = a2;
  v20 = [-[NSMutableDictionary objectForKeyedSubscript:](v9 objectForKeyedSubscript:{@"SessionWithOldLinking", "BOOLValue"}];
  v97 = v9;
  v21 = [-[NSMutableDictionary objectForKeyedSubscript:](v9 objectForKeyedSubscript:{@"ExplicitServiceSession", "BOOLValue"}];
  v99 = a3;
  v22 = a3;
  v23 = v82;
  v24 = v20;
  v25 = v19;
  if (sub_100032A84(v22, v12, v92, v90, v17, v18, v24, v21))
  {
    v14 |= 0x80000uLL;
    v16 |= 0x80000uLL;
  }

  if (sub_100032B98([-[NSMutableDictionary objectForKeyedSubscript:](v9 objectForKeyedSubscript:{@"ExplicitServiceSession", "BOOLValue"}]))
  {
    v14 |= 0x100000uLL;
    v16 |= 0x100000uLL;
  }

  if (sub_100032AC4(v19, v12, v82, v102, v9))
  {
    v14 |= 0x200000uLL;
    v16 |= 0x200000uLL;
  }

  v26 = sub_100032D4C(v19, v12, v82, v102, v9);
  if (v26)
  {
    v27 = v14 | 0x400000;
  }

  else
  {
    v27 = v14;
  }

  if (v26)
  {
    v28 = v16 | 0x400000;
  }

  else
  {
    v28 = v16;
  }

  v103 = v28;
  if (!v94)
  {
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    goto LABEL_26;
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (*(a5 + 20) <= 0.0)
  {
LABEL_26:
    v31 = v83;
    goto LABEL_72;
  }

  v95 = v27;
  v30 = [(NSMutableDictionary *)v9 objectForKey:@"InterestZones"];
  v31 = v83;
  if ([v30 count])
  {
    if (*(a5 + 20) >= 0.0)
    {
      v80 = v12;
      v78 = [NSMutableDictionary dictionaryWithDictionary:v9];
      v100 = [NSMutableDictionary dictionaryWithDictionary:v30];
      sub_10018D404(&v104);
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v40 = [v30 countByEnumeratingWithState:&v143 objects:buf count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v144;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v144 != v42)
            {
              objc_enumerationMutation(v30);
            }

            v44 = *(*(&v143 + 1) + 8 * i);
            v45 = [v30 objectForKeyedSubscript:v44];
            [objc_msgSend(v45 objectForKeyedSubscript:{@"Latitude", "doubleValue"}];
            v47 = v46;
            [objc_msgSend(v45 objectForKeyedSubscript:{@"Longitude", "doubleValue"}];
            v49 = v48;
            [objc_msgSend(v45 objectForKeyedSubscript:{@"Radius", "doubleValue"}];
            if (sub_100109D18(&v104, v47, v49, *(a5 + 4), *(a5 + 12), 0.0) < v50)
            {
              v51 = [NSMutableDictionary dictionaryWithDictionary:v45];
              [(NSMutableDictionary *)v51 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Relevant"];
              [(NSMutableDictionary *)v100 setObject:v51 forKeyedSubscript:v44];
            }
          }

          v41 = [v30 countByEnumeratingWithState:&v143 objects:buf count:16];
        }

        while (v41);
      }

      v9 = v78;
      [(NSMutableDictionary *)v78 setObject:v100 forKeyedSubscript:@"InterestZones"];
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      if (qword_1025D47A0 != -1)
      {
        sub_101A81EE4();
      }

      v31 = v83;
      v12 = v80;
      v52 = off_1025D47A8;
      v23 = v82;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_45;
      }

      *v108 = 68289538;
      v109 = 0;
      v110 = 2082;
      v111 = "";
      v112 = 2114;
      v113 = v97;
      v114 = 2114;
      v115 = v78;
      v35 = "{msg%{public}.0s:#clldu conincidingZones marked as Relevant, provided-dictionary:%{public, location:escape_only}@, updatedDictionary:%{public, location:escape_only}@}";
      v36 = v108;
      v37 = v52;
      v38 = 38;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101A81EE4();
      }

      v32 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_45;
      }

      v33 = LocationLogEncryptionDataSize();
      v34 = LocationLogEncryptionEncryptData();
      *buf = 68289794;
      v117 = 0;
      v118 = 2082;
      v119 = "";
      v120 = 2114;
      v121 = v9;
      v122 = 1040;
      *v123 = v33;
      *&v123[4] = 2098;
      *&v123[6] = v34;
      v35 = "{msg%{public}.0s:#pla Skip #clldu-MarkZonesAsRelevant. Invalid location, dictionary:%{public, location:escape_only}@, location:%{public, location:Encrypted_CLClientLocation}.*P}";
      v36 = buf;
      v37 = v32;
      v38 = 44;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101A81EE4();
    }

    v39 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_45;
    }

    *buf = 68289282;
    v117 = 0;
    v118 = 2082;
    v119 = "";
    v120 = 2114;
    v121 = v9;
    v35 = "{msg%{public}.0s:#pla Skip #clldu-MarkZonesAsRelevant. No InterestZones, dictionary:%{public, location:escape_only}@}";
    v36 = buf;
    v37 = v39;
    v38 = 28;
  }

  _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, v35, v36, v38);
LABEL_45:
  v53 = v95;
  if (v31)
  {
    v54 = sub_100031564(v9);
    v81 = v12;
    v79 = v9;
    if ([v54 count])
    {
      v88 = [(NSMutableDictionary *)v9 objectForKey:@"BundleId"];
      v87 = [(NSMutableDictionary *)v9 objectForKey:@"BundlePath"];
      v55 = [-[NSMutableDictionary objectForKey:](v9 objectForKey:{@"InUseLevel", "unsignedIntValue"}];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v98 = [v54 countByEnumeratingWithState:&v104 objects:&v143 count:16];
      if (v98)
      {
        v85 = v103;
        v86 = v95;
        v91 = *v105;
        v84 = v55;
        obj = v54;
        v93 = v55;
        do
        {
          for (j = 0; j != v98; j = j + 1)
          {
            if (*v105 != v91)
            {
              objc_enumerationMutation(obj);
            }

            v57 = *(*&v104.f64[1] + 8 * j);
            v58 = [objc_msgSend(v57 objectForKeyedSubscript:{@"ServiceMaskOperator", "intValue"}];
            v59 = [-[NSArray objectAtIndexedSubscript:](sub_100030EA4(v57 0];
            v60 = sub_1000326F8(v57);
            v61 = [objc_msgSend(v57 objectForKey:{@"IncidentalUseMode", "unsignedIntValue"}];
            v62 = sub_10003275C(v59, v55, v60, v61, 1, 0, 0);
            v64 = v62;
            v65 = v63;
            v101 = v58;
            if (v58)
            {
              v53 &= v62;
            }

            else
            {
              v53 |= v62;
            }

            if (v58)
            {
              v66 = v63 & v103;
            }

            else
            {
              v66 = v63 | v103;
            }

            v103 = v66;
            if (p_info[244] != -1)
            {
              sub_101A81EE4();
            }

            v67 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              v68 = [v88 UTF8String];
              v96 = v53;
              v69 = [v87 UTF8String];
              v70 = [objc_msgSend(v57 objectForKeyedSubscript:{@"ZoneId", "UTF8String"}];
              *buf = 68292610;
              v117 = 0;
              v118 = 2082;
              v119 = "";
              v120 = 2082;
              v121 = v68;
              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              v122 = 2082;
              *v123 = v69;
              v53 = v96;
              *&v123[8] = 2082;
              *&v123[10] = v70;
              *&v123[18] = 2050;
              v124 = v59;
              *v125 = 2050;
              *&v125[2] = v60;
              *v126 = 2050;
              *&v126[2] = v61;
              v127 = 2050;
              v128 = v84;
              v129 = 1026;
              v130 = v64;
              v131 = 1026;
              v132 = v65;
              v133 = 1026;
              v134 = v86;
              v135 = 1026;
              v136 = v85;
              v137 = 2050;
              v138 = v101;
              v139 = 1026;
              v140 = v96;
              v141 = 1026;
              v142 = v103;
              _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#pla #clldu-UpdateServiceMask using relevant zone, bundleID:%{public, location:escape_only}s, bundlePath:%{public, location:escape_only}s, ZoneId:%{public, location:escape_only}s, zoneTransientRegistration:%{public, location:CLClientRegistrationResult}lld, zoneCC:%{public, location:CLClientCorrectiveCompensation}lld, zoneIncidentalUse:%{public, location:CLClientIncidentalUseMode}lld, zoneInUseLevel:%{public, location:CLClientInUseLevel}lld, zoneEffectiveMask:%{public}d, zoneProvisionalMask:%{public}d, ClientOldEffectiveMask:%{public}d, ClientOldProvisionalMask:%{public}d, zoneServiceMaskOptr:%{public, location:CLClientInterestZoneServiceMaskOperator}lld, ClientNewEffectiveMask:%{public}d, ClientNewProvisionalMask:%{public}d}", buf, 0x86u);
            }

            v55 = v93;
          }

          v98 = [obj countByEnumeratingWithState:&v104 objects:&v143 count:16];
        }

        while (v98);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101A81EE4();
      }

      v71 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289282;
        v117 = 0;
        v118 = 2082;
        v119 = "";
        v120 = 2114;
        v121 = v9;
        _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Skip #clldu-UpdateClientServiceTypeMasks #pla for zones. No Relevant Interest Zones, dictionary:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v53 = v95;
    }

    v95 = v53;
    v23 = v82;
    v31 = v83;
    v12 = v81;
    v9 = v79;
  }

  v72 = sub_100030EA4(v9, 0, v31, 0);
  v25 = [-[NSArray objectAtIndexedSubscript:](v72 objectAtIndexedSubscript:{1), "intValue"}];
  v99 = [-[NSArray objectAtIndexedSubscript:](v72 objectAtIndexedSubscript:{2), "intValue"}];
  v27 = v95;
LABEL_72:
  if (v25 == 8 || v25 == 1)
  {
    v73 = v23 == 3;
  }

  else
  {
    v73 = v25 == 0;
  }

  LOBYTE(v77) = v73;
  v74 = [[CLClientManagerAuthorizationContext alloc] initWithInUseLevel:v12 registrationResult:v25 transientAwareRegistrationResult:v99 serviceMaskTuple:v27 diagnosticMask:v103 authorizedForWidgetUpdates:sub_100032BA0(v9, v99, v31), v77];
  if (p_info[244] != -1)
  {
    sub_101A81EE4();
  }

  v75 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v117 = 0;
    v118 = 2082;
    v119 = "";
    v120 = 2114;
    v121 = v74;
    _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#clldu freshAuthContext, AuthContext:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  return v74;
}

BOOL sub_100032624(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = [a1 objectForKey:a2];
  v8 = [a1 objectForKey:a3];
  v9 = v8;
  if (!v7 || !v8)
  {
LABEL_5:
    v13 = v9 != 0;
    if (v7 && !v9)
    {
      return 1;
    }

    goto LABEL_9;
  }

  [v7 doubleValue];
  v11 = v10;
  [v9 doubleValue];
  if (v11 > v12)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v13 = 1;
LABEL_9:
  if (a4 <= 0.0)
  {
    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  [v9 doubleValue];
  return vabdd_f64(v16, v15) < a4;
}

uint64_t sub_1000326F8(void *a1)
{
  if (([objc_msgSend(a1 objectForKey:{@"TemporaryAuthorization", "unsignedIntValue"}] & 2) != 0)
  {
    return 1;
  }

  v2 = [a1 objectForKey:@"CorrectiveCompensationEnabled"];

  return [v2 unsignedIntValue];
}

uint64_t sub_10003275C(int a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7)
{
  if (a1 > 4)
  {
    if (a1 == 8)
    {
LABEL_6:
      v8 = 8440959;
      v9 = 52351;
      v10 = a4 == 3 && a2 == 1;
      v11 = 0x4000;
      if (v10)
      {
        v11 = 52351;
      }

      if (a2 <= 1)
      {
        v9 = v11;
      }

      if (a2 <= 3)
      {
        v8 = v9;
      }

      if (a7)
      {
        v8 |= 0x40000uLL;
      }

      v7 = v8 | 0x1000;
      goto LABEL_24;
    }

    v7 = 0;
    if (a1 == 5)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018A35E8();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2082;
        v21 = "assert";
        v22 = 2081;
        v23 = "kCLClientRegistrationResultFailedUnverified != registrationResult";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D48A0 != -1)
        {
          goto LABEL_37;
        }
      }

      while (1)
      {
        v14 = qword_1025D48A8;
        if (os_signpost_enabled(qword_1025D48A8))
        {
          *buf = 68289539;
          v17 = 0;
          v18 = 2082;
          v19 = "";
          v20 = 2082;
          v21 = "assert";
          v22 = 2081;
          v23 = "kCLClientRegistrationResultFailedUnverified != registrationResult";
          _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D48A0 != -1)
          {
            sub_1018A38B0();
          }
        }

        v15 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v17 = 0;
          v18 = 2082;
          v19 = "";
          v20 = 2082;
          v21 = "assert";
          v22 = 2081;
          v23 = "kCLClientRegistrationResultFailedUnverified != registrationResult";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
LABEL_37:
        sub_1018A38B0();
      }
    }
  }

  else
  {
    if (a1)
    {
      v7 = 0;
      if (a1 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_6;
    }

    v7 = 8453247;
    if (a6)
    {
      v7 = 8584319;
    }

    if (a7)
    {
      v7 |= 0x40000uLL;
    }
  }

LABEL_24:
  if (a3 == 2)
  {
    return v7 & 0xFFAFF8;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100032A84(int a1, int a2, char a3, unsigned int a4, char a5, char a6, int a7, int a8)
{
  if (a8)
  {
    if ((a5 & 1) != 0 || (a6 & 1) != 0 || (a3 & 1) != 0 || a4)
    {
      if (a2 | a1)
      {
        return 1;
      }

      else
      {
        return a4;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a2 | a1)
    {
      a7 = 1;
    }

    return a7 | a4;
  }
}

uint64_t sub_100032AC4(int a1, int a2, int a3, int a4, void *a5)
{
  v10 = [objc_msgSend(a5 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6548[0])), "intValue"}];
  v11 = (v10 == 3) | [objc_msgSend(a5 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6558)), "BOOLValue"}];
  v12 = (a1 == 0) & v11;
  v14 = a2 == 1 && a3 == 3;
  v15 = v14 & v11;
  if (a2 <= 1)
  {
    LOBYTE(v11) = v15;
  }

  if (a1 != 1)
  {
    LOBYTE(v11) = v12;
  }

  return (a4 != 2) & v11;
}

uint64_t sub_100032BA0(void *a1, int a2, int a3)
{
  v6 = [objc_msgSend(a1 objectForKeyedSubscript:{@"LocationRestricted", "BOOLValue"}];
  v7 = [objc_msgSend(a1 objectForKey:{@"TemporaryAuthorization", "unsignedIntValue"}];
  v8 = [objc_msgSend(a1 objectForKey:{@"CorrectiveCompensationEnabled", "unsignedIntValue"}];
  if ([a1 objectForKey:@"AuthorizationUpgradeAvailable"])
  {
    v9 = [objc_msgSend(a1 objectForKey:{@"AuthorizationUpgradeAvailable", "BOOLValue"}] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = 3;
  if (a3)
  {
    v10 = 0;
  }

  v11 = v10 | (a2 == 2);
  if (v6)
  {
    v11 |= 4uLL;
  }

  v12 = v8 == 2 && (v7 & 2) == 0;
  v13 = v11 | 0x40;
  if (!v12)
  {
    v13 = v11;
  }

  if (((a2 == 1) & v9) != 0)
  {
    v14 = v13 | 0x400;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 | (v7 << 8) & 0x800;
  if (![objc_msgSend(a1 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6540[0])), "BOOLValue"}])
  {
    v15 |= 0xD8000uLL;
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6548[0])), "intValue"}] == 2)
  {
    v15 |= 0x40000uLL;
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6550[0])), "intValue"}] == 2)
  {
    return v15 | 0x8000;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_100032D4C(int a1, int a2, int a3, int a4, void *a5)
{
  v10 = [objc_msgSend(a5 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6550[0])), "intValue"}];
  v11 = (v10 == 3) | [objc_msgSend(a5 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", off_1025D6558)), "BOOLValue"}];
  v12 = (a1 == 0) & v11;
  v14 = a2 == 1 && a3 == 3;
  v15 = v14 & v11;
  if (a2 <= 1)
  {
    LOBYTE(v11) = v15;
  }

  if (a1 != 1)
  {
    LOBYTE(v11) = v12;
  }

  return (a4 != 2) & v11;
}

uint64_t sub_100032E20(void *a1, int a2)
{
  v4 = sub_100031744(a1);
  v5 = 60.0;
  if (a2 != 2)
  {
    v5 = 0.0;
  }

  if (a2 == 1)
  {
    v5 = 10.0;
  }

  if ((v4 & 6) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -1.0;
  }

  v7 = sub_1000332E0(a1, v6);
  v8 = sub_100032EB4([a1 objectForKeyedSubscript:@"RemoteUsage"]);
  if (v8)
  {
    LODWORD(v8) = sub_1000332E0(v8, v6);
  }

  return v8 | v7;
}

id sub_100032EB4(void *a1)
{
  v22 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [a1 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (!v3)
  {
    goto LABEL_31;
  }

  v5 = v3;
  v6 = 0;
  v7 = *v24;
  *&v4 = 68289282;
  v21 = v4;
  do
  {
    v8 = 0;
    do
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v23 + 1) + 8 * v8);
      [a1 objectForKeyedSubscript:{v9, v21}];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = [a1 objectForKeyedSubscript:v9];
      if (isKindOfClass)
      {
        v12 = [v11 objectAtIndexedSubscript:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v22 setObject:v12 forKeyedSubscript:v9];
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_101A81EE4();
          }

          v13 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            *buf = v21;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2114;
            v32 = v12;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp, arr[1]:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1025D47A0 != -1)
            {
              sub_101A81EE4();
            }
          }

          v14 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            *buf = v21;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2114;
            v32 = v12;
            _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp", "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp, arr[1]:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }

        v6 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v22 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", v9), v9}];
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_101A81EE4();
          }

          v15 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            v16 = [a1 objectForKeyedSubscript:v9];
            *buf = v21;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2114;
            v32 = v16;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp, value:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1025D47A0 != -1)
            {
              sub_101A81EE4();
            }
          }

          v17 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v18 = [a1 objectForKeyedSubscript:v9];
            *buf = v21;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2114;
            v32 = v18;
            _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp", "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp, value:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }
      }

      v8 = v8 + 1;
    }

    while (v5 != v8);
    v19 = [v2 countByEnumeratingWithState:&v23 objects:v33 count:16];
    v5 = v19;
  }

  while (v19);
  if (v6)
  {
    return v22;
  }

LABEL_31:

  return a1;
}

uint64_t sub_1000332E0(void *a1, double a2)
{
  v4 = 0;
  v5 = 0;
  v6 = &off_1024AF638;
  do
  {
    if (sub_100032624(a1, *(v6 - 1), *v6, a2 - dbl_101CFD790[v4]))
    {
      v5 = dword_101CFD7E0[v4] | v5;
    }

    ++v4;
    v6 += 2;
  }

  while (v4 != 10);
  return v5;
}

id sub_100033370(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v4 isValidCKP] || objc_msgSend(*(a1 + 136), "hasValueForKey:atKeyPath:", @"TimeMissing", v4))
  {
    v4 = [*(a1 + 136) registerClient:a2 fromAuthSync:0];
    sub_10000EC00(__p, "");
    sub_100018918(a1, v4, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_100033420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10003343C(void *a1, int a2)
{
  v3 = sub_100032E20(a1, a2);
  if ((v3 & 0x240) != 0)
  {
    return 2;
  }

  if (!v3)
  {
    return 0;
  }

  v5 = [a1 objectForKeyedSubscript:@"InUseLevel"];
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && [v5 intValue] != 0;
  v7 = [a1 objectForKeyedSubscript:@"ProvisionalMonitoring"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 BOOLValue] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return (v6 | v8) & 1;
}

uint64_t sub_100033520(void *a1, int a2)
{
  v4 = [a1 objectForKey:@"BundleId"];
  v5 = [a1 objectForKey:@"BundlePath"];
  if (v4)
  {
    if (!a2)
    {
      return 1;
    }

    if ([a1 objectForKey:@"Registered"])
    {
      return 1;
    }

    if ([a1 objectForKey:@"Authorized"])
    {
      return 1;
    }

    result = [a1 objectForKey:@"Authorization"];
    if (result)
    {
      return 1;
    }
  }

  else
  {
    v7 = v5;
    if (v5)
    {
      if (sub_1000E62CC(v5))
      {
        return 4;
      }

      else
      {
        if (sub_1000E64C8(v7))
        {
          v8 = 5;
        }

        else if (sub_1000E6214(v7))
        {
          v8 = 7;
        }

        else if (sub_1000425A0(v7))
        {
          v8 = 8;
        }

        else if (sub_1000424B8(v7))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        if (sub_1000E64F4(v7))
        {
          return v8;
        }

        else
        {
          return 6;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100033640(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003B25C(a1);
  v4 = *(a1 + 175);
  if (v4 < 0)
  {
    v4 = *(a1 + 160);
  }

  sub_10003B25C(a1);
  if (v4)
  {
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      *a2 = *(a1 + 152);
      v5 = *(a1 + 168);
LABEL_10:
      *(a2 + 16) = v5;
      return;
    }

    v6 = *(a1 + 152);
    v7 = *(a1 + 160);
LABEL_23:

    sub_100007244(a2, v6, v7);
    return;
  }

  if ((*(a1 + 127) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 112))
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 127))
  {
LABEL_8:
    sub_10003B25C(a1);
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
      *a2 = *(a1 + 104);
      v5 = *(a1 + 120);
      goto LABEL_10;
    }

    v6 = *(a1 + 104);
    v7 = *(a1 + 112);
    goto LABEL_23;
  }

  if ((*(a1 + 71) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 56))
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 71))
  {
LABEL_16:
    sub_10000EC00(&v17, "com.apple.locationd.bundle-");
    v8 = *(a1 + 71);
    if (v8 >= 0)
    {
      v9 = (a1 + 48);
    }

    else
    {
      v9 = *(a1 + 48);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 71);
    }

    else
    {
      v10 = *(a1 + 56);
    }

    goto LABEL_33;
  }

  sub_10000EC00(&v17, "com.apple.locationd.executable-");
  v13 = *(a1 + 24);
  v12 = a1 + 24;
  v11 = v13;
  v14 = *(v12 + 23);
  if (v14 >= 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

  if (v14 >= 0)
  {
    v10 = *(v12 + 23);
  }

  else
  {
    v10 = *(v12 + 8);
  }

LABEL_33:
  v15 = std::string::append(&v17, v9, v10);
  v16 = *&v15->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v15->__r_.__value_.__l + 2);
  *a2 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1000337BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000337E4(void *a1, const void **a2)
{
  result = sub_1005D7C24(a1, a2);
  if (result)
  {
    sub_100126928(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_10003381C(void *a1, uint64_t a2)
{
  sub_100033A68(a1);
  v4 = a1[6];
  sub_10000E198(&v15, a1 + 1);
  v5 = (*(*v4 + 32))(v4, &v15, a2);
  if (v16)
  {
    sub_100008080(v16);
  }

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_1025D4790 != -1)
      {
        sub_101A83E24();
      }

      v6 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        v7 = a1[8];
        v8 = objc_opt_class();
        v9 = [NSStringFromClass(v8) UTF8String];
        *buf = 68289538;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2114;
        v22 = v7;
        v23 = 2082;
        v24 = v9;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to downcast objc type, clientKeyPath:%{public, location:escape_only}@, foundClass:%{public, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4790 != -1)
        {
          sub_101A83E24();
        }
      }

      v10 = qword_1025D4798;
      if (os_signpost_enabled(qword_1025D4798))
      {
        v11 = a1[8];
        v12 = objc_opt_class();
        v13 = [NSStringFromClass(v12) UTF8String];
        *buf = 68289538;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2114;
        v22 = v11;
        v23 = 2082;
        v24 = v13;
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to downcast objc type", "{msg%{public}.0s:Failed to downcast objc type, clientKeyPath:%{public, location:escape_only}@, foundClass:%{public, location:escape_only}s}", buf, 0x26u);
      }

      return 0;
    }
  }

  return v5;
}

void sub_100033A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100033A68(uint64_t result)
{
  if ((*(result + 248) & 1) == 0)
  {
    sub_101A8438C();
  }

  return result;
}

id sub_100033A84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*(*a2 + 95) < 0)
  {
    sub_100007244(v11, *(v5 + 72), *(v5 + 80));
  }

  else
  {
    *v11 = *(v5 + 72);
    v12 = *(v5 + 88);
  }

  if (*(v5 + 119) < 0)
  {
    sub_100007244(&__p, *(v5 + 96), *(v5 + 104));
  }

  else
  {
    __p = *(v5 + 96);
    v14 = *(v5 + 112);
  }

  v15 = *(v5 + 120);
  if (v12 >= 0)
  {
    v6 = v11;
  }

  else
  {
    v6 = v11[0];
  }

  v7 = sub_1000184F4(*(a1 + 8), [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v6, v11[0], v11[1], v12]]);
  if (v14 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v9 = [objc_msgSend(*(*(a1 + 8) + 136) dictionaryForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:"stringWithUTF8String:" defaultValue:{p_p), v7, &__NSDictionary0__struct), "objectForKeyedSubscript:", a3}];
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v9;
}

void sub_100033BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100033C04(id *a1, void *a2)
{
  v4 = a2;

  a1[17] = a2;
  v5 = *(*a1 + 5);

  return v5(a1);
}

uint64_t sub_100033CDC(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  v7 = sub_1000184F4(a1, a2);
  v8 = [v7 legacyClientKey];
  v9 = sub_1000317E4(a1, v7);
  v10 = a1[138];
  if (v9)
  {
    if ([v10 objectForKeyedSubscript:v8])
    {
      [a1[138] removeObjectForKey:v8];
      [a1[137] setClientsAuthorizationMap:{objc_msgSend(a1[138], "copy")}];
    }

    sub_10076D938(a1, v7, [objc_msgSend(a1[17] readonlyStoreAtKeyPath:{v7), "dictionary"}]);
    v11 = 1;
  }

  else
  {
    v12 = [objc_msgSend(v10 objectForKeyedSubscript:{v8), "isEqual:", a3}];
    if ((v12 & 1) == 0)
    {
      v13 = a1[17];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100034068;
      v15[3] = &unk_102470018;
      v15[4] = v7;
      v15[5] = a3;
      v15[6] = v8;
      v15[7] = a1;
      [v13 iterateIdentitiesRelatedToKeyPath:v7 withBlock:v15];
      [a1[137] setClientsAuthorizationMap:{objc_msgSend(a1[138], "copy")}];
    }

    v11 = v12 ^ 1;
  }

  return v11;
}

BOOL sub_100033E78(uint64_t a1, void *a2, void *a3)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      result = [CLAuthorizationDatabase keyPath:a2 sharesAuthWithKeyPath:a3];
      if (result)
      {
        if ([a2 isEqual:a3])
        {
          return 1;
        }

        [a2 cppClientKey];
        v7 = sub_10045EF04(a1 + 704, &__p);
        if (SBYTE3(v15) < 0)
        {
          operator delete(__p);
        }

        [a3 cppClientKey];
        v8 = sub_10045EF04(a1 + 704, &__p);
        v9 = a1 + 712;
        if (SBYTE3(v15) < 0)
        {
          operator delete(__p);
        }

        if (v9 == v7 && v9 == v8)
        {
          return 1;
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v10 = off_1025D47A8;
          result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            __p = 68290050;
            v12 = 2082;
            v13 = "";
            v14 = 2114;
            v15 = a2;
            v16 = 1026;
            v17 = v9 != v7;
            v18 = 2114;
            v19 = a3;
            v20 = 1026;
            v21 = v9 != v8;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Auth sharing overridden, ckpA:%{public, location:escape_only}@, ckpAIsBeneficiary:%{public}hhd, ckpB:%{public, location:escape_only}@, ckpBIsBeneficiary:%{public}hhd}", &__p, 0x32u);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_100034040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100034068(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  if (sub_100033E78(v4, *(a1 + 32), a2))
  {
    v5 = [a2 legacyClientKey];
    if (v5 && *(a1 + 40))
    {
      v6 = *(v4 + 1104);

      [v6 setObject:? forKeyedSubscript:?];
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v13 = 68289794;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        v17 = 2114;
        v18 = v8;
        v19 = 2114;
        v20 = v5;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:cacheAuthorizationContextForClient attempting to set auth context for client, but one is nil, legacyClientKey:%{public, location:escape_only}@, authSharedlegacyClientKey:%{public, location:escape_only}@, authContext:%{public, location:escape_only}@}", &v13, 0x30u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v10 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = 68289794;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        v17 = 2114;
        v18 = v11;
        v19 = 2114;
        v20 = v5;
        v21 = 2114;
        v22 = v12;
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "cacheAuthorizationContextForClient attempting to set auth context for client, but one is nil", "{msg%{public}.0s:cacheAuthorizationContextForClient attempting to set auth context for client, but one is nil, legacyClientKey:%{public, location:escape_only}@, authSharedlegacyClientKey:%{public, location:escape_only}@, authContext:%{public, location:escape_only}@}", &v13, 0x30u);
      }
    }
  }
}

id sub_100034280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v5 isValidCKP];
  if (result)
  {
    v7 = *(a1 + 136);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100034328;
    v8[3] = &unk_10246FED0;
    v8[5] = a3;
    v8[6] = a1;
    v8[4] = v5;
    return [v7 iterateIdentitiesRelatedToKeyPath:v5 withBlock:v8];
  }

  return result;
}

void sub_100034328(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  if (sub_100033E78(v4, *(a1 + 32), a2))
  {
    if (a2)
    {
      [a2 cppClientKey];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v13 = 0;
    }

    v5 = sub_1005D7C24((v4 + 1000), __p);
    v6 = v5;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      if (!v6)
      {
        return;
      }
    }

    else if (!v5)
    {
      return;
    }

    for (i = v6[7]; i; i = *i)
    {
      v8 = i[4];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v9;
          v11 = i[3];
          if (v11)
          {
            sub_100033C04(v11, *(a1 + 40));
          }

          sub_100008080(v10);
        }
      }
    }
  }
}

void sub_1000343F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000344B0(uint64_t a1, int a2)
{
  if (!a2 || ([*(a1 + 48) isAuthLimited] & 1) == 0)
  {
    return *(a1 + 48);
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 48);

  return sub_1001D2EC4(v3, v4);
}

_BYTE *sub_100034508@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = [v3 UTF8String];
  }

  else
  {
    v4 = "";
  }

  return sub_10000EC00(a2, v4);
}

void sub_100034568(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  v4 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v3), "dictionary"}];
  if (v3)
  {
    [v3 cppClientKey];
  }

  else
  {
    __p = 0;
    *v16 = 0;
    *&v16[8] = 0;
  }

  v5 = sub_1005D7C24((a1 + 1352), &__p);
  v6 = v5;
  if ((v16[15] & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = sub_1000337DC(v4);
    v7 = 0;
    goto LABEL_15;
  }

  operator delete(__p);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = v6[5];
  v8 = *(v6 + 12);
  v9 = sub_1000337DC(v4);
  if (v9 == v8)
  {
    v9 = v8;
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68290050;
      *v16 = 2082;
      *&v16[2] = "";
      *&v16[10] = 2114;
      *&v16[12] = v3;
      v17 = 2050;
      v18 = v8;
      v19 = 2050;
      v20 = v9;
      v21 = 2050;
      v22 = v7;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sbim moving arrow retain count between entity classes, Client:%{public, location:escape_only}@, oldEntityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, newEntityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", &__p, 0x3Au);
    }

    sub_10004500C(a1, v9, v7, 1, 0);
    sub_10004500C(a1, v8, v7, 0, 0);
  }

LABEL_15:
  v11 = sub_10003343C(v4, 0);
  if (v11 == v7)
  {
    v11 = v7;
  }

  else
  {
    v12 = (sub_100031744(v4) & 6) == 0 || sub_10003845C() != 1;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68290306;
      *v16 = 2082;
      *&v16[2] = "";
      *&v16[10] = 2114;
      *&v16[12] = v3;
      v17 = 2050;
      v18 = v9;
      v19 = 2050;
      v20 = v7;
      v21 = 2050;
      v22 = v11;
      v23 = 1026;
      v24 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sbim client arrow state changed, Client:%{public, location:escape_only}@, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, oldArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, newArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, dueToDeauthorization:%{public}hhd}", &__p, 0x40u);
    }

    sub_10004500C(a1, v9, v11, 1, v12);
    sub_10004500C(a1, v9, v7, 0, v12);
  }

  if (v11)
  {
    if (v3)
    {
      [v3 cppClientKey];
    }

    else
    {
      __p = 0;
      *v16 = 0;
      *&v16[8] = 0;
    }

    v14 = sub_100046778((a1 + 1352), &__p);
    v14[5] = v11;
    *(v14 + 12) = v9;
  }

  else
  {
    if (v3)
    {
      [v3 cppClientKey];
    }

    else
    {
      __p = 0;
      *v16 = 0;
      *&v16[8] = 0;
    }

    sub_1000337E4((a1 + 1352), &__p);
  }

  if ((v16[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void sub_1000348F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100034EE4@<X0>(std::string *__str@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 95) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 163) = 0u;
  *(a2 + 104) = 0u;
  result = std::string::operator=((a2 + 104), __str);
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *(a2 + 96) = 1;
  }

  return result;
}

uint64_t sub_100034F70(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  v8 = *(a2 + 98);
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 98) = v8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v9;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v10 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v10;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v11 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v11;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  v12 = *(a2 + 88);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 176) = v12;
  return a1;
}

char *sub_1000350D0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100007244(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100007244(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  v8 = *(a2 + 48);
  __dst[98] = *(a2 + 98);
  *(__dst + 48) = v8;
  if (*(a2 + 127) < 0)
  {
    sub_100007244(__dst + 104, *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v9 = *(a2 + 104);
    *(__dst + 15) = *(a2 + 15);
    *(__dst + 104) = v9;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100007244(__dst + 128, *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v10 = a2[8];
    *(__dst + 18) = *(a2 + 18);
    *(__dst + 8) = v10;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100007244(__dst + 152, *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v11 = *(a2 + 152);
    *(__dst + 21) = *(a2 + 21);
    *(__dst + 152) = v11;
  }

  v12 = *(a2 + 88);
  __dst[178] = *(a2 + 178);
  *(__dst + 88) = v12;
  return __dst;
}

void sub_100035230(_Unwind_Exception *exception_object)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

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

void sub_1000352CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (sub_100033E78(v3, *(a1 + 32), a2))
  {
    memset(v14, 0, 35);
    *v13 = 0u;
    *__p = 0u;
    memset(v12, 0, sizeof(v12));
    v15 = 0u;
    memset(v16, 0, 59);
    if (a2)
    {
      [a2 clientName];
      if (SHIBYTE(v12[0]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      *v8 = 0uLL;
      *v6 = 0uLL;
      memset(v7, 0, sizeof(v7));
      memset(v5, 0, sizeof(v5));
      *v4 = 0uLL;
    }

    *__p = *v4;
    v12[0] = v5[0];
    HIBYTE(v5[0]) = 0;
    LOBYTE(v4[0]) = 0;
    if (SHIBYTE(v12[3]) < 0)
    {
      operator delete(v12[1]);
    }

    *&v12[1] = *&v5[1];
    v12[3] = v5[3];
    HIBYTE(v5[3]) = 0;
    LOBYTE(v5[1]) = 0;
    if (SHIBYTE(v14[0]) < 0)
    {
      operator delete(v13[0]);
    }

    *v13 = *v6;
    v14[0] = v7[0];
    HIBYTE(v7[0]) = 0;
    LOBYTE(v6[0]) = 0;
    if (SHIBYTE(v14[3]) < 0)
    {
      operator delete(v14[1]);
    }

    *&v14[1] = *&v7[1];
    v14[3] = v7[3];
    HIBYTE(v7[3]) = 0;
    LOBYTE(v7[1]) = 0;
    LOWORD(v14[4]) = v7[4];
    BYTE2(v14[4]) = BYTE2(v7[4]);
    if (SBYTE7(v16[0]) < 0)
    {
      operator delete(v15);
    }

    v15 = *&v7[5];
    *&v16[0] = v7[7];
    HIBYTE(v7[7]) = 0;
    LOBYTE(v7[5]) = 0;
    if (SHIBYTE(v16[1]) < 0)
    {
      operator delete(*(&v16[0] + 1));
    }

    *(v16 + 8) = *v8;
    *(&v16[1] + 1) = *&v9[0];
    BYTE7(v9[0]) = 0;
    LOBYTE(v8[0]) = 0;
    if (SBYTE7(v16[3]) < 0)
    {
      operator delete(*&v16[2]);
      v16[2] = *(v9 + 8);
      *&v16[3] = *(&v9[1] + 1);
      HIBYTE(v9[1]) = 0;
      BYTE8(v9[0]) = 0;
      WORD4(v16[3]) = v10;
      BYTE10(v16[3]) = BYTE2(v10);
      if (SBYTE7(v9[0]) < 0)
      {
        operator delete(v8[0]);
      }
    }

    else
    {
      v16[2] = *(v9 + 8);
      *&v16[3] = *(&v9[1] + 1);
      HIBYTE(v9[1]) = 0;
      BYTE8(v9[0]) = 0;
      WORD4(v16[3]) = v10;
      BYTE10(v16[3]) = BYTE2(v10);
    }

    if (SHIBYTE(v7[7]) < 0)
    {
      operator delete(v7[5]);
    }

    if (SHIBYTE(v7[3]) < 0)
    {
      operator delete(v7[1]);
    }

    if (SHIBYTE(v7[0]) < 0)
    {
      operator delete(v6[0]);
    }

    if (SHIBYTE(v5[3]) < 0)
    {
      operator delete(v5[1]);
    }

    if (SHIBYTE(v5[0]) < 0)
    {
      operator delete(v4[0]);
    }

    LODWORD(v4[0]) = 2;
    (*(*v3 + 152))(v3, v4, __p, 0, 0xFFFFFFFFLL, 0);
    if (SBYTE7(v16[3]) < 0)
    {
      operator delete(*&v16[2]);
    }

    if (SHIBYTE(v16[1]) < 0)
    {
      operator delete(*(&v16[0] + 1));
    }

    if (SBYTE7(v16[0]) < 0)
    {
      operator delete(v15);
    }

    if (SHIBYTE(v14[3]) < 0)
    {
      operator delete(v14[1]);
    }

    if (SHIBYTE(v14[0]) < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(v12[3]) < 0)
    {
      operator delete(v12[1]);
    }

    if (SHIBYTE(v12[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100035620(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_1002F76E8(buf, a2, &v9);
      sub_100755374();
    }

    if (a4)
    {
      sub_1007AD894();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_100035AF8();
    }
  }
}

void sub_100035ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1007557A0(va);
  sub_1007557DC(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_100035BD4(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_100038238(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 8);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_100036028(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_101933664();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101933664();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLClientManager_Type::Notification, CLClientManager_Type::NotificationData, char, CLClientManager_Type::RegInfo>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLClientManager_Type::Notification, NotificationData_T = CLClientManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLClientManager_Type::RegInfo]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

_BYTE *sub_100036028(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100038238(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100036120(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t *sub_100036120(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

void sub_1000361F8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a1 + 136))
  {
    if (!*(a1 + 112))
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A48EDC();
      }

      p_info = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "onClientNotification";
        _os_log_impl(dword_100000000, p_info, OS_LOG_TYPE_FAULT, "Fence: sMessage, %{public}s, fFenceDatabase is NULL", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A49BC0();
      }

      if (!*(a1 + 112))
      {
        sub_101A4A4D4();
      }
    }

    sub_100037ACC(a4, v54);
    v10 = *a3;
    if (*a3 > 1)
    {
      if (v10 == 2)
      {
        v28 = *(a1 + 112);
        if (v28)
        {
          goto LABEL_87;
        }

        if (qword_1025D4640 != -1)
        {
          sub_101A49018();
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v29 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "kNotificationAuthorization";
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "Fence: sMessage, %{public}s, fFenceDatabase is NULL", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A49730(buf);
          LODWORD(v60) = 136446210;
          *(&v60 + 4) = "kNotificationAuthorization";
          p_info = buf;
          v42 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v42);
          if (v42 != buf)
          {
            free(v42);
          }
        }

        v28 = *(a1 + 112);
        if (v28)
        {
LABEL_87:
          __str = 0;
          *v52 = 0;
          v53 = 0;
          sub_10003BA68(v28, v54, &__str);
        }

        sub_101A4A224(buf);
      }

      else
      {
        if (v10 != 4)
        {
          goto LABEL_58;
        }

        if (*(a1 + 112))
        {
          goto LABEL_45;
        }

        if (qword_1025D4640 != -1)
        {
          sub_101A49018();
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v18 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "kNotificationLocationServicesStatus";
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "Fence: sMessage, %{public}s, fFenceDatabase is NULL", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A49730(buf);
          LODWORD(v60) = 136446210;
          *(&v60 + 4) = "kNotificationLocationServicesStatus";
          p_info = buf;
          v40 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        if (*(a1 + 112))
        {
LABEL_45:
          if (qword_1025D4640 != -1)
          {
            sub_101A49018();
          }

          v19 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            if (*(a4 + 188) == 1)
            {
              v20 = "enabled";
            }

            else
            {
              v20 = "disabled";
            }

            *buf = 136446210;
            *&buf[4] = v20;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Location services is now %{public}s; sending enable/disable notification", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A49730(buf);
            v34 = *(a4 + 188) == 1 ? "enabled" : "disabled";
            LODWORD(v60) = 136446210;
            *(&v60 + 4) = v34;
            v35 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v35);
            if (v35 != buf)
            {
              free(v35);
            }
          }

          if (*(a1 + 176))
          {
            [*(a1 + 192) setObject:0 forKeyedSubscript:?];
          }

          __p = 256;
          memset(buf, 0, sizeof(buf));
          if (*(a4 + 188) != 1)
          {
            HIBYTE(__p) = 0;
            sub_1008EC1C4(*(a1 + 112));
          }

          LODWORD(v60) = 3;
          (*(*a1 + 152))(a1, &v60, buf, 1, 0xFFFFFFFFLL, 0);
          sub_100CAA68C(a1);
          *&v60 = buf;
          v21 = &v60;
          goto LABEL_105;
        }

        sub_101A49CC4(buf);
      }
    }

    else
    {
      if (v10)
      {
        if (v10 == 1)
        {
          if (*(a1 + 112))
          {
            goto LABEL_20;
          }

          if (qword_1025D4640 != -1)
          {
            sub_101A49018();
          }

          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          v11 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446210;
            *&buf[4] = "kNotificationUninstallation";
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Fence: sMessage, %{public}s, fFenceDatabase is NULL", buf, 0xCu);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101A49730(buf);
            LODWORD(v60) = 136446210;
            *(&v60 + 4) = "kNotificationUninstallation";
            p_info = buf;
            v39 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v39);
            if (v39 != buf)
            {
              free(v39);
            }
          }

          if (*(a1 + 112))
          {
LABEL_20:
            if (qword_1025D4640 != -1)
            {
              sub_101A49018();
            }

            v12 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              sub_10003B25C(a4);
              v13 = a4 + 104;
              if (*(a4 + 127) < 0)
              {
                v13 = *(a4 + 104);
              }

              *buf = 136446210;
              *&buf[4] = v13;
              _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Removing fences for uninstalled app %{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A49730(buf);
              sub_10003B25C(a4);
              v37 = a4 + 104;
              if (*(a4 + 127) < 0)
              {
                v37 = *(a4 + 104);
              }

              LODWORD(v60) = 136446210;
              *(&v60 + 4) = v37;
              v38 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v38);
              if (v38 != buf)
              {
                free(v38);
              }
            }

            sub_10003B25C(a4);
            sub_100CAB7E0(a1, a4 + 104);
            sub_100CAB20C(a1, v54, 0);
            goto LABEL_106;
          }

          sub_101A4A37C(buf);
          goto LABEL_115;
        }

LABEL_58:
        if (qword_1025D4640 != -1)
        {
          sub_101A49018();
        }

        v22 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *a3;
          *buf = 67240192;
          *&buf[4] = v23;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Got unknown client notification %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A49730(buf);
          v24 = *a3;
          LODWORD(v60) = 67240192;
          DWORD1(v60) = v24;
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        goto LABEL_106;
      }

      if (*(a1 + 112))
      {
        goto LABEL_72;
      }

      if (qword_1025D4640 != -1)
      {
        sub_101A49018();
      }

      v26 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "kNotificationReset";
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "Fence: sMessage, %{public}s, fFenceDatabase is NULL", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A49730(buf);
        LODWORD(v60) = 136446210;
        *(&v60 + 4) = "kNotificationReset";
        v41 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v41);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      if (*(a1 + 112))
      {
LABEL_72:
        if (qword_1025D4640 != -1)
        {
          sub_101A49018();
        }

        v27 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#Warning Reset received; sending reset notification", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A49730(buf);
          LOWORD(v60) = 0;
          v36 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        if (*(a1 + 176))
        {
          [*(a1 + 192) setObject:0 forKeyedSubscript:?];
        }

        *buf = 2;
        (*(*a1 + 144))(a1, buf, 1, 0xFFFFFFFFLL);
        goto LABEL_106;
      }

      sub_101A49E1C(buf);
    }

LABEL_115:
    abort_report_np();
    __break(1u);
    sub_101A49018();
    isa = p_info[201].isa;
    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEBUG))
    {
      v31 = v54;
      if (v55 < 0)
      {
        v31 = v54[0];
      }

      *buf = 134349314;
      *&buf[4] = 0xEF7BDEF7BDEF7BDFLL * ((*(&v60 + 1) - v60) >> 3);
      *&buf[12] = 2082;
      *&buf[14] = v31;
      _os_log_impl(dword_100000000, isa, OS_LOG_TYPE_DEBUG, "Fence: Removing denied fences,%{public}lu, for bundle,%{public}s.", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A49730(buf);
      v43 = v54;
      if (v55 < 0)
      {
        v43 = v54[0];
      }

      v56 = 134349314;
      v57 = 0xEF7BDEF7BDEF7BDFLL * ((*(&v60 + 1) - v60) >> 3);
      v58 = 2082;
      v59 = v43;
      v44 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    if (v48[0] != v6)
    {
      sub_1008EC580(*(a1 + 112), (v48[0] + 32));
    }

    *buf = 1;
    (*(*a1 + 152))(a1, buf, &v60, 0, 0xFFFFFFFFLL, 0);
    sub_100CAB20C(a1, v54, 0);
    if (v50 != v49)
    {
      if (*(v5 + 1600) != -1)
      {
        sub_101A49018();
      }

      v32 = p_info[201].isa;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = v54;
        if (v55 < 0)
        {
          v33 = v54[0];
        }

        *buf = 134349314;
        *&buf[4] = 0xEF7BDEF7BDEF7BDFLL * ((v50 - v49) >> 3);
        *&buf[12] = 2082;
        *&buf[14] = v33;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "Fence: Adding authorized fences,%{public}lu, for bundle,%{public}s.", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A49730(buf);
        v45 = v54;
        if (v55 < 0)
        {
          v45 = v54[0];
        }

        v56 = 134349314;
        v57 = 0xEF7BDEF7BDEF7BDFLL * ((v50 - v49) >> 3);
        v58 = 2082;
        v59 = v45;
        v46 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceAuthorizationManager::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v46);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      *buf = 0;
      (*(*a1 + 152))(a1, buf, &v49, 0, 0xFFFFFFFFLL, 0);
      sub_100CAB20C(a1, v54, 1);
    }

    sub_100CB2D20(v47, v47[1]);
    sub_100CB2D20(v48, v48[1]);
    *buf = &v49;
    sub_10003F404(buf);
    *buf = &v60;
    sub_10003F404(buf);
    *buf = &__str;
    v21 = buf;
LABEL_105:
    sub_10003F404(v21);
LABEL_106:
    if ((v55 & 0x80000000) == 0)
    {
      return;
    }

    v17 = v54[0];
    goto LABEL_108;
  }

  if (qword_1025D4640 != -1)
  {
    sub_101A48EDC();
  }

  v14 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 136);
    sub_100037ACC(a4, &v60);
    v16 = v61 >= 0 ? &v60 : v60;
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v15;
    __p = 2082;
    __p_2 = v16;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Ignoring notification, WasUnlockedSinceBoot:%{public}hhd, client:%{public, location:escape_only}s}", buf, 0x22u);
    if (v61 < 0)
    {
      v17 = v60;
LABEL_108:
      operator delete(v17);
    }
  }
}

void sub_1000379A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char *a44)
{
  sub_100CB2D20(&a13, a14);
  sub_100CB2D20(&a16, a17);
  a44 = &a19;
  sub_10003F404(&a44);
  a44 = &a36;
  sub_10003F404(&a44);
  a44 = &a23;
  sub_10003F404(&a44);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100037ACC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100033640(a1, v24);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    *a2 = *v24;
    *(a2 + 16) = v25;
    v24[1] = 0;
    v25 = 0;
    v24[0] = 0;
    goto LABEL_49;
  }

  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    if (*(a1 + 8))
    {
LABEL_4:
      if (v4 >= 0)
      {
        v5 = *(a1 + 23);
      }

      else
      {
        v5 = *(a1 + 8);
      }

      v6 = v26;
      sub_100070148(v26, v5 + 1);
      if (v26[23] < 0)
      {
        v6 = *v26;
      }

      if (v5)
      {
        if (*(a1 + 23) >= 0)
        {
          v7 = a1;
        }

        else
        {
          v7 = *a1;
        }

        memmove(v6, v7, v5);
      }

      *&v6[v5] = 58;
      if (v25 >= 0)
      {
        v8 = v24;
      }

      else
      {
        v8 = v24[0];
      }

      if (v25 >= 0)
      {
        v9 = HIBYTE(v25);
      }

      else
      {
        v9 = v24[1];
      }

      v10 = std::string::append(v26, v8, v9);
      *a2 = *v10;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if ((v26[23] & 0x80000000) != 0)
      {
        v11 = *v26;
LABEL_48:
        operator delete(v11);
        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_4;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101BB7F78();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v13 = v24;
    if (v25 < 0)
    {
      v13 = v24[0];
    }

    *v26 = 68289282;
    *&v26[8] = 2082;
    *&v26[10] = "";
    *&v26[18] = 2082;
    *&v26[20] = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Multi-User fUserName is empty, userlessKey:%{public, location:escape_only}s}", v26, 0x1Cu);
  }

  sub_10000EC00(&v23, "none");
  sub_10000EC00(__p, ":");
  if ((v22 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v15 = v22;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v23, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v26[16] = *(&v16->__r_.__value_.__l + 2);
  *v26 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v25 >= 0)
  {
    v18 = v24;
  }

  else
  {
    v18 = v24[0];
  }

  if (v25 >= 0)
  {
    v19 = HIBYTE(v25);
  }

  else
  {
    v19 = v24[1];
  }

  v20 = std::string::append(v26, v18, v19);
  *a2 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if ((v26[23] & 0x80000000) != 0)
  {
    operator delete(*v26);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v23.__r_.__value_.__r.__words[0];
    goto LABEL_48;
  }

LABEL_49:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_100037D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

id sub_100037E18(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101935E78();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D752 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101935E8C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101935E78();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D752 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101935F84();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_10003801C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A48EA0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFenceAuthorizationManager::onClientNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A48EB4();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFenceAuthorizationManager::onClientNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000361F8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1000381E8(uint64_t a1, int a2, void *a3)
{
  result = sub_100038238(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_100038238(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100037E18(a1);
}

void sub_100038298(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onClientManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
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
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onClientManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_10003B8B8(a4, v6, a2);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10003845C()
{
  v0 = sub_1000193E0();
  if (byte_102636EF8)
  {
    v1 = 1;
  }

  else
  {
    v1 = v0;
  }

  if (v0 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

void (__cdecl ***sub_10003848C(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100038A3C((a1 + 3), 24);
  return a1;
}

void sub_100038708(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100038730(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100038C00(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100038870(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100038850);
}

void sub_1000388D8(uint64_t a1, char *a2)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  sub_100038DE8(a1, a2);
  operator new();
}

uint64_t sub_1000389F0(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100038A3C(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100038AF8(a1);
  return a1;
}

void sub_100038AD0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100038AF8(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_100038C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100038DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sqlite3_stmt *sub_100038DE8(uint64_t a1, char *a2)
{
  if (((*(**(a1 + 16) + 40))(*(a1 + 16)) & 1) == 0)
  {
    sub_1018E5854();
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v4 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v5 = *v5;
    }

    v9 = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2081;
    v14 = a2;
    v15 = 2082;
    v16 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Preparing statement for database, query:%{private, location:escape_only}s, path:%{public, location:escape_only}s}", &v9, 0x26u);
  }

  v6 = sub_100038FF4(*(a1 + 8), a2);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57E8();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v9 = 68289282;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2050;
    v14 = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Prepared statement, statement:%{public}p}", &v9, 0x1Cu);
  }

  return v6;
}

BOOL sub_100038FB4(uint64_t a1)
{
  [*(*(a1 + 8) + 64) assertInside];
  v2 = *(*(a1 + 8) + 80);
  return v2 == pthread_self();
}

sqlite3_stmt *sub_100038FF4(sqlite3_stmt *result, char *__s)
{
  if (result)
  {
    v3 = result;
    pzTail = 0;
    ppStmt = 0;
    v4 = strlen(__s);
    v11 = sqlite3_prepare_v2(v3, __s, v4, &ppStmt, &pzTail);
    if (v11)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v5 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        v6 = sqlite3_errmsg(v3);
        *buf = 68290051;
        *&buf[4] = 0;
        v15 = 2082;
        v16 = "";
        v17 = 2081;
        v18 = __s;
        v19 = 1040;
        v20 = 4;
        v21 = 2098;
        v22 = &v11;
        v23 = 2081;
        v24 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not prepare statement, query:%{private, location:escape_only}s, rc:%{public, location:SqliteResult}.*P, errmsg:%{private, location:escape_only}s}", buf, 0x36u);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }
      }

      v7 = off_1025D4858;
      if (os_signpost_enabled(off_1025D4858))
      {
        v8 = sqlite3_errmsg(v3);
        *buf = 68290051;
        *&buf[4] = 0;
        v15 = 2082;
        v16 = "";
        v17 = 2081;
        v18 = __s;
        v19 = 1040;
        v20 = 4;
        v21 = 2098;
        v22 = &v11;
        v23 = 2081;
        v24 = v8;
        _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not prepare statement", "{msg%{public}.0s:Could not prepare statement, query:%{private, location:escape_only}s, rc:%{public, location:SqliteResult}.*P, errmsg:%{private, location:escape_only}s}", buf, 0x36u);
      }

      v9 = sqlite3_db_filename(v3, 0);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = "";
      }

      sub_10000EC00(buf, v10);
      sub_10060AF58(v3, buf, 0, v11);
      if (SBYTE3(v18) < 0)
      {
        operator delete(*buf);
      }

      return 0;
    }

    else
    {
      return ppStmt;
    }
  }

  return result;
}

void sub_100039240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100039290(uint64_t a1)
{
  sub_10003933C(a1);

  operator delete();
}

void *sub_1000392D4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1024B27E8;
  a1[1] = a2;
  a1[2] = a3;
  sub_100039264(a2);
  *a1 = off_1024B2808;
  return a1;
}

void *sub_10003933C(uint64_t a1)
{
  *a1 = off_1024B2808;
  v2 = sqlite3_finalize(*(a1 + 16));
  *(a1 + 16) = 0;
  if (v2)
  {
    sub_10060A6E4(*(a1 + 8), "sqlite3_finalize()", v2, 0);
    sub_100608EB0(*(a1 + 8), v2);
  }

  return sub_1000393EC(a1);
}

void *sub_1000393EC(void *a1)
{
  *a1 = off_1024B27E8;
  sub_1000392C8(a1[1]);
  return a1;
}

void sub_100039440(uint64_t a1)
{
  if (*(a1 + 973) == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v1 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v3 = 68289026;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v2 = "{msg%{public}.0s:#uploadTimer already locked}";
LABEL_10:
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, v2, &v3, 0x12u);
    }
  }

  else
  {
    *(a1 + 973) = 1;
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v1 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v3 = 68289026;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v2 = "{msg%{public}.0s:#uploadTimer locked}";
      goto LABEL_10;
    }
  }
}

void sub_100039584(uint64_t a1)
{
  if (*(a1 + 973))
  {
    *(a1 + 973) = 0;
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#uploadTimer unlocked}", &v6, 0x12u);
    }

    if (*(a1 + 974) == 1)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v3 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        v6 = 68289026;
        v7 = 0;
        v8 = 2082;
        v9 = "";
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:cleaning dirty #uploadTimer times}", &v6, 0x12u);
      }

      v4 = sub_1005731B4(a1);
      sub_100572DDC(a1, v4);
      *(a1 + 974) = 0;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v5 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#uploadTimer already unlocked}", &v6, 0x12u);
    }
  }
}

__int128 **sub_1000397A8(__int128 **result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xEF7BDEF7BDEF7BDFLL * (v4 >> 3);
    v15 = result;
    if (v1 != v2)
    {
      sub_1008C983C(result, 0xEF7BDEF7BDEF7BDFLL * (v4 >> 3));
    }

    v7 = 8 * (v4 >> 3);
    v12 = 0;
    v13 = 248 * v6;
    v14 = 248 * v6;
    if (0xEF7BDEF7BDEF7BDFLL * (v3 >> 3))
    {
      v8 = result[1];
      v9 = (v7 + v2 - v8);
      sub_1008C9BD8(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return sub_10023DFA0(&v12);
  }

  return result;
}

void sub_10003989C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10023DFA0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100039888);
}

void sub_1000398C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isAuthorizedForServiceTypeMask:16];
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Received Motion Calibration & Distance, permission:%{public}hhd}", v6, 0x18u);
  }

  sub_100039B9C(v2 + 6648, v3);
  if (v3 && *(v2 + 8952) != 2)
  {
    v5 = *(v2 + 10144) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  sub_100039B28(v2 + 6648, v5 & 1);
}

void sub_1000399F4(uint64_t a1, int a2)
{
  if (*(a1 + 32) != a2)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A9DA68();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6[0] = 68289538;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 1026;
      v10 = v5;
      v11 = 1026;
      v12 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Background escalation manager permission changed, from:%{public}hhd, to:%{public}hhd}", v6, 0x1Eu);
    }
  }

  *(a1 + 32) = a2;
  sub_10001A3E8();
  if (sub_100039B30() && sub_1000C0620(*(a1 + 104)) > 0.0 && *(a1 + 32) == 1)
  {
    sub_1000B92AC(a1 + 184, 1);
  }
}

BOOL sub_100039B30()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 89) > 0x2C || ((1 << (dword_1026592D0 - 89)) & 0x1FFFFFFC3FCFLL) == 0)
  {
    return dword_1026592D0 == 280;
  }

  return result;
}

uint64_t sub_100039BA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_100039BE8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100039BE8(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
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

uint64_t sub_100039C7C(uint64_t a1)
{
  sub_10001A3E8();
  if ((sub_10001CF04() & 1) != 0 || (sub_10001A3E8(), (sub_10003FFF8()) || (sub_10001A3E8(), (sub_100719448()) || (sub_10001A3E8(), sub_1000F42C0())) && (((*(**(a1 + 56) + 72))(*(a1 + 56)) & 2) != 0 || ((*(**(a1 + 56) + 72))(*(a1 + 56)) & 8) != 0))
  {
    v2 = *(a1 + 1704);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_100039D5C(uint64_t a1)
{
  if (*(a1 + 88))
  {
    return;
  }

  if (*(a1 + 280))
  {
    if ((*(*a1 + 120))(a1))
    {
      if ((*(*a1 + 152))(a1))
      {
        (*(**(a1 + 56) + 24))(*(a1 + 56), *(a1 + 16), 0);
        *(a1 + 88) = 1;
        if (qword_1025D47D0 != -1)
        {
          sub_101A3BD14();
        }

        v2 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
        {
          v3 = *(a1 + 16);
          v9 = 68289283;
          v10 = 0;
          v11 = 2082;
          v12 = "";
          v13 = 2049;
          v14 = v3;
          _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:harvesting enabled, subHarvester:%{private, location:CLSubHarvesterIdentifier}lld}", &v9, 0x1Cu);
        }

        v4 = (*(**(a1 + 40) + 24))(*(a1 + 40));
        (*(*a1 + 112))(a1, v4);
        sub_1002CEC90(a1);
      }

      return;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101A3BD14();
    }

    v5 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 16);
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2049;
      v14 = v8;
      v7 = "{msg%{public}.0s:cannot be enabled: not supported, subHarvester:%{private, location:CLSubHarvesterIdentifier}lld}";
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A3BD14();
    }

    v5 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 16);
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2049;
      v14 = v6;
      v7 = "{msg%{public}.0s:cannot be enabled: disabled by harvest rule, subHarvester:%{private, location:CLSubHarvesterIdentifier}lld}";
LABEL_18:
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, v7, &v9, 0x1Cu);
    }
  }
}

uint64_t sub_10003A038()
{
  sub_10001A3E8();

  return sub_10003A088();
}

uint64_t sub_10003A088()
{
  if (qword_102659140 != -1)
  {
    sub_10191BF88();
  }

  return dword_102659138;
}

void sub_10003A0C8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B66EF8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBeaconFenceAuthorizationManager::onClientManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B66F0C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBeaconFenceAuthorizationManager::onClientManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10003AC40(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10003A294(uint64_t a1, uint64_t *a2)
{
  v2[0] = v2;
  v2[1] = v2;
  v2[2] = 0;
  sub_10003CC98(a1 + 128, a2, v2);
}

void sub_10003AB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, char a32, void *a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_10003DD44(&a25);
  sub_100CB2D20(&a29, a30);
  sub_100CB2D20(&a32, a33);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_10003DD44(&a55);
  sub_10003DD44(&a48);
  _Unwind_Resume(a1);
}

void sub_10003AC40(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = *a3;
  if (*a3 > 1)
  {
    if (v6 == 2)
    {
      sub_100037ACC(a4, __p);
      if (qword_1025D4610 != -1)
      {
        sub_101B66E78();
      }

      v12 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
      {
        v13 = __p;
        if (v17 < 0)
        {
          v13 = __p[0];
        }

        *buf = 136380675;
        v21[0] = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "iB: Received authorization for bundle,%{private}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B66EA0(buf);
        v14 = __p;
        if (v17 < 0)
        {
          v14 = __p[0];
        }

        v18 = 136380675;
        v19 = v14;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLBeaconFenceAuthorizationManager::onClientManagerNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      sub_10003A294(a1, __p);
    }

    if (v6 == 4)
    {
      if (qword_1025D4610 != -1)
      {
        sub_101B66EE4();
      }

      v9 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a4 + 188);
        *buf = 67240192;
        LODWORD(v21[0]) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "iB: Received location services status,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B67154();
      }

      if (*(a4 + 188) == 1)
      {
        sub_1011E2890(a1, 1);
      }

      else
      {
        sub_1011E29AC(a1, 1);
      }
    }
  }

  else
  {
    if (!v6)
    {
      if (qword_1025D4610 != -1)
      {
        sub_101B66EE4();
      }

      v11 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        LODWORD(v21[0]) = 0;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = "";
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:iB: Reset authorization by toggling beacon fences}", buf, 0x12u);
      }

      sub_1011E2F04(a1);
    }

    if (v6 == 1)
    {
      sub_10003B25C(a4);
      if (qword_1025D4610 != -1)
      {
        sub_101B66EE4();
      }

      v7 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
      {
        if (*(a4 + 127) >= 0)
        {
          v8 = a4 + 104;
        }

        else
        {
          v8 = *(a4 + 104);
        }

        *buf = 136380675;
        v21[0] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "iB: Received uninstall for bundle,%{private}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B67260(a4);
      }

      sub_1011E2ACC(a1, (a4 + 104));
    }
  }
}

void sub_10003B068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003B090(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101951884();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCachedLocationController::onClientManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101951898();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCachedLocationController::onClientManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10003D7BC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10003B25C(uint64_t a1)
{
  if ((*(a1 + 176) & 1) == 0 && *(a1 + 96) == 1)
  {
    v33 = 0;
    v34 = 0;
    v3 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      if (!*(a1 + 56))
      {
LABEL_12:
        v8 = *(a1 + 127);
        if (v8 < 0)
        {
          if (!*(a1 + 112))
          {
            goto LABEL_24;
          }
        }

        else if (!*(a1 + 127))
        {
          goto LABEL_24;
        }

        v9 = (a1 + 104);
        v10 = [LSApplicationExtensionRecord alloc];
        if (*(a1 + 127) < 0)
        {
          v9 = *v9;
        }

        v7 = [v10 initWithBundleIdentifier:+[NSString stringWithUTF8String:](NSString error:{"stringWithUTF8String:", v9), &v34}];
LABEL_19:
        v11 = v7;
        if (v7)
        {
          if ((*(a1 + 127) & 0x8000000000000000) != 0)
          {
            if (!*(a1 + 112))
            {
LABEL_49:
              v23 = 1;
              goto LABEL_50;
            }
          }

          else if (!*(a1 + 127))
          {
            goto LABEL_49;
          }

          std::string::operator=((a1 + 128), (a1 + 104));
          v24 = [-[NSObject containingBundleRecord](v11 "containingBundleRecord")];
          if (v24)
          {
            sub_100006044((a1 + 104), [v24 UTF8String]);
          }

          goto LABEL_49;
        }

        LOBYTE(v8) = *(a1 + 127);
LABEL_24:
        if ((v8 & 0x80) != 0 && *(a1 + 112) == 32)
        {
          v12 = (a1 + 104);
          v13 = *(a1 + 104);
          v14 = *v13;
          v15 = v13[1];
          v17 = v13[2];
          v16 = v13[3];
          v18 = v14 == 0x6C7070612E6D6F63 && v15 == 0x472E7370614D2E65;
          v19 = v18 && v17 == 0x614D6C6172656E65;
          if (v19 && v16 == 0x7465676469577370)
          {
            if (qword_1025D47A0 != -1)
            {
              sub_101BB7F78();
            }

            v21 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a1 + 127) < 0)
              {
                v12 = *v12;
              }

              v22 = (a1 + 48);
              if (*(a1 + 71) < 0)
              {
                v22 = *v3;
              }

              *buf = 68289538;
              *&buf[4] = 0;
              v36 = 2082;
              v37 = "";
              v38 = 2082;
              v39 = v12;
              v40 = 2082;
              v41 = v22;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Map's widget didn't get auto-masquerade correctly., BundleId:%{public, location:escape_only}s, BundlePath:%{public, location:escape_only}s}", buf, 0x26u);
            }
          }
        }

        v23 = 0;
        v11 = 0;
LABEL_50:
        *(a1 + 178) = 0;
        v1 = (a1 + 104);
        if (*(a1 + 127) < 0)
        {
          if (!*(a1 + 112))
          {
            goto LABEL_58;
          }

          v25 = *v1;
        }

        else
        {
          v25 = (a1 + 104);
          if (!*(a1 + 127))
          {
            goto LABEL_58;
          }
        }

        v26 = [[LSApplicationRecord alloc] initWithBundleIdentifier:+[NSString stringWithUTF8String:](NSString allowPlaceholder:"stringWithUTF8String:" error:{v25), 0, &v33}];
        v27 = v26;
        if (v26)
        {
          if ([v26 appClipMetadata])
          {
            *(a1 + 178) = 1;
          }

          goto LABEL_67;
        }

LABEL_58:
        if (v23)
        {
LABEL_66:
          v27 = 0;
LABEL_67:

          *(a1 + 176) = 1;
          return;
        }

        if (qword_1025D47A0 == -1)
        {
LABEL_60:
          v28 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            if (*(a1 + 127) < 0)
            {
              v1 = *v1;
            }

            if (*(a1 + 71) < 0)
            {
              v3 = *v3;
            }

            *buf = 68290050;
            *&buf[4] = 0;
            v36 = 2082;
            v37 = "";
            v38 = 2082;
            v39 = v1;
            v40 = 2082;
            v41 = v3;
            v42 = 2114;
            v43 = v34;
            v44 = 2114;
            v45 = v33;
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The given bundleId or bundlePath is not a plugin or an app, bundleId:%{public, location:escape_only}s, bundlePath:%{public, location:escape_only}s, errorExtensionRecord:%{public, location:escape_only}@, errorApplicationRecord:%{public, location:escape_only}@}", buf, 0x3Au);
          }

          goto LABEL_66;
        }

LABEL_86:
        sub_101BB7F78();
        goto LABEL_60;
      }

      v4 = *v3;
    }

    else
    {
      v4 = (a1 + 48);
      if (!*(a1 + 71))
      {
        goto LABEL_12;
      }
    }

    if (![NSString stringWithUTF8String:v4])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101BB7F64();
      }

      v29 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v30 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v30 = *v3;
        }

        *buf = 68289795;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = v30;
        v40 = 2082;
        v41 = "assert";
        v42 = 2081;
        v43 = "@(fBundlePath.c_str())";
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:fBundlePath to NSString failed., fBundlePath:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47A0 != -1)
        {
          sub_101BB7F78();
        }
      }

      v31 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v32 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v32 = *v3;
        }

        *buf = 68289795;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = v32;
        v40 = 2082;
        v41 = "assert";
        v42 = 2081;
        v43 = "@(fBundlePath.c_str())";
        _os_signpost_emit_with_name_impl(dword_100000000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "fBundlePath to NSString failed.", "{msg%{public}.0s:fBundlePath to NSString failed., fBundlePath:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47A0 != -1)
        {
          sub_101BB7F78();
        }
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 71) < 0)
        {
          v3 = *v3;
        }

        *buf = 68289795;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = v3;
        v40 = 2082;
        v41 = "assert";
        v42 = 2081;
        v43 = "@(fBundlePath.c_str())";
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:fBundlePath to NSString failed., fBundlePath:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      abort_report_np();
      __break(1u);
      goto LABEL_86;
    }

    v5 = [LSApplicationExtensionRecord alloc];
    v6 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v6 = *v3;
    }

    v7 = [v5 initWithURL:+[NSURL fileURLWithPath:isDirectory:](NSURL error:{"fileURLWithPath:isDirectory:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v6), 1), &v34}];
    goto LABEL_19;
  }
}

id sub_10003B8B8(id result, uint64_t a2, int *a3)
{
  if (*a3 <= 4 && ((1 << *a3) & 0x15) != 0)
  {
    v5 = result;
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a3;
      LODWORD(v10[0]) = 67240192;
      HIDWORD(v10[0]) = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Received an authorization notification %{public}d. Checking bundle permissions.", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904574(a3);
    }

    v8 = *(v5 + 1283);
    v9 = [NSString stringWithUTF8String:"com.apple.locationd.bundle-/System/Library/LocationBundles/MotionCalibration.bundle"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000398C4;
    v10[3] = &unk_1024689D0;
    v10[4] = v5;
    result = [v8 getAuthorizationContextOfNonZonalClient:v9 withReply:v10];
    if (!*a3)
    {
      return [objc_msgSend(objc_msgSend(*(v5 + 4) "vendor")];
    }
  }

  return result;
}

void sub_10003BA68(uint64_t a1, uint64_t a2, void ***a3)
{
  sub_10003DBB0(a3);
  sub_10000FF38(&v55, "CLFenceDatabase::getFencesForBundleIncludingOnBehalf", 0);
  sub_10003848C(&v50);
  v4 = sub_100038730(v51, "SELECT ", 7);
  v5 = sub_100038730(v4, "BundleId", 8);
  v6 = sub_100038730(v5, ", ", 2);
  v7 = sub_100038730(v6, "Name", 4);
  v8 = sub_100038730(v7, ", ", 2);
  v9 = sub_100038730(v8, "Distance", 8);
  v10 = sub_100038730(v9, ", ", 2);
  v11 = sub_100038730(v10, "DesiredAccuracy", 15);
  v12 = sub_100038730(v11, ", ", 2);
  v13 = sub_100038730(v12, "SetupComplete", 13);
  v14 = sub_100038730(v13, ", ", 2);
  v15 = sub_100038730(v14, "Timestamp", 9);
  v16 = sub_100038730(v15, ", ", 2);
  v17 = sub_100038730(v16, "MonitorFlags", 12);
  v18 = sub_100038730(v17, ", ", 2);
  v19 = sub_100038730(v18, "OnBehalfBundleId", 16);
  v20 = sub_100038730(v19, ", ", 2);
  v21 = sub_100038730(v20, "ReferenceFrame", 14);
  v22 = sub_100038730(v21, ", ", 2);
  v23 = sub_100038730(v22, "FenceForeignKey", 15);
  v24 = sub_100038730(v23, ", ", 2);
  v25 = sub_100038730(v24, "HandoffTag", 10);
  v26 = sub_100038730(v25, ", ", 2);
  v27 = sub_100038730(v26, "FenceHandOffDeviceId", 20);
  v28 = sub_100038730(v27, ".", 1);
  v29 = sub_100038730(v28, "DeviceId", 8);
  v30 = sub_100038730(v29, " FROM ", 6);
  v31 = sub_100038730(v30, "GeoFence", 8);
  v32 = sub_100038730(v31, " INNER JOIN ", 12);
  v33 = sub_100038730(v32, "FenceHandOffDeviceId", 20);
  v34 = sub_100038730(v33, " ON ", 4);
  v35 = sub_100038730(v34, "GeoFence", 8);
  v36 = sub_100038730(v35, ".", 1);
  v37 = sub_100038730(v36, "DeviceIdIndex", 13);
  v38 = sub_100038730(v37, " = ", 3);
  v39 = sub_100038730(v38, "FenceHandOffDeviceId", 20);
  v40 = sub_100038730(v39, ".", 1);
  v41 = sub_100038730(v40, "DeviceIdIndex", 13);
  v42 = sub_100038730(v41, " WHERE ", 7);
  v43 = sub_100038730(v42, "BundleId", 8);
  v44 = sub_100038730(v43, "=? OR ", 6);
  v45 = sub_100038730(v44, "OnBehalfBundleId", 16);
  sub_100038730(v45, "=?", 2);
  if ((v54 & 0x10) != 0)
  {
    v47 = v53;
    if (v53 < v52)
    {
      v53 = v52;
      v47 = v52;
    }

    v48 = v51[6];
  }

  else
  {
    if ((v54 & 8) == 0)
    {
      v46 = 0;
      v57 = 0;
      goto LABEL_14;
    }

    v48 = v51[3];
    v47 = v51[5];
  }

  v46 = v47 - v48;
  if ((v47 - v48) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v46 >= 0x17)
  {
    operator new();
  }

  v57 = v47 - v48;
  if (v46)
  {
    memmove(&__dst, v48, v46);
  }

LABEL_14:
  *(&__dst + v46) = 0;
  if (v57 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1, p_dst);
}

void sub_10003CB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  sub_10026C504(&a54);
  sub_10001A420(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void sub_10003CC98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10003848C(&v33);
  if (qword_1025D4610 != -1)
  {
    sub_101B66AFC();
  }

  v6 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 136380675;
    *&buf[4] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "iB: Retrieving fences for bundle,%{private}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B66B24(buf);
    v31 = *(a2 + 23) >= 0 ? a2 : *a2;
    v36 = 136380675;
    v37 = v31;
    v32 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBeaconFenceDatabase::getFencesForBundleIncludingOnBehalf(const std::string &, CLBTLEBeaconRegion_Type::MonitoredRegions &)", "%s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  sub_10000FF38(&v36, "CLBeaconFenceDatabase::getFencesForBundleIncludingOnBehalf", 0);
  v8 = sub_100038730(&v34, "SELECT ", 7);
  v9 = sub_100038730(v8, "BundleIdentifier", 16);
  v10 = sub_100038730(v9, ", ", 2);
  v11 = sub_100038730(v10, "Identifier", 10);
  v12 = sub_100038730(v11, ", ", 2);
  v13 = sub_100038730(v12, "ProximityUUID", 13);
  v14 = sub_100038730(v13, ", ", 2);
  v15 = sub_100038730(v14, "Major", 5);
  v16 = sub_100038730(v15, ", ", 2);
  v17 = sub_100038730(v16, "Minor", 5);
  v18 = sub_100038730(v17, ", ", 2);
  v19 = sub_100038730(v18, "DefinitionMask", 14);
  v20 = sub_100038730(v19, ", ", 2);
  v21 = sub_100038730(v20, "Options", 7);
  v22 = sub_100038730(v21, ", ", 2);
  v23 = sub_100038730(v22, "OnBehalfBundleIdentifier", 24);
  v24 = sub_100038730(v23, " FROM ", 6);
  v25 = sub_100038730(v24, "BeaconFences", 12);
  v26 = sub_100038730(v25, " WHERE ", 7);
  v27 = sub_100038730(v26, "BundleIdentifier", 16);
  v28 = sub_100038730(v27, "=? OR ", 6);
  v29 = sub_100038730(v28, "OnBehalfBundleIdentifier", 24);
  sub_100038730(v29, "=?", 2);
  sub_10003DD44(a3);
  sub_10003DD04(v35, buf);
  if (v39 >= 0)
  {
    v30 = buf;
  }

  else
  {
    v30 = *buf;
  }

  sub_1000388D8(a1, v30);
}

void sub_10003D718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  sub_10001A420(&a49);
  sub_10026C504(&a12);
  _Unwind_Resume(a1);
}

void sub_10003D7BC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == 4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951784();
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a4 + 188);
      *buf = 67240192;
      LODWORD(v28) = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLC: Received Location Services status %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019523B4(a4);
    }

    if (*(a4 + 188) == 1)
    {
      sub_1000DF90C(a1, 1);
    }

    else
    {
      sub_10083D458(a1, 1);
      [*(a1 + 544) clearLocationData];
      sub_100ED392C(a1 + 568);
    }
  }

  else if (*a3 == 2)
  {
    sub_100037ACC(a4, __p);
    if ((v24 & 0x80u) == 0)
    {
      v6 = v24;
    }

    else
    {
      v6 = __p[1];
    }

    if ((v24 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (byte_10265A647 >= 0)
    {
      v8 = byte_10265A647;
    }

    else
    {
      v8 = unk_10265A638;
    }

    if (byte_10265A647 >= 0)
    {
      v9 = &qword_10265A630;
    }

    else
    {
      v9 = qword_10265A630;
    }

    if (v8 >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v11 = memcmp(v7, v9, v10);
    if (v8 == v6 && v11 == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101951718();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (byte_10265A647 >= 0)
        {
          v14 = &qword_10265A630;
        }

        else
        {
          v14 = qword_10265A630;
        }

        *buf = 136380675;
        v28 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLC: Recevied kNotificationAuthorization for %{private}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101951740(buf);
        v21 = byte_10265A647 >= 0 ? &qword_10265A630 : qword_10265A630;
        v25 = 136380675;
        v26 = v21;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLCachedLocationController::onClientManagerNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      if ((v24 & 0x80u) == 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if ([objc_msgSend(*(a1 + 792) syncgetAuthorizationContextIfClientIsNonZonal:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v15)), "isAuthorizedForServiceTypeMask:", 16}])
      {
        sub_1000DF90C(a1, 2);
      }

      else
      {
        sub_10083D458(a1, 2);
      }
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951784();
    }

    v19 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v20 = *a3;
      *buf = 67240192;
      LODWORD(v28) = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#Warning CLC: Received unknown notification, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019524B0(a3);
    }
  }
}

void sub_10003DB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003DBB0(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        *(v3 - 2) = v4;
        operator delete(v4);
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      if (*(v3 - 177) < 0)
      {
        operator delete(*(v3 - 25));
      }

      if (*(v3 - 201) < 0)
      {
        operator delete(*(v3 - 28));
      }

      v5 = v3 - 31;
      if (*(v3 - 225) < 0)
      {
        operator delete(*v5);
      }

      v3 -= 31;
    }

    while (v5 != v2);
  }

  a1[1] = v2;
}

_BYTE *sub_10003DC54(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

_BYTE *sub_10003DD04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5[0] = sub_1000389F0(a1);
  v5[1] = v3;
  return sub_10003DC54(a2, v5);
}

void sub_10003DD44(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*v2[2])();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

BOOL sub_10003DDD8(sqlite3_stmt *a1, int a2, char *__s)
{
  v6 = strlen(__s);
  v7 = sqlite3_bind_text(a1, a2, __s, v6, 0);
  v12 = v7;
  if (v7)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v8 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = __s;
      v19 = 1026;
      v20 = a2;
      v21 = 1040;
      v22 = 4;
      v23 = 2098;
      v24 = &v12;
      v25 = 2081;
      v26 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private, location:escape_only}s, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v9 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v10 = sqlite3_sql(a1);
      *buf = 68290307;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = __s;
      v19 = 1026;
      v20 = a2;
      v21 = 1040;
      v22 = 4;
      v23 = 2098;
      v24 = &v12;
      v25 = 2081;
      v26 = v10;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private, location:escape_only}s, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }

  return v7 == 0;
}

void sub_10003E004(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B75BF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLHarvestControllerExternal::onManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B75C08();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLHarvestControllerExternal::onManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10003E1E0(*(a4 + 40), a1, *a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10003E1E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  ++*(a1 + 360);
  switch(a3)
  {
    case 4:
      v15 = qword_102656EC8;
      v16 = unk_102656ED0;
      while (v15 != v16)
      {
        (*(**(a1 + 48) + 56))(*(a1 + 48), v15);
        v15 += 24;
      }

      if (*(a4 + 188) != 1)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v17 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v29 = 2082;
          v30 = "";
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:location services disabled, clearing all local cache}", buf, 0x12u);
        }

        sub_10057355C(a1);
      }

      break;
    case 2:
      if (*(a4 + 97) == 1)
      {
        sub_100037ACC(a4, __p);
        v8 = qword_102656EC8;
        v9 = unk_102656ED0;
        if (qword_102656EC8 != unk_102656ED0)
        {
          if ((v27 & 0x80u) == 0)
          {
            v10 = v27;
          }

          else
          {
            v10 = __p[1];
          }

          if ((v27 & 0x80u) == 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          while (1)
          {
            v12 = *(v8 + 23);
            v13 = v12;
            if ((v12 & 0x80u) != 0)
            {
              v12 = *(v8 + 8);
            }

            if (v12 == v10)
            {
              v14 = v13 >= 0 ? v8 : *v8;
              if (!memcmp(v14, v11, v10))
              {
                break;
              }
            }

            v8 += 24;
            if (v8 == v9)
            {
              goto LABEL_48;
            }
          }
        }

        if (v8 == v9)
        {
LABEL_48:
          if (qword_1025D47D0 != -1)
          {
            sub_1018C4FA8();
          }

          v24 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            v25 = __p;
            if ((v27 & 0x80u) != 0)
            {
              v25 = __p[0];
            }

            *buf = 68289282;
            *&buf[4] = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2082;
            v32 = v25;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onManagerNotification: auth changed received for SS not used in harvesting. skip auth caching., SystemService:%{public, location:escape_only}s}", buf, 0x1Cu);
          }
        }

        else
        {
          v23 = *(a1 + 48);
          sub_100037ACC(a4, buf);
          (*(*v23 + 56))(v23, buf);
          if (SBYTE3(v32) < 0)
          {
            operator delete(*buf);
          }
        }

        if (v27 < 0)
        {
          v21 = __p[0];
          goto LABEL_56;
        }
      }

      else
      {
        v22 = *(*a1 + 40);

        v22();
      }

      break;
    case 0:
      v6 = qword_102656EC8;
      v7 = unk_102656ED0;
      while (v6 != v7)
      {
        (*(**(a1 + 48) + 56))(*(a1 + 48), v6);
        v6 += 24;
      }

      if (qword_1025D47D0 != -1)
      {
        sub_100248BFC();
      }

      v18 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v29 = 2082;
        v30 = "";
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:location services reset, clearing all local cache}", buf, 0x12u);
      }

      v19 = [objc_msgSend(*(a1 + 40) vendor];
      (*(**(a1 + 48) + 416))(buf);
      v20 = SBYTE3(v32) >= 0 ? buf : *buf;
      [v19 resetNotificationConsumedForIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v20)}];
      if (SBYTE3(v32) < 0)
      {
        v21 = *buf;
LABEL_56:
        operator delete(v21);
      }

      break;
  }
}

void sub_10003E684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003E6D4(uint64_t a1)
{
  v2 = (*(*a1 + 160))(a1);
  sub_10003EA18(a1);
  v3 = (*(*a1 + 160))(a1);
  (*(**(a1 + 136) + 32))(*(a1 + 136), v3);
  sub_100039440(a1);
  v4 = *(a1 + 64);
  if (v4 != (a1 + 72))
  {
    do
    {
      if (v3 && (v5 = sub_1000183C0(v4[5]), sub_10004067C(a1, v5)))
      {
        sub_100039D5C(v4[5]);
      }

      else
      {
        sub_10003FE90(v4[5]);
      }

      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != (a1 + 72));
  }

  sub_100039584(a1);
  if (v2 != v3)
  {
    sub_100039440(a1);
    if (v3)
    {
      sub_100571F00(a1, 1);
      (*(**(a1 + 168) + 24))(*(a1 + 168), 1);
      sub_100571904(a1, 1);
      v10 = (*(**(a1 + 48) + 176))(*(a1 + 48));
      sub_1005720B4(a1, &v10);
      (*(**(a1 + 48) + 184))(*(a1 + 48), 6);
      (*(**(a1 + 48) + 184))(*(a1 + 48), 8);
    }

    else
    {
      sub_100571F00(a1, 0);
      (*(**(a1 + 136) + 32))(*(a1 + 136), 0);
      (*(**(a1 + 168) + 24))(*(a1 + 168), 0);
      sub_100571904(a1, 0);
      v9 = 0;
      sub_1005720B4(a1, &v9);
      (*(**(a1 + 48) + 192))(*(a1 + 48), 6);
      (*(**(a1 + 48) + 192))(*(a1 + 48), 8);
      sub_1004F4B4C(a1 + 1080);
      sub_1004F49C8(a1 + 1080);
    }

    sub_100039584(a1);
  }
}

void sub_10003EA18(uint64_t a1)
{
  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v2 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v19 = (*(*a1 + 248))(a1);
    v20 = *(a1 + 186);
    v3 = (*(**(a1 + 48) + 104))(*(a1 + 48));
    v4 = *(a1 + 188);
    v5 = (*(*a1 + 272))(a1);
    v6 = *(a1 + 256);
    v7 = (*(**(a1 + 48) + 72))(*(a1 + 48));
    v8 = (*(**(a1 + 48) + 216))(*(a1 + 48));
    v9 = (*(*a1 + 168))(a1);
    v10 = (*(**(a1 + 168) + 80))(*(a1 + 168));
    v11 = (*(**(a1 + 48) + 224))(*(a1 + 48));
    *buf = 68291842;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    v24 = 1026;
    v25 = v19;
    v26 = 1026;
    v27 = v20;
    v28 = 1026;
    v29 = v3;
    v30 = 1026;
    v31 = v4;
    v32 = 1026;
    v33 = v5;
    v34 = 1026;
    v35 = v6;
    v36 = 1026;
    v37 = v7;
    v38 = 1026;
    v39 = v8;
    v40 = 1026;
    v41 = v9;
    v42 = 1026;
    v43 = v10;
    v44 = 1026;
    v45 = v11;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:updateHarvestingAllowed, isHarvestingEnabled:%{public}hhd, fHarvestingAllowed:%{public}hhd, isLocationServicesEnabled:%{public}hhd, fThermalLevelAcceptableLowCpu:%{public}hhd, isInPrivateMode:%{public}hhd, fBatterySaverModeEnabled:%{public}hhd, hasAuthorizedClients:%{public}hhd, isGpsControllerSimulationEnabled:%{public}hhd, isHarvestingAllowedForLocationSimulation:%{public}hhd, isGpsControllerSimulationEnabled:%{public}hhd, isLocationControllerSimulationEnabled:%{public}hhd}", buf, 0x54u);
  }

  sub_10001CAF4(buf);
  v21 = 0;
  v12 = sub_10001CB4C(*buf, "IsHarvestingForced", &v21);
  v13 = v21;
  if (*v23)
  {
    sub_100008080(*v23);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018C4FA8();
  }

  v14 = v12 & v13;
  v15 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *&buf[4] = v14;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Harvesting is forced to be allowed,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5114(v14);
  }

  if (v14)
  {
    *(a1 + 186) = 1;
    return;
  }

  if (((*(*a1 + 248))(a1) & 1) == 0)
  {
    if (*(a1 + 186) != 1)
    {
      return;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v16 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_40;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    v17 = "{msg%{public}.0s:Harvesting not allowed: disabled}";
    goto LABEL_39;
  }

  if (((*(**(a1 + 48) + 104))(*(a1 + 48)) & 1) == 0)
  {
    if (*(a1 + 186) != 1)
    {
      return;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v16 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_40;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    v17 = "{msg%{public}.0s:Harvesting not allowed: location services disabled}";
    goto LABEL_39;
  }

  if ((*(a1 + 188) & 1) == 0)
  {
    if (*(a1 + 186) != 1)
    {
      return;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v16 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_40;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    v17 = "{msg%{public}.0s:Harvesting not allowed: thermal level unacceptable}";
    goto LABEL_39;
  }

  if ((*(*a1 + 272))(a1))
  {
    if (*(a1 + 186) != 1)
    {
      return;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v16 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_40;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    v17 = "{msg%{public}.0s:Harvesting not allowed: in private mode}";
    goto LABEL_39;
  }

  if (*(a1 + 256) == 1)
  {
    if (*(a1 + 186) == 1)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v16 = qword_1025D47D8;
      if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *v23 = 2082;
      *&v23[2] = "";
      v17 = "{msg%{public}.0s:Harvesting not allowed: battery saver mode enabled}";
LABEL_39:
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, v17, buf, 0x12u);
LABEL_40:
      *(a1 + 186) = 0;
    }
  }

  else if ((*(**(a1 + 48) + 72))(*(a1 + 48)))
  {
    if ((*(**(a1 + 48) + 216))(*(a1 + 48)) && ((*(*a1 + 168))(a1) & 1) == 0)
    {
      if (*(a1 + 186) == 1)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_1018C4FA8();
        }

        v16 = qword_1025D47D8;
        if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        *buf = 68289026;
        *&buf[4] = 0;
        *v23 = 2082;
        *&v23[2] = "";
        v17 = "{msg%{public}.0s:Harvesting not allowed: gps simulation enabled}";
        goto LABEL_39;
      }
    }

    else if ((*(**(a1 + 168) + 80))(*(a1 + 168)) && ((*(*a1 + 168))(a1) & 1) == 0)
    {
      if (*(a1 + 186) == 1)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_1018C4FA8();
        }

        v16 = qword_1025D47D8;
        if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        *buf = 68289026;
        *&buf[4] = 0;
        *v23 = 2082;
        *&v23[2] = "";
        v17 = "{msg%{public}.0s:Harvesting not allowed: gps simulation enabled (gps monitor)}";
        goto LABEL_39;
      }
    }

    else if ((*(**(a1 + 48) + 224))(*(a1 + 48)) && ((*(*a1 + 168))(a1) & 1) == 0)
    {
      if (*(a1 + 186) == 1)
      {
        if (qword_1025D47D0 != -1)
        {
          sub_1018C4FA8();
        }

        v16 = qword_1025D47D8;
        if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        *buf = 68289026;
        *&buf[4] = 0;
        *v23 = 2082;
        *&v23[2] = "";
        v17 = "{msg%{public}.0s:Harvesting not allowed: location simulation enabled}";
        goto LABEL_39;
      }
    }

    else if ((*(a1 + 186) & 1) == 0)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v18 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *v23 = 2082;
        *&v23[2] = "";
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Harvesting now allowed}", buf, 0x12u);
      }

      *(a1 + 186) = 1;
    }
  }

  else if (*(a1 + 186) == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018C4FA8();
    }

    v16 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_40;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *v23 = 2082;
    *&v23[2] = "";
    v17 = "{msg%{public}.0s:Harvesting not allowed: no authorized clients}";
    goto LABEL_39;
  }
}

void sub_10003F3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003F404(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10003DBB0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

id sub_10003F488(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 24) "vendor")];

  return [v1 syncgetHasAuthorizedClients];
}

uint64_t sub_10003F4E8(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 136);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100040030;
  v4[3] = &unk_10246FD90;
  v4[4] = &v5;
  v4[5] = a1;
  [v1 iterateAllAnchorKeyPathsWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_10003F594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003F5AC(uint64_t a1, int a2)
{
  if (qword_1025D47D0 != -1)
  {
    sub_101AEEF1C();
  }

  v4 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#proactive setHarvesting , enabled:%{private}hhd}", v6, 0x18u);
  }

  if (a2)
  {
    v5 = sub_1000401D4(a1);
  }

  else
  {
    v5 = 0;
  }

  sub_10003F6B0(a1, v5);
}

void sub_10003F6B0(uint64_t a1, int a2)
{
  if ((*(**(a1 + 80) + 40))(*(a1 + 80)))
  {
    if ((*(*a1 + 40))(a1) != a2)
    {
      v4 = (*(**(a1 + 48) + 64))(*(a1 + 48));
      v5 = v4;
      if (a2)
      {
        if (*(a1 + 96) & 1) != 0 || (v6 = (a1 + 160), v4 - *(a1 + 160) >= 3600.0) || ((*(**(a1 + 48) + 128))(*(a1 + 48)))
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AEEF1C();
          }

          v7 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
          {
            v8 = v5 - *(a1 + 160);
            v9 = (*(**(a1 + 48) + 128))(*(a1 + 48));
            *buf = 68289539;
            *v30 = 0;
            *&v30[4] = 2082;
            *&v30[6] = "";
            *&v30[14] = 2049;
            *&v30[16] = v8;
            *&v30[24] = 1025;
            *&v30[26] = v9;
            _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#proactive starting proactive, sinceLastProactiveSession_s:%{private}.09f, isDominantDriving:%{private}hhd}", buf, 0x22u);
          }

          sub_10000EC00(__p, "proactiveHarvesting");
          sub_10023B1D0(a1 + 344, __p);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_1025D4650 != -1)
          {
            sub_101AEEF30();
          }

          v10 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#wigo,on,proactiveHarvest", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AEF30C();
          }

          AnalyticsSendEventLazy();
          (*(**(a1 + 64) + 16))(*(a1 + 64), 0);
          *(a1 + 152) = v5;
          (*(**(a1 + 328) + 24))(*(a1 + 328), v5 + 180.0);
        }

        else
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AEEF1C();
          }

          v24 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
          {
            v25 = v5 - *v6;
            v26 = *v6 + 3600.0;
            *buf = 134218496;
            *v30 = v25;
            *&v30[8] = 2048;
            *&v30[10] = v26;
            *&v30[18] = 2048;
            *&v30[20] = v26 - v5;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#proactive Last attempted proactive harvesting %.3fs ago - waiting until %.3fs (%.3fs away) before trying again", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AEF1D0((a1 + 160), v5);
          }

          (*(**(a1 + 328) + 24))(*(a1 + 328), *(a1 + 160) + 3600.0);
        }
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101AEEF1C();
        }

        v16 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v5 - *(a1 + 152);
          *buf = 68289283;
          *v30 = 0;
          *&v30[4] = 2082;
          *&v30[6] = "";
          *&v30[14] = 2049;
          *&v30[16] = v17;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#proactive stopping proactive harvest, proactiveHarvestDuration_s:%{private}.09f}", buf, 0x1Cu);
        }

        sub_10026ED10(a1 + 344);
        if (*(a1 + 352) >= 1)
        {
          sub_101AEF044();
        }

        if (qword_1025D4650 != -1)
        {
          sub_101AEEF30();
        }

        v18 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#wigo,off,proactiveHarvest", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEEF58();
        }

        AnalyticsSendEventLazy();
        (*(**(a1 + 64) + 24))(*(a1 + 64), 0);
        *(a1 + 152) = 0x7FEFFFFFFFFFFFFFLL;
        *(a1 + 172) = 0xFFFF;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        __asm { FMOV            V1.2D, #-1.0 }

        *(a1 + 192) = xmmword_101C75BF0;
        *(a1 + 208) = _Q1;
        *(a1 + 224) = _Q1;
        *(a1 + 240) = _Q1;
        *(a1 + 256) = 0;
        *(a1 + 260) = 0xBFF0000000000000;
        *(a1 + 284) = 0;
        *(a1 + 276) = 0;
        *(a1 + 268) = 0;
        *(a1 + 288) = 0xBFF0000000000000;
        *(a1 + 296) = 0x7FFFFFFF;
        *(a1 + 324) = 0;
        *(a1 + 308) = 0;
        *(a1 + 316) = 0;
        *(a1 + 300) = 0;
        *(a1 + 160) = v5;
        (*(**(a1 + 16) + 80))(*(a1 + 16), v5);
        (*(**(a1 + 328) + 24))(*(a1 + 328), 1.79769313e308);
      }

      return;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v15 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289283;
      *v30 = 0;
      *&v30[4] = 2082;
      *&v30[6] = "";
      *&v30[14] = 1025;
      *&v30[16] = a2;
      v12 = "{msg%{public}.0s:#proactive taking no action, already in desired state: , start:%{private}hhd}";
      v13 = v15;
      v14 = 24;
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v11 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      *v30 = 0;
      *&v30[4] = 2082;
      *&v30[6] = "";
      v12 = "{msg%{public}.0s:#proactive taking no action, gps harvest not supported}";
      v13 = v11;
      v14 = 18;
LABEL_28:
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
    }
  }
}

void sub_10003FDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10003FDEC()
{
  if ((atomic_load_explicit(&qword_10265B3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265B3F0))
  {
    sub_10001A3E8();
    byte_10265B3E8 = (sub_10003A088() & 8) != 0;
    __cxa_guard_release(&qword_10265B3F0);
  }

  return byte_10265B3E8;
}

void sub_10003FE90(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    (*(*a1 + 160))(a1);
    *(a1 + 88) = 0;
    (*(**(a1 + 56) + 32))(*(a1 + 56), *(a1 + 16), 0);
    if (qword_1025D47D0 != -1)
    {
      sub_101A3BD14();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 16);
      v4[0] = 68289283;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2049;
      v8 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:harvesting disabled, subHarvester:%{private, location:CLSubHarvesterIdentifier}lld}", v4, 0x1Cu);
    }

    sub_1002CEC90(a1);
  }
}

uint64_t sub_10003FFF8()
{
  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  return byte_102659148;
}

void sub_100040030(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 40);
  v7 = [*(v6 + 136) intForKey:@"Authorization" atKeyPath:a2 defaultValue:0];
  if ((v7 & 6) != 0)
  {
    v8 = v7;
    v9 = sub_1000401B4([objc_msgSend(*(v6 + 136) readonlyStoreAtKeyPath:{a2), "dictionary"}]);
    if (v9 > 8 || ((1 << v9) & 0x1A8) == 0)
    {
      v11 = v9;
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v13[0] = 68289794;
        v13[1] = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2114;
        v17 = a2;
        v18 = 1026;
        v19 = v8;
        v20 = 2050;
        v21 = v11;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:hasAuthorizedClients found authorized client, ckp:%{public, location:escape_only}@, authMask:%{public}d, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", v13, 0x2Cu);
      }

      *a3 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

uint64_t sub_1000401D4(uint64_t a1)
{
  if ((*(a1 + 97) & 1) == 0)
  {
    v5 = *(a1 + 112);
    if (v5 != 1)
    {
      return v5;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v7 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v8 = "{msg%{public}.0s:#proactive not allowed, prohibity by default write}";
      goto LABEL_40;
    }

LABEL_41:
    v5 = 0;
    *(a1 + 112) = 0;
    return v5;
  }

  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    v5 = *(a1 + 112);
    if (v5 != 1)
    {
      return v5;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v7 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v8 = "{msg%{public}.0s:#proactive not allowed, 'Traffic' system service not authorized}";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if ((*(a1 + 144) & 1) == 0)
  {
    v5 = *(a1 + 112);
    if (v5 != 1)
    {
      return v5;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v7 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v8 = "{msg%{public}.0s:#proactive not allowed, battery criteria not met}";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (((*(**(a1 + 16) + 104))(*(a1 + 16)) & 1) == 0)
  {
    v5 = *(a1 + 112);
    if (v5 != 1)
    {
      return v5;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v7 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v8 = "{msg%{public}.0s:#proactive not allowed, device is ineligible}";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v2 = *(a1 + 120);
  v3 = *&qword_102630F38;
  if (v2 >= *(a1 + 104) && v2 < *&qword_102630F38)
  {
    if ((*(**(a1 + 32) + 40))(*(a1 + 32)))
    {
      v2 = *(a1 + 120);
      v3 = *&qword_102630F38;
      goto LABEL_12;
    }

    v5 = *(a1 + 112);
    if (v5 != 1)
    {
      return v5;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v7 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v8 = "{msg%{public}.0s:#proactive not allowed, high CPU thermal criteria not met}";
LABEL_40:
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, v8, &v10, 0x12u);
    goto LABEL_41;
  }

LABEL_12:
  if (v2 >= v3 && ((*(**(a1 + 32) + 32))(*(a1 + 32)) & 1) == 0)
  {
    v5 = *(a1 + 112);
    if (v5 != 1)
    {
      return v5;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v7 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v8 = "{msg%{public}.0s:#proactive not allowed, low CPU thermal criteria not met}";
    goto LABEL_40;
  }

  v5 = *(a1 + 112);
  if ((v5 & 1) == 0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101AEEF1C();
    }

    v6 = qword_1025D47D8;
    v5 = 1;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#proactive now allowed}", &v10, 0x12u);
    }

    *(a1 + 112) = 1;
  }

  return v5;
}

uint64_t sub_10004067C(uint64_t a1, unsigned int a2)
{
  sub_1000408C8(a2, __p);
  v4 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (v4)
  {
    v5 = sub_10045EF04(a1 + 1016, __p);
    if (a1 + 1024 == v5)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1018C4FA8();
      }

      v7 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_ERROR))
      {
        v8 = (v15 & 0x80u) == 0 ? __p : __p[0];
        v9 = [(__CFString *)sub_100AF3E88(a2) UTF8String];
        *buf = 68289538;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2082;
        v21 = v8;
        v22 = 2082;
        v23 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SystemService gating harvester does not exists in isClientAuthorizedMap. Treating as not authorized, SystemService:%{public, location:escape_only}s, Harvester:%{public, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47D0 != -1)
        {
          sub_1018C4FA8();
        }
      }

      v10 = qword_1025D47D8;
      if (os_signpost_enabled(qword_1025D47D8))
      {
        if ((v15 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = [(__CFString *)sub_100AF3E88(a2) UTF8String];
        *buf = 68289538;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2082;
        v21 = v11;
        v22 = 2082;
        v23 = v12;
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SystemService gating harvester does not exists in isClientAuthorizedMap. Treating as not authorized", "{msg%{public}.0s:SystemService gating harvester does not exists in isClientAuthorizedMap. Treating as not authorized, SystemService:%{public, location:escape_only}s, Harvester:%{public, location:escape_only}s}", buf, 0x26u);
      }

      v6 = 0;
    }

    else
    {
      v6 = *(v5 + 56);
    }
  }

  else
  {
    v6 = 1;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v6 & 1;
}

void sub_10004089C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000408DC(uint64_t a1)
{
  if (sub_10001CF04())
  {
    v2 = *(a1 + 384);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

double sub_100040914(uint64_t a1, double a2)
{
  if (*(a1 + 653) == 1 && (*(a1 + 652) & 1) == 0)
  {
    sub_10026D1A4(a1);
    *(a1 + 653) = 0;
  }

  return *(a1 + 664) + a2;
}

uint64_t sub_100040968(uint64_t a1, __int128 *a2)
{
  v3 = a1 - 152;
  v6 = sub_100040914(a1 - 152, *(a1 + 200));
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  return sub_100013B00(v3, 8, &v6, 40);
}

void sub_1000409C0(uint64_t a1, uint64_t *a2)
{
  v26 = 0;
  *v25 = *(a2 + 12);
  *&v25[16] = *(a2 + 28);
  LOBYTE(v26) = *(a2 + 9) != 0;
  *(a1 + 1048) = *&v25[8];
  *(a1 + 1040) = *v25;
  *(a1 + 1060) = *&v25[20];
  *(a1 + 1052) = *&v25[12];
  *(a1 + 1064) = 1;
  v4 = *(a2 + 9);
  v5 = *a2;
  v6 = a1 + 1072;
  v7 = *(a1 + 1080);
  if (v7 != a1 + 1072)
  {
    do
    {
      if ((*(v7 + 32) & 1) == 0)
      {
        (*(*(v7 + 24) + 16))();
        if (qword_1025D42F0 != -1)
        {
          sub_101B33698();
        }

        v8 = off_1025D42F8;
        if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(v7 + 16);
          *buf = 134350848;
          v44 = v4;
          v45 = 2050;
          v46 = *v25;
          v47 = 2050;
          v48 = *&v25[4];
          v49 = 2050;
          v50 = *&v25[8];
          v51 = 2050;
          v52 = *&v25[12];
          v53 = 2050;
          v54 = *&v25[16];
          v55 = 2050;
          v56 = *&v25[20];
          v57 = 2050;
          v58 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "[CLGBE] SPUGyroBias,temperature,%{public}f,bias.x,%{public}f,bias.y,%{public}f,bias.z,%{public}f,var.x,%{public}f,var.y,%{public}f,var.z,%{public}f,client,%{public}p", buf, 0x52u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42F0 != -1)
          {
            sub_101B33698();
          }

          v10 = *(v7 + 16);
          v27 = 134350848;
          v28 = v4;
          v29 = 2050;
          v30 = *v25;
          v31 = 2050;
          v32 = *&v25[4];
          v33 = 2050;
          v34 = *&v25[8];
          v35 = 2050;
          v36 = *&v25[12];
          v37 = 2050;
          v38 = *&v25[16];
          v39 = 2050;
          v40 = *&v25[20];
          v41 = 2050;
          v42 = v10;
          v11 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGyroBiasEstimator::notifySPUClients(const CLMotionCoprocessorInterface::GyroBiasAndVariance *)", "%s\n", v11);
          if (v11 != buf)
          {
            free(v11);
          }
        }
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v6);
  }

  if ((*(a1 + 1008) & 1) == 0)
  {
    v12 = *(a2 + 10);
    if (sub_100040E24() && (v12 & 1) != 0)
    {
      if (qword_1025D42F0 != -1)
      {
        sub_101B33698();
      }

      v14 = off_1025D42F8;
      if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "[CLGBE] Ignoring bias estimate during charging", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B34510();
      }
    }

    else
    {
      v13.i64[0] = *(a2 + 12);
      v15 = *(a2 + 6);
      v13.i32[2] = *(a2 + 5);
      v20 = v13;
      v16 = *(a2 + 28);
      v17 = [objc_msgSend(*(a1 + 8) "vendor")];
      v18 = v20;
      v18.f32[3] = v15 * 57.296;
      v19 = vdupq_n_s32(0x42652EE1u);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100040ED4;
      v21[3] = &unk_1024CF740;
      v22 = vmulq_f32(v18, v19);
      v23 = vmul_f32(vmul_f32(v16, *v19.f32), *v19.f32);
      v24 = v4;
      v21[4] = v5;
      [v17 doAsync:v21];
    }
  }
}

BOOL sub_100040E24()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 143;
}

void sub_100040ED4(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 208))(a2, a1 + 40, a1 + 52, *(a1 + 64), *(a1 + 32));
  if (qword_1025D42F0 != -1)
  {
    sub_101B338A0();
  }

  v3 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 44);
    v6 = *(a1 + 48);
    v7 = *(a1 + 52);
    v8 = *(a1 + 56);
    v9 = *(a1 + 60);
    v10 = *(a1 + 64);
    *buf = 134350592;
    v13 = v4;
    v14 = 2050;
    v15 = v5;
    v16 = 2050;
    v17 = v6;
    v18 = 2050;
    v19 = v7;
    v20 = 2050;
    v21 = v8;
    v22 = 2050;
    v23 = v9;
    v24 = 2050;
    v25 = v10;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[CLGBE] SPU bias estimate inserted: bias,%{public}f,%{public}f,%{public}f,variance,%{public}f,%{public}f,%{public}f,temperature,%{public}f", buf, 0x48u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42F0 != -1)
    {
      sub_101B33698();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGyroBiasEstimator::notifySPUClients(const CLMotionCoprocessorInterface::GyroBiasAndVariance *)_block_invoke", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

uint64_t sub_10004115C(uint64_t a1, float *a2, float *a3, __n128 a4, __n128 a5)
{
  v5 = a5.n128_f64[0];
  v6 = a4.n128_f32[0];
  v10 = *(a1 + 488);
  if (v10)
  {
    (*(*v10 + 208))(v10, a2, a3, a4, a5);
  }

  if (fabsf(*a2) > 75.0 || fabsf(a2[1]) > 75.0 || fabsf(a2[2]) > 75.0)
  {
    return 0;
  }

  result = 0;
  if (*a3 <= 0.01 && a3[1] <= 0.01 && a3[2] <= 0.01)
  {
    v12 = *(a1 + 504);
    if (*(a1 + 496) != v12 && vabdd_f64(*(v12 - 16), v5) < 30.0 && vabds_f32(*(v12 - 32), v6) < 2.0)
    {
      return 0;
    }

    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v51 = 0;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = v5;
    *&v32 = v6;
    v30 = 3;
    (*(*a1 + 152))(a1, &v30, &v31, 1, 0xFFFFFFFFLL, 0);
    v14 = *a2;
    v13 = *(a2 + 1);
    v15 = *(a2 + 2);
    v16 = *(a1 + 504);
    v17 = *(a1 + 512);
    if (v16 >= v17)
    {
      v19 = *(a1 + 496);
      v20 = (v16 - v19) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        sub_10028C64C();
      }

      v22 = v17 - v19;
      if (v22 >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        sub_100042470(v23);
      }

      v24 = 32 * v20;
      *v24 = v6;
      *(v24 + 4) = v14;
      *(v24 + 8) = v13;
      *(v24 + 12) = v15;
      *(v24 + 16) = v5;
      *(v24 + 24) = 0;
      v18 = 32 * v20 + 32;
      v25 = *(a1 + 496);
      v26 = *(a1 + 504) - v25;
      v27 = 32 * v20 - v26;
      memcpy((v24 - v26), v25, v26);
      v28 = *(a1 + 496);
      *(a1 + 496) = v27;
      *(a1 + 504) = v18;
      *(a1 + 512) = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v16 = v6;
      *(v16 + 4) = v14;
      *(v16 + 8) = v13;
      *(v16 + 12) = v15;
      *(v16 + 16) = v5;
      v18 = v16 + 32;
      *(v16 + 24) = 0;
    }

    *(a1 + 504) = v18;
    [*(a1 + 264) nextFireDelay];
    if (v29 == 1.79769313e308)
    {
      [*(a1 + 264) setNextFireDelay:*(a1 + 408)];
    }

    return 1;
  }

  return result;
}

void sub_100041458(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_100041984();
    }
  }
}

void sub_100041950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_100041A38(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_100041E14(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_100041EB0(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                dispatch_once(&qword_1025D47F0, &stru_102502438);
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  dispatch_once(&qword_1025D47F0, &stru_102502438);
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

id sub_100041E14(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1017FD3C4(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_100042004(a1);
    }

    else
    {
      return 0;
    }
  }
}

_BYTE *sub_100041EB0(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100041E14(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

id sub_100041FB4(uint64_t a1, int a2, void *a3)
{
  result = sub_100041E14(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_100042004(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        dispatch_once(&qword_1025D41A0, &stru_102502418);
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v8 = v2;
        v9 = 2048;
        v10 = 0;
        v11 = 2080;
        v12 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      if (!sub_10000A100(121, 0))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D41A0 == -1)
      {
LABEL_20:
        v6 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGyroCalibrationDatabase_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Shared/Intersilo/CLCppContainer.h:250:46)]", "%s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }

        return 0;
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        dispatch_once(&qword_1025D41A0, &stru_102502418);
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v8 = v2;
        v9 = 2048;
        v10 = 0;
        v11 = 2080;
        v12 = "N30CLGyroCalibrationDatabase_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      if (!sub_10000A100(121, 0))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D41A0 == -1)
      {
        goto LABEL_20;
      }
    }

    dispatch_once(&qword_1025D41A0, &stru_102502418);
    goto LABEL_20;
  }

  return [a1 cppObjectPtr];
}

float sub_1000423D4(uint64_t a1, float *a2)
{
  sub_100023E4C((a1 + 24), a2);
  v4 = *(a1 + 64);
  if (v4 > *(a1 + 8))
  {
    v5 = *(a1 + 56);
    v6 = *(*(*(a1 + 32) + ((v5 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v5 & 0x3FF));
    v7 = *(a1 + 16) - v6;
    v8 = *(a1 + 20) - (v6 * v6);
    *(a1 + 16) = v7;
    *(a1 + 20) = v8;
    *(a1 + 56) = v5 + 1;
    *(a1 + 64) = v4 - 1;
    sub_1000A6D68(a1 + 24, 1);
  }

  v9 = *(a1 + 20);
  *(a1 + 16) = *a2 + *(a1 + 16);
  result = v9 + (*a2 * *a2);
  *(a1 + 20) = result;
  return result;
}

void sub_100042470(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

BOOL sub_1000424B8(__CFString *a1)
{
  if (sub_1000425A0(a1))
  {
    return 1;
  }

  v3 = sub_100042568();
  return sub_1000E6040(v3, a1);
}

CFBooleanRef sub_1000424F4(__CFDictionary *a1, const __CFString *a2, const __CFString *a3)
{
  v5 = sub_1000E6240(a1, a2, a3);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 != CFBooleanGetTypeID())
  {
    CFRelease(v6);
LABEL_4:
    v6 = kCFBooleanFalse;
    CFDictionarySetValue(a1, a2, kCFBooleanFalse);
  }

  return v6;
}

uint64_t sub_100042568()
{
  if (qword_1026621B8 != -1)
  {
    sub_101AE61AC();
  }

  return qword_1026382D0;
}

BOOL sub_1000425A0(void *a1)
{
  if ((atomic_load_explicit(&qword_102656808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656808))
  {
    sub_10000EC00(v11, "/System/Library/LocationBundles/LocationPromptUI.bundle");
    sub_10000EC00(v12, "/System/Library/LocationBundles/LocationFenceSync.bundle");
    sub_10000EC00(v13, "/System/Library/LocationBundles/PLAMonitor.bundle");
    qword_1026567F0 = 0;
    qword_1026567F8 = 0;
    qword_102656800 = 0;
    sub_100390144(&qword_1026567F0, v11, &v14, 3uLL);
    for (i = 0; i != -72; i -= 24)
    {
      if (v13[i + 23] < 0)
      {
        operator delete(*&v13[i]);
      }
    }

    __cxa_atexit(sub_1004E8DEC, &qword_1026567F0, dword_100000000);
    __cxa_guard_release(&qword_102656808);
  }

  v2 = qword_1026567F0;
  v3 = qword_1026567F8;
  v4 = [a1 UTF8String];
  if (v2 != v3)
  {
    v5 = v4;
    v6 = strlen(v4);
    while (1)
    {
      v7 = *(v2 + 23);
      if (v7 < 0)
      {
        if (v6 == *(v2 + 8))
        {
          if (v6 == -1)
          {
            sub_1003CC9DC();
          }

          v8 = *v2;
LABEL_10:
          if (!memcmp(v8, v5, v6))
          {
            return v2 != qword_1026567F8;
          }
        }
      }

      else
      {
        v8 = v2;
        if (v6 == v7)
        {
          goto LABEL_10;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        return v2 != qword_1026567F8;
      }
    }
  }

  return v2 != qword_1026567F8;
}

void sub_100042764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v21 = &a20;
  v22 = -72;
  v23 = &a20;
  while (1)
  {
    v24 = *v23;
    v23 -= 24;
    if (v24 < 0)
    {
      operator delete(*(v21 - 23));
    }

    v21 = v23;
    v22 += 24;
    if (!v22)
    {
      __cxa_guard_abort(&qword_102656808);
      _Unwind_Resume(a1);
    }
  }
}

void sub_100042800(uint64_t a1, uint64_t a2)
{
  v2 = *qword_102637700;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004289C;
  block[3] = &unk_102481220;
  block[4] = a2;
  CFRunLoopPerformBlock(v2, kCFRunLoopDefaultMode, block);
  CFRunLoopWakeUp(*qword_102637700);
}

void sub_10004289C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000428E8(uint64_t a1, char *__s, int a3)
{
  v3 = a3;
  if (a3)
  {
    sub_10000EC00(__p, __s);
    v6 = sub_1000491B0(a1, __p);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(*__p);
    }

    if ([*(a1 + 112) isAuthorizedForServiceTypeMask:v6])
    {
      LODWORD(v7) = 0;
      v8 = 1;
LABEL_36:
      if (sub_100043654(__s))
      {
        if (!strncmp(__s, "kCLConnectionMessage", 0x14uLL))
        {
          v14 = 20;
        }

        else
        {
          v14 = 0;
        }

        v15 = sub_10015184C(a1, &__s[v14]);
      }

      else
      {
        v15 = +[NSNull null];
      }

      v16 = v15;
      [*(a1 + 152) setObject:v15 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __s)}];
      if (!strcmp(__s, "kCLConnectionMessageLocation"))
      {
        [*(a1 + 152) setObject:v16 forKeyedSubscript:@"kCLConnectionMessageCompensatedLocation"];
      }

      *(a1 + 160) |= v6;
      goto LABEL_45;
    }

    v13 = [*(a1 + 112) transientAwareRegistrationResult];
    LODWORD(v7) = 0;
    v8 = 1;
    if (v13 > 4)
    {
      if ((v13 - 6) < 2)
      {
LABEL_27:
        LODWORD(v7) = 1;
        goto LABEL_36;
      }

      if (v13 != 5)
      {
        goto LABEL_36;
      }

      if ([*(a1 + 112) registrationResult] == 5)
      {
        sub_1019F0B64();
      }
    }

    else
    {
      if (v13 == 2)
      {
        if ((sub_1000F42C0() & 1) == 0)
        {
          LODWORD(v7) = [*(a1 + 112) inUseLevelIsAtLeast:3];
          v8 = 0;
          goto LABEL_36;
        }

        v8 = 0;
        goto LABEL_27;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
          goto LABEL_36;
        }

        goto LABEL_27;
      }

      v8 = 0;
    }

    LODWORD(v7) = 0;
    goto LABEL_36;
  }

  v9 = [*(a1 + 152) objectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __s)}];
  if (v9 && v9 != +[NSNull null])
  {
    sub_1007A2DFC(*(a1 + 16));
  }

  [*(a1 + 152) removeObjectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __s)}];
  if (!strcmp(__s, "kCLConnectionMessageLocation"))
  {
    [*(a1 + 152) removeObjectForKey:@"kCLConnectionMessageCompensatedLocation"];
  }

  *(a1 + 160) = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = *(a1 + 152);
  v7 = [v10 countByEnumeratingWithState:&v36 objects:v55 count:16];
  if (v7)
  {
    v11 = *v37;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v10);
        }

        sub_10000EC00(__p, [*(*(&v36 + 1) + 8 * i) UTF8String]);
        *(a1 + 160) |= sub_1000491B0(a1, __p);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(*__p);
        }
      }

      v7 = [v10 countByEnumeratingWithState:&v36 objects:v55 count:16];
    }

    while (v7);
  }

  v8 = 1;
LABEL_45:
  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v17 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    v19 = "un";
    *__p = 138544130;
    if (v3)
    {
      v19 = "";
    }

    *&__p[4] = v18;
    v49 = 2050;
    v50 = a1;
    v51 = 2082;
    v52 = v19;
    v53 = 2082;
    v54 = __s;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Client %{public}@ (%{public}p) is %{public}ssubscribing to notification %{public}s", __p, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v27 = *(a1 + 48);
    v28 = "un";
    if (v3)
    {
      v28 = "";
    }

    v40 = 138544130;
    v41 = v27;
    v42 = 2050;
    v43 = a1;
    v44 = 2082;
    v45 = v28;
    v46 = 2082;
    v47 = __s;
    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLDaemonClient::modifySubscription(const char *const, BOOL)", "%s\n", v29);
    if (v29 != __p)
    {
      free(v29);
    }
  }

  if (*(a1 + 72) == 1)
  {
    sub_10000EC00(__p, __s);
    if (!sub_1000491B0(a1, __p))
    {
      v3 = 0;
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(*__p);
      if (!v3)
      {
        goto LABEL_61;
      }
    }

    else if (!v3)
    {
      goto LABEL_61;
    }

    v20 = *(a1 + 48);
    sub_100033370(*(a1 + 16), v20);
    if ((*(a1 + 104) & 1) == 0)
    {
      sub_1000F7D18(*(a1 + 16), v20, 1);
    }

LABEL_61:
    if (v7)
    {
      if ((*(a1 + 91) & 1) == 0 && ([*(a1 + 48) isAuthLimited] & 1) == 0 && !sub_10023D7EC(*(a1 + 16)) && *(a1 + 73) != 1)
      {
        v24 = *(a1 + 16);
        v25 = *(a1 + 48);
        if (*(a1 + 369) == 1)
        {
          sub_10000EC00(&v33, "");
          sub_10023C2AC(v35, 2, v25, 0, &v33);
          v21 = sub_1007845CC(v24, a1, v35, 0);
          sub_10023DF30(v35);
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_68;
          }

          v26 = v33;
        }

        else
        {
          sub_10000EC00(v30, "");
          sub_10023C2AC(v32, 5, v25, 0, v30);
          v21 = sub_1007845CC(v24, a1, v32, 0);
          sub_10023DF30(v32);
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_68;
          }

          v26 = v30[0];
        }

        operator delete(v26);
        goto LABEL_68;
      }

      v21 = [*(a1 + 112) registrationResult];
    }

    else
    {
      v21 = 0;
    }

LABEL_68:
    if (sub_1000F742C(__s))
    {
      sub_100049444(*(a1 + 16), *(a1 + 48), 0);
      sub_10004ED44(*(a1 + 16), a1, 1);
    }

    if (v21 == 2)
    {
      v22 = v7;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == 1)
    {
      sub_100304DBC(a1);
    }
  }

  return v8;
}

void sub_100042FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  sub_10023DF30(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id *sub_100043020(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1001EC11C(result);

    operator delete();
  }

  return result;
}

id sub_10004306C(void *a1)
{
  v1 = [a1 objectForKey:@"IncidentalUseMode"];

  return [v1 unsignedIntValue];
}

uint64_t sub_10004309C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Sending app status change notification}", v5, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CLAppStatusChangedNotification, 0, 0, 0);
  v5[0] = 3;
  result = (*(*v1 + 144))(v1, v5, 0, 0xFFFFFFFFLL);
  v1[1160] = 0;
  return result;
}

void sub_1000431C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = 0u;
  *v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  memset(__p, 0, 27);
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  v14 = 0;
  v15 = 0;
  (*(*a1 + 152))(a1, a2, v4, a3, a4, 0);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(v10[0]);
  }

  if ((v9[15] & 0x80000000) != 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v8[0]) < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  if (SHIBYTE(v5[0]) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1000432D8(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1000432E8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000E7D90(exception, a1);
}

uint64_t sub_100043344(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL sub_100043360(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1000434C8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1000433CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_10004345C(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1000F2D48(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1000434C8(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v5 = &kCFBooleanTrue;
  if (!*a3)
  {
    v5 = &kCFBooleanFalse;
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 896))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v8 = v11 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AAFF0();
    }
  }

  return v6 != 0;
}

uint64_t sub_100043654(char *__s)
{
  sub_10000EC00(__p, __s);
  v2 = sub_1000494D4(__p);
  v3 = v2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  result = strcmp(__s, "kCLConnectionMessageLocation");
  if (result)
  {
    result = strcmp(__s, "kCLConnectionMessageLocationUnavailable");
    if (result)
    {
      result = strcmp(__s, "kCLConnectionMessageMotionActivityUpdate");
      if (result)
      {
        result = strcmp(__s, "kCLConnectionMessageActivityAlarmStart");
        if (result)
        {
          result = strcmp(__s, "kCLConnectionMessageSignificantLocationChange");
          if (result)
          {
            result = strcmp(__s, "kCLConnectionMessageSignificantLocationVisit");
            if (result)
            {
              result = strcmp(__s, "kCLConnectionMessageSignificantLocationVisitState");
              if (result)
              {
                result = strcmp(__s, "kCLConnectionMessageStepCountUpdate");
                if (result)
                {
                  result = strcmp(__s, "kCLConnectionMessageExerciseMinuteUpdate");
                  if (result)
                  {
                    result = strcmp(__s, "kCLConnectionMessageWorkoutEvent");
                    if (result)
                    {
                      result = strcmp(__s, "kCLConnectionMessageNatalimetryUpdate");
                      if (result)
                      {
                        result = strcmp(__s, "kCLConnectionMessageKappaGetStateRequest");
                        if (result)
                        {
                          result = strcmp(__s, "kCLConnectionMessageSedentaryTimerAlarm");
                          if (result)
                          {
                            result = strcmp(__s, "kCLConnectionMessageLocationPush");
                            if (result)
                            {
                              result = strcmp(__s, "kCLConnectionMessageMotionAlarmFire");
                              if (result)
                              {
                                result = strcmp(__s, "kCLConnectionMessageMiLoServiceEvent");
                                if (result)
                                {
                                  result = strcmp(__s, "kCLConnectionMessageMiLoPredictionEventUpdate");
                                  if (result)
                                  {
                                    result = strcmp(__s, "kCLConnectionMessageMiLoServiceDebugResponse");
                                    if (result)
                                    {
                                      result = strcmp(__s, "kCLConnectionMessageMiLoConnectionStatusEvent");
                                      if (result)
                                      {
                                        result = strcmp(__s, "kCLConnectionMessageMiLoGenericEventResponse");
                                        if (result)
                                        {
                                          result = strcmp(__s, "kCLConnectionMessageVO2MaxRetrocomputeStatusUpdate");
                                          if (result)
                                          {
                                            result = strcmp(__s, "kCLConnectionMessageAnomalyEvent");
                                            if (result)
                                            {
                                              result = strcmp(__s, "kCLConnectionMessageOdometerGpsAvailability");
                                              if (result)
                                              {
                                                return strcmp(__s, "kCLConnectionMessageAbsoluteAltitudeUpdate") != 0;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100043898(int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_1000438DC(_BYTE *a1)
{
  if (a1[160] == 1)
  {
    v5[0] = 0;
    v2 = sub_10000608C(a1, v5, 1);
    if (qword_1025D47A0 != -1)
    {
      sub_101A26E08();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v4 = a1[356];
      v5[0] = 68289538;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 1026;
      v9 = v4;
      v10 = 1026;
      v11 = v2 != 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SLC Checking whether we should be monitoring, activeNow:%{public}hhd, hasNotifierClients:%{public}hhd}", v5, 0x1Eu);
    }

    if (a1[356] == 1)
    {
      if (!v2)
      {
        sub_100C0E13C(a1);
      }
    }

    else if (v2)
    {
      sub_100C0E22C(a1);
    }
  }
}

uint64_t sub_100043A18(uint64_t a1)
{
  if (!*(a1 + 256))
  {
    sub_100C0EAC0();
  }

  return a1 + 256;
}

uint64_t sub_100043AD8(uint64_t a1)
{
  if (!*(a1 + 264))
  {
    sub_1000EE0B0();
  }

  return a1 + 264;
}

void sub_100043CF8(void *a1, int a2)
{
  __asm { FMOV            V0.2D, #-1.0 }

  v9 = _Q0;
  v10 = 0;
  v11 = 0;
  if (a2)
  {
    sub_100043AD8(a1);
    sub_10002FA64();
  }

  [sub_10003381C(a1 @"distanceThreshold")];
  *(&v9 + 1) = v8;
  sub_100043A18(a1);
  sub_10002FA64();
}

uint64_t sub_100043EA4(char *a1, int a2, unsigned int *a3, __int128 *a4)
{
  v5 = sub_100044914(a1, a2, a3, a4);
  sub_1000438DC(a1);
  return v5;
}

id sub_100043ED8(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100043F38(a1);
}

id sub_100043F38(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101935E78();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D7C5 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193607C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101935E78();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D7C5 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936174();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_10004413C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_100039BE8(result);

    operator delete();
  }

  return result;
}

id sub_100044180(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100044200(a1);
}

uint64_t sub_1000441E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_100044200(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101890CA0();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C89B58 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018910C4();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101890CA0();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C89B58 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018911C4();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_100044404(char *a1, int a2, int *a3, __int128 *a4)
{
  v33 = a2;
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
      v32 = v10;
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
        v31 = v19;
        v27 = *(v19 + 7);
        *buf = &v33;
        v28 = sub_100021F2C((v19 + 40), &v33);
        v29 = *a4;
        *(v28 + 52) = *(a4 + 12);
        *(v28 + 5) = v29;
        sub_100021AFC(buf);
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100044840();
        }

        if (v41)
        {
          sub_100008080(v41);
        }

        if (v40 < 0)
        {
          operator delete(v39);
        }

        if (v38)
        {
          sub_100008080(v38);
        }

        if (v37)
        {
          sub_100008080(v37);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = (a1 + 56);
        v31 = a1 + 64;
        v21 = byte_1025D5D70;
        v30 = v13;
        *buf = &v30;
        *(sub_100024014((a1 + 56), &v30) + 80) = v21;
        v30 = *a3;
        *buf = &v30;
        v22 = sub_100024014((a1 + 56), &v30);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v30 = *a3;
        *buf = &v30;
        v24 = sub_100024014(v20, &v30);
        *buf = &v33;
        v25 = sub_100021F2C((v24 + 5), &v33);
        v26 = *a4;
        *(v25 + 52) = *(a4 + 12);
        *(v25 + 5) = v26;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410((v32 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018900F8();
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
    v35 = 1026;
    v36 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101890364(a1);
    return 0;
  }

  return result;
}

void sub_100044810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100044914(char *a1, int a2, unsigned int *a3, __int128 *a4)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023F73C();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a3;
    v10 = sub_100048D98(*a3);
    v11 = *a4;
    v12 = *(a4 + 5);
    v17[0] = 67109890;
    v17[1] = v9;
    v18 = 2080;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLIENT: registerForNotification, register for notification, %d, %s, desiredAccuracy, %.1lf, operatingMode, %d", v17, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906690(a3, a4);
  }

  if (*a3 - 1 > 1)
  {
    v14 = a1;
    v15 = a2;
    v13 = a3;
  }

  else
  {
    v17[0] = 0;
    v13 = v17;
    v14 = a1;
    v15 = a2;
  }

  return sub_100044404(v14, v15, v13, a4);
}

uint64_t sub_100044A78(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100044180(a4);
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

uint64_t sub_100044B2C(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = sub_10002FB10(a1, a2, a3);
  if (v6)
  {
    if (*a2 <= 0x27 && ((1 << *a2) & 0x800000041FLL) != 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (*(a1 + 110) == 1)
      {
        v9 = *(a3 + 88);
        if (v9 >= 0.0)
        {
          v10 = v9 + *(a3 + 76);
          v11 = v10 - Current;
          if (v10 < Current)
          {
            v11 = 0.0;
          }

          else
          {
            v10 = Current;
          }

          *(a3 + 76) = v10;
          *(a3 + 88) = v11;
        }

        else
        {
          *(a3 + 76) = Current;
        }
      }

      if (qword_1025D48C0 != -1)
      {
        sub_101906A28();
      }

      v12 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        sub_10000EC00(&v45, "Restored-");
        v13 = *(a1 + 31);
        if (v13 >= 0)
        {
          v14 = (a1 + 8);
        }

        else
        {
          v14 = *(a1 + 8);
        }

        if (v13 >= 0)
        {
          v15 = *(a1 + 31);
        }

        else
        {
          v15 = *(a1 + 16);
        }

        v16 = std::string::append(&v45, v14, v15);
        v17 = *&v16->__r_.__value_.__l.__data_;
        *&__p[16] = *(&v16->__r_.__value_.__l + 2);
        *__p = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        v18 = __p;
        if (__p[23] < 0)
        {
          v18 = *__p;
        }

        v19 = *(a3 + 4);
        v20 = *(a3 + 12);
        v21 = *(a3 + 20);
        v22 = *(a3 + 96);
        v23 = *(a3 + 76);
        v24 = *(a3 + 88);
        v25 = *(a3 + 128);
        *buf = 136317443;
        v62 = v18;
        v63 = 1024;
        v64 = 1;
        v65 = 2053;
        v66 = v19;
        v67 = 2053;
        v68 = v20;
        v69 = 2048;
        v70 = v21;
        v71 = 1026;
        v72 = v22;
        v73 = 2050;
        v74 = v23;
        v75 = 2050;
        v76 = Current - v23;
        v77 = 2050;
        v78 = v24;
        v79 = 1026;
        v80 = v25;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Lifespan,%{public}.3f,Integrity,%{public}d", buf, 0x5Au);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(123, 2))
      {
        sub_101906A3C(buf);
        sub_10000EC00(&v44, "Restored-");
        v29 = *(a1 + 8);
        v28 = a1 + 8;
        v27 = v29;
        v30 = *(v28 + 23);
        if (v30 >= 0)
        {
          v31 = v28;
        }

        else
        {
          v31 = v27;
        }

        if (v30 >= 0)
        {
          v32 = *(v28 + 23);
        }

        else
        {
          v32 = *(v28 + 8);
        }

        v33 = std::string::append(&v44, v31, v32);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        v35 = &v45;
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = v45.__r_.__value_.__r.__words[0];
        }

        v36 = *(a3 + 4);
        v37 = *(a3 + 12);
        v38 = *(a3 + 20);
        v39 = *(a3 + 96);
        v40 = *(a3 + 76);
        v41 = *(a3 + 88);
        v42 = *(a3 + 128);
        *__p = 136317443;
        *&__p[4] = v35;
        *&__p[12] = 1024;
        *&__p[14] = 1;
        *&__p[18] = 2053;
        *&__p[20] = v36;
        v47 = 2053;
        v48 = v37;
        v49 = 2048;
        v50 = v38;
        v51 = 1026;
        v52 = v39;
        v53 = 2050;
        v54 = v40;
        v55 = 2050;
        v56 = Current - v40;
        v57 = 2050;
        v58 = v41;
        v59 = 1026;
        v60 = v42;
        v43 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("LOCATION", 1, 0, 2, "virtual BOOL CLLocationProvider::getNotification(const CLLocationProvider_Type::Notification &, CLLocationProvider_Type::NotificationData &)", "%s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }
    }
  }

  return v6;
}

void sub_100044F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100044F7C(_BYTE *result)
{
  if ((result[1160] & 1) == 0)
  {
    result[1160] = 1;
    v1 = *(result + 5);
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10004309C;
    v2[3] = &unk_102449A78;
    v2[4] = result;
    return [v1 afterInterval:v2 async:0.1];
  }

  return result;
}

void sub_10004500C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  if (a2 >= 9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v39 = 68289282;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim Out of bounds access -- entity class too large, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v39, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v7 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v39 = 68289282;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      v8 = "#sbim Out of bounds access -- entity class too large";
      v9 = "{msg%{public}.0s:#sbim Out of bounds access -- entity class too large, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}";
      v10 = v7;
LABEL_17:
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, &v39, 0x1Cu);
      return;
    }

    return;
  }

  if (a3 < 3)
  {
    if (!a3)
    {
      return;
    }

    v17 = 0;
    v18 = 0;
    v19 = a2;
    do
    {
      if (*(a1 + 1392 + 12 * a2 + 4 * v17))
      {
        v18 = v17;
      }

      ++v17;
    }

    while (v17 != 3);
    v20 = a1 + 1392 + 12 * a2;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v22 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_46;
      }

      v23 = *(v20 + 4 * a3);
      if (v23 != -1)
      {
        v24 = v23 + 1;
LABEL_30:
        *(v20 + 4 * a3) = v24;
        goto LABEL_46;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
        v22 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v26 = v22[245];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v39 = 68289538;
        *v40 = 2082;
        *&v40[2] = "";
        *&v40[10] = 2050;
        *&v40[12] = a2;
        *&v40[20] = 2050;
        *&v40[22] = a3;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim Count overflow!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", &v39, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v27 = off_1025D47A8;
      v28 = os_signpost_enabled(off_1025D47A8);
      v22 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      if (!v28)
      {
        goto LABEL_46;
      }

      v39 = 68289538;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      *&v40[20] = 2050;
      *&v40[22] = a3;
      v29 = "#sbim Count overflow!";
      v30 = "{msg%{public}.0s:#sbim Count overflow!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}";
    }

    else
    {
      v25 = *(v20 + 4 * a3);
      if (v25)
      {
        v24 = v25 - 1;
        goto LABEL_30;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
        v22 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v31 = v22[245];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v39 = 68289538;
        *v40 = 2082;
        *&v40[2] = "";
        *&v40[10] = 2050;
        *&v40[12] = a2;
        *&v40[20] = 2050;
        *&v40[22] = a3;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim Count underflow!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", &v39, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v27 = off_1025D47A8;
      v32 = os_signpost_enabled(off_1025D47A8);
      v22 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      if (!v32)
      {
        goto LABEL_46;
      }

      v39 = 68289538;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      *&v40[20] = 2050;
      *&v40[22] = a3;
      v29 = "#sbim Count underflow!";
      v30 = "{msg%{public}.0s:#sbim Count underflow!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}";
    }

    _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v29, v30, &v39, 0x26u);
    v22 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
LABEL_46:
    v33 = 0;
    v34 = 0;
    do
    {
      if (*(a1 + 12 * v19 + 1392 + 4 * v33))
      {
        v34 = v33;
      }

      ++v33;
    }

    while (v33 != 3);
    if (p_info[244] != -1)
    {
      sub_10192D4D0();
      v22 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v35 = v22[245];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(v20 + 4 * a3);
      if (a4 == 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = -1;
      }

      v39 = 68290562;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      *&v40[20] = 1026;
      *&v40[22] = v37;
      *&v40[26] = 2050;
      *&v40[28] = a3;
      *&v40[36] = 1026;
      *&v40[38] = v36;
      *v41 = 2050;
      *&v41[2] = v18;
      v42 = 2050;
      v43 = v34;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sbim entity class count updated, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, change:%{public}d, arrowStateBeingChanged:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, newCount:%{public}u, oldArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, newArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", &v39, 0x46u);
    }

    if (v18 != v34)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v38 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 68290050;
        *v40 = 2082;
        *&v40[2] = "";
        *&v40[10] = 2050;
        *&v40[12] = a2;
        *&v40[20] = 2050;
        *&v40[22] = v18;
        *&v40[30] = 2050;
        *&v40[32] = v34;
        *&v40[40] = 1026;
        *v41 = a5 == 1;
        _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sbim entity class arrow state changed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, oldArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, newArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, dueToDeauthorization:%{public}hhd}", &v39, 0x36u);
      }

      [*(a1 + 1504) entityClass:a2 didChangeArrowState:v34 dueToDeauthorization:{a5 == 1, v39, *v40, *&v40[16]}];
    }

    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    v39 = 68289282;
    *v40 = 2082;
    *&v40[2] = "";
    *&v40[10] = 2050;
    *&v40[12] = a3;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim Out of bounds access -- arrow state too large, arrowState:%{public}lu}", &v39, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v13 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v39 = 68289282;
    *v40 = 2082;
    *&v40[2] = "";
    *&v40[10] = 2050;
    *&v40[12] = a3;
    v8 = "#sbim Out of bounds access -- arrow state too large";
    v9 = "{msg%{public}.0s:#sbim Out of bounds access -- arrow state too large, arrowState:%{public}lu}";
    v10 = v13;
    goto LABEL_17;
  }
}