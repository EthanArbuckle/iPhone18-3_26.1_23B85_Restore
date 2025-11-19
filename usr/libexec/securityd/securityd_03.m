uint64_t sub_100049D24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v27 = 0;
  v4 = [v2 mapResultRow:v3 startingAt:0 error:&v27];
  v5 = v27;
  if (v4)
  {
    v26 = v5;
    v6 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:v4 error:&v26];
    v7 = v26;

    if (v6)
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 64);
      v10 = [*(a1 + 32) columnCount];
      v25 = v7;
      v11 = [v8 mapResultRow:v9 startingAt:v10 error:&v25];
      p_super = v25;

      if (v11)
      {
        v24 = p_super;
        v13 = [[KCSharingLocalItem alloc] initPasswordWithInternetPasswordDatabaseItem:v11 error:&v24];
        v14 = v24;

        if (v13)
        {
          v23 = v14;
          v15 = [[KCSharingOutgoingEntry alloc] initWithUpdatedLocalItem:v13 forMirrorEntry:v6 error:&v23];
          p_super = v23;

          if (v15)
          {
            v16 = [*(a1 + 56) insertIntoOutgoing];
            [v16 addObject:v15];
          }

          else
          {
            v21 = *(*(a1 + 40) + 16);
            v16 = KCSharingLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v29 = v13;
              v30 = 2112;
              v31 = v6;
              v32 = 2112;
              v33 = p_super;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create outgoing entry with localItem=%@ and mirrorEntry=%@ for outgoing changed password with error=%@", buf, 0x20u);
            }
          }
        }

        else
        {
          v20 = *(*(a1 + 40) + 16);
          v15 = KCSharingLogObject();
          if (os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138478083;
            v29 = v11;
            v30 = 2112;
            v31 = v14;
            _os_log_error_impl(&_mh_execute_header, &v15->super.super, OS_LOG_TYPE_ERROR, "Failed to create local item from databaseItem=%{private}@ for outgoing changed password with error=%@", buf, 0x16u);
          }

          p_super = &v14->super;
        }
      }

      else
      {
        v19 = *(*(a1 + 40) + 16);
        v13 = KCSharingLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = p_super;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to create password database item for outgoing changed password with error=%@", buf, 0xCu);
        }
      }

      v7 = p_super;
    }

    else
    {
      v18 = *(*(a1 + 40) + 16);
      v11 = KCSharingLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v29 = v4;
        v30 = 2112;
        v31 = v7;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create mirror entry from databaseItem=%{private}@ for outgoing changed password with error=%@", buf, 0x16u);
      }
    }

    v5 = &v7->super;
  }

  else
  {
    v17 = *(*(a1 + 40) + 16);
    v6 = KCSharingLogObject();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_error_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_ERROR, "Failed to create mirror database item for outgoing changed password with error=%@", buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_10004A274(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (!sub_100069E14(a2, 1, v7, a3) || !sub_100069E14(a2, 2, CKRecordNameZoneWideShare, a3))
  {

    return 0;
  }

  v8 = sub_100069E14(a2, 3, @"group-", a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004A3D4;
  v14[3] = &unk_100333F08;
  v18 = a2;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 48);
  v12 = sub_100069E74(v9, a2, a3, v14);

  return v12;
}

uint64_t sub_10004A3D4(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:sqlite3_column_text(*(a1 + 56), 0)];
  v3 = [NSString stringWithUTF8String:sqlite3_column_text(*(a1 + 56), 1)];
  v4 = [[CKRecordZoneID alloc] initWithZoneName:v3 ownerName:v2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v17 = 0;
  v7 = [v5 mapResultRow:v6 startingAt:2 error:&v17];
  v8 = v17;
  if (v7)
  {
    v16 = v8;
    v9 = [[KCSharingLocalItem alloc] initPasskeyWithPrivateKeyDatabaseItem:v7 error:&v16];
    v10 = v16;

    if (v9)
    {
      v11 = [[KCSharingOutgoingEntry alloc] initWithNewLocalItem:v9 zoneID:v4];
      v12 = [*(a1 + 48) insertIntoOutgoing];
      [v12 addObject:v11];
    }

    else
    {
      v14 = *(*(a1 + 40) + 16);
      v11 = KCSharingLogObject();
      if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v19 = v7;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&_mh_execute_header, &v11->super.super, OS_LOG_TYPE_ERROR, "Failed to create local item from databaseItem=%{private}@ for outgoing new passkey with error=%@", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = *(*(a1 + 40) + 16);
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create private key database item for outgoing new passkey with error=%@", buf, 0xCu);
    }

    v10 = v8;
  }

  return 1;
}

uint64_t sub_10004A840(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  v8 = sub_100069E14(a2, 1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004A988;
  v18[3] = &unk_100333EB8;
  v10 = *(a1 + 40);
  v21 = a2;
  *&v11 = v10;
  *(&v11 + 1) = *(a1 + 32);
  v17 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v19 = v17;
  v20 = v14;
  v15 = sub_100069E74(v9, a2, a3, v18);

  return v15;
}

uint64_t sub_10004A988(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v27 = 0;
  v4 = [v2 mapResultRow:v3 startingAt:0 error:&v27];
  v5 = v27;
  if (v4)
  {
    v26 = v5;
    v6 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:v4 error:&v26];
    v7 = v26;

    if (v6)
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 64);
      v10 = [*(a1 + 32) columnCount];
      v25 = v7;
      v11 = [v8 mapResultRow:v9 startingAt:v10 error:&v25];
      p_super = v25;

      if (v11)
      {
        v24 = p_super;
        v13 = [[KCSharingLocalItem alloc] initPasskeyWithPrivateKeyDatabaseItem:v11 error:&v24];
        v14 = v24;

        if (v13)
        {
          v23 = v14;
          v15 = [[KCSharingOutgoingEntry alloc] initWithUpdatedLocalItem:v13 forMirrorEntry:v6 error:&v23];
          p_super = v23;

          if (v15)
          {
            v16 = [*(a1 + 56) insertIntoOutgoing];
            [v16 addObject:v15];
          }

          else
          {
            v21 = *(*(a1 + 40) + 16);
            v16 = KCSharingLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v29 = v13;
              v30 = 2112;
              v31 = v6;
              v32 = 2112;
              v33 = p_super;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create outgoing entry with localItem=%@ and mirrorEntry=%@ for outgoing changed passkey with error=%@", buf, 0x20u);
            }
          }
        }

        else
        {
          v20 = *(*(a1 + 40) + 16);
          v15 = KCSharingLogObject();
          if (os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138478083;
            v29 = v11;
            v30 = 2112;
            v31 = v14;
            _os_log_error_impl(&_mh_execute_header, &v15->super.super, OS_LOG_TYPE_ERROR, "Failed to create local item from databaseItem=%{private}@ for outgoing changed passkey with error=%@", buf, 0x16u);
          }

          p_super = &v14->super;
        }
      }

      else
      {
        v19 = *(*(a1 + 40) + 16);
        v13 = KCSharingLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = p_super;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to create private key database item for outgoing changed passkey with error=%@", buf, 0xCu);
        }
      }

      v7 = p_super;
    }

    else
    {
      v18 = *(*(a1 + 40) + 16);
      v11 = KCSharingLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v29 = v4;
        v30 = 2112;
        v31 = v7;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create mirror entry from databaseItem=%{private}@ for outgoing changed passkey with error=%@", buf, 0x16u);
      }
    }

    v5 = &v7->super;
  }

  else
  {
    v17 = *(*(a1 + 40) + 16);
    v6 = KCSharingLogObject();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_error_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_ERROR, "Failed to create mirror database item for outgoing changed passkey with error=%@", buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_10004ADD4(uint64_t a1, void *a2)
{
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v77 = sub_10004B208;
  v78 = &unk_100333D90;
  v79 = *(a1 + 32);
  v4 = v76;
  v5 = objc_autoreleasePoolPush();
  v80[0] = 0;
  v6 = v77(v4, v80);
  v7 = v80[0];
  objc_autoreleasePoolPop(v5);
  v8 = 0;
  if ((v6 & 1) == 0)
  {
    v9 = v7;
    v8 = v7;
  }

  v14 = v8;
  if (v6)
  {
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v73 = sub_10004B28C;
    v74 = &unk_100333D90;
    v75 = *(a1 + 32);
    v15 = v72;
    v16 = objc_autoreleasePoolPush();
    v80[0] = 0;
    v17 = v73(v15, v80);
    v18 = v80[0];
    objc_autoreleasePoolPop(v16);
    v19 = 0;
    if ((v17 & 1) == 0)
    {
      v20 = v18;
      v19 = v18;
    }

    v25 = v19;
    if (v17)
    {
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v69 = sub_10004B310;
      v70 = &unk_100333D90;
      v71 = *(a1 + 32);
      v26 = v68;
      v27 = objc_autoreleasePoolPush();
      v80[0] = 0;
      v28 = v69(v26, v80);
      v29 = v80[0];
      objc_autoreleasePoolPop(v27);
      v30 = 0;
      if ((v28 & 1) == 0)
      {
        v31 = v29;
        v30 = v29;
      }

      v36 = v30;
      if (v28)
      {
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v65 = sub_10004B394;
        v66 = &unk_100333D90;
        v67 = *(a1 + 32);
        v37 = v64;
        v38 = objc_autoreleasePoolPush();
        v80[0] = 0;
        v39 = v65(v37, v80);
        v40 = v80[0];
        objc_autoreleasePoolPop(v38);
        v41 = 0;
        if ((v39 & 1) == 0)
        {
          v42 = v40;
          v41 = v40;
        }

        v47 = v41;
        if (v39)
        {
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v61 = sub_10004B418;
          v62 = &unk_100333D90;
          v63 = *(a1 + 32);
          v48 = v60;
          v49 = objc_autoreleasePoolPush();
          v80[0] = 0;
          v50 = v61(v48, v80);
          v51 = v80[0];
          objc_autoreleasePoolPop(v49);
          v52 = 0;
          if ((v50 & 1) == 0)
          {
            v53 = v51;
            v52 = v51;
          }

          v58 = v52;
          if ((v50 & 1) == 0)
          {
            sub_100061EE8(a2, 29, v58, @"Staging outgoing deletions", v54, v55, v56, v57, v60[0]);
          }
        }

        else
        {
          sub_100061EE8(a2, 29, v47, @"Staging outgoing entries for all new passwords", v43, v44, v45, v46, v60[0]);
          v50 = 0;
        }
      }

      else
      {
        sub_100061EE8(a2, 29, v36, @"Staging outgoing entries for all changed passwords", v32, v33, v34, v35, v60[0]);
        v50 = 0;
      }
    }

    else
    {
      sub_100061EE8(a2, 29, v25, @"Staging outgoing entries for all new passkeys", v21, v22, v23, v24, v60[0]);
      v50 = 0;
    }
  }

  else
  {
    sub_100061EE8(a2, 29, v14, @"Staging outgoing entries for all changed passkeys", v10, v11, v12, v13, v60[0]);
    v50 = 0;
  }

  return v50;
}

id sub_10004B208(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) stageAllOutgoingChangedPrivateKeysInTransaction:*(a1 + 40) error:a2];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) accessGroups];
    v7 = [v4 applyInTransaction:v5 withAccessGroups:v6 error:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10004B28C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) stageAllOutgoingNewPrivateKeysInTransaction:*(a1 + 40) error:a2];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) accessGroups];
    v7 = [v4 applyInTransaction:v5 withAccessGroups:v6 error:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10004B310(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) stageAllOutgoingChangedPasswordsInTransaction:*(a1 + 40) error:a2];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) accessGroups];
    v7 = [v4 applyInTransaction:v5 withAccessGroups:v6 error:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10004B394(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) stageAllOutgoingNewPasswordsInTransaction:*(a1 + 40) error:a2];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) accessGroups];
    v7 = [v4 applyInTransaction:v5 withAccessGroups:v6 error:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10004B418(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) stageAllOutgoingDeletionsInTransaction:*(a1 + 40) error:a2];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) accessGroups];
    v7 = [v4 applyInTransaction:v5 withAccessGroups:v6 error:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10004B5D4(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) keyprint];
  if ((sub_100069E14(a2, 1, v6, a3) & 1) == 0)
  {

    return 0;
  }

  v7 = [*(a1 + 32) valueprint];
  v8 = sub_100069E14(a2, 2, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 40);

  return sub_100069E74(v9, a2, a3, &stru_100333E90);
}

uint64_t sub_10004B7F8(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004B8B0;
  v12[3] = &unk_100333DE0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v16 = v9;
  v10 = sub_100069E74(v6, a2, a3, v12);

  return v10;
}

uint64_t sub_10004B8B0(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v24 = 0;
  v7 = [v5 mapResultRow:v6 startingAt:0 error:&v24];
  v12 = v24;
  if (v7)
  {
    v13 = a1[5];
    v14 = a1[7];
    v23 = v12;
    v15 = [v13 fingerprintPasswordDatabaseItem:v7 inTransaction:v14 error:&v23];
    v16 = v23;

    if (v15)
    {
      v21 = 1;
    }

    else
    {
      sub_100061EE8(a3, 25, v16, @"Fingerprinting password", v17, v18, v19, v20, v23);
      v21 = 0;
    }

    v12 = v16;
  }

  else
  {
    sub_100061EE8(a3, 25, v12, @"Creating password database item for fingerprinting", v8, v9, v10, v11, v23);
    v21 = 0;
  }

  return v21;
}

uint64_t sub_10004BAD8(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) keyprint];
  if ((sub_100069E14(a2, 1, v6, a3) & 1) == 0)
  {

    return 0;
  }

  v7 = [*(a1 + 32) valueprint];
  v8 = sub_100069E14(a2, 2, v7, a3);

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 40);

  return sub_100069E74(v9, a2, a3, &stru_100333E48);
}

uint64_t sub_10004BCFC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004BDB4;
  v12[3] = &unk_100333DE0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v16 = v9;
  v10 = sub_100069E74(v6, a2, a3, v12);

  return v10;
}

uint64_t sub_10004BDB4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v24 = 0;
  v7 = [v5 mapResultRow:v6 startingAt:0 error:&v24];
  v12 = v24;
  if (v7)
  {
    v13 = a1[5];
    v14 = a1[7];
    v23 = v12;
    v15 = [v13 fingerprintPrivateKeyDatabaseItem:v7 inTransaction:v14 error:&v23];
    v16 = v23;

    if (v15)
    {
      v21 = 1;
    }

    else
    {
      sub_100061EE8(a3, 27, v16, @"Fingerprinting private key", v17, v18, v19, v20, v23);
      v21 = 0;
    }

    v12 = v16;
  }

  else
  {
    sub_100061EE8(a3, 25, v12, @"Creating private key database item for fingerprinting", v8, v9, v10, v11, v23);
    v21 = 0;
  }

  return v21;
}

uint64_t sub_10004C0A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C11C;
  v4[3] = &unk_100333D90;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return sub_10006A0DC(a2, a3, v4);
}

uint64_t sub_10004C1FC(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1[6];
  if (v4 == 2)
  {
    v5 = @"SELECT EXISTS(                            SELECT 1 FROM sharingOutgoingQueue o                             WHERE (o.agrp, o.ownr) = (?1, ?2)                        )";
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    v5 = @"SELECT EXISTS(                            SELECT 1 FROM sharingOutgoingQueue o                             WHERE o.agrp = ?1 AND                                   o.ownr <> ?2                        )";
LABEL_5:
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004C320;
    v12[3] = &unk_100333D40;
    v14 = a2;
    v13 = *(a1 + 2);
    return sub_100069BC0(a2, v5, a3, v12);
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = a1[4];
  v9 = a1[6];
  v10 = a1[7];
  v11 = CKDatabaseScopeString();
  [v7 handleFailureInMethod:v10 object:v8 file:@"KCSharingStore.m" lineNumber:313 description:{@"Can't determine outgoing changes in database with %@ (%li) scope", v11, a1[6]}];

  return 1;
}

uint64_t sub_10004C320(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = [*(a1 + 32) accessGroups];
  v7 = [v6 entryAccessGroup];
  if (sub_100069E14(a2, 1, v7, a3))
  {
    v8 = sub_100069E14(a2, 2, CKCurrentUserDefaultName, a3);

    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004C42C;
      v11[3] = &unk_100333D18;
      v9 = *(a1 + 48);
      v11[4] = *(a1 + 40);
      v11[5] = a2;
      return sub_100069E74(v9, a2, a3, v11);
    }
  }

  else
  {
  }

  return 0;
}

void sub_10004CD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004CD3C(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
  return 1;
}

void sub_10004DC58(id a1)
{
  v4[0] = kSecAttrUUID;
  v4[1] = @"zone";
  v4[2] = @"ownr";
  v4[3] = @"type";
  v4[4] = @"deln";
  v4[5] = kSecAttrModificationDate;
  v4[6] = kSecValueData;
  v4[7] = @"pkkp";
  v4[8] = @"pkvp";
  v4[9] = @"ipkp";
  v4[10] = @"ipvp";
  v1 = [NSArray arrayWithObjects:v4 count:11];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DB80;
  qword_10039DB80 = v2;
}

uint64_t sub_10004DE94()
{
  v0 = sub_100006274("KCSharingSyncController");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 67109120;
    v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "KCSharingCKSyncEngineTransition is %d", &v3, 8u);
  }

  if (qword_10039DB98 != -1)
  {
    dispatch_once(&qword_10039DB98, &stru_100334688);
  }

  v1 = sub_100006274("KCSharingSyncController");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 67109120;
    v4 = byte_10039DB90;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "KCSharingCKSyncEngineTransition FF: %d", &v3, 8u);
  }

  return byte_10039DB90;
}

void sub_10004DFCC(id a1)
{
  byte_10039DB90 = _os_feature_enabled_impl();
  v1 = sub_100006274("KCSharingSyncController");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039DB90)
    {
      v2 = @"enabled";
    }

    else
    {
      v2 = @"disabled";
    }

    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "KCSharingCKSyncEngineTransition Feature is %@ (via feature flags)", &v3, 0xCu);
  }
}

void sub_10004E0AC(id a1)
{
  byte_10039DBA0 = _os_feature_enabled_impl();
  v1 = sub_100006274("KCSharingSyncController");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039DBA0)
    {
      v2 = @"enabled";
    }

    else
    {
      v2 = @"disabled";
    }

    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "KCSharingCloudCoreAdoption Feature is %@ (via feature flags)", &v3, 0xCu);
  }
}

void sub_10004EA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  objc_destroyWeak((v55 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004EAB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004EAD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v37 = a1;
    v35 = v6;
    v36 = v5;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v38 = *v40;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v38)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          v13 = [v8 objectForKeyedSubscript:{v12, v35}];
          v14 = WeakRetained[4];
          v15 = KCSharingLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v13 success];
            v17 = [v13 failure];
            *buf = 138478339;
            v44 = v12;
            v45 = 2113;
            v46 = v16;
            v47 = 2114;
            v48 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Fetchresult for lookupInfo %{private}@: participant: %{private}@ error %{public}@", buf, 0x20u);
          }

          v18 = sub_100031428(v12);
          if (v18)
          {
            v19 = [v13 success];
            v20 = [*(v37 + 32) objectForKeyedSubscript:v18];
            v21 = v20;
            if (v19)
            {
              v22 = v20 == 0;
            }

            else
            {
              v22 = 1;
            }

            if (v22)
            {
              v23 = WeakRetained[4];
              v24 = KCSharingLogObject();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138478083;
                v44 = v12;
                v45 = 2113;
                v46 = v18;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "could not find CKShareParticipant or KCSharingParticipant for lookupinfo %{private}@ handle %{private}@", buf, 0x16u);
              }
            }

            else
            {
              v26 = [v20 permissionLevel];
              if (v26 > 2)
              {
                v27 = 0;
              }

              else
              {
                v27 = qword_100294980[v26];
              }

              v28 = [v21 permissionLevel];
              if (v28 > 2)
              {
                v29 = 0;
              }

              else
              {
                v29 = qword_100294998[v28];
              }

              [v19 setRole:v27];
              [v19 setPermission:v29];
              [*(*(*(v37 + 48) + 8) + 40) setObject:v19 forKeyedSubscript:v18];
            }
          }

          else
          {
            v25 = WeakRetained[4];
            v19 = KCSharingLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v44 = v12;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not find handle for lookupinfo %{private}@", buf, 0xCu);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v10);
    }

    v6 = v35;
    if (v35)
    {
      v30 = WeakRetained[4];
      v31 = KCSharingLogObject();
      v5 = v36;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v35;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to fetch share participants: %{public}@", buf, 0xCu);
      }

      (*(*(v37 + 40) + 16))();
    }

    else
    {
      v34 = *(*(*(v37 + 48) + 8) + 40);
      (*(*(v37 + 40) + 16))();
      v5 = v36;
    }
  }

  else
  {
    v50 = NSLocalizedDescriptionKey;
    v51 = @"Failed to strongify self in fetchShareParticipants";
    v32 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v33 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v32];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10004EFAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 32);
  v11 = KCSharingLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v22 = 138478339;
    v23 = v7;
    v24 = 2113;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "fetch result for lookupInfo %{private}@: participant %{private}@ error %{public}@", &v22, 0x20u);
  }

  v12 = sub_100031428(v7);
  if (v12)
  {
    v13 = [*(a1 + 40) objectForKeyedSubscript:v12];
    v14 = v13;
    if (v8 && v13)
    {
      v15 = [v13 permissionLevel];
      if (v15 > 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = qword_100294980[v15];
      }

      v20 = [v14 permissionLevel];
      if (v20 > 2)
      {
        v21 = 0;
      }

      else
      {
        v21 = qword_100294998[v20];
      }

      [v8 setRole:v16];
      [v8 setPermission:v21];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v8 forKeyedSubscript:v12];
    }

    else
    {
      v18 = *(*(a1 + 32) + 32);
      v19 = KCSharingLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = 138478083;
        v23 = v7;
        v24 = 2113;
        v25 = v12;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "could not find CKShareParticipant or KCSharingParticipant for lookupinfo %{private}@ handle %{private}@", &v22, 0x16u);
      }
    }
  }

  else
  {
    v17 = *(*(a1 + 32) + 32);
    v14 = KCSharingLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = 138477827;
      v23 = v7;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find handle for lookupinfo %{private}@", &v22, 0xCu);
    }
  }
}

void sub_10004F240(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1[4] + 32);
    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to fetch share participants: %{public}@", &v8, 0xCu);
    }

    v6 = *(a1[5] + 16);
  }

  else
  {
    v7 = *(*(a1[6] + 8) + 40);
    v6 = *(a1[5] + 16);
  }

  v6();
}

void sub_10004F68C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 32) count]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = a1;
    obj = *(a1 + 32);
    v26 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v26)
    {
      v7 = *v28;
      v8 = &swift_errorRelease_ptr;
      v23 = v5;
      v24 = v6;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:v10];
          v12 = [v11 userIdentity];
          if ([v12 hasiCloudAccount])
          {
            v13 = [v5 objectForKeyedSubscript:v10];
            v14 = [v13 userIdentity];
            [v14 publicSharingKey];
            v15 = v8;
            v17 = v16 = v7;
            v18 = [v17 length] != 0;

            v7 = v16;
            v8 = v15;

            v5 = v23;
            v6 = v24;
          }

          else
          {
            v18 = 0;
          }

          v19 = [v8[323] numberWithBool:v18];
          [v6 setObject:v19 forKeyedSubscript:v10];
        }

        v26 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v26);
    }

    v20 = *(*(v22 + 40) + 32);
    v21 = KCSharingLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "availability results: %{private}@", buf, 0xCu);
    }

    (*(*(v22 + 48) + 16))();
  }
}

void sub_10004FAC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    v8 = KCSharingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v35 = [*(a1 + 40) groupID];
      *buf = 138412546;
      *&buf[4] = v35;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch share metadata for group invite %@: %{public}@", buf, 0x16u);
    }

    if (CKErrorIsCode())
    {
      v9 = [v6 userInfo];
      v10 = [v9 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v11 = [*(a1 + 40) shareURL];
      v12 = [v10 objectForKeyedSubscript:v11];

      LODWORD(v10) = CKErrorIsCode();
      v13 = *(*(a1 + 32) + 32);
      v14 = KCSharingLogObject();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v15)
        {
          v16 = [*(a1 + 40) groupID];
          *buf = 138543362;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unknown item error for invite %{public}@, will consider decline a success", buf, 0xCu);
        }

        v17 = [KCSharingGroup alloc];
        v18 = [*(a1 + 40) groupID];
        v19 = [*(a1 + 40) displayName];
        v20 = [*(a1 + 40) shareURL];
        v21 = [v17 initWithGroupID:v18 participants:&__NSArray0__struct displayName:v19 shareURL:v20];

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        if (v15)
        {
          v29 = [*(a1 + 40) groupID];
          *buf = 138543618;
          *&buf[4] = v29;
          *&buf[12] = 2114;
          *&buf[14] = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Underlying failure for metadata fetch to decline %{public}@: %{public}@", buf, 0x16u);
        }

        (*(*(a1 + 48) + 16))();
      }

      sub_10005019C(@"decline", 0, *(a1 + 56), v12);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      sub_10005019C(@"decline", 0, *(a1 + 56), v6);
    }
  }

  else if ([v5 count] == 1)
  {
    if (sub_10001078C())
    {
      objc_initWeak(buf, *(a1 + 32));
      v22 = [*(a1 + 32) syncController];
      v23 = [v22 cloudCoreUtilities];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100050358;
      v42[3] = &unk_100334920;
      objc_copyWeak(v45, buf);
      v44 = *(a1 + 48);
      v24 = *(a1 + 40);
      v25 = *(a1 + 56);
      v43 = v24;
      v45[1] = v25;
      [v23 declineCKShares:v5 completionHandler:v42];

      objc_destroyWeak(v45);
      objc_destroyWeak(buf);
    }

    else
    {
      v30 = objc_alloc_init(CKDeclineSharesOperation);
      [v30 setShareMetadatas:v5];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v47 = sub_10004EAB8;
      v48 = sub_10004EAC8;
      v49 = 0;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100050734;
      v41[3] = &unk_100334948;
      v41[4] = buf;
      [v30 setPerShareCompletionBlock:v41];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100050748;
      v37[3] = &unk_100334998;
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      v40 = buf;
      v37[4] = v31;
      v38 = v32;
      v39 = *(a1 + 48);
      [v30 setDeclineSharesCompletionBlock:v37];
      v33 = [*(a1 + 32) syncController];
      v34 = [v33 container];
      [v34 addOperation:v30];

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v26 = *(*(a1 + 32) + 32);
    v27 = KCSharingLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v36 = [*(a1 + 40) groupID];
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Expected share metadata not found for group invite %{public}@", buf, 0xCu);
    }

    v28 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
    (*(*(a1 + 48) + 16))();
    sub_10005019C(@"decline", 0, *(a1 + 56), v28);
  }
}

void sub_10005015C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_10005019C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = mach_absolute_time();
  v10 = sub_100061400(a3, v9);
  v17[0] = v7;
  v16[0] = @"operation";
  v16[1] = @"participantCount";
  v11 = &swift_errorRelease_ptr;
  v12 = [NSNumber numberWithInteger:a2];
  v17[1] = v12;
  v16[2] = @"time";
  v13 = [NSNumber numberWithUnsignedLongLong:v10];
  v17[2] = v13;
  v16[3] = @"error";
  if (v8)
  {
    v10 = [v8 localizedDescription];
    v11 = [v8 domain];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error: %@ (Domain: %@, Code: %ld)", v10, v11, [v8 code]);
  }

  else
  {
    v14 = @"Success";
  }

  v17[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
  {
  }

  [SecCoreAnalytics sendEvent:@"com.apple.security.keychain.sharing.groupOperation" event:v15];
}

void sub_100050358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v8 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
          v14 = [v13 failure];

          if (v14)
          {
            v15 = WeakRetained[4];
            v16 = KCSharingLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v27 = [*(a1 + 32) groupID];
              *buf = 138543618;
              v37 = v27;
              v38 = 2114;
              v39 = v14;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to decline shares for group invite %{public}@: %{public}@", buf, 0x16u);
            }

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_14:

    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v6;
    }

    v18 = v17;
    if (v18)
    {
      v19 = WeakRetained[4];
      v20 = KCSharingLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = [*(a1 + 32) groupID];
        *buf = 138543618;
        v37 = v26;
        v38 = 2114;
        v39 = v18;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to decline shares for group invite %{public}@: %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
      sub_10005019C(@"decline", 0, *(a1 + 56), v18);
    }

    else
    {
      v22 = [WeakRetained messagingdConnection];
      v23 = [*(a1 + 32) groupID];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100050AC4;
      v28[3] = &unk_1003348F8;
      v28[4] = WeakRetained;
      v29 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = *(a1 + 56);
      v30 = v24;
      v31 = v25;
      [v22 didDeclineInviteForGroupID:v23 completion:v28];
    }
  }

  else
  {
    v41 = NSLocalizedDescriptionKey;
    v42 = @"Failed to strongify self in declineCKShare";
    v21 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v14 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v21];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100050748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (!v5)
  {
    v5 = v3;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = v7[4];
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 40) groupID];
      *buf = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to decline shares for group invite %{public}@: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = [v7 messagingdConnection];
    v11 = [*(a1 + 40) groupID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100050920;
    v14[3] = &unk_100334970;
    v12 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v12;
    v16 = *(a1 + 48);
    [v10 didDeclineInviteForGroupID:v11 completion:v14];
  }
}

void sub_100050920(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 40) groupID];
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to decline IDSInvite for %{public}@: %{public}@", &v12, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [KCSharingGroup alloc];
    v7 = [*(a1 + 40) groupID];
    v8 = [*(a1 + 40) displayName];
    v9 = [*(a1 + 40) shareURL];
    v10 = [v6 initWithGroupID:v7 participants:&__NSArray0__struct displayName:v8 shareURL:v9];

    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 32) sendGroupsUpdatedNotifications];
}

void sub_100050AC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 40) groupID];
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to decline IDSInvite for %{public}@: %{public}@", &v12, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    sub_10005019C(@"decline", 0, *(a1 + 56), v3);
  }

  else
  {
    v6 = [KCSharingGroup alloc];
    v7 = [*(a1 + 40) groupID];
    v8 = [*(a1 + 40) displayName];
    v9 = [*(a1 + 40) shareURL];
    v10 = [v6 initWithGroupID:v7 participants:&__NSArray0__struct displayName:v8 shareURL:v9];

    (*(*(a1 + 48) + 16))();
    sub_10005019C(@"decline", 0, *(a1 + 56), 0);
  }

  [*(a1 + 32) sendGroupsUpdatedNotifications];
}

void sub_100050E0C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1[4] + 32);
    v8 = KCSharingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to receive invite from keychainsharingmessagesd: %{public}@", buf, 0xCu);
    }

    (*(a1[6] + 16))();
    sub_10005019C(@"decline", 0, a1[7], v6);
  }

  else
  {
    v9 = a1[4];
    if (v5)
    {
      [v9 declineGroupInvite:v5 startTime:a1[7] completion:a1[6]];
    }

    else
    {
      v10 = v9[4];
      v11 = KCSharingLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = a1[5];
        *buf = 138543362;
        v22 = v18;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No error and no invite from ksmd for accepting for %{public}@. We raced the sender cancelling the invite?", buf, 0xCu);
      }

      v12 = [KCSharingGroup alloc];
      v13 = a1[5];
      v14 = objc_alloc_init(NSURL);
      v15 = [v12 initWithGroupID:v13 participants:&__NSArray0__struct displayName:@"unknown" shareURL:v14];

      v19 = NSLocalizedDescriptionKey;
      v20 = @"Invite couldn't be found";
      v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v17 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:v16];

      (*(a1[6] + 16))();
      sub_10005019C(@"decline", 0, a1[7], v17);
    }
  }
}

void sub_100051230(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    v8 = KCSharingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      v26 = [v25 groupID];
      *location = 138478339;
      *&location[4] = v25;
      *&location[12] = 2114;
      *&location[14] = v26;
      *&location[22] = 2114;
      v42 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch share metadata for group invite %{private}@ for group %{public}@: %{public}@", location, 0x20u);
    }

    if (CKErrorIsCode())
    {
      v9 = [v6 userInfo];
      v10 = [v9 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v11 = [*(a1 + 40) shareURL];
      v12 = [v10 objectForKeyedSubscript:v11];

      (*(*(a1 + 48) + 16))();
      sub_10005019C(@"accept", 0, *(a1 + 56), v12);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      sub_10005019C(@"accept", 0, *(a1 + 56), v6);
    }
  }

  else if ([v5 count] == 1)
  {
    if (sub_10001078C())
    {
      objc_initWeak(location, *(a1 + 32));
      v13 = [*(a1 + 32) syncController];
      v14 = [v13 cloudCoreUtilities];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000517C4;
      v35[3] = &unk_100334830;
      objc_copyWeak(v40, location);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v39 = v15;
      v40[1] = v16;
      v36 = *(a1 + 40);
      v37 = v5;
      v38 = 0;
      [v14 acceptCKShares:v37 completionHandler:v35];

      objc_destroyWeak(v40);
      objc_destroyWeak(location);
    }

    else
    {
      v20 = objc_alloc_init(CKAcceptSharesOperation);
      [v20 setShareMetadatas:v5];
      *location = 0;
      *&location[8] = location;
      *&location[16] = 0x3032000000;
      v42 = sub_10004EAB8;
      v43 = sub_10004EAC8;
      v44 = 0;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100051C1C;
      v34[3] = &unk_100334858;
      v34[4] = location;
      [v20 setPerShareCompletionBlock:v34];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100051C30;
      v28[3] = &unk_1003348A8;
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v33 = location;
      v28[4] = v21;
      v29 = v22;
      v32 = *(a1 + 48);
      v30 = v5;
      v31 = 0;
      [v20 setAcceptSharesCompletionBlock:v28];
      v23 = [*(a1 + 32) syncController];
      v24 = [v23 container];
      [v24 addOperation:v20];

      _Block_object_dispose(location, 8);
    }
  }

  else
  {
    v17 = *(*(a1 + 32) + 32);
    v18 = KCSharingLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 40) groupID];
      *location = 138412290;
      *&location[4] = v27;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Expected share metadata not found for invite for %@", location, 0xCu);
    }

    v19 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
    (*(*(a1 + 48) + 16))();
    sub_10005019C(@"accept", 0, *(a1 + 56), v19);
  }
}

void sub_100051784(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1000517C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = v5;
      v12 = *v40;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [v8 objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
          v15 = [v14 failure];

          if (v15)
          {
            v16 = WeakRetained[4];
            v17 = KCSharingLogObject();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v33 = [*(a1 + 32) groupID];
              *buf = 138543618;
              v44 = v33;
              v45 = 2114;
              v46 = v15;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to accept shares for invite for group %{public}@: %{public}@", buf, 0x16u);
            }

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v15 = 0;
LABEL_14:
      v5 = v11;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v6;
    }

    v20 = v19;
    if (v20)
    {
      v21 = WeakRetained[4];
      v22 = KCSharingLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v32 = [*(a1 + 32) groupID];
        *buf = 138543618;
        v44 = v32;
        v45 = 2114;
        v46 = v20;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to accept shares for invite for group %{public}@: %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      sub_10005019C(@"accept", 0, *(a1 + 72), v20);
    }

    else
    {
      v34 = [WeakRetained messagingdConnection];
      v23 = [*(a1 + 32) groupID];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000521D8;
      v35[3] = &unk_1003347E0;
      v35[4] = WeakRetained;
      v24 = v6;
      v25 = v5;
      v26 = *(a1 + 32);
      v38 = *(a1 + 72);
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      *&v30 = v28;
      *(&v30 + 1) = v29;
      *&v31 = v26;
      v5 = v25;
      v6 = v24;
      *(&v31 + 1) = v27;
      v36 = v31;
      v37 = v30;
      [v34 didAcceptInviteForGroupID:v23 completion:v35];
    }
  }

  else
  {
    v48 = NSLocalizedDescriptionKey;
    v49 = @"Failed to strongify self in acceptCKShare";
    v18 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v15 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v18];

    (*(*(a1 + 56) + 16))();
    sub_10005019C(@"accept", 0, *(a1 + 72), v15);
  }
}

void sub_100051C30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (!v5)
  {
    v5 = v3;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = v7[4];
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 40) groupID];
      *buf = 138543618;
      v23 = v16;
      v24 = 2114;
      v25 = v6;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to accept shares for invite for group %{public}@: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = [v7 messagingdConnection];
    v11 = [*(a1 + 40) groupID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100051E40;
    v18[3] = &unk_100336870;
    v17 = *(a1 + 32);
    v12 = *(&v17 + 1);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v19 = v17;
    v20 = v15;
    v21 = *(a1 + 64);
    [v10 didAcceptInviteForGroupID:v11 completion:v18];
  }
}

void sub_100051E40(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1[4] + 4);
    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = [a1[5] groupID];
      *buf = 138543618;
      v23 = v16;
      v24 = 2114;
      v25 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to accept IDSInvite for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v6 = [a1[4] syncController];
  v7 = [a1[6] firstObject];
  v8 = [v7 share];
  v9 = [v8 recordID];
  v10 = [v9 zoneID];
  v21 = v10;
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100052068;
  v18[3] = &unk_100334880;
  v17 = *(a1 + 2);
  v12 = *(&v17 + 1);
  v13 = a1[7];
  v14 = a1[8];
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v19 = v17;
  v20 = v15;
  [v6 fetchRemoteChangesForZoneIDs:v11 completion:v18];
}

void sub_100052068(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 40) groupID];
      v12 = *(a1 + 48);
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to accept group invite for %{public}@: %{public}@", &v13, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) groupID];
  v8 = [v6 fetchLocalShareForGroupID:v7];
  v9 = sub_1000314F8(v8);

  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) sendGroupsUpdatedNotifications];
  v10 = [*(a1 + 32) syncController];
  [v10 setFeatureInUse];
}

void sub_1000521D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 40) groupID];
      *buf = 138543618;
      v24 = v16;
      v25 = 2114;
      v26 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to accept IDSInvite for %{public}@: %{public}@", buf, 0x16u);
    }

    sub_10005019C(@"accept", 0, *(a1 + 72), v3);
  }

  v6 = [*(a1 + 32) syncController];
  v7 = [*(a1 + 48) firstObject];
  v8 = [v7 share];
  v9 = [v8 recordID];
  v10 = [v9 zoneID];
  v22 = v10;
  v11 = [NSArray arrayWithObjects:&v22 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005241C;
  v18[3] = &unk_1003347B8;
  v17 = *(a1 + 32);
  v12 = *(&v17 + 1);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v19 = v17;
  v20 = v15;
  v21 = *(a1 + 72);
  [v6 fetchRemoteChangesForZoneIDs:v11 completion:v18];
}

void sub_10005241C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 40) groupID];
      v14 = *(a1 + 48);
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to accept group invite for %{public}@: %{public}@", &v15, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) groupID];
  v8 = [v6 fetchLocalShareForGroupID:v7];
  v9 = sub_1000314F8(v8);

  if (v9)
  {
    v10 = [v9 participants];
    v11 = [v10 count];
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) sendGroupsUpdatedNotifications];
  v12 = [*(a1 + 32) syncController];
  [v12 setFeatureInUse];

  sub_10005019C(@"accept", v11, *(a1 + 64), v3);
}

void sub_1000527B4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1[4] + 32);
    v8 = KCSharingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to receive invite from keychainsharingmessagesd: %{public}@", &v14, 0xCu);
    }

    (*(a1[6] + 16))();
    sub_10005019C(@"accept", 0, a1[7], v6);
  }

  else
  {
    v9 = a1[4];
    if (v5)
    {
      [v9 acceptGroupInvite:v5 startTime:a1[7] completion:a1[6]];
    }

    else
    {
      v10 = v9[4];
      v11 = KCSharingLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = a1[5];
        v14 = 138543362;
        v15 = v13;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No error and no invite from ksmd for declining for %{public}@. We raced the sender cancelling the invite?", &v14, 0xCu);
      }

      v12 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
      (*(a1[6] + 16))();
      sub_10005019C(@"accept", 0, a1[7], v12);
    }
  }
}

void sub_1000531A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 recordID];
  v7 = [v6 zoneID];
  v8 = [v3 translateSyncErrorForGroupRequest:v5 zoneID:v7];

  v9 = *(a1 + 48);
  if (!v9)
  {
    v9 = *(a1 + 40);
  }

  v10 = [v9 participants];
  v11 = [v10 count];

  if (v8)
  {
    v12 = *(*(a1 + 32) + 32);
    v13 = KCSharingLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 56) groupID];
      *buf = 138543618;
      v25 = v19;
      v26 = 2114;
      v27 = v8;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to save staged outgoing changes for group delete request for %{public}@: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
    sub_10005019C(@"delete", v11, *(a1 + 72), v8);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
    sub_10005019C(@"delete", v11, *(a1 + 72), 0);
    [*(a1 + 32) sendGroupsUpdatedNotifications];
    v14 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v15 = [v14 messagingdConnection];
      v16 = *(a1 + 48);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100053480;
      v22[3] = &unk_100334F20;
      v22[4] = *(a1 + 32);
      v23 = v16;
      [v15 cancelPendingInvitesForGroup:v23 participantHandles:0 completion:v22];
    }

    else
    {
      v17 = v14[4];
      v18 = KCSharingLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = [*(a1 + 40) recordID];
        v21 = [v20 zoneID];
        *buf = 138543362;
        v25 = v21;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Did not obtain group object for now-deleted group %{public}@, can't cancel pending invitations", buf, 0xCu);
      }
    }
  }
}

void sub_100053480(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = KCSharingLogObject();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) groupID];
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to cancel (some) pending invitations for now-deleted group %{public}@: %{public}@", &v8, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) groupID];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Canceled pending invitations for now-deleted group %{public}@", &v8, 0xCu);
    goto LABEL_6;
  }
}

void sub_100053A64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 recordID];
  v7 = [v6 zoneID];
  v8 = [v3 translateSyncErrorForGroupRequest:v5 zoneID:v7];

  if (v8)
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 48) groupID];
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to save staged outgoing changes for group leave request for %{public}@: %{public}@", &v13, 0x16u);
    }
  }

  (*(*(a1 + 56) + 16))();
  v11 = [*(a1 + 40) participants];
  sub_10005019C(@"leave", [v11 count], *(a1 + 64), v8);

  if (!v8)
  {
    [*(a1 + 32) sendGroupsUpdatedNotifications];
  }
}

void sub_100053DBC(uint64_t a1, void *a2, void *a3)
{
  v93 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 32);
  v7 = KCSharingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) participants];
    *buf = 138478083;
    v124 = v8;
    v125 = 2113;
    v126 = v93;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetched share participants info for %{private}@, \n %{private}@", buf, 0x16u);
  }

  if (v5)
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v87 = [*(a1 + 40) groupID];
      *buf = 138543618;
      v124 = v87;
      v125 = 2114;
      v126 = v5;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch share participants for group %{public}@: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
    if (*(a1 + 72))
    {
      v11 = @"create";
    }

    else
    {
      v11 = @"update";
    }

    v12 = [*(a1 + 48) participants];
    sub_10005019C(v11, [v12 count], *(a1 + 64), v5);
  }

  else
  {
    v13 = [*(a1 + 40) participants];
    v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v13 count]);

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v92 = a1;
    v15 = [*(a1 + 40) participants];
    v16 = [v15 countByEnumeratingWithState:&v114 objects:v130 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v115;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v115 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v114 + 1) + 8 * i);
          v21 = [v20 handle];
          [v14 setObject:v20 forKeyedSubscript:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v114 objects:v130 count:16];
      }

      while (v17);
    }

    v22 = [*(v92 + 48) participants];
    v23 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v22 count]);

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v24 = [*(v92 + 48) participants];
    v25 = [v24 countByEnumeratingWithState:&v110 objects:v129 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v111;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v111 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v110 + 1) + 8 * j);
          v30 = [v29 userIdentity];
          v31 = [v30 lookupInfo];
          v32 = sub_100031428(v31);

          if (v32)
          {
            [v23 setObject:v29 forKeyedSubscript:v32];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v110 objects:v129 count:16];
      }

      while (v26);
    }

    v33 = *(*(v92 + 32) + 32);
    v34 = KCSharingLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478339;
      v124 = v14;
      v125 = 2113;
      v126 = v23;
      v127 = 2113;
      v128 = v93;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Group participants Info: %{private}@ \n Share Participants Info: %{private}@ \n fetched share participants info: %{private}@", buf, 0x20u);
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v12 = v14;
    v35 = [v12 countByEnumeratingWithState:&v106 objects:v122 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v107;
      while (2)
      {
        for (k = 0; k != v36; k = k + 1)
        {
          if (*v107 != v37)
          {
            objc_enumerationMutation(v12);
          }

          v39 = *(*(&v106 + 1) + 8 * k);
          v40 = [v23 objectForKeyedSubscript:v39];

          if (!v40)
          {
            v41 = [v93 objectForKeyedSubscript:v39];
            v42 = v41;
            if (v41)
            {
              if ([v41 role] == 1)
              {
                v43 = *(*(v92 + 32) + 32);
                v44 = KCSharingLogObject();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *buf = 138478083;
                  v124 = v39;
                  v125 = 2113;
                  v126 = v42;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Trying to add the owner: %{private}@ again %{private}@", buf, 0x16u);
                }
              }

              else
              {
                if ([v42 role] != 3 && objc_msgSend(v42, "role") != 2)
                {
                  v72 = *(*(v92 + 32) + 32);
                  v73 = KCSharingLogObject();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v124 = v42;
                    _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Do not have proper participant role for share membership %{private}@", buf, 0xCu);
                  }

                  v120 = NSLocalizedDescriptionKey;
                  v121 = @"Do not have proper participant role for share membership";
                  v74 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                  v75 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:1 userInfo:v74];

                  (*(*(v92 + 56) + 16))();
                  if (*(v92 + 72))
                  {
                    v76 = @"create";
                  }

                  else
                  {
                    v76 = @"update";
                  }

                  v77 = [*(v92 + 48) participants];
                  sub_10005019C(v76, [v77 count], *(v92 + 64), v75);

                  v71 = v12;
                  v5 = 0;
                  goto LABEL_90;
                }

                [*(v92 + 48) addParticipant:v42];
              }
            }
          }
        }

        v36 = [v12 countByEnumeratingWithState:&v106 objects:v122 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v91 = +[NSMutableArray array];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v42 = v23;
    v45 = [v42 countByEnumeratingWithState:&v102 objects:v119 count:16];
    v46 = v92;
    if (v45)
    {
      v47 = v45;
      v48 = *v103;
      while (2)
      {
        for (m = 0; m != v47; m = m + 1)
        {
          if (*v103 != v48)
          {
            objc_enumerationMutation(v42);
          }

          v50 = *(*(&v102 + 1) + 8 * m);
          v51 = [v42 objectForKeyedSubscript:v50];
          v52 = [v12 objectForKeyedSubscript:v50];
          v53 = v52;
          if (v52)
          {
            v54 = [v52 permissionLevel];
            if (v54 > 2)
            {
              v55 = 0;
            }

            else
            {
              v55 = qword_100294980[v54];
            }

            [v51 setRole:v55];
            v58 = [v53 permissionLevel];
            if (v58 > 2)
            {
              v59 = 0;
            }

            else
            {
              v59 = qword_100294998[v58];
            }

            [v51 setPermission:v59];
          }

          else if ([v51 role] == 1 && objc_msgSend(v51, "isCurrentUser"))
          {
            v56 = *(*(v46 + 32) + 32);
            v57 = KCSharingLogObject();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              *buf = 138478083;
              v124 = v50;
              v125 = 2113;
              v126 = v51;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Can't not remove owner: %{private}@ %{private}@; Skipping", buf, 0x16u);
            }

            v46 = v92;
          }

          else
          {
            if ([v51 isCurrentUser])
            {
              v78 = *(*(v46 + 32) + 32);
              v79 = KCSharingLogObject();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v88 = [*(v46 + 40) groupID];
                *buf = 138543362;
                v124 = v88;
                _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Rejected request to remove self from group %{public}@", buf, 0xCu);

                v46 = v92;
              }

              v80 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:15 userInfo:0];
              (*(*(v46 + 56) + 16))();
              v81 = v46;
              if (*(v46 + 72))
              {
                v82 = @"create";
              }

              else
              {
                v82 = @"update";
              }

              v83 = [*(v81 + 48) participants];
              sub_10005019C(v82, [v83 count], *(v81 + 64), v80);

              v5 = 0;
              goto LABEL_89;
            }

            [*(v46 + 48) removeParticipant:v51];
            [v91 addObject:v50];
          }
        }

        v47 = [v42 countByEnumeratingWithState:&v102 objects:v119 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v60 = [*(v46 + 32) syncController];
    v118 = *(v46 + 48);
    v61 = [NSArray arrayWithObjects:&v118 count:1];
    v101 = 0;
    v62 = [v60 stageOutgoingShares:v61 deletionsForShares:0 error:&v101];
    v42 = v101;

    v63 = v92;
    v64 = *(*(v92 + 32) + 32);
    v65 = KCSharingLogObject();
    v66 = v65;
    if (v62)
    {
      v5 = 0;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [*(v92 + 40) groupID];
        *buf = 138543362;
        v124 = v67;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Successfully created/updated and staged CKShare for group create/update request %{public}@", buf, 0xCu);

        v63 = v92;
      }

      v68 = [*(v63 + 32) syncController];
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_100054AB4;
      v94[3] = &unk_100334768;
      v94[4] = *(v63 + 32);
      v95 = *(v63 + 48);
      v96 = *(v63 + 40);
      v69 = *(v63 + 56);
      v100 = *(v63 + 72);
      v70 = *(v63 + 64);
      v98 = v69;
      v99 = v70;
      v71 = v91;
      v97 = v91;
      [v68 saveStagedOutgoingChangesWithCompletion:v94];
    }

    else
    {
      v5 = 0;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v89 = *(v92 + 48);
        v90 = [*(v92 + 40) groupID];
        *buf = 138478339;
        v124 = v89;
        v125 = 2114;
        v126 = v90;
        v127 = 2114;
        v128 = v42;
        _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to stage outgoing share %{private}@ for group %{public}@: %{public}@", buf, 0x20u);

        v63 = v92;
      }

      (*(*(v63 + 56) + 16))();
      if (*(v63 + 72))
      {
        v84 = @"create";
      }

      else
      {
        v84 = @"update";
      }

      [*(v63 + 48) participants];
      v86 = v85 = v63;
      sub_10005019C(v84, [v86 count], *(v85 + 64), v42);

LABEL_89:
      v71 = v91;
    }

LABEL_90:
  }
}

void sub_100054AB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) recordID];
  v6 = [v5 zoneID];
  v7 = [v4 translateSyncErrorForGroupRequest:v3 zoneID:v6];

  if (v7)
  {
    v8 = *(*(a1 + 32) + 32);
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v31 = [*(a1 + 48) groupID];
      *buf = 138543874;
      v38 = v31;
      v39 = 2114;
      v40 = v7;
      v41 = 2114;
      v42 = v3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to save staged outgoing changes for group create/update request for %{public}@: %{public}@, %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
    if (*(a1 + 80))
    {
      v10 = @"create";
    }

    else
    {
      v10 = @"update";
    }

    v11 = [*(a1 + 40) participants];
    sub_10005019C(v10, [v11 count], *(a1 + 72), v7);
  }

  else
  {
    if (v3)
    {
      if (*(a1 + 80))
      {
        v12 = @"create";
      }

      else
      {
        v12 = @"update";
      }

      v13 = [*(a1 + 40) participants];
      sub_10005019C(v12, [v13 count], *(a1 + 72), v3);
    }

    v14 = [*(a1 + 32) syncController];
    v15 = [v14 store];
    v16 = [*(a1 + 48) groupID];
    v34 = 0;
    v17 = [v15 fetchCKShareFromMirrorForGroupID:v16 error:&v34];
    v11 = v34;

    v18 = sub_1000314F8(v17);
    v19 = *(*(a1 + 32) + 32);
    v20 = KCSharingLogObject();
    v21 = v20;
    if (v11 || !v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v38 = v11;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to fetch newly saved group from disk. This is a bug?! %{public}@", buf, 0xCu);
      }

      v23 = sub_1000314F8(*(a1 + 40));
      v35 = NSLocalizedDescriptionKey;
      v36 = @"Failed to find saved group locally";
      v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v25 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:v24];

      (*(*(a1 + 64) + 16))();
      if (*(a1 + 80))
      {
        v26 = @"create";
      }

      else
      {
        v26 = @"update";
      }

      v27 = [v17 participants];
      sub_10005019C(v26, [v27 count], *(a1 + 72), v25);
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v38 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Will return successfully saved group %{private}@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
      if (*(a1 + 80))
      {
        v22 = @"create";
      }

      else
      {
        v22 = @"update";
      }

      v23 = [v17 participants];
      sub_10005019C(v22, [v23 count], *(a1 + 72), 0);
    }

    [*(a1 + 32) sendGroupsUpdatedNotifications];
    if ([*(a1 + 56) count])
    {
      v28 = [*(a1 + 32) messagingdConnection];
      v29 = *(a1 + 48);
      v30 = *(a1 + 56);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100054FC0;
      v32[3] = &unk_100334F20;
      v32[4] = *(a1 + 32);
      v33 = v29;
      [v28 cancelPendingInvitesForGroup:v33 participantHandles:v30 completion:v32];
    }
  }
}

void sub_100054FC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = KCSharingLogObject();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) groupID];
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to cancel (some) pending invitations for participants removed from %{public}@: %{public}@", &v8, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) groupID];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Canceled any pending invitations for participants removed from %{public}@", &v8, 0xCu);
    goto LABEL_6;
  }
}

void sub_100055B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100055B60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v47 = v6;
    v48 = v5;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v52;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v52 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v51 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:{v13, v47}];
          v15 = [v14 failure];

          if (v15)
          {
            v16 = [*(a1 + 32) objectForKeyedSubscript:v13];
            v17 = WeakRetained[4];
            v18 = KCSharingLogObject();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v56 = v16;
              v57 = 2114;
              v58 = v15;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CK failed to fetch metadata for %{public}@: %{public}@", buf, 0x16u);
            }

            if (CKErrorIsCode())
            {
              v19 = WeakRetained[4];
              v20 = KCSharingLogObject();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v56 = v16;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Metadata fetch error means the share for %{public}@ is no longer accessible to us, will attempt async to decline invitation", buf, 0xCu);
              }

              v21 = [WeakRetained messagingdConnection];
              v49[0] = _NSConcreteStackBlock;
              v49[1] = 3221225472;
              v49[2] = sub_10005676C;
              v49[3] = &unk_100334F20;
              v49[4] = WeakRetained;
              v16 = v16;
              v50 = v16;
              [v21 didDeclineInviteForGroupID:v16 completion:v49];
            }
          }

          else
          {
            v22 = a1;
            v23 = [v8 objectForKeyedSubscript:v13];
            v16 = [v23 success];

            v24 = [v16 share];

            if (v24)
            {
              v25 = WeakRetained[4];
              v26 = KCSharingLogObject();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = *(v22 + 40);
                *buf = 138478339;
                v56 = v27;
                v57 = 2113;
                v58 = v13;
                v59 = 2113;
                v60 = v16;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Fetched share metadata group invites: %{private}@ for shareURL: %{private}@ with shareMetadata: %{private}@", buf, 0x20u);
              }

              a1 = v22;
              [*(v22 + 48) addObject:v16];
            }

            else
            {
              if (!v16 || ([v16 share], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
              {
                v29 = WeakRetained[4];
                v30 = KCSharingLogObject();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v31 = *(v22 + 40);
                  *buf = 138478083;
                  v56 = v31;
                  v57 = 2113;
                  v58 = v13;
                  _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to fetched share metadata group invites: %{private}@ for shareURL: %{private}@", buf, 0x16u);
                }
              }

              a1 = v22;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v10);
    }

    v6 = v47;
    if (v47)
    {
      IsCode = CKErrorIsCode();
      v33 = WeakRetained[4];
      v34 = KCSharingLogObject();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      v5 = v48;
      if (!IsCode)
      {
        if (v35)
        {
          v46 = *(a1 + 40);
          *buf = 138478083;
          v56 = v46;
          v57 = 2114;
          v58 = v47;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to fetch metadata for invites: %{private}@: %{public}@", buf, 0x16u);
        }

        v41 = *(*(a1 + 56) + 16);
        goto LABEL_38;
      }

      if (v35)
      {
        v42 = *(a1 + 40);
        v43 = [v42 count];
        v44 = v43 - [*(a1 + 48) count];
        v45 = [*(a1 + 40) count];
        *buf = 138478595;
        v56 = v42;
        v57 = 2048;
        v58 = v44;
        v59 = 2048;
        v60 = v45;
        v61 = 2114;
        v62 = v47;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Share metadata fetch for invites %{private}@ partly failed (%ld/%ld): %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v38 = WeakRetained[4];
      v34 = KCSharingLogObject();
      v5 = v48;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 40);
        *buf = 138477827;
        v56 = v39;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Fetched share metadata for group invites: %{private}@", buf, 0xCu);
      }
    }

    v40 = *(a1 + 48);
    v41 = *(*(a1 + 56) + 16);
LABEL_38:
    v41();
    goto LABEL_39;
  }

  v64 = NSLocalizedDescriptionKey;
  v65 = @"Failed to strongify self in fetchCKShareMetadata";
  v36 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v37 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v36];

  (*(*(a1 + 56) + 16))();
LABEL_39:
}

void sub_1000561FC(id *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [a1[4] objectForKeyedSubscript:a2];
    v10 = *(a1[5] + 4);
    v11 = KCSharingLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CK failed to fetch metadata for %{public}@: %{public}@", buf, 0x16u);
    }

    if (CKErrorIsCode())
    {
      v12 = *(a1[5] + 4);
      v13 = KCSharingLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v9;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Metadata fetch error means the share for %{public}@ is no longer accessible to us, will attempt async to decline invitation", buf, 0xCu);
      }

      v14 = [a1[5] messagingdConnection];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100056648;
      v16[3] = &unk_100334F20;
      v16[4] = a1[5];
      v17 = v9;
      [v14 didDeclineInviteForGroupID:v17 completion:v16];
    }
  }

  else
  {
    v15 = [v7 share];

    if (v15)
    {
      [a1[6] addObject:v7];
    }
  }
}

void sub_100056428(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v8 = *(*(a1 + 32) + 32);
    v6 = KCSharingLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v17 = 138477827;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched share metadata for group invites: %{private}@", &v17, 0xCu);
    }

    goto LABEL_8;
  }

  IsCode = CKErrorIsCode();
  v5 = *(*(a1 + 32) + 32);
  v6 = KCSharingLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (IsCode)
  {
    if (v7)
    {
      v12 = *(a1 + 40);
      v13 = [v12 count];
      v14 = v13 - [*(a1 + 48) count];
      v15 = [*(a1 + 40) count];
      v17 = 138478595;
      v18 = v12;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = v15;
      v23 = 2114;
      v24 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Share metadata fetch for invites %{private}@ partly failed (%ld/%ld): %{public}@", &v17, 0x2Au);
    }

LABEL_8:

    v10 = *(a1 + 48);
    v11 = *(*(a1 + 56) + 16);
    goto LABEL_12;
  }

  if (v7)
  {
    v16 = *(a1 + 40);
    v17 = 138478083;
    v18 = v16;
    v19 = 2114;
    v20 = v3;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch metadata for invites: %{private}@: %{public}@", &v17, 0x16u);
  }

  v11 = *(*(a1 + 56) + 16);
LABEL_12:
  v11();
}

void sub_100056648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = KCSharingLogObject();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to decline unusable invitation for groupID %{public}@: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Declined invitation for groupID %{public}@ we no longer have access to.", &v9, 0xCu);
  }
}

void sub_10005676C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = KCSharingLogObject();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to decline unusable invitation for groupID %{public}@: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Declined invitation for groupID %{public}@ we no longer have access to.", &v9, 0xCu);
  }
}

void sub_100056968(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    v8 = KCSharingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch received group invites: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = objc_alloc_init(NSMutableArray);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = *(a1 + 40);
          v17 = [v15 groupID];
          LOBYTE(v16) = [v16 containsObject:v17];

          if ((v16 & 1) == 0)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v18 = *(a1 + 32);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100056BF0;
      v20[3] = &unk_1003365F8;
      v20[4] = v18;
      v21 = *(a1 + 48);
      [v18 fetchCKShareMetadataForGroupInvites:v9 completion:v20];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    v5 = v19;
  }
}

void sub_100056BF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    v8 = KCSharingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(Partial) error fetching share metadata for group invites: %{public}@", buf, 0xCu);
    }
  }

  v21 = v6;
  v9 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 share];
        v17 = sub_1000314F8(v16);

        if (v17)
        {
          [v9 addObject:v17];
        }

        else
        {
          v18 = *(*(a1 + 32) + 32);
          v19 = KCSharingLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v15 share];
            *buf = 138543362;
            v28 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignoring share for non-group zone: %{public}@", buf, 0xCu);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005715C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 32);
    v8 = KCSharingLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch pending groups: %{public}@", &v15, 0xCu);
    }
  }

  if ([v5 count])
  {
    [*(a1 + 40) addObjectsFromArray:v5];
  }

  v9 = *(*(a1 + 32) + 32);
  v10 = KCSharingLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) count];
    v12 = [v5 count];
    v13 = *(a1 + 40);
    v15 = 134349571;
    v16 = v11;
    v17 = 2050;
    v18 = v12;
    v19 = 2113;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetched %{public}ld groups (%{public}ld of which pending): %{private}@", &v15, 0x20u);
  }

  v14 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_10005763C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [KCSharingDaemonGroupManager alloc];
  v3 = +[KCSharingSyncController sharedInstance];
  v4 = +[KCSharingMessagingdConnection sharedInstance];
  v5 = [(KCSharingDaemonGroupManager *)v2 initWithSyncController:v3 messagingdConnection:v4];
  v6 = qword_10039DBB8;
  qword_10039DBB8 = v5;

  objc_autoreleasePoolPop(v1);
}

void sub_10005828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000582C8(void *a1, CFStringRef **a2, _BYTE *a3)
{
  result = sub_1000171B0(a2, a1[6], (*(a1[4] + 8) + 24), &stru_100334AC0);
  if ((result & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

CFTypeRef sub_100058B94(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = v5[2];
  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = (v6 + 24);
    do
    {
      if (CFEqual(*v7, @"persistref"))
      {
        sub_100162F88(*(a1 + 32), a2, v7);
      }

      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
    v5 = *(a1 + 32);
  }

  result = CFRetain(v5);
  *a3 = result;
  return result;
}

CFTypeRef sub_100058C1C(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = v5[2];
  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = (v6 + 24);
    do
    {
      if (CFEqual(*v7, @"persistref"))
      {
        sub_100162F88(*(a1 + 32), a2, v7);
      }

      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
    v5 = *(a1 + 32);
  }

  result = CFRetain(v5);
  *a3 = result;
  return result;
}

CFTypeRef sub_100058E70(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a1 + 32) type] == 3 && *(a1 + 40))
  {
    v6 = [*(a1 + 48) groupUpdateInfoFrom:a2 to:*(a1 + 32)];
    if (v6)
    {
      [*(a1 + 40) addObject:v6];
    }
  }

  result = CFRetain(*(a1 + 56));
  *a3 = result;
  return result;
}

CFTypeRef sub_100059BD0(uint64_t a1, uint64_t a2, void *a3)
{
  result = CFRetain(*(a1 + 32));
  *a3 = result;
  return result;
}

CFTypeRef sub_100059BFC(uint64_t a1, uint64_t a2, void *a3)
{
  result = CFRetain(*(a1 + 32));
  *a3 = result;
  return result;
}

void sub_10005BAB0(id a1)
{
  v4[0] = @"type";
  v4[1] = kSecValueData;
  v4[2] = @"pkkp";
  v4[3] = @"pkvp";
  v4[4] = @"ipkp";
  v4[5] = @"ipvp";
  v4[6] = @"flag";
  v1 = [NSArray arrayWithObjects:v4 count:7];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DBC0;
  qword_10039DBC0 = v2;
}

uint64_t sub_10005D630(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v73) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73 & 0x7F) << v5;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      if ([a2 hasError])
      {
        v7 = 0;
      }

LABEL_14:
      if (([a2 hasError] & 1) != 0 || (v7 & 7) == 4)
      {
        break;
      }

      switch((v7 >> 3))
      {
        case 1u:
          v12 = PBReaderReadString();
          v13 = 80;
          goto LABEL_92;
        case 2u:
          *(a1 + 248) |= 0x20u;
          v73 = 0;
          v41 = [a2 position] + 8;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v73 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v73;
          v70 = 56;
          goto LABEL_144;
        case 3u:
          *(a1 + 248) |= 1u;
          v73 = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v73 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v69 = v73;
          v70 = 16;
LABEL_144:
          *(a1 + v70) = v69;
          goto LABEL_145;
        case 4u:
          v12 = PBReaderReadString();
          v13 = 96;
          goto LABEL_92;
        case 5u:
          v12 = PBReaderReadString();
          v13 = 216;
          goto LABEL_92;
        case 6u:
          v12 = PBReaderReadString();
          v13 = 232;
          goto LABEL_92;
        case 7u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 248) |= 0x100u;
          while (1)
          {
            LOBYTE(v73) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v73 & 0x7F) << v43;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v49 = 0;
              goto LABEL_130;
            }
          }

          if ([a2 hasError])
          {
            v49 = 0;
          }

          else
          {
            v49 = v45;
          }

LABEL_130:
          *(a1 + 208) = v49;
          goto LABEL_145;
        case 8u:
          v12 = PBReaderReadString();
          v13 = 112;
          goto LABEL_92;
        case 9u:
          v12 = PBReaderReadData();
          v13 = 160;
          goto LABEL_92;
        case 0xAu:
          v12 = PBReaderReadString();
          v13 = 200;
          goto LABEL_92;
        case 0xBu:
          v12 = PBReaderReadString();
          v13 = 152;
          goto LABEL_92;
        case 0xCu:
          v12 = PBReaderReadString();
          v13 = 184;
          goto LABEL_92;
        case 0xDu:
          v12 = PBReaderReadString();
          v13 = 88;
          goto LABEL_92;
        case 0xEu:
          v12 = PBReaderReadString();
          v13 = 240;
          goto LABEL_92;
        case 0xFu:
          v12 = PBReaderReadString();
          v13 = 224;
          goto LABEL_92;
        case 0x10u:
          v12 = PBReaderReadData();
          v13 = 192;
          goto LABEL_92;
        case 0x11u:
          v12 = PBReaderReadData();
          v13 = 168;
          goto LABEL_92;
        case 0x12u:
          v12 = PBReaderReadData();
          v13 = 120;
          goto LABEL_92;
        case 0x13u:
          v12 = PBReaderReadData();
          v13 = 128;
          goto LABEL_92;
        case 0x14u:
          v12 = PBReaderReadData();
          v13 = 136;
          goto LABEL_92;
        case 0x15u:
          v12 = PBReaderReadData();
          v13 = 144;
          goto LABEL_92;
        case 0x16u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 248) |= 2u;
          while (1)
          {
            LOBYTE(v73) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v73 & 0x7F) << v14;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_114;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_114:
          v67 = 24;
          goto LABEL_139;
        case 0x17u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 248) |= 0x80u;
          while (1)
          {
            LOBYTE(v73) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v73 & 0x7F) << v27;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_122;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_122:
          v67 = 72;
          goto LABEL_139;
        case 0x18u:
          v12 = PBReaderReadString();
          v13 = 176;
          goto LABEL_92;
        case 0x1Au:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 248) |= 8u;
          while (1)
          {
            LOBYTE(v73) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v73 & 0x7F) << v35;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_126;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_126:
          v67 = 40;
          goto LABEL_139;
        case 0x1Bu:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 248) |= 0x10u;
          while (1)
          {
            LOBYTE(v73) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v73 & 0x7F) << v21;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_118;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_118:
          v67 = 48;
          goto LABEL_139;
        case 0x1Cu:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 248) |= 4u;
          while (1)
          {
            LOBYTE(v73) = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v73 & 0x7F) << v61;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v11 = v62++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_138;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v63;
          }

LABEL_138:
          v67 = 32;
          goto LABEL_139;
        case 0x1Du:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 248) |= 0x40u;
          break;
        case 0x1Eu:
          v12 = PBReaderReadData();
          v13 = 104;
LABEL_92:
          v54 = *(a1 + v13);
          *(a1 + v13) = v12;

          goto LABEL_145;
        default:
          if (!*(a1 + 8))
          {
            v50 = objc_alloc_init(PBUnknownFields);
            v51 = *(a1 + 8);
            *(a1 + 8) = v50;

            v52 = *(a1 + 8);
          }

          result = PBUnknownFieldAdd();
          if (!result)
          {
            return result;
          }

          goto LABEL_145;
      }

      while (1)
      {
        LOBYTE(v73) = 0;
        v58 = [a2 position] + 1;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
        {
          v60 = [a2 data];
          [v60 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v57 |= (v73 & 0x7F) << v55;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v55 += 7;
        v11 = v56++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_134;
        }
      }

      v20 = [a2 hasError] ? 0 : v57;
LABEL_134:
      v67 = 64;
LABEL_139:
      *(a1 + v67) = v20;
LABEL_145:
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10005EF88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10005EFC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = KCSharingLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = WeakRetained[1];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection was interrupted: %@", &v4, 0xCu);
  }

  *(WeakRetained + 16) = 0;
}

void sub_10005F084(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = KCSharingLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = WeakRetained[1];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection was invalidated: %@", &v4, 0xCu);
  }

  *(WeakRetained + 16) = 0;
}

void sub_10005F1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error performing selector on remote object: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x10005F1B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005F28C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = KCSharingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error talking to AuthenticationServices: %@", &v4, 0xCu);
  }
}

void sub_10005F3D4(id a1)
{
  qword_10039DBD8 = objc_alloc_init(KCSharingGroupNotificationConnection);

  _objc_release_x1();
}

void sub_100061044(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = KCSharingLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to preflight sync controller with error=%{public}@", &v4, 0xCu);
    }
  }
}

void sub_100061104(id a1, NSError *a2)
{
  v2 = a2;
  v3 = KCSharingLogObject();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to stage missed outgoing changes with error=%{public}@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Maintenance complete", &v5, 2u);
  }
}

void sub_1000611F8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = KCSharingLogObject();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scheduled resync complete 🎉", &v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to complete scheduled resync: %@", &v7, 0xCu);
  }
}

void sub_1000612FC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = KCSharingLogObject();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully performed KCSharing Fixups 🎉", &v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to perform KCSharing Fixups: %@", &v7, 0xCu);
  }
}

unint64_t sub_100061400(uint64_t a1, uint64_t a2)
{
  v4 = qword_10039DBE8;
  if (qword_10039DBE8)
  {
    v5 = *&qword_10039DBF0;
  }

  else
  {
    v6 = mach_absolute_time();
    qword_10039DBE8 = mach_absolute_time() - v6;
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v8) = info.denom;
    LODWORD(v7) = info.numer;
    v5 = v7 / v8;
    qword_10039DBF0 = *&v5;
    v4 = qword_10039DBE8;
  }

  return (v5 * (a2 - a1 - v4) / 1000000.0);
}

void *sub_100061E2C(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = [NSError errorWithDomain:@"KCSharingErrorDomain" code:a2 userInfo:a3];
    *v3 = result;
  }

  return result;
}

BOOL sub_100061E7C(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:@"KCSharingErrorDomain"])
  {
    v3 = [v1 code] == 8;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100061EE8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v17 = NSLocalizedDescriptionKey;
    v12 = a4;
    v13 = a3;
    v14 = [[NSString alloc] initWithFormat:v12 arguments:&a9];

    v18 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = [v15 mutableCopy];

    [v16 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
    *a1 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:a2 userInfo:v16];
  }
}

void sub_100067BF0(id a1)
{
  v4[0] = kSecAttrAccessGroup;
  v4[1] = kSecAttrSharingGroup;
  v4[2] = kSecAttrKeyType;
  v4[3] = kSecAttrApplicationTag;
  v4[4] = kSecAttrLabel;
  v4[5] = kSecAttrApplicationLabel;
  v4[6] = kSecValueData;
  v4[7] = kSecAttrKeySizeInBits;
  v4[8] = kSecAttrEffectiveKeySize;
  v4[9] = kSecAttrCreationDate;
  v4[10] = kSecAttrModificationDate;
  v4[11] = kSecAttrAlias;
  v4[12] = kSecAttrKeyCreator;
  v4[13] = kSecAttrStartDate;
  v4[14] = kSecAttrEndDate;
  v4[15] = kSecAttrSyncViewHint;
  v4[16] = kSecAttrKeyClass;
  v4[17] = kSecAttrIsPermanent;
  v4[18] = kSecAttrIsPrivate;
  v4[19] = kSecAttrIsModifiable;
  v4[20] = kSecAttrIsSensitive;
  v4[21] = kSecAttrWasAlwaysSensitive;
  v4[22] = kSecAttrIsExtractable;
  v4[23] = kSecAttrWasNeverExtractable;
  v4[24] = kSecAttrCanEncrypt;
  v4[25] = kSecAttrCanDecrypt;
  v4[26] = kSecAttrCanDerive;
  v4[27] = kSecAttrCanSign;
  v4[28] = kSecAttrCanVerify;
  v4[29] = kSecAttrCanSignRecover;
  v4[30] = kSecAttrCanVerifyRecover;
  v4[31] = kSecAttrCanWrap;
  v4[32] = kSecAttrCanUnwrap;
  v1 = [NSArray arrayWithObjects:v4 count:33];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DBF8;
  qword_10039DBF8 = v2;
}

uint64_t sub_100069BC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v26 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100069D8C;
  v24 = sub_100069D9C;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100069DA4;
  v12[3] = &unk_100334CB8;
  v14 = &v16;
  v8 = a4;
  v13 = v8;
  v15 = &v20;
  if ((sub_10001489C(a1, v7, &v26, v12) & 1) == 0)
  {
    v10 = v26;
    if (a3)
    {
      v9 = 0;
      *a3 = v26;
      v26 = 0;
      goto LABEL_11;
    }

    if (v26)
    {
      v26 = 0;
      CFRelease(v10);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if ((v17[3] & 1) == 0)
  {
    if (a3)
    {
      v9 = 0;
      *a3 = v21[5];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = 1;
LABEL_11:

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

void sub_100069D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100069D8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100069DA4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

uint64_t sub_100069E14(sqlite3_stmt *a1, uint64_t a2, const __CFString *a3, void *a4)
{
  v8 = 0;
  v5 = sub_10000CBCC(a1, a2, a3, &v8);
  if ((v5 & 1) == 0)
  {
    v6 = v8;
    if (a4)
    {
      *a4 = v8;
    }

    else if (v8)
    {
      v8 = 0;
      CFRelease(v6);
    }
  }

  return v5;
}

uint64_t sub_100069E74(uint64_t a1, sqlite3_stmt *a2, void *a3, void *a4)
{
  v25 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100069D8C;
  v23 = sub_100069D9C;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006A034;
  v11[3] = &unk_100334CE0;
  v13 = &v15;
  v7 = a4;
  v12 = v7;
  v14 = &v19;
  if (!sub_100015DAC(a1, a2, &v25, v11))
  {
    v9 = v25;
    if (a3)
    {
      v8 = 0;
      *a3 = v25;
      v25 = 0;
      goto LABEL_11;
    }

    if (v25)
    {
      v25 = 0;
      CFRelease(v9);
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  if ((v16[3] & 1) == 0)
  {
    if (a3)
    {
      v8 = 0;
      *a3 = v20[5];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = 1;
LABEL_11:

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

void sub_10006A010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10006A034(void *a1, _BYTE *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = (*(v5 + 16))();
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[5] + 8) + 24) = v7;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a2 = 1;
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_10006A0DC(uint64_t a1, void *a2, void *a3)
{
  v24 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100069D8C;
  v22 = sub_100069D9C;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006A290;
  v10[3] = &unk_100334D08;
  v12 = &v14;
  v5 = a3;
  v11 = v5;
  v13 = &v18;
  v6 = sub_1000141DC(a1, 6, &v24, v10);
  if ((v15[3] & 1) == 0)
  {
    if (a2)
    {
      v7 = 0;
      *a2 = v19[5];
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if ((v6 & 1) == 0)
  {
    v8 = v24;
    if (a2)
    {
      v7 = 0;
      *a2 = v24;
      v24 = 0;
      goto LABEL_11;
    }

    if (v24)
    {
      v24 = 0;
      CFRelease(v8);
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_11:

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

void sub_10006A26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006A290(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
  return *(*(a1[5] + 8) + 24);
}

void sub_10006A720(uint64_t a1)
{
  [*(a1 + 32) setReinitSyncEnginesCompletionBlock:*(a1 + 40)];
  [*(a1 + 32) deviceDidLock];
  v2 = [*(a1 + 32) loggingIdentifier];
  v3 = KCSharingLogObject();

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Requested reinit of sync engines", v4, 2u);
  }
}

id sub_10006A984(uint64_t a1)
{
  [*(a1 + 32) setPrivateSyncEngine:0];
  v2 = *(a1 + 32);

  return [v2 setSharedSyncEngine:0];
}

void sub_10006A9C8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006AA50;
  v2[3] = &unk_1003364D8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 cancelOperationsWithCompletionHandler:v2];
}

void sub_10006ACC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_10006ACF4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to init CK sync engines after session invalidation with error: %{public}@", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully setup SyncEngines Init operation after session invalidation", &v8, 2u);
    }
  }
}

void sub_10006AE20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to init CK sync engines after the session invalidation after session invalidation with error: %{public}@", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully setup SyncEngines Session Init operation after session invalidation", &v8, 2u);
    }
  }
}

void sub_10006D73C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) loggingIdentifier];
  v5 = KCSharingLogObject();

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) database];
    [v6 scope];
    v7 = CKDatabaseScopeString();
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Account Change SignOut With CloudCore: %{public}@ sync engine have issued dummy session operation with error: %{public}@", &v8, 0x16u);
  }
}

void sub_10006DEB0(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = mach_absolute_time();
  v6 = sub_100061400(*(a1 + 40), v5);
  v7 = [*(a1 + 32) store];
  v8 = [v7 countAllSharingGroupAndItems:objc_opt_class() withError:0];

  v9 = [v8 objectForKeyedSubscript:&off_100364030];
  v28 = v8;
  v10 = [v8 mutableCopy];
  [v10 removeObjectForKey:&off_100364030];
  v26 = v10;
  v11 = [v10 allValues];
  v12 = [v11 valueForKeyPath:@"@sum.self"];
  v13 = [v12 integerValue];

  if (v9)
  {
    v14 = [v9 integerValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 32) loggingIdentifier];
  v16 = KCSharingLogObject();

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v32 = v14;
    v33 = 2048;
    v34 = v13;
    v35 = 2048;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Force-fetch on account change Info: Shares:%lu Items:%lu Time: %llums", buf, 0x20u);
  }

  v29[0] = @"groups";
  v17 = [NSNumber numberWithInteger:v14];
  v30[0] = v17;
  v29[1] = @"items";
  v18 = [NSNumber numberWithInteger:v13];
  v30[1] = v18;
  v29[2] = @"time";
  v19 = [NSNumber numberWithUnsignedLongLong:v6];
  v30[2] = v19;
  v29[3] = @"error";
  v27 = v9;
  if (v4)
  {
    v2 = [v4 localizedDescription];
    v15 = [v4 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error: %@ (Domain: %@, Code: %ld)", v2, v15, [v4 code]);
  }

  else
  {
    [NSString stringWithCString:"Success"];
  }
  v20 = ;
  v30[3] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
  [SecCoreAnalytics sendEvent:@"com.apple.security.keychain.sharing.initialFetch" event:v21];

  if (v4)
  {

    v22 = [*(a1 + 32) loggingIdentifier];
    v23 = KCSharingLogObject();

    v24 = v27;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v4;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Erroring out with error: %@ on fetching remote changes during account change notification", buf, 0xCu);
    }
  }

  else
  {

    v25 = [*(a1 + 32) loggingIdentifier];
    v23 = KCSharingLogObject();

    v24 = v27;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Successful Force-fetch remote changes complete during account change notification", buf, 2u);
    }
  }
}

id sub_10006E368(uint64_t a1)
{
  v2 = [*(a1 + 32) loggingIdentifier];
  v3 = KCSharingLogObject();

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SyncEnginesCancellation: deallocating engines", buf, 2u);
  }

  v4 = [*(a1 + 32) privateSyncEngine];

  if (v4)
  {
    v5 = [*(a1 + 32) loggingIdentifier];
    v6 = KCSharingLogObject();

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SyncEnginesCancellation: cancelling existing private sync engines operation", v14, 2u);
    }

    v7 = [*(a1 + 32) privateSyncEngine];
    [v7 cancelOperationsWithCompletionHandler:&stru_100334FE0];
  }

  [*(a1 + 32) setPrivateSyncEngine:0];
  [*(a1 + 32) setPrivateCloudDB:0];
  v8 = [*(a1 + 32) sharedSyncEngine];

  if (v8)
  {
    v9 = [*(a1 + 32) loggingIdentifier];
    v10 = KCSharingLogObject();

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SyncEnginesCancellation: cancelling existing shared sync engines operation", v13, 2u);
    }

    v11 = [*(a1 + 32) sharedSyncEngine];
    [v11 cancelOperationsWithCompletionHandler:&stru_100335000];
  }

  [*(a1 + 32) setSharedSyncEngine:0];
  return [*(a1 + 32) setSharedCloudDB:0];
}

void sub_100071EA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100071EC8(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = [*(a1 + 32) queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100072450;
  v5[3] = &unk_100334FC0;
  v6 = v2;
  v4 = v2;
  objc_copyWeak(&v9, (a1 + 64));
  v8 = *(a1 + 56);
  v10 = *(a1 + 72);
  v7 = *(a1 + 40);
  dispatch_sync(v3, v5);

  objc_destroyWeak(&v9);
}

void sub_100071FBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Failed to storify self";
    v3 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v4 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v3];

    (*(*(a1 + 40) + 16))();
  }

  v5 = objc_loadWeakRetained(WeakRetained + 6);
  v6 = v5;
  if (v5 && [v5 isPending])
  {
    v7 = [WeakRetained loggingIdentifier];
    v8 = KCSharingLogObject();

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not setting up resync: have extant operation", v26, 2u);
    }

    v9 = *(a1 + 40);
    v10 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:37 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
    goto LABEL_27;
  }

  v10 = WeakRetained[4];
  if (sub_10001078C())
  {
    if (v10)
    {
      if ([v10 isPending])
      {
        v11 = [WeakRetained cloudCoreUtilities];
        v12 = [v11 haveAcquiredSession];

        if ((v12 & 1) == 0)
        {
          v22 = [WeakRetained loggingIdentifier];
          v23 = KCSharingLogObject();

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "returning resync request since we might not have Apple Account yet", v26, 2u);
          }

          v24 = *(a1 + 40);
          v27 = NSLocalizedDescriptionKey;
          v28 = @"There might be missing Apple Account on the device";
          v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v25 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:43 userInfo:v14];
          (*(v24 + 16))(v24, 0, v25);

          goto LABEL_26;
        }
      }
    }
  }

  if (*(a1 + 56) == 1 && v10 && [v10 isPending])
  {
    v13 = *(a1 + 40);
    v14 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:35 userInfo:0];
    (*(v13 + 16))(v13, 0, v14);
LABEL_26:

    goto LABEL_27;
  }

  v15 = [WeakRetained loggingIdentifier];
  v16 = KCSharingLogObject();

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Trying to add a op for resync activity", v26, 2u);
  }

  [*(a1 + 32) addNullableDependency:v10];
  if (sub_10001078C())
  {
    v17 = [WeakRetained loggingIdentifier];
    v18 = KCSharingLogObject();

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Trying to add a op for resync activity with unlock dependency", v26, 2u);
    }

    v19 = *(a1 + 32);
    v20 = [WeakRetained lockStateTracker];
    v21 = [v20 unlockDependency];
    [v19 addNullableDependency:v21];

    objc_storeWeak(WeakRetained + 6, *(a1 + 32));
  }

  [WeakRetained[2] addOperation:*(a1 + 32)];
LABEL_27:
}

void sub_100072450(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v15 = *(a1 + 56);
    v16 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:14 userInfo:0];
LABEL_24:
    v17 = v16;
    (*(v15 + 16))(v15, 0, v16);

    goto LABEL_72;
  }

  v62 = a1;
  if (!sub_10001078C() || ([WeakRetained privateSyncEngine], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(WeakRetained, "sharedSyncEngine"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if (WeakRetained[12] && WeakRetained[13])
    {
      cf = 0;
      if (!sub_100089548(dword_10039E2F8, &cf))
      {
        v5 = [WeakRetained loggingIdentifier];
        v6 = KCSharingLogObject();

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v83 = cf;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to acquire AKS lock assertion: %@", buf, 0xCu);
        }
      }

      v7 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v7);
      }

      v8 = [WeakRetained loggingIdentifier];
      v9 = KCSharingLogObject();

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting resync operation with merge", buf, 2u);
      }

      v10 = [WeakRetained store];
      v74 = 0;
      v11 = [v10 mergeWithError:&v74];
      v61 = v74;

      if ((v11 & 1) == 0)
      {
        v20 = [WeakRetained loggingIdentifier];
        v21 = KCSharingLogObject();

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v83 = v61;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed resync during merge: %@", buf, 0xCu);
        }

        (*(*(a1 + 56) + 16))();
        v22 = v61;
        goto LABEL_71;
      }

      if (*(a1 + 72) == 1 && (*(a1 + 40) || *(a1 + 48)))
      {
        v12 = [WeakRetained loggingIdentifier];
        v13 = KCSharingLogObject();

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resync: Using already provided list of remote groups", buf, 2u);
        }

        v60 = [*(a1 + 40) copy];
        v14 = [v60 count];
      }

      else
      {
        v60 = +[NSMutableDictionary dictionary];
        v59 = +[NSMutableDictionary dictionary];
        v23 = [WeakRetained loggingIdentifier];
        v24 = KCSharingLogObject();

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Resync: obtaining list of groups from CloudKit", buf, 2u);
        }

        v73 = v61;
        v25 = [WeakRetained obtainAuthoritativeGroupsForPrivate:v60 shared:v59 error:&v73];
        v22 = v73;

        if ((v25 & 1) == 0)
        {
          v55 = [WeakRetained loggingIdentifier];
          v56 = KCSharingLogObject();

          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v83 = v22;
            _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Cannot resync due to failure to fetch all CK groups: %@", buf, 0xCu);
          }

          (*(*(a1 + 56) + 16))();
          goto LABEL_70;
        }

        v61 = v22;
        v14 = [v60 count];
      }

      if (v14 || [v59 count])
      {
        [WeakRetained setCurrentUserMetadataFeatureUsage:2];
        v26 = [WeakRetained loggingIdentifier];
        v27 = KCSharingLogObject();

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Resync: setting change tokens to nil", buf, 2u);
        }

        v28 = [WeakRetained privateSyncEngine];
        v29 = [v28 state];
        [v29 setServerChangeTokenForDatabase:0];

        v30 = [WeakRetained sharedSyncEngine];
        v31 = [v30 state];
        [v31 setServerChangeTokenForDatabase:0];

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v32 = [v60 allKeys];
        v33 = [v32 countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (v33)
        {
          v34 = *v70;
          do
          {
            for (i = 0; i != v33; i = i + 1)
            {
              if (*v70 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v69 + 1) + 8 * i);
              v37 = [WeakRetained loggingIdentifier];
              v38 = KCSharingLogObject();

              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v83 = v36;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Setting private DB change token to nil for zoneID %@", buf, 0xCu);
              }

              v39 = [WeakRetained privateSyncEngine];
              v40 = [v39 state];
              [v40 setServerChangeToken:0 forZoneID:v36];
            }

            v33 = [v32 countByEnumeratingWithState:&v69 objects:v81 count:16];
          }

          while (v33);
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v41 = [v59 allKeys];
        v42 = [v41 countByEnumeratingWithState:&v65 objects:v80 count:16];
        if (v42)
        {
          v43 = *v66;
          do
          {
            for (j = 0; j != v42; j = j + 1)
            {
              if (*v66 != v43)
              {
                objc_enumerationMutation(v41);
              }

              v45 = *(*(&v65 + 1) + 8 * j);
              v46 = [WeakRetained loggingIdentifier];
              v47 = KCSharingLogObject();

              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v83 = v45;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Setting shared DB change token to nil for zoneID %@", buf, 0xCu);
              }

              v48 = [WeakRetained sharedSyncEngine];
              v49 = [v48 state];
              [v49 setServerChangeToken:0 forZoneID:v45];
            }

            v42 = [v41 countByEnumeratingWithState:&v65 objects:v80 count:16];
          }

          while (v42);
        }

        v50 = [WeakRetained loggingIdentifier];
        v51 = KCSharingLogObject();

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Resync: kicking off full CK fetch", buf, 2u);
        }

        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_100073234;
        v63[3] = &unk_1003386E8;
        v63[4] = WeakRetained;
        v64 = *(v62 + 56);
        [WeakRetained _onQueueFetchRemoteChangesForZoneIDs:0 completion:v63];
        if (!sub_100089710(dword_10039E2F8, &cf))
        {
          v52 = [WeakRetained loggingIdentifier];
          v53 = KCSharingLogObject();

          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v83 = cf;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to drop AKS lock assertion: %@", buf, 0xCu);
          }
        }

        v54 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v54);
        }
      }

      else
      {
        v57 = [WeakRetained loggingIdentifier];
        v58 = KCSharingLogObject();

        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "CloudKit reports no private and no shared groups, returning early from resync", buf, 2u);
        }

        [WeakRetained setCurrentUserMetadataFeatureUsage:1];
        (*(*(a1 + 56) + 16))();
      }

      v22 = v61;
LABEL_70:

LABEL_71:
      goto LABEL_72;
    }

    v15 = *(a1 + 56);
    v16 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:36 userInfo:0];
    goto LABEL_24;
  }

  v18 = [WeakRetained loggingIdentifier];
  v19 = KCSharingLogObject();

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Don't have sync engines in resync", buf, 2u);
  }

  objc_initWeak(buf, WeakRetained);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100073048;
  v76[3] = &unk_100334F98;
  objc_copyWeak(&v78, buf);
  v77 = *(a1 + 56);
  v79 = *(a1 + 72);
  [WeakRetained resetReinitCKSyncEnginesOperationWithDelay:1 withCompletion:v76];

  objc_destroyWeak(&v78);
  objc_destroyWeak(buf);
LABEL_72:
}

void sub_100073024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100073048(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543362;
        v11 = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failure to init sync engines in resync with error %{public}@: ", &v10, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Re-running resync", &v10, 2u);
      }

      [v5 resyncFromRPC:*(a1 + 48) completion:*(a1 + 32)];
    }
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to storify self";
    v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100073234(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) loggingIdentifier];
  v5 = KCSharingLogObject();

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Resync failed: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resync complete", &v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000740D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100074124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007413C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v24 = v6;
  if (!v6)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = v10;
    v12 = *v26;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v25 + 1) + 8 * v13);
      v15 = [v5 objectForKeyedSubscript:v14];
      v16 = [v15 share];

      if (!v16)
      {
        break;
      }

      v17 = [v14 zoneName];
      v18 = [v17 hasPrefix:@"group-"];

      if ((v18 & 1) == 0)
      {
        v23 = [*(a1 + 32) loggingIdentifier];
        v20 = KCSharingLogObject();

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v31 = v15;
          v21 = v20;
          v22 = "Ignoring Private DB CKRecordZone with non-group zoneID: %{public}@";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
        }

        goto LABEL_18;
      }

      [*(a1 + 48) setObject:v15 forKeyedSubscript:v14];
LABEL_19:

      if (v11 == ++v13)
      {
        v11 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (!v11)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }
    }

    v19 = [*(a1 + 32) loggingIdentifier];
    v20 = KCSharingLogObject();

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v15;
      v21 = v20;
      v22 = "Ignoring Private DB CKRecordZone without a CKShare: %{public}@";
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  v7 = v6;
  v8 = [*(a1 + 32) loggingIdentifier];
  v9 = KCSharingLogObject();

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v31 = v7;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch record zones from Private DB: %{public}@", buf, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
LABEL_21:
  dispatch_group_leave(*(a1 + 40));
}

void sub_100074444(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) loggingIdentifier];
    v9 = KCSharingLogObject();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch record zones from Shared DB: %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 zoneName];
          v16 = [v15 hasPrefix:@"group-"];

          if (v16)
          {
            v17 = [v5 objectForKeyedSubscript:v14];
            [*(a1 + 48) setObject:v17 forKeyedSubscript:v14];
          }

          else
          {
            v18 = [*(a1 + 32) loggingIdentifier];
            v17 = KCSharingLogObject();

            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v5 objectForKeyedSubscript:v14];
              *buf = 138543362;
              v27 = v19;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ignoring Shared DB CKRecordZone with non-group zoneID: %{public}@", buf, 0xCu);
            }
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000746E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [*(a1 + 32) loggingIdentifier];
    v11 = KCSharingLogObject();

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error while requesting to CKDatabases: %{public}@", &v12, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  }

  else if (v7 && v8)
  {
    dispatch_group_enter(*(a1 + 40));
    [v7 addOperation:*(a1 + 48)];
    dispatch_group_enter(*(a1 + 40));
    [v8 addOperation:*(a1 + 56)];
  }
}

void sub_10007549C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) loggingIdentifier];
  v5 = KCSharingLogObject();

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ksmd errored sending new invites for group %@: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ksmd sent new invites if needed for group %@", &v8, 0xCu);
  }
}

void sub_100075B98(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_100075BD4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
    objc_sync_exit(v3);

    v4 = *(a1 + 32);
    v5 = [v4 privateSyncEngine];
    [v4 isLockedError:v6 duringFetchForEngine:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100075CA0(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
    objc_sync_exit(v3);

    v4 = *(a1 + 32);
    v5 = [v4 sharedSyncEngine];
    [v4 isLockedError:v6 duringFetchForEngine:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100075D6C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
    objc_sync_exit(v3);

    v4 = *(a1 + 32);
    v5 = [v4 sharedSyncEngine];
    [v4 isLockedError:v6 duringFetchForEngine:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100075E38(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
LABEL_2:
    v2 = [*(a1 + 32) loggingIdentifier];
    v3 = KCSharingLogObject();

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v13 = 138543362;
      v14 = v12;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to force-fetch remote changes: %{public}@", &v13, 0xCu);
    }

    goto LABEL_4;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v15 = NSMultipleUnderlyingErrorsKey;
      v6 = [*(*(*(a1 + 56) + 8) + 40) copy];
      v16 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v8 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:14 userInfo:v7];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    goto LABEL_2;
  }

  v11 = [*(a1 + 32) loggingIdentifier];
  v3 = KCSharingLogObject();

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Force-fetch remote changes complete", &v13, 2u);
  }

LABEL_4:

  v4 = *(*(*(a1 + 48) + 8) + 40);
  return (*(*(a1 + 40) + 16))();
}

void sub_1000762B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000762D4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v3 = [WeakRetained queue];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000763F0;
    v4[3] = &unk_100343EC8;
    objc_copyWeak(&v7, &location);
    v6 = a1[5];
    v5 = a1[4];
    dispatch_sync(v3, v4);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_1000763F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _onQueueFetchRemoteChangesForZoneIDs:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v6 = NSLocalizedDescriptionKey;
    v7 = @"Failed to strongify self";
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v4];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000768B0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10007694C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000769E8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100076A84(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100076B20(uint64_t a1)
{
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v10 = NSMultipleUnderlyingErrorsKey;
    v2 = [*(*(*(a1 + 48) + 8) + 40) copy];
    v11 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v4 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:14 userInfo:v3];

    v5 = [*(a1 + 32) loggingIdentifier];
    v6 = KCSharingLogObject();

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to save local changes: %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = [*(a1 + 32) loggingIdentifier];
    v6 = KCSharingLogObject();

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Saved local changes", &v8, 2u);
    }

    v4 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100076DE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100076E04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained loggingIdentifier];
    v5 = KCSharingLogObject();

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Staging all outgoing changes", buf, 2u);
    }

    v6 = [v3 store];
    v17 = 0;
    v7 = [v6 stageAllOutgoingChangesWithError:&v17];
    v8 = v17;

    if (v7)
    {
      v9 = [v3 loggingIdentifier];
      v10 = KCSharingLogObject();

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Triggering syncs for private and shared databases after staging changes", buf, 2u);
      }

      if (sub_10004DE94())
      {
        [v3 makeStagedOutgoingDatabaseChangesAsPendingSyncEngineChanges];
      }

      else
      {
        v15 = [v3 privateSyncEngine];
        [v15 setHasPendingModifications];

        v16 = [v3 sharedSyncEngine];
        [v16 setHasPendingModifications];
      }
    }

    else
    {
      [v3 isLockedError:v8];
      v13 = [v3 loggingIdentifier];
      v14 = KCSharingLogObject();

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v8;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to stage outgoing changes: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = [0 loggingIdentifier];
    v12 = KCSharingLogObject();

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to Strongigy self", buf, 2u);
    }

    v8 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:&off_100365640];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100077868(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100077888(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!sub_10001078C() || ([WeakRetained privateSyncEngine], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, objc_msgSend(WeakRetained, "sharedSyncEngine"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
    {
      v6 = [WeakRetained loggingIdentifier];
      v7 = KCSharingLogObject();

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing KCSharing maintenance now", buf, 2u);
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100078098;
      v10[3] = &unk_1003386E8;
      v10[4] = WeakRetained;
      v11 = *(a1 + 32);
      [WeakRetained saveAllOutgoingChangesWithCompletion:v10];
    }

    else
    {
      v8 = [WeakRetained loggingIdentifier];
      v9 = KCSharingLogObject();

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Don't have sync engines in perform maintenance", buf, 2u);
      }

      objc_initWeak(buf, WeakRetained);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100077EB8;
      v12[3] = &unk_100337E48;
      objc_copyWeak(&v14, buf);
      v13 = *(a1 + 32);
      [WeakRetained resetReinitCKSyncEnginesOperationWithDelay:1 withCompletion:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }
}

void sub_100077AD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_100077AEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v27 = NSLocalizedDescriptionKey;
    v28 = @"Failed to storify self";
    v3 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v4 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v3];

    (*(*(a1 + 40) + 16))();
  }

  v5 = objc_loadWeakRetained(WeakRetained + 5);
  v6 = v5;
  if (v5 && [v5 isPending])
  {
    v7 = [WeakRetained loggingIdentifier];
    v8 = KCSharingLogObject();

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not setting up maintenance: have extant operation", v24, 2u);
    }

    v9 = *(a1 + 40);
    v10 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:37 userInfo:0];
    (*(v9 + 16))(v9, v10);
    goto LABEL_8;
  }

  if (!sub_10001078C())
  {
    v19 = [WeakRetained loggingIdentifier];
    v20 = KCSharingLogObject();

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Trying to add a op for perform maintenance activity with iEO dependency", v24, 2u);
    }

    [*(a1 + 32) addNullableDependency:WeakRetained[4]];
    goto LABEL_19;
  }

  v11 = WeakRetained[4];
  v10 = v11;
  if (!v11 || ![v11 isPending] || (objc_msgSend(WeakRetained, "cloudCoreUtilities"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "haveAcquiredSession"), v12, (v13 & 1) != 0))
  {
    v14 = [WeakRetained loggingIdentifier];
    v15 = KCSharingLogObject();

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Trying to add a op for perform maintenance activity with iEO and unlock dependency", v24, 2u);
    }

    [*(a1 + 32) addNullableDependency:v10];
    v16 = *(a1 + 32);
    v17 = [WeakRetained lockStateTracker];
    v18 = [v17 unlockDependency];
    [v16 addNullableDependency:v18];

LABEL_19:
    objc_storeWeak(WeakRetained + 5, *(a1 + 32));
    [WeakRetained[2] addOperation:*(a1 + 32)];
    goto LABEL_20;
  }

  v21 = *(a1 + 40);
  v25 = NSLocalizedDescriptionKey;
  v26 = @"There might be missing Apple Account on the device";
  v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v23 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:43 userInfo:v22];
  (*(v21 + 16))(v21, v23);

LABEL_8:
LABEL_20:
}

void sub_100077EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543362;
        v11 = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failure to init sync engines with error in perform maintenance %{public}@:", &v10, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Re-running perform maintenance", &v10, 2u);
      }

      [v5 performMaintenanceWithCompletion:*(a1 + 32)];
    }
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to storify self";
    v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100078098(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isLockedError:v3])
  {
    v4 = [*(a1 + 32) loggingIdentifier];
    v5 = KCSharingLogObject();

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to complete maintenance due to lockstate, rescheduling", v6, 2u);
    }

    [*(a1 + 32) performMaintenanceWithCompletion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100078234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100078250(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v8)
  {
    v5 = *(*(a1 + 32) + 16);
LABEL_3:
    v5();
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  if (!WeakRetained)
  {
    v5 = *(v6 + 16);
    v7 = *(a1 + 32);
    goto LABEL_3;
  }

  [WeakRetained saveStagedOutgoingChangesWithCompletion:v6];
LABEL_6:
}

void sub_1000783CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) loggingIdentifier];
  v5 = KCSharingLogObject();

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to process KCSharing-relevant SecDb modifications: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processed KCSharing-relevant SecDb modifications", &v6, 2u);
  }
}

void sub_100078638(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 recordName];
  if (v6)
  {
    v7 = *(a1 + 32);
    v12 = 0;
    v8 = [v7 updateCurrentUserMetadataForKey:@"currentUserIdentifier" toValue:v6 withError:&v12];
    v9 = v12;
    if ((v8 & 1) == 0)
    {
      v10 = [*(a1 + 32) loggingIdentifier];
      v11 = KCSharingLogObject();

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to update currentUserMetadata after fetching current user identifier: %{public}@", buf, 0xCu);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000789F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) loggingIdentifier];
  v8 = KCSharingLogObject();

  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch current current identifier from CloudKit: %{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched current user identifier from CloudKit: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100078E54(uint64_t a1)
{
  v2 = [*(a1 + 32) privateSyncEngine];

  if (v2)
  {
    v3 = [*(a1 + 32) loggingIdentifier];
    v4 = KCSharingLogObject();

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Provisioning user.", buf, 2u);
    }

    if (([*(a1 + 32) isCurrentUserProvisioned] & 1) == 0)
    {
      v5 = [*(a1 + 32) loggingIdentifier];
      v6 = KCSharingLogObject();

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provisioning user's Manatee identity.", buf, 2u);
      }

      dispatch_group_enter(*(*(*(a1 + 48) + 8) + 40));
      v7 = [[CKRecordZone alloc] initWithZoneName:@"pv"];
      if (sub_10004DE94())
      {
        v8 = objc_alloc_init(NSMutableArray);
        v9 = [[CKSyncEnginePendingZoneSave alloc] initWithZone:v7];
        [v8 addObject:v9];

        v10 = [*(a1 + 32) privateSyncEngine];
        v11 = [v10 state];
        [v11 addPendingDatabaseChanges:v8];

        v12 = [*(a1 + 32) privateSyncEngine];
        v13 = [CKSyncEngineSendChangesOptions alloc];
        v14 = [CKSyncEngineSendChangesScope alloc];
        v15 = [NSSet alloc];
        v16 = [v7 zoneID];
        v43 = v16;
        v17 = [NSArray arrayWithObjects:&v43 count:1];
        v18 = [v15 initWithArray:v17];
        v19 = [v14 initWithZoneIDs:v18];
        v20 = [v13 initWithScope:v19];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100079610;
        v38[3] = &unk_100335F88;
        v38[4] = *(a1 + 32);
        v39 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
        [v12 sendChangesWithOptions:v20 completionHandler:v38];
      }

      else
      {
        v29 = [*(a1 + 32) privateSyncEngine];
        v42 = v7;
        v30 = [NSArray arrayWithObjects:&v42 count:1];
        [v29 addRecordZonesToSave:v30 recordZoneIDsToDelete:0];

        v8 = [*(a1 + 32) privateSyncEngine];
        v12 = [v7 zoneID];
        v41 = v12;
        v16 = [NSArray arrayWithObjects:&v41 count:1];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100079728;
        v36[3] = &unk_100335F88;
        v36[4] = *(a1 + 32);
        v37 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
        [v8 modifyPendingChangesInZoneIDs:v16 completionHandler:v36];
      }
    }

    if (([*(a1 + 32) isCurrentUserIdentifierAvailable] & 1) == 0)
    {
      v31 = [*(a1 + 32) loggingIdentifier];
      v32 = KCSharingLogObject();

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Fetching current user identifier.", buf, 2u);
      }

      dispatch_group_enter(*(*(*(a1 + 48) + 8) + 40));
      v33 = *(a1 + 32);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100079840;
      v34[3] = &unk_100337EC0;
      v35 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
      [v33 fetchCurrentUserIdentifierWithReply:v34];
    }
  }

  else
  {
    v21 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:35 userInfo:0];
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = *(*(*(a1 + 40) + 8) + 40);
    v44 = NSUnderlyingErrorKey;
    v45 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v26 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:33 userInfo:v25];
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }
}

uint64_t sub_1000793F4(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
LABEL_2:
    v2 = [*(a1 + 32) loggingIdentifier];
    v3 = KCSharingLogObject();

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v13 = 138543362;
      v14 = v12;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to provision user: %{public}@", &v13, 0xCu);
    }

    goto LABEL_4;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v15 = NSMultipleUnderlyingErrorsKey;
      v6 = [*(*(*(a1 + 56) + 8) + 40) copy];
      v16 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v8 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:33 userInfo:v7];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    goto LABEL_2;
  }

  v11 = [*(a1 + 32) loggingIdentifier];
  v3 = KCSharingLogObject();

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Provisioned user.", &v13, 2u);
  }

LABEL_4:

  v4 = *(*(*(a1 + 48) + 8) + 40);
  return (*(*(a1 + 40) + 16))();
}

void sub_100079610(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1[5] + 8) + 40);
    objc_sync_enter(v4);
    [*(*(a1[5] + 8) + 40) addObject:v3];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = a1[4];
    v8 = 0;
    v6 = [v5 updateCurrentUserMetadataForKey:@"pv" toValue:&__kCFBooleanTrue withError:&v8];
    v4 = v8;
    if ((v6 & 1) == 0)
    {
      v7 = *(*(a1[5] + 8) + 40);
      objc_sync_enter(v7);
      [*(*(a1[5] + 8) + 40) addObject:v4];
      objc_sync_exit(v7);
    }
  }

  dispatch_group_leave(*(*(a1[6] + 8) + 40));
}

void sub_100079728(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1[5] + 8) + 40);
    objc_sync_enter(v4);
    [*(*(a1[5] + 8) + 40) addObject:v3];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = a1[4];
    v8 = 0;
    v6 = [v5 updateCurrentUserMetadataForKey:@"pv" toValue:&__kCFBooleanTrue withError:&v8];
    v4 = v8;
    if ((v6 & 1) == 0)
    {
      v7 = *(*(a1[5] + 8) + 40);
      objc_sync_enter(v7);
      [*(*(a1[5] + 8) + 40) addObject:v4];
      objc_sync_exit(v7);
    }
  }

  dispatch_group_leave(*(*(a1[6] + 8) + 40));
}

void sub_100079840(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    objc_sync_enter(v6);
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    objc_sync_exit(v6);
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void sub_100079B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100079BC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (sub_10001078C() && ([WeakRetained privateSyncEngine], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
    {
      v4 = [WeakRetained loggingIdentifier];
      v5 = KCSharingLogObject();

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Don't have private sync engine while handling provisioning activity", buf, 2u);
      }

      objc_initWeak(buf, WeakRetained);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100079DC4;
      v11[3] = &unk_1003376C0;
      objc_copyWeak(&v13, buf);
      v12 = *(a1 + 32);
      [WeakRetained resetReinitCKSyncEnginesOperationWithDelay:1 withCompletion:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100079F0C;
      v6[3] = &unk_100334E08;
      v7 = *(a1 + 40);
      v8 = WeakRetained;
      v10 = *(a1 + 56);
      v9 = *(a1 + 32);
      [WeakRetained ensureCurrentUserProvisionedWithCompletion:v6];
    }
  }
}

void sub_100079DA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_100079DC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v8)
      {
        v9 = 138543362;
        v10 = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to init sync engines during provisioning activity with error: %{public}@", &v9, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Trying to handle provisioning activity again", &v9, 2u);
      }

      [v5 handleProvisioningActivity:*(a1 + 32) isRetry:1];
    }
  }
}

void sub_100079F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) loggingIdentifier];
  v5 = KCSharingLogObject();

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to provision current user with error=%@", &v10, 0xCu);
    }

    v6 = 3;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully provisioned current user", &v10, 2u);
    }

    v6 = 0;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v7 = *(a1 + 48);
    if ((xpc_activity_set_completion_status() & 1) == 0)
    {
      v8 = [*(a1 + 40) loggingIdentifier];
      v9 = KCSharingLogObject();

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        v11 = v6;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set completion status=%ld for provisioning activity", &v10, 0xCu);
      }
    }
  }

  [*(a1 + 40) unregisterProvisioningActivity];
  if (v3)
  {
    [*(a1 + 40) handleProvisioningActivity:*(a1 + 48) isRetry:1];
  }
}

void sub_10007A494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007A4BC(id *a1)
{
  v2 = os_transaction_create();
  v3 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A5A0;
  block[3] = &unk_100343EC8;
  v6 = v2;
  v4 = v2;
  objc_copyWeak(&v8, a1 + 6);
  v7 = a1[5];
  dispatch_async(v3, block);

  objc_destroyWeak(&v8);
}

void sub_10007A5A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained privateSyncEngine];
    if (v4 && ([v3 sharedSyncEngine], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
    {
      v6 = [v3 loggingIdentifier];
      v7 = KCSharingLogObject();

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting preflight", buf, 2u);
      }

      cf = 0;
      if (!sub_100089548(dword_10039E2F8, &cf))
      {
        v8 = [v3 loggingIdentifier];
        v9 = KCSharingLogObject();

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v49 = cf;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to acquire AKS lock assertion: %@", buf, 0xCu);
        }

        v10 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v10);
        }
      }

      v11 = [v3 loggingIdentifier];
      v12 = KCSharingLogObject();

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Merging pending incoming changes during preflight", buf, 2u);
      }

      v13 = [v3 store];
      v43 = 0;
      v14 = [v13 mergeWithError:&v43];
      v15 = v43;

      v16 = [v3 loggingIdentifier];
      v17 = KCSharingLogObject();

      if (v14)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Checking for pending outgoing changes during preflight", buf, 2u);
        }

        if (sub_10004DE94())
        {
          [v3 makeStagedOutgoingDatabaseChangesAsPendingSyncEngineChanges];
        }

        else
        {
          v24 = [v3 store];
          v25 = [v3 privateSyncEngine];
          v26 = [v25 database];
          v27 = [v24 hasOutgoingChangesInDatabaseWithScope:{objc_msgSend(v26, "databaseScope")}];

          if (v27)
          {
            v28 = [v3 privateSyncEngine];
            [v28 setHasPendingModifications];
          }

          v29 = [v3 store];
          v30 = [v3 sharedSyncEngine];
          v31 = [v30 database];
          v32 = [v29 hasOutgoingChangesInDatabaseWithScope:{objc_msgSend(v31, "databaseScope")}];

          if (v32)
          {
            v33 = [v3 sharedSyncEngine];
            [v33 setHasPendingModifications];
          }
        }

        v34 = [v3 isCurrentUserProvisioned];
        v35 = [v3 loggingIdentifier];
        v36 = KCSharingLogObject();

        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          if (v37)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Not registering provisioning activity; user already provisioned", buf, 2u);
          }
        }

        else
        {
          if (v37)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Registering provisioning activity", buf, 2u);
          }

          [v3 registerProvisioningActivity];
        }

        if (!sub_100089710(dword_10039E2F8, &cf))
        {
          v38 = [v3 loggingIdentifier];
          v39 = KCSharingLogObject();

          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = cf;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to drop AKS lock assertion: %@", buf, 0xCu);
          }

          v40 = cf;
          if (cf)
          {
            cf = 0;
            CFRelease(v40);
          }
        }

        v41 = [v3 loggingIdentifier];
        v42 = KCSharingLogObject();

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Preflight complete", buf, 2u);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v49 = v15;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Preflight error during merge: %@", buf, 0xCu);
        }

        v20 = [v3 isLockedError:v15];
        v21 = [v3 loggingIdentifier];
        v22 = KCSharingLogObject();

        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v23)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rescheduling preflight for next unlock", buf, 2u);
          }

          [v3 preflightWithCompletion:*(a1 + 40) delay:0];
        }

        else
        {
          if (v23)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rescheduling preflight with delay", buf, 2u);
          }

          [v3 preflightWithCompletion:*(a1 + 40) delay:1];
        }
      }
    }

    else
    {
      v18 = [v3 loggingIdentifier];
      v19 = KCSharingLogObject();

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Deferring preflight because engines aren't loaded", buf, 2u);
      }

      if (sub_10001078C())
      {
        objc_initWeak(buf, v3);
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10007AD84;
        v45[3] = &unk_100337E48;
        objc_copyWeak(&v47, buf);
        v46 = *(a1 + 40);
        [v3 resetReinitCKSyncEnginesOperationWithDelay:1 withCompletion:v45];

        objc_destroyWeak(&v47);
        objc_destroyWeak(buf);
      }

      else
      {
        [v3 preflightWithCompletion:*(a1 + 40) delay:0];
      }
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10007AD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007AD84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = [WeakRetained loggingIdentifier];
      v7 = KCSharingLogObject();

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543362;
        v11 = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "erroring while reinit sync engines in preflight with error: %{public}@", &v10, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      [WeakRetained preflightWithCompletion:*(a1 + 32) delay:0];
    }
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to storify self";
    v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10007B074(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained deviceDidLock];
    v4 = *(a1 + 32);
    if (v4)
    {
      [v4 cancelOperationsWithCompletionHandler:&stru_100334DB8];
      v5 = [*(a1 + 32) database];
      v6 = [v5 databaseScope];

      if (v6 == 3)
      {
        v3[9] = 1;
      }

      else if (v6 == 2)
      {
        v3[8] = 1;
      }

      else
      {
        v7 = [v3 loggingIdentifier];
        v8 = KCSharingLogObject();

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [*(a1 + 32) database];
          v10 = 134217984;
          v11 = [v9 databaseScope];
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Very unusual database scope: %ld", &v10, 0xCu);
        }
      }
    }
  }
}

void sub_10007B43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007B458(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to reinitialise sync engines after device lock/unlock pattern with error: %{public}@", &v8, 0xCu);
    }
  }
}

void sub_10007B6FC(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007B7F0;
  v3[3] = &unk_100337E48;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 acquireCloudCoreSessionWithContainerID:@"com.apple.security.shared.keychain" applicationID:@"com.apple.security.kcsharing" encryptionService:@"com.apple.security.keychain.shared" completion:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_10007B7D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10007B7F0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007B97C;
    v9[3] = &unk_100343D18;
    v10 = v3;
    v11 = v5;
    v12 = *(a1 + 32);
    dispatch_sync(v6, v9);

    v7 = v10;
  }

  else
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = @"Failed to storify self";
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10007B97C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) loggingIdentifier];
  v4 = KCSharingLogObject();

  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = 138543362;
      v22 = v20;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Got session acquisition error: %{public}@", &v21, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = *(*(a1 + 48) + 16);
LABEL_5:
    v6();
    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trying reinit sync engines after acquiring a session", &v21, 2u);
  }

  v7 = [*(a1 + 40) privateSyncEngine];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 40) sharedSyncEngine];

    if (v9)
    {
      v10 = [*(a1 + 40) loggingIdentifier];
      v11 = KCSharingLogObject();

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not reinitializing sync engines, they are already available, so returning early", &v21, 2u);
      }

      v6 = *(*(a1 + 48) + 16);
      goto LABEL_5;
    }
  }

  [*(a1 + 40) CKSyncEnginesInitOperationWithDelay:0 withCompletion:*(a1 + 48)];
  v12 = *(*(a1 + 40) + 32);
  v13 = v12;
  if (!v12)
  {
    v15 = *(a1 + 40);
LABEL_20:
    v18 = [v15 loggingIdentifier];
    v19 = KCSharingLogObject();

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Not Adding CKSyncEngines init op to queue", &v21, 2u);
    }

    goto LABEL_23;
  }

  v14 = [v12 isPending];
  v15 = *(a1 + 40);
  if (!v14 || (v15[65] & 1) != 0)
  {
    goto LABEL_20;
  }

  v16 = [v15 loggingIdentifier];
  v17 = KCSharingLogObject();

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Adding CKSyncEngines init op to queue", &v21, 2u);
  }

  [*(*(a1 + 40) + 16) addOperation:v13];
  *(*(a1 + 40) + 65) = 1;
LABEL_23:
}

void sub_10007C1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007C1DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007C33C;
    block[3] = &unk_1003445C0;
    objc_copyWeak(&v9, &location);
    v8 = *(a1 + 32);
    dispatch_sync(v3, block);

    v4 = [WeakRetained reinitSyncEnginesCompletionBlock];

    if (v4)
    {
      v5 = [WeakRetained queue];
      v6 = [WeakRetained reinitSyncEnginesCompletionBlock];
      dispatch_sync(v5, v6);
    }

    [WeakRetained setReinitSyncEnginesCompletionBlock:0];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void sub_10007C33C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained privateSyncEngine];
    if (v4 && (v5 = v4, [v3 sharedSyncEngine], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      v7 = [v3 loggingIdentifier];
      v8 = KCSharingLogObject();

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not reinitializing sync engines, they are already instantiated", buf, 2u);
      }

      (*(*(a1 + 32) + 16))();
    }

    else if (sub_10001078C())
    {
      v9 = [v3 cloudCoreUtilities];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10007C5A8;
      v14[3] = &unk_100334D98;
      v14[4] = v3;
      v15 = *(a1 + 32);
      [v9 withCKDatabases:v14];
    }

    else
    {
      v12 = [v3 privateCloudDB];
      v13 = [v3 sharedCloudDB];
      [v3 initSyncEnginesWithPrivateDB:v12 sharedDB:v13 withCompletion:*(a1 + 32)];
    }
  }

  else
  {
    v17 = NSLocalizedDescriptionKey;
    v18 = @"Failed to storgify self";
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v10];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10007C5A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 loggingIdentifier];
    v10 = KCSharingLogObject();

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "error while requesting to init Sync Engines: %{public}@", &v11, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [v8 initSyncEnginesWithPrivateDB:a2 sharedDB:a3 withCompletion:*(a1 + 40)];
  }
}

void sub_10007D394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007D3BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained loggingIdentifier];
    v5 = KCSharingLogObject();

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting for CloudCore Session acquisition", buf, 2u);
    }

    objc_initWeak(buf, v3);
    v6 = [v3 cloudCoreUtilities];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [v3 cloudCoreTestingDelegate];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007D568;
    v11[3] = &unk_100337E48;
    objc_copyWeak(&v13, buf);
    v12 = *(a1 + 56);
    [v6 acquireCKDatabasesFromAuthenticatedSessionWithContainerIdentifier:v7 applicationOverrideIdentifier:v8 encryptionServiceIdentifier:v9 forTestingDelegate:v10 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void sub_10007D544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007D568(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Replying to a session acquisition request", v12, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [0 loggingIdentifier];
    v9 = KCSharingLogObject();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Lost self reference", v12, 2u);
    }

    v13 = NSLocalizedDescriptionKey;
    v14 = @"Lost self reference after sesssion acquisition call";
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:39 userInfo:v10];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10007E154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007E18C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007E3B4;
    block[3] = &unk_100346018;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void sub_10007E228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007E2C4;
    block[3] = &unk_100346018;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void sub_10007E2C4(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedSyncEngine];

  v3 = [*(a1 + 32) loggingIdentifier];
  v4 = KCSharingLogObject();

  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received shared DB push while engine is online, ignoring", v6, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received shared DB push while engine was offline, making note of this.", buf, 2u);
    }

    *(*(a1 + 32) + 9) = 1;
  }
}

void sub_10007E3B4(uint64_t a1)
{
  v2 = [*(a1 + 32) privateSyncEngine];

  v3 = [*(a1 + 32) loggingIdentifier];
  v4 = KCSharingLogObject();

  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKNotificationListener received private DB push while engine is online, ignoring", v6, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKNotificationListener received private DB push while engine was offline, making note of this.", buf, 2u);
    }

    *(*(a1 + 32) + 8) = 1;
  }
}

void sub_10007E9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007EA04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543362;
        v9 = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to init CK sync engines in the init with error: %{public}@", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully setup SyncEngines Init operation", &v8, 2u);
    }
  }
}

void sub_10007EB30(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [WeakRetained loggingIdentifier];
    v7 = KCSharingLogObject();

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to init CK sync engines in the initial init with error: %{public}@", &v8, 0xCu);
    }
  }
}

void sub_10007EE54(id a1)
{
  qword_10039DC10 = objc_alloc_init(KCSharingSyncController);

  _objc_release_x1();
}

uint64_t start()
{
  zone = malloc_create_zone(0, 0);
  malloc_set_zone_name(zone, "ICU");
  LODWORD(cf[0]) = 0;
  u_setMemoryFunctions();
  [NSError _setFileNameLocalizationEnabled:0];
  if (!sub_100089A14())
  {
    goto LABEL_11;
  }

  if (qword_10039DD70 != -1)
  {
    dispatch_once(&qword_10039DD70, &stru_100335EA0);
  }

  if (byte_10039DD68)
  {
    goto LABEL_11;
  }

  if (qword_10039DD60 != -1)
  {
    dispatch_once(&qword_10039DD60, &stru_100335E60);
  }

  if (byte_10039DD5C == 1)
  {
    v1 = sub_100006274("keychain_handle");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "using system keychain handle", &buf, 2u);
    }

    dword_10039E2F8 = -6;
  }

  else
  {
LABEL_11:
    v2 = sub_100006274("keychain_handle");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "using normal handle", &buf, 2u);
    }
  }

  if (qword_10039DD70 != -1)
  {
    dispatch_once(&qword_10039DD70, &stru_100335EA0);
  }

  if (byte_10039DD68 == 1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = -67585;
    v3 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.security.KeychainDBMover"];
    v4 = sub_100006274("SecKeychainMoveUserDb");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "moverCxn: %@", &buf, 0xCu);
    }

    v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KeychainDBMoverProtocol];
    [v3 setRemoteObjectInterface:v5];

    [v3 resume];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v29 = sub_10008455C;
    v30 = &unk_100335480;
    v31 = &v22;
    v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&buf];
    cf[0] = _NSConcreteStackBlock;
    cf[1] = 3221225472;
    cf[2] = sub_100084630;
    cf[3] = &unk_100335480;
    cf[4] = &v22;
    [v6 moveUserDbWithReply:cf];

    [v3 invalidate];
    v7 = sub_100006274("SecKeychainMoveUserDb");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v23 + 6);
      *v26 = 67109120;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "returning %d", v26, 8u);
    }

    _Block_object_dispose(&v22, 8);
  }

  signal(15, 1);
  global_queue = dispatch_get_global_queue(25, 0);
  qword_10039DC18 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, global_queue);
  dispatch_source_set_event_handler(qword_10039DC18, &stru_100335048);
  dispatch_activate(qword_10039DC18);
  byte_10039DF08 = 1;
  byte_10039E058 = 1;
  byte_10039DEC0 = 1;
  if (qword_10039DBE0 != -1)
  {
    dispatch_once(&qword_10039DBE0, &stru_100334B68);
  }

  if (qword_10039DCC8 != -1)
  {
    dispatch_once(&qword_10039DCC8, &stru_100335840);
  }

  byte_10039DD30 = 1;
  gSecurityd = &off_10039B478;
  qword_10039B728 = sub_10002E3E8;
  qword_10039B738 = [[LocalSecuritydXPCServer alloc] initWithSecurityClient:SecSecurityClientGet() fakeEntitlements:&__NSDictionary0__struct];
  qword_10039B730 = sub_100005D7C;
  cf[0] = 0;
  if (!sub_100008A70(0, 1, 0, cf, &stru_100333B40) || cf[0])
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = cf[0];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Couldn't bring up keychain: %@", &buf, 0xCu);
    }

    v11 = cf[0];
    if (cf[0])
    {
      cf[0] = 0;
      CFRelease(v11);
    }
  }

  v12 = +[SecdWatchdog watchdog];
  mach_service = xpc_connection_create_mach_service("com.apple.securityd", 0, 1uLL);
  if (!mach_service)
  {
    v20 = sub_100006274("SecCritical");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "com.apple.securityd";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "security failed to register xpc listener for %s, exiting", &buf, 0xCu);
    }

    abort();
  }

  v14 = mach_service;
  xpc_connection_set_event_handler(mach_service, &stru_100335088);
  xpc_connection_resume(v14);
  xpc_activity_register("com.apple.securityd.daily", XPC_ACTIVITY_CHECK_IN, &stru_100335188);
  xpc_activity_register("com.apple.securityd.entropyhealth", XPC_ACTIVITY_CHECK_IN, &stru_1003351C8);
  xpc_activity_register("com.apple.securityd.prng", XPC_ACTIVITY_CHECK_IN, &stru_100335208);
  xpc_activity_register("com.apple.securityd.kcsharing.resync", XPC_ACTIVITY_CHECK_IN, &stru_100335248);
  if (qword_10039DC48 != -1)
  {
    dispatch_once(&qword_10039DC48, &stru_1003354A0);
  }

  if (qword_10039E4C8 != -1)
  {
    dispatch_once(&qword_10039E4C8, &stru_1003476A0);
  }

  if (qword_10039DE68 != -1)
  {
    dispatch_once(&qword_10039DE68, &stru_100337070);
  }

  if (qword_10039E060 != -1)
  {
    dispatch_once(&qword_10039E060, &stru_100339738);
  }

  if (qword_10039DE30 != -1)
  {
    dispatch_once(&qword_10039DE30, &stru_100336C48);
  }

  v15 = sub_100006274("keychainitemupgrade");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "performing KeychainItemUpgradeRequestServerInitialize", &buf, 2u);
  }

  v16 = +[KeychainItemUpgradeRequestServer server];
  v17 = [v16 controller];
  [v17 triggerKeychainItemUpdateRPC:&stru_100343678];

  v18 = +[KCSharingXPCListenerDelegate sharedInstance];
  CFRunLoopRun();
  return 0;
}

void sub_10007F6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007F714(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    v2 = KCSharingLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting resync", buf, 2u);
    }

    if (objc_opt_class() && atomic_load_explicit(dword_10039DDE8, memory_order_acquire) < 2)
    {
      v3 = +[KCSharingSyncController sharedInstance];
      [v3 resyncFromRPC:0 completion:&stru_100334C28];
    }

    else
    {
      v3 = KCSharingLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "KCSharing is disabled, KCSharing won't request resync", v4, 2u);
      }
    }
  }
}

void sub_10007F834(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    v2 = open("/dev/random", 1);
    if (v2 == -1)
    {
      v5 = sub_100006274("SecError");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v7 = *__error();
      *buf = 67109120;
      LODWORD(v9) = v7;
      v6 = "failed to open /dev/random (%d)";
    }

    else
    {
      v3 = aks_ref_key_create();
      if (!v3)
      {
        aks_ref_key_get_public_key();
        ccec_cp_256();
        cczp_bitlen();
LABEL_9:
        if ((v2 & 0x80000000) == 0)
        {
          close(v2);
        }

        return;
      }

      v4 = v3;
      v5 = sub_100006274("SecError");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 67109120;
      LODWORD(v9) = v4;
      v6 = "failed to create refkey (%d)";
    }

    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 8u);
    goto LABEL_9;
  }
}

void sub_10007FA98(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {

    _SecCoreAnalyticsSendKernEntropyAnalytics();
  }
}

void sub_10007FAD4(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = +[CKKSViewManager manager];
    [v3 xpc24HrNotification];

    objc_autoreleasePoolPop(v2);
    v4 = objc_autoreleasePoolPush();
    v5 = +[OTManager manager];
    [v5 xpc24HrNotification];

    objc_autoreleasePoolPop(v4);
    v6 = KCSharingLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting maintenance", buf, 2u);
    }

    if (objc_opt_class() && atomic_load_explicit(dword_10039DDE8, memory_order_acquire) < 2)
    {
      v7 = +[KCSharingSyncController sharedInstance];
      [v7 performMaintenanceWithCompletion:&stru_100334C08];
    }

    else
    {
      v7 = KCSharingLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "KCSharing is disabled, KCSharing won't perform maintenance", v8, 2u);
      }
    }
  }
}

BOOL sub_10007FC48(int a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  do
  {
    v6 = Length;
    if (!Length)
    {
      break;
    }

    v7 = write(a1, BytePtr, Length);
    Length -= v7;
    BytePtr += v7;
  }

  while (v7 > 0);
  return v6 == 0;
}

CFDataRef sub_10007FCBC(int a1, const UInt8 **a2, CFIndex *a3)
{
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v6;
  *v10.st_qspare = v6;
  v10.st_birthtimespec = v6;
  *&v10.st_size = v6;
  v10.st_mtimespec = v6;
  v10.st_ctimespec = v6;
  *&v10.st_uid = v6;
  v10.st_atimespec = v6;
  *&v10.st_dev = v6;
  if (fstat(a1, &v10) < 0)
  {
    return 0;
  }

  st_size = v10.st_size;
  *a3 = v10.st_size;
  v8 = mmap(0, st_size, 1, 1, a1, 0);
  *a2 = v8;
  if (v8 == -1)
  {
    return 0;
  }

  else
  {
    return CFDataCreateWithBytesNoCopy(0, v8, *a3, kCFAllocatorNull);
  }
}

void sub_10007FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 8) + 24;
  v7 = sub_100247260(a2, a3, a4);

  xpc_dictionary_set_BOOL(v5, "status", v7);
}

void sub_10007FDC4(void *a1, uint64_t a2)
{
  v4 = sub_1000803BC(a1, "userlabel");
  v5 = sub_100080408(a1);
  v6 = sub_1000803BC(a1, "dsid");
  if (v4 && v5)
  {
    (*(a2 + 16))(a2, v4, v5, v6);
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  CFRelease(v4);
LABEL_6:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_10007FE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = sub_10024848C(a2, a3, 0, (*(*(a1 + 32) + 8) + 24));

  xpc_dictionary_set_BOOL(v3, "status", v4);
}

void sub_10007FEE0(void *a1, uint64_t a2)
{
  v4 = sub_1000803BC(a1, "userlabel");
  v5 = sub_100080408(a1);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    (*(a2 + 16))(a2, v4, v5);
    goto LABEL_11;
  }

  if (v4)
  {
LABEL_11:
    CFRelease(v4);
    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    return;
  }

LABEL_8:

  CFRelease(v6);
}

void sub_10007FF84(uint64_t a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4)
{
  v4 = *(a1 + 40);
  v5 = sub_10024848C(a2, a3, a4, (*(*(a1 + 32) + 8) + 24));

  xpc_dictionary_set_BOOL(v4, "status", v5);
}

void sub_10007FFE0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 40);
  v4 = sub_10024661C(a2, a3, (*(*(a1 + 32) + 8) + 24));

  xpc_dictionary_set_int64(v3, "status", v4);
}

void sub_100080038(void *a1, uint64_t a2)
{
  v4 = sub_1000803BC(a1, "viewname");
  int64 = xpc_dictionary_get_int64(a1, "viewactioncode");
  if (v4)
  {
    (*(a2 + 16))(a2, v4, int64);

    CFRelease(v4);
  }
}

void *sub_1000800C4(void *a1, const char *a2)
{
  v9 = 0;
  value = xpc_dictionary_get_value(a1, a2);
  v3 = value;
  if (!value)
  {
    return v3;
  }

  cf = 0;
  if (xpc_get_type(value) != &_xpc_type_data)
  {
    sub_1000111B4(1, @"com.apple.security.xpc", 0, &v9, v4, @"xpcSetDER not data, got %@", v3);
LABEL_6:
    v3 = 0;
    goto LABEL_8;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v3);
  length = xpc_data_get_length(v3);
  if (sub_100088F18(kCFAllocatorDefault, &cf, &v9, bytes_ptr, &bytes_ptr[length]) != &bytes_ptr[length])
  {
    sub_1000103CC(-26275, &v9, @"trailing garbage at end of SecAccessControl data");
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_6;
  }

  v3 = cf;
LABEL_8:
  v7 = v9;
  if (v9)
  {
    v9 = 0;
    CFRelease(v7);
  }

  return v3;
}

void sub_1000801BC(void *a1, const void *a2)
{
  if (a2)
  {
    XPCObjectWithArrayOfPeerInfo = CreateXPCObjectWithArrayOfPeerInfo();
    if (XPCObjectWithArrayOfPeerInfo)
    {
      v5 = XPCObjectWithArrayOfPeerInfo;
      xpc_dictionary_set_value(a1, "status", XPCObjectWithArrayOfPeerInfo);
      xpc_release(v5);
    }

    CFRelease(a2);
  }
}

void sub_100080234(void *a1, const void *a2)
{
  if (a2)
  {
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(a1, "status", v4);
    xpc_release(v4);

    CFRelease(a2);
  }
}

CFDataRef sub_1000802A4(void *a1)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "data", &length);
  if (!data || (result = CFDataCreate(0, data, length)) == 0)
  {
    SOSCreateError();
    return 0;
  }

  return result;
}

uint64_t sub_100080324(void *a1, CFTypeRef *a2)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "peer-info", &length);
  sub_100087E9C(data != 0, a2, @"No data for key %s", "peer-info");
  if (data)
  {
    return SOSPeerInfoCreateFromDER();
  }

  else
  {
    return 0;
  }
}

const char *sub_1000803BC(void *a1, const char *a2)
{
  result = xpc_dictionary_get_string(a1, a2);
  if (result)
  {

    return CFStringCreateWithCString(kCFAllocatorDefault, result, 0x8000100u);
  }

  return result;
}

const UInt8 *sub_100080408(void *a1)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, "password", &length);
  if (result)
  {
    return CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, result, length, kCFAllocatorNull);
  }

  return result;
}

void sub_100080460(id a1)
{
  v1 = sub_100006274("signal");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM, exiting when clean ✌️", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100080700(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = *(a1 + 32);
  v21 = 0;
  v4 = [v3 fetchValueForMetadataKey:@"fixUpOne" error:&v21];
  v5 = v21;
  if (v5)
  {
    v6 = KCSharingLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543619;
      v23 = @"fixUpOne";
      v24 = 2113;
      v25 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Received error while fetching value for key: %{public}@ with error: %{private}@", buf, 0x16u);
    }

    v7 = *(*(a1 + 40) + 16);
LABEL_9:
    v7();
    goto LABEL_10;
  }

  v8 = KCSharingLogObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v9)
    {
      *buf = 138543362;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Looks like we have already performed FixUpOne, Status: %{public}@", buf, 0xCu);
    }

    v7 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Trying to run fixup one for fixing passkeys", buf, 2u);
  }

  v19 = 0;
  v20 = 1;
  v10 = [*(a1 + 32) reprocessMirrorEntriesForEntryType:&v20 UsingFixUpPlan:1 WithError:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = *(a1 + 32);
    v18 = 0;
    v13 = [v12 setValue:@"FixUpOnePerformed" forMetadataKey:@"fixUpOne" error:&v18];
    v14 = v18;
    v15 = KCSharingLogObject();
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = @"fixUpOne";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updated FixUpOne Metadata for key: %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = @"fixUpOne";
      v24 = 2114;
      v25 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to store FixUpOne Metadata for key: %{public}@ with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = KCSharingLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v23 = v11;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Got an error while performing fixup one with error: %{private}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

LABEL_10:
}

void sub_100080BB0(id a1)
{
  qword_10039DC28 = objc_alloc_init(KCSharingFixUpManager);

  _objc_release_x1();
}

void sub_100080BEC(id a1)
{
  v1 = MKBUserTypeDeviceMode();
  value = 0;
  if (v1)
  {
    v2 = v1;
    if (CFDictionaryGetValueIfPresent(v1, kMKBDeviceModeKey, &value))
    {
      if (CFEqual(value, kMKBDeviceModeMultiUser))
      {
        byte_10039DC38 = 1;
      }
    }

    CFRelease(v2);
  }
}

uint64_t sub_100080C6C(uint64_t a1, CFTypeRef cf1)
{
  result = CFEqual(cf1, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_1000816BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000816E0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = sqlite3_wal_checkpoint_v2(*(a2 + 64), 0, 1, 0, 0);

  return sub_10001C958(a2, v4, (v3 + 24), @"wal_checkpoint(FULL)");
}

void sub_1000819B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100081EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100081F40(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(*(a1 + 40) + 8);
  cf = 0;
  v10 = 0xAAAAAAAA00000000;
  v7 = *(a1 + 48);
  v8 = a2;
  v4 = v7;
  *(v7 + 104) = -1;
  sub_1000079A0(kSecAttrTombstone, kCFBooleanFalse, v4);
  v5 = sub_10000A574(sub_10017A320, &v7, (v3 + 24));
  if (v5)
  {
    *(v2 + 24) = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_100082334(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = CKXPCSuitableError();
  (*(v2 + 16))(v2, v3, v4);
}

void sub_10008273C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = CKXPCSuitableError();
  (*(v2 + 16))(v2, v3, v4);
}

void sub_1000827B8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = sub_100006274("ckkscurrent");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CKKS didn't find a PCS Identity for (%@): %@", &v13, 0x16u);
    }

    v8 = *(a1[5] + 16);
  }

  else
  {
    v8 = *(a1[5] + 16);
  }

  v8();
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    v11 = a1[6];
    v12 = v11[3];
    if (v12)
    {
      v11[3] = 0;
      CFRelease(v12);
      v11 = a1[6];
    }

    free(v11);
  }
}

void sub_100082CE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = CKXPCSuitableError();
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100082D5C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = sub_100006274("ckkscurrent");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CKKS didn't find a current item for (%@): %@", &v13, 0x16u);
    }

    v8 = *(a1[5] + 16);
  }

  else
  {
    v8 = *(a1[5] + 16);
  }

  v8();
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    v11 = a1[6];
    v12 = v11[3];
    if (v12)
    {
      v11[3] = 0;
      CFRelease(v12);
      v11 = a1[6];
    }

    free(v11);
  }
}

void sub_10008326C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = CKXPCSuitableError();
  (*(v4 + 16))(v4, v6, v5, v7);
}

void sub_1000832FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100006274("ckkscurrent");
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = [v5 uuid];
      *buf = 138413058;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CKKS didn't find a current item for (%@,%@): %@ %@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
    if (qword_10039E108 != -1)
    {
      dispatch_once(&qword_10039E108, &stru_1003420B8);
    }

    if (byte_10039E100 == 1)
    {
      v18 = *(a1 + 64);
      v19 = v18[3];
      if (v19)
      {
        v18[3] = 0;
        CFRelease(v19);
        v18 = *(a1 + 64);
      }

      free(v18);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = [v5 uuid];
      *buf = 138412802;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "CKKS believes current item UUID for (%@,%@) is %@. Looking up persistent ref...", buf, 0x20u);
    }

    v9 = *(a1 + 48);
    v10 = [v5 uuid];
    v11 = [NSString stringWithFormat:@"%@, %@", *(a1 + 32), *(a1 + 40)];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000835D4;
    v23[3] = &unk_100335328;
    v12 = *(a1 + 64);
    v25 = *(a1 + 56);
    v13 = v5;
    v14 = *(a1 + 64);
    v24 = v13;
    v26 = v14;
    [v9 findItemPersistentRefByUUID:v10 extraLoggingString:v11 client:v12 complete:v23];
  }
}

void sub_1000835D4(void *a1, void *a2, void *a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = a3;
  v8 = a2;
  v9 = [v6 modificationDate];
  (*(v5 + 16))(v5, v8, v9, v7);

  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    v10 = a1[6];
    v11 = v10[3];
    if (v11)
    {
      v10[3] = 0;
      CFRelease(v11);
      v10 = a1[6];
    }

    free(v10);
  }
}

void sub_1000839B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CKXPCSuitableError();
  (*(v1 + 16))(v1, v2);
}

void sub_100083DD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CKXPCSuitableError();
  (*(v1 + 16))(v1, v2);
}

void sub_100084460(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = CKXPCSuitableError();
  (*(v4 + 16))(v4, v6, v5, v7);
}

id sub_1000844F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = CKXPCSuitableError();
  [v4 callCallback:a2 error:v5];

  v6 = *(a1 + 40);

  return [v6 setTransaction:0];
}

void sub_10008455C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100006274("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecKeychainMoveUserDb: remote object failed with error: %@", &v5, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 code];
}

void sub_100084630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecKeychainMoveUserDb: replied with error: %@", &v6, 0xCu);
    }

    LODWORD(v3) = [v4 code];
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}