void sub_10078A900(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Running #AuthDatabaseMigration_7", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930BB8();
  }

  v3 = *(a1 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078AA5C;
  v5[3] = &unk_10246FC30;
  v5[4] = a1;
  [v3 iterateAllAnchorKeyPathsWithBlock:v5];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Finished #AuthDatabaseMigration_7", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930C94();
  }
}

id sub_10078AA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078AAD4;
  v5[3] = &unk_10246FC80;
  v5[4] = v2;
  return [v3 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v5];
}

id sub_10078AAD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(v3 + 136) intForKey:@"SupportedAuthorizationMask" atKeyPath:a2 defaultValue:0];
  if ((v4 & 6) == 4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2114;
      v39 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration client's authorization mask contains Always but not WhenInUse, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    [*(v3 + 136) setInt:v4 | 2 forKey:@"SupportedAuthorizationMask" atKeyPath:a2];
  }

  v6 = [*(v3 + 136) hasValueForKey:@"Authorized" atKeyPath:a2];
  v7 = [*(v3 + 136) hasValueForKey:@"Authorization" atKeyPath:a2];
  if (v6 && (v7 & 1) == 0)
  {
    if ([*(v3 + 136) BOOLForKey:@"Authorized" atKeyPath:a2 defaultValue:0])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration AuthMigrate: Y => Always, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v9 = 4;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v10 = off_1025D47A8;
      v9 = 1;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        v9 = 1;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration AuthMigrate: N => Never, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    if (v4)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration AuthMigrate: Authorization mask already available, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration AuthMigrate: Imputing default supported authorization mask, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      [*(v3 + 136) setInt:7 forKey:@"SupportedAuthorizationMask" atKeyPath:a2];
    }

    if ((sub_10078B250(v3, a2, v9, 0, 0, 1, 1) & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthDatabaseMigration Client missing for authorization update, but didn't we just create it?, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#AuthDatabaseMigration Client missing for authorization update, but didn't we just create it?", "{msg%{public}.0s:#AuthDatabaseMigration Client missing for authorization update, but didn't we just create it?, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  [*(v3 + 136) removeValueForKey:@"Authorized" atKeyPath:a2];
  if (([*(v3 + 136) hasValueForKey:@"RemoteUsage" atKeyPath:a2] & 1) == 0)
  {
    v15 = +[NSMutableDictionary dictionary];
    v16 = 32;
    v17 = &qword_101C8D448;
    do
    {
      v34 = 0;
      *buf = 0;
      sub_10004F9C8(*(v17 - 1), buf, &v34);
      v32 = 0;
      v33 = 0;
      sub_10004F9C8(*v17, &v33, &v32);
      v18 = *buf;
      [*(v3 + 136) doubleForKey:*buf atKeyPath:a2 defaultValue:-1.0];
      if (v19 != -1.0)
      {
        v20 = [NSNumber numberWithDouble:?];
        [v15 setObject:v20 forKeyedSubscript:v33];
        [*(v3 + 136) removeValueForKey:v18 atKeyPath:a2];
      }

      v21 = v34;
      [*(v3 + 136) doubleForKey:v34 atKeyPath:a2 defaultValue:-1.0];
      if (v22 != -1.0)
      {
        v23 = [NSNumber numberWithDouble:?];
        [v15 setObject:v23 forKeyedSubscript:v32];
        [*(v3 + 136) removeValueForKey:v21 atKeyPath:a2];
      }

      v17 += 2;
      v16 -= 16;
    }

    while (v16);
    if ([v15 count])
    {
      [*(v3 + 136) setDictionary:v15 forKey:@"RemoteUsage" atKeyPath:a2];
    }
  }

  if ([a2 website])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v24 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(v3 + 136) readonlyStoreAtKeyPath:a2];
      *buf = 68289538;
      *&buf[4] = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2114;
      v39 = a2;
      v40 = 2114;
      v41 = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthDatabaseMigration found website. Removing from database, client:%{public, location:escape_only}@, dictionary:%{public, location:escape_only}@}", buf, 0x26u);
    }

    [*(v3 + 136) removeDictionaryAtKeyPath:a2];
  }

  v26 = [*(v3 + 136) hasValueForKey:@"Registered" atKeyPath:a2];
  v27 = [*(v3 + 136) hasValueForKey:@"Authorization" atKeyPath:a2];
  v28 = [*(v3 + 136) hasValueForKey:@"SupportedAuthorizationMask" atKeyPath:a2];
  v29 = [*(v3 + 136) isKeyPathRegisteredSystemService:a2];
  v30 = *(v3 + 136);
  if (v27 & 1) != 0 || (v26 & v28 & 1) != 0 || (v29)
  {
    [v30 removeValueForKey:@"SuppressShowingInSettings" atKeyPath:a2];
    return [*(v3 + 136) setBool:1 forKey:@"Registered" atKeyPath:a2];
  }

  else
  {
    [v30 setBool:1 forKey:@"SuppressShowingInSettings" atKeyPath:a2];
    return [*(v3 + 136) removeValueForKey:@"Registered" atKeyPath:a2];
  }
}

uint64_t sub_10078B250(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  if (a5)
  {
    v11 = sub_100033370(a1, a2);
  }

  else
  {
    v11 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
    result = [v11 isValidCKP];
    if (!result)
    {
      return result;
    }
  }

  if ([v11 zoneId])
  {
    if (([*(a1 + 136) dictionaryExistsAtKeyPath:v11] & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v11;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Zone not found - adding zone under client., Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      result = os_signpost_enabled(off_1025D47A8);
      if (result)
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v11;
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Zone not found - adding zone under client.", "{msg%{public}.0s:Zone not found - adding zone under client., Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        return 0;
      }

      return result;
    }
  }

  else if ([v11 website] && (objc_msgSend(*(a1 + 136), "dictionaryExistsAtKeyPath:", v11) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:website not found - added website subIdentity under client., Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  v16 = [*(a1 + 136) hasValueForKey:@"Authorization" atKeyPath:v11];
  v17 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v11 defaultValue:0];
  v18 = [*(a1 + 136) intForKey:? atKeyPath:? defaultValue:?];
  v47 = v17;
  if (v17 != a3)
  {
    sub_1000F7D18(a1, v11, 0);
    if (a7)
    {
      sub_10077A7A0(a1, v11);
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v19 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68291330;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = v11;
    v58 = 1026;
    *v59 = v17;
    *&v59[4] = 2050;
    *&v59[6] = a3;
    v60 = 1026;
    v61 = v18;
    v62 = 1026;
    v63 = a4;
    v64 = 1026;
    v65 = a7;
    v66 = 1026;
    v67 = a6;
    v68 = 1026;
    v69 = v17 != a3;
    v70 = 1026;
    v71 = v16;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:update client authorization mask, Client:%{public, location:escape_only}@, old:%{public}d, new:%{public}lu, oldCC:%{public}d, newCC:%{public}d, localAuthorizationChange:%{public}d, mayIncreaseAuth:%{public}hhd, authStateHasChanged:%{public}hhd, hasAuth:%{public}hhd}", buf, 0x50u);
  }

  if (![v11 zoneId] && !objc_msgSend(v11, "website"))
  {
    if (a3)
    {
      v22 = [*(a1 + 136) intForKey:? atKeyPath:? defaultValue:?];
      if ((a3 & ~v22) != 0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v23 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349570;
          *&buf[4] = a3;
          *&buf[12] = 2114;
          *&buf[14] = v11;
          *&buf[22] = 1026;
          *&buf[24] = v22;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "#warning New authMask %{public}lu for client %{public}@ implicitly extends its supported mask (%{public}d) until next connection & slide", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v51 = 134349570;
          v52 = a3;
          v53 = 2114;
          v54 = v11;
          v55 = 1026;
          v56 = v22;
          v46 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::updateStaticAuthorizationMaskForClientWithCompensation(CLClientKeyPath *, CLLocationDictionaryUtilitiesAuthorizationMask, CLClientCorrectiveCompensation, BOOL, BOOL, BOOL)", "%s\n", v46);
          if (v46 != buf)
          {
            free(v46);
          }
        }

        v22 = (v22 | a3);
      }

      [*(a1 + 136) setInt:v22 forKey:@"SupportedAuthorizationMask" atKeyPath:v11];
      if (a3 != 2)
      {
        sub_100791C88(a1, v11, 1, a3 == 4, a7);
      }

      goto LABEL_29;
    }

    sub_100791C88(a1, v11, 1, 0, a7);
LABEL_47:
    v24 = [*(a1 + 136) isKeyPathRegisteredSystemService:v11];
    v25 = v24;
    if (v17)
    {
      if (v24)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v26 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v11;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#ClearingAuthorization for System Service!, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v27 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v11;
          _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#ClearingAuthorization for System Service!", "{msg%{public}.0s:#ClearingAuthorization for System Service!, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        goto LABEL_65;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v31 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v58 = 1026;
      *v59 = v17;
      v29 = "{msg%{public}.0s:#ClearingAuthorization updateStaticAuthorizationMask setting to not-determined, client:%{public, location:escape_only}@, oldAuth:%{public}d}";
      v30 = v31;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v28 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v58 = 1026;
      *v59 = v25;
      v29 = "{msg%{public}.0s:#ClearingAuthorization updateStaticAuthorizationMask setting to not-determined, but it's already set to not-determined., Client:%{public, location:escape_only}@, SystemService:%{public}hhd}";
      v30 = v28;
    }

    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, 0x22u);
LABEL_65:
    [*(a1 + 136) removeValueForKey:@"Authorization" atKeyPath:v11];
    v20 = 0;
    goto LABEL_66;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

LABEL_29:
  if (v47 >= a3 || (v20 = a3, a6))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v21 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v58 = 2050;
      *v59 = a3;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:setting authorization value, Client:%{public, location:escape_only}@, newAuth:%{public}lu}", buf, 0x26u);
    }

    [*(a1 + 136) setInt:a3 forKey:@"Authorization" atKeyPath:v11];
    v20 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v11 defaultValue:0];
  }

LABEL_66:
  if (v18 >= a4)
  {
    v32 = 1;
  }

  else
  {
    v32 = a6;
  }

  if (a4 && v32)
  {
    [*(a1 + 136) setInt:a4 forKey:@"CorrectiveCompensationEnabled" atKeyPath:v11];
  }

  v33 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v11 defaultValue:0];
  if (v20 != 2 && v33)
  {
    sub_10077A3D0(a1, 1, v11, a7);
  }

  if (a4)
  {
    v34 = a4;
  }

  else
  {
    v34 = v18;
  }

  if ((v20 & 6) == 0 || v34 == 2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v39 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289794;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v58 = 2050;
      *v59 = v20;
      *&v59[8] = 1026;
      *&v59[10] = v34;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical vhAccessAllowedTime deleted during updateStaticAuthMask, Client:%{public, location:escape_only}@, newMask:%{public}lu, ccForVisitHistory:%{public}d}", buf, 0x2Cu);
    }

    [*(a1 + 136) removeValueForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:v11];
  }

  else
  {
    v35 = [*(a1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:v11 defaultValue:0] == 3;
    [*(a1 + 136) doubleForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:v11 defaultValue:0.0];
    if (v36 == 0.0 && v35)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v38 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v11;
        v58 = 2050;
        *v59 = v20;
        *&v59[8] = 1026;
        *&v59[10] = v34;
        _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical setting vhAccessAllowedTime during updateStaticAuthMask, Client:%{public, location:escape_only}@, newMask:%{public}lu, ccForVisitHistory:%{public}d}", buf, 0x2Cu);
      }

      [*(a1 + 136) setDouble:@"VisitHistoryAccessAllowedTime" forKey:v11 atKeyPath:CFAbsoluteTimeGetCurrent()];
    }
  }

  if ([*(a1 + 136) BOOLForKey:@"IsAppClip" atKeyPath:v11 defaultValue:0])
  {
    if (v20 == 2)
    {
      TMGetKernelMonotonicClock();
      v41 = v40;
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v42 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v11;
        v58 = 2050;
        *v59 = v41;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting registration time for #appclip, Client:%{public, location:escape_only}@, registrationTime:%{public}f}", buf, 0x26u);
      }

      [*(a1 + 136) setDouble:@"AuthorizationRegisterTime" forKey:v11 atKeyPath:v41];
      goto LABEL_106;
    }

    [*(a1 + 136) removeValueForKey:@"AuthorizationRegisterTime" atKeyPath:v11];
  }

  if ((v20 & 6) == 0)
  {
    [*(a1 + 136) removeValueForKey:@"ProvisionalMonitoring" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"ConsumptionPeriodBegin" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"NextConsumptionThresholdScore" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"NextNextConsumptionThresholdScore" atKeyPath:v11];
    if (v20 == 1)
    {
      [*(a1 + 136) removeValueForKey:@"TemporaryAuthorization" atKeyPath:v11];
      [*(a1 + 136) removeValueForKey:@"LocationButtonUseMode" atKeyPath:v11];
    }

    else
    {
      sub_100791ACC(a1, v11, 1, a7);
    }
  }

LABEL_106:
  if (([*(a1 + 136) isKeyPathRegisteredSystemService:v11] & 1) == 0 && !objc_msgSend(v11, "subIdentityId"))
  {
    v43 = *(a1 + 136);
    if (v20 == 4)
    {
      if (([v43 hasValueForKey:@"ConsumptionPeriodBegin" atKeyPath:v11] & 1) == 0)
      {
        [*(a1 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:v11 atKeyPath:CFAbsoluteTimeGetCurrent()];
      }

      if (([*(a1 + 136) hasValueForKey:@"NextConsumptionThresholdScore" atKeyPath:v11] & 1) == 0)
      {
        [*(a1 + 136) setInt:0 forKey:@"NextConsumptionThresholdScore" atKeyPath:v11];
      }

      goto LABEL_115;
    }

    [v43 removeValueForKey:@"ConsumptionPeriodBegin" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"NextConsumptionThresholdScore" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"NextNextConsumptionThresholdScore" atKeyPath:v11];
  }

  if (v20)
  {
LABEL_115:
    [*(a1 + 136) removeValueForKey:@"AuthorizationPromptOptionTypeNegative" atKeyPath:v11];
  }

  if (v18 != a4 && a4 != 0 || v47 != a3)
  {
    if (a7)
    {
      if (![v11 website])
      {
        sub_10000EC00(__p, "AuthorizationChange");
        sub_10077A934(a1, v11, __p);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  [*(a1 + 136) persist];
  sub_10000EC00(buf, "");
  sub_100018918(a1, v11, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  return 1;
}

void sub_10078C0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078C12C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Running #AuthDatabaseMigration_9", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930D70();
  }

  v3 = *(a1 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078C290;
  v5[3] = &unk_10246FC30;
  v5[4] = a1;
  [v3 iterateAllAnchorKeyPathsWithBlock:v5];
  sub_10077D10C(a1);
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Finished #AuthDatabaseMigration_9", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930E4C();
  }
}

id sub_10078C290(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if ([a2 executablePath])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return [*(v3 + 136) removeDictionaryAtKeyPath:{a2, v12, *v13, *&v13[16]}];
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = a2;
    v5 = "{msg%{public}.0s:Removing executable client from authdb, Client:%{public, location:escape_only}@}";
    v6 = buf;
    v7 = v4;
    v8 = 28;
LABEL_6:
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v5, v6, v8);
    return [*(v3 + 136) removeDictionaryAtKeyPath:{a2, v12, *v13, *&v13[16]}];
  }

  result = [a2 bundleId];
  if (result)
  {
    memset(buf, 0, 41);
    result = [*(v3 + 136) expensivelyGetIdentifyingInformation:buf forClient:a2];
    if (result)
    {
      v10 = [a2 bundleId];
      result = [v10 isEqual:*buf];
      if ((result & 1) == 0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v11 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          return [*(v3 + 136) removeDictionaryAtKeyPath:{a2, v12, *v13, *&v13[16]}];
        }

        v12 = 68289538;
        *v13 = 2082;
        *&v13[2] = "";
        *&v13[10] = 2114;
        *&v13[12] = [a2 bundleId];
        *&v13[20] = 2114;
        *&v13[22] = *buf;
        v5 = "{msg%{public}.0s:#Warning found alternative identity as top-level identity authdb. Removing client from authdb, ExistingClientBundleId:%{public, location:escape_only}@, CanonicalizedBundleId:%{public, location:escape_only}@}";
        v6 = &v12;
        v7 = v11;
        v8 = 38;
        goto LABEL_6;
      }
    }
  }

  return result;
}

void sub_10078C464(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Running #AuthDatabaseMigration_8", &v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930F28();
  }

  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientAnchor:anchorType:](CLClientKeyPath, "clientKeyPathWithClientAnchor:anchorType:", @"/System/Library/PrivateFrameworks/AssistantServices.framework", 112)}];
  if ([v3 isValidCKP])
  {
    v4 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v3 defaultValue:0];
    v5 = [*(a1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v3 defaultValue:0];
    if (v4 == 2 && v5 == 0)
    {
      sub_10078C700(a1, v3, 1, @"Siri needs to be reset");
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v8 = "{msg%{public}.0s:#AuthDatabaseMigration_8 Siri authorization cleared}";
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v8 = "{msg%{public}.0s:#AuthDatabaseMigration_8 Siri has a user-set authorization value; not clearing.}";
    }

    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x12u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

LABEL_22:
    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Finished #AuthDatabaseMigration_8", &v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931004();
    }
  }
}

id sub_10078C700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v7 isValidCKP];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 68289794;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 1026;
      v14 = a3;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearingAuthorization and corrective compensation, localAuthorizationChange:%{public}hhd, Client:%{public, location:escape_only}@, Reason:%{public, location:escape_only}@}", v10, 0x2Cu);
    }

    [*(a1 + 136) removeValueForKey:@"CorrectiveCompensationEnabled" atKeyPath:v7];
    return sub_10078B250(a1, v7, 0, 0, 0, 1, a3);
  }

  return result;
}

void sub_10078C854(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v51[0] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/Weather.framework" anchorType:112];
  v52[0] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.weather" anchorType:105];
  v51[1] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.Shoebox" anchorType:105];
  v52[1] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/PassKitCore.framework" anchorType:112];
  v51[2] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.Passbook" anchorType:105];
  v52[2] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/PassKitCore.framework" anchorType:112];
  v51[3] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/Parsec.framework" anchorType:112];
  v52[3] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/CoreParsec.framework" anchorType:112];
  v2 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(NSDictionary *)v2 countByEnumeratingWithState:&v33 objects:v50 count:16];
  if (v3)
  {
    v4 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v33 + 1) + 8 * v5);
        if ([*(a1 + 136) dictionaryExistsAtKeyPath:v6])
        {
          v7 = [(NSDictionary *)v2 objectForKeyedSubscript:v6];
          v8 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v6 defaultValue:0xFFFFFFFFLL];
          if ([*(a1 + 136) migrateDictionaryAtKeyPath:v6 toKeyPath:v7 forceMigrationOnAuthCollision:0])
          {
            v9 = sub_1007805C8(a1, v7);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v10 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289794;
              v41 = 0;
              v42 = 2082;
              v43 = "";
              v44 = 2114;
              v45 = v7;
              v46 = 1026;
              v47 = v8;
              v48 = 1026;
              v49 = v9;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthDatabaseMigration #authsync Calling on synchronizeAuthorizationChangeTypeAdd, ToKey:%{public, location:escape_only}@, FromAuth:%{public}d, CorrectiveCompensation:%{public}d}", buf, 0x28u);
            }

            sub_10000EC00(__p, "Migration-migrator");
            sub_10077A934(a1, v6, __p);
            if (v32 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSDictionary *)v2 countByEnumeratingWithState:&v33 objects:v50 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
  v11 = objc_autoreleasePoolPush();
  v39[0] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.webapp" anchorType:105];
  v39[1] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.AdSheet" anchorType:105];
  v39[2] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.AdSheetPad" anchorType:105];
  v39[3] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.AdSheetPhone" anchorType:105];
  v39[4] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.springboard" anchorType:105];
  v39[5] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.CarPlayApp" anchorType:105];
  v39[6] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/Assistant.framework" anchorType:112];
  v39[7] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/AOSNotification.framework" anchorType:112];
  v39[8] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/LocationBundles/LocationPerformance.framework" anchorType:112];
  v39[9] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/LocationBundles/LocationdInternal.framework" anchorType:112];
  v39[10] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/iAdCore.framework" anchorType:112];
  v39[11] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/Applications/AdSheet.app" anchorType:112];
  v39[12] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Twitter.framework" anchorType:112];
  v39[13] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Weibo.framework" anchorType:112];
  v39[14] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Facebook.framework" anchorType:112];
  v39[15] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/SocialServices/Twitter.socialplugin" anchorType:112];
  v39[16] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/SocialServices/Weibo.socialplugin" anchorType:112];
  v39[17] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/SocialServices/Facebook.socialplugin" anchorType:112];
  v39[18] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Social.framework/XPCServices/com.apple.twitter.xpc" anchorType:112];
  v39[19] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Social.framework/XPCServices/com.apple.weibo.xpc" anchorType:112];
  v39[20] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Social.framework/XPCServices/com.apple.facebook.xpc" anchorType:112];
  v39[21] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/CoreSuggestions.framework" anchorType:112];
  v12 = [NSArray arrayWithObjects:v39 count:22];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        if ([*(a1 + 136) dictionaryExistsAtKeyPath:v16])
        {
          [*(a1 + 136) removeDictionaryAtKeyPath:v16];
        }
      }

      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v11);
  v37[0] = @"AttributionCount";
  v37[1] = @"AuthorizationPurposeKey";
  v37[2] = @"AppSwitcherQuitAppTime";
  v37[3] = @"TrialPeriodBegin";
  v37[4] = @"TrialPeriodNeedsReprompt";
  v37[5] = @"ExistsInLSDatabase";
  v17 = [NSArray arrayWithObjects:v37 count:6];
  v18 = *(a1 + 136);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10078D14C;
  v26[3] = &unk_10246FD68;
  v26[4] = v17;
  v26[5] = a1;
  [v18 iterateAllAnchorKeyPathsWithBlock:v26];
  v19 = GEOGetDefaultInteger();
  v20 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientAnchor:anchorType:](CLClientKeyPath, "clientKeyPathWithClientAnchor:anchorType:", @"/System/Library/LocationBundles/AppGenius.bundle", 112)}];
  if ([v20 isValidCKP])
  {
    v21 = v19 == 2;
    v22 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v20 defaultValue:0] == 1 || v21;
    if ((v22 & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v41 = 0;
        v42 = 2082;
        v43 = "";
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting Improve Maps to Denied because Maps does not believe it is authorized.}", buf, 0x12u);
      }

      sub_10078B250(a1, v20, 1uLL, 0, 1, 1, 1);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v24 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning AppGenius is not registered during update-version migration; this may be acceptable if we have never set up system services on this device before.}", buf, 0x12u);
    }
  }
}

void sub_10078D128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10078D14C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078D1CC;
  v5[3] = &unk_10246FEF8;
  v5[4] = *(a1 + 32);
  v5[5] = v2;
  return [v3 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v5];
}

void sub_10078D1CC(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(v4 + 136) removeValueForKey:*(*(&v13 + 1) + 8 * i) atKeyPath:a2];
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v23 count:16];
    }

    while (v6);
  }

  v9 = [a2 bundlePath];
  if (v9)
  {
    v10 = v9;
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      if (([v10 isEqualToString:{objc_msgSend(v10, "stringByResolvingSymlinksInPath")}] & 1) == 0)
      {
        [*(v4 + 136) removeDictionaryAtKeyPath:a2];
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v11 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          v18 = 0;
          v19 = 2082;
          v20 = "";
          v21 = 2114;
          v22 = v10;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthDatabaseMigration Clearing client with symlinks in its bundlePath, BundlePath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2114;
        v22 = v10;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthDatabaseMigration #warning bundle path does not exist on disk;  clearing., BundlePath:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      [*(v4 + 136) removeDictionaryAtKeyPath:a2];
    }
  }
}

void sub_10078D428(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Starting #AuthDatabaseMigration", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019310E0();
  }

  v7 = [CLAuthorizationDatabase authorizationDatabaseWithFilename:a2 withDataProtectionClass:2];
  *(a1 + 136) = v7;
  [(CLAuthorizationDatabase *)v7 migrationVersionNumber];
  v9 = v8;
  if (v8 < 7.0)
  {
    sub_10078A900(a1);
  }

  if (v9 < 8.1)
  {
    sub_10078C464(a1);
  }

  if (v9 < 9.0)
  {
    sub_10078C12C(a1);
  }

  if (v9 < 17.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3;
  }

  if (v10 == 1)
  {
    sub_10078C854(a1);
  }

  sub_10001A3E8();
  sub_1007181FC("kern.bootsessionuuid", buf);
  if (SBYTE3(v23) >= 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  v12 = [NSString stringWithUTF8String:v11];
  if (SBYTE3(v23) < 0)
  {
    operator delete(*buf);
  }

  v18 = 0;
  v13 = sub_1000206B4();
  sub_1003045C8(v13, @"kLastBootSessionUUID", &v18);
  if (![(NSString *)v12 isEqualToString:v18])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:First locationd run for boot session, bootSession:%{public, location:escape_only}@, lastSession:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v15 = sub_1000206B4();
    sub_1004FD43C(v15);
    v16 = sub_1000206B4();
    (*(*v16 + 944))(v16);
    goto LABEL_31;
  }

  if (v10)
  {
LABEL_31:
    [*(a1 + 136) performFullSystemServiceSetup];
  }

  [*(a1 + 136) completeMigration];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Finished #AuthDatabaseMigration", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019311C4();
  }
}

void sub_10078D75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10078D780()
{
  if (qword_102659F30 != -1)
  {
    sub_1019312A8();
  }

  return qword_102659F28;
}

void *sub_10078D7E0(void *a1, int a2)
{
  if (!a2)
  {
    return a1;
  }

  if (qword_102659F30 != -1)
  {
    sub_1019312A8();
  }

  v3 = [qword_102659F28 objectForKey:a1];
  if (!v3)
  {
    return a1;
  }

  v4 = v3;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = [a1 UTF8String];
    v9 = 2082;
    v10 = [v4 UTF8String];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#authsync translating %{public}s to %{public}s", &v7, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019312BC(a1, v4);
  }

  return v4;
}

id sub_10078D91C(uint64_t a1)
{
  if (qword_102659F40 != -1)
  {
    sub_1019313D8();
  }

  result = [qword_102659F38 valueForKey:a1];
  if (!result)
  {
    return a1;
  }

  return result;
}

void sub_10078D96C(id a1)
{
  v2[0] = @"com.apple.NanoMaps";
  v2[1] = @"com.apple.weather.watchapp";
  v3[0] = @"com.apple.Maps";
  v3[1] = @"com.apple.weather";
  qword_102659F38 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = qword_102659F38;
}

CLCompanionSyncAuthObject *sub_10078DA00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_alloc_init(CLCompanionSyncAuthObject);
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  [(CLCompanionSyncAuthObject *)v8 setClientKey:[NSString stringWithUTF8String:v9]];
  [(CLCompanionSyncAuthObject *)v8 setClearClient:a3];
  [(CLCompanionSyncAuthObject *)v8 setOperationType:a4];
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      return v8;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    return v8;
  }

  v10 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", a2))}];
  if (![v10 isValidCKP] || (objc_msgSend(*(a1 + 136), "BOOLForKey:atKeyPath:defaultValue:", @"SuppressShowingInSettings", v10, 0) & 1) != 0)
  {
    return 0;
  }

  v11 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v10 defaultValue:0];
  if (v11)
  {
    [(CLCompanionSyncAuthObject *)v8 setAuthMask:v11];
  }

  v12 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v10 defaultValue:0];
  if (v12)
  {
    [(CLCompanionSyncAuthObject *)v8 setIncidentalUseMode:v12];
  }

  v13 = [*(a1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v10 defaultValue:0xFFFFFFFFLL];
  if ((v13 & 0x80000000) == 0)
  {
    [(CLCompanionSyncAuthObject *)v8 setCorrectiveCompensationMask:v13];
  }

  -[CLCompanionSyncAuthObject setAuthorizationUpgradeAvailable:](v8, "setAuthorizationUpgradeAvailable:", [*(a1 + 136) BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v10 defaultValue:1]);
  v14 = *(a1 + 136);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10078DCC4;
  v19[3] = &unk_10246FEF8;
  v19[4] = v8;
  v19[5] = a1;
  [v14 iterateIdentitiesRelatedToKeyPath:v10 withBlock:v19];
  v15 = [objc_msgSend(*(a1 + 136) arrayForKey:@"VectorClocks" atKeyPath:v10 defaultValue:{&off_1025543D8), "mutableCopy"}];
  v16 = +[NSMutableArray array];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10078DECC;
  v18[3] = &unk_1024701D8;
  v18[4] = v16;
  [v15 enumerateObjectsUsingBlock:v18];
  -[CLCompanionSyncAuthObject setVectorClocks:](v8, "setVectorClocks:", [v16 copy]);
  return v8;
}

id sub_10078DCC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  result = [a2 subIdentityType];
  if (result == 122)
  {
    v6 = objc_alloc_init(CLCompanionSyncInterestZone);
    -[CLCompanionSyncInterestZone setZoneIdentifier:](v6, "setZoneIdentifier:", [a2 zoneId]);
    v7 = [*(v4 + 136) intForKey:@"Authorization" atKeyPath:a2 defaultValue:0];
    if (v7)
    {
      [(CLCompanionSyncInterestZone *)v6 setAuthMask:v7];
    }

    v8 = [*(v4 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:a2 defaultValue:0];
    if (v8)
    {
      [(CLCompanionSyncInterestZone *)v6 setCorrectiveCompensationMask:v8];
    }

    v9 = [*(v4 + 136) intForKey:@"Type" atKeyPath:a2 defaultValue:0];
    if (v9)
    {
      [(CLCompanionSyncInterestZone *)v6 setZoneType:v9];
    }

    [*(v4 + 136) doubleForKey:@"Latitude" atKeyPath:a2 defaultValue:-1.0];
    if (v10 != -1.0)
    {
      [(CLCompanionSyncInterestZone *)v6 setLatitude:?];
    }

    [*(v4 + 136) doubleForKey:@"Longitude" atKeyPath:a2 defaultValue:-1.0];
    if (v11 != -1.0)
    {
      [(CLCompanionSyncInterestZone *)v6 setLongitude:?];
    }

    [*(v4 + 136) doubleForKey:@"Radius" atKeyPath:a2 defaultValue:-1.0];
    if (v12 != -1.0)
    {
      [(CLCompanionSyncInterestZone *)v6 setRadius:?];
    }

    v13 = [*(v4 + 136) intForKey:@"ServiceMaskOperator" atKeyPath:a2 defaultValue:0xFFFFFFFFLL];
    if (v13 != -1)
    {
      [(CLCompanionSyncInterestZone *)v6 setServiceMaskOperator:v13];
    }

    v14 = [*(v4 + 136) intForKey:@"Provenance" atKeyPath:a2 defaultValue:0xFFFFFFFFLL];
    if (v14 != -1)
    {
      [(CLCompanionSyncInterestZone *)v6 setProvenance:v14];
    }

    v15 = *(a1 + 32);

    return [v15 addInterestZones:v6];
  }

  return result;
}

void sub_10078DECC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_alloc_init(CLAuthSyncVectorClock);
  [(CLAuthSyncVectorClock *)v6 setKey:sub_100920F1C(a3)];
  -[CLAuthSyncVectorClock setValue:](v6, "setValue:", [a2 unsignedIntValue]);
  [*(a1 + 32) addObject:v6];
}

id sub_10078DF5C(uint64_t a1, void *a2, char a3, char a4, char a5)
{
  v10 = objc_alloc_init(NSMutableArray);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10078E01C;
  v12[3] = &unk_102470200;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v12[4] = v10;
  v12[5] = a1;
  [a2 enumerateObjectsUsingBlock:v12];
  return v10;
}

void sub_10078E01C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (*(a1 + 48) == 1 && [a2 isEqualToString:@"RESET"])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      __p = 68289026;
      v16 = 2082;
      v17 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#authsync Ignoring RESET from ReunionSyncList during reunion sync}", &__p, 0x12u);
    }

    return;
  }

  if (([a2 isEqualToString:&stru_1025052F8] & 1) == 0 && !objc_msgSend(a2, "isEqualToString:", @"TOGGLE"))
  {
    v9 = [*(v4 + 136) intForKey:@"Authorization" atKeyPath:objc_msgSend(*(v4 + 136) defaultValue:{"registeredKeyPathForClientIdentifier:", +[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", a2)), 0}] == 0;
    v10 = [sub_10078D7E0(a2 *(a1 + 50))];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = "";
    }

    sub_10000EC00(&__p, v11);
    v12 = sub_10078DA00(v4, &__p, v9, 2);
    v13 = v12;
    if (v18 < 0)
    {
      operator delete(__p);
      if (v13)
      {
        goto LABEL_18;
      }
    }

    else if (v12)
    {
LABEL_18:
      [*(a1 + 32) addObject:v13];
      return;
    }

    v14 = objc_alloc_init(CLCompanionSyncAuthObject);
    [(CLCompanionSyncAuthObject *)v14 setClientKey:a2];
    [(CLCompanionSyncAuthObject *)v14 setOperationType:3];
    [*(a1 + 32) addObject:v14];
    return;
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    v6 = sub_1000193E0();
    v7 = objc_alloc_init(CLCompanionSyncAuthObject);
    [(CLCompanionSyncAuthObject *)v7 setClientKey:sub_10078D7E0(a2, *(a1 + 50))];
    [(CLCompanionSyncAuthObject *)v7 setAuthMask:v6];
    [(CLCompanionSyncAuthObject *)v7 setOperationType:1];
    v8 = *(a1 + 32);

    [v8 addObject:v7];
  }
}

void sub_10078E2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10078E2DC(id *a1, void *a2, unsigned int a3, int a4, int a5)
{
  if (a5)
  {
    sub_10078E990(a1);
  }

  v43 = +[NSMutableSet set];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v5)
  {
    v6 = *v63;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v63 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = +[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", sub_10078D91C([*(*(&v62 + 1) + 8 * i) clientKey]));
        [v43 addObject:v8];
        [v43 addObject:{sub_100033370(a1, v8)}];
      }

      v5 = [a2 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v5);
  }

  if (a5)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v9 = [v43 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v9)
    {
      v10 = *v59;
      do
      {
        for (j = 0; j != v9; j = j + 1)
        {
          if (*v59 != v10)
          {
            objc_enumerationMutation(v43);
          }

          v12 = *(*(&v58 + 1) + 8 * j);
          if (([v12 isValidCKP] & 1) == 0)
          {
            [a1[17] registerClient:v12 fromAuthSync:1];
          }
        }

        v9 = [v43 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v9);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = [a2 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v45)
    {
      v13 = *v55;
      v41 = a3;
      v40 = @"VectorClocks";
      do
      {
        for (k = 0; k != v45; k = k + 1)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(a2);
          }

          v15 = *(*(&v54 + 1) + 8 * k);
          v16 = +[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", sub_10078D91C([v15 clientKey]));
          v17 = sub_100033370(a1, v16);
          if ([v15 hasPeerIndexInVectorClocks])
          {
            v18 = [v15 peerIndexInVectorClocks];
          }

          else
          {
            v18 = 0;
          }

          v19 = sub_10078F050(a1, v17, a4 + 1);
          v20 = [v15 vectorClocks];
          if ([v20 count])
          {
            v21 = [objc_msgSend(v20 objectAtIndexedSubscript:{0), "value"}];
          }

          else
          {
            v21 = 0;
          }

          if ([v20 count] && v18 < objc_msgSend(v20, "count"))
          {
            v22 = [objc_msgSend(v20 objectAtIndexedSubscript:{v18), "value"}];
          }

          else
          {
            v22 = 0;
          }

          [v19 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber atIndexedSubscript:{"numberWithUnsignedInt:", v22), 0}];
          [v19 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber atIndexedSubscript:{"numberWithUnsignedInt:", v21), a3}];
          [a1[17] setArray:v19 forKey:@"VectorClocks" atKeyPath:v17];
          [a1[17] persist];
        }

        v45 = [a2 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v45);
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v37 = [a2 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v37)
  {
    v39 = 0;
    v36 = *v51;
    do
    {
      for (m = 0; m != v37; m = m + 1)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(a2);
        }

        v24 = *(*(&v50 + 1) + 8 * m);
        if ([v24 hasPeerIndexInVectorClocks])
        {
          v46 = [v24 peerIndexInVectorClocks];
        }

        else
        {
          v46 = 0;
        }

        sub_10000EC00(&__p, [objc_msgSend(v24 "clientKey")]);
        v25 = [v24 authMask];
        v26 = [v24 correctiveCompensationMask];
        if ([v24 hasIncidentalUseMode])
        {
          v27 = [v24 incidentalUseMode];
          v39 = v27 >> 8;
          v28 = v27;
          v29 = dword_100000000;
        }

        else
        {
          v29 = 0;
          v28 = 0;
        }

        if ([v24 hasAuthorizationUpgradeAvailable])
        {
          v30 = [v24 authorizationUpgradeAvailable];
          v31 = 256;
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        v32 = [v24 clearClient];
        v40 = v40 & 0xFFFFFFFFFFFF0000 | [v24 suppressShowingInSettings] | 0x100;
        v41 = v30 | v31 | v41 & 0xFFFFFFFFFFFF0000;
        sub_10078F0DC(a1, &__p, 0, v25, v26 | dword_100000000, v29 | v28 | (v39 << 8), v30 | v31, v32, v40, 1, [v24 vectorClocks], a3, v46, a4);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_10000EC00(&__p, [objc_msgSend(v24 "clientKey")]);
        sub_100790614(a1, &__p, [v24 interestZones], a3, v46, a4);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v37 = [a2 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v37);
  }

  if ((a5 & 1) == 0)
  {
    v33 = a1[17];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100790AF0;
    v48[3] = &unk_10246FD68;
    v48[4] = v43;
    v48[5] = a1;
    [v33 iterateAllAnchorKeyPathsWithBlock:v48];
  }

  return sub_100778254(a1);
}

void sub_10078E954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078E990(uint64_t a1)
{
  if (*(a1 + 1128) == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v1 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "Skipping Reset, already in progress.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931860();
    }
  }

  else
  {
    sub_1007A2FA8();
    if ([*(a1 + 120) locationRestricted])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v3 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#warning location services settings are frozen by restrictions - resetting", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019313EC();
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "resetting and disconnecting all clients from daemon", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019314D0();
    }

    sub_10077387C(a1);
    sub_10001AF44(a1 + 752, *(a1 + 760));
    *(a1 + 752) = a1 + 760;
    *(a1 + 760) = 0u;
    sub_10001AF44(a1 + 776, *(a1 + 784));
    *(a1 + 776) = a1 + 784;
    *(a1 + 784) = 0u;
    sub_1007781D4(a1);
    [*(a1 + 136) performFullSystemServiceSetup];
    sub_100778254(a1);
    [*(a1 + 1112) removeAllObjects];
    [*(a1 + 1112) addObjectsFromArray:sub_1007A305C(a1)];
    [*(a1 + 128) setArray:*(a1 + 1112) forKey:@"ResetIdentifiers"];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "reset identifiers saved to settings", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019315B4();
    }

    *buf = 0;
    (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
    *(a1 + 1128) = 1;
    [*(a1 + 256) setNextFireDelay:65.0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, CLAppResetChangedNotification, 0, 0, 0);
    sub_1001D2F14(a1);
    sub_100044F7C(a1);
    v21[0] = &__kCFBooleanTrue;
    v20[0] = @"IsResetEvent";
    v20[1] = @"EventSource";
    v7 = (a1 + 976);
    if (*(a1 + 999) < 0)
    {
      v7 = *v7;
    }

    v8 = [NSString stringWithUTF8String:v7];
    v20[2] = @"Enabled";
    v21[1] = v8;
    v21[2] = &__kCFBooleanFalse;
    v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    if (qword_1025D4890 != -1)
    {
      sub_10192E4F8();
    }

    v10 = qword_1025D4898;
    if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#resetClients #CoreAnalytics, Bigswitch Analytics:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    AnalyticsSendEvent();
    sub_10079373C(a1);
    [*(a1 + 504) eraseAllData];
    sub_1007AEA8C(a1 + 464);
    sub_100565518(0, &v18);
    v11 = std::string::append(&v18, "locScoreInfoReport", 0x12uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v11->__r_.__value_.__l + 2);
    *buf = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (buf[23] >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v14 = [NSString stringWithUTF8String:v13];
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v18.__r_.__value_.__r.__words[0] = 0;
    if (![+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v18.__r_.__value_.__r.__words[0];
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Got error removing checkpoint file, Error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    sub_1007A084C(a1);
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v16 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "Removed locscoreInfo, locScoreInfoReport and cleared consumption map.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931698();
    }

    if (_os_feature_enabled_impl())
    {
      [*(a1 + 568) eraseAllData];
      sub_1007AEA8C(a1 + 528);
      if (qword_1025D4790 != -1)
      {
        sub_10192DAA4();
      }

      v17 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "Removed locationAttributionInterval and cleared consumption map for attribution.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193177C();
      }

      sub_100788CC8(a1);
    }
  }
}

void sub_10078F014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

id sub_10078F050(uint64_t a1, uint64_t a2, int a3)
{
  v4 = [objc_msgSend(*(a1 + 136) arrayForKey:@"VectorClocks" atKeyPath:a2 defaultValue:{&off_102554408), "mutableCopy"}];
  v5 = a3 - [v4 count];
  if (v5 >= 1)
  {
    v6 = v5 + 1;
    do
    {
      [v4 addObject:&off_10254EF18];
      --v6;
    }

    while (v6 > 1);
  }

  return v4;
}

void sub_10078F0DC(uint64_t a1, const std::string *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, __int16 a7, char a8, unint64_t a9, int a10, void *a11, unsigned __int8 a12, unsigned __int8 a13, int a14)
{
  if ((a10 - 1) < 2)
  {
    v20 = sub_10001A3E8();
    v21 = (**v20)(v20);
    if (a10 == 2 && v21 != 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v41 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#authsync applyAuthorizationSyncMessage on Companion received an update message}", buf, 0x12u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v42 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v37 = "#authsync applyAuthorizationSyncMessage on Companion received an update message";
        v38 = "{msg%{public}.0s:#authsync applyAuthorizationSyncMessage on Companion received an update message}";
        v39 = v42;
        v40 = 18;
        goto LABEL_50;
      }

      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v23 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = a2->__r_.__value_.__r.__words[0];
      }

      *buf = 68289538;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v24;
      *&buf[28] = 1026;
      *&buf[30] = a10;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#authsync applyAuthorizationSyncMessage un-translated key, clientKey:%{public, location:escape_only}s, OperationType:%{public}d}", buf, 0x22u);
    }

    if (!std::string::compare(a2, ""))
    {
      sub_100791270(a1, a4);
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = a2->__r_.__value_.__r.__words[0];
    }

    v26 = sub_10078D91C([NSString stringWithUTF8String:v25]);
    sub_10000EC00(v109, [v26 UTF8String]);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v27 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v109;
      if (v110 < 0)
      {
        v28 = v109[0];
      }

      if ((a5 & 0x100000000) != 0)
      {
        v29 = a5;
      }

      else
      {
        v29 = -1;
      }

      *buf = 68290562;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      v30 = a9 & 1;
      if (((a9 >> 8) & 1) == 0)
      {
        v30 = 1;
      }

      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v28;
      *&buf[28] = 1026;
      *&buf[30] = a4;
      *&buf[34] = 1026;
      *&buf[36] = v29;
      *&buf[40] = 1026;
      *&buf[42] = a10;
      *v112 = 1026;
      *&v112[2] = v30;
      *v113 = 1026;
      *&v113[2] = a14;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync applyAuthorizationSyncMessage, clientKey:%{public, location:escape_only}s, remoteAuth:%{public}d, corrective:%{public}d, OperationType:%{public}d, suppressShowingInSettings:%{public}d, maxNumberOfPeerClocks:%{public}u}", buf, 0x3Au);
    }

    v31 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:v26];
    if (a8)
    {
      v32 = a1;
      v33 = [*(a1 + 136) registeredKeyPathForClientIdentifier:v31];
      if (a10 == 2)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
          v32 = a1;
        }

        v34 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v31;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync removing client; CLCompanionSyncAuthObject_CLSYChangeType_UPDATE, client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
          v32 = a1;
        }

        v50 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v31;
          _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync removing client as it is received with clear field set, client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v51 = [v33 isValidCKP] ^ 1;
        if (!a3)
        {
          LOBYTE(v51) = 1;
        }

        if ((v51 & 1) == 0)
        {
          v33 = [v33 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", a3), 122}];
        }
      }

      sub_10000EC00(__p, "ClientRemoved");
      sub_100777AC4(v32, v33, 0, __p);
      if (v108 < 0)
      {
        operator delete(__p[0]);
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v52 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v53 = v109;
        if (v110 < 0)
        {
          v53 = v109[0];
        }

        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v53;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#authsync received with clear to delete the auth on companion, clientKey:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v54 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v55 = v109;
        if (v110 < 0)
        {
          v55 = v109[0];
        }

        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v55;
        _os_signpost_emit_with_name_impl(dword_100000000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#authsync received with clear to delete the auth on companion", "{msg%{public}.0s:#authsync received with clear to delete the auth on companion, clientKey:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      goto LABEL_207;
    }

    if (!a4 && ((a9 >> 8) & a9 & 1) != 0)
    {
LABEL_207:
      if (v110 < 0)
      {
        operator delete(v109[0]);
      }

      return;
    }

    v43 = [*(a1 + 136) registeredKeyPathForClientIdentifier:v31];
    if (([v43 isValidCKP] & 1) == 0)
    {
      v43 = [*(a1 + 136) registerClient:v31 fromAuthSync:1];
    }

    sub_1000F7D18(a1, v43, 0);
    v87 = [a11 count];
    v90 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v43 defaultValue:0];
    v44 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v43 defaultValue:0];
    v45 = [*(a1 + 136) BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v43 defaultValue:1];
    v46 = v45;
    if ((a5 & 0x100000000) != 0)
    {
      v47 = a5;
    }

    else
    {
      v47 = 0;
    }

    if ((a6 & dword_100000000) != 0)
    {
      v48 = a6;
    }

    else
    {
      v48 = v44;
    }

    v88 = v48;
    v89 = v47;
    if ((a7 & 0x100) != 0)
    {
      v49 = a7;
    }

    else
    {
      v49 = v45;
    }

    v91 = v49;
    if ([a11 count])
    {
      v93 = [objc_msgSend(a11 objectAtIndexedSubscript:{0), "value"}];
    }

    else
    {
      v93 = 0;
    }

    if ([a11 count] && objc_msgSend(a11, "count") > a13)
    {
      v92 = [objc_msgSend(a11 objectAtIndexedSubscript:{a13), "value"}];
    }

    else
    {
      v92 = 0;
    }

    v56 = sub_10078F050(a1, v43, a14 + 1);
    v57 = [objc_msgSend(v56 objectAtIndexedSubscript:{a12), "unsignedIntValue"}];
    v94 = [objc_msgSend(v56 objectAtIndexedSubscript:{0), "unsignedIntValue"}];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v58 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68292098;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v56;
      *&buf[28] = 2114;
      *&buf[30] = a11;
      *&buf[38] = 1026;
      *&buf[40] = a12;
      *&buf[44] = 1026;
      *v112 = a13;
      *&v112[4] = 1026;
      *v113 = v94;
      *&v113[4] = 1026;
      v114 = v92;
      v115 = 1026;
      v116 = v57;
      v117 = 1026;
      v118 = v93;
      v119 = 2050;
      v120 = v90;
      v121 = 2050;
      v122 = a4;
      v123 = 1026;
      v124 = v46;
      v125 = 1026;
      v126 = v91 & 1;
      _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync local vs peer, localVC:%{public, location:escape_only}@, remoteVC:%{public, location:escape_only}@, fromPeerIdx:%{public}u, toPeerIdx:%{public}u, localClockForSelf:%{public}u, remoteClockForSelf:%{public}u, localClockForPeer:%{public}u, remoteClockForPeer:%{public}u, localAuth:%{public, location:CLLocationDictionaryUtilitiesAuthorizationMask}lld, remoteAuth:%{public, location:CLLocationDictionaryUtilitiesAuthorizationMask}lld, localIsAuthorizationUpgradeAvailable:%{public}hhd, remoteIsAuthorizationUpgradeAvailable:%{public}hhd}", buf, 0x6Au);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v59 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68292098;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v56;
      *&buf[28] = 2114;
      *&buf[30] = a11;
      *&buf[38] = 1026;
      *&buf[40] = a12;
      *&buf[44] = 1026;
      *v112 = a13;
      *&v112[4] = 1026;
      *v113 = v94;
      *&v113[4] = 1026;
      v114 = v92;
      v115 = 1026;
      v116 = v57;
      v117 = 1026;
      v118 = v93;
      v119 = 2050;
      v120 = v90;
      v121 = 2050;
      v122 = a4;
      v123 = 1026;
      v124 = v46;
      v125 = 1026;
      v126 = v91 & 1;
      _os_signpost_emit_with_name_impl(dword_100000000, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#authsync local vs peer", "{msg%{public}.0s:#authsync local vs peer, localVC:%{public, location:escape_only}@, remoteVC:%{public, location:escape_only}@, fromPeerIdx:%{public}u, toPeerIdx:%{public}u, localClockForSelf:%{public}u, remoteClockForSelf:%{public}u, localClockForPeer:%{public}u, remoteClockForPeer:%{public}u, localAuth:%{public, location:CLLocationDictionaryUtilitiesAuthorizationMask}lld, remoteAuth:%{public, location:CLLocationDictionaryUtilitiesAuthorizationMask}lld, localIsAuthorizationUpgradeAvailable:%{public}hhd, remoteIsAuthorizationUpgradeAvailable:%{public}hhd}", buf, 0x6Au);
    }

    if (v93 <= v57)
    {
      if (v93 < v57)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v61 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#authsync peer clock has gone backwards}", buf, 0x12u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v62 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_signpost_emit_with_name_impl(dword_100000000, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#authsync peer clock has gone backwards", "{msg%{public}.0s:#authsync peer clock has gone backwards}", buf, 0x12u);
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v60 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#authsync peer clock has advanced}", buf, 0x12u);
      }

      [v56 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber atIndexedSubscript:{"numberWithUnsignedInt:", v93), a12}];
      [*(a1 + 136) setArray:v56 forKey:@"VectorClocks" atKeyPath:v43];
      [*(a1 + 136) persist];
    }

    v63 = a1;
    if (v94 != v92)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
        v63 = a1;
      }

      v64 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#authsync local clock has changed with respect to peer}", buf, 0x12u);
      }
    }

    if (v87)
    {
LABEL_119:
      sub_1007AB040(v102, [*(v63 + 136) readonlyStoreAtKeyPath:v43]);
      sub_1007AB17C(v101, a4, v88, v91 & 1, v89, 0, 0);
      if (*v102 == *v101 && *&v102[4] == *&v101[4] && *&v102[20] == *&v101[20] && *&v102[28] == *&v101[28])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v66 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync peer's auth capabilities haven't changed w.r.t to this device, so skipping this peer's capabilities.}", buf, 0x12u);
        }

        goto LABEL_207;
      }

      v67 = v94 == v92 || v57 == v93;
      v68 = !v67;
      v99 = *v101;
      v100 = *&v101[16];
      if (!v67)
      {
        *buf = *v102;
        *&buf[16] = *&v102[16];
        sub_1007AB22C(buf, v101);
        v99 = *buf;
        v100 = *&buf[16];
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
          v63 = a1;
        }

        v69 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            a2 = a2->__r_.__value_.__r.__words[0];
          }

          v70 = [(CLKeyValueStore *)sub_10079140C(&v99) dictionary];
          *buf = 68289794;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1026;
          *&buf[20] = a10;
          *&buf[24] = 2082;
          *&buf[26] = a2;
          *&buf[34] = 2114;
          *&buf[36] = v70;
          _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync auth capabilities have changed. Merging now., OperationType:%{public}d, clientKey:%{public, location:escape_only}s, result:%{public, location:escape_only}@}", buf, 0x2Cu);
        }
      }

      if (DWORD2(v99) == 1)
      {
        v71 = 3;
      }

      else if (v99 == -1)
      {
        v71 = 2;
      }

      else
      {
        v71 = 4 * (v99 == 1);
      }

      if (HIDWORD(v99) == 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = 2;
      }

      if (v89)
      {
        v73 = v72;
      }

      else
      {
        v73 = 0;
      }

      sub_100791600(v63, v43, v71, v73, v65, 1, 0);
      if (v88)
      {
        v74 = 1;
        if (DWORD2(v99) != 1 && v99 == 1)
        {
          if (DWORD1(v99) == 1)
          {
            v75 = 3;
          }

          else
          {
            v75 = 1;
          }

          if (DWORD1(v99) == -1)
          {
            v74 = 2;
          }

          else
          {
            v74 = v75;
          }
        }

        sub_10077A3D0(v63, v74, v43, 0);
      }

      if (DWORD2(v99) == 1)
      {
        goto LABEL_164;
      }

      if (v99 == -1)
      {
        v76 = 0;
      }

      else
      {
        if (v99 == 1)
        {
LABEL_164:
          v76 = DWORD2(v99) == 0;
          goto LABEL_165;
        }

        v76 = 1;
      }

LABEL_165:
      sub_100791ACC(v63, v43, v76, 0);
      if (DWORD2(v99) == 1 || v99 == -1 || v99 == 1 && DWORD2(v99))
      {
        sub_100791C88(v63, v43, 1, 0, 0);
      }

      if (!v68)
      {
        goto LABEL_207;
      }

      sub_10000EC00(v97, "CapabilitiesConflictResolution");
      sub_10077A934(v63, v43, v97);
      if ((v98 & 0x80000000) == 0)
      {
        goto LABEL_207;
      }

      v77 = v97[0];
      goto LABEL_206;
    }

    sub_10001A3E8();
    if (sub_10001CF3C() && ((v78 = [*(v63 + 136) BOOLForKey:@"SyncedAuthorizationDecisionOnGizmo" atKeyPath:v43 defaultValue:1], v90) ? (v79 = v90 == a4) : (v79 = 1), v79 ? (v80 = 1) : (v80 = v78), (v80 & 1) == 0))
    {
      v84 = sub_1007805C8(v63, v43);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
        v63 = a1;
      }

      v85 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = a2;
        }

        else
        {
          v86 = a2->__r_.__value_.__r.__words[0];
        }

        *buf = 68290306;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = a10;
        *&buf[24] = 2082;
        *&buf[26] = v86;
        *&buf[34] = 1026;
        *&buf[36] = v90;
        *&buf[40] = 1026;
        *&buf[42] = a4;
        *v112 = 1026;
        *&v112[2] = v84;
        _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync pre-luckier #conflict applyAuthorizationSyncMessage change denied due to SyncedAuthorizationDecisionOnGizmo=false, OperationType:%{public}d, clientKey:%{public, location:escape_only}s, localAuth:%{public}d, remoteAuth:%{public}d, correctiveComp:%{public}d}", buf, 0x34u);
      }

      sub_10000EC00(v105, "AuthorizationConflictResolutionDuringAdd");
      sub_10077A934(v63, v43, v105);
      if ((v106 & 0x80000000) == 0)
      {
        goto LABEL_207;
      }

      v77 = v105[0];
    }

    else
    {
      v81 = sub_10001A3E8();
      if (!(**v81)(v81) || !v90 || v90 == a4)
      {
        goto LABEL_119;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
        v63 = a1;
      }

      v82 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v83 = a2;
        }

        else
        {
          v83 = a2->__r_.__value_.__r.__words[0];
        }

        *buf = 68290050;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = a10;
        *&buf[24] = 2082;
        *&buf[26] = v83;
        *&buf[34] = 1026;
        *&buf[36] = v90;
        *&buf[40] = 1026;
        *&buf[42] = a4;
        _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync pre-luckier #conflict applyAuthorizationSyncMessage denied due to an auth conflict, OperationType:%{public}d, clientKey:%{public, location:escape_only}s, localAuth:%{public}d, remoteAuth:%{public}d}", buf, 0x2Eu);
      }

      sub_10000EC00(v103, "ClientRemoved-AuthConflictResolution");
      sub_100777AC4(v63, v43, 1, v103);
      if (v104 < 0)
      {
        operator delete(v103[0]);
      }

      sub_10000EC00(buf, "");
      sub_100018918(v63, v43, buf);
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_207;
      }

      v77 = *buf;
    }

LABEL_206:
    operator delete(v77);
    goto LABEL_207;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v35 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = a10;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:NotSuported #authSync applyAuthorizationSyncMessage applies syncMessage of operationTye Add or Update, Received OperationType:%{public}d}", buf, 0x18u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v36 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = a10;
    v37 = "NotSuported #authSync applyAuthorizationSyncMessage applies syncMessage of operationTye Add or Update";
    v38 = "{msg%{public}.0s:NotSuported #authSync applyAuthorizationSyncMessage applies syncMessage of operationTye Add or Update, Received OperationType:%{public}d}";
    v39 = v36;
    v40 = 24;
LABEL_50:
    _os_signpost_emit_with_name_impl(dword_100000000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v37, v38, buf, v40);
  }
}

void sub_100790538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (*(v53 - 225) < 0)
  {
    operator delete(*(v53 - 248));
  }

  _Unwind_Resume(exception_object);
}

id sub_100790614(id result, uint64_t a2, void *a3, unsigned __int8 a4, unsigned __int8 a5, int a6)
{
  v30 = result;
  if (a3)
  {
    v22 = sub_100791E4C(a2);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    result = [a3 countByEnumeratingWithState:&v31 objects:v44 count:16];
    v28 = result;
    if (result)
    {
      v29 = 0;
      v27 = *v32;
      do
      {
        v9 = 0;
        do
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(a3);
          }

          v10 = *(*(&v31 + 1) + 8 * v9);
          if ([v10 provenance] == 1)
          {
            v42[0] = @"Type";
            v43[0] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 zoneType]);
            v42[1] = @"Latitude";
            [v10 latitude];
            v43[1] = [NSNumber numberWithDouble:?];
            v42[2] = @"Longitude";
            [v10 longitude];
            v43[2] = [NSNumber numberWithDouble:?];
            v42[3] = @"Radius";
            [v10 radius];
            v43[3] = [NSNumber numberWithDouble:?];
            v42[4] = @"ServiceMaskOperator";
            v43[4] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 serviceMaskOperator]);
            v42[5] = @"Provenance";
            v43[5] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 provenance]);
            v11 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:6];
            sub_10000EC00(&__p, [objc_msgSend(v10 "zoneIdentifier")]);
            v12 = sub_100791FC0(v30, a2, &__p, v11, 2u, v22);
            if (SBYTE3(v39) < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            v12 = 0;
          }

          if (([v10 hasAuthMask] & 1) != 0 || objc_msgSend(v10, "hasCorrectiveCompensationMask"))
          {
            if ([v10 hasCorrectiveCompensationMask])
            {
              v13 = [v10 correctiveCompensationMask];
              v29 = v13 >> 8;
              v14 = v13;
              v15 = dword_100000000;
            }

            else
            {
              v15 = 0;
              v14 = 0;
            }

            v16 = [v10 zoneIdentifier];
            if ((v12 & 1) == 0)
            {
              v17 = sub_10001A3E8();
              if ((**v17)(v17))
              {
                v18 = @"clpla_companion_";
              }

              else
              {
                v18 = @"clpla_gizmo_";
              }

              v16 = [(__CFString *)v18 stringByAppendingString:v16];
            }

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

              v21 = [v16 UTF8String];
              __p = 68289538;
              v36 = 2082;
              v37 = "";
              v38 = 2082;
              v39 = v20;
              v40 = 2082;
              v41 = v21;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Applying auth for SyncedZone., Client:%{public, location:escape_only}s, ZoneId:%{public, location:escape_only}s}", &__p, 0x26u);
            }

            v7 &= 0xFFFFFFFFFFFF0000;
            v6 &= 0xFFFFFFFFFFFF0000;
            sub_10078F0DC(v30, a2, [v16 UTF8String], objc_msgSend(v10, "authMask"), v15 | v14 | (v29 << 8), 0, v7, objc_msgSend(v10, "clearClient"), v6, 1, +[NSMutableArray array](NSMutableArray, "array"), a4, a5, a6);
          }

          v9 = v9 + 1;
        }

        while (v28 != v9);
        result = [a3 countByEnumeratingWithState:&v31 objects:v44 count:16];
        v28 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_100790ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100790AF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    if ([a2 isAuthLimited])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        __p = 68289282;
        v11 = 2082;
        v12 = "";
        v13 = 2114;
        v14 = a2;
        v5 = "{msg%{public}.0s:#authsync applying fullSyncMessages; skip deletion of auth limited client, client:%{public, location:escape_only}@}";
        v6 = v4;
        v7 = OS_LOG_TYPE_INFO;
LABEL_12:
        _os_log_impl(dword_100000000, v6, v7, v5, &__p, 0x1Cu);
      }
    }

    else if ([*(v3 + 136) isKeyPathRegisteredSystemService:a2])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289282;
        v11 = 2082;
        v12 = "";
        v13 = 2114;
        v14 = a2;
        v5 = "{msg%{public}.0s:#authsync applying fullSyncMessages; skip deletion of system service client, client:%{public, location:escape_only}@}";
        v6 = v8;
        v7 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_12;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        __p = 68289282;
        v11 = 2082;
        v12 = "";
        v13 = 2114;
        v14 = a2;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#authsync applying fullSyncMessages; deleting client, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
      }

      sub_10000EC00(&__p, [objc_msgSend(a2 "legacyClientKey")]);
      sub_100790D50(v3, &__p);
      if (SBYTE3(v14) < 0)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_100790D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100790D50(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [sub_10078D91C(+[NSString stringWithUTF8String:](NSString stringWithUTF8String:{v4)), "UTF8String"}];
  sub_10000EC00(v12, v5);
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v12;
    if (v13 < 0)
    {
      v7 = v12[0];
    }

    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync applyAuthorizationSyncMessageTypeDelete, clientKey:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v8))}];
  sub_10000EC00(__p, "ClientRemoved");
  sub_100777AC4(a1, v9, 0, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001D2F14(a1);
  sub_100044F7C(a1);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_100790F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100790F40(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [objc_msgSend(*(v2 + 1592) objectForKey:{*(a1 + 32)), "copy"}];
  if (v3)
  {
    v4 = v3;
    [*(v2 + 1592) removeObjectForKey:*(a1 + 32)];
    v5 = [objc_msgSend(*(a1 + 32) "legacyClientKey")];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = "";
    }

    sub_10000EC00(v10, v6);
    v7 = [objc_msgSend(*(a1 + 32) "zoneId")];
    sub_10000EC00(__p, [v4 UTF8String]);
    sub_10079104C(v2, v10, v7, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_100791014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

id sub_10079104C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  result = +[CLAuthSyncManager isSupported]_0();
  if (result)
  {
    result = sub_10078DA00(a1, a2, 0, 1);
    if (result)
    {
      v9 = result;
      if (a3)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [result interestZones];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
LABEL_6:
          v14 = 0;
          while (1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if ([objc_msgSend(*(*(&v20 + 1) + 8 * v14) "zoneIdentifier")])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
              if (v12)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a4 + 23) >= 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = *a4;
        }

        v17 = [v9 description];
        *buf = 68289538;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        v29 = v16;
        v30 = 2114;
        v31 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync addObject, syncReason:%{public, location:escape_only}s, syncObject:%{public, location:escape_only}@}", buf, 0x26u);
      }

      v18 = *(a1 + 1560);
      if (*(a4 + 23) >= 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = *a4;
      }

      return [v18 addObject:v9 withSyncSessionReason:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v19)}];
    }
  }

  return result;
}

void sub_100791270(uint64_t a1, int a2)
{
  sub_10001CAF4(&__p);
  v5 = a2 == 1;
  sub_1000434C8(__p, @"LocationServicesEnabledIn8.0", &v5);
  if (*v7)
  {
    sub_100008080(*v7);
  }

  sub_10001CAF4(&__p);
  sub_10054B380(__p);
  if (*v7)
  {
    sub_100008080(*v7);
  }

  sub_10000EC00(&__p, "com.apple.locationd.authsync");
  sub_100773AF4(a1, &__p, 0);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289282;
    *v7 = 2082;
    *&v7[2] = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:authsync: Updating location services, newState:%{public}d}", &__p, 0x18u);
  }
}

void sub_1007913D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CLKeyValueStore *sub_10079140C(_DWORD *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  if (a1[2] == 1)
  {
    v3 = 4;
  }

  else if (*a1 == -1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (*a1 == 1);
  }

  [v2 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", v3), @"Authorization"}];
  if (a1[2] == 1 || *a1 != 1)
  {
    v6 = 1;
  }

  else
  {
    v4 = a1[1];
    if (v4 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (v4 == -1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v6), @"IncidentalUseMode"}];
  v7 = a1[2];
  if (v7 == 1)
  {
    goto LABEL_18;
  }

  if (*a1 == -1)
  {
    v8 = 0;
  }

  else
  {
    if (*a1 == 1)
    {
LABEL_18:
      v8 = v7 == 0;
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_19:
  [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v8), @"AuthorizationUpgradeAvailable"}];
  if (a1[3] == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v9), @"CorrectiveCompensationEnabled"}];
  [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", 0), @"VisitHistoryAccess"}];
  [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", 0), @"LearnedRoutesAccess"}];
  [v2 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", 0), @"SupportedAuthorizationMask"}];

  return [CLKeyValueStore storeWithDictionary:v2];
}

void sub_100791600(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12 = sub_100033370(a1, a2);
  [*(a1 + 224) setNextFireDelay:0.3];
  if ([*(a1 + 120) locationRestricted])
  {
    v13 = a7 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "location services settings are frozen by restrictions - denying %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931944();
    }

    return;
  }

  v14 = "Never(because_invalid)";
  v15 = 1;
  if (a3 <= 2)
  {
    v16 = "Never";
    if (a3 != 2)
    {
      v16 = "Never(because_invalid)";
    }

    if (a3)
    {
      v14 = v16;
    }

    else
    {
      v14 = "Invalid(Unset)";
    }

    v15 = a3 != 0;
    goto LABEL_29;
  }

  if (a3 == 3)
  {
LABEL_27:
    v14 = "Always";
    a3 = 3;
    v15 = 4;
    goto LABEL_29;
  }

  if (a3 == 4)
  {
    if (!sub_10001CF3C() || ![*(a1 + 136) isKeyPathRegisteredSystemService:v12])
    {
      v14 = "WhenInUse";
      a3 = 4;
      v15 = 2;
      goto LABEL_29;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v31 = 2114;
      v32 = v12;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Adjusting authorization for systemService, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    goto LABEL_27;
  }

LABEL_29:
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v19 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a3;
    v31 = 2082;
    v32 = v14;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Setting client: %{public}@ authorization to %{public}d (%{public}s)", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    *__p = 138543874;
    *&__p[4] = v12;
    v26 = 1026;
    v27 = a3;
    v28 = 2082;
    v29 = v14;
    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::setClientAuthorization(CLClientKeyPath *, CLClientAuthorizationStatus, CLClientCorrectiveCompensation, const char *, BOOL, BOOL)", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  if (*(a1 + 233) == 1)
  {
    v20 = [objc_msgSend(v12 "legacyClientKey")];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = "";
    }

    sub_10000EC00(buf, v21);
    v22 = [objc_msgSend(v12 "zoneId")];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = "";
    }

    sub_10000EC00(__p, v23);
    sub_100796A40(a1, buf, __p, 1, 0, 0, 3u, 1, *(a1 + 320), *(a1 + 328), 50.0, 1u, 0);
    if (SBYTE3(v29) < 0)
    {
      operator delete(*__p);
    }

    if (SBYTE3(v32) < 0)
    {
      operator delete(*buf);
    }

    *(a1 + 233) = 0;
    *(a1 + 320) = kCLLocationCoordinate2DInvalid;
  }

  sub_10078B250(a1, v12, v15, a4, 1, a6, a7);
  sub_1007A4B1C(a1, v12);
  sub_100044F7C(a1);
}

void sub_100791A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_100791ACC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = sub_1000184F4(a1, a2);
  v8 = [*(a1 + 136) BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v7 defaultValue:1];
  if (v8 == a3)
  {
    v10 = v8;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v10;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ignoring updateAuthorizationUpgradeAvailableKey since newValue==currentValue, isAuthorizationUpgradeAvailable:%{public}hhd}", buf, 0x18u);
    }
  }

  else
  {
    v9 = *(a1 + 136);
    if (a3)
    {
      [v9 removeValueForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v7];
    }

    else
    {
      [v9 setBool:0 forKey:@"AuthorizationUpgradeAvailable" atKeyPath:v7];
    }

    [*(a1 + 136) persist];
    if (a4)
    {
      sub_10077A7A0(a1, v7);
      sub_10000EC00(__p, "AuthorizationUpgradeAvailableChange");
      sub_10077A934(a1, v7, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100791C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100791C88(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = sub_1000184F4(a1, a2);
  if ([v9 isAuthSharingSubIdentity])
  {
    v9 = [v9 anchorKeyPath];
  }

  v10 = *(a1 + 136);
  if (!a3)
  {
    [v10 setBool:1 forKey:@"ProvisionalMonitoring" atKeyPath:v9];
    [*(a1 + 136) setDouble:@"ProvisionalMonitoringBegin" forKey:v9 atKeyPath:CFAbsoluteTimeGetCurrent()];
    return [*(a1 + 136) persist];
  }

  [v10 removeValueForKey:@"ProvisionalMonitoring" atKeyPath:v9];
  [*(a1 + 136) removeValueForKey:@"ProvisionalMonitoringBegin" atKeyPath:v9];
  sub_100791ACC(a1, v9, 0, a5);
  v11 = *(a1 + 264);
  if (v11)
  {
    if (v9)
    {
      [v9 cppClientKey];
      LODWORD(v9) = HIBYTE(v23);
      v12 = v22;
    }

    else
    {
      v12 = 0;
      __p = 0;
      v22 = 0;
      v23 = 0;
    }

    v13 = *(v11 + 23);
    if (v13 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = v11[1];
    }

    if ((v9 & 0x80u) == 0)
    {
      v12 = v9;
    }

    if (v14 == v12)
    {
      if (v13 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = *v11;
      }

      if ((v9 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v17 = memcmp(v15, p_p, v14) == 0;
      if ((v9 & 0x80) == 0)
      {
LABEL_25:
        if (v17)
        {
          if (a4)
          {
            v18 = *(a1 + 288);
            if (v18)
            {
              (*(v18 + 16))(v18, 0);

              *(a1 + 288) = 0;
            }
          }

          v19 = *(a1 + 264);
          *(a1 + 264) = 0;
          if (v19)
          {
            sub_10068024C(a1 + 264, v19);
          }

          *(a1 + 280) = 0;
        }

        return [*(a1 + 136) persist];
      }
    }

    else
    {
      v17 = 0;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(__p);
    goto LABEL_25;
  }

  return [*(a1 + 136) persist];
}

CFTypeRef sub_100791E4C(std::string *a1)
{
  sub_1000EBF44(a1, v9);
  sub_10003B25C(v9);
  if (v18 >= 0)
  {
    v1 = &v17;
  }

  else
  {
    v1 = v17;
  }

  sub_10000EC00(__p, v1);
  if (v8 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = sub_100055734([NSString stringWithUTF8String:v2]);
  if (v3)
  {
    v4 = CFBundleCreate(kCFAllocatorDefault, v3);
  }

  else
  {
    v4 = 0;
  }

  sub_10001A3E8();
  sub_10001CF3C();
  if (v4)
  {
    v5 = sub_1000565F4(v4);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v5;
}

uint64_t sub_100791FC0(uint64_t a1, uint64_t a2, std::string *__str, void *a4, unsigned int a5, void *a6)
{
  if (a5 - 3 <= 0xFFFFFFFD)
  {
    sub_101931CE4(a1, a2, __str);
  }

  v8 = __str;
  memset(&v74, 0, sizeof(v74));
  memset(&v73, 0, sizeof(v73));
  if (a5 == 2)
  {
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      __str = __str->__r_.__value_.__r.__words[0];
    }

    v11 = [NSString stringWithUTF8String:__str];
    v12 = sub_10001A3E8();
    if ((**v12)(v12))
    {
      v13 = @"clpla_companion_";
    }

    else
    {
      v13 = @"clpla_gizmo_";
    }

    sub_100006044(&v74, [-[__CFString stringByAppendingString:](v13 stringByAppendingString:{v11), "UTF8String"}]);
    std::string::operator=(&v73, v8);
  }

  else
  {
    std::string::operator=(&v74, __str);
    if ((v8->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8->__r_.__value_.__r.__words[0];
    }

    v15 = [NSString stringWithUTF8String:v14];
    v16 = sub_10001A3E8();
    if ((**v16)(v16))
    {
      v17 = @"clpla_companion_";
    }

    else
    {
      v17 = @"clpla_gizmo_";
    }

    sub_100006044(&v73, [-[__CFString stringByAppendingString:](v17 stringByAppendingString:{v15), "UTF8String"}]);
  }

  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  v19 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v18))}];
  v20 = [v19 isValidCKP];
  if ((v20 & 1) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    v19 = [*(a1 + 136) registerClient:+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath fromAuthSync:{"clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v21)), 0}];
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v74;
  }

  else
  {
    v22 = v74.__r_.__value_.__r.__words[0];
  }

  v23 = [v19 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", v22), 122}];
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v73;
  }

  else
  {
    v24 = v73.__r_.__value_.__r.__words[0];
  }

  v25 = [v19 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", v24), 122}];
  sub_10000EC00(__p, "ClientRemoved");
  sub_100777AC4(a1, v23, 1, __p);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = [objc_msgSend(a4 objectForKeyedSubscript:{@"ServiceMaskOperator", "intValue"}];
  v27 = [objc_msgSend(a4 objectForKeyedSubscript:{@"Type", "intValue"}];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"Latitude", "doubleValue"}];
  v29 = v28;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"Longitude", "doubleValue"}];
  v31 = v30;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"Radius", "doubleValue"}];
  sub_100796A40(a1, a2, &v74, v27, 0, v26, a5, 0, v29, v31, v32, 0, 0);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v73;
  }

  else
  {
    v33 = v73.__r_.__value_.__r.__words[0];
  }

  v34 = [a6 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v33)}];
  if (v34 && (sub_1007A7EA8(v34, a4) & 1) != 0)
  {
    v64 = _NSConcreteStackBlock;
    v65 = 3221225472;
    v66 = sub_1007A8160;
    v67 = &unk_102470640;
    v68 = a1;
    if (v20 & 1) != 0 || (v35 = [*(a1 + 136) dictionaryExistsAtKeyPath:v25], (v35))
    {
      v43 = sub_1007A7EA8([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v25), "dictionary"}], a4);
      if (v43)
      {
        sub_10000EC00(&v58, "ClientRemoved");
        sub_100777AC4(a1, v23, 1, &v58);
        if (SHIBYTE(v60) < 0)
        {
          operator delete(v58);
        }

        v51 = v25;
        if (a5 == 2)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }

      if (a5 == 2)
      {
        sub_10000EC00(&v61, "ClientRemoved");
        sub_100777AC4(a1, v25, 1, &v61);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(v61);
        }

        v51 = v23;
        v23 = v25;
LABEL_52:
        v66(&v64, v51, v23);
LABEL_55:
        v52 = 1;
        goto LABEL_56;
      }

      sub_101931B8C(v43, v44, v45, v46, v47, v48, v49, v50, v54, v55, v56, a6, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0]);
      result = abort_report_np();
    }

    else
    {
      if (a5 == 2)
      {
        v66(&v64, v23, v25);
        goto LABEL_55;
      }

      sub_101931A34(v35, v36, v37, v38, v39, v40, v41, v42, v54, v55, v56, a6, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0]);
      result = abort_report_np();
    }

    __break(1u);
    return result;
  }

  if (a5 != 2)
  {
    sub_10000EC00(v69, "InfoPlistZoneRegistration");
    sub_10079369C(a1, a2, v69);
    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    goto LABEL_55;
  }

  v52 = 0;
LABEL_56:
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  return v52;
}

void sub_100792564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 129) < 0)
  {
    operator delete(*(v41 - 152));
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(exception_object);
}

id sub_100792608(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *sub_10001A3E8();
  if ((*v3)())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#authsync getAllAuthSync start", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931E50();
    }

    sub_10000EC00(buf, "");
    v5 = sub_10078DA00(a1, buf, 0, 2);
    if (v15 < 0)
    {
      operator delete(*buf);
    }

    [(CLCompanionSyncAuthObject *)v5 setAuthMask:sub_1000193E0() == 1];
    [v2 addObject:v5];
    v6 = *(a1 + 136);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007928A0;
    v11[3] = &unk_10246FD68;
    v11[4] = v2;
    v11[5] = a1;
    [v6 iterateAllAnchorKeyPathsWithBlock:v11];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v8 = [v2 count];
      v9 = [objc_msgSend(v2 "description")];
      *buf = 134349314;
      *&buf[4] = v8;
      v13 = 2082;
      v14 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#authsync getAllAuthSync finish %{public}lu: %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931F34(v2);
    }
  }

  return v2;
}

void sub_10079287C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007928A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [objc_msgSend(a2 "legacyClientKey")];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  sub_10000EC00(__p, v5);
  v6 = sub_10078DA00(v3, __p, 0, 2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_100792928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100792944(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  if (_os_feature_enabled_impl())
  {
    v25 = 0;
    v3 = sub_1000206B4();
    if (sub_1003045C8(v3, @"CLClientManager.AssertionDueToWatchApp", &v25))
    {
      v4 = v25;
      Current = CFAbsoluteTimeGetCurrent();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = [v4 allKeys];
      v17 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v17)
      {
        v16 = *v22;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v21 + 1) + 8 * i);
            v8 = +[NSMutableDictionary dictionary];
            v10 = qword_102659E90;
            v9 = qword_102659E98;
            while (v10 != v9)
            {
              v11 = *v10++;
              v19 = 0;
              v20 = 0;
              sub_10004F9C8(v11, &v20, &v19);
              v12 = v19;
              [v8 setObject:objc_msgSend(v4 forKey:{"objectForKeyedSubscript:", v7), v20}];
              [v8 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", Current), v12}];
            }

            [v2 setObject:v8 forKey:v7];
          }

          v17 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v17);
      }
    }
  }

  else
  {
    v13 = *(a1 + 136);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100792B8C;
    v18[3] = &unk_10246FD68;
    v18[4] = v2;
    v18[5] = a1;
    [v13 iterateAllAnchorKeyPathsWithBlock:v18];
  }

  return v2;
}

void sub_100792B8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 legacyClientKey];
  sub_10000EC00(__p, [v4 UTF8String]);
  v5 = sub_1000F610C(v3, __p);
  v6 = v5;
  if (v9 < 0)
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

  sub_10000EC00(__p, [v4 UTF8String]);
  v7 = sub_100792C78(v3, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v7 count])
  {
    [*(a1 + 32) setObject:v7 forKey:v4];
  }
}

void sub_100792C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100792C78(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v4))}];
  if ([v5 isValidCKP])
  {
    v6 = +[NSMutableDictionary dictionary];
    for (i = 0; i != 11; ++i)
    {
      v8 = qword_101C8D460[i];
      if (_os_feature_enabled_impl())
      {
        if (v8 > 0xA || ((1 << v8) & 0x430) == 0)
        {
          continue;
        }
      }

      v17 = 0;
      *buf = 0;
      sub_10004F9C8(v8, buf, &v17);
      v10 = *buf;
      [*(a1 + 136) doubleForKey:*buf atKeyPath:v5 defaultValue:-1.0];
      if (v11 != -1.0)
      {
        [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), v10}];
      }

      v12 = v17;
      [*(a1 + 136) doubleForKey:v17 atKeyPath:v5 defaultValue:-1.0];
      if (v13 != -1.0)
      {
        [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), v12}];
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
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Couldn't get nvp, client:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_100792ED0(uint64_t a1, uint64_t *a2, void *a3)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D47A0 != -1)
  {
LABEL_57:
    sub_10028840C();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68289282;
    v45 = 0;
    v46 = 2082;
    v47 = "";
    v48 = 2082;
    v49 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Merging remote location usage, client:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v41 = [NSString stringWithUTF8String:v9];
  Current = CFAbsoluteTimeGetCurrent();
  for (i = 0; i != 11; ++i)
  {
    v12 = qword_101C8D460[i];
    result = _os_feature_enabled_impl();
    if (result)
    {
      if (v12 > 0xA || ((1 << v12) & 0x430) == 0)
      {
        continue;
      }
    }

    v42 = 0;
    v43 = 0;
    sub_10004F9C8(v12, &v43, &v42);
    v15 = [a3 objectForKeyedSubscript:v43];
    v16 = [a3 objectForKeyedSubscript:v42];
    v17 = v16;
    if (v15)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      if (p_info[244] != -1)
      {
        sub_10192D4D0();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        [v15 doubleValue];
        v21 = v20;
        [v17 doubleValue];
        *buf = 68289794;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2050;
        v49 = v21;
        v50 = 2050;
        v51 = v22;
        v52 = 2050;
        v53 = v12;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #warning Didn't expect a start time and a stop time, start time_s:%{public}.09f, stop time_s:%{public}.09f, service:%{public}lu}", buf, 0x30u);
      }

      [v17 doubleValue];
      v24 = v23;
      [v15 doubleValue];
      if (v24 > v25)
      {
        v15 = 0;
      }

      else
      {
        v17 = 0;
      }
    }

    if (*(a2 + 23) >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    v27 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:[NSString stringWithUTF8String:v26]];
    if (v15 | v17)
    {
      v28 = p_info[244];
      if (v15)
      {
        if (v28 != -1)
        {
          sub_10192D4D0();
        }

        v29 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v30 = a2;
          }

          else
          {
            v30 = *a2;
          }

          [v15 doubleValue];
          *buf = 68289794;
          v45 = 0;
          v46 = 2082;
          v47 = "";
          v48 = 2082;
          v49 = v30;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v50 = 2050;
          v51 = v31;
          v52 = 2050;
          v53 = v12;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Starting remote location service, client:%{public, location:escape_only}s, start time_s:%{public}.09f, service:%{public}lu}", buf, 0x30u);
        }

        if (v12 == 10)
        {
          sub_1000F6978(a1, [CLClientKeyPath clientKeyPathWithLegacyClientKey:v41], -1, 0, 0.0);
        }

        [v15 doubleValue];
        v33 = a1;
        v34 = v27;
        v35 = v12;
        v36 = 1;
      }

      else
      {
        if (!v17)
        {
          sub_101932054(v28 == -1);
          goto LABEL_57;
        }

        if (v28 != -1)
        {
          sub_10192D4D0();
        }

        v38 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v39 = a2;
          }

          else
          {
            v39 = *a2;
          }

          [v17 doubleValue];
          *buf = 68289794;
          v45 = 0;
          v46 = 2082;
          v47 = "";
          v48 = 2082;
          v49 = v39;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v50 = 2050;
          v51 = v40;
          v52 = 2050;
          v53 = v12;
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Stopping remote location service, client:%{public, location:escape_only}s, stop time_s:%{public}.09f, service:%{public}lu}", buf, 0x30u);
        }

        [v17 doubleValue];
        v33 = a1;
        v34 = v27;
        v35 = v12;
        v36 = 0;
      }

      v37 = 1;
    }

    else
    {
      v33 = a1;
      v34 = v27;
      v35 = v12;
      v36 = 0;
      v37 = 0;
      v32 = Current;
    }

    result = sub_10002FE04(v33, v34, v35, v36, v37, 1, v32);
  }

  return result;
}

id sub_100793384(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007933F8;
  v4[3] = &unk_10246FD68;
  v4[4] = a2;
  v4[5] = a1;
  return [v2 iterateAllAnchorKeyPathsWithBlock:v4];
}

void sub_1007933F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(a2, "legacyClientKey")}];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = [objc_msgSend(a2 "legacyClientKey")];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  sub_10000EC00(__p, v7);
  sub_100792ED0(v3, __p, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100793494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007934B0(uint64_t a1, void *a2)
{
  v3 = 0;
  while (1)
  {
    v4 = qword_101C8D460[v3];
    if (_os_feature_enabled_impl())
    {
      if (v4 > 0xA || ((1 << v4) & 0x430) == 0)
      {
        goto LABEL_13;
      }
    }

    v18 = 0;
    v19 = 0;
    sub_10004F9C8(v4, &v19, &v18);
    v6 = [a2 objectForKeyedSubscript:v19];
    v7 = [a2 objectForKeyedSubscript:v18];
    if (v6 && v7 != 0)
    {
      break;
    }

    if (v6)
    {
      return 1;
    }

LABEL_13:
    if (++v3 == 11)
    {
      return 0;
    }
  }

  v10 = v7;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    [v6 doubleValue];
    v13 = v12;
    [v10 doubleValue];
    *buf = 68289794;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2050;
    v25 = v13;
    v26 = 2050;
    v27 = v14;
    v28 = 2050;
    v29 = v4;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #warning Didn't expect a start time and a stop time, start time_s:%{public}.09f, stop time_s:%{public}.09f, service:%{public}lu}", buf, 0x30u);
  }

  [v10 doubleValue];
  v16 = v15;
  [v6 doubleValue];
  return v16 <= v17;
}

id sub_10079369C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = +[CLAuthSyncManager isSupported]_0();
  if (result)
  {
    result = sub_10078DA00(a1, a2, 0, 1);
    if (result)
    {
      v7 = result;
      v8 = *(a1 + 1560);
      if (*(a3 + 23) >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      v10 = [NSString stringWithUTF8String:v9];

      return [v8 addObject:v7 withSyncSessionReason:v10];
    }
  }

  return result;
}

void sub_10079373C(uint64_t a1)
{
  if (+[CLAuthSyncManager isSupported]_0())
  {
    v2 = sub_10001A3E8();
    if ((**v2)(v2))
    {
      [*(a1 + 1560) sendNotification:0];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v3 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#authsync sending kNotificationReset to the watch", v4, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019323B8();
      }
    }
  }
}

void sub_100793814(uint64_t a1)
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "#authsync received kNotificationReset from the companion", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101932494();
    }

    sub_10078E990(a1);
  }
}

void sub_100793C90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100793D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100793EA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100793FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_1007940D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_1007941E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100794594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10014588C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100794764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100794890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007948F8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v4 isValidCKP])
  {
LABEL_6:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    goto LABEL_8;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v15 = 2082;
    *&v15[2] = "";
    *&v15[10] = 2114;
    *&v15[12] = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:appLaunchedByAppLifecycleManager called for unregistered app. Skipping., Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    goto LABEL_6;
  }

LABEL_8:
  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *v15 = 2082;
    *&v15[2] = "";
    *&v15[10] = 2113;
    *&v15[12] = v4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:app launched by CLALM, Client:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if (v4)
  {
    [v4 cppClientKey];
  }

  else
  {
    *buf = 0;
    *v15 = 0;
    *&v15[8] = 0;
  }

  v7 = sub_100046778((a1 + 464), buf);
  *(v7 + 12) += 500;
  if ((v15[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
  [v9 setClientKey:{objc_msgSend(v4, "clientKey")}];
  [v9 setStartTime:Current];
  [v9 setStopTime:Current];
  [*(a1 + 504) writeSecondaryObject:v9 toField:1];
  if (v4)
  {
    [v4 cppClientKey];
  }

  else
  {
    *buf = 0;
    *v15 = 0;
    *&v15[8] = 0;
  }

  v10 = sub_10045EF04(a1 + 800, buf);
  v11 = a1 + 808;
  if ((v15[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v11 != v10)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v15 = 2082;
      *&v15[2] = "";
      *&v15[10] = 2114;
      *&v15[12] = v4;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Faulting for logs explaining usage score increment, ClientKey:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v13 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v15 = 2082;
      *&v15[2] = "";
      *&v15[10] = 2114;
      *&v15[12] = v4;
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Faulting for logs explaining usage score increment", "{msg%{public}.0s:Faulting for logs explaining usage score increment, ClientKey:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }
}

void sub_100794C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100794D08(uint64_t a1)
{
  v15 = 0;
  v2 = sub_1000206B4();
  v3 = sub_10005BBE4(v2, "SystemServiceGeneration", &v15) ^ 1;
  if (v15 < 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 136);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007A6C10;
  v13[3] = &unk_1024704E8;
  v13[4] = a1;
  v14 = v4;
  [v5 iterateAllAnchorKeyPathsWithBlock:v13];
  if (v4 == 1)
  {
    v6 = sub_1000206B4();
    *v12 = 2;
    sub_10004345C(v6, "SystemServiceGeneration", v12);
    v7 = *sub_1000206B4();
    (*(v7 + 944))();
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "AuthMigrate: successfully resetted all SystemService authorization mask", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101932710();
    }

    [*(a1 + 136) persist];
  }

  sub_1001D2F14(a1);
  sub_100044F7C(a1);
  [*(a1 + 1560) considerPerformingAForcedFullSync];
  v9 = sub_1000206B4();
  sub_1004FA94C(v9);
  v10 = *sub_1000206B4();
  (*(v10 + 944))();
  return sub_10076DAA0(*(a1 + 1040));
}

void sub_100794F34(uint64_t a1, void *a2)
{
  if (*(a1 + 1128))
  {
    if ([*(a1 + 1112) containsObject:a2])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v5 = [a2 UTF8String];
        v6 = *(a1 + 1112);
        v10 = 68289794;
        *v11 = 0;
        *&v11[4] = 2082;
        *&v11[6] = "";
        v12 = 2082;
        v13 = v5;
        v14 = 2114;
        v15 = v6;
        v16 = 2050;
        v17 = [v6 count];
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:reset completion reporting, Current Identifier:%{public, location:escape_only}s, ResetIdentifiers Snapshot:%{public, location:escape_only}@, Count:%{public}ld}", &v10, 0x30u);
      }

      [*(a1 + 1112) removeObject:a2];
      [*(a1 + 128) setArray:*(a1 + 1112) forKey:@"ResetIdentifiers"];
      if (![*(a1 + 1112) count])
      {
        if (qword_1025D4790 != -1)
        {
          sub_10192DAA4();
        }

        v7 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Completion reported back for all Reset registered clients", &v10, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019328DC();
        }

        *(a1 + 1128) = 0;
        [*(a1 + 256) setNextFireDelay:0.0];
      }
    }

    else
    {
      [*(a1 + 128) setArray:0 forKey:@"ResetIdentifiers"];
      [*(a1 + 128) setInt:0 forKey:@"ResetRetrialCount"];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v10 = 138412290;
        *v11 = a2;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Reset registration and completion reporting is un-balanced. Completion of Reset reported for unregistered identifier: %@", &v10, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019327EC();
      }
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
      v10 = 68289282;
      *v11 = 0;
      *&v11[4] = 2082;
      *&v11[6] = "";
      v12 = 2082;
      v13 = [a2 UTF8String];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Skip completion reporting. No Reset in progress, Identifier:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }
  }
}

void sub_100795344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100795358(uint64_t a1, void *a2, void *a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 1026;
    v11 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Setting client:%@ background indicator to %{public}d", &v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019329B8(a2, a3);
  }

  return sub_1007A493C(a1, a2, a3, 1);
}

void sub_1007955BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100795630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100795848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100795940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

id sub_100795954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100033370(a1, a2);
  v6 = *(a1 + 136);
  if (a3)
  {

    return [v6 setString:a3 forKey:@"Purpose" atKeyPath:v5];
  }

  else
  {

    return [v6 removeValueForKey:@"Purpose" atKeyPath:v5];
  }
}

void sub_100795A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100795ABC(id *a1, void *a2)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a2);
        }

        sub_1007778FC(a1, [CLClientKeyPath clientKeyPathWithLegacyClientKey:*(*(&v8 + 1) + 8 * v7)]);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void *sub_100795C50(uint64_t a1, uint64_t a2, int a3)
{
  v4 = [*(a1 + 136) dictionary];
  if (v4)
  {
    v5 = v4;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v6 = objc_opt_new();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (!v7)
      {
        return v6;
      }

      v9 = v7;
      v24 = v6;
      v10 = *v30;
      *&v8 = 138477827;
      v23 = v8;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        [v5 objectForKeyedSubscript:{v12, v23}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 isEqualToString:@"e:"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"p:") & 1) != 0 || objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"AnchorKeyPath") || objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"PrimaryKeyPath") || objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"AuthLimitingKeyPath") || !objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"Authorization") && objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"SuppressShowingInSettings"))
        {
          goto LABEL_15;
        }

        v13 = [CLClientKeyPath clientKeyPathWithClientKey:v12];
        v14 = [v5 objectForKeyedSubscript:v12];
        v27 = v13;
        if ([*(a1 + 136) isKeyPathRegisteredSystemService:v13])
        {
          v15 = v14;
          if (sub_1000337DC(v14) != 8 && sub_1000E64F4([(CLClientKeyPath *)v27 bundlePath]) && (!a3 || sub_100D96660(v14)))
          {
            goto LABEL_29;
          }
        }

        else
        {
          v15 = v14;
          if (([v14 objectForKeyedSubscript:@"Authorization"] || objc_msgSend(v14, "objectForKeyedSubscript:", @"SupportedAuthorizationMask") || objc_msgSend(v14, "objectForKeyedSubscript:", @"SubIdentities")) && (!a3 || sub_100D96660(v14)))
          {
LABEL_29:
            v16 = [v15 cl_deepMutableCopy];
            v25 = v16;
            v26 = [(NSString *)[(CLClientKeyPath *)v27 clientAnchor] copy];
            if (v26 && v16)
            {
              sub_10078A488(a1, v27, v16);
              if ([v16 objectForKeyedSubscript:@"PlatformSpecificBundleId"] && objc_msgSend(v16, "objectForKeyedSubscript:", @"BundleId"))
              {
                [v16 setObject:objc_msgSend(v16 forKeyedSubscript:{"objectForKeyedSubscript:", @"PlatformSpecificBundleId", @"BundleId"}];
              }

              if ([*(a1 + 136) BOOLForKey:@"Hidden" atKeyPath:v27 defaultValue:0])
              {
                [v16 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", sub_10023D76C(a1, v27)), @"SupportedAuthorizationMask"}];
              }

              sub_100D96874(v16);
              [v24 setObject:v16 forKeyedSubscript:v26];
            }

            else if (v16)
            {
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v17 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
              {
                *buf = 68289283;
                *v34 = 0;
                *&v34[4] = 2082;
                *&v34[6] = "";
                v35 = 2113;
                v36 = v12;
                _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client CKP key is nil in CLClientManager::copyClients, key:%{private, location:escape_only}@}", buf, 0x1Cu);
                if (qword_1025D47A0 != -1)
                {
                  sub_10192D4D0();
                }
              }

              v18 = off_1025D47A8;
              if (os_signpost_enabled(off_1025D47A8))
              {
                *buf = 68289283;
                *v34 = 0;
                *&v34[4] = 2082;
                *&v34[6] = "";
                v35 = 2113;
                v36 = v12;
                _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Client CKP key is nil in CLClientManager::copyClients", "{msg%{public}.0s:Client CKP key is nil in CLClientManager::copyClients, key:%{private, location:escape_only}@}", buf, 0x1Cu);
              }
            }

            else
            {
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v19 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
              {
                v20 = [(CLClientKeyPath *)v27 clientAnchor];
                *buf = v23;
                *v34 = v20;
                _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "Client record is nil in CLClientManager::copyClients for clientKey %{private}@", buf, 0xCu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101932BB4(&v37, v27, &v38);
              }
            }
          }
        }

LABEL_15:
        if (v9 == ++v11)
        {
          v21 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
          v9 = v21;
          if (!v21)
          {
            return v24;
          }

          goto LABEL_6;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1007962C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    v6 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v5), "dictionary"}];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 16);

  return v7(a3, v6);
}

id sub_100796390(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = [*(a1 + 136) intForKey:@"SupportedAuthorizationMask" atKeyPath:v3 defaultValue:0];
  if (([*(a1 + 136) BOOLForKey:@"Hidden" atKeyPath:v3 defaultValue:0] & 1) != 0 || (v4 & 4) == 0 || objc_msgSend(*(a1 + 136), "intForKey:atKeyPath:defaultValue:", @"Authorization", v3, 0) != 2)
  {
    return 0;
  }

  v5 = *(a1 + 136);

  return [v5 BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v3 defaultValue:1];
}

void sub_1007965AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100796694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_1007967B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100796A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100796A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, double a9, double a10, double a11, unsigned __int8 a12, uint64_t a13)
{
  if (qword_1025D4790 != -1)
  {
    sub_10192F910();
  }

  v18 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    *buf = 68291586;
    *&buf[4] = 0;
    v67 = 2082;
    v68 = "";
    v69 = 2082;
    v70 = v19;
    v71 = 2050;
    v72 = a4;
    v73 = 2082;
    v74 = v20;
    v75 = 1040;
    v76 = LocationLogEncryptionDataSize();
    v77 = 2098;
    v78 = LocationLogEncryptionEncryptData();
    v79 = 1040;
    v80 = LocationLogEncryptionDataSize();
    v81 = 2098;
    v82 = LocationLogEncryptionEncryptData();
    v83 = 2050;
    v84 = a5;
    v85 = 2050;
    v86 = a6;
    v87 = 2050;
    v88 = a7;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Registration for InterestZone #pla, clientKey:%{public, location:escape_only}s, type:%{public, location:CLClientInterestZoneType}lld, zoneIdentifier:%{public, location:escape_only}s, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, PhenolicLocation:%{public, location:CLClientPhenolicLocation}lld, ServiceMaskOperator:%{public, location:CLClientInterestZoneServiceMaskOperator}lld, ProvenanceType:%{public, location:CLClientInterestZoneProvenanceType}lld}", buf, 0x6Eu);
  }

  if (*(a2 + 23) >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  v22 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v21))}];
  if (([v22 isValidCKP] | a12))
  {
    if (([v22 isValidCKP] & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      v24 = [*(a1 + 136) registerClient:+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath fromAuthSync:{"clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v23)), 0}];
      if (*(a3 + 23) >= 0)
      {
        v25 = a3;
      }

      else
      {
        v25 = *a3;
      }

      v22 = [*(a1 + 136) registerSubIdentity:+[NSString stringWithUTF8String:](NSString withType:"stringWithUTF8String:" forAnchorKeyPath:{v25), 122, v24}];
    }

    if (a4 == 2)
    {
      [*(a1 + 136) setInt:a5 forKey:@"PhenolicLocation" atKeyPath:v22];
    }

    else
    {
      if (a4 != 1)
      {
        v60 = NSLocalizedDescriptionKey;
        v61 = @"AuthZone registration failed. Invalid ZoneType.";
        v38 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        (*(a13 + 16))(a13, [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v38]);
        return;
      }

      if (a11 >= 50.0)
      {
        if (a11 > 1000.0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v39 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v40 = a2;
            }

            else
            {
              v40 = *a2;
            }

            if (*(a3 + 23) >= 0)
            {
              v41 = a3;
            }

            else
            {
              v41 = *a3;
            }

            *buf = 68289794;
            *&buf[4] = 0;
            v67 = 2082;
            v68 = "";
            v69 = 2082;
            v70 = v40;
            v71 = 2082;
            v72 = v41;
            v73 = 2050;
            v74 = 0x408F400000000000;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Zone radius too large. Updated to max threshold, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s, MaxRadiusThreshold:%{public}.3f}", buf, 0x30u);
          }

          a11 = 1000.0;
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v26 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v27 = a2;
          }

          else
          {
            v27 = *a2;
          }

          if (*(a3 + 23) >= 0)
          {
            v28 = a3;
          }

          else
          {
            v28 = *a3;
          }

          *buf = 68289794;
          *&buf[4] = 0;
          v67 = 2082;
          v68 = "";
          v69 = 2082;
          v70 = v27;
          v71 = 2082;
          v72 = v28;
          v73 = 2050;
          v74 = 0x4049000000000000;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Zone radius too small. Updated to min threshold, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s, MinRadiusThreshold:%{public}.3f}", buf, 0x30u);
        }

        a11 = 50.0;
      }

      if (!sub_100020608(a9, a10))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v45 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v46 = [@"Registration : Invalid lat/lon." UTF8String];
          v47 = *(a2 + 23) >= 0 ? a2 : *a2;
          v48 = *(a3 + 23) >= 0 ? a3 : *a3;
          *buf = 68289794;
          *&buf[4] = 0;
          v67 = 2082;
          v68 = "";
          v69 = 2082;
          v70 = v46;
          v71 = 2082;
          v72 = v47;
          v73 = 2082;
          v74 = v48;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v49 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v50 = [@"Registration : Invalid lat/lon." UTF8String];
          if (*(a2 + 23) >= 0)
          {
            v51 = a2;
          }

          else
          {
            v51 = *a2;
          }

          if (*(a3 + 23) >= 0)
          {
            v52 = a3;
          }

          else
          {
            v52 = *a3;
          }

          *buf = 68289794;
          *&buf[4] = 0;
          v67 = 2082;
          v68 = "";
          v69 = 2082;
          v70 = v50;
          v71 = 2082;
          v72 = v51;
          v73 = 2082;
          v74 = v52;
          _os_signpost_emit_with_name_impl(dword_100000000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AuthZone operation failed.", "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
        }

        if (a13)
        {
          v62 = NSLocalizedDescriptionKey;
          v63 = @"Registration : Invalid lat/lon.";
          v53 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          (*(a13 + 16))(a13, [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v53]);
        }

        return;
      }

      [*(a1 + 136) setDouble:@"Latitude" forKey:v22 atKeyPath:a9];
      [*(a1 + 136) setDouble:@"Longitude" forKey:v22 atKeyPath:a10];
      [*(a1 + 136) setDouble:@"Radius" forKey:v22 atKeyPath:a11];
    }

    [*(a1 + 136) setInt:a4 forKey:@"Type" atKeyPath:v22];
    [*(a1 + 136) setInt:a6 forKey:@"ServiceMaskOperator" atKeyPath:v22];
    [*(a1 + 136) setInt:a7 forKey:@"Provenance" atKeyPath:v22];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v42 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v43 = a2;
      }

      else
      {
        v43 = *a2;
      }

      if (*(a3 + 23) >= 0)
      {
        v44 = a3;
      }

      else
      {
        v44 = *a3;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      v67 = 2082;
      v68 = "";
      v69 = 2082;
      v70 = v43;
      v71 = 2082;
      v72 = v44;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:InterestZone registered, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x26u);
    }

    if (a8 && (sub_10000EC00(buf, "ZoneRegistration"), sub_10079369C(a1, a2, buf), SBYTE3(v70) < 0))
    {
      operator delete(*buf);
      if (!a13)
      {
        return;
      }
    }

    else if (!a13)
    {
      return;
    }

    (*(a13 + 16))(a13, 0);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v29 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v30 = [@"Registration : Zone already exists and overriding is not allowed." UTF8String];
      v31 = *(a2 + 23) >= 0 ? a2 : *a2;
      v32 = *(a3 + 23) >= 0 ? a3 : *a3;
      *buf = 68289794;
      *&buf[4] = 0;
      v67 = 2082;
      v68 = "";
      v69 = 2082;
      v70 = v30;
      v71 = 2082;
      v72 = v31;
      v73 = 2082;
      v74 = v32;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v33 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v34 = [@"Registration : Zone already exists and overriding is not allowed." UTF8String];
      if (*(a2 + 23) >= 0)
      {
        v35 = a2;
      }

      else
      {
        v35 = *a2;
      }

      if (*(a3 + 23) >= 0)
      {
        v36 = a3;
      }

      else
      {
        v36 = *a3;
      }

      *buf = 68289794;
      *&buf[4] = 0;
      v67 = 2082;
      v68 = "";
      v69 = 2082;
      v70 = v34;
      v71 = 2082;
      v72 = v35;
      v73 = 2082;
      v74 = v36;
      _os_signpost_emit_with_name_impl(dword_100000000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AuthZone operation failed.", "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
    }

    if (a13)
    {
      v64 = NSLocalizedDescriptionKey;
      v65 = @"Registration : Zone already exists and overriding is not allowed.";
      v37 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      (*(a13 + 16))(a13, [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v37]);
    }
  }
}

void sub_1007974D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007975D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007976B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1007976E8(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1025D4790 != -1)
  {
    sub_10192F910();
  }

  v10 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (a3[23] >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = v11;
    v34 = 2082;
    v35 = v12;
    v36 = 1026;
    LODWORD(v37) = a4;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SetRelevanceForInterestZone, clientKey:%{public, location:escape_only}s, zoneIdentifier:%{public, location:escape_only}s, isRelevant:%{public}hhd}", buf, 0x2Cu);
  }

  if (a2[23] >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13))}];
  if ([v14 isValidCKP])
  {
    if (a3[23] >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    v16 = [v14 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", v15), 122}];
    [*(a1 + 136) setBool:a4 forKey:@"Relevant" atKeyPath:v16];
    sub_10000EC00(buf, "");
    sub_100018918(a1, v16, buf);
    if (SBYTE3(v33) < 0)
    {
      operator delete(*buf);
      if (!a5)
      {
        return;
      }
    }

    else if (!a5)
    {
      return;
    }

    v26 = 0;
LABEL_44:
    (*(a5 + 16))(a5, v26);
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v18 = [@"setRelevance : Zone not found." UTF8String];
    v19 = a2[23] >= 0 ? a2 : *a2;
    v20 = a3[23] >= 0 ? a3 : *a3;
    *buf = 68289794;
    *&buf[4] = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = v18;
    v34 = 2082;
    v35 = v19;
    v36 = 2082;
    v37 = v20;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v21 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v22 = [@"setRelevance : Zone not found." UTF8String];
    if (a2[23] >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    if (a3[23] >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = v22;
    v34 = 2082;
    v35 = v23;
    v36 = 2082;
    v37 = v24;
    _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AuthZone operation failed.", "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
  }

  if (a5)
  {
    v27 = NSLocalizedDescriptionKey;
    v28 = @"setRelevance : Zone not found.";
    v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v26 = [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v25];
    goto LABEL_44;
  }
}

void sub_100797AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100797B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100797C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100797CA0(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (qword_1025D4790 != -1)
  {
    sub_10192F910();
  }

  v8 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (a3[23] >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    *buf = 68289538;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v37 = 2082;
    v38 = v9;
    v39 = 2082;
    v40 = v10;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delete InterestZone, clientKey:%{public, location:escape_only}s, zoneIdentifier:%{public, location:escape_only}s}", buf, 0x26u);
  }

  if (a2[23] >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v11))}];
  if ([v12 isValidCKP])
  {
    if (a3[23] >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [v12 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", v13), 122}];
    sub_10000EC00(__p, "ClientRemoved");
    sub_100777AC4(a1, v14, 1, __p);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = *(a1 + 352);
    if (a2[23] >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    v17 = [NSString stringWithUTF8String:v16];
    if (a3[23] >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    [v15 stopCircularZoneMonitoringForClient:v17 withZoneId:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v18)}];
    if (a4)
    {
      v19 = 0;
LABEL_49:
      (*(a4 + 16))(a4, v19);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v21 = [@"deleteZone : Zone not found." UTF8String];
      v22 = a2[23] >= 0 ? a2 : *a2;
      v23 = a3[23] >= 0 ? a3 : *a3;
      *buf = 68289794;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2082;
      v38 = v21;
      v39 = 2082;
      v40 = v22;
      v41 = 2082;
      v42 = v23;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v24 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v25 = [@"deleteZone : Zone not found." UTF8String];
      if (a2[23] >= 0)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a2;
      }

      if (a3[23] >= 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = *a3;
      }

      *buf = 68289794;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2082;
      v38 = v25;
      v39 = 2082;
      v40 = v26;
      v41 = 2082;
      v42 = v27;
      _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AuthZone operation failed.", "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
    }

    if (a4)
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"deleteZone : Zone not found.";
      v28 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v19 = [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v28];
      goto LABEL_49;
    }
  }
}

void sub_1007980A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007981AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_100798220(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    if (sub_1007A8220(a1, v6, 2))
    {
      [*(a1 + 136) removeValueForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:v6];
      if (a3 == 3)
      {
        [*(a1 + 136) setDouble:@"VisitHistoryAccessAllowedTime" forKey:v6 atKeyPath:CFAbsoluteTimeGetCurrent()];
      }

      [*(a1 + 136) setInt:a3 forKey:@"VisitHistoryAccess" atKeyPath:v6];
      [*(a1 + 136) persist];
      sub_10000EC00(&__p, "");
      sub_100018918(a1, v6, &__p);
      if (SBYTE3(v17) < 0)
      {
        operator delete(__p);
      }

      sub_100044F7C(a1);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289538;
        v14 = 2082;
        v15 = "";
        v16 = 2114;
        v17 = v6;
        v18 = 1026;
        v19 = a3;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:set #VisitHistoryAccess - success, Client:%{public, location:escape_only}@, state:%{public}d}", &__p, 0x22u);
      }

      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __p = 68289282;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = v6;
      v10 = "{msg%{public}.0s:set #VisitHistoryAccess - locIntl NotSupported, Client:%{public, location:escape_only}@}";
      v11 = v12;
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __p = 68289282;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = a2;
      v10 = "{msg%{public}.0s:set #VisitHistoryAccess - invalid ckp, Client:%{public, location:escape_only}@}";
      v11 = v9;
LABEL_20:
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, v10, &__p, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_1007984E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079856C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    if (sub_1007A8220(a1, v6, 1))
    {
      [*(a1 + 136) setInt:a3 forKey:@"LearnedRoutesAccess" atKeyPath:v6];
      [*(a1 + 136) persist];
      sub_10000EC00(&__p, "");
      sub_100018918(a1, v6, &__p);
      if (SBYTE3(v17) < 0)
      {
        operator delete(__p);
      }

      sub_100044F7C(a1);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289538;
        v14 = 2082;
        v15 = "";
        v16 = 2114;
        v17 = v6;
        v18 = 1026;
        v19 = a3;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:set #LearnedRoutesAccess - success, Client:%{public, location:escape_only}@, state:%{public}d}", &__p, 0x22u);
      }

      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __p = 68289282;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = v6;
      v10 = "{msg%{public}.0s:set #LearnedRoutesAccess - locIntl NotSupported, Client:%{public, location:escape_only}@}";
      v11 = v12;
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __p = 68289282;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = a2;
      v10 = "{msg%{public}.0s:set #LearnedRoutesAccess - invalid ckp, Client:%{public, location:escape_only}@}";
      v11 = v9;
LABEL_18:
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, v10, &__p, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_1007987F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007988F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_100798960(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  if (v3)
  {
    [v3 cppClientKey];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
  }

  v4 = a1 + 784 != sub_10045EF04(a1 + 776, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1007989F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100798AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1006E69AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100798CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1007A8220(a1, a2, 1);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = a2;
    v13 = 1026;
    v14 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Loc-Intl supported for #LearnedRoutes, Client:%{public, location:escape_only}@, supported:%{public}hhd}", v8, 0x22u);
  }

  return (*(a3 + 16))(a3, 0, v5);
}

void sub_100798E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1007A8814(a1, a2, &v5);
  v4 = sub_100E24778(v5);
  (*(a3 + 16))(a3, 0, v4);
  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_100798E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100798F60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100798F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (([v5 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v43 = 2082;
      v44 = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient: unknown client}", buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289026;
      v43 = 2082;
      v44 = "";
      v14 = "#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient: unknown client";
      v15 = "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient: unknown client}";
      v16 = v18;
      v19 = 18;
LABEL_31:
      _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, buf, v19);
      return;
    }

    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v43 = 2082;
    v44 = "";
    v45 = 2114;
    *v46 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  v41 = 0;
  if (!a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v43 = 2082;
      v44 = "";
      v45 = 2114;
      *v46 = v5;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient may not take nil data, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v21 = off_1025D47A8;
    if (!os_signpost_enabled(off_1025D47A8))
    {
      return;
    }

    *buf = 68289282;
    v43 = 2082;
    v44 = "";
    v45 = 2114;
    *v46 = v5;
    v14 = "#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient may not take nil data";
    v15 = "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient may not take nil data, Client:%{public, location:escape_only}@}";
    goto LABEL_29;
  }

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v7 fromData:v8 error:objc_opt_class(), 0], a3, &v41];
  if (!v41)
  {
    v22 = v9;
    v23 = [objc_msgSend(v9 objectsForKeys:&off_1025543F0 notFoundMarker:{+[NSNull null](NSNull, "null")), "count"}];
    if (v23 != [&off_1025543F0 count])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v29 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v30 = [&off_1025543F0 count];
        *buf = 68289538;
        v43 = 2082;
        v44 = "";
        v45 = 2050;
        *v46 = v30;
        *&v46[8] = 2050;
        v47 = v23;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TemporaryAuth missing one or more keys from decoded dict, target:%{public}lu, found:%{public}lu}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v28 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        return;
      }

      v31 = [&off_1025543F0 count];
      *buf = 68289538;
      v43 = 2082;
      v44 = "";
      v45 = 2050;
      *v46 = v31;
      *&v46[8] = 2050;
      v47 = v23;
      v14 = "#TemporaryAuth missing one or more keys from decoded dict";
      v15 = "{msg%{public}.0s:#TemporaryAuth missing one or more keys from decoded dict, target:%{public}lu, found:%{public}lu}";
LABEL_50:
      v16 = v28;
      v19 = 38;
      goto LABEL_31;
    }

    if ([v22 valueForKey:@"TransientInfoPayloadTimestamp"])
    {
      [objc_msgSend(v22 valueForKey:{@"TransientInfoPayloadTimestamp", "doubleValue"}];
      v25 = v24;
      Current = CFAbsoluteTimeGetCurrent();
      if (vabdd_f64(Current, v25) <= 10.0)
      {
        v33 = [objc_msgSend(v22 valueForKey:{@"TransientInfoPayloadHasWIU", "BOOLValue"}];
        v34 = [objc_msgSend(v22 valueForKey:{@"TransientInfoPayloadHasPrecise", "BOOLValue"}];
        v35 = [objc_msgSend(v22 valueForKey:{@"TransientInfoPayloadInUseness", "intValue"}];
        sub_10077B960(*(a1 + 136), v5, 2, v34);
        sub_10077B960(*(a1 + 136), v5, 1, v33);
        [*(a1 + 136) persist];
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v36 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289794;
          v43 = 2082;
          v44 = "";
          v45 = 1026;
          *v46 = v34;
          *&v46[4] = 1026;
          *&v46[6] = v35;
          LOWORD(v47) = 1026;
          *(&v47 + 2) = v33;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient, hasPrecise:%{public}hhd, inUseInt:%{public}d, hasWIU:%{public}hhd}", buf, 0x24u);
        }

        v37 = sub_101320CB8(v35);
        if (v37)
        {
          [v5 legacyClientKey];
          v38 = *(a1 + 400);
          if (v5)
          {
            [v5 cppClientKey];
          }

          else
          {
            memset(v40, 0, sizeof(v40));
          }

          sub_10000EC00(v39, "setTemporaryAuthorizationStatusInfoForClient");
          sub_100BA11E4(v38, v40, v39, v37, 1, buf);
          sub_1007A6D38();
        }

        if ((v33 | v34))
        {
          sub_10000EC00(buf, "");
          sub_100018918(a1, v5, buf);
          if ((v46[3] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v27 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289538;
        v43 = 2082;
        v44 = "";
        v45 = 2050;
        *v46 = Current;
        *&v46[8] = 2050;
        v47 = v25;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient stale info received, tNow:%{public}ld, sentTime:%{public}ld}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v28 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        return;
      }

      *buf = 68289538;
      v43 = 2082;
      v44 = "";
      v45 = 2050;
      *v46 = Current;
      *&v46[8] = 2050;
      v47 = v25;
      v14 = "#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient stale info received";
      v15 = "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient stale info received, tNow:%{public}ld, sentTime:%{public}ld}";
      goto LABEL_50;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v32 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v43 = 2082;
      v44 = "";
      v45 = 2114;
      *v46 = v5;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient failed to find a timestamp in the packaged data. Ignoring the packet, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v21 = off_1025D47A8;
    if (!os_signpost_enabled(off_1025D47A8))
    {
      return;
    }

    *buf = 68289282;
    v43 = 2082;
    v44 = "";
    v45 = 2114;
    *v46 = v5;
    v14 = "#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient failed to find a timestamp in the packaged data. Ignoring the packet";
    v15 = "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient failed to find a timestamp in the packaged data. Ignoring the packet, Client:%{public, location:escape_only}@}";
LABEL_29:
    v16 = v21;
    goto LABEL_30;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    v11 = [objc_msgSend(v41 "description")];
    *buf = 68289282;
    v43 = 2082;
    v44 = "";
    v45 = 2082;
    *v46 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TemporaryAuth encountered error while decoding, error:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v12 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v13 = [objc_msgSend(v41 "description")];
    *buf = 68289282;
    v43 = 2082;
    v44 = "";
    v45 = 2082;
    *v46 = v13;
    v14 = "#TemporaryAuth encountered error while decoding";
    v15 = "{msg%{public}.0s:#TemporaryAuth encountered error while decoding, error:%{public, location:escape_only}s}";
    v16 = v12;
LABEL_30:
    v19 = 28;
    goto LABEL_31;
  }
}

void sub_100799C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100799DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

NSData *sub_100799DF4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v3 isValidCKP])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2114;
      v27 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v5 = [*(a1 + 136) intForKey:@"TemporaryAuthorization" atKeyPath:v3 defaultValue:0];
    v21 = sub_1000199AC(*(a1 + 400), v3);
    v6 = v5;
    v7 = v5 & 1;
    v8 = sub_101320A5C(&v21);
    Current = CFAbsoluteTimeGetCurrent();
    v34[0] = @"TransientInfoPayloadTimestamp";
    v35[0] = [NSNumber numberWithDouble:?];
    v34[1] = @"TransientInfoPayloadInUseness";
    v35[1] = [NSNumber numberWithInt:v8];
    v34[2] = @"TransientInfoPayloadHasPrecise";
    v35[2] = [NSNumber numberWithBool:(v5 >> 1) & 1];
    v34[3] = @"TransientInfoPayloadHasWIU";
    v35[3] = [NSNumber numberWithBool:v5 & 1];
    v10 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68290050;
      v24 = 2082;
      v23 = 0;
      v25 = "";
      v26 = 2050;
      v27 = Current;
      v28 = 1026;
      v29 = v8;
      v30 = 1026;
      v31 = v7;
      v32 = 1026;
      v33 = (v6 & 2) >> 1;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient, tNow:%{public}ld, inUse:%{public}d, hasTempWIU:%{public}hhd, hasTempPrecise:%{public}hhd}", buf, 0x2Eu);
    }

    v20 = 0;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v20];
    if (v20)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v14 = [objc_msgSend(v20 "description")];
        *buf = 68289282;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2082;
        v27 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TemporaryAuth encountered error while converting, error:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v16 = [objc_msgSend(v20 "description")];
        *buf = 68289282;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2082;
        v27 = v16;
        _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TemporaryAuth encountered error while converting", "{msg%{public}.0s:#TemporaryAuth encountered error while converting, error:%{public, location:escape_only}s}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient: unknown client}", buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient: unknown client", "{msg%{public}.0s:#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient: unknown client}", buf, 0x12u);
    }

    return 0;
  }

  return v12;
}

void sub_10079A390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

double sub_10079A3A4(uint64_t a1, void *a2, double a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      *v15 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#appclip setting for bundle ID %@", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101932EBC();
    }

    [*(a1 + 136) doubleForKey:@"AuthorizationRegisterTime" atKeyPath:v6 defaultValue:-1.0];
    if (v8 == -1.0)
    {
      TMGetKernelMonotonicClock();
    }

    v9 = v8;
    [*(a1 + 136) setDouble:@"AuthorizationRegisterTime" forKey:v6 atKeyPath:v8 + a3];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289794;
      *v15 = 0;
      *&v15[4] = 2082;
      *&v15[6] = "";
      v16 = 2114;
      v17 = v6;
      v18 = 2050;
      v19 = v9;
      v20 = 2050;
      v21 = a3;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#appclip setOrChangeAppClipAuthorizationTime, Client:%{public, location:escape_only}@, registrationTime:%{public}f, delta:%{public}f}", &v14, 0x30u);
    }

    [*(a1 + 136) persist];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v14 = 68289282;
      *v15 = 0;
      *&v15[4] = 2082;
      *&v15[6] = "";
      v16 = 2114;
      v17 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#appclip no such client, Client:%{public, location:escape_only}@}", &v14, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v12 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v14 = 68289282;
      *v15 = 0;
      *&v15[4] = 2082;
      *&v15[6] = "";
      v16 = 2114;
      v17 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#appclip no such client", "{msg%{public}.0s:#appclip no such client, Client:%{public, location:escape_only}@}", &v14, 0x1Cu);
    }
  }

  return -1.0;
}

id sub_10079A6C8(uint64_t a1, double a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#appclip looking for authorizations to clear}", buf, 0x12u);
  }

  v5 = +[NSMutableArray array];
  v6 = *(a1 + 136);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1007A3ACC;
  v21[3] = &unk_1024704A8;
  *&v21[6] = a2;
  v21[4] = v5;
  v21[5] = a1;
  [v6 iterateAllAnchorKeyPathsWithBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v7)
  {
    v9 = *v18;
    *&v8 = 68289282;
    v14 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2114;
          v27 = v11;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#appclip removing client because it expired, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        sub_10000EC00(__p, "ClientRemoved");
        sub_100777AC4(a1, v11, 1, __p);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v28 count:16];
    }

    while (v7);
  }

  return [*(a1 + 136) persist];
}

void sub_10079A974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10079ABDC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102470948;
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

void *sub_10079AE34(void *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = xmmword_101C8D3C0;
  v4 = a1 + 1;
  a1[3] = 0;
  if (a2 == 1)
  {
    v7 = sub_1000206B4();
    if ((sub_1000B9370(v7, "lastBluetoothImproveAccuracyNotification", v4) & 1) == 0)
    {
      *v4 = 0xBFF0000000000000;
    }

    sub_10001CAF4(buf);
    v6 = sub_1000B9370(*buf, "BluetoothImproveAccuracyNotificationInterval", a1 + 2);
  }

  else
  {
    if (a2)
    {
      goto LABEL_13;
    }

    v5 = sub_1000206B4();
    if ((sub_1000B9370(v5, "lastWifiImproveAccuracyNotification", v4) & 1) == 0)
    {
      *v4 = 0xBFF0000000000000;
    }

    sub_10001CAF4(buf);
    v6 = sub_1000B9370(*buf, "WifiImproveAccuracyNotificationInterval", a1 + 2);
  }

  v8 = v6;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v8 & 1) == 0)
  {
    a1[2] = 0x4122750000000000;
  }

LABEL_13:
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = "Unknown";
    if (a2 == 1)
    {
      v10 = "Bluetooth";
    }

    if (a2)
    {
      v11 = v10;
    }

    else
    {
      v11 = "Wifi";
    }

    sub_10000EC00(__p, v11);
    if (v27 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = *__p;
    }

    v13 = *v4;
    v14 = a1[2];
    *buf = 136315650;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    v30 = 2048;
    v31 = v14;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "last improve accuracy notification for %s, %f, retry interval, %f", buf, 0x20u);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v16 = "Unknown";
    if (a2 == 1)
    {
      v16 = "Bluetooth";
    }

    if (a2)
    {
      v17 = v16;
    }

    else
    {
      v17 = "Wifi";
    }

    sub_10000EC00(v22, v17);
    if (v23 >= 0)
    {
      v18 = v22;
    }

    else
    {
      v18 = v22[0];
    }

    v19 = *v4;
    v20 = a1[2];
    *__p = 136315650;
    *&__p[4] = v18;
    v25 = 2048;
    v26 = v19;
    v27 = 2048;
    v28 = v20;
    v21 = _os_log_send_and_compose_impl();
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "CLClientManager::ImproveAccuracyNotification::ImproveAccuracyNotification(CLClientManagerTechnology)", "%s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  return a1;
}

void sub_10079B184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079B1A8(void *a1)
{
  if (a1[3])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = "Unknown";
      if (*a1 == 1)
      {
        v3 = "Bluetooth";
      }

      if (*a1)
      {
        v4 = v3;
      }

      else
      {
        v4 = "Wifi";
      }

      sub_10000EC00(__p, v4);
      if (v10 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315138;
      v12 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "clear %s improve accuracy notification", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933088(a1);
    }

    v6 = a1[3];
    a1[3] = 0;
    v7 = sub_100107858();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10079B480;
    v8[3] = &unk_102449A78;
    v8[4] = v6;
    CFRunLoopPerformBlock(v7, kCFRunLoopCommonModes, v8);
  }
}

void sub_10079B350(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 24) = 0;
  v2 = sub_100107858();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10079B3DC;
  block[3] = &unk_102449A78;
  block[4] = v1;
  CFRunLoopPerformBlock(v2, kCFRunLoopCommonModes, block);
}

void sub_10079B3DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_10079B3EC(double *a1, double a2)
{
  v2 = *a1;
  a1[1] = a2;
  v3 = a1 + 1;
  if (v2 == 0.0)
  {
    v4 = "lastWifiImproveAccuracyNotification";
  }

  else
  {
    if (*&v2 != 1)
    {
      goto LABEL_6;
    }

    v4 = "lastBluetoothImproveAccuracyNotification";
  }

  v5 = sub_1000206B4();
  sub_100116D68(v5, v4, v3);
LABEL_6:
  v6 = *(*sub_1000206B4() + 944);

  return v6();
}

void sub_10079B480(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFUserNotificationCancel(v2);
    v3 = *(a1 + 32);

    CFRelease(v3);
  }
}

void sub_10079B4CC(uint64_t a1, void *a2)
{
  v4 = sub_10079DD60(a1, "CLClientManager", a2);
  *v4 = off_1024702D8;
  v4[14] = &off_1024703C0;
  *(a1 + 120) = -[CLClientManagerStateTracker initInSilo:withIdentifier:state:]([CLClientManagerStateTracker alloc], "initInSilo:withIdentifier:state:", [a2 silo], a1, &stru_1024703F8);
  v5 = [[CLSettingsMirror alloc] initInUniverse:*(a1 + 32)];
  *(a1 + 136) = 0u;
  *(a1 + 128) = v5;
  *(a1 + 240) = 0x40F5180000000000;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = kCLLocationCoordinate2DInvalid;
  *(a1 + 336) = 0;
  *(a1 + 360) = objc_opt_new();
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  sub_1007AE81C();
}

void sub_10079D7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, void **a12, uint64_t a13, char **a14, void **a15, void **a16, char **a17, void **a18, void **a19, char **a20, char **a21, char **a22, char **a23, char **a24, uint64_t a25)
{
  v28 = *(v25 + 1584);
  *(v25 + 1584) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  sub_1003C94DC(a13);
  sub_1003C94DC(v25 + 1352);
  sub_10001AF44(v25 + 1136, *a14);
  STACK[0x2A0] = a25;
  sub_1007AB64C(&STACK[0x2A0]);
  v29 = *(v25 + 1048);
  if (v29)
  {
    sub_100008080(v29);
  }

  sub_1007AE9F4(v25 + 1000);
  if (*(v25 + 999) < 0)
  {
    operator delete(*(v25 + 976));
  }

  sub_1003C93BC(v25 + 936, *a15);
  sub_1003C93BC(v25 + 912, *a16);
  sub_10001AF44(v25 + 888, *a17);
  sub_1003C93BC(v25 + 864, *a18);
  sub_1003C93BC(v25 + 840, *a19);
  sub_10001AF44(v25 + 800, *a20);
  sub_10001AF44(v25 + 776, *a21);
  sub_10001AF44(v25 + 752, *a22);
  sub_10001AF44(v25 + 728, *a23);
  sub_10001AF44(v25 + 704, *a24);
  sub_1003C94DC(v25 + 640);
  sub_1007AE998(v25 + 616, *a12);
  sub_1003C94DC(v25 + 528);
  sub_1003C94DC(v25 + 464);
  v30 = *(v25 + 408);
  if (v30)
  {
    sub_100008080(v30);
  }

  sub_1007A3EE0((v26 + 136), 0);
  v31 = *a11;
  *a11 = 0;
  if (v31)
  {
    sub_10068024C(a11, v31);
  }

  v32 = *(v25 + 216);
  *(v25 + 216) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(v25 + 208);
  *(v25 + 208) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v25 + 200);
  *(v25 + 200) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(v25 + 192);
  *(v25 + 192) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(v25 + 184);
  *(v25 + 184) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(v25 + 176);
  *(v25 + 176) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *(v25 + 168);
  *(v25 + 168) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = *(v25 + 160);
  *(v25 + 160) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(v25 + 152);
  *(v25 + 152) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  sub_1007A1964(v25);
  _Unwind_Resume(a1);
}

uint64_t sub_10079DD60(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102470970;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_10079DDF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079DE0C(id a1, CLClientManagerStateTracker *a2)
{
  v3 = sub_10003845C();

  [(CLClientManagerStateTracker *)a2 setLocationServicesEnabledStatus:v3];
}

id sub_10079DE48(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [*(v1 + 128) BOOLForKey:@"CLCM.AllowPromptRecording" defaultValue:*(v1 + 232)];
  *(v1 + 232) = result;
  return result;
}

void sub_10079DE88(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "ResetTimer fired", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019331B8();
  }

  v3 = [*(a1 + 128) arrayForKey:@"ResetIdentifiers" defaultValue:0];
  v4 = v3;
  if (*(a1 + 1128) == 1)
  {
    *(a1 + 1128) = 0;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Reset registration and completion reporting is un-balanced. Completion not reported for clients: %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101933560();
    }

    [*(a1 + 128) setArray:0 forKey:@"ResetIdentifiers"];
LABEL_43:
    [*(a1 + 128) setInt:0 forKey:@"ResetRetrialCount"];
    return;
  }

  if (![v3 count])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "Reset registration and completion reporting is balanced for all clients.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933484();
    }

    goto LABEL_43;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#reset-retry completing pending reset.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101933294();
  }

  v15 = a1;
  v7 = sub_1007A305C(a1);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if (([v7 containsObject:v12] & 1) == 0)
        {
          if (qword_1025D4790 != -1)
          {
            sub_10192DAA4();
          }

          v13 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#reset-retry - service with identifier: %@ never checked in to retry handling reset after crash", buf, 0xCu);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101933370(&v20, v12, &v21);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  sub_10078E990(v15);
}

void sub_10079E258(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLClientManager::onDarwinNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
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
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onDarwinNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_1007A6160(a4, v6, a2);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10079E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLClientManager::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10079E5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLClientManager::onRestrictionsChangedNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onRestrictionsChangedNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007AB320;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10079E7F0(uint64_t a1, int token)
{
  v2 = *(a1 + 32);
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64)
  {
    *(v2 + 1085) = 1;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#AuthPrompt screen locked", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193368C();
    }

    sub_10079EDEC(v2, 0, 0);
  }

  else
  {
    *(v2 + 1083) = 1;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Trial period #reprompt capacitor charged", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933768();
    }

    *(v2 + 1085) = 0;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#AuthPrompt screen unlocked", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933844();
    }

    sub_10079E9B4(v2);
  }
}

void sub_10079E9B4(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 384);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = Current - v3;
  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 376);
    v7 = *(a1 + 377);
    v8 = *(a1 + 384);
    *buf = 68290050;
    v25 = 2082;
    v24 = 0;
    v26 = "";
    v27 = 1026;
    *v28 = v6;
    *&v28[4] = 1026;
    *&v28[6] = v7;
    v29 = 2050;
    v30 = v8;
    v31 = 2050;
    v32 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes #pcHistorical updating LearnedRoutesVisitedPlaces minimum criteria, fAtLeastOneLearnedRouteAvailable:%{public}hhd, fAtLeastThreeUniqueVisitsAvailable:%{public}hhd, LastUpdateTime:%{public}f, timeElapsed:%{public}f}", buf, 0x32u);
  }

  if (v4 >= 14400.0)
  {
    v9 = [objc_msgSend(*(a1 + 32) "vendor")];
    v10 = [*(a1 + 128) BOOLForKey:@"CLLearnedRoutesAvailable" defaultValue:0];
    *(a1 + 376) = v10;
    if ((v10 & 1) == 0)
    {
      LODWORD(v19) = 0;
      v11 = [[RTLearnedRouteFetchOptions alloc] initWithBundlePath:@"/System/Library/LocationBundles/LocationPromptUI.bundle" routeOriginLocation:0 routeDestinationLocation:0 routeDate:0 routeFetchType:5 fetchAllRouteLocations:1 routeOriginType:v19];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#LearnedRoutes min-criteria fetching routes", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101933920();
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1007A92D0;
      v22[3] = &unk_1024571C0;
      v22[4] = a1;
      [v9 fetchLearnedRoutesWithOptions:v11 withReply:v22];
    }

    v13 = [*(a1 + 128) BOOLForKey:@"CLVisitedPlacesAvailable" defaultValue:0];
    *(a1 + 377) = v13;
    if ((v13 & 1) == 0)
    {
      v14 = [[NSDateInterval alloc] initWithStartDate:+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate endDate:{"dateWithTimeIntervalSinceReferenceDate:", CFAbsoluteTimeGetCurrent() + -2419200.0), +[NSDate now](NSDate, "now")}];
      v15 = [[NSSet alloc] initWithObjects:{&off_10254EF60, 0}];
      v16 = [RTStoredVisitFetchOptions alloc];
      LOBYTE(v20) = 1;
      v17 = [v16 initWithAscending:1 confidence:+[NSNumber numberWithDouble:](NSNumber dateInterval:"numberWithDouble:" labelVisit:RTVisitConfidenceHigh) limit:v14 sources:1 redact:{0, v15, v20}];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        *v28 = v14;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical min-criteria fetching historical visits, dateInterval:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1007A9400;
      v21[3] = &unk_1024571C0;
      v21[4] = a1;
      [v9 fetchStoredVisitsWithOptions:v17 withReply:v21];
    }

    *(a1 + 384) = CFAbsoluteTimeGetCurrent();
  }
}

void sub_10079EDEC(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    if (a3 && ([a3 isEqual:*(v3 + 8)] & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(a1 + 272) + 8);
        *buf = 68289538;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2114;
        v24 = v17;
        v25 = 2114;
        v26 = a3;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt skip Teardown Inflight Prompt - actual and expected inflight client does not match, ActualInflightClient:%{public, location:escape_only}@, ExpectedInflightClient:%{public, location:escape_only}@}", buf, 0x26u);
      }
    }

    else
    {
      v7 = @"TearDown SPI Invocation";
      if (a2 == 1)
      {
        v7 = @"Squatting threshold(15 min) expired";
      }

      if (a2)
      {
        v8 = v7;
      }

      else
      {
        v8 = @"ScreenLock enabled";
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 272);
        v11 = *(v10 + 1);
        v12 = *v10;
        *buf = 68289794;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2114;
        v24 = v11;
        v25 = 2050;
        v26 = v12;
        v27 = 2082;
        v28 = [(__CFString *)v8 UTF8String];
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Teardown Inflight Prompt, Client:%{public, location:escape_only}@, PromptType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, Teardown Reason:%{public, location:escape_only}s}", buf, 0x30u);
      }

      v13 = *(a1 + 272);
      v14 = *(v13 + 48);
      if (v14)
      {
        v15 = sub_100107858();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1007A3ED8;
        block[3] = &unk_102449A78;
        block[4] = v14;
        CFRunLoopPerformBlock(v15, kCFRunLoopCommonModes, block);
        v13 = *(a1 + 272);
      }

      sub_10023D820(v13, v8);
      sub_1007A3EE0((a1 + 272), 0);
      *(a1 + 312) = 0;
    }
  }
}

void sub_10079F068(uint64_t a1, int token)
{
  v2 = *(a1 + 32);
  state64 = 0;
  state = notify_get_state(token, &state64);
  v4 = state64;
  *(v2 + 1084) = state64 != 0;
  if (v4 == 1)
  {
    if ((*(v2 + 512) & 1) == 0)
    {
      sub_100787934(state, *(v2 + 504), v2 + 464);
      *(v2 + 512) = 1;
    }

    sub_10079F0E4(v2);
    *(v2 + 1083) = 0;
  }
}

void sub_10079F0E4(uint64_t a1)
{
  sub_10001A3E8();
  sub_10001CF3C();
  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v3 = "{msg%{public}.0s:Dropping #provisional upgrade and #reprompt notification. Restrictions enabled}";
      v4 = v2;
      v5 = 18;
LABEL_6:
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
      return;
    }

    return;
  }

  if (*(a1 + 272))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 272);
      v8 = *(v7 + 1);
      v9 = *v7;
      *buf = 68289538;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v8;
      v71 = 2050;
      v72 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:We should not get springboard.homescreenunlocked events when we have inflight prompt authorization request, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v11 = *(a1 + 272);
      v12 = *(v11 + 1);
      v13 = *v11;
      *buf = 68289538;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v12;
      v71 = 2050;
      v72 = v13;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "We should not get springboard.homescreenunlocked events when we have inflight prompt authorization request", "{msg%{public}.0s:We should not get springboard.homescreenunlocked events when we have inflight prompt authorization request, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
    }

    return;
  }

  if (*(a1 + 280) != 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "#IncidentalPrompt presenting, transitioned to homescreen.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019339FC();
    }

    if ((sub_10077834C(a1, 0) & 1) != 0 || *(a1 + 1083) != 1)
    {
      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Trial period #reprompt capacitor fired", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933AE0();
    }

    sub_100565518(0, &v66);
    v21 = std::string::append(&v66, "locScoreInfoReport", 0x12uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v21->__r_.__value_.__l + 2);
    *buf = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (buf[23] >= 0)
    {
      v23 = buf;
    }

    else
    {
      v23 = *buf;
    }

    v24 = [NSString stringWithUTF8String:v23];
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      Current = CFAbsoluteTimeGetCurrent();
      v66.__r_.__value_.__r.__words[0] = 0x410FA40000000000;
      sub_10001CAF4(buf);
      sub_1000B9370(*buf, "ClientRepromptAlwaysNotificationInterval", &v66);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v34 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v66.__r_.__value_.__r.__words[0];
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Commencing #reprompt iteration, Interval:%{public}f}", buf, 0x1Cu);
      }

      if (*&v66.__r_.__value_.__l.__data_ >= 0.0)
      {
        v36 = *(a1 + 136);
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_1007A3F38;
        v62[3] = &unk_1024704C8;
        v62[4] = a1;
        *&v62[5] = Current;
        v62[6] = v66.__r_.__value_.__r.__words[0];
        [v36 iterateAllAnchorKeyPathsWithBlock:v62];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v35 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "Not iterating for #reprompt: disabled", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101933BC4();
        }
      }

      return;
    }

    v66.__r_.__value_.__r.__words[0] = 0;
    v25 = -[NSDictionary fileModificationDate]([+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:v24, &v66], "fileModificationDate");
    if (v66.__r_.__value_.__r.__words[0])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v26 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v66.__r_.__value_.__r.__words[0];
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not get modification date of #reprompt file, Error:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v27 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        goto LABEL_60;
      }

      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v66.__r_.__value_.__r.__words[0];
      v28 = "Could not get modification date of #reprompt file";
      v29 = "{msg%{public}.0s:Could not get modification date of #reprompt file, Error:%{public, location:escape_only}@}";
      goto LABEL_58;
    }

    if ([(NSDate *)v25 compare:[+[NSDate dateByAddingTimeInterval:"dateByAddingTimeInterval:"]== NSOrderedAscending]
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v52 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v49 = "{msg%{public}.0s:#reprompt data is over 5 days old.}";
      v50 = v52;
      v51 = 18;
    }

    else
    {
      v37 = [NSData dataWithContentsOfFile:v24 options:8 error:&v66];
      if (!v37 || v66.__r_.__value_.__r.__words[0])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v53 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2113;
          *&buf[20] = v37;
          v71 = 2114;
          v72 = v66.__r_.__value_.__r.__words[0];
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not read checkpointed #reprompt data, Data:%{private, location:escape_only}@, Error:%{public, location:escape_only}@}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v54 = off_1025D47A8;
        if (!os_signpost_enabled(off_1025D47A8))
        {
          goto LABEL_60;
        }

        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2113;
        *&buf[20] = v37;
        v71 = 2114;
        v72 = v66.__r_.__value_.__r.__words[0];
        v28 = "Could not read checkpointed #reprompt data";
        v29 = "{msg%{public}.0s:Could not read checkpointed #reprompt data, Data:%{private, location:escape_only}@, Error:%{public, location:escape_only}@}";
        v30 = v54;
        v31 = 38;
        goto LABEL_59;
      }

      v38 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v37 error:&v66];
      if (!v38 || v66.__r_.__value_.__r.__words[0])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v55 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289282;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v66.__r_.__value_.__r.__words[0];
          _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not configure unarchiver with checkpointed #reprompt data, Error:%{public, location:escape_only}@}", buf, 0x1Cu);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v27 = off_1025D47A8;
        if (!os_signpost_enabled(off_1025D47A8))
        {
          goto LABEL_60;
        }

        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v66.__r_.__value_.__r.__words[0];
        v28 = "Could not configure unarchiver with checkpointed #reprompt data";
        v29 = "{msg%{public}.0s:Could not configure unarchiver with checkpointed #reprompt data, Error:%{public, location:escape_only}@}";
LABEL_58:
        v30 = v27;
        v31 = 28;
LABEL_59:
        _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v28, v29, buf, v31);
        goto LABEL_60;
      }

      v61 = objc_opt_class();
      v60 = objc_opt_class();
      v39 = objc_opt_class();
      v40 = objc_opt_class();
      v41 = objc_opt_class();
      v42 = [v38 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v61, v60, v39, v40, v41, objc_opt_class(), 0), NSKeyedArchiveRootObjectKey}];

      if (!v42)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v56 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_FAULT, "Could not unarchive checkpointed #reprompt data", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101933E14();
        }

        goto LABEL_60;
      }

      v43 = [v42 objectForKeyedSubscript:@"ClientKey"];
      v44 = [CLClientKeyPath clientKeyPathWithClientKey:v43];
      v45 = sub_10004FEC8(a1, v44, &xmmword_101CE6CD8);
      v46 = v45;
      if (v45 && ![(CLClientManagerAuthorizationContext *)v45 registrationResult])
      {
        if (*(a1 + 280) == 1)
        {
          sub_101933CA8();
        }

        sub_10000EC00(v63, "");
        sub_10023C2AC(v65, 6, v44, 0, v63);
        v57 = sub_1007755CC(a1, v44, 0, v65, v42);
        sub_10023DF30(v65);
        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        if (v57)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v58 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v43;
            v3 = "{msg%{public}.0s:Creating trial period #reprompt notification, ClientKey:%{public, location:escape_only}@}";
            v4 = v58;
            v5 = 28;
            goto LABEL_6;
          }

          return;
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v59 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
LABEL_60:
          [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v24, 0];
          return;
        }

        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v43;
        v49 = "{msg%{public}.0s:#Warning Could not post #reprompt, ClientKey:%{public, location:escape_only}@}";
        v50 = v59;
        v51 = 28;
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v47 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v48 = [(CLClientManagerAuthorizationContext *)v46 transientAwareRegistrationResult];
        *buf = 68289538;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v43;
        v71 = 1026;
        LODWORD(v72) = v48;
        v49 = "{msg%{public}.0s:Dropping checkpointed #reprompt data because target is no longer Always authorized, ClientKey:%{public, location:escape_only}@, RegistrationResult:%{public}d}";
        v50 = v47;
        v51 = 34;
      }
    }

    _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, v49, buf, v51);
    goto LABEL_60;
  }

  v14 = *(a1 + 264);
  if (!v14)
  {
    sub_10193406C();
  }

  if (*(v14 + 23) < 0)
  {
    v14 = *v14;
  }

  v15 = [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v14]];
  v16 = sub_10004FEC8(a1, v15, &xmmword_101CE6CD8);
  v17 = v16;
  if (v16 && [(CLClientManagerAuthorizationContext *)v16 registrationResult]== 8)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v15;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Creating #provisional authorization upgrade notification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (*(a1 + 272))
    {
      sub_101933F00();
    }

    sub_10000EC00(__p, "");
    sub_10023C2AC(v69, 8, v15, 0, __p);
    sub_1007755CC(a1, v15, 0, v69, 0);
    sub_10023DF30(v69);
    if (v68 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v32 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v15;
      v71 = 1026;
      LODWORD(v72) = [(CLClientManagerAuthorizationContext *)v17 registrationResult];
      v3 = "{msg%{public}.0s:Dropping #provisional authorization upgrade because target is no longer Provisionally Always authorized, Client:%{public, location:escape_only}@, RegistrationResult:%{public}d}";
      v4 = v32;
      v5 = 34;
      goto LABEL_6;
    }
  }
}

void sub_10079FFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_10023DF30(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007A0088(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onDataProtectionManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onDataProtectionManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100789448(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t *sub_1007A025C(uint64_t *a1, uint64_t a2)
{
  std::istream::sentry::sentry();
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, &std::ctype<char>::id);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1007A04A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1007A0460);
  }

  __cxa_rethrow();
}

void sub_1007A0550(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 264);
    if (v3)
    {
      if (v3[23] < 0)
      {
        v3 = *v3;
      }
    }

    else
    {
      v3 = "nobody";
    }

    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Ending #provisional intermediation reign guarantee due to staleness, king:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  v4 = *(v1 + 288);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);

    *(v1 + 288) = 0;
  }
}

void sub_1007A0668(uint64_t a1)
{
  if (*(a1 + 336))
  {
    sub_1019341D8();
  }

  v2 = *(a1 + 136);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1007A19E8;
  v14[3] = &unk_10246FC30;
  v14[4] = a1;
  [v2 iterateAllAnchorKeyPathsWithBlock:v14];
  v7 = 0;
  v8 = &v7;
  v9 = 0x4812000000;
  v10 = sub_1007A1A04;
  v11 = sub_1007A1A28;
  v12 = &unk_10238AE8B;
  memset(v13, 0, sizeof(v13));
  v3 = *(a1 + 136);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007A1A54;
  v6[3] = &unk_10246FD90;
  v6[4] = &v7;
  v6[5] = a1;
  [v3 iterateAllAnchorKeyPathsWithBlock:v6];
  if (v8[6] != v8[7])
  {
    v4 = [*(a1 + 40) newTimer];
    *(a1 + 336) = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1007A1D0C;
    v5[3] = &unk_10245D2D0;
    v5[4] = &v7;
    v5[5] = a1;
    [v4 setHandler:v5];
    [*(a1 + 336) setNextFireDelay:10.0];
  }

  _Block_object_dispose(&v7, 8);
  v15 = v13;
  sub_1007AB6A0(&v15);
}

void sub_1007A0828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  *(v15 - 56) = v14;
  sub_1007AB6A0((v15 - 56));
  _Unwind_Resume(a1);
}

id sub_1007A084C(id *a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Resetting LocationConsumptionScoreInfoArchive", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101934344();
  }

  v3 = [CLHRequestArchive alloc];
  sub_100565518(0, &v10);
  v4 = std::string::append(&v10, "locScoreInfo/", 0xDuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12 = v4->__r_.__value_.__r.__words[2];
  *buf = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v12 >= 0)
  {
    v6 = buf;
  }

  else
  {
    v6 = *buf;
  }

  a1[63] = [(CLHRequestArchive *)v3 initWithDirectory:[NSString itemCountThresholdForAutoCleanUp:"stringWithUTF8String:" stringWithUTF8String:v6], 150];
  if (SHIBYTE(v12) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  [a1[63] setRotationInterval:-1.0];
  sub_100787F74(a1, a1[63], (a1 + 58));
  a1[65] = [objc_msgSend(a1[4] "vendor")];
  Current = CFAbsoluteTimeGetCurrent();
  v8 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
  [v8 setClientKey:@"com.apple.locationd.all-location-clients-stop"];
  [v8 setStopTime:Current];
  [v8 setScore:0];
  return [a1[63] writeSecondaryObject:v8 toField:1];
}

void sub_1007A0A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A0A68(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Registering coreanalytics activity", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101934428();
  }

  v3 = [objc_msgSend(*(a1 + 32) "vendor")];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1007A6FA0;
  handler[3] = &unk_10245EAB8;
  handler[4] = v3;
  xpc_activity_register("com.apple.locationd.CLClientManager.coreanalytics", XPC_ACTIVITY_CHECK_IN, handler);
}