@interface MISProfileModel
- (BOOL)isProfileInstalled:(id)a3;
- (BOOL)queryCMSBlobForProfile:(id)a3 forcingXML:(BOOL)a4 handler:(id)a5;
- (MISProfileModel)initWithDB:(id)a3;
- (id)getCertPrimaryKey:(id)a3;
- (int)insertProfile:(void *)a3;
- (int)insertSigningIdentities:(id)a3 withProfileUUID:(id)a4;
- (void)queryProfile:(id)a3;
@end

@implementation MISProfileModel

- (MISProfileModel)initWithDB:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MISProfileModel;
  v5 = [(MISProfileModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weak_db, v4);
    v7 = v6;
  }

  return v6;
}

- (BOOL)queryCMSBlobForProfile:(id)a3 forcingXML:(BOOL)a4 handler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  if (v8)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000089C8;
    v20[3] = &unk_10005D880;
    v21 = v8;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100008A38;
    v17[3] = &unk_10005DD08;
    v19 = &v22;
    v18 = v9;
    v11 = [WeakRetained executeQuery:@"SELECT cms_blob FROM xml_profiles_cache WHERE uuid = @uuid" withBind:v20 withResults:v17];
    v12 = *(v23 + 24);
    v13 = v11 == 0;

    _Block_object_dispose(&v22, 8);
    if ((v12 & 1) == 0)
    {
LABEL_4:
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100008A58;
      v15[3] = &unk_10005D880;
      v16 = v8;
      v13 = [WeakRetained executeQuery:@"SELECT cms_blob FROM profiles WHERE uuid = @uuid" withBind:v15 withResults:v9] == 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)queryProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100008BAC;
    v7[3] = &unk_10005D8A8;
    v7[4] = &v8;
    [(MISProfileModel *)self queryCMSBlobForProfile:v4 forcingXML:0 handler:v7];
    v5 = v9[3];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isProfileInstalled:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008DB0;
    v11[3] = &unk_10005D880;
    v12 = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008E20;
    v8[3] = &unk_10005DD30;
    v10 = &v13;
    v9 = v12;
    [WeakRetained executeQuery:@"SELECT uuid FROM profiles WHERE uuid = @uuid" withBind:v11 withResults:v8];
    v6 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (int)insertSigningIdentities:(id)a3 withProfileUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = SecCertificateCreateWithData(0, *(*(&v24 + 1) + 8 * i));
        if (v15)
        {
          v16 = v15;
          v17 = SecCertificateCopySubjectSummary(v15);
          CFRelease(v16);
          if (v17)
          {
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_10000917C;
            v21[3] = &unk_10005D8D0;
            v22 = v7;
            v17 = v17;
            v23 = v17;
            v18 = [WeakRetained executeQuery:@"INSERT OR IGNORE INTO signing_identities VALUES (NULL withBind:@uuid withResults:{@signing_identity)", v21, 0}];

            if (v18)
            {

              goto LABEL_19;
            }
          }

          else
          {
            v19 = sub_100006750();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v29 = v7;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't get signing identity for %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v17 = sub_100006750();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v7;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Couldn't create SecCertificate for %@", buf, 0xCu);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v12);
    v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  objc_autoreleasePoolPop(v8);
  return v18;
}

- (int)insertProfile:(void *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  v35 = MISProvisioningProfileGetUUID();
  v33 = MISProvisioningProfileGetName();
  v30 = MISProvisioningProfileGetDeveloperCertificatesHashes(a3);
  v29 = MISXMLProvisioningProfileGetDeveloperCertificates();
  v32 = MISProvisioningProfileGetTeamIdentifier();
  v31 = MISProvisioningProfileGetExpirationDate();
  DataRepresentation = MISProfileCreateDataRepresentation();
  v28 = MISProvisioningProfileGetEntitlements(a3);
  v37 = MISProvisioningProfileGetEmbeddedDER();
  v27 = MISProvisioningProfileProvisionsAllDevices();
  v26 = MISProvisioningProfileIsForLocalProvisioning();
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [v37 length];
  if (v6)
  {
    v7 = MISProfileCreateWithData();
    if (MISProvisioningProfileValidateSignature())
    {
      v3 = 4;
    }

    else
    {
      v3 = [(MISProfileModel *)self insertProfile:v7];
      *(v68 + 6) = v3;
      if (!v3)
      {
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_10000993C;
        v64[3] = &unk_10005D8D0;
        v8 = v35;
        v65 = v8;
        v66 = DataRepresentation;
        v3 = [WeakRetained executeQuery:@"INSERT INTO xml_profiles_cache VALUES (@uuid withBind:@cms_blob)" withResults:{v64, 0}];
        *(v68 + 6) = v3;
        if (!v3)
        {
          if (!v29 || !(v27 | v26) || (v3 = [(MISProfileModel *)self insertSigningIdentities:v29 withProfileUUID:v8], (*(v68 + 6) = v3) == 0))
          {
            v3 = 0;
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);
  if (!v6)
  {
    v9 = MISProfileIsDEREncoded() != 0;
    IsAppleInternalProfile = MISProvisioningProfileIsAppleInternalProfile();
    v11 = MISProvisioningProfileIsForBetaDeployment(a3) != 0;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000099F0;
    v53[3] = &unk_10005DD58;
    v12 = v35;
    v54 = v12;
    v25 = v32;
    v55 = v25;
    v56 = v33;
    v57 = v31;
    v59 = v27 != 0;
    v60 = IsAppleInternalProfile != 0;
    v61 = v26 != 0;
    v62 = v11;
    v58 = DataRepresentation;
    v63 = v9;
    v3 = [WeakRetained executeQuery:@"INSERT INTO profiles VALUES (@uuid withBind:@team_id withResults:{NULL, @name, @expires, @is_for_all_devices, @is_apple_internal, @is_local, @is_beta, @cms_blob, @is_der)", v53, 0}];
    *(v68 + 6) = v3;
    if (!v3)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v13 = v30;
      v14 = [v13 countByEnumeratingWithState:&v49 objects:v71 count:16];
      if (v14)
      {
        v15 = *v50;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v50 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [(MISProfileModel *)self getCertPrimaryKey:*(*(&v49 + 1) + 8 * i), v25];
            if (!v17)
            {
              v3 = 1;
              goto LABEL_31;
            }

            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_100009BE0;
            v46[3] = &unk_10005D8D0;
            v47 = v12;
            v18 = v17;
            v48 = v18;
            v3 = [WeakRetained executeQuery:@"INSERT INTO certificate_provisioning_cache VALUES (NULL withBind:@uuid withResults:{@leaf_pk)", v46, 0}];
            *(v68 + 6) = v3;

            if (v3)
            {
              goto LABEL_31;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v49 objects:v71 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v19 = [WeakRetained Entitlements];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100009C7C;
      v42[3] = &unk_10005DD80;
      v45 = &v67;
      v20 = WeakRetained;
      v43 = v20;
      v21 = v12;
      v44 = v21;
      [v19 emitEntitlementPredicates:v28 predicateHandler:v42];

      v22 = MISProvisioningProfileGetTeamName();
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100009D10;
      v39[3] = &unk_10005D8D0;
      v40 = v25;
      v23 = v22;
      v41 = v23;
      v3 = [v20 executeQuery:@"INSERT INTO team_id_info VALUES (@team_id withBind:@team_name) ON CONFLICT DO NOTHING" withResults:{v39, 0}];
      *(v68 + 6) = v3;
      if (!v3)
      {
        if (!v29 || !(v27 | v26) || (v3 = [(MISProfileModel *)self insertSigningIdentities:v29 withProfileUUID:v21], (*(v68 + 6) = v3) == 0))
        {
          v3 = 0;
        }
      }

      v13 = v43;
LABEL_31:
    }
  }

  _Block_object_dispose(&v67, 8);

  return v3;
}

- (id)getCertPrimaryKey:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100009FC0;
  v18 = sub_100009FD0;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009FD8;
  v12[3] = &unk_10005D880;
  v6 = v4;
  v13 = v6;
  if ([WeakRetained executeQuery:@"INSERT OR IGNORE INTO certificates VALUES (NULL withBind:@cert)" withResults:{v12, 0}])
  {
    v7 = 0;
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000A054;
    v10[3] = &unk_10005D880;
    v11 = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000A0D0;
    v9[3] = &unk_10005D8A8;
    v9[4] = &v14;
    if ([WeakRetained executeQuery:@"SELECT pk FROM certificates WHERE leaf = @cert" withBind:v10 withResults:v9])
    {
      v7 = 0;
    }

    else
    {
      v7 = v15[5];
    }
  }

  _Block_object_dispose(&v14, 8);

  return v7;
}

@end