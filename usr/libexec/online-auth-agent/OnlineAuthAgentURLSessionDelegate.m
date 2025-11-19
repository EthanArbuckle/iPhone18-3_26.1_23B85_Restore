@interface OnlineAuthAgentURLSessionDelegate
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation OnlineAuthAgentURLSessionDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!sub_100003F60() || (v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mis"], v11 = objc_msgSend(v10, "BOOLForKey:", @"disableServerPinning"), v10, !v11))
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100007494;
    v29[3] = &unk_10005DC28;
    v29[4] = &v30;
    v29[5] = &v34;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000074F4;
    v26[3] = &unk_10005DC50;
    v12 = objc_retainBlock(v29);
    v27 = v12;
    v13 = v9;
    v28 = v13;
    v14 = objc_retainBlock(v26);
    v15 = [v8 protectionSpace];
    v16 = [v15 serverTrust];

    if (!v16)
    {
      v22 = sub_100006750();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100040C60();
      }

      (v14[2])(v14);
      goto LABEL_30;
    }

    CertificateCount = SecTrustGetCertificateCount(v16);
    v18 = [[NSMutableArray alloc] initWithCapacity:CertificateCount];
    if (CertificateCount)
    {
      for (i = 0; i != CertificateCount; ++i)
      {
        [v18 addObject:{SecTrustGetCertificateAtIndex(v16, i)}];
      }
    }

    ApplePPQService = SecPolicyCreateApplePPQService();
    v35[3] = ApplePPQService;
    if (ApplePPQService)
    {
      if (SecTrustCreateWithCertificates(v18, ApplePPQService, v31 + 3))
      {
        v21 = sub_100006750();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100040A80();
        }
      }

      else
      {
        v23 = v31[3];
        if (v23)
        {
          result = kSecTrustResultDeny;
          if (SecTrustEvaluate(v23, &result))
          {
            v24 = sub_100006750();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_100040AF4();
            }
          }

          else
          {
            if (result == kSecTrustResultProceed || result == kSecTrustResultUnspecified)
            {
              (v12[2])(v12);
              (*(v13 + 2))(v13, 1, 0);
              goto LABEL_29;
            }

            v24 = sub_100006750();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_100040B68(&result);
            }
          }

          (v14[2])(v14);
LABEL_29:

LABEL_30:
          _Block_object_dispose(&v30, 8);
          _Block_object_dispose(&v34, 8);
          goto LABEL_31;
        }

        v21 = sub_100006750();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100040BE0();
        }
      }
    }

    else
    {
      v21 = sub_100006750();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100040C20();
      }
    }

    (v14[2])(v14);
    goto LABEL_29;
  }

  (*(v9 + 2))(v9, 1, 0);
LABEL_31:
}

@end