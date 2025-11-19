@interface MIBUCryptoHelper
+ (id)_deriveDeviceIDsForUseCase:(id)a3 outError:(id *)a4;
+ (id)_deriveDeviceKeyWithLabel:(id)a3 andContext:(id)a4 outError:(id *)a5;
+ (id)deriveDeviceIDsForBTAdvertisement:(id *)a3;
+ (id)deriveDeviceIDsForBTConnection:(id *)a3;
+ (id)deriveDeviceIDsForBTWake:(id *)a3;
+ (id)deriveDeviceIDsFromDeviceKey:(id)a3 forUseCase:(id)a4 withTimestamp:(unint64_t)a5 outError:(id *)a6;
+ (id)deriveDeviceKeyForSeaship:(id *)a3;
+ (void)createSignatureUsingSUCertForData:(id)a3 withCompletion:(id)a4;
@end

@implementation MIBUCryptoHelper

+ (id)deriveDeviceKeyForSeaship:(id *)a3
{
  v4 = MGCopyAnswer();
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005CAFC();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deriving Device Key for Seaship...", v8, 2u);
  }

  v6 = [MIBUCryptoHelper _deriveDeviceKeyWithLabel:v4 andContext:@"seaship" outError:a3];

  return v6;
}

+ (id)deriveDeviceIDsForBTWake:(id *)a3
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005CB10();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deriving Device IDs for BT wake...", v7, 2u);
  }

  v5 = [MIBUCryptoHelper _deriveDeviceIDsForUseCase:@"Adv" outError:a3];

  return v5;
}

+ (id)deriveDeviceIDsForBTAdvertisement:(id *)a3
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005CB24();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deriving Device IDs for BT advertisement...", v7, 2u);
  }

  v5 = [MIBUCryptoHelper _deriveDeviceIDsForUseCase:@"Resp" outError:a3];

  return v5;
}

+ (id)deriveDeviceIDsForBTConnection:(id *)a3
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005CB38();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deriving Device IDs for BT connection...", v7, 2u);
  }

  v5 = [MIBUCryptoHelper _deriveDeviceIDsForUseCase:@"LTK" outError:a3];

  return v5;
}

+ (void)createSignatureUsingSUCertForData:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_10002AD8C;
  v56 = sub_10002AD9C;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_10002AD8C;
  v50 = sub_10002AD9C;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10002AD8C;
  v44 = sub_10002AD9C;
  v45 = 0;
  error = 0;
  if (os_variant_has_internal_content())
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005CB74();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v59 = v5;
      v8 = "Creating data signature using SU cert for blob: %{public}@";
      v9 = v7;
      v10 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005CB4C();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Creating data signature using SU cert...";
      v9 = v11;
      v10 = 2;
      goto LABEL_10;
    }
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10002AE74;
  v38[3] = &unk_10009B4E8;
  v38[4] = &v52;
  v38[5] = &v46;
  v38[6] = &v40;
  [MIBUCertHelper readSUIdentityWithCompletion:v38];
  v17 = (v41 + 5);
  v16 = v41[5];
  if (v16)
  {
    v37 = 0;
    sub_100016130(&v37, 50331654, v16, @"Failed to load SU certificate", v12, v13, v14, v15, v34);
    v33 = v37;
    v29 = 0;
  }

  else
  {
    v18 = v47[5];
    obj = 0;
    v19 = [MIBUCertHelper suCertKeyFromData:v18 isSEPKey:1 error:&obj];
    objc_storeStrong(v17, obj);
    v24 = v41[5];
    if (v24)
    {
      v35 = 0;
      sub_100016130(&v35, 50331654, v24, @"Failed to load SU private key", v20, v21, v22, v23, v34);
      v33 = v35;
      v29 = 0;
    }

    else
    {
      v29 = SecKeyCreateSignature(v19, kSecKeyAlgorithmECDSASignatureDigestX962SHA256, v5, &error);
      v30 = error;
      if (error)
      {
        sub_100016130(&v34, 50331654, error, @"Failed to create signature on data", v25, v26, v27, v28, 0);
        v33 = v34;
      }

      else
      {
        if (os_variant_has_internal_content())
        {
          if (qword_1000B84A8[0] != -1)
          {
            sub_10005CB9C();
          }

          v31 = qword_1000B84A0;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [(__CFData *)v29 hexStringRepresentation];
            *buf = 138543362;
            v59 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Data signature created: %{public}@", buf, 0xCu);
          }
        }

        v33 = 0;
      }
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  v6[2](v6, v53[5], v29, v33);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
}

+ (id)_deriveDeviceIDsForUseCase:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = +[NSDate date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v18 = 0;
  v9 = [MIBUCryptoHelper deriveDeviceKeyForSeaship:&v18];
  v14 = v18;
  if (v9)
  {
    v15 = [MIBUCryptoHelper deriveDeviceIDsFromDeviceKey:v9 forUseCase:v5 withTimestamp:v8 outError:a4];
  }

  else
  {
    sub_100016130(a4, 50331653, v14, @"Failed to derive Seaship Device Key", v10, v11, v12, v13, v17);
    v15 = 0;
  }

  return v15;
}

+ (id)deriveDeviceIDsFromDeviceKey:(id)a3 forUseCase:(id)a4 withTimestamp:(unint64_t)a5 outError:(id *)a6
{
  v6 = a5;
  v35 = a3;
  v32 = a4;
  v34 = [v32 dataUsingEncoding:4];
  v8 = objc_alloc_init(NSMutableArray);
  v9 = 0;
  v44[0] = v6 - 0x2000;
  v44[1] = v6;
  v44[2] = v6 + 0x2000;
  v10.i32[1] = 0;
  v33 = v8;
  while (1)
  {
    v10.i32[0] = v44[v9];
    v11 = *&vand_s8(v10, 4294961834) & 0xFFFFE001;
    v44[v9] = v11;
    v12 = [[NSMutableData alloc] initWithLength:10];
    v37 = v11;
    v13 = [@"Seaship" dataUsingEncoding:4];
    v14 = [v13 mutableCopy];

    [v14 appendBytes:&v37 length:4];
    ccsha256_di();
    [v35 length];
    [v35 bytes];
    [v14 length];
    [v14 bytes];
    [v34 length];
    [v34 bytes];
    [v12 length];
    v30 = [v12 mutableBytes];
    v15 = cchkdf();
    if (v15)
    {
      break;
    }

    v20 = [v12 copy];
    v21 = v33;
    [v33 addObject:v20];

    if (os_variant_has_internal_content())
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005CBC4();
      }

      v22 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [v12 hexStringRepresentation];
        *buf = 138543874;
        v39 = v24;
        v40 = 2114;
        v41 = v32;
        v42 = 1024;
        v43 = v37;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Device ID derived: %{public}@ use case: %{public}@ timestamp: %u", buf, 0x1Cu);
      }
    }

    if (++v9 == 3)
    {
      v25 = 0;
      v26 = a6;
      if (!a6)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v36 = 0;
  sub_100016130(&v36, 50331653, 0, @"Failed to derive Device ID: %d", v16, v17, v18, v19, v15);
  v25 = v36;

  v26 = a6;
  v21 = v33;
  if (a6)
  {
LABEL_10:
    v27 = v25;
    *v26 = v25;
  }

LABEL_11:
  if (v25)
  {
    v28 = 0;
  }

  else
  {
    v28 = [v21 copy];
  }

  return v28;
}

+ (id)_deriveDeviceKeyWithLabel:(id)a3 andContext:(id)a4 outError:(id *)a5
{
  v7 = a4;
  v8 = [a3 dataUsingEncoding:4];
  v9 = [v7 dataUsingEncoding:4];

  v10 = [[NSMutableData alloc] initWithLength:32];
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v11 = [MIBUCertHelper pandoraCertsData:&v48];
  v12 = v48;
  if (v12)
  {
    goto LABEL_25;
  }

  v13 = [v11 bytes];
  v14 = [v11 length];
  v15 = sub_100069AB8(15, 1, 0, 0, v13, v14, &v50, &v49, v37, v39, v41, v43, v45, v46, v47, v48, v49, v50, buf, *(&buf + 1), v52, v53, v54, v55, v56, v57);
  if (v15)
  {
    v47 = 0;
    sub_100016130(&v47, 50331652, 0, @"Failed to compute ECDH shared secret: %d", v16, v17, v18, v19, v15);
    v12 = v47;
LABEL_25:
    v34 = v12;
    v30 = 0;
    goto LABEL_17;
  }

  v44 = v10;
  if (os_variant_has_internal_content())
  {
    v20 = [NSData alloc];
    v21 = [v20 initWithBytes:v50 length:v49];
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009CBB8);
    }

    v22 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v21 hexStringRepresentation];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Shared secret computed: %{public}@", &buf, 0xCu);
    }
  }

  ccsha256_di();
  [v8 length];
  v42 = v8;
  [v8 bytes];
  [v9 length];
  v40 = v9;
  [v9 bytes];
  v10 = v44;
  [v44 length];
  v38 = [v44 mutableBytes];
  v25 = ccnistkdf_ctr_hmac();
  if (v25)
  {
    v46 = 0;
    sub_100016130(&v46, 50331652, 0, @"Failed to derive Seaship Device Key: %d", v26, v27, v28, v29, v25);
    v34 = v46;
    v30 = 0;
  }

  else
  {
    v30 = [v44 copy];
    if (os_variant_has_internal_content())
    {
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009CBD8);
      }

      v31 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
        v33 = [v30 hexStringRepresentation];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Device key derived: %{public}@", &buf, 0xCu);
      }

      v34 = 0;
      v9 = v40;
      v8 = v42;
    }

    else
    {
      v34 = 0;
    }
  }

LABEL_17:
  if (v50)
  {
    free(v50);
  }

  if (a5)
  {
    v35 = v34;
    *a5 = v34;
  }

  return v30;
}

@end