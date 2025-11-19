@interface SEABAAManager
+ (id)sharedManager;
- (id)PerformSEABAAWithAttestation:(id)a3 casdCertificate:(id)a4 nonce:(id)a5 OIDs:(id)a6 validityInterval:(id)a7 error:(id *)a8;
@end

@implementation SEABAAManager

+ (id)sharedManager
{
  if (qword_10050CC00 != -1)
  {
    sub_1003AAA84();
  }

  v3 = qword_10050CBF8;

  return v3;
}

- (id)PerformSEABAAWithAttestation:(id)a3 casdCertificate:(id)a4 nonce:(id)a5 OIDs:(id)a6 validityInterval:(id)a7 error:(id *)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a3;
  v18 = SESDefaultLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "", buf, 2u);
  }

  v58 = v17;
  sub_10002D244(SESSignatureFixer, &v58);
  v19 = v58;

  *buf = 0;
  v53 = buf;
  v54 = 0x3032000000;
  v55 = sub_100012BE8;
  v56 = sub_100012BF8;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100012BE8;
  v50 = sub_100012BF8;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100012BE8;
  v44 = sub_100012BF8;
  v45 = objc_opt_new();
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100012C00;
  v35[3] = &unk_1004C12F0;
  v37 = &v40;
  v38 = &v46;
  v39 = buf;
  v20 = dispatch_semaphore_create(0);
  v36 = v20;
  sub_1003A9E28(self, v19, v13, v14, v15, v16, v35);
  v21 = dispatch_time(0, 279000000000);
  if (dispatch_semaphore_wait(v20, v21))
  {
    v22 = v41[5];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100012E30;
    v34[3] = &unk_1004C1318;
    v34[4] = &v46;
    [v22 invoke:v34];
  }

  if (v47[5] && SESInternalVariant())
  {
    v23 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    if ([v23 BOOLForKey:@"debug.allow.cert.failure"])
    {
      v24 = [@"DEAD" hexStringAsData];
      v25 = [@"DEAD" hexStringAsData];
      v26 = sub_100012D98(SEABAAResponse, v24, v25);
      v27 = *(v53 + 5);
      *(v53 + 5) = v26;

      v28 = v47[5];
      v47[5] = 0;
    }
  }

  v29 = *(v53 + 5);
  if (a8 && !v29)
  {
    v30 = v47[5];
    *a8 = SESEnsureError();
    v29 = *(v53 + 5);
  }

  v31 = v29;

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(buf, 8);

  return v31;
}

@end