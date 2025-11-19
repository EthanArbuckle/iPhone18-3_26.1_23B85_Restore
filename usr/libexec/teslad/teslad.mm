void sub_10000128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000013FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(DEPLogObjects() + 8);
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = 138543362;
    v15 = v6;
    v9 = "Error retrieving mid: %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(v14) = 0;
    v9 = "Successfully retrieved mid";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
LABEL_7:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v8);
  }
}

void *sub_10000150C(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100025A08)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10000164C;
    v5[4] = &unk_10001C670;
    v5[5] = v5;
    v6 = off_10001C658;
    v7 = 0;
    qword_100025A08 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_100025A08;
    if (qword_100025A08)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_100025A08;
LABEL_5:
  result = dlsym(v2, "MAECopyActivationRecordWithError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100025A00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000164C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100025A08 = result;
  return result;
}

Class sub_1000016C0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100025A18)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001804;
    v4[4] = &unk_10001C670;
    v4[5] = v4;
    v5 = off_10001C690;
    v6 = 0;
    qword_100025A18 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100025A18)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AKAnisetteProvisioningController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000F960();
  }

  qword_100025A10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001804(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100025A18 = result;
  return result;
}

void sub_100001F18(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(a1 + 40);
  DeviceIdentityIssueClientCertificateWithCompletion();
}

void sub_100001FB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [v8 description];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error while retrieving client certificates: %{public}@", &v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, a2, v7, 0);
    }
  }
}

void sub_100003EAC(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceType];
  byte_100025A20 = [v1 isEqualToString:@"iPad"];
}

void sub_100003F90(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceType];
  byte_100025A30 = [v1 isEqualToString:@"AppleTV"];
}

void sub_100004074(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceType];
  byte_100025A40 = [v1 isEqualToString:@"Watch"];
}

void sub_100004158(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceType];
  byte_100025A50 = [v1 isEqualToString:@"AudioAccessory"];
}

void sub_10000423C(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceType];
  byte_100025A60 = [v1 isEqualToString:@"iPhone"];
}

void sub_1000042D8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v1) = [v2 BOOLValue];
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  byte_100025A70 = v1;

  _objc_release_x1();
}

void sub_1000044D8(id a1)
{
  qword_100025A80 = [[NSDictionary alloc] initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];

  _objc_release_x1();
}

void sub_100007834(uint64_t a1)
{
  v13[0] = @"PROFILE_NOT_ACTIVE";
  v2 = [*(a1 + 32) profileNotActiveError];
  v14[0] = v2;
  v13[1] = @"PROFILE_NOT_FOUND";
  v3 = [*(a1 + 32) profileNotFoundError];
  v14[1] = v3;
  v13[2] = @"DEVICE_NOT_FOUND";
  v4 = [*(a1 + 32) deviceNotFoundError];
  v14[2] = v4;
  v13[3] = @"DEVICE_NOT_ENROLLED";
  v5 = [*(a1 + 32) deviceNotEnrolledError];
  v14[3] = v5;
  v13[4] = @"NONCE_EXPIRED";
  v6 = [*(a1 + 32) nonceExpiredError];
  v14[4] = v6;
  v13[5] = @"INVALID_SIGNATURE";
  v7 = [*(a1 + 32) invalidSignatureError];
  v14[5] = v7;
  v13[6] = @"INVALID_DEVICE";
  v8 = [*(a1 + 32) invalidDeviceError];
  v14[6] = v8;
  v13[7] = @"INVALID_PROFILE";
  v9 = [*(a1 + 32) invalidProfileError];
  v14[7] = v9;
  v13[8] = @"CANNOT_ENROLL";
  v10 = [*(a1 + 32) deviceAlreadyEnrolledError];
  v14[8] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:9];
  v12 = qword_100025A98;
  qword_100025A98 = v11;
}

void sub_100008348(uint64_t a1)
{
  v2 = [*(a1 + 32) idleTimer];
  [v2 invalidate];

  v3 = [NSTimer alloc];
  v4 = [NSDate dateWithTimeIntervalSinceNow:300.0];
  v5 = [v3 initWithFireDate:v4 interval:*(a1 + 32) target:"idleTimerDidFire:" selector:0 userInfo:0 repeats:0.0];
  [*(a1 + 32) setIdleTimer:v5];

  v7 = +[NSRunLoop mainRunLoop];
  v6 = [*(a1 + 32) idleTimer];
  [v7 addTimer:v6 forMode:NSRunLoopCommonModes];
}

void sub_1000092A8(id a1)
{
  v1 = +[CCDDeviceUtilities deviceType];
  v2 = +[CCDDeviceUtilities productName];
  v3 = +[CCDDeviceUtilities productBuildVersion];
  v4 = +[CCDDeviceUtilities productBuildVersion];
  v16 = v1;
  v21[0] = v1;
  v21[1] = v2;
  v21[2] = v3;
  v21[3] = v4;
  v5 = [NSArray arrayWithObjects:v21 count:4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (v11)
        {
          if ([v8 length])
          {
            [v8 appendFormat:@"; %@", v11];
          }

          else
          {
            v12 = [v11 mutableCopy];

            v8 = v12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 length])
  {
    v13 = [NSString stringWithFormat:@" (%@)", v8];
  }

  else
  {
    v13 = &stru_10001DC98;
  }

  v14 = [NSString stringWithFormat:@"ConfigClient/1.0%@", v13];
  v15 = qword_100025AA0;
  qword_100025AA0 = v14;
}

void sub_1000095C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && ([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v10 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve the client certificate: %{public}@.", &v11, 0xCu);
    }

    [*(a1 + 32) setCertificateRetrievalFailed:1];
    [*(a1 + 32) _retryCertificateRetrievalIfAllowedAfterDelayOrFailWithError:v9];
  }

  else
  {
    [*(a1 + 32) _completeOperationWithReferenceKey:v7 certificates:v8 error:v9];
  }
}

void sub_10000A0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000A130(void *a1)
{
  v2 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Done retrieving mid", v7, 2u);
  }

  [*(*(a1[5] + 8) + 40) lock];
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v3 = *(*(a1[7] + 8) + 24);
    v4 = *(*(a1[8] + 8) + 40);
    v5 = *(*(a1[9] + 8) + 40);
    (*(a1[4] + 16))();
  }

  else
  {
    *(*(a1[10] + 8) + 24) = 1;
  }

  return [*(*(a1[5] + 8) + 40) unlock];
}

void sub_10000A210(void *a1, char a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  v10 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Done retrieving cloud configuration", v11, 2u);
  }

  [*(*(a1[5] + 8) + 40) lock];
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    (*(a1[4] + 16))();
  }

  else
  {
    *(*(a1[7] + 8) + 24) = a2;
    objc_storeStrong((*(a1[8] + 8) + 40), a3);
    objc_storeStrong((*(a1[9] + 8) + 40), a4);
    *(*(a1[10] + 8) + 24) = 1;
  }

  [*(*(a1[5] + 8) + 40) unlock];
}

void sub_10000ABD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) setPrivateKey:a2];
    [*(a1 + 32) setClientCertificates:v8];
    v7 = [*(a1 + 40) _operationForEnrollmentRequest:*(a1 + 32)];
    [v7 setEnrollmentCompletionBlock:*(a1 + 48)];
    [*(a1 + 40) _addOperationToQueue:v7];
  }
}

void sub_10000CA64(id a1)
{
  v165[0] = @"org";
  v164[0] = &__kCFBooleanTrue;
  v163[0] = @"isRequired";
  v163[1] = @"keyInfo";
  v161[0] = @"name";
  v159[0] = @"isRequired";
  v159[1] = @"validationType";
  v160[0] = &__kCFBooleanTrue;
  v160[1] = &off_10001EE08;
  v159[2] = @"destinationKey";
  v160[2] = @"OrganizationName";
  v56 = [NSDictionary dictionaryWithObjects:v160 forKeys:v159 count:3];
  v162[0] = v56;
  v161[1] = @"address";
  v157[0] = @"isRequired";
  v157[1] = @"validationType";
  v158[0] = &__kCFBooleanFalse;
  v158[1] = &off_10001EE08;
  v157[2] = @"destinationKey";
  v158[2] = @"OrganizationAddress";
  v55 = [NSDictionary dictionaryWithObjects:v158 forKeys:v157 count:3];
  v162[1] = v55;
  v161[2] = @"address-line-1";
  v155[0] = @"isRequired";
  v155[1] = @"validationType";
  v156[0] = &__kCFBooleanFalse;
  v156[1] = &off_10001EE08;
  v155[2] = @"destinationKey";
  v156[2] = @"OrganizationAddressLine1";
  v54 = [NSDictionary dictionaryWithObjects:v156 forKeys:v155 count:3];
  v162[2] = v54;
  v161[3] = @"address-line-2";
  v153[0] = @"isRequired";
  v153[1] = @"validationType";
  v154[0] = &__kCFBooleanFalse;
  v154[1] = &off_10001EE08;
  v153[2] = @"destinationKey";
  v154[2] = @"OrganizationAddressLine2";
  v53 = [NSDictionary dictionaryWithObjects:v154 forKeys:v153 count:3];
  v162[3] = v53;
  v161[4] = @"address-line-3";
  v151[0] = @"isRequired";
  v151[1] = @"validationType";
  v152[0] = &__kCFBooleanFalse;
  v152[1] = &off_10001EE08;
  v151[2] = @"destinationKey";
  v152[2] = @"OrganizationAddressLine3";
  v52 = [NSDictionary dictionaryWithObjects:v152 forKeys:v151 count:3];
  v162[4] = v52;
  v161[5] = @"city";
  v149[0] = @"isRequired";
  v149[1] = @"validationType";
  v150[0] = &__kCFBooleanFalse;
  v150[1] = &off_10001EE08;
  v149[2] = @"destinationKey";
  v150[2] = @"OrganizationCity";
  v51 = [NSDictionary dictionaryWithObjects:v150 forKeys:v149 count:3];
  v162[5] = v51;
  v161[6] = @"region";
  v147[0] = @"isRequired";
  v147[1] = @"validationType";
  v148[0] = &__kCFBooleanFalse;
  v148[1] = &off_10001EE08;
  v147[2] = @"destinationKey";
  v148[2] = @"OrganizationRegion";
  v50 = [NSDictionary dictionaryWithObjects:v148 forKeys:v147 count:3];
  v162[6] = v50;
  v161[7] = @"zip-code";
  v145[0] = @"isRequired";
  v145[1] = @"validationType";
  v146[0] = &__kCFBooleanFalse;
  v146[1] = &off_10001EE08;
  v145[2] = @"destinationKey";
  v146[2] = @"OrganizationZipCode";
  v49 = [NSDictionary dictionaryWithObjects:v146 forKeys:v145 count:3];
  v162[7] = v49;
  v161[8] = @"country";
  v143[0] = @"isRequired";
  v143[1] = @"validationType";
  v144[0] = &__kCFBooleanFalse;
  v144[1] = &off_10001EE08;
  v143[2] = @"destinationKey";
  v144[2] = @"OrganizationCountry";
  v48 = [NSDictionary dictionaryWithObjects:v144 forKeys:v143 count:3];
  v162[8] = v48;
  v161[9] = @"phone";
  v141[0] = @"isRequired";
  v141[1] = @"validationType";
  v142[0] = &__kCFBooleanFalse;
  v142[1] = &off_10001EE08;
  v141[2] = @"destinationKey";
  v142[2] = @"OrganizationPhone";
  v47 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:3];
  v162[9] = v47;
  v161[10] = @"magic";
  v139[0] = @"isRequired";
  v139[1] = @"validationType";
  v140[0] = &__kCFBooleanFalse;
  v140[1] = &off_10001EE08;
  v139[2] = @"destinationKey";
  v140[2] = @"OrganizationMagic";
  v46 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:3];
  v162[10] = v46;
  v161[11] = @"email";
  v137[0] = @"isRequired";
  v137[1] = @"validationType";
  v138[0] = &__kCFBooleanFalse;
  v138[1] = &off_10001EE08;
  v137[2] = @"destinationKey";
  v138[2] = @"OrganizationEmail";
  v45 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:3];
  v162[11] = v45;
  v161[12] = @"department";
  v135[0] = @"isRequired";
  v135[1] = @"validationType";
  v136[0] = &__kCFBooleanFalse;
  v136[1] = &off_10001EE08;
  v135[2] = @"destinationKey";
  v136[2] = @"OrganizationDepartment";
  v44 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:3];
  v162[12] = v44;
  v161[13] = @"support-phone-number";
  v133[0] = @"isRequired";
  v133[1] = @"validationType";
  v134[0] = &__kCFBooleanFalse;
  v134[1] = &off_10001EE08;
  v133[2] = @"destinationKey";
  v134[2] = @"OrganizationSupportPhone";
  v43 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:3];
  v162[13] = v43;
  v161[14] = @"support-email-address";
  v131[0] = @"isRequired";
  v131[1] = @"validationType";
  v132[0] = &__kCFBooleanFalse;
  v132[1] = &off_10001EE08;
  v131[2] = @"destinationKey";
  v132[2] = @"OrganizationSupportEmail";
  v42 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:3];
  v162[14] = v42;
  v41 = [NSDictionary dictionaryWithObjects:v162 forKeys:v161 count:15];
  v164[1] = v41;
  v40 = [NSDictionary dictionaryWithObjects:v164 forKeys:v163 count:2];
  v166[0] = v40;
  v165[1] = @"config";
  v130[0] = &__kCFBooleanFalse;
  v129[0] = @"isRequired";
  v129[1] = @"keyInfo";
  v127[0] = @"url";
  v125[0] = @"isRequired";
  v125[1] = @"validationType";
  v126[0] = &__kCFBooleanTrue;
  v126[1] = &off_10001EE20;
  v125[2] = @"destinationKey";
  v126[2] = @"ConfigurationURL";
  v39 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:3];
  v128[0] = v39;
  v127[1] = @"management-protocol-version";
  v123[0] = @"isRequired";
  v123[1] = @"validationType";
  v124[0] = &__kCFBooleanFalse;
  v124[1] = &off_10001EE38;
  v123[2] = @"destinationKey";
  v124[2] = @"MDMProtocolVersion";
  v38 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:3];
  v128[1] = v38;
  v127[2] = @"is-supervised";
  v121[0] = @"isRequired";
  v121[1] = @"validationType";
  v122[0] = &__kCFBooleanFalse;
  v122[1] = &off_10001EE50;
  v121[2] = @"destinationKey";
  v122[2] = @"IsSupervised";
  v37 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:3];
  v128[2] = v37;
  v127[3] = @"allow-pairing";
  v119[0] = @"isRequired";
  v119[1] = @"validationType";
  v120[0] = &__kCFBooleanFalse;
  v120[1] = &off_10001EE50;
  v119[2] = @"destinationKey";
  v120[2] = @"AllowPairing";
  v36 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:3];
  v128[3] = v36;
  v127[4] = @"is-mandatory";
  v117[0] = @"isRequired";
  v117[1] = @"validationType";
  v118[0] = &__kCFBooleanFalse;
  v118[1] = &off_10001EE50;
  v117[2] = @"destinationKey";
  v118[2] = @"IsMandatory";
  v35 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:3];
  v128[4] = v35;
  v127[5] = @"is-mdm-removable";
  v115[0] = @"isRequired";
  v115[1] = @"validationType";
  v116[0] = &__kCFBooleanFalse;
  v116[1] = &off_10001EE68;
  v115[2] = @"destinationKey";
  v116[2] = @"IsMDMUnremovable";
  v34 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:3];
  v128[5] = v34;
  v127[6] = @"anchor-certs";
  v113[0] = @"isRequired";
  v113[1] = @"validationType";
  v114[0] = &__kCFBooleanFalse;
  v114[1] = &off_10001EE80;
  v113[2] = @"destinationKey";
  v114[2] = @"AnchorCertificates";
  v33 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:3];
  v128[6] = v33;
  v127[7] = @"supervision-host-certs";
  v111[0] = @"isRequired";
  v111[1] = @"validationType";
  v112[0] = &__kCFBooleanFalse;
  v112[1] = &off_10001EE80;
  v111[2] = @"destinationKey";
  v112[2] = @"SupervisorHostCertificates";
  v32 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:3];
  v128[7] = v32;
  v127[8] = @"skip-buddy-items";
  v109[0] = @"isRequired";
  v109[1] = @"validationType";
  v110[0] = &__kCFBooleanFalse;
  v110[1] = &off_10001EE98;
  v109[2] = @"destinationKey";
  v110[2] = @"SkipSetup";
  v31 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];
  v128[8] = v31;
  v127[9] = @"is-multi-user";
  v107[0] = @"isRequired";
  v107[1] = @"validationType";
  v108[0] = &__kCFBooleanFalse;
  v108[1] = &off_10001EE50;
  v107[2] = @"destinationKey";
  v108[2] = @"IsMultiUser";
  v30 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:3];
  v128[9] = v30;
  v127[10] = @"is-return-to-service";
  v105[0] = @"isRequired";
  v105[1] = @"validationType";
  v106[0] = &__kCFBooleanFalse;
  v106[1] = &off_10001EE50;
  v105[2] = @"destinationKey";
  v106[2] = @"IsReturnToService";
  v29 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:3];
  v128[10] = v29;
  v127[11] = @"await-device-configured";
  v103[0] = @"isRequired";
  v103[1] = @"validationType";
  v104[0] = &__kCFBooleanFalse;
  v104[1] = &off_10001EE50;
  v103[2] = @"destinationKey";
  v104[2] = @"AwaitDeviceConfigured";
  v28 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
  v128[11] = v28;
  v127[12] = @"auto-advance-setup";
  v101[0] = @"isRequired";
  v101[1] = @"validationType";
  v102[0] = &__kCFBooleanFalse;
  v102[1] = &off_10001EE50;
  v101[2] = @"destinationKey";
  v102[2] = @"AutoAdvanceSetup";
  v27 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:3];
  v128[12] = v27;
  v127[13] = @"language";
  v99[0] = @"isRequired";
  v99[1] = @"validationType";
  v100[0] = &__kCFBooleanFalse;
  v100[1] = &off_10001EE08;
  v99[2] = @"destinationKey";
  v100[2] = @"Language";
  v26 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:3];
  v128[13] = v26;
  v127[14] = @"region";
  v97[0] = @"isRequired";
  v97[1] = @"validationType";
  v98[0] = &__kCFBooleanFalse;
  v98[1] = &off_10001EE08;
  v97[2] = @"destinationKey";
  v98[2] = @"Region";
  v25 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:3];
  v128[14] = v25;
  v127[15] = @"script";
  v95[0] = @"isRequired";
  v95[1] = @"validationType";
  v96[0] = &__kCFBooleanFalse;
  v96[1] = &off_10001EE08;
  v95[2] = @"destinationKey";
  v96[2] = @"Script";
  v24 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:3];
  v128[15] = v24;
  v127[16] = @"configuration-web-url";
  v93[0] = @"isRequired";
  v93[1] = @"validationType";
  v94[0] = &__kCFBooleanFalse;
  v94[1] = &off_10001EE08;
  v93[2] = @"destinationKey";
  v94[2] = @"ConfigurationWebURL";
  v23 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:3];
  v127[17] = @"enrollment-server";
  v92[0] = &__kCFBooleanFalse;
  v92[1] = &off_10001EEB0;
  v128[16] = v23;
  v92[2] = @"EnrollmentServer";
  v91[0] = @"isRequired";
  v91[1] = @"validationType";
  v91[2] = @"destinationKey";
  v91[3] = @"subKey";
  v89[0] = @"enrollment-url";
  v87[0] = @"isRequired";
  v87[1] = @"validationType";
  v88[0] = &__kCFBooleanTrue;
  v88[1] = &off_10001EE20;
  v87[2] = @"destinationKey";
  v88[2] = @"EnrollmentURL";
  v22 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:3];
  v90[0] = v22;
  v89[1] = @"enrollment-anchor-certificates";
  v85[0] = @"isRequired";
  v85[1] = @"validationType";
  v86[0] = &__kCFBooleanFalse;
  v86[1] = &off_10001EE80;
  v85[2] = @"destinationKey";
  v86[2] = @"EnrollmentAnchorCertificates";
  v21 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];
  v90[1] = v21;
  v89[2] = @"supported-features";
  v83[0] = @"isRequired";
  v83[1] = @"validationType";
  v84[0] = &__kCFBooleanFalse;
  v84[1] = &off_10001EEC8;
  v83[2] = @"destinationKey";
  v84[2] = @"SupportedFeatures";
  v20 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:3];
  v90[2] = v20;
  v19 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:3];
  v92[3] = v19;
  v18 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:4];
  v128[17] = v18;
  v127[18] = @"server-uid";
  v81[0] = @"isRequired";
  v81[1] = @"validationType";
  v82[0] = &__kCFBooleanFalse;
  v82[1] = &off_10001EE08;
  v81[2] = @"destinationKey";
  v82[2] = @"MDMServerUID";
  v17 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:3];
  v128[18] = v17;
  v127[19] = @"do-not-use-profile-from-backup";
  v79[0] = @"isRequired";
  v79[1] = @"validationType";
  v80[0] = &__kCFBooleanFalse;
  v80[1] = &off_10001EE50;
  v79[2] = @"destinationKey";
  v80[2] = @"IgnoreMDMFromBackup";
  v16 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:3];
  v128[19] = v16;
  v127[20] = @"has-undergone-migration";
  v77[0] = @"isRequired";
  v77[1] = @"validationType";
  v78[0] = &__kCFBooleanFalse;
  v78[1] = &off_10001EE50;
  v77[2] = @"destinationKey";
  v78[2] = @"HasUndergoneMigration";
  v15 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:3];
  v128[20] = v15;
  v14 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:21];
  v130[1] = v14;
  v13 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:2];
  v166[1] = v13;
  v165[2] = @"enrollment";
  v76[0] = &__kCFBooleanFalse;
  v75[0] = @"isRequired";
  v75[1] = @"keyInfo";
  v73 = @"expiry";
  v71[0] = @"isRequired";
  v71[1] = @"validationType";
  v72[0] = &__kCFBooleanTrue;
  v72[1] = &off_10001EE38;
  v71[2] = @"destinationKey";
  v72[2] = @"ProvisionalEnrollmentExpiry";
  v12 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:3];
  v74 = v12;
  v11 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v76[1] = v11;
  v10 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
  v166[2] = v10;
  v165[3] = @"mdm-migration";
  v70[0] = &__kCFBooleanFalse;
  v69[0] = @"isRequired";
  v69[1] = @"keyInfo";
  v67 = @"deadline";
  v65[0] = @"isRequired";
  v65[1] = @"validationType";
  v66[0] = &__kCFBooleanTrue;
  v66[1] = &off_10001EE08;
  v65[2] = @"destinationKey";
  v66[2] = @"MDMMigrationDeadline";
  v1 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:3];
  v68 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v70[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
  v166[3] = v3;
  v165[4] = @"user";
  v64[0] = &__kCFBooleanFalse;
  v63[0] = @"isRequired";
  v63[1] = @"keyInfo";
  v61[0] = @"ft_maid";
  v59[0] = @"isRequired";
  v59[1] = @"validationType";
  v60[0] = &__kCFBooleanFalse;
  v60[1] = &off_10001EE08;
  v59[2] = @"destinationKey";
  v60[2] = @"MAIDUsername";
  v4 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:3];
  v62[0] = v4;
  v61[1] = @"ft_token";
  v57[0] = @"isRequired";
  v57[1] = @"validationType";
  v58[0] = &__kCFBooleanFalse;
  v58[1] = &off_10001EEE0;
  v57[2] = @"destinationKey";
  v58[2] = @"MAIDHasCredential";
  v5 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];
  v62[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
  v64[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
  v166[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v166 forKeys:v165 count:5];
  v9 = qword_100025AB0;
  qword_100025AB0 = v8;
}

uint64_t start()
{
  v0 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "service starting...", buf, 2u);
  }

  v1 = objc_alloc_init(CCDServer);
  v2 = objc_opt_new();
  [v2 setServer:v1];
  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:kCCServiceName];
  [v4 setDelegate:v2];
  v5 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "awaiting connections...", v9, 2u);
  }

  [v4 resume];
  CFRunLoopRun();
  [v4 invalidate];
  v6 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "service stopping.", v8, 2u);
  }

  return 0;
}

uint64_t sub_10000F93C()
{
  dlerror();
  v0 = abort_report_np();
  return sub_10000F960(v0);
}