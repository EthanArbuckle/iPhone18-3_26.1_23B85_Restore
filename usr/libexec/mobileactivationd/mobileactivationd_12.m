void __copy_helper_block_e8_32s40s48s56s64s72s80s88s96s104s112s120r128r136r144r152r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  v13 = *(a2 + 104);
  v14 = *(a2 + 112);
  _Block_object_assign((a1 + 120), *(a2 + 120), 8);
  _Block_object_assign((a1 + 128), *(a2 + 128), 8);
  _Block_object_assign((a1 + 136), *(a2 + 136), 8);
  _Block_object_assign((a1 + 144), *(a2 + 144), 8);
  v15 = *(a2 + 152);

  _Block_object_assign((a1 + 152), v15, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96s104s112s120r128r136r144r152r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 152), 8);
  _Block_object_dispose(*(a1 + 144), 8);
  _Block_object_dispose(*(a1 + 136), 8);
  _Block_object_dispose(*(a1 + 128), 8);
  _Block_object_dispose(*(a1 + 120), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56s64s72s80s88s96s104r112r120r128r136r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  _Block_object_assign((a1 + 112), *(a2 + 112), 8);
  _Block_object_assign((a1 + 120), *(a2 + 120), 8);
  _Block_object_assign((a1 + 128), *(a2 + 128), 8);
  v13 = *(a2 + 136);

  _Block_object_assign((a1 + 136), v13, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96s104r112r120r128r136r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 136), 8);
  _Block_object_dispose(*(a1 + 128), 8);
  _Block_object_dispose(*(a1 + 120), 8);
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);

  v2 = *(a1 + 32);
}

id __copy_helper_block_e8_32s40s48s56s64s72s80s88s96s(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);

  return v11;
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void collection_activity_handler(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3254779904;
      block[2] = __collection_activity_handler_block_invoke;
      block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v12 = v3;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
      v6 = copyMobileActivationSerialQueue();
      dispatch_async(v6, v5);

      v7 = v12;
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3254779904;
      v9[2] = __collection_activity_handler_block_invoke_3;
      v9[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v10 = v3;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v9);
      v8 = copyMobileActivationSerialQueue();
      dispatch_async(v8, v5);

      v7 = v10;
    }
  }

  else
  {
    maLog("collection_activity_handler", 0, @"Invalid input.");
  }
}

void __collection_activity_handler_block_invoke(uint64_t a1)
{
  data_ark_remove(*(a1 + 32), 0, @"CollectionRetryAttempt");
  v2 = *(a1 + 32);
  v3 = [@"com.apple.mobileactivationd.collection" UTF8String];

  scheduleXPCActivity(v2, v3, 0x1Eu, 1, 0x5000u, 0x1000u, &__block_literal_global_536);
}

void __collection_activity_handler_block_invoke_3(uint64_t a1)
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__5;
  v53 = __Block_byref_object_dispose__5;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__5;
  v47 = __Block_byref_object_dispose__5;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5;
  v37 = __Block_byref_object_dispose__5;
  v38 = 0;
  if (collectionAlreadyPerformed(*(a1 + 32)) || (v2 = data_ark_copy(*(a1 + 32), 0, @"ActivationState"), v3 = isNSString(v2), v4 = v50[5], v50[5] = v3, v4, v2, use_hactivation()) || is_virtual_machine() || ![v50[5] isEqualToString:@"Activated"])
  {
    v12 = 0;
    goto LABEL_9;
  }

  v5 = data_ark_copy(*(a1 + 32), 0, @"CollectionRetryAttempt");
  v6 = v44[5];
  v44[5] = v5;

  v7 = isNSNumber(v44[5]);
  v8 = v7 == 0;

  if (v8)
  {
    v11 = &off_1003FBD20;
    goto LABEL_11;
  }

  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v44[5] unsignedLongLongValue] + 1);
  v10 = v44[5];
  v44[5] = v9;

  if ([v44[5] unsignedLongLongValue] > 6)
  {
    v11 = [NSNumber numberWithUnsignedInt:?];
LABEL_11:
    v13 = v44[5];
    v44[5] = v11;
  }

  data_ark_set(*(a1 + 32), 0, @"CollectionRetryAttempt", v44[5], 1);
  [v44[5] doubleValue];
  v15 = exp2(v14);
  *(v40 + 6) = (v15 * 60.0);
  v12 = data_ark_copy(*(a1 + 32), 0, @"InFieldCollectionInFlight");
  v16 = isNSNumber(v12);
  v17 = v16 == 0;

  if (v17)
  {

    v12 = &__kCFBooleanFalse;
  }

  if ([v12 BOOLValue])
  {
    v18 = copyLoggingHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v40 + 6);
      *buf = 67109120;
      v56 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Collection request is in flight, rescheduling collection for %d seconds.", buf, 8u);
    }

    v20 = *(a1 + 32);
    v21 = [@"com.apple.mobileactivationd.collection" UTF8String];
    scheduleXPCActivity(v20, v21, *(v40 + 6), 1, 0x5000u, 0x1000u, &__block_literal_global_539);
  }

  else
  {
    v22 = copyLoggingHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Performing collection.", buf, 2u);
    }

    [@"com.apple.mobileactivationd.collection" UTF8String];
    v23 = os_transaction_create();
    v24 = v34[5];
    v34[5] = v23;

    v25 = *(a1 + 32);
    v26 = copy_current_process_name();
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3254779904;
    v27[2] = __collection_activity_handler_block_invoke_540;
    v27[3] = &__block_descriptor_72_e8_32s40r48r56r64r_e48_v40__0__NSData_8__NSDictionary_16q24__NSError_32l;
    v28 = *(a1 + 32);
    v29 = &v49;
    v30 = &v39;
    v31 = &v43;
    v32 = &v33;
    performInFieldCollection(v25, 0, v26, v27);
  }

LABEL_9:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
}

void sub_10030D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void __collection_activity_handler_block_invoke_540(uint64_t a1, id a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __collection_activity_handler_block_invoke_2_541;
  block[3] = &__block_descriptor_104_e8_32s40s48s56s64r72r80r88r_e5_v8__0l;
  v12 = *(a1 + 32);
  v26 = a4;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v9;
  v13 = *(a1 + 56);
  v24 = *(a1 + 40);
  v25 = v13;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  v18 = copyMobileActivationSerialQueue();
  dispatch_async(v18, v17);
}

void __collection_activity_handler_block_invoke_2_541(uint64_t a1)
{
  if (collectionAlreadyPerformed(*(a1 + 32)) || (v2 = data_ark_copy(*(a1 + 32), 0, @"ActivationState"), v3 = isNSString(v2), v4 = *(*(a1 + 64) + 8), v5 = *(v4 + 40), *(v4 + 40) = v3, v5, v2, ![*(*(*(a1 + 64) + 8) + 40) isEqualToString:@"Activated"]))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v6 = *(a1 + 96);
  if (v6 == 200)
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:@"X-Apple-Invalid-Reason"];
    v18 = [*(a1 + 48) objectForKeyedSubscript:@"X-Apple-Retry-After"];
    v19 = isNSString(v6);
    v60 = v18;
    if (v19)
    {

      goto LABEL_17;
    }

    v25 = isNSNumber(v18);

    if (v25)
    {
LABEL_17:
      v26 = *(a1 + 96);
      v27 = *(a1 + 40);
      v28 = [NSHTTPURLResponse localizedStringForStatusCode:v26];
      v29 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5054, @"com.apple.MobileActivation.ServerErrorDomain", v26, v27, @"Server error: %ld (%@) / %@ / %@", v26, v28, v6, v60);

      v30 = *(a1 + 96);
      v31 = [NSHTTPURLResponse localizedStringForStatusCode:v30];
      v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5054, @"com.apple.MobileActivation.ErrorDomain", -6, v29, @"Server error: %ld (%@) / %@ / %@", v30, v31, v6, v60);

      v32 = v29;
      v14 = v60;

      v17 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    if (*(a1 + 56))
    {
      v48 = +[GestaltHlpr getSharedInstance];
      v8 = [v48 copyAnswer:@"BuildVersion"];

      v49 = isNSString(v8);
      if (v49)
      {
        v12 = [[MACollectionInterface alloc] initWithContext:*(a1 + 32)];
        if (v12)
        {
          v50 = *(a1 + 56);
          v63 = 0;
          v13 = [NSJSONSerialization JSONObjectWithData:v50 options:0 error:&v63];
          v51 = v63;
          v52 = v51;
          if (v13)
          {
            v11 = [v13 objectForKeyedSubscript:@"suinfo"];
            v53 = isNSString(v11);

            if (v53)
            {
              v10 = [[NSData alloc] initWithBase64EncodedString:v11 options:1];
              if (v10)
              {
                v62 = v52;
                v54 = [(MACollectionInterface *)v12 processSUInfo:v10 withError:&v62];
                v7 = v62;

                if (v54)
                {
                  data_ark_remove(*(a1 + 32), 0, @"PCRTToken");
                  v9 = [*(a1 + 48) objectForKeyedSubscript:@"x-iservice-token"];
                  v55 = isNSString(v9);

                  if (v55)
                  {
                    data_ark_set(*(a1 + 32), 0, @"PCRTToken", v9, 1);
                  }

                  data_ark_set(*(a1 + 32), 0, @"CollectionLastPerformed", v8, 1);
                  data_ark_remove(*(a1 + 32), 0, @"CollectionRetryAttempt");
                  v56 = copyLoggingHandle();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Successfully performed collection.", buf, 2u);
                  }

                  v17 = 1;
                }

                else
                {
                  v57 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5094, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to process SUInfo: %@", v7);

                  v17 = 0;
                  v9 = 0;
                  v7 = v57;
                }
              }

              else
              {
                v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5089, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode SUInfo.");

                v17 = 0;
                v9 = 0;
              }
            }

            else
            {
              v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5083, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid SUInfo: %@", v11);

              v17 = 0;
              v9 = 0;
              v10 = 0;
            }
          }

          else
          {
            v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5077, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to deserialize JSON data: %@", v51);

            v17 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 0;
          }

LABEL_49:
          v14 = v60;
          if (!v7)
          {
            goto LABEL_25;
          }

          goto LABEL_18;
        }

        v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5071, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create collection interface.");
        v17 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_48:
        v13 = 0;
        goto LABEL_49;
      }

      v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5065, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve OS build.");
      v17 = 0;
    }

    else
    {
      v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5059, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Invalid server response.");
      v17 = 0;
      v8 = 0;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_48;
  }

  if (v6)
  {
    if (v6 == -1)
    {
      v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5040, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Internal error.");
    }

    else
    {
      v20 = *(a1 + 40);
      v21 = [NSHTTPURLResponse localizedStringForStatusCode:*(a1 + 96)];
      v22 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5046, @"com.apple.MobileActivation.ServerErrorDomain", v6, v20, @"Server error: %ld (%@)", v6, v21);

      v23 = *(a1 + 96);
      v24 = [NSHTTPURLResponse localizedStringForStatusCode:v23];
      v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5046, @"com.apple.MobileActivation.ErrorDomain", -6, v22, @"Server error: %ld (%@)", v23, v24);
    }

    v17 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v6 = 0;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = createMobileActivationError("collection_activity_handler_block_invoke_2", 5043, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Network communication error.");
    v17 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

LABEL_18:
  v58 = v17;
  v59 = v13;
  v33 = v12;
  v34 = v8;
  v35 = v6;
  v36 = v14;
  v37 = copyLoggingHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v65 = v7;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Failed to perform collection: %{public}@", buf, 0xCu);
  }

  if (*(a1 + 96))
  {
    v14 = v36;
    if ((mobileactivationErrorHasDomainAndErrorCode(v7, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFEALL) & 1) == 0)
    {
      writeSplunkLog(*(a1 + 32), 16, *(a1 + 96), "collection_activity_handler_block_invoke", 5120, 0, @"%@", v38, v7);
    }

    v6 = v35;
    v8 = v34;
    v12 = v33;
    v13 = v59;
    v17 = v58;
    if (*(a1 + 96) == 403)
    {
      *(*(*(a1 + 72) + 8) + 24) = 86400;
    }

LABEL_25:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  v14 = v36;
  v6 = v35;
  v8 = v34;
  v12 = v33;
  v13 = v59;
  if (v58)
  {
    goto LABEL_8;
  }

LABEL_28:
  v61 = v14;
  v39 = data_ark_copy(*(a1 + 32), 0, @"CollectionRetryAttempt");
  v40 = *(*(a1 + 80) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v39;

  v42 = isNSNumber(*(*(*(a1 + 80) + 8) + 40));
  if (!v42)
  {
    v43 = *(*(a1 + 80) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = &off_1003FBD20;
  }

  [*(*(*(a1 + 80) + 8) + 40) doubleValue];
  *(*(*(a1 + 72) + 8) + 24) = (exp2(v45) * 60.0);
  v46 = copyLoggingHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 67109120;
    LODWORD(v65) = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Rescheduling collection for %d seconds.", buf, 8u);
  }

  scheduleXPCActivity(*(a1 + 32), [@"com.apple.mobileactivationd.collection" UTF8String], *(*(*(a1 + 72) + 8) + 24), 1, 0x5000u, 0x1000u, &__block_literal_global_545);
  v14 = v61;
LABEL_8:
  v15 = *(*(a1 + 88) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;
}

void __copy_helper_block_e8_32s40s48s56s64r72r80r88r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  v8 = *(a2 + 88);

  _Block_object_assign((a1 + 88), v8, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64r72r80r88r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40r48r56r64r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v5 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v5, 8);
}

void __destroy_helper_block_e8_32s40r48r56r64r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);
}

void __ucrt_oob_activity_handler_block_invoke(uint64_t a1)
{
  data_ark_remove(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
  v2 = *(a1 + 32);
  v3 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];

  scheduleXPCActivity(v2, v3, 5u, 1, 0x3000u, 0x1000u, &__block_literal_global_547);
}

void __ucrt_oob_activity_handler_block_invoke_3(uint64_t a1)
{
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__5;
  v118 = __Block_byref_object_dispose__5;
  v119 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__5;
  v112 = __Block_byref_object_dispose__5;
  v113 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__5;
  v102 = __Block_byref_object_dispose__5;
  v103 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__5;
  v96 = __Block_byref_object_dispose__5;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__5;
  v90 = __Block_byref_object_dispose__5;
  v91 = &__kCFBooleanFalse;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__5;
  v84 = __Block_byref_object_dispose__5;
  v85 = &__kCFBooleanFalse;
  v79 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v2 = data_ark_copy(*(a1 + 32), 0, @"UIKUpgradeRequired");
  v3 = v81[5];
  v81[5] = v2;

  v4 = isNSNumber(v81[5]);
  v5 = v4 == 0;

  if (v5)
  {
    v6 = v81[5];
    v81[5] = &__kCFBooleanFalse;
  }

  if ([v81[5] BOOLValue])
  {
    v7 = copyUCRT(*(a1 + 32), 0);
    v8 = v7;
    if (v7)
    {
      v74 = 0;
      v9 = deleteLegacyUIKIfMismatched(v7, &v79, &v74);
      v10 = v74;
      if ((v9 & 1) == 0)
      {
        v11 = copyLoggingHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          __ucrt_oob_activity_handler_block_invoke_3_cold_1();
        }
      }

      if (v79 == 1)
      {
        maLog("ucrt_oob_activity_handler_block_invoke", 0, @"Legacy UIK purged.");
        if (certificatePublicKeyMatchesSystemPublicKey(2, 2, v8, 0))
        {
          v12 = v81[5];
          v81[5] = &__kCFBooleanFalse;

          data_ark_remove(*(a1 + 32), 0, @"UIKUpgradeRequired");
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = data_ark_copy(*(a1 + 32), 0, @"UCRTUpgradeRequired");
  v14 = v93[5];
  v93[5] = v13;

  v15 = isNSNumber(v93[5]);
  v16 = v15 == 0;

  if (v16)
  {
    v17 = v93[5];
    v93[5] = &__kCFBooleanFalse;
  }

  v18 = data_ark_copy(*(a1 + 32), 0, @"UCRTHealingRequired");
  v19 = v87[5];
  v87[5] = v18;

  v20 = isNSNumber(v87[5]);
  v21 = v20 == 0;

  if (v21)
  {
    v22 = v87[5];
    v87[5] = &__kCFBooleanFalse;
  }

  if (ucrtOOBAlreadyPerformed(*(a1 + 32)) && ([v93[5] BOOLValue] & 1) == 0 && (objc_msgSend(v87[5], "BOOLValue") & 1) == 0 && !objc_msgSend(v81[5], "BOOLValue"))
  {
    goto LABEL_28;
  }

  v23 = data_ark_copy(*(a1 + 32), 0, @"ActivationState");
  v24 = isNSString(v23);
  v25 = v115[5];
  v115[5] = v24;

  if (use_hactivation() || is_virtual_machine() || ([v115[5] isEqualToString:@"Activated"] & 1) == 0)
  {
    data_ark_remove(*(a1 + 32), 0, @"UCRTUpgradeRequired");
    data_ark_remove(*(a1 + 32), 0, @"UCRTHealingRequired");
    data_ark_remove(*(a1 + 32), 0, @"UIKUpgradeRequired");
LABEL_28:
    v33 = 0;
    v34 = 0;
LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  v26 = data_ark_copy(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
  v27 = v109[5];
  v109[5] = v26;

  v28 = isNSNumber(v109[5]);
  v29 = v28 == 0;

  if (v29)
  {
    v32 = &off_1003FBD20;
  }

  else
  {
    v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v109[5] unsignedLongLongValue] + 1);
    v31 = v109[5];
    v109[5] = v30;

    if ([v109[5] unsignedLongLongValue] <= 6)
    {
      goto LABEL_35;
    }

    v32 = [NSNumber numberWithUnsignedInt:?];
  }

  v36 = v109[5];
  v109[5] = v32;

LABEL_35:
  data_ark_set(*(a1 + 32), 0, @"UCRTOOBRetryAttempt", v109[5], 1);
  [v109[5] doubleValue];
  v38 = exp2(v37);
  *(v105 + 6) = (v38 * 60.0);
  v34 = data_ark_copy(*(a1 + 32), 0, @"UCRTIssuanceInFlight");
  v39 = isNSNumber(v34);
  v40 = v39 == 0;

  if (v40)
  {

    v34 = &__kCFBooleanFalse;
  }

  if ([v34 BOOLValue])
  {
    v41 = copyLoggingHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(v105 + 6);
      *buf = 67109120;
      v123 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "UCRT request is in flight, rescheduling UCRT OOB for %d seconds.", buf, 8u);
    }

    v43 = *(a1 + 32);
    v44 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
    v45 = &__block_literal_global_550;
LABEL_49:
    scheduleXPCActivity(v43, v44, *(v105 + 6), 1, 0x3000u, 0x1000u, v45);
    v33 = 0;
    goto LABEL_29;
  }

  if (!collectionAlreadyPerformed(*(a1 + 32)))
  {
    v51 = copyLoggingHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = *(v105 + 6);
      *buf = 67109120;
      v123 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Collection not performed yet. Rescheduling UCRT OOB for %d seconds.", buf, 8u);
    }

    v43 = *(a1 + 32);
    v44 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
    v45 = &__block_literal_global_553;
    goto LABEL_49;
  }

  v73 = 0;
  v46 = ucrtHealingSupported(&v73);
  v47 = v73;
  if (v47)
  {
    v35 = v47;
    v48 = copyLoggingHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      __ucrt_oob_activity_handler_block_invoke_3_cold_2();
    }

    v49 = *(a1 + 32);
    v50 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
    scheduleXPCActivity(v49, v50, *(v105 + 6), 1, 0x3000u, 0x1000u, &__block_literal_global_556);
    v33 = 0;
    goto LABEL_30;
  }

  if ([v87[5] BOOLValue])
  {
    if (v46)
    {
      v53 = 1;
LABEL_54:
      v54 = copyLoggingHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Performing UCRT OOB.", buf, 2u);
      }

      [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
      v55 = os_transaction_create();
      v56 = v99[5];
      v99[5] = v55;

      data_ark_set(*(a1 + 32), 0, @"UCRTIssuanceInFlight", &__kCFBooleanTrue, 0);
      v120 = @"UseCommittedUIK";
      v57 = [NSNumber numberWithInt:v53 ^ 1u];
      v121 = v57;
      v33 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];

      v58 = *(a1 + 32);
      v59 = copy_current_process_name();
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3254779904;
      v61[2] = __ucrt_oob_activity_handler_block_invoke_557;
      v61[3] = &__block_descriptor_106_e8_32s40r48r56r64r72r80r88r96r_e48_v40__0__NSData_8__NSDictionary_16q24__NSError_32l;
      v63 = &v80;
      v62 = *(a1 + 32);
      v64 = &v92;
      v65 = &v86;
      v66 = &v114;
      v71 = v53;
      v72 = v46;
      v67 = &v75;
      v68 = &v108;
      v69 = &v104;
      v70 = &v98;
      performUCRTOOB(v58, v53, v59, v33, v61);

      goto LABEL_29;
    }
  }

  else
  {
    v53 = [v81[5] BOOLValue];
    if ((v46 | v53 ^ 1))
    {
      goto LABEL_54;
    }
  }

  v60 = copyLoggingHandle();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "UCRT healing not supported.", buf, 2u);
  }

  data_ark_set(*(a1 + 32), 0, @"UCRTOOBForbidden", &__kCFBooleanTrue, 1);
  v33 = 0;
  v35 = 0;
  *(v76 + 24) = 1;
LABEL_30:
  if (v8)
  {
    CFRelease(v8);
  }

  _Block_object_dispose(&v75, 8);

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v98, 8);

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);

  _Block_object_dispose(&v114, 8);
}

void sub_10030EC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Block_object_dispose((v49 - 208), 8);
  _Block_object_dispose((v49 - 160), 8);
  _Unwind_Resume(a1);
}

void __ucrt_oob_activity_handler_block_invoke_557(uint64_t a1, id a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3254779904;
  v20[2] = __ucrt_oob_activity_handler_block_invoke_2_558;
  v20[3] = &__block_descriptor_138_e8_32s40s48s56s64r72r80r88r96r104r112r120r_e5_v8__0l;
  v12 = *(a1 + 32);
  v25 = *(a1 + 40);
  v13 = v12;
  v14 = *(a1 + 64);
  v26 = *(a1 + 48);
  v21 = v13;
  v22 = v11;
  v31 = *(a1 + 104);
  v27 = v14;
  v23 = v9;
  v24 = v10;
  v28 = *(a1 + 80);
  v29 = *(a1 + 96);
  v30 = a4;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v20);
  v19 = copyMobileActivationSerialQueue();
  dispatch_async(v19, v18);
}

void __ucrt_oob_activity_handler_block_invoke_2_558(uint64_t a1)
{
  v2 = data_ark_copy(*(a1 + 32), 0, @"UIKUpgradeRequired");
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = isNSNumber(*(*(*(a1 + 64) + 8) + 40));
  if (!v5)
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = &__kCFBooleanFalse;
  }

  v8 = data_ark_copy(*(a1 + 32), 0, @"UCRTUpgradeRequired");
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = isNSNumber(*(*(*(a1 + 72) + 8) + 40));
  if (!v11)
  {
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = &__kCFBooleanFalse;
  }

  v14 = data_ark_copy(*(a1 + 32), 0, @"UCRTHealingRequired");
  v15 = *(*(a1 + 80) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = isNSNumber(*(*(*(a1 + 80) + 8) + 40));
  if (!v17)
  {
    v18 = *(*(a1 + 80) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = &__kCFBooleanFalse;
  }

  if (ucrtOOBAlreadyPerformed(*(a1 + 32)) && ([*(*(*(a1 + 72) + 8) + 40) BOOLValue] & 1) == 0 && (objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "BOOLValue") & 1) == 0 && !objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "BOOLValue") || (v20 = data_ark_copy(*(a1 + 32), 0, @"ActivationState"), v21 = isNSString(v20), v22 = *(*(a1 + 88) + 8), v23 = *(v22 + 40), *(v22 + 40) = v21, v23, v20, !objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "isEqualToString:", @"Activated")))
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_48;
  }

  v24 = *(a1 + 128);
  if (v24 != 200)
  {
    if (!v24)
    {
      v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5398, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Network communication error.");
LABEL_39:
      v26 = 0;
      v27 = 0;
LABEL_40:
      v28 = 0;
      v29 = 0;
LABEL_41:
      v40 = 0;
      v30 = 0;
      goto LABEL_42;
    }

    if (v24 == -1)
    {
      MobileActivationError = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5395, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Internal error.");
LABEL_37:
      v31 = MobileActivationError;
      goto LABEL_38;
    }

    v41 = *(a1 + 40);
    v42 = [NSHTTPURLResponse localizedStringForStatusCode:v24];
    v43 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5401, @"com.apple.MobileActivation.ServerErrorDomain", v24, v41, @"Server error: %ld (%@)", v24, v42);

    v44 = *(a1 + 128);
    if (v44 == 403)
    {
      v45 = -5;
    }

    else
    {
      v45 = -6;
    }

    v46 = [NSHTTPURLResponse localizedStringForStatusCode:*(a1 + 128)];
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5401, @"com.apple.MobileActivation.ErrorDomain", v45, v43, @"Server error: %ld (%@)", v44, v46);

    v47 = *(a1 + 128);
    if (v47 == 500)
    {
      if (*(a1 + 136) != 1)
      {
        goto LABEL_38;
      }

      v62 = data_ark_copy(*(a1 + 32), 0, @"UCRTOOBForbiddenCount");
      v63 = isNSNumber(v62);

      if (v63)
      {
        v24 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v62 unsignedLongLongValue] + 1);
      }

      else
      {
        v24 = &off_1003FBD20;
      }

      v40 = 1;
      data_ark_set(*(a1 + 32), 0, @"UCRTOOBForbiddenCount", v24, 1);
      if ([(NSNumber *)v24 unsignedLongLongValue]< 0xB)
      {
        goto LABEL_39;
      }

      data_ark_set(*(a1 + 32), 0, @"UCRTOOBForbidden", &__kCFBooleanTrue, 1);
    }

    else
    {
      if (v47 != 403)
      {
LABEL_38:
        v24 = 0;
        goto LABEL_39;
      }

      if ((*(a1 + 136) & 1) == 0 && *(a1 + 137) == 1)
      {
        data_ark_set(*(a1 + 32), 0, @"UCRTHealingRequired", &__kCFBooleanTrue, 1);
        goto LABEL_38;
      }

      v40 = 1;
      data_ark_set(*(a1 + 32), 0, @"UCRTOOBForbidden", &__kCFBooleanTrue, 1);
      v24 = 0;
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(*(*(a1 + 96) + 8) + 24) = 1;
    goto LABEL_42;
  }

  if (!*(a1 + 48))
  {
    MobileActivationError = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5440, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 40), @"Invalid server response.");
    goto LABEL_37;
  }

  v27 = [*(a1 + 56) objectForKeyedSubscript:@"Date"];
  if (!v27)
  {
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5446, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve server response date.");
    v24 = 0;
    v26 = 0;
    goto LABEL_40;
  }

  v32 = objc_alloc_init(NSDateFormatter);
  v29 = v32;
  if (!v32)
  {
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5452, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate date formatter.");
    v24 = 0;
    v26 = 0;
    v28 = 0;
    goto LABEL_41;
  }

  v66 = 0;
  v28 = [v32 dateFromServerString:v27 withError:&v66];
  v33 = v66;
  if (!v28)
  {
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5458, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to convert date string.");

    v24 = 0;
    v26 = 0;
    goto LABEL_41;
  }

  v34 = +[GestaltHlpr getSharedInstance];
  v30 = [v34 copyAnswer:@"BuildVersion"];

  v35 = isNSString(v30);
  if (!v35)
  {
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5464, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve OS build.");

    v24 = 0;
    v26 = 0;
LABEL_73:
    v40 = 0;
    goto LABEL_42;
  }

  v26 = objc_alloc_init(NSMutableDictionary);
  if (!v26)
  {
    v31 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5470, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");

    v24 = 0;
    goto LABEL_73;
  }

  v36 = [NSNumber numberWithInt:*(a1 + 136) ^ 1u];
  [v26 setObject:v36 forKeyedSubscript:@"UseCommittedUIK"];

  [v26 setObject:v28 forKeyedSubscript:@"ServerResponseDate"];
  v37 = *(a1 + 32);
  v38 = *(a1 + 48);
  v65 = v33;
  LOBYTE(v36) = storeUCRT(v37, v38, v26, &v65);
  v31 = v65;

  if (v36)
  {
    data_ark_set(*(a1 + 32), 0, @"UCRTOOBLastPerformed", v30, 1);
    data_ark_remove(*(a1 + 32), 0, @"UCRTOOBForbiddenCount");
    data_ark_remove(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
    v39 = copyLoggingHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Successfully performed UCRT OOB.", buf, 2u);
    }

    v24 = 0;
    v40 = 1;
  }

  else
  {
    v64 = createMobileActivationError("ucrt_oob_activity_handler_block_invoke_2", 5480, @"com.apple.MobileActivation.ErrorDomain", -1, v31, @"Failed to store UCRT.");

    v24 = 0;
    v40 = 0;
    v31 = v64;
  }

  if (!v31)
  {
    goto LABEL_47;
  }

LABEL_42:
  v48 = copyLoggingHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v68 = v31;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Failed to perform UCRT OOB: %{public}@", buf, 0xCu);
  }

  if (*(a1 + 128) && (mobileactivationErrorHasDomainAndErrorCode(v31, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFEALL) & 1) == 0)
  {
    if (*(a1 + 136))
    {
      v50 = 31;
    }

    else
    {
      v50 = 15;
    }

    writeSplunkLog(*(a1 + 32), v50, *(a1 + 128), "ucrt_oob_activity_handler_block_invoke", 5500, 0, @"%@", v49, v31);
    if (v40)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_47:
    if (v40)
    {
LABEL_48:
      if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
      {
        data_ark_remove(*(a1 + 32), 0, @"UCRTUpgradeRequired");
        data_ark_remove(*(a1 + 32), 0, @"UCRTHealingRequired");
        data_ark_remove(*(a1 + 32), 0, @"UIKUpgradeRequired");
      }

      goto LABEL_59;
    }
  }

  v51 = data_ark_copy(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
  v52 = *(*(a1 + 104) + 8);
  v53 = *(v52 + 40);
  *(v52 + 40) = v51;

  v54 = isNSNumber(*(*(*(a1 + 104) + 8) + 40));
  if (!v54)
  {
    v55 = *(*(a1 + 104) + 8);
    v56 = *(v55 + 40);
    *(v55 + 40) = &off_1003FBD20;
  }

  [*(*(*(a1 + 104) + 8) + 40) doubleValue];
  *(*(*(a1 + 112) + 8) + 24) = (exp2(v57) * 60.0);
  v58 = copyLoggingHandle();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = *(*(*(a1 + 112) + 8) + 24);
    *buf = 67109120;
    LODWORD(v68) = v59;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Rescheduling UCRT OOB for %d seconds.", buf, 8u);
  }

  scheduleXPCActivity(*(a1 + 32), [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String], *(*(*(a1 + 112) + 8) + 24), 1, 0x3000u, 0x1000u, &__block_literal_global_561);
LABEL_59:
  data_ark_set(*(a1 + 32), 0, @"UCRTIssuanceInFlight", &__kCFBooleanFalse, 0);
  v60 = *(*(a1 + 120) + 8);
  v61 = *(v60 + 40);
  *(v60 + 40) = 0;
}

void __copy_helper_block_e8_32s40s48s56s64r72r80r88r96r104r112r120r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  _Block_object_assign((a1 + 112), *(a2 + 112), 8);
  v8 = *(a2 + 120);

  _Block_object_assign((a1 + 120), v8, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64r72r80r88r96r104r112r120r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 120), 8);
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40r48r56r64r72r80r88r96r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  v5 = *(a2 + 96);

  _Block_object_assign((a1 + 96), v5, 8);
}

void __destroy_helper_block_e8_32s40r48r56r64r72r80r88r96r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);
}

id copy_splunk_log_array(uint64_t a1, NSError **a2)
{
  v26 = objc_alloc_init(NSMutableArray);
  if (!v26)
  {
    MobileActivationError = createMobileActivationError("copy_splunk_log_array", 6104, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate array.");
    goto LABEL_22;
  }

  v3 = copySortedSplunkFileList();
  if (!v3)
  {
    MobileActivationError = createMobileActivationError("copy_splunk_log_array", 6110, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query splunk file list.");
LABEL_22:
    v6 = MobileActivationError;
    v18 = 0;
    v19 = 0;
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v23 = v3;
  v24 = a2;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [v3 reverseObjectEnumerator];
  v4 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v30;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [NSData alloc];
        v28 = v6;
        v11 = [v10 initWithContentsOfFile:v9 options:0 error:&v28];
        v12 = v28;

        if (v11)
        {
          [v26 addObject:v11];
        }

        else
        {
          v13 = copyLoggingHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v34 = v9;
            v35 = 2112;
            v36 = v12;
            _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Failed to load %@: %@", buf, 0x16u);
          }
        }

        v14 = +[NSFileManager defaultManager];
        v27 = v12;
        v15 = [(NSFileManager *)v14 removeItemAtPath:v9 error:&v27];
        v6 = v27;

        if ((v15 & 1) == 0)
        {
          v16 = copyLoggingHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v34 = v9;
            v35 = 2112;
            v36 = v6;
            _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Failed to delete %@: %@", buf, 0x16u);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v19 = v26;
  v18 = v23;
  a2 = v24;
  if (v24)
  {
LABEL_26:
    if (!v19)
    {
      v20 = v6;
      *a2 = v6;
    }
  }

LABEL_28:
  v21 = v19;

  return v19;
}

uint64_t perform_sydro_data_migration_tasks(void *a1, NSError **a2)
{
  v238 = a1;
  certificate = 0;
  v294 = 0;
  v293 = -1;
  if (preSydroDataMigrationCompleted(v238))
  {
    v248 = 0;
    v230 = 0;
    v233 = 0;
    cf = 0;
    v256 = 0;
    v3 = 0;
    v218 = 0;
    v219 = 0;
    v226 = 0;
    v227 = 0;
    v223 = 0;
    v224 = 0;
    v4 = 0;
    v220 = 0;
    v221 = 0;
    v225 = 0;
    v241 = 0;
    v243 = 0;
    v228 = 0;
    v229 = 0;
    v214 = 0;
    v215 = 0;
    v234 = 0;
    v235 = 0;
    v245 = 0;
    v239 = 0;
    v240 = 0;
    v222 = 0;
    v5 = 0;
    v213 = 0;
    v216 = 0;
    v217 = 0;
    v236 = 0;
    v237 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    obj = 0;
    v12 = 1;
    goto LABEL_35;
  }

  v209 = a2;
  v13 = copy_ucrt_path();
  v219 = v13;
  if (!v13)
  {
    v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1078, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy UCRT path.");
LABEL_28:
    v236 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_29;
  }

  v14 = &_CTServerConnectionCopyPostponementStatus_ptr;
  v15 = +[NSFileManager defaultManager];
  v315 = NSFilePosixPermissions;
  v316 = &off_1003FBD38;
  v16 = [NSDictionary dictionaryWithObjects:&v316 forKeys:&v315 count:1];
  v292 = 0;
  v17 = [(NSFileManager *)v15 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:v16 error:&v292];
  v18 = v292;

  if ((v17 & 1) == 0)
  {
    MobileActivationError = createMobileActivationError("perform_sydro_data_migration_tasks", 1083, @"com.apple.MobileActivation.ErrorDomain", -1, v18, @"Failed to create %@.", v13);
LABEL_17:
    v28 = MobileActivationError;

    v236 = 0;
    v11 = 0;
    v10 = 0;
    v13 = 0;
LABEL_29:
    v212 = 0;
    goto LABEL_30;
  }

  v19 = [v13 stringByAppendingPathComponent:@"ucrt.pem"];
  if (!v19)
  {
    MobileActivationError = createMobileActivationError("perform_sydro_data_migration_tasks", 1089, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create UCRT file path.");
    goto LABEL_17;
  }

  v13 = v19;
  v291 = v18;
  load_certificate(&certificate, @"lockdown-identities", @"com.apple.mobileactivation.ucrt", &v293, &v291);
  v20 = v291;

  if (v293 != -25300 && v293)
  {
    v30 = createMobileActivationError("perform_sydro_data_migration_tasks", 1095, @"com.apple.MobileActivation.ErrorDomain", -1, v20, @"Failed to query keychain.");
    goto LABEL_26;
  }

  if (certificate)
  {
    maLog("perform_sydro_data_migration_tasks", 0, @"Migrating UCRT from the keychain.");
    v21 = SecCertificateCopyData(certificate);
    if (v21)
    {
      v22 = v21;
      v290 = v20;
      v23 = lockcrypto_create_pem(v21, "CERTIFICATE", &v290);
      v24 = v290;

      if (v23)
      {
        v289 = v24;
        v212 = v23;
        v25 = store_data(v13, v23, &v289);
        v26 = v289;

        if ((v25 & 1) == 0)
        {
          v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1115, @"com.apple.MobileActivation.ErrorDomain", -1, v26, @"Failed to store UCRT at %@.", v13);

          v236 = 0;
          v237 = 0;
          v11 = 0;
          v7 = 0;
          v216 = 0;
          v217 = 0;
          v215 = 0;
          v4 = 0;
          v41 = 0;
          v227 = 0;
          v218 = 0;
          v211 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v10 = 0;
          goto LABEL_31;
        }

        v288 = v26;
        v27 = delete_certificate(@"lockdown-identities", @"com.apple.mobileactivation.ucrt", &v288);
        v20 = v288;

        if (v27)
        {
          maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated UCRT from the keychain.");
          goto LABEL_20;
        }

        v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1120, @"com.apple.MobileActivation.ErrorDomain", -1, v20, @"Failed to delete UCRT.");

        v236 = 0;
        v11 = 0;
        v10 = 0;
LABEL_30:
        v7 = 0;
        v237 = 0;
        v216 = 0;
        v217 = 0;
        v215 = 0;
        v4 = 0;
        v41 = 0;
        v227 = 0;
        v218 = 0;
        v211 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
LABEL_31:
        v248 = v44;
        obj = v28;
        cf = v41;
        v256 = v42;
        v230 = v43;
        v239 = v13;
        if (v209)
        {
          v45 = v11;
          v46 = v4;
          v47 = v28;
          v4 = v46;
          v11 = v45;
          v12 = 0;
          v223 = 0;
          v224 = 0;
          v225 = 0;
          v226 = 0;
          v220 = 0;
          v221 = 0;
          v241 = 0;
          v243 = 0;
          v228 = 0;
          v229 = 0;
          v213 = 0;
          v214 = 0;
          v233 = 0;
          v234 = 0;
          v245 = 0;
          v240 = 0;
          v235 = 0;
          v222 = 0;
          v5 = 0;
          v6 = 0;
          v48 = v28;
          v9 = 0;
          *v209 = v48;
        }

        else
        {
          v12 = 0;
          v223 = 0;
          v224 = 0;
          v225 = 0;
          v226 = 0;
          v220 = 0;
          v221 = 0;
          v241 = 0;
          v243 = 0;
          v228 = 0;
          v229 = 0;
          v213 = 0;
          v214 = 0;
          v233 = 0;
          v234 = 0;
          v245 = 0;
          v240 = 0;
          v235 = 0;
          v222 = 0;
          v5 = 0;
          v6 = 0;
          v9 = 0;
        }

        v3 = v211;
        v8 = v212;
        goto LABEL_35;
      }

      v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1110, @"com.apple.MobileActivation.ErrorDomain", -1, v24, @"Failed to create UCRT PEM data.");
      v40 = v24;
      goto LABEL_27;
    }

    v30 = createMobileActivationError("perform_sydro_data_migration_tasks", 1104, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy UCRT certificate data.");
LABEL_26:
    v28 = v30;
    v40 = v20;
LABEL_27:

    goto LABEL_28;
  }

  v212 = 0;
LABEL_20:
  v31 = v13;
  v32 = [NSData alloc];
  v298 = 0;
  v239 = v31;
  v33 = [v32 initWithContentsOfFile:v31 options:0 error:&v298];
  v34 = v298;
  if (!v33)
  {
    v37 = 0;
    goto LABEL_57;
  }

  v35 = SecCertificateCreateWithData(kCFAllocatorDefault, v33);
  if (v35)
  {
    v36 = v35;
    v297 = v34;
    v37 = lockcrypto_create_pem(v33, "CERTIFICATE", &v297);
    v38 = v297;

    if (v37)
    {
      v296 = v38;
      v39 = store_data(v239, v37, &v296);
      v34 = v296;

      if (v39)
      {
        CFRelease(v36);
LABEL_57:
        v55 = 1;
        v56 = v20;
        goto LABEL_65;
      }

      v56 = createMobileActivationError("convert_ucrt_from_der_to_pem", 218, @"com.apple.MobileActivation.ErrorDomain", -1, v34, @"Failed to store UCRT at %@.", v239);
      v38 = v34;
    }

    else
    {
      v56 = createMobileActivationError("convert_ucrt_from_der_to_pem", 213, @"com.apple.MobileActivation.ErrorDomain", -1, v38, @"Failed to create UCRT PEM data.");
    }

    CFRelease(v36);
    v57 = v56;
    v55 = 0;
    v34 = v56;
  }

  else
  {
    v55 = 1;
    v56 = v20;
    v37 = v33;
  }

LABEL_65:

  v58 = v56;
  if ((v55 & 1) == 0)
  {
    v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1130, @"com.apple.MobileActivation.ErrorDomain", -1, v58, @"Failed to migrate UCRT from DER to PEM.");

    v236 = 0;
    v237 = 0;
    v11 = 0;
    v10 = 0;
    v7 = 0;
    v216 = 0;
    v217 = 0;
    v215 = 0;
    v4 = 0;
    v41 = 0;
    v227 = 0;
    v218 = 0;
    v211 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v13 = v239;
    goto LABEL_31;
  }

  v287 = v58;
  v208 = copy_keychain_data(@"lockdown-identities", @"com.apple.mobileactivationd.dcrt", &v293, &v287);
  v59 = v287;

  if (v293 != -25300 && v293)
  {
    v63 = createMobileActivationError("perform_sydro_data_migration_tasks", 1138, @"com.apple.MobileActivation.ErrorDomain", -1, v59, @"Failed to query keychain.");

    v236 = 0;
    v237 = 0;
    goto LABEL_123;
  }

  if (v208)
  {
    maLog("perform_sydro_data_migration_tasks", 0, @"Migrating DCRT from the keychain.");
    v313[0] = @"UseCommittedDAK";
    v313[1] = @"SkipCertificateValidation";
    v314[0] = &__kCFBooleanTrue;
    v314[1] = &__kCFBooleanTrue;
    v286 = v59;
    v237 = [NSDictionary dictionaryWithObjects:v314 forKeys:v313 count:2];
    v60 = storeDCRT(v238, v208, v237, &v286);
    v61 = v286;

    if ((v60 & 1) == 0)
    {
      v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1156, @"com.apple.MobileActivation.ErrorDomain", -1, v61, @"Failed to store DCRT.");

      v236 = 0;
      v11 = 0;
      v10 = 0;
      v216 = 0;
      v217 = 0;
      v215 = 0;
      v4 = 0;
      v41 = 0;
      v227 = 0;
      v218 = 0;
      v211 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
LABEL_124:
      v13 = v239;
LABEL_125:
      v7 = v208;
      goto LABEL_31;
    }

    v285 = v61;
    v62 = delete_keychain_data(@"lockdown-identities", @"com.apple.mobileactivationd.dcrt", &v285);
    v59 = v285;

    if (v62)
    {
      maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated DCRT from the keychain.");
      goto LABEL_75;
    }

    v63 = createMobileActivationError("perform_sydro_data_migration_tasks", 1161, @"com.apple.MobileActivation.ErrorDomain", -1, v59, @"Failed to delete DCRT.");

    v236 = 0;
LABEL_123:
    v10 = 0;
    v216 = 0;
    v217 = 0;
    v215 = 0;
    v4 = 0;
    v41 = 0;
    v227 = 0;
    v218 = 0;
    v211 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v28 = v63;
    v11 = 0;
    goto LABEL_124;
  }

  v237 = 0;
LABEL_75:
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v244 = [&off_1003FC320 countByEnumeratingWithState:&v281 objects:v312 count:16];
  v64 = 0;
  if (v244)
  {
    v256 = 0;
    v43 = 0;
    v44 = 0;
    v242 = *v282;
    do
    {
      v65 = 0;
      v66 = v44;
      do
      {
        if (*v282 != v242)
        {
          objc_enumerationMutation(&off_1003FC320);
        }

        v67 = *(*(&v281 + 1) + 8 * v65);
        v68 = [v14[326] defaultManager];
        cfa = v67;
        v44 = [v68 contentsOfDirectoryAtPath:v67 error:0];

        if ([v44 count])
        {
          v246 = v65;
          v69 = copy_activation_records_directory_path();

          v70 = v14;
          v71 = [v14[326] defaultManager];
          v310 = NSFilePosixPermissions;
          v311 = &off_1003FBD50;
          v72 = [NSDictionary dictionaryWithObjects:&v311 forKeys:&v310 count:1];
          v280 = v59;
          v73 = [v71 createDirectoryAtPath:v69 withIntermediateDirectories:1 attributes:v72 error:&v280];
          v74 = v280;

          if ((v73 & 1) == 0)
          {
            maLog("perform_sydro_data_migration_tasks", 0, @"Could not create path %@: %@", v69, v74);
          }

          v278 = 0u;
          v279 = 0u;
          v276 = 0u;
          v277 = 0u;
          v249 = v44;
          obja = v44;
          v75 = [obja countByEnumeratingWithState:&v276 objects:v309 count:16];
          if (v75)
          {
            v76 = v75;
            v77 = *v277;
            do
            {
              v78 = 0;
              v79 = v256;
              v80 = v43;
              do
              {
                if (*v277 != v77)
                {
                  objc_enumerationMutation(obja);
                }

                v81 = *(*(&v276 + 1) + 8 * v78);
                v82 = [cfa stringByAppendingPathComponent:v81];

                v83 = [v69 stringByAppendingPathComponent:v81];
                maLog("perform_sydro_data_migration_tasks", 0, @"Migrating %@ to %@", v82, v83);
                v84 = [v70[326] defaultManager];
                v275 = v74;
                v256 = v83;
                LOBYTE(v83) = [v84 copyItemAtPath:v82 toPath:v83 error:&v275];
                v85 = v275;

                if ((v83 & 1) == 0)
                {
                  maLog("perform_sydro_data_migration_tasks", 0, @"Failed to copy %@: %@", v82, v85);
                }

                v86 = [v70[326] defaultManager];
                v274 = v85;
                v87 = [v86 removeItemAtPath:v82 error:&v274];
                v74 = v274;

                if ((v87 & 1) == 0)
                {
                  maLog("perform_sydro_data_migration_tasks", 0, @"Failed to delete %@: %@", v82, v74);
                }

                v78 = v78 + 1;
                v79 = v256;
                v80 = v82;
              }

              while (v76 != v78);
              v43 = v82;
              v76 = [obja countByEnumeratingWithState:&v276 objects:v309 count:16];
            }

            while (v76);
          }

          v59 = v74;
          v64 = v69;
          v14 = v70;
          v65 = v246;
          v44 = v249;
        }

        v65 = v65 + 1;
        v66 = v44;
      }

      while (v65 != v244);
      v244 = [&off_1003FC320 countByEnumeratingWithState:&v281 objects:v312 count:16];
    }

    while (v244);
  }

  else
  {
    v256 = 0;
    v43 = 0;
    v44 = 0;
  }

  v88 = [v14[326] defaultManager];
  v89 = [v88 fileExistsAtPath:@"/private/var/mobile/Library/mad/data_ark.plist"];

  if (v89)
  {
    v218 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/mobile/Library/mad/data_ark.plist"];
    v227 = [(NSDictionary *)v218 objectForKeyedSubscript:@"-LastActivated"];
    v90 = isNSString(v227);
    if (v90)
    {
      v91 = v90;
      v92 = data_ark_exists(v238, 0, @"LastActivated");

      if ((v92 & 1) == 0)
      {
        data_ark_set(v238, 0, @"LastActivated", v227, 1);
      }
    }

    v93 = [v14[326] defaultManager];
    v273 = v59;
    v94 = [v93 removeItemAtPath:@"/private/var/mobile/Library/mad/data_ark.plist" error:&v273];
    v95 = v273;

    if ((v94 & 1) == 0)
    {
      maLog("perform_sydro_data_migration_tasks", 0, @"Failed to delete %@: %@", @"/private/var/mobile/Library/mad/data_ark.plist", v95);
    }

    v59 = v95;
  }

  else
  {
    v227 = 0;
    v218 = 0;
  }

  v96 = data_ark_copy(v238, 0, @"UIKLegacyMigrationCompleted");
  v97 = isNSNumber(v96);
  v211 = v64;
  v217 = v96;
  if (!v97 || (v98 = v97, v99 = [v96 BOOLValue], v98, (v99 & 1) == 0))
  {
    v272 = v59;
    v108 = copy_keychain_data(@"lockdown-identities", @"com.apple.mobileactivation.uik", &v293, &v272);
    v109 = v272;

    v236 = v108;
    if (v293 != -25300 && v293)
    {
      v158 = createMobileActivationError("perform_sydro_data_migration_tasks", 1224, @"com.apple.MobileActivation.ErrorDomain", -1, v109, @"Failed to copy UIK from keychain.");
    }

    else
    {
      if (!v108)
      {
        cf = 0;
        v207 = 0;
LABEL_151:
        v269 = v109;
        v206 = copy_keychain_item(@"lockdown-identities", @"com.apple.mobileactivationd.uik.v2", 0, &v293, &v269);
        v59 = v269;

        if (v293 != -25300 && v293)
        {
          v169 = createMobileActivationError("perform_sydro_data_migration_tasks", 1266, @"com.apple.MobileActivation.ErrorDomain", -1, v59, @"Failed to copy UIK from keychain.");

          v10 = 0;
          v215 = 0;
          v216 = 0;
LABEL_166:
          v28 = v169;
LABEL_175:
          v13 = v239;
LABEL_176:
          v41 = cf;
          v42 = v256;
          v11 = v207;
          v7 = v208;
          v4 = v206;
          goto LABEL_31;
        }

        if (!v206)
        {
          v165 = 0;
          goto LABEL_169;
        }

        v268 = v59;
        v159 = security_create_external_representation(v206, 0, &v268);
        v160 = v268;

        if (v159)
        {
          v10 = copy_uik_path();
          if (!v10)
          {
            v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1279, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve UIK path.");

            v215 = 0;
            v216 = 0;
            v236 = v159;
            goto LABEL_175;
          }

          v232 = v43;
          v161 = [v14[326] defaultManager];
          v305 = NSFilePosixPermissions;
          v306 = &off_1003FBD50;
          v162 = [NSDictionary dictionaryWithObjects:&v306 forKeys:&v305 count:1];
          v267 = v160;
          v163 = [v161 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:v162 error:&v267];
          v164 = v267;

          if (v163)
          {
            v165 = [v10 stringByAppendingPathComponent:@"uik.pem"];

            v266 = v164;
            v166 = store_data(v165, v159, &v266);
            v167 = v266;

            if (v166)
            {
              v265 = v167;
              v168 = delete_keychain_item(@"lockdown-identities", @"com.apple.mobileactivationd.uik.v2", &v265);
              v59 = v265;

              if (v168)
              {
                v236 = v159;
                v43 = v232;
                v14 = &_CTServerConnectionCopyPostponementStatus_ptr;
LABEL_169:
                v101 = v238;
                data_ark_set(v238, 0, @"UIKLegacyMigrationCompleted", &__kCFBooleanTrue, 1);
                v205 = v165;
                v100 = v236;
                goto LABEL_111;
              }

              v174 = createMobileActivationError("perform_sydro_data_migration_tasks", 1296, @"com.apple.MobileActivation.ErrorDomain", -1, v59, @"Failed to delete UIK from keychain.");

              v215 = 0;
              v216 = 0;
              v28 = v174;
            }

            else
            {
              v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1291, @"com.apple.MobileActivation.ErrorDomain", -1, v167, @"Failed to store UIK.");

              v215 = 0;
              v216 = 0;
            }

            v236 = v159;
            v10 = v165;
          }

          else
          {
            v172 = createMobileActivationError("perform_sydro_data_migration_tasks", 1284, @"com.apple.MobileActivation.ErrorDomain", -1, v164, @"Failed to create %@.", v10);
            v173 = v164;
            v28 = v172;

            v215 = 0;
            v216 = 0;
            v236 = v159;
          }

          v13 = v239;
          v43 = v232;
          goto LABEL_176;
        }

        v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1273, @"com.apple.MobileActivation.ErrorDomain", -1, v160, @"Failed to encode UIK as data.");

        v236 = 0;
LABEL_174:
        v10 = 0;
        v215 = 0;
        v216 = 0;
        goto LABEL_175;
      }

      maLog("perform_sydro_data_migration_tasks", 0, @"Converting legacy UIK.");
      v110 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &v294);
      if (v110)
      {
        v307[0] = kSecAttrIsPermanent;
        v307[1] = kSecAttrTokenID;
        v308[0] = &__kCFBooleanFalse;
        v308[1] = kSecAttrTokenIDAppleKeyStore;
        v307[2] = kSecAttrTokenOID;
        v307[3] = kSecAttrAccessControl;
        v308[2] = v108;
        cf = v110;
        v308[3] = v110;
        v207 = [NSDictionary dictionaryWithObjects:v308 forKeys:v307 count:4];
        v111 = SecKeyCreateWithData(+[NSData data], v207, &v294);
        if (!v111)
        {
          v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1244, @"com.apple.MobileActivation.ErrorDomain", -1, v294, @"Failed to convert legacy UIK.");

          v10 = 0;
          v215 = 0;
          v216 = 0;
          v4 = 0;
          v13 = v239;
          v41 = cf;
          v42 = v256;
          v11 = v207;
          v7 = v208;
          goto LABEL_31;
        }

        v271 = v109;
        v206 = v111;
        v112 = store_keychain_item(v111, @"lockdown-identities", @"com.apple.mobileactivationd.uik.v2", 0, &v271);
        v113 = v271;

        if (v112)
        {
          v270 = v113;
          v114 = delete_keychain_data(@"lockdown-identities", @"com.apple.mobileactivation.uik", &v270);
          v109 = v270;

          if (v114)
          {
            maLog("perform_sydro_data_migration_tasks", 0, @"Successfully converted legacy UIK.");
            CFRelease(v206);
            goto LABEL_151;
          }

          v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1254, @"com.apple.MobileActivation.ErrorDomain", -1, v109, @"Failed to delete UIK from keychain.");
          v171 = v109;
        }

        else
        {
          v170 = createMobileActivationError("perform_sydro_data_migration_tasks", 1249, @"com.apple.MobileActivation.ErrorDomain", -1, v113, @"Failed to store UIK.");
          v171 = v113;
          v28 = v170;
        }

        goto LABEL_174;
      }

      v158 = createMobileActivationError("perform_sydro_data_migration_tasks", 1233, @"com.apple.MobileActivation.ErrorDomain", -1, v294, @"Failed to create access control.");
    }

    v28 = v158;

    v11 = 0;
    v10 = 0;
    v215 = 0;
    v216 = 0;
    v4 = 0;
    v41 = 0;
    v13 = v239;
    v42 = v256;
    goto LABEL_125;
  }

  v100 = 0;
  v206 = 0;
  v207 = 0;
  v205 = 0;
  cf = 0;
  v101 = v238;
LABEL_111:
  v102 = data_ark_copy(v101, 0, @"MFIFactoryCertificatesMigrationCompleted");
  v103 = isNSNumber(v102);
  v236 = v100;
  v216 = v102;
  if (v103)
  {
    v104 = v103;
    v105 = [v102 BOOLValue];

    if (v105)
    {
      v221 = 0;
      v222 = 0;
      v234 = 0;
      v235 = 0;
      v240 = 0;
      v241 = 0;
      v106 = 0;
      v214 = 0;
      v215 = 0;
      v228 = 0;
      v229 = 0;
      v233 = 0;
      v243 = 0;
      v225 = 0;
      v226 = 0;
      v220 = 0;
      v223 = 0;
      v224 = 0;
      v107 = v238;
      goto LABEL_216;
    }
  }

  v264 = 0;
  v115 = copyRootCertificate(3, 0, &v264);
  v116 = v264;
  v117 = v116;
  if (!v115)
  {
    v28 = createMobileActivationError("perform_sydro_data_migration_tasks", 1315, @"com.apple.MobileActivation.ErrorDomain", -1, v116, @"Failed to load BAA root CA certificate.");

    v215 = 0;
    v13 = v239;
    v41 = cf;
    v42 = v256;
    v11 = v207;
    v7 = v208;
    v10 = v205;
    v4 = v206;
    goto LABEL_31;
  }

  v263 = v116;
  v215 = v115;
  v118 = lockcrypto_cert_from_pem_data(v115, &v263);
  v59 = v263;

  v10 = v205;
  if (!v118)
  {
    v169 = createMobileActivationError("perform_sydro_data_migration_tasks", 1321, @"com.apple.MobileActivation.ErrorDomain", -1, v59, @"Failed to create certificate from pem data.");

    goto LABEL_166;
  }

  v220 = v118;
  v119 = [v14[326] defaultManager];
  v120 = [v119 fileExistsAtPath:@"/private/var/hardware/factory/mfi"];

  if (!v120)
  {
    v221 = 0;
    v222 = 0;
    v234 = 0;
    v235 = 0;
    v240 = 0;
    v241 = 0;
    v243 = 0;
    v247 = 0;
    v228 = 0;
    v229 = 0;
    v233 = 0;
    v214 = 0;
    v225 = 0;
    v226 = 0;
    v223 = 0;
    v224 = 0;
    v107 = v238;
    goto LABEL_215;
  }

  v250 = v44;
  objb = v59;
  v231 = v43;
  v121 = 0;
  v122 = 0;
  v214 = 0;
  v203 = 0;
  v204 = 0;
  v210 = 0;
  v241 = 0;
  v247 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 1;
  protection = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  v201 = kSecAttrTokenIDAppleKeyStore;
  v200 = kSecAttrTokenOID;
  while (1)
  {
    v127 = v122;
    v235 = @"com.apple.mfiaccessory";

    v128 = [NSString stringWithFormat:@"%@%u", @"mfi-baa", v126];
    v240 = [NSString stringWithFormat:@"%@-rk-scrt", v128];

    v222 = v128;
    v129 = [NSString stringWithFormat:@"%@-combined-scrt", v128];

    v130 = [NSString stringWithFormat:@"/private/var/hardware/factory/mfi/mfi%u-cert.der", v126];
    v131 = [NSString stringWithFormat:@"/private/var/hardware/factory/mfi/mfi%u-key.der", v126];

    v228 = v130;
    v132 = [[NSData alloc] initWithContentsOfFile:v130];

    v221 = v131;
    v241 = v132;
    v247 = v129;
    if (!v132)
    {
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1338, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to load %@.", v130);
      v243 = 0;
      v225 = 0;
      v226 = 0;
      v223 = 0;
      v224 = 0;
LABEL_191:
      v43 = v231;
      v144 = v207;
      goto LABEL_197;
    }

    v262 = objb;
    v133 = parseDERCertificatesFromChain(v132, &v262);
    v134 = v262;

    v123 = v240;
    if (!v133)
    {
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1344, @"com.apple.MobileActivation.ErrorDomain", -1, v134, @"Failed to parse certificate chain from data.");
      v214 = 0;
      v243 = 0;
      v225 = 0;
      v226 = 0;
      v223 = 0;
      v224 = 0;
      objb = v134;
      goto LABEL_191;
    }

    v135 = [(NSError *)v133 objectAtIndexedSubscript:0];
    v136 = SecCertificateCreateWithData(0, v135);

    v243 = v136;
    if (!v136)
    {
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1350, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create leaf certificate from data.");
      v243 = 0;
      v225 = 0;
      v226 = 0;
      v223 = 0;
      v224 = 0;
      objb = v134;
      v214 = v133;
      goto LABEL_191;
    }

    v137 = [(NSError *)v133 objectAtIndexedSubscript:1];
    v138 = SecCertificateCreateWithData(0, v137);

    v139 = v138;
    v140 = v133;
    if (!v139)
    {
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1356, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create intermediate certificate from data.");
      v225 = 0;
      v226 = 0;
      v223 = 0;
      v224 = 0;
      objb = v134;
LABEL_190:
      v214 = v140;
      goto LABEL_191;
    }

    v261 = v134;
    v225 = v139;
    v141 = evaluateAccessoryTrustWithCerts(v243, v139, v220, 0, 0, 0, &v261);
    v142 = v261;

    if ((v141 & 1) == 0)
    {
      objb = v142;
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1361, @"com.apple.MobileActivation.ErrorDomain", -1, v142, @"Failed to verify BAA certificate chain.");
LABEL_189:
      v226 = 0;
      v223 = 0;
      v224 = 0;
      goto LABEL_190;
    }

    v143 = [[NSData alloc] initWithContentsOfFile:v131];

    v124 = v235;
    if (!v143)
    {
      objb = v142;
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1369, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to load %@.", v131);
      v210 = 0;
      goto LABEL_189;
    }

    v144 = v207;
    if (cf)
    {
      CFRelease(cf);
    }

    v145 = SecAccessControlCreateWithFlags(0, protection, 0x40000000uLL, &v294);
    if (!v145)
    {
      objb = v142;
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1376, @"com.apple.MobileActivation.ErrorDomain", -1, v294, @"Failed to create access control.");
      v226 = 0;
      v223 = 0;
      v224 = 0;
      cf = 0;
      goto LABEL_196;
    }

    v303[0] = kSecAttrIsPermanent;
    v303[1] = kSecAttrTokenID;
    v304[0] = &__kCFBooleanFalse;
    v304[1] = v201;
    v303[2] = v200;
    v303[3] = kSecAttrAccessControl;
    v304[2] = v143;
    cf = v145;
    v304[3] = v145;
    v146 = [NSDictionary dictionaryWithObjects:v304 forKeys:v303 count:4];

    v147 = SecKeyCreateWithData(+[NSData data], v146, &v294);
    if (!v147)
    {
      objb = v142;
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1388, @"com.apple.MobileActivation.ErrorDomain", -2, v294, @"Failed to convert RK data blob.");
      v226 = 0;
LABEL_195:
      v223 = 0;
      v224 = 0;
      v144 = v146;
LABEL_196:
      v210 = v143;
      v214 = v140;
      v43 = v231;
LABEL_197:
      v176 = v203;
      v175 = v204;
      goto LABEL_208;
    }

    v226 = v147;
    v148 = SecKeyCopyPublicKey(v147);
    if (!v148)
    {
      objb = v142;
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1394, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.");
      goto LABEL_195;
    }

    v224 = v148;
    v149 = SecKeyCopyExternalRepresentation(v148, &v294);

    if (!v149)
    {
      objb = v142;
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1400, @"com.apple.MobileActivation.ErrorDomain", -1, v294, @"Failed to copy RK public key buffer.");
      v223 = 0;
      v144 = v146;
      v176 = 0;
      v210 = v143;
      goto LABEL_200;
    }

    v150 = SecCertificateCopyKey(v243);
    if (!v150)
    {
      break;
    }

    v223 = v150;
    v151 = SecKeyCopyExternalRepresentation(v150, &v294);

    if (!v151)
    {
      objb = v142;
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1412, @"com.apple.MobileActivation.ErrorDomain", -1, v294, @"Failed to encode certificate public key as data.");
      v175 = 0;
      v178 = v149;
      v144 = v146;
      v210 = v143;
      v176 = v178;
LABEL_207:
      v214 = v140;
      v43 = v231;
      goto LABEL_208;
    }

    v233 = v151;
    v234 = v149;
    if (([(__CFData *)v149 isEqualToData:v151]& 1) == 0)
    {
      objb = v142;
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1419, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Certificate public key does not match RK public key.");
      v144 = v146;
      v210 = v143;
LABEL_206:
      v175 = v233;
      v176 = v234;
      goto LABEL_207;
    }

    v229 = v143;
    v260 = v142;
    v152 = store_keychain_data(v241, v235, v247, &v260);
    v153 = v260;

    if ((v152 & 1) == 0)
    {
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1426, @"com.apple.MobileActivation.ErrorDomain", -1, v153, @"Failed to store leaf/intermediate certificates.");
      objb = v153;
LABEL_205:
      v144 = v146;
      v210 = v143;
      goto LABEL_206;
    }

    v259 = v153;
    v154 = store_keychain_item(v226, v235, v240, 0, &v259);
    objb = v259;

    v122 = v228;
    if ((v154 & 1) == 0)
    {
      v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1431, @"com.apple.MobileActivation.ErrorDomain", -1, objb, @"Failed to store reference key.");
      goto LABEL_205;
    }

    v155 = +[NSFileManager defaultManager];
    [(NSFileManager *)v155 removeItemAtPath:v228 error:0];

    v156 = +[NSFileManager defaultManager];
    v121 = v221;
    [(NSFileManager *)v156 removeItemAtPath:v221 error:0];

    CFRelease(v243);
    CFRelease(v225);
    CFRelease(v226);
    CFRelease(v224);
    CFRelease(v223);
    v126 = (v126 + 1);
    v214 = v140;
    v203 = v234;
    v204 = v233;
    v210 = v143;
    v207 = v146;
    v125 = v222;
    if (v126 == 5)
    {
      v214 = v140;
      v243 = 0;
      v225 = 0;
      v226 = 0;
      v223 = 0;
      v224 = 0;
      v144 = v146;
      v43 = v231;
      v44 = v250;
      v157 = objb;
      goto LABEL_209;
    }
  }

  objb = v142;
  v157 = createMobileActivationError("perform_sydro_data_migration_tasks", 1406, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve certificate public key.");
  v223 = 0;
  v177 = v149;
  v144 = v146;
  v210 = v143;
  v176 = v177;
LABEL_200:
  v214 = v140;
  v43 = v231;
  v175 = v204;
LABEL_208:

  v229 = v210;
  v233 = v175;
  v234 = v176;
  v44 = v250;
LABEL_209:
  v207 = v144;
  if (v157)
  {
    v179 = copyLoggingHandle();
    if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
    {
      perform_sydro_data_migration_tasks_cold_1();
    }
  }

  else
  {
    maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated factory MFi certs/key.");
  }

  v59 = 0;
  v107 = v238;
LABEL_215:
  data_ark_set(v107, 0, @"MFIFactoryCertificatesMigrationCompleted", &__kCFBooleanTrue, 1);
  v106 = v247;
LABEL_216:
  v180 = data_ark_copy(v107, 0, @"FactoryDCRTMigrationCompleted");
  v181 = isNSNumber(v180);
  v230 = v43;
  v245 = v106;
  v213 = v180;
  if (!v181 || (v182 = v181, v183 = [v180 BOOLValue], v182, (v183 & 1) == 0))
  {
    v7 = [[NSData alloc] initWithContentsOfFile:@"/private/var/hardware/dcrt/dcrt.der"];

    v11 = v207;
    if (v7)
    {
      v301 = @"UseCommittedDAK";
      v302 = &__kCFBooleanTrue;
      v185 = v59;
      v186 = [NSDictionary dictionaryWithObjects:&v302 forKeys:&v301 count:1];

      v258 = v185;
      v187 = storeDCRT(v238, v7, v186, &v258);
      v188 = v258;

      if ((v187 & 1) == 0)
      {
        v189 = copyLoggingHandle();
        v10 = v205;
        if (os_log_type_enabled(v189, OS_LOG_TYPE_FAULT))
        {
          perform_sydro_data_migration_tasks_cold_2();
        }

        v188 = 0;
        goto LABEL_227;
      }

      maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated factory DCRT certs/key.");
    }

    else
    {
      v188 = v59;
      v186 = v237;
    }

    v10 = v205;
LABEL_227:
    v190 = +[NSFileManager defaultManager];
    [(NSFileManager *)v190 removeItemAtPath:@"/private/var/hardware/dcrt/dcrt.der" error:0];

    v184 = v238;
    data_ark_set(v238, 0, @"FactoryDCRTMigrationCompleted", &__kCFBooleanTrue, 1);
    obj = v188;
    v237 = v186;
    goto LABEL_228;
  }

  obj = v59;
  v11 = v207;
  v7 = v208;
  v184 = v238;
  v10 = v205;
LABEL_228:
  v248 = v44;
  v5 = data_ark_copy(v184, 0, @"FactorySDCRTMigrationCompleted");
  v191 = isNSNumber(v5);
  if (v191 && (v192 = v191, v193 = [v5 BOOLValue], v192, (v193 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = [[NSData alloc] initWithContentsOfFile:@"/private/var/hardware/sdcrt/sdcrt.der"];
    if (v6)
    {
      v299[0] = @"UseCommittedDAK";
      v299[1] = @"sdcrtAttestation";
      v300[0] = &__kCFBooleanTrue;
      v300[1] = &__kCFBooleanTrue;
      v194 = [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:2];

      v257 = obj;
      v195 = storeDCRT(v238, v6, v194, &v257);
      v196 = v257;

      if (v195)
      {
        maLog("perform_sydro_data_migration_tasks", 0, @"Successfully migrated factory SDCRT certs/key.");
      }

      else
      {
        v197 = copyLoggingHandle();
        if (os_log_type_enabled(v197, OS_LOG_TYPE_FAULT))
        {
          perform_sydro_data_migration_tasks_cold_3();
        }

        v196 = 0;
      }
    }

    else
    {
      v196 = obj;
      v194 = v237;
    }

    v198 = +[NSFileManager defaultManager];
    [(NSFileManager *)v198 removeItemAtPath:@"/private/var/hardware/sdcrt/sdcrt.der" error:0];

    data_ark_set(v238, 0, @"FactorySDCRTMigrationCompleted", &__kCFBooleanTrue, 1);
    obj = v196;
    v237 = v194;
  }

  v199 = certificate;
  v3 = v211;
  v8 = v212;
  if (certificate || (v199 = copyUCRT(v238, 0), (certificate = v199) != 0))
  {
    v9 = lockcrypto_query_certificate_properties(v199, @"1.2.840.113635.100.8.7", 0);
    if (!v9)
    {
      maLog("perform_sydro_data_migration_tasks", 0, @"Existing UCRT does not contain the OID %@.", @"1.2.840.113635.100.8.7");
      v12 = 1;
      data_ark_set(v238, 0, @"UCRTUpgradeRequired", &__kCFBooleanTrue, 1);
      goto LABEL_245;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = 1;
LABEL_245:
  v4 = v206;
LABEL_35:
  if (certificate)
  {
    v49 = v5;
    v50 = v7;
    v51 = v10;
    v52 = v11;
    v53 = v4;
    CFRelease(certificate);
    v4 = v53;
    v11 = v52;
    v10 = v51;
    v7 = v50;
    v5 = v49;
  }

  certificate = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v294)
  {
    CFRelease(v294);
  }

  v294 = 0;
  if (v243)
  {
    CFRelease(v243);
  }

  if (v225)
  {
    CFRelease(v225);
  }

  if (v220)
  {
    CFRelease(v220);
  }

  if (v226)
  {
    CFRelease(v226);
  }

  if (v224)
  {
    CFRelease(v224);
  }

  if (v223)
  {
    CFRelease(v223);
  }

  return v12;
}

void __register_xpc_activities_block_invoke(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_9;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_cold_1();
    }
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    factory_activation_activity_handler(*(a1 + 32));
  }

LABEL_9:
}

void __register_xpc_activities_block_invoke_771(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_11;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_771_cold_1();
    }
  }

  v5 = xpc_activity_copy_criteria(v3);
  if (!v5 || xpc_activity_get_state(v3) == 2)
  {
    collection_activity_handler(*(a1 + 32), v5 == 0);
  }

LABEL_11:
}

void __register_xpc_activities_block_invoke_772(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_11;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_772_cold_1();
    }
  }

  v5 = xpc_activity_copy_criteria(v3);
  if (!v5 || xpc_activity_get_state(v3) == 2)
  {
    ucrt_oob_activity_handler(*(a1 + 32), v5 == 0);
  }

LABEL_11:
}

void __register_xpc_activities_block_invoke_773(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_13;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_773_cold_1();
    }
  }

  if (device_supports_dcrt_oob())
  {
    v5 = xpc_activity_copy_criteria(v3);
    v6 = v5;
    if (!v5 || xpc_dictionary_get_BOOL(v5, XPC_ACTIVITY_REPEATING) || xpc_activity_get_state(v3) == 2)
    {
      dcrt_oob_activity_handler(*(a1 + 32), 0, v6 == 0);
    }
  }

LABEL_13:
}

void __register_xpc_activities_block_invoke_774(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_13;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_774_cold_1();
    }
  }

  if (device_supports_dcrt_oob())
  {
    v5 = xpc_activity_copy_criteria(v3);
    v6 = v5;
    if (!v5 || xpc_dictionary_get_BOOL(v5, XPC_ACTIVITY_REPEATING) || xpc_activity_get_state(v3) == 2)
    {
      dcrt_oob_activity_handler(*(a1 + 32), 1, v6 == 0);
    }
  }

LABEL_13:
}

void __register_xpc_activities_block_invoke_775(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_10;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_775_cold_1();
    }
  }

  if (device_supports_dcrt_oob() && xpc_activity_get_state(v3) == 2)
  {
    dcrt_oob_load_spreading_activity_handler(*(a1 + 32), 0);
  }

LABEL_10:
}

void __register_xpc_activities_block_invoke_776(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_10;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_776_cold_1();
    }
  }

  if (device_supports_dcrt_oob() && xpc_activity_get_state(v3) == 2)
  {
    dcrt_oob_load_spreading_activity_handler(*(a1 + 32), 1);
  }

LABEL_10:
}

void __register_xpc_activities_block_invoke_777(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_11;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_777_cold_1();
    }
  }

  v5 = xpc_activity_copy_criteria(v3);
  if (!v5 || xpc_activity_get_state(v3) == 2)
  {
    splunk_activity_handler(*(a1 + 32), v5 == 0);
  }

LABEL_11:
}

void __register_xpc_activities_block_invoke_778(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_9;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_778_cold_1();
    }
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    splunk_daily_stats_activity_handler(*(a1 + 32));
  }

LABEL_9:
}

void __register_xpc_activities_block_invoke_779(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_9;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __register_xpc_activities_block_invoke_779_cold_1();
    }
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    splunk_roll_uuid_activity_handler(*(a1 + 32));
  }

LABEL_9:
}

void __performInFieldCollection_block_invoke(uint64_t a1)
{
  v69 = -1;
  if (!*(a1 + 56))
  {
    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 872, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v60 = 0;
    v61 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v59 = 0;
LABEL_22:
    v58 = 0;
    v22 = 0;
    goto LABEL_23;
  }

  v2 = [*(a1 + 32) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
  v3 = isNSNumber(v2);

  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    [v4 doubleValue];
    if (v5 <= 0.0)
    {
      v59 = v4;
      v6 = createMobileActivationError("performInFieldCollection_block_invoke", 879, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v4);
      v60 = 0;
LABEL_20:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
  }

  v59 = v4;
  if (is_product_cellular())
  {
    v15 = *(a1 + 40);
    v68 = 0;
    v14 = copy_baseband_request_info(v15, 0, &v68);
    v16 = v68;

    if (!v14)
    {
      v6 = createMobileActivationError("performInFieldCollection_block_invoke", 889, @"com.apple.MobileActivation.ErrorDomain", -22, v16, @"Failed to copy baseband info.");

      v60 = 0;
      v61 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [[MACollectionInterface alloc] initWithContext:*(a1 + 40)];
  v9 = v17;
  if (!v17)
  {
    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 897, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create collection interface.");

    v60 = 0;
    v7 = 0;
    v8 = 0;
LABEL_21:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v61 = 0;
    v14 = 0;
    goto LABEL_22;
  }

  v60 = v17;
  if (![(MACollectionInterface *)v17 collectionLibraryLoaded])
  {
    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 902, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Collection library not loaded.");

    goto LABEL_20;
  }

  v18 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
  v19 = isNSNumber(v18);

  if (!v19)
  {
    v61 = 0;
    v57 = 0;
LABEL_28:
    v25 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularOTAProxy"];
    v26 = isNSNumber(v25);

    if (v26)
    {
      v27 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularOTAProxy"];
      v58 = v27;
      if (is_product_cellular() && [v27 BOOLValue])
      {
        v66 = v16;
        v10 = copyCellularProxyDictionary(0, &v66);
        v28 = v66;

        if (!v10)
        {
          v6 = createMobileActivationError("performInFieldCollection_block_invoke", 924, @"com.apple.MobileActivation.ErrorDomain", -2, v28, @"Failed to query cellular network proxy info.");

          v7 = 0;
          v8 = 0;
          v9 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v61 = 0;
LABEL_64:
          v14 = 0;
          goto LABEL_65;
        }

        v55 = 1;
        v16 = v28;
        v61 = v10;
LABEL_35:
        v29 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyHost"];
        v30 = isNSString(v29);
        if (v30)
        {
          v31 = v30;
          v32 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyPort"];
          v33 = isNSNumber(v32);

          if (!v33)
          {
            v9 = v60;
LABEL_40:
            if (is_internal_build())
            {
              v36 = [NSUserDefaults alloc];
              v13 = [v36 persistentDomainForName:@"com.apple.mobileactivationd"];

              v37 = [v13 objectForKeyedSubscript:@"UseReverseProxy"];
              v38 = isNSNumber(v37);
              if (v38)
              {
                v39 = v38;
                v40 = [v13 objectForKeyedSubscript:@"UseReverseProxy"];
                v41 = [v40 BOOLValue];

                if (v41)
                {
                  if (v61)
                  {
                    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 940, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Cannot set both '%@' override and '%@'/'%@' option.", @"UseReverseProxy", @"UseCellularBootstrapProxy", @"UseCellularOTAProxy");

                    v7 = 0;
                    goto LABEL_60;
                  }

                  v61 = copyReverseProxyDictionary(0, 0, 0);
                }

                v9 = v60;
              }

              else
              {
              }
            }

            else
            {
              v13 = 0;
            }

            v65 = v16;
            v7 = [(MACollectionInterface *)v9 copyIngestData:&v65];
            v42 = v65;

            if (v7)
            {
              v64 = v42;
              v8 = [(MACollectionInterface *)v9 copyIngestHeaders:v7 withError:&v64];
              v43 = v64;

              if (v8)
              {
                v44 = [NSMutableURLRequest alloc];
                v45 = +[MACollectionInterface copyIngestURL];
                LODWORD(v46) = NETWORK_TIMEOUT_SECONDS;
                v9 = [v44 initWithURL:v45 cachePolicy:0 timeoutInterval:v46];

                if (v9)
                {
                  v47 = +[GestaltHlpr getSharedInstance];
                  v14 = [v47 copyAnswer:@"UniqueDeviceID"];

                  v48 = isNSString(v14);
                  if (v48)
                  {
                    v12 = [[NSString alloc] initWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", *(a1 + 48)];
                    if (v12)
                    {
                      v53 = v43;
                      [(MACollectionInterface *)v9 setAllHTTPHeaderFields:v8];
                      [(MACollectionInterface *)v9 setValue:v12 forHTTPHeaderField:@"User-Agent"];
                      [(MACollectionInterface *)v9 setValue:v14 forHTTPHeaderField:@"x-jmet-deviceid"];
                      [(MACollectionInterface *)v9 setHTTPMethod:@"POST"];
                      [(MACollectionInterface *)v9 setHTTPBody:v7];
                      if (v59)
                      {
                        [v59 doubleValue];
                        [(MACollectionInterface *)v9 setTimeoutInterval:?];
                      }

                      v49 = formatURLRequest(v9);
                      v50 = copy_log_directory_path();
                      v51 = [v50 stringByAppendingPathComponent:@"collection_oob_request.txt"];
                      [(NSMutableString *)v49 writeToFile:v51 atomically:0 encoding:4 error:0];

                      v62 = v53;
                      v63 = 0;
                      v11 = talkToServerWithError(v9, 0, v55, v61, &v63, &v69, &v62);
                      v10 = v63;
                      v6 = v62;

                      v56 = formatURLResponse(v11, v69, v10);
                      v54 = copy_log_directory_path();
                      v52 = [v54 stringByAppendingPathComponent:@"collection_oob_response.txt"];
                      [(NSMutableString *)v56 writeToFile:v52 atomically:0 encoding:4 error:0];
                    }

                    else
                    {
                      v6 = createMobileActivationError("performInFieldCollection_block_invoke", 981, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.");

                      v10 = 0;
                      v11 = 0;
                    }
                  }

                  else
                  {
                    v6 = createMobileActivationError("performInFieldCollection_block_invoke", 974, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");

                    v10 = 0;
                    v11 = 0;
                    v12 = 0;
                  }

                  goto LABEL_65;
                }

                v6 = createMobileActivationError("performInFieldCollection_block_invoke", 968, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");

                goto LABEL_63;
              }

              v6 = createMobileActivationError("performInFieldCollection_block_invoke", 958, @"com.apple.MobileActivation.ErrorDomain", -1, v43, @"Failed to copy ingest headers.");

LABEL_62:
              v9 = 0;
LABEL_63:
              v10 = 0;
              v11 = 0;
              v12 = 0;
              goto LABEL_64;
            }

            v6 = createMobileActivationError("performInFieldCollection_block_invoke", 952, @"com.apple.MobileActivation.ErrorDomain", -1, v42, @"Failed to copy ingest data.");

LABEL_60:
            v8 = 0;
            goto LABEL_62;
          }

          v70[0] = @"SOCKSProxyHost";
          v29 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyHost"];
          v71[0] = v29;
          v70[1] = @"SOCKSProxyPort";
          v34 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyPort"];
          v71[1] = v34;
          v35 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:2];

          v61 = v35;
          v9 = v60;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v58 = 0;
    }

    v55 = 0;
    goto LABEL_35;
  }

  v20 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
  v57 = v20;
  if (!is_product_cellular() || ![v20 BOOLValue])
  {
    v61 = 0;
    goto LABEL_28;
  }

  v67 = v16;
  v11 = copyCellularProxyDictionary(1, &v67);
  v21 = v67;

  v61 = v11;
  if (v11)
  {
    v16 = v21;
    goto LABEL_28;
  }

  v6 = createMobileActivationError("performInFieldCollection_block_invoke", 911, @"com.apple.MobileActivation.ErrorDomain", -2, v21, @"Failed to query cellular network proxy info.");

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v13 = 0;
  v61 = 0;
  v14 = 0;
  v58 = 0;
LABEL_65:
  v22 = v57;
LABEL_23:
  v23 = *(a1 + 56);
  if (v23)
  {
    v24 = v22;
    (*(v23 + 16))(v23, v11, v10, v69, v6);
    v22 = v24;
  }
}

void ___performUCRTHealingOOB_block_invoke(uint64_t a1)
{
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__5;
  v111 = __Block_byref_object_dispose__5;
  v112 = 0;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x3032000000;
  v105[3] = __Block_byref_object_copy__5;
  v105[4] = __Block_byref_object_dispose__5;
  v106 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__5;
  v103 = __Block_byref_object_dispose__5;
  v104 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__5;
  v97 = __Block_byref_object_dispose__5;
  v98 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = -1;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  if (!*(a1 + 32) || !*(a1 + 40) || !*(a1 + 56))
  {
    v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 507, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v9 = 0;
    v13 = 0;
    v23 = 0;
    v5 = 0;
    v3 = 0;
LABEL_14:
    v24 = 0;
    goto LABEL_15;
  }

  v2 = [NSUserDefaults alloc];
  v3 = [v2 persistentDomainForName:@"com.apple.mobileactivationd"];

  v4 = [*(a1 + 48) objectForKeyedSubscript:@"PromptForCredentials"];
  v5 = v4;
  if (v4)
  {
    v6 = isNSNumber(v4);
    v7 = v6 == 0;

    if (v7)
    {
      v20 = createAndLogError("_performUCRTHealingOOB_block_invoke", 515, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"PromptForCredentials");
      v21 = 0;
      v22 = 0;
      v18 = 0;
      v9 = 0;
LABEL_23:
      v13 = 0;
      goto LABEL_39;
    }
  }

  v8 = [*(a1 + 48) objectForKeyedSubscript:@"ActivationLockUsername"];
  v9 = v8;
  if (v8)
  {
    v10 = isNSString(v8);
    v11 = v10 == 0;

    if (v11)
    {
      v20 = createAndLogError("_performUCRTHealingOOB_block_invoke", 521, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"ActivationLockUsername");
      v21 = 0;
      v22 = 0;
      v18 = 0;
      goto LABEL_23;
    }
  }

  v12 = [*(a1 + 48) objectForKeyedSubscript:@"ActivationLockPET"];
  v13 = v12;
  if (v12)
  {
    v14 = isNSString(v12);
    v15 = v14 == 0;

    if (v15)
    {
      v20 = createAndLogError("_performUCRTHealingOOB_block_invoke", 527, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"ActivationLockPET");
      v21 = 0;
      v22 = 0;
      v18 = 0;
      goto LABEL_39;
    }
  }

  v16 = [*(a1 + 48) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
  v17 = isNSNumber(v16);

  if (v17)
  {
    v18 = [*(a1 + 48) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    [v18 doubleValue];
    if (v19 <= 0.0)
    {
      v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 534, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v18);
      v21 = 0;
      v22 = 0;
LABEL_39:
      v23 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
  }

  v29 = [*(a1 + 48) objectForKeyedSubscript:@"UseCommittedUIK"];
  v23 = v29;
  if (v29)
  {
    v30 = isNSNumber(v29);
    v31 = v30 == 0;

    if (v31)
    {
      v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 541, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid option (%@).", @"UseCommittedUIK");
      goto LABEL_42;
    }
  }

  if (([v23 BOOLValue] & 1) == 0)
  {
    v36 = aks_system_key_operate(2, 1, 0, 0, v32, v33, v34, v35, v50, location, v54, v60, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
    if (v36)
    {
      v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 548, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to bump UIK: 0x%08x", v36);
LABEL_42:
      v21 = 0;
      v22 = 0;
      goto LABEL_14;
    }
  }

  v37 = *(a1 + 32);
  v38 = *(a1 + 48);
  v39 = v108;
  obj = v108[5];
  v24 = create_ucrt_info(v37, v38, &obj);
  objc_storeStrong(v39 + 5, obj);
  if (!v24)
  {
    v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 555, @"com.apple.MobileActivation.ErrorDomain", -1, v108[5], @"Failed to create UCRT info.");
    goto LABEL_42;
  }

  v40 = v108;
  v83 = v108[5];
  ReferenceKeyBlob = createReferenceKeyBlob(0, 1, 0, &v83);
  objc_storeStrong(v40 + 5, v83);
  v86[3] = ReferenceKeyBlob;
  v42 = v108 + 5;
  if (!ReferenceKeyBlob)
  {
    MobileActivationError = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 561, @"com.apple.MobileActivation.ErrorDomain", -1, v108[5], @"Failed to create reference key.");
LABEL_47:
    v20 = MobileActivationError;
    v21 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  v82 = v108[5];
  v21 = security_create_external_representation(ReferenceKeyBlob, 0, &v82);
  objc_storeStrong(v42, v82);
  if (!v21)
  {
    MobileActivationError = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 567, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode RK as data.");
    goto LABEL_47;
  }

  v114[0] = @"Validity";
  v114[1] = @"scrtAttestation";
  v115[0] = &off_1003FBD68;
  v115[1] = &__kCFBooleanTrue;
  v43 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:2];
  v44 = [NSMutableDictionary dictionaryWithDictionary:v43];
  v45 = v43;
  v22 = v44;

  if (v18)
  {
    [(NSMutableDictionary *)v22 setObject:v18 forKeyedSubscript:@"NetworkTimeoutInterval"];
  }

  v55 = [NSMutableArray alloc];
  v113[0] = @"1.2.840.113635.100.8.3";
  v113[1] = @"1.2.840.113635.100.10.1";
  v113[2] = @"1.2.840.113635.100.8.4";
  v113[3] = @"1.2.840.113635.100.8.5";
  v113[4] = @"1.2.840.113635.100.8.7";
  v61 = [NSArray arrayWithObjects:v113 count:5];
  v56 = [v55 initWithArray:v61];
  [(NSMutableDictionary *)v22 setObject:v56 forKeyedSubscript:@"OIDSToInclude"];

  v57 = v108 + 5;
  v81 = v108[5];
  IsEnabled = FindMyDeviceIsEnabled(&v81);
  objc_storeStrong(v57, v81);
  if (IsEnabled || (v46 = v108[5]) == 0)
  {
    v48 = [v5 BOOLValue];
    locationa = v108 + 5;
    v80 = v108[5];
    v58 = copyTokenForActivationLock(v9, v13, v48, 0, &v80);
    objc_storeStrong(locationa, v80);
    if (v58 != 0 || !IsEnabled)
    {
      v49 = v108[5];
      v108[5] = 0;

      locationb = *(a1 + 40);
      v63 = *(a1 + 32);
      v64 = _NSConcreteStackBlock;
      v65 = 3254779904;
      v66 = ___performUCRTHealingOOB_block_invoke_2;
      v67 = &__block_descriptor_128_e8_32s40s48s56s64s72bs80r88r96r104r112r120r_e34_v24__0__NSDictionary_8__NSError_16l;
      v74 = &v107;
      v59 = v58;
      v68 = v59;
      v24 = v24;
      v69 = v24;
      v75 = &v85;
      v76 = v105;
      v70 = *(a1 + 40);
      v18 = v18;
      v71 = v18;
      v3 = v3;
      v72 = v3;
      v77 = &v93;
      v78 = &v99;
      v79 = &v89;
      v73 = *(a1 + 56);
      issueClientCertificateWithReferenceKey(v63, locationb, v21, 0, v22, &v64);

      goto LABEL_20;
    }

    v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 595, @"com.apple.MobileActivation.ErrorDomain", -1, v108[5], @"Failed to retrieve auth token.");
  }

  else
  {
    v20 = createMobileActivationError("_performUCRTHealingOOB_block_invoke", 589, @"com.apple.MobileActivation.ErrorDomain", -1, v46, @"Failed to query FindMy state.");
  }

LABEL_15:
  v25 = v108[5];
  v108[5] = v20;

  v26 = *(a1 + 56);
  if (v26)
  {
    (*(v26 + 16))(v26, v94[5], v100[5], v90[3], v108[5]);
  }

  v27 = v86;
  v28 = v86[3];
  if (v28)
  {
    CFRelease(v28);
    v27 = v86;
  }

  v27[3] = 0;
LABEL_20:

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(v105, 8);

  _Block_object_dispose(&v107, 8);
}

void sub_100314C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v54 - 216), 8);
  _Unwind_Resume(a1);
}

void ___performUCRTHealingOOB_block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3254779904;
  v16[2] = ___performUCRTHealingOOB_block_invoke_3;
  v16[3] = &__block_descriptor_144_e8_32s40s48s56s64s72s80s88bs96r104r112r120r128r136r_e5_v8__0l;
  v23 = *(a1 + 80);
  v17 = v6;
  v18 = v5;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v24 = *(a1 + 88);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  *v19 = v13;
  *v20 = v12;
  v21 = *(a1 + 64);
  v25 = *(a1 + 104);
  v26 = *(a1 + 120);
  v22 = *(a1 + 72);
  v14 = v5;
  v15 = v6;
  dispatch_async(v7, v16);
}

void ___performUCRTHealingOOB_block_invoke_3(uint64_t a1)
{
  error = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v2);
    v3 = 0;
LABEL_27:
    v12 = 0;
LABEL_28:
    v15 = 0;
LABEL_29:
    v22 = 0;
    v20 = 0;
    v18 = 0;
    v17 = 0;
LABEL_30:
    v26 = 0;
    v24 = 0;
    goto LABEL_31;
  }

  v3 = [*(a1 + 40) objectForKeyedSubscript:@"RKCertification"];
  v4 = isNSArray(v3);
  if (!v4 || [v3 count] != 2)
  {
    goto LABEL_25;
  }

  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = isNSData(v5);
  if (!v6)
  {

LABEL_25:
    goto LABEL_26;
  }

  v7 = v6;
  v8 = [v3 objectAtIndexedSubscript:1];
  v9 = isNSData(v8);

  if (!v9)
  {
LABEL_26:
    v31 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 626, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve BAA certificates.");
    v32 = *(*(a1 + 96) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    goto LABEL_27;
  }

  v10 = [v3 objectAtIndexedSubscript:0];
  v11 = *(*(a1 + 96) + 8);
  obj = *(v11 + 40);
  v12 = lockcrypto_create_pem(v10, "CERTIFICATE", &obj);
  objc_storeStrong((v11 + 40), obj);

  if (!v12)
  {
    v37 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 632, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 96) + 8) + 40), @"Failed to create PEM.");
    v38 = *(*(a1 + 96) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    goto LABEL_28;
  }

  v13 = [v3 objectAtIndexedSubscript:1];
  v14 = *(*(a1 + 96) + 8);
  v100 = *(v14 + 40);
  v15 = lockcrypto_create_pem(v13, "CERTIFICATE", &v100);
  objc_storeStrong((v14 + 40), v100);

  if (!v15)
  {
    v40 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 638, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 96) + 8) + 40), @"Failed to create PEM.");
    v41 = *(*(a1 + 96) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    goto LABEL_29;
  }

  v16 = +[GestaltHlpr getSharedInstance];
  v17 = [v16 copyAnswer:@"UniqueDeviceID"];

  v18 = isNSString(v17);
  if (!v18)
  {
    v43 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 644, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");
    v44 = *(*(a1 + 96) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;

    v22 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = v19;
  if (!v19)
  {
    v46 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 650, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v47 = *(*(a1 + 96) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = v46;

    v22 = 0;
    v18 = 0;
    goto LABEL_30;
  }

  [v19 setObject:v17 forKeyedSubscript:@"UniqueDeviceID"];
  [v20 setObject:*(a1 + 48) forKeyedSubscript:@"ActivationLockToken"];
  [v20 setObject:*(a1 + 56) forKeyedSubscript:@"UCRTRequestInfo"];
  v21 = *(*(a1 + 96) + 8);
  v99 = 0;
  v18 = [NSPropertyListSerialization dataWithPropertyList:v20 format:100 options:0 error:&v99];
  objc_storeStrong((v21 + 40), v99);
  if (!v18)
  {
    v49 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 660, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 96) + 8) + 40), @"Could not convert dictionary to xml data.");
    v50 = *(*(a1 + 96) + 8);
    v51 = *(v50 + 40);
    *(v50 + 40) = v49;

    v22 = 0;
    goto LABEL_30;
  }

  v22 = SecKeyCreateSignature(*(*(*(a1 + 104) + 8) + 24), kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v18, &error);
  if (!v22)
  {
    v52 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 666, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to sign data with ref key.");
    v53 = *(*(a1 + 96) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = v52;

    goto LABEL_30;
  }

  v23 = objc_alloc_init(NSMutableData);
  v24 = v23;
  if (!v23)
  {
    v55 = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 672, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.");
    v56 = *(*(a1 + 96) + 8);
    v57 = *(v56 + 40);
    *(v56 + 40) = v55;

    v26 = 0;
    goto LABEL_31;
  }

  [v23 appendData:v12];
  v25 = [@"\n" dataUsingEncoding:4];
  [v24 appendData:v25];

  [v24 appendData:v15];
  v103[0] = @"UCRTRequestInfoXML";
  v103[1] = @"BAACertification";
  v104[0] = v18;
  v104[1] = v24;
  v103[2] = @"BAASignature";
  v104[2] = v22;
  v26 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
  v27 = *(*(a1 + 112) + 8);
  v28 = *(v27 + 40);
  locationb = (v27 + 40);
  v93 = (*(*(a1 + 96) + 8) + 40);
  v97 = *v93;
  v98 = v28;
  v78 = createXMLRequest(v26, &v98, &v97);
  objc_storeStrong(locationb, v98);
  objc_storeStrong(v93, v97);
  if (v78)
  {
    v29 = [[NSString alloc] initWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", *(a1 + 64)];
    if (v29)
    {
      locationc = *(*(*(a1 + 112) + 8) + 40);
      v94 = v29;
      v79 = [NSURL URLWithString:@"https://albert.apple.com/deviceservices/ucertVend"];
      [locationc setURL:v79];

      [*(*(*(a1 + 112) + 8) + 40) setValue:v94 forHTTPHeaderField:@"User-Agent"];
      [*(*(*(a1 + 112) + 8) + 40) setValue:v17 forHTTPHeaderField:@"x-jmet-deviceid"];
      v30 = *(a1 + 72);
      if (v30)
      {
        locationd = *(*(*(a1 + 112) + 8) + 40);
        [v30 doubleValue];
        [locationd setTimeoutInterval:?];
      }

      if (is_internal_build())
      {
        locatione = [*(a1 + 80) objectForKeyedSubscript:?];
        v80 = isNSString(locatione);

        if (v80)
        {
          locationf = *(*(*(a1 + 112) + 8) + 40);
          v81 = [*(a1 + 80) objectForKeyedSubscript:@"UCRTOOBHealOverrideURL"];
          v73 = [NSURL URLWithString:v81];
          [locationf setURL:v73];
        }

        location = [*(a1 + 80) objectForKeyedSubscript:?];
        v82 = isNSNumber(location);
        if (v82)
        {
          v69 = [*(a1 + 80) objectForKeyedSubscript:@"UseReverseProxy"];
          v74 = [v69 BOOLValue];

          if (v74)
          {
            locationa = copyReverseProxyDictionary(0, 0, 0);
LABEL_50:
            v83 = formatURLRequest(*(*(*(a1 + 112) + 8) + 40));
            v75 = copy_log_directory_path();
            v70 = [v75 stringByAppendingPathComponent:@"ucrt_oob_request.txt"];
            [(NSMutableString *)v83 writeToFile:v70 atomically:0 encoding:4 error:0];

            v63 = *(*(*(a1 + 112) + 8) + 40);
            v64 = *(*(a1 + 128) + 8);
            v65 = *(v64 + 40);
            v76 = (v64 + 40);
            v66 = *(*(a1 + 136) + 8);
            v84 = (*(*(a1 + 96) + 8) + 40);
            v95 = *v84;
            v96 = v65;
            v71 = talkToServerWithError(v63, 0, 0, locationa, &v96, (v66 + 24), &v95);
            objc_storeStrong(v76, v96);
            objc_storeStrong(v84, v95);
            v67 = *(*(a1 + 120) + 8);
            v68 = *(v67 + 40);
            *(v67 + 40) = v71;

            v85 = formatURLResponse(*(*(*(a1 + 120) + 8) + 40), *(*(*(a1 + 136) + 8) + 24), *(*(*(a1 + 128) + 8) + 40));
            v77 = copy_log_directory_path();
            v72 = [v77 stringByAppendingPathComponent:@"ucrt_oob_response.txt"];
            [(NSMutableString *)v85 writeToFile:v72 atomically:0 encoding:4 error:0];

            v62 = locationa;
            goto LABEL_51;
          }
        }

        else
        {
        }
      }

      locationa = 0;
      goto LABEL_50;
    }

    MobileActivationError = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 691, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.");
  }

  else
  {
    MobileActivationError = createMobileActivationError("_performUCRTHealingOOB_block_invoke_3", 685, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create request.");
  }

  v59 = MobileActivationError;
  v60 = *(*(a1 + 96) + 8);
  v61 = *(v60 + 40);
  *(v60 + 40) = v59;
  v62 = v61;
LABEL_51:

LABEL_31:
  v34 = *(a1 + 88);
  if (v34)
  {
    (*(v34 + 16))(v34, *(*(*(a1 + 120) + 8) + 40), *(*(*(a1 + 128) + 8) + 40), *(*(*(a1 + 136) + 8) + 24), *(*(*(a1 + 96) + 8) + 40));
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  v35 = *(*(a1 + 104) + 8);
  v36 = *(v35 + 24);
  if (v36)
  {
    CFRelease(v36);
    v35 = *(*(a1 + 104) + 8);
  }

  *(v35 + 24) = 0;
}

void __copy_helper_block_e8_32s40s48s56s64s72s80s88b96r104r112r120r128r136r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  _Block_object_assign((a1 + 88), *(a2 + 88), 7);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  _Block_object_assign((a1 + 112), *(a2 + 112), 8);
  _Block_object_assign((a1 + 120), *(a2 + 120), 8);
  _Block_object_assign((a1 + 128), *(a2 + 128), 8);
  v11 = *(a2 + 136);

  _Block_object_assign((a1 + 136), v11, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96r104r112r120r128r136r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 136), 8);
  _Block_object_dispose(*(a1 + 128), 8);
  _Block_object_dispose(*(a1 + 120), 8);
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56s64s72b80r88r96r104r112r120r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  _Block_object_assign((a1 + 72), *(a2 + 72), 7);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  _Block_object_assign((a1 + 112), *(a2 + 112), 8);
  v9 = *(a2 + 120);

  _Block_object_assign((a1 + 120), v9, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80r88r96r104r112r120r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 120), 8);
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);

  v2 = *(a1 + 32);
}

void ___performUCRTOOB_block_invoke(uint64_t a1)
{
  v52 = -1;
  if (!*(a1 + 32) || !*(a1 + 40) || !*(a1 + 56))
  {
    v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 760, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v6 = 0;
    v45 = 0;
    v3 = 0;
    goto LABEL_8;
  }

  if (is_product_cellular())
  {
    v2 = *(a1 + 32);
    v51 = 0;
    v3 = copy_baseband_request_info(v2, 0, &v51);
    v4 = v51;

    if (!v3)
    {
      v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 769, @"com.apple.MobileActivation.ErrorDomain", -22, v4, @"Failed to copy baseband info.");

      v6 = 0;
      v45 = 0;
LABEL_8:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = [NSUserDefaults alloc];
  v15 = [v14 persistentDomainForName:@"com.apple.mobileactivationd"];

  v16 = [*(a1 + 48) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
  v17 = isNSNumber(v16);

  if (v17)
  {
    v12 = [*(a1 + 48) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    [v12 doubleValue];
    if (v18 <= 0.0)
    {
      v3 = v15;
      v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 780, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v12);

      v6 = 0;
      v45 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v44 = v12;
  }

  else
  {
    v44 = 0;
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v50 = v4;
  v21 = create_ucrt_info(v19, v20, &v50);
  v22 = v50;

  if (!v21)
  {
    v3 = v15;
    v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 787, @"com.apple.MobileActivation.ErrorDomain", -1, v22, @"Failed to create UCRT info.");

    v6 = 0;
    v45 = 0;
LABEL_32:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_40;
  }

  v48 = v22;
  v49 = 0;
  v23 = createXMLRequest(v21, &v49, &v48);
  v6 = v49;
  v24 = v48;

  v45 = v21;
  if ((v23 & 1) == 0)
  {
    v3 = v15;
    v5 = createMobileActivationError("_performUCRTOOB_block_invoke", 792, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create request.");

    goto LABEL_32;
  }

  v25 = +[GestaltHlpr getSharedInstance];
  v11 = [v25 copyAnswer:@"UniqueDeviceID"];

  v9 = isNSString(v11);
  if (v9)
  {
    v9 = [[NSString alloc] initWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", *(a1 + 40)];
    if (v9)
    {
      v26 = [NSURL URLWithString:@"https://tbsc.apple.com/oob/vend"];
      [v6 setURL:v26];

      [v6 setValue:v9 forHTTPHeaderField:@"User-Agent"];
      [v6 setValue:v11 forHTTPHeaderField:@"x-jmet-deviceid"];
      if (v44)
      {
        [v44 doubleValue];
        [v6 setTimeoutInterval:?];
      }

      if (is_internal_build())
      {
        v27 = [v15 objectForKeyedSubscript:@"UCRTOOBOverrideURL"];
        v28 = isNSString(v27);

        if (v28)
        {
          v29 = [v15 objectForKeyedSubscript:@"UCRTOOBOverrideURL"];
          v30 = [NSURL URLWithString:v29];
          [v6 setURL:v30];
        }

        v31 = [v15 objectForKeyedSubscript:@"UseReverseProxy"];
        v32 = isNSNumber(v31);
        if (v32)
        {
          v33 = v32;
          v3 = v15;
          v34 = [v15 objectForKeyedSubscript:@"UseReverseProxy"];
          v35 = [v34 BOOLValue];

          if (v35)
          {
            v10 = copyReverseProxyDictionary(0, 0, 0);
LABEL_39:
            v37 = formatURLRequest(v6);
            v38 = copy_log_directory_path();
            v39 = [v38 stringByAppendingPathComponent:@"ucrt_oob_request.txt"];
            [(NSMutableString *)v37 writeToFile:v39 atomically:0 encoding:4 error:0];

            v46 = v24;
            v47 = 0;
            v8 = talkToServerWithError(v6, 0, 0, v10, &v47, &v52, &v46);
            v7 = v47;
            v5 = v46;

            v42 = formatURLResponse(v8, v52, v7);
            v43 = copy_log_directory_path();
            v40 = [v43 stringByAppendingPathComponent:@"ucrt_oob_response.txt"];
            [NSMutableString writeToFile:v42 atomically:"writeToFile:atomically:encoding:error:" encoding:? error:?];

            goto LABEL_40;
          }
        }

        else
        {
          v3 = v15;
        }
      }

      else
      {
        v3 = v15;
      }

      v10 = 0;
      goto LABEL_39;
    }

    v3 = v15;
    MobileActivationError = createMobileActivationError("_performUCRTOOB_block_invoke", 804, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.", v41);
  }

  else
  {
    v3 = v15;
    MobileActivationError = createMobileActivationError("_performUCRTOOB_block_invoke", 798, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");
  }

  v5 = MobileActivationError;

  v7 = 0;
  v8 = 0;
  v10 = 0;
LABEL_40:
  v12 = v44;
LABEL_9:
  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, v8, v7, v52, v5);
  }
}

Class __getMSDKManagedDeviceClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!MobileStoreDemoKitLibraryCore_frameworkLibrary)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = __MobileStoreDemoKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = off_1003D18D0;
    v5 = 0;
    MobileStoreDemoKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileStoreDemoKitLibraryCore_frameworkLibrary)
  {
    __getMSDKManagedDeviceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MSDKManagedDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMSDKManagedDeviceClass_block_invoke_cold_1();
  }

  getMSDKManagedDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileStoreDemoKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileStoreDemoKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __performDCRTOOB_block_invoke(uint64_t a1)
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  cf = 0;
  if (!*(a1 + 32) || !*(a1 + 40))
  {
    v16 = createMobileActivationError("performDCRTOOB_block_invoke", 369, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v10 = 0;
    v15 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 48))
  {
    v2 = @"SDAK";
  }

  else
  {
    v2 = @"DAK";
  }

  if (*(a1 + 48))
  {
    v3 = 10;
  }

  else
  {
    v3 = 9;
  }

  v40 = 0;
  v4 = libaks_system_key_operate(v3, 1, &v40);
  v5 = v40;
  v6 = v5;
  if (v4)
  {
    v39 = v5;
    is_legacy = security_committed_uik_is_legacy(&v39);
    v8 = v39;

    if (v8)
    {
      v9 = is_legacy;
    }

    else
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      v16 = createMobileActivationError("performDCRTOOB_block_invoke", 393, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to query legacy UIK support.");
      v10 = 0;
      goto LABEL_27;
    }

    v38 = v8;
    v10 = libaks_system_key_collection(v3, 3, is_legacy, 0, &v38);
    v6 = v38;

    if (v10)
    {
      v37 = v6;
      v11 = libaks_system_key_get_public(v3, 3, &v37);
      v8 = v37;

      if (v11)
      {
        v12 = SecAccessControlCreate();
        if (v12)
        {
          v13 = kSecAttrAccessibleUntilReboot;
          if (SecAccessControlSetProtection())
          {
            v36 = v8;
            ReferenceKeyBlob = createReferenceKeyBlob(v12, 0, 0, &v36);
            v6 = v36;

            v43[3] = ReferenceKeyBlob;
            if (ReferenceKeyBlob)
            {
              v35 = v6;
              v15 = security_create_external_representation(ReferenceKeyBlob, 0, &v35);
              v16 = v35;

              if (v15)
              {
                v17 = objc_alloc_init(NSMutableDictionary);
                if (v17)
                {
                  v18 = copy_required_dcrt_oids();
                  [v17 setObject:v18 forKeyedSubscript:@"OIDSToInclude"];

                  [v17 setObject:v10 forKeyedSubscript:@"ClientAttestationData"];
                  [v17 setObject:v11 forKeyedSubscript:@"ClientAttestationPublicKey"];
                  v19 = [NSNumber numberWithBool:is_legacy];
                  [v17 setObject:v19 forKeyedSubscript:@"scrtAttestation"];

                  if (*(a1 + 48) == 1)
                  {
                    v20 = [NSNumber numberWithUnsignedInt:2];
                  }

                  else
                  {
                    v20 = [NSNumber numberWithUnsignedInt:0];
                  }

                  v28 = v20;
                  [v17 setObject:v20 forKeyedSubscript:@"CertType"];

                  v29 = *(a1 + 32);
                  v30 = copy_calling_process_name();
                  if (*(a1 + 48))
                  {
                    v31 = 3;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  v32[0] = _NSConcreteStackBlock;
                  v32[1] = 3254779904;
                  v32[2] = __performDCRTOOB_block_invoke_2;
                  v32[3] = &__block_descriptor_48_e8_32bs40r_e34_v24__0__NSDictionary_8__NSError_16l;
                  v33 = *(a1 + 40);
                  v34 = &v42;
                  issueClientCertificateWithReferenceKey(v29, v30, v15, v31, v17, v32);

LABEL_35:
                  CFRelease(v12);
                  v25 = v17;
                  goto LABEL_36;
                }

                v27 = createMobileActivationError("performDCRTOOB_block_invoke", 445, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
              }

              else
              {
                v27 = createMobileActivationError("performDCRTOOB_block_invoke", 437, @"com.apple.MobileActivation.ErrorDomain", -1, v16, @"Failed to encode RK as data.");
                v15 = 0;
              }

              v6 = v16;
              v16 = v27;
            }

            else
            {
              v16 = createMobileActivationError("performDCRTOOB_block_invoke", 431, @"com.apple.MobileActivation.ErrorDomain", -1, v6, @"Failed to create reference key.");
              v15 = 0;
            }

            goto LABEL_29;
          }

          v16 = createMobileActivationError("performDCRTOOB_block_invoke", 425, @"com.apple.MobileActivation.ErrorDomain", -1, cf, @"Failed to set ACL protection to %@.", v13);
          v15 = 0;
        }

        else
        {
          v16 = createMobileActivationError("performDCRTOOB_block_invoke", 420, @"com.apple.MobileActivation.ErrorDomain", -1, cf, @"Failed to create access control.");
          v15 = 0;
          v12 = 0;
        }

        goto LABEL_28;
      }

      v16 = createMobileActivationError("performDCRTOOB_block_invoke", 411, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to query %@ public key.", v2);
LABEL_27:
      v15 = 0;
      v12 = 0;
      v11 = 0;
LABEL_28:
      v6 = v8;
      goto LABEL_29;
    }

    v26 = "UIK";
    if (is_legacy)
    {
      v26 = "SIK";
    }

    v21 = createMobileActivationError("performDCRTOOB_block_invoke", 403, @"com.apple.MobileActivation.ErrorDomain", -11, v6, @"Failed to attest %@ to %s.", v2, v26);
  }

  else
  {
    v21 = createMobileActivationError("performDCRTOOB_block_invoke", 381, @"com.apple.MobileActivation.ErrorDomain", -1, v5, @"Failed to bump %@.", v2);
  }

  v16 = v21;
  v10 = 0;
  v15 = 0;
  v12 = 0;
  v11 = 0;
LABEL_29:

LABEL_30:
  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, 0, v16);
  }

  v23 = v43;
  v24 = v43[3];
  if (v24)
  {
    CFRelease(v24);
    v23 = v43;
  }

  v17 = 0;
  v25 = 0;
  v23[3] = 0;
  if (v12)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v42, 8);
}

void sub_100316E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __performDCRTOOB_block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 24);
  if (v9)
  {
    CFRelease(v9);
    v8 = *(*(a1 + 40) + 8);
  }

  *(v8 + 24) = 0;
}

void __copy_helper_block_e8_32b40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id copySplunkDeviceIdentifiers(void *a1, NSError **a2)
{
  v2 = a1;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__6;
  v76 = __Block_byref_object_dispose__6;
  v77 = 0;
  v3 = copySplunkUUIDQueue();
  if (v3)
  {
    block = _NSConcreteStackBlock;
    v62 = 3254779904;
    v63 = __copySplunkLogUUID_block_invoke;
    v64 = &__block_descriptor_48_e8_32s40r_e5_v8__0l;
    v65 = v2;
    v66 = &v72;
    dispatch_sync(v3, &block);

    v60 = v73[5];
  }

  else
  {
    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      copySplunkDeviceIdentifiers_cold_1();
    }

    v60 = 0;
  }

  _Block_object_dispose(&v72, 8);

  if (!v60)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 165, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"uuidString");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v59 = 0;
LABEL_30:
    v35 = 0;
LABEL_31:
    v45 = v44;

    v46 = 0;
    v47 = 1;
    goto LABEL_32;
  }

  v5 = +[GestaltHlpr getSharedInstance];
  v59 = [v5 copyAnswer:@"DeviceClass"];

  v6 = isNSString(v59);
  v7 = v6 == 0;

  if (v7)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 171, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"DeviceClass");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_30;
  }

  v8 = +[GestaltHlpr getSharedInstance];
  v57 = [v8 copyAnswer:@"DeviceVariant"];

  v9 = isNSString(v57);
  v10 = v9 == 0;

  if (v10)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 177, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"DeviceVariant");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    goto LABEL_30;
  }

  v11 = +[GestaltHlpr getSharedInstance];
  v56 = [v11 copyAnswer:@"HWModelStr"];

  v12 = isNSString(v56);
  v13 = v12 == 0;

  if (v13)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 183, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"HWModelStr");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_30;
  }

  v14 = +[GestaltHlpr getSharedInstance];
  v55 = [v14 copyAnswer:@"ProductType"];

  v15 = isNSString(v55);
  v16 = v15 == 0;

  if (v16)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 189, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"ProductType");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    v54 = 0;
    goto LABEL_30;
  }

  v17 = +[GestaltHlpr getSharedInstance];
  v54 = [v17 copyAnswer:@"BuildVersion"];

  v18 = isNSString(v54);
  v19 = v18 == 0;

  if (v19)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 195, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"BuildVersion");
    v25 = 0;
    v41 = 0;
    v37 = 0;
    v29 = 0;
    v21 = 0;
    goto LABEL_30;
  }

  v20 = +[GestaltHlpr getSharedInstance];
  v21 = [v20 copyAnswer:@"ProductVersion"];

  v22 = isNSString(v21);
  v23 = v22 == 0;

  if (v23)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 201, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"ProductVersion");
    v25 = 0;
LABEL_29:
    v41 = 0;
    v37 = 0;
    v29 = 0;
    goto LABEL_30;
  }

  v24 = +[GestaltHlpr getSharedInstance];
  v25 = [v24 copyAnswer:@"SigningFuse"];

  v26 = isNSNumber(v25);
  v27 = v26 == 0;

  if (v27)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 207, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"SigningFuse");
    goto LABEL_29;
  }

  v28 = +[GestaltHlpr getSharedInstance];
  v29 = [v28 copyAnswer:@"ReleaseType"];

  v30 = isNSString(v29);
  v31 = v30 == 0;

  if (v31)
  {

    v29 = @"Customer";
  }

  v32 = [NSMutableDictionary alloc];
  block = @"deviceClass";
  v62 = @"deviceVariant";
  v72 = v59;
  v73 = v57;
  v63 = @"hardwareModel";
  v64 = @"productType";
  v74 = v56;
  v75 = v55;
  v65 = @"buildVersion";
  v66 = @"productVersion";
  v76 = v54;
  v77 = v21;
  v67 = @"releaseType";
  v68 = @"productionFused";
  v78 = v29;
  v79 = v25;
  v80 = v60;
  v69 = @"uuidString";
  v70 = @"hactivationEnabled";
  v33 = [NSNumber numberWithBool:use_hactivation()];
  v81 = v33;
  v71 = @"diagnosticsCheckEnabled";
  v82 = &__kCFBooleanTrue;
  v34 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&block count:11];
  v35 = [v32 initWithDictionary:v34];

  if (!has_internal_diagnostics() && !is_internal_build())
  {
    v37 = 0;
    v41 = 0;
    goto LABEL_43;
  }

  v36 = +[GestaltHlpr getSharedInstance];
  v37 = [v36 copyAnswer:@"SerialNumber"];

  v38 = isNSString(v37);
  v39 = v38 == 0;

  if (v39)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 233, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"SerialNumber");
    v41 = 0;
    goto LABEL_31;
  }

  [v35 setObject:v37 forKeyedSubscript:@"serialNumber"];
  v40 = +[GestaltHlpr getSharedInstance];
  v41 = [v40 copyAnswer:@"UniqueDeviceID"];

  v42 = isNSString(v41);
  v43 = v42 == 0;

  if (v43)
  {
    v44 = createMobileActivationError("copy_splunk_identifier_info", 241, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");
    goto LABEL_31;
  }

  [v35 setObject:v41 forKeyedSubscript:@"uniqueDeviceID"];
LABEL_43:
  v46 = v35;
  v44 = 0;
  if (!v46)
  {
    v35 = 0;
    goto LABEL_31;
  }

  v35 = v46;
  v47 = 0;
LABEL_32:
  v48 = v46;

  v49 = v44;
  if (v47)
  {
    v50 = createAndLogError("copySplunkDeviceIdentifiers", 925, @"com.apple.MobileActivation.ErrorDomain", -1, v49, @"Failed to query splunk identifier info.");

    v51 = 0;
    v49 = v50;
  }

  else
  {
    v51 = v48;
  }

  if (a2 && !v51)
  {
    v52 = v49;
    *a2 = v49;
  }

  return v51;
}

id copySplunkDailyStatistics(void *a1, NSError **a2)
{
  v2 = a1;
  v101 = data_ark_copy(v2, 0, @"ActivationState");
  v3 = copy_ucrt_path();
  v4 = [v3 stringByAppendingPathComponent:@"ucrt.pem"];

  if (!v4)
  {
    MobileActivationError = createMobileActivationError("copy_splunk_daily_statistics_info", 392, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create UCRT file path.");
LABEL_31:
    v24 = MobileActivationError;
    v25 = 0;
    v99 = 0;
    v100 = 0;
    v97 = 0;
    v98 = 0;
    v95 = 0;
    v96 = 0;
    v93 = 0;
    v94 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [(NSFileManager *)v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  v8 = copy_dcrt_path();
  v9 = [v8 stringByAppendingPathComponent:@"dcrt.der"];

  if (!v9)
  {
    v24 = createMobileActivationError("copy_splunk_daily_statistics_info", 406, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create DCRT file path.");
    v25 = 0;
    v99 = 0;
    v100 = 0;
    v97 = 0;
    v98 = 0;
    v95 = 0;
    v96 = 0;
    v93 = 0;
    v94 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_32:
    v92 = 0;
LABEL_33:
    v53 = v24;
    v54 = 0;
    v55 = v24;
    goto LABEL_34;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [(NSFileManager *)v10 fileExistsAtPath:v9];

  if (v11)
  {
    v12 = &__kCFBooleanTrue;
  }

  else
  {
    v12 = &__kCFBooleanFalse;
  }

  v13 = copy_dcrt_path();
  v14 = [v13 stringByAppendingPathComponent:@"sdcrt.der"];

  if (!v14)
  {
    MobileActivationError = createMobileActivationError("copy_splunk_daily_statistics_info", 420, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create SDCRT file path.");
    goto LABEL_31;
  }

  v90 = v7;
  v15 = +[NSFileManager defaultManager];
  v16 = [(NSFileManager *)v15 fileExistsAtPath:v14];

  if (v16)
  {
    v17 = &__kCFBooleanTrue;
  }

  else
  {
    v17 = &__kCFBooleanFalse;
  }

  v88 = v17;
  v18 = copy_suinfo_directory_path();
  v19 = [v18 stringByAppendingPathComponent:@"psc.sui"];

  v92 = v19;
  v93 = v14;
  v89 = v12;
  if (v19 && (v20 = +[NSFileManager defaultManager], v21 = [(NSFileManager *)v20 fileExistsAtPath:v19 isDirectory:0], v20, (v21 & 1) != 0))
  {
    v22 = &__kCFBooleanTrue;
  }

  else
  {
    v22 = &__kCFBooleanFalse;
  }

  v87 = v22;
  v100 = data_ark_copy(v2, 0, @"CollectionLastPerformed");
  v29 = data_ark_copy(v2, 0, @"UCRTOOBLastPerformed");
  v99 = isNSString(v29);

  v30 = data_ark_copy(v2, 0, @"DCRTOOBLastPerformed");
  v98 = isNSString(v30);

  v31 = data_ark_copy(v2, 0, @"SDCRTOOBLastPerformed");
  v97 = isNSString(v31);

  v32 = data_ark_copy(v2, 0, @"LastActivated");
  v96 = isNSString(v32);

  v33 = data_ark_copy(v2, 0, @"UCRTHealingRequired");
  v34 = isNSNumber(v33);

  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = &__kCFBooleanFalse;
  }

  v95 = v35;
  v36 = data_ark_copy(v2, 0, @"UIKUpgradeRequired");
  v37 = isNSNumber(v36);

  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = &__kCFBooleanFalse;
  }

  v94 = v38;
  [@"com.apple.mobileactivationd" UTF8String];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if ((os_variant_is_darwinos() & 1) == 0)
  {
    v104 = 0;
    v64 = hasPrimaryICloudAccount(&v104);
    v65 = v104;
    v66 = [NSNumber numberWithBool:v64];
    v26 = v66;
    if (v65)
    {
      v24 = createMobileActivationError("copy_splunk_daily_statistics_info", 554, @"com.apple.MobileActivation.ErrorDomain", -1, v65, @"Failed to query primary iCloud account state.");

      v25 = 0;
      v27 = 0;
LABEL_48:
      v28 = 0;
LABEL_49:
      v9 = 0;
      goto LABEL_33;
    }

    if ([(NSNumber *)v66 BOOLValue])
    {
      v103 = 0;
      IsHSA2 = primaryICloudAccountIsHSA2(&v103);
      v69 = v103;
      v27 = [NSNumber numberWithBool:IsHSA2];
      if (v69)
      {
        v24 = createMobileActivationError("copy_splunk_daily_statistics_info", 563, @"com.apple.MobileActivation.ErrorDomain", -1, v69, @"Failed to query primary iCloud account security state.");

        v25 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v27 = 0;
    }

    v102 = 0;
    IsEnabled = FindMyDeviceIsEnabled(&v102);
    v74 = v102;
    v28 = [NSNumber numberWithBool:IsEnabled];
    if (!v74)
    {
      goto LABEL_26;
    }

    v24 = createMobileActivationError("copy_splunk_daily_statistics_info", 572, @"com.apple.MobileActivation.ErrorDomain", -1, v74, @"Failed to query FindMy state.");

    v25 = 0;
    goto LABEL_49;
  }

LABEL_26:
  v9 = [NSNumber numberWithBool:is_dsp_device()];
  v39 = v2;
  v40 = copy_activation_record(v39);
  v85 = v40;
  v86 = v39;
  v84 = v26;
  if (!v40)
  {
    v83 = 0;
    v67 = 0;
LABEL_55:
    v50 = 0;
LABEL_56:
    v70 = v67;
    v25 = 0;
    v71 = 1;
    v72 = v67;
    goto LABEL_63;
  }

  v105 = 0;
  v41 = v40;
  v42 = extract_account_token(v40, &v105);
  v43 = v105;
  v44 = v43;
  v82 = v42;
  if (!v42)
  {
    v67 = createMobileActivationError("copy_splunk_activation_validation_info", 301, @"com.apple.MobileActivation.ErrorDomain", -1, v43, @"Failed to extract account token.");

    v83 = 0;
    goto LABEL_55;
  }

  v81 = v43;
  v108[0] = @"UseEnhancedValidation";
  v108[1] = @"SkipUCRTValidation";
  v109[0] = &__kCFBooleanTrue;
  v109[1] = &__kCFBooleanTrue;
  v108[2] = @"SkipActivationRandomnessCheck";
  v109[2] = &__kCFBooleanTrue;
  v45 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:3];
  v106[0] = @"activationRecordValid";
  v83 = v45;
  v80 = [NSNumber numberWithBool:verify_activation_record(v39, v41, v45, 0)];
  v107[0] = v80;
  v106[1] = @"activationRecordContainsUCRT";
  v46 = [v41 objectForKey:@"UniqueDeviceCertificate"];
  v47 = v46 != 0;

  v79 = [NSNumber numberWithBool:v47];
  v107[1] = v79;
  v106[2] = @"activationRecordProductTypeValid";
  v78 = NSNumber;
  v48 = v82;
  v49 = is_product_cellular();
  v50 = v48;
  v51 = [v50 objectForKey:@"ActivationTicket"];
  if (v51)
  {
    v52 = 1;
  }

  else
  {
    v75 = [v50 objectForKey:@"WildcardTicket"];
    v52 = v75 != 0;
  }

  v76 = [NSNumber numberWithBool:v49 ^ v52 ^ 1u];
  v107[2] = v76;
  v25 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:3];

  if (!v25)
  {
    v67 = v81;
    goto LABEL_56;
  }

  v71 = 0;
  v72 = 0;
  v67 = v81;
LABEL_63:

  v55 = v72;
  if (v71)
  {
    v24 = createMobileActivationError("copy_splunk_daily_statistics_info", 584, @"com.apple.MobileActivation.ErrorDomain", -1, v55, @"Failed to create activation validation info.");

    v25 = 0;
    v26 = v84;
    goto LABEL_33;
  }

  v77 = objc_alloc_init(NSMutableDictionary);
  v26 = v84;
  if (!v77)
  {
    v24 = createMobileActivationError("copy_splunk_daily_statistics_info", 591, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");

    goto LABEL_33;
  }

  v54 = v77;
  if (v101)
  {
    [v77 setObject:v101 forKeyedSubscript:@"activationState"];
  }

  [v54 setObject:v90 forKeyedSubscript:{@"ucrtAvailable", v78}];
  [v54 setObject:v87 forKeyedSubscript:@"pcrtAvailable"];
  [v54 setObject:v89 forKeyedSubscript:@"dcrtAvailable"];
  [v54 setObject:v88 forKeyedSubscript:@"sdcrtAvailable"];
  if (v100)
  {
    [v54 setObject:v100 forKeyedSubscript:@"collectionLastPerformedBuild"];
  }

  if (v99)
  {
    [v54 setObject:v99 forKeyedSubscript:@"ucrtOOBLastPerformedBuild"];
  }

  if (v98)
  {
    [v54 setObject:v98 forKeyedSubscript:@"dcrtOOBLastPerformedBuild"];
  }

  if (v97)
  {
    [v54 setObject:v97 forKeyedSubscript:@"sdcrtOOBLastPerformedBuild"];
  }

  if (v96)
  {
    [v54 setObject:v96 forKeyedSubscript:@"activationLastPerformedBuild"];
  }

  [v54 setObject:v95 forKeyedSubscript:@"ucrtHealingRequired"];
  [v54 setObject:v94 forKeyedSubscript:@"uikUpgradeRequired"];
  if (v84)
  {
    [v54 setObject:v84 forKeyedSubscript:@"iCloudEnabled"];
  }

  if (v27)
  {
    [v54 setObject:v27 forKeyedSubscript:@"iCloudHSA2Enabled"];
  }

  if (v28)
  {
    [v54 setObject:v28 forKeyedSubscript:@"findMyEnabled"];
  }

  if (v9)
  {
    [v54 setObject:v9 forKeyedSubscript:@"DSPDevice"];
  }

  [v54 addEntriesFromDictionary:v25];
  v24 = 0;
LABEL_34:

  v56 = v24;
  if (!v54)
  {
    v60 = createAndLogError("copySplunkDailyStatistics", 979, @"com.apple.MobileActivation.ErrorDomain", -1, v56, @"Failed to query daily splunk info.", v78);
LABEL_39:
    v61 = v60;

    if (a2)
    {
      v62 = v61;
      v59 = 0;
      *a2 = v61;
    }

    else
    {
      v59 = 0;
    }

    v56 = v61;
    goto LABEL_43;
  }

  v57 = objc_alloc_init(NSMutableDictionary);
  if (!v57)
  {
    v60 = createAndLogError("copySplunkDailyStatistics", 1008, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v78);
    goto LABEL_39;
  }

  v58 = v57;
  [v57 addEntriesFromDictionary:v54];
  v59 = v58;
LABEL_43:

  return v59;
}

id copySortedSplunkFileList()
{
  v0 = objc_alloc_init(NSMutableArray);
  if (v0)
  {
    v1 = copy_splunk_directory_path();
    v2 = copy_sorted_file_list(v1);

    if (v2)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v16 = v2;
      v3 = v2;
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v18;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v18 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v17 + 1) + 8 * i);
            v9 = isNSURL(v8);
            if (v9)
            {
              v10 = v9;
              v11 = [v8 pathExtension];
              v12 = [v11 isEqualToString:@"splunklog"];

              if (v12)
              {
                v13 = [v8 path];
                [v0 addObject:v13];
              }
            }
          }

          v5 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v5);
      }

      v2 = v16;
    }

    v14 = v0;
  }

  return v0;
}

void writeSplunkLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v15 = a1;
  v16 = a6;
  v17 = a7;
  v30 = 0;
  if (DiagnosticLogSubmissionEnabled())
  {
    v18 = copySplunkQueue();
    if (v18)
    {
      v19 = v18;
      if (v17)
      {
        v30 = &a9;
        v20 = [[NSMutableString alloc] initWithFormat:v17 arguments:&a9];
      }

      else
      {
        v20 = 0;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3254779904;
      v22[2] = __writeSplunkLog_block_invoke;
      v22[3] = &__block_descriptor_84_e8_32s40s48s_e5_v8__0l;
      v23 = v15;
      v26 = a2;
      v27 = a3;
      v29 = a5;
      v24 = v16;
      v25 = v20;
      v28 = a4;
      v21 = v20;
      dispatch_async(v19, v22);
    }

    else
    {
      v19 = copyLoggingHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        copySplunkDeviceIdentifiers_cold_1();
      }
    }
  }
}

id copySplunkQueue()
{
  if (copySplunkQueue_onceToken != -1)
  {
    copySplunkQueue_cold_1();
  }

  v1 = copySplunkQueue_splunkQueue;

  return v1;
}

void __writeSplunkLog_block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = copyLoggingHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_14();
    }

    goto LABEL_59;
  }

  v2 = copy_splunk_directory_path();
  if (!v2)
  {
    v3 = copyLoggingHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_13();
    }

    goto LABEL_59;
  }

  v3 = v2;
  v4 = +[NSFileManager defaultManager];
  v130 = NSFilePosixPermissions;
  v131 = &off_1003FBD80;
  v5 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
  v122 = 0;
  v6 = [(NSFileManager *)v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:v5 error:&v122];
  v7 = v122;

  if ((v6 & 1) == 0)
  {
    v28 = copyLoggingHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_1();
    }

    v29 = v28;
    goto LABEL_57;
  }

  v8 = +[NSDate date];
  [(NSDate *)v8 timeIntervalSince1970];
  v10 = [NSNumber numberWithLong:1000 * v9];

  v11 = objc_alloc_init(NSMutableDictionary);
  if (!v11)
  {
    v30 = copyLoggingHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_12();
    }

    v29 = v10;
    goto LABEL_57;
  }

  v12 = v11;
  v13 = *(a1 + 32);
  v121 = v7;
  v14 = copySplunkDeviceIdentifiers(v13, &v121);
  v15 = v121;

  if (!v14)
  {
    v31 = copyLoggingHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_11();
    }

    v32 = v15;
    goto LABEL_58;
  }

  if (*(a1 + 40))
  {
    [v12 addEntriesFromDictionary:?];
  }

  [@"com.apple.mobileactivationd" UTF8String];
  if (os_variant_is_darwinos())
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v120 = v15;
    v33 = hasPrimaryICloudAccount(&v120);
    v7 = v120;

    v34 = [NSNumber numberWithBool:v33];
    v18 = v34;
    if (v7)
    {
      v35 = copyLoggingHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        __writeSplunkLog_block_invoke_cold_2();
      }

      v36 = v35;
      goto LABEL_56;
    }

    if ([(NSNumber *)v34 BOOLValue])
    {
      v119 = 0;
      IsHSA2 = primaryICloudAccountIsHSA2(&v119);
      v7 = v119;
      v103 = [NSNumber numberWithBool:IsHSA2];
      if (v7)
      {
        v39 = copyLoggingHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          __writeSplunkLog_block_invoke_cold_3();
        }

        v40 = v39;
        goto LABEL_55;
      }
    }

    else
    {
      v103 = 0;
    }

    v118 = 0;
    IsEnabled = FindMyDeviceIsEnabled(&v118);
    v7 = v118;
    v16 = [NSNumber numberWithBool:IsEnabled];
    if (v7)
    {
      v37 = copyLoggingHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        __writeSplunkLog_block_invoke_cold_4();
      }

      goto LABEL_53;
    }

    v15 = 0;
    v17 = v103;
  }

  [v12 setObject:v18 forKeyedSubscript:@"iCloudEnabled"];
  v103 = v17;
  [v12 setObject:v17 forKeyedSubscript:@"iCloudHSA2Enabled"];
  [v12 setObject:v16 forKeyedSubscript:@"findMyEnabled"];
  [v12 addEntriesFromDictionary:v14];
  v19 = [(NSNumber *)v10 stringValue];
  [v12 setObject:v19 forKeyedSubscript:@"eventTime"];

  v20 = [NSNumber numberWithInteger:*(a1 + 56)];
  [v12 setObject:v20 forKeyedSubscript:@"splunkErrorCategory"];

  v21 = [NSNumber numberWithInteger:*(a1 + 64)];
  [v12 setObject:v21 forKeyedSubscript:@"spiErrorCode"];

  [v12 setObject:@"1068.42.2" forKeyedSubscript:@"projectVersion"];
  v22 = [NSNumber numberWithInt:*(a1 + 80)];
  [v12 setObject:v22 forKeyedSubscript:@"lineNumber"];

  v102 = a1;
  v23 = *(a1 + 48);
  if (v23)
  {
    [v12 setObject:v23 forKeyedSubscript:@"errorString"];
  }

  if (*(a1 + 72))
  {
    v24 = [NSString stringWithUTF8String:?];
    [v12 setObject:v24 forKeyedSubscript:@"functionName"];
  }

  v117 = 0;
  v25 = [NSPropertyListSerialization dataWithPropertyList:v12 format:200 options:0 error:&v117];
  v7 = v117;

  if (!v25)
  {
    v37 = copyLoggingHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_10();
    }

LABEL_53:
    v27 = v37;
LABEL_54:

    v40 = v16;
LABEL_55:

    v36 = v103;
LABEL_56:

    v29 = v14;
LABEL_57:

    v32 = v7;
LABEL_58:

    goto LABEL_59;
  }

  if ([(NSData *)v25 length]> 0x100000)
  {
    v26 = copyLoggingHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_9(v25, v26);
    }

    v27 = v25;
    goto LABEL_54;
  }

  v99 = v25;
  v41 = copySortedSplunkFileList();
  v100 = v16;
  v94 = v41;
  v95 = v18;
  if (v41)
  {
    v42 = [[NSMutableArray alloc] initWithArray:v41];
    if ([v42 count] >= 0x15)
    {
      do
      {
        v43 = copyLoggingHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          __writeSplunkLog_block_invoke_cold_5(v128, v42, &v129, v43);
        }

        v44 = +[NSFileManager defaultManager];
        v45 = [v42 lastObject];
        [(NSFileManager *)v44 removeItemAtPath:v45 error:0];

        [v42 removeLastObject];
      }

      while ([v42 count] > 0x14);
    }
  }

  else
  {
    v42 = 0;
  }

  v96 = v10;
  v97 = v14;
  v101 = v12;
  v98 = v3;
  v116 = 0u;
  v114 = 0u;
  v115 = 0u;
  v113 = 0u;
  obj = v42;
  v47 = [obj countByEnumeratingWithState:&v113 objects:v127 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = *v114;
LABEL_63:
    v51 = 0;
    while (1)
    {
      v52 = v49;
      if (*v114 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v113 + 1) + 8 * v51);
      v54 = +[NSFileManager defaultManager];
      v112 = v7;
      v49 = [(NSFileManager *)v54 attributesOfItemAtPath:v53 error:&v112];
      v55 = v112;

      if (v49)
      {
        v56 = [(NSDictionary *)v49 objectForKeyedSubscript:NSFileSize];
        v57 = isNSNumber(v56);

        if (v57)
        {
          v58 = [NSData alloc];
          v111 = v55;
          v59 = [v58 initWithContentsOfFile:v53 options:0 error:&v111];
          v60 = v111;

          if (v59)
          {
            v109 = 0;
            v61 = [NSPropertyListSerialization propertyListWithData:v59 options:0 format:0 error:&v109];
            v7 = v109;

            v62 = isNSArray(v61);
            if (v62)
            {
              v63 = v62;
              v64 = [v61 count];

              if (v64 < 0x3E9)
              {
                v74 = [(NSDictionary *)v49 objectForKeyedSubscript:NSFileSize];
                v75 = [v74 integerValue];

                v76 = [NSMutableArray arrayWithArray:v61];
                v77 = v53;

                if (v76 && [(NSMutableArray *)v76 count]!= 1000 && [(NSData *)v99 length]+ v75 <= 0x100000)
                {
                  [(NSMutableArray *)v76 addObject:v101];
                  goto LABEL_96;
                }

                goto LABEL_95;
              }
            }

            v65 = copyLoggingHandle();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v124 = v53;
              v125 = 2112;
              v126 = v7;
              _os_log_fault_impl(&_mh_execute_header, v65, OS_LOG_TYPE_FAULT, "Invalid splunk file (%@): %@", buf, 0x16u);
            }

            v66 = +[NSFileManager defaultManager];
            [(NSFileManager *)v66 removeItemAtPath:0 error:0];

            v67 = v61;
          }

          else
          {
            v72 = copyLoggingHandle();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v124 = v53;
              v125 = 2112;
              v126 = v60;
              _os_log_fault_impl(&_mh_execute_header, v72, OS_LOG_TYPE_FAULT, "Failed to load %@: %@", buf, 0x16u);
            }

            v59 = +[NSFileManager defaultManager];
            v110 = v60;
            [(NSFileManager *)v59 removeItemAtPath:v53 error:&v110];
            v7 = v110;
            v67 = v60;
          }

          goto LABEL_83;
        }

        v68 = copyLoggingHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v124 = v53;
          v69 = v68;
          v70 = "Failed to retrieve size of %@.";
          v71 = 12;
          goto LABEL_86;
        }
      }

      else
      {
        v68 = copyLoggingHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v124 = v53;
          v125 = 2112;
          v126 = v55;
          v69 = v68;
          v70 = "Failed to retrieve attributes for %@: (%@)";
          v71 = 22;
LABEL_86:
          _os_log_fault_impl(&_mh_execute_header, v69, OS_LOG_TYPE_FAULT, v70, buf, v71);
        }
      }

      v59 = +[NSFileManager defaultManager];
      [(NSFileManager *)v59 removeItemAtPath:v53 error:0];
      v7 = v55;
LABEL_83:

      if (v48 == ++v51)
      {
        v73 = [obj countByEnumeratingWithState:&v113 objects:v127 count:16];
        v48 = v73;
        if (v73)
        {
          goto LABEL_63;
        }

        goto LABEL_94;
      }
    }
  }

  v49 = 0;
LABEL_94:

  v76 = 0;
  v77 = 0;
LABEL_95:
  v78 = v77;
  v79 = v76;
  v80 = [NSString alloc];
  v81 = copy_splunk_directory_path();
  v82 = +[NSUUID UUID];
  v83 = [(NSUUID *)v82 UUIDString];
  v77 = [v80 initWithFormat:@"%@/%@.splunklog", v81, v83];

  v76 = [[NSMutableArray alloc] initWithObjects:{v101, 0}];
  if (v76)
  {
LABEL_96:
    v108 = 0;
    v84 = [NSPropertyListSerialization dataWithPropertyList:v76 format:200 options:0 error:&v108];
    v85 = v108;

    if (v84)
    {
      v107 = v85;
      v86 = store_data(v77, v84, &v107);
      v87 = v107;

      if (v86)
      {
        v88 = [@"com.apple.mobileactivationd.splunklogging" UTF8String];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3254779904;
        handler[2] = __writeSplunkLog_block_invoke_45;
        handler[3] = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v106 = *(v102 + 32);
        xpc_activity_register(v88, XPC_ACTIVITY_CHECK_IN, handler);

        v89 = v99;
      }

      else
      {
        v93 = copyLoggingHandle();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
        {
          __writeSplunkLog_block_invoke_cold_6();
        }

        v89 = v99;
      }

      v91 = v87;
    }

    else
    {
      v92 = copyLoggingHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        __writeSplunkLog_block_invoke_cold_7();
      }

      v91 = v85;
    }
  }

  else
  {
    v90 = copyLoggingHandle();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_cold_8();
    }

    v91 = v7;
  }

  v3 = v98;
LABEL_59:
}

void __writeSplunkLog_block_invoke_45(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && xpc_activity_should_defer(v3))
  {
    if (xpc_activity_set_state(v3, 3))
    {
      goto LABEL_11;
    }

    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __writeSplunkLog_block_invoke_45_cold_1();
    }
  }

  v5 = xpc_activity_copy_criteria(v3);
  if (!v5 || xpc_activity_get_state(v3) == 2)
  {
    splunk_activity_handler(*(a1 + 32), v5 == 0);
  }

LABEL_11:
}

void splunk_activity_handler(void *a1, int a2)
{
  v3 = a1;
  v4 = copySplunkQueue();
  if (v4)
  {
    if (a2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3254779904;
      block[2] = __splunk_activity_handler_block_invoke;
      block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v12 = v3;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
      dispatch_async(v4, v5);
      v6 = v12;
    }

    else
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3254779904;
      v8[2] = __splunk_activity_handler_block_invoke_51;
      v8[3] = &__block_descriptor_48_e8_32s40s_e5_v8__0l;
      v9 = v3;
      v7 = v4;
      v10 = v7;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v8);
      dispatch_async(v7, v5);

      v6 = v9;
    }
  }

  else
  {
    v5 = copyLoggingHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      copySplunkDeviceIdentifiers_cold_1();
    }
  }
}

void __splunk_activity_handler_block_invoke(uint64_t a1)
{
  data_ark_remove(*(a1 + 32), 0, @"SplunkRetryAttempt");
  v2 = *(a1 + 32);
  v3 = [@"com.apple.mobileactivationd.splunklogging" UTF8String];

  scheduleXPCActivity(v2, v3, 5u, 1, 0x400u, 0x400u, &__block_literal_global_6);
}

void __splunk_activity_handler_block_invoke_51(uint64_t a1)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__6;
  v43 = __Block_byref_object_dispose__6;
  v44 = 0;
  v2 = copySortedSplunkFileList();
  v25 = v2;
  if (!v2)
  {
    v20 = 0;
    v4 = 0;
    goto LABEL_24;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = [v2 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (!v4)
  {
LABEL_18:
    v20 = 0;
    v21 = 0;
LABEL_22:

    goto LABEL_25;
  }

  v5 = *v36;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v36 != v5)
    {
      objc_enumerationMutation(v3);
    }

    v7 = *(*(&v35 + 1) + 8 * v6);
    v8 = [NSData alloc];
    v9 = v40 + 5;
    obj = v40[5];
    v10 = [v8 initWithContentsOfFile:v7 options:0 error:&obj];
    objc_storeStrong(v9, obj);
    if (!v10)
    {
      v17 = copyLoggingHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = v40[5];
        *buf = 138412546;
        v46 = v7;
        v47 = 2112;
        v48 = v19;
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Failed to load %@: %@", buf, 0x16u);
      }

      v12 = +[NSFileManager defaultManager];
      [(NSFileManager *)v12 removeItemAtPath:v7 error:0];
      goto LABEL_16;
    }

    v11 = v40;
    v33 = 0;
    v12 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v33];
    objc_storeStrong(v11 + 5, v33);
    v13 = isNSArray(v12);
    if (v13)
    {
      v14 = [(NSFileManager *)v12 count]> 0x3E8;

      if (!v14)
      {
        break;
      }
    }

    v15 = copyLoggingHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v18 = v40[5];
      *buf = 138412546;
      v46 = v7;
      v47 = 2112;
      v48 = v18;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Invalid splunk file (%@): %@", buf, 0x16u);
    }

    v16 = +[NSFileManager defaultManager];
    [(NSFileManager *)v16 removeItemAtPath:v7 error:0];

LABEL_16:
    if (v4 == ++v6)
    {
      v4 = [v3 countByEnumeratingWithState:&v35 objects:v49 count:16];
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  v4 = v7;

  if (v12)
  {
    v22 = [v4 stringByAppendingString:@".inflight"];
    v23 = +[NSFileManager defaultManager];
    [(NSFileManager *)v23 moveItemAtPath:v4 toPath:v22 error:0];

    v24 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __splunk_activity_handler_block_invoke_55;
    block[3] = &__block_descriptor_80_e8_32s40s48s56s64s72r_e5_v8__0l;
    v20 = v22;
    v27 = v20;
    v21 = v12;
    v28 = v21;
    v4 = v4;
    v29 = v4;
    v32 = &v39;
    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    dispatch_async(v24, block);

    v3 = v27;
    goto LABEL_22;
  }

  v20 = 0;
LABEL_24:
  v21 = 0;
LABEL_25:
  _Block_object_dispose(&v39, 8);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __splunk_activity_handler_block_invoke_55(uint64_t a1)
{
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__6;
  v77 = __Block_byref_object_dispose__6;
  v78 = 0;
  v2 = copyLoggingHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing splunk logging (%@).", buf, 0xCu);
  }

  [@"com.apple.mobileactivationd.splunklogging" UTF8String];
  v4 = os_transaction_create();
  v5 = v74[5];
  v74[5] = v4;

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3254779904;
  v65 = __splunk_activity_handler_block_invoke_56;
  v66 = &__block_descriptor_80_e8_32s40s48s56s64r72r_e48_v40__0__NSData_8__NSDictionary_16q24__NSError_32l;
  v67 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v68 = v8;
  v71 = v9;
  v69 = *(a1 + 56);
  v72 = &v73;
  v70 = *(a1 + 64);
  v10 = v7;
  v11 = v64;
  v81 = 0;
  if (!v10)
  {
    v17 = createMobileActivationError("performSplunkPost", 761, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v62 = 0;
    v63 = 0;
    goto LABEL_24;
  }

  if (!is_internal_build())
  {
    v62 = 0;
    v63 = 0;
    goto LABEL_12;
  }

  v12 = [NSUserDefaults alloc];
  v63 = [v12 persistentDomainForName:@"com.apple.mobileactivationd"];

  v13 = [v63 objectForKeyedSubscript:@"UseReverseProxy"];
  v14 = isNSNumber(v13);
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = [v63 objectForKeyedSubscript:@"UseReverseProxy"];
  v16 = [v15 BOOLValue];

  if (!v16)
  {
LABEL_11:
    v62 = 0;
    goto LABEL_12;
  }

  v62 = copyReverseProxyDictionary(0, 0, 0);
LABEL_12:
  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = v18;
  if (v18)
  {
    [v18 setObject:v10 forKeyedSubscript:@"events"];
    v20 = +[NSDate date];
    [(NSDate *)v20 timeIntervalSince1970];
    v22 = [NSNumber numberWithLong:1000 * v21];
    [v19 setObject:v22 forKeyedSubscript:@"postTime"];

    v80 = 0;
    v23 = [NSJSONSerialization dataWithJSONObject:v19 options:0 error:&v80];
    v24 = v80;
    v25 = v24;
    if (v23)
    {
      v26 = [NSMutableURLRequest alloc];
      v27 = [NSURL URLWithString:@"https://init.itunes.apple.com/bag.xml?ix=5"];
      LODWORD(v28) = NETWORK_TIMEOUT_SECONDS;
      v29 = [v26 initWithURL:v27 cachePolicy:0 timeoutInterval:v28];

      if (!v29)
      {
        v17 = createMobileActivationError("performSplunkPost", 795, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");
        v30 = 0;
        v47 = 0;
        v29 = 0;
LABEL_43:
        v48 = 0;
        goto LABEL_44;
      }

      [v29 setValue:? forHTTPHeaderField:?];
      v79 = v25;
      v30 = talkToServerWithError(v29, 0, 0, v62, 0, 0, &v79);
      v60 = v79;

      if (v30)
      {
        *buf = 0;
        v59 = [NSPropertyListSerialization propertyListWithData:v30 options:0 format:0 error:buf];
        v31 = *buf;
        v32 = isNSDictionary(v59);
        v33 = v32 == 0;

        if (v33)
        {
          v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 704, @"com.apple.MobileActivation.ErrorDomain", -1, v31, @"Failed to create dictionary from data.");
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
        }

        else
        {
          v58 = [v59 objectForKey:@"bag"];
          v34 = isNSData(v58);
          v35 = v34 == 0;

          if (v35)
          {
            v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 710, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Storebag data is missing 'bag' key.");
            v55 = 0;
            v56 = 0;
            v57 = 0;
          }

          else
          {
            v82 = 0;
            v57 = [NSPropertyListSerialization propertyListWithData:v58 options:0 format:0 error:&v82];
            v36 = v82;

            v37 = isNSDictionary(v57);
            v38 = v37 == 0;

            if (v38)
            {
              v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 719, @"com.apple.MobileActivation.ErrorDomain", -1, v36, @"Failed to create dictionary from data.");
              v55 = 0;
              v56 = 0;
            }

            else
            {
              v56 = [v57 objectForKeyedSubscript:@"metrics"];
              v39 = isNSDictionary(v56);
              v40 = v39 == 0;

              if (v40)
              {
                v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 725, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Storebag data is missing 'metrics' key.");
                v55 = 0;
              }

              else
              {
                v41 = [v56 objectForKey:@"metricsUrl"];
                v42 = isNSString(v41);
                v55 = v41;
                LODWORD(v41) = v42 == 0;

                if (!v41)
                {
                  v43 = v55;
                  if (v43)
                  {
                    v44 = v43;
                    v45 = 0;
                    v55 = v43;
                    v46 = v60;
LABEL_36:

                    v25 = v46;
                    if (v45)
                    {
                      MobileActivationError = createMobileActivationError("performSplunkPost", 809, @"com.apple.MobileActivation.ErrorDomain", -1, v25, @"Failed to retrieve Splunk base URL from iTunes storebag.");
                    }

                    else
                    {
                      v48 = [v44 stringByAppendingPathComponent:@"2/xp_coreos_mobile_activation"];

                      if (v48)
                      {
                        v61 = objc_alloc_init(NSMutableURLRequest);

                        if (v61)
                        {
                          [v61 setValue:@"iOS Device Activator (MobileActivation-1068.42.2)" forHTTPHeaderField:@"User-Agent"];
                          v52 = [NSString stringWithFormat:@"application/json"];
                          [v61 setValue:v52 forHTTPHeaderField:@"Content-Type"];

                          [v61 setHTTPMethod:@"POST"];
                          [v61 setHTTPBody:v23];
                          v53 = [NSURL URLWithString:v48];
                          [v61 setURL:v53];

                          v82 = v25;
                          *buf = 0;
                          v54 = talkToServerWithError(v61, 0, 0, v62, buf, &v81, &v82);
                          v47 = *buf;
                          v17 = v82;

                          v25 = v30;
                          v30 = v54;
                          v29 = v61;
                        }

                        else
                        {
                          v17 = createMobileActivationError("performSplunkPost", 823, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");
                          v47 = 0;
                          v29 = 0;
                        }

                        goto LABEL_44;
                      }

                      MobileActivationError = createMobileActivationError("performSplunkPost", 815, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create Splunk URL.");
                    }

                    v17 = MobileActivationError;
                    v47 = 0;
                    goto LABEL_43;
                  }

                  v55 = 0;
LABEL_35:
                  v50 = v36;
                  v44 = 0;
                  v45 = 1;
                  v46 = v36;
                  goto LABEL_36;
                }

                v49 = createMobileActivationError("copySplunkBaseURLFromStorebag", 731, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Storebag data is missing 'metricsURL' key.");
              }
            }

            v31 = v36;
          }
        }

        v36 = v49;
        goto LABEL_35;
      }

      v17 = createMobileActivationError("performSplunkPost", 803, @"com.apple.MobileActivation.ErrorDomain", -6, v60, @"iTunes storebag request failed.");
      v30 = 0;
      v47 = 0;
      v48 = 0;
      v25 = v60;
    }

    else
    {
      v17 = createMobileActivationError("performSplunkPost", 785, @"com.apple.MobileActivation.ErrorDomain", -1, v24, @"Failed to serialize data: %@", v24);
      v30 = 0;
      v47 = 0;
      v29 = 0;
      v48 = 0;
      v23 = 0;
    }

LABEL_44:

    goto LABEL_45;
  }

  v17 = createMobileActivationError("performSplunkPost", 776, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create post dictionary.");
LABEL_24:
  v30 = 0;
  v47 = 0;
  v29 = 0;
  v48 = 0;
  v23 = 0;
  v19 = 0;
LABEL_45:
  v65(v11, v30, v47, v81, v17);

  _Block_object_dispose(&v73, 8);
}

void __splunk_activity_handler_block_invoke_56(uint64_t a1, int a2, int a3, uint64_t a4, id a5)
{
  v7 = a5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __splunk_activity_handler_block_invoke_2_57;
  block[3] = &__block_descriptor_88_e8_32s40s48s56s64r72r_e5_v8__0l;
  v20 = a4;
  v14 = *(a1 + 32);
  v8 = *(a1 + 40);
  v18 = *(a1 + 64);
  v15 = v8;
  v16 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 72);
  v17 = v9;
  v19 = v10;
  v11 = v7;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  dispatch_async(*(a1 + 56), v12);
}

void __splunk_activity_handler_block_invoke_2_57(uint64_t a1)
{
  if (isRunningInRecovery())
  {
    v2 = 2;
  }

  else
  {
    v2 = 6;
  }

  v3 = *(a1 + 80);
  if ((v3 - 200) >= 0x64)
  {
    if ((v3 - 300) >= 0xC8)
    {
      v14 = +[NSFileManager defaultManager];
      [(NSFileManager *)v14 moveItemAtPath:*(a1 + 32) toPath:*(a1 + 40) error:0];

      v15 = *(a1 + 80);
      v16 = *(a1 + 48);
      v17 = [NSHTTPURLResponse localizedStringForStatusCode:v15];
      v18 = createMobileActivationError("splunk_activity_handler_block_invoke_2", 1484, @"com.apple.MobileActivation.ServerErrorDomain", v15, v16, @"Server error: %ld (%@)", v15, v17);

      v19 = *(a1 + 80);
      v20 = [NSHTTPURLResponse localizedStringForStatusCode:v19];
      v21 = createMobileActivationError("splunk_activity_handler_block_invoke_2", 1484, @"com.apple.MobileActivation.ErrorDomain", -6, v18, @"Server error: %ld (%@)", v19, v20);

      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      goto LABEL_11;
    }

    v4 = *(a1 + 48);
    v5 = [NSHTTPURLResponse localizedStringForStatusCode:*(a1 + 80)];
    v6 = createMobileActivationError("splunk_activity_handler_block_invoke_2", 1489, @"com.apple.MobileActivation.ServerErrorDomain", v3, v4, @"Server error: %ld (%@)", v3, v5);

    v7 = *(a1 + 80);
    v8 = [NSHTTPURLResponse localizedStringForStatusCode:v7];
    v9 = createMobileActivationError("splunk_activity_handler_block_invoke_2", 1489, @"com.apple.MobileActivation.ErrorDomain", -5, v6, @"Server error: %ld (%@)", v7, v8);

    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = copyLoggingHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __splunk_activity_handler_block_invoke_2_57_cold_1(a1, a1 + 64, v12);
    }
  }

  v13 = +[NSFileManager defaultManager];
  [(NSFileManager *)v13 removeItemAtPath:*(a1 + 32) error:0];

  data_ark_remove(*(a1 + 56), 0, @"SplunkRetryAttempt");
LABEL_11:
  v24 = copySortedSplunkFileList();
  v25 = v24;
  if (!v24 || ![v24 count])
  {
    goto LABEL_24;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v26 = data_ark_copy(*(a1 + 56), 0, @"SplunkRetryAttempt");
    v27 = isNSNumber(v26);

    if (v27)
    {
      v28 = [NSNumber numberWithLongLong:[(NSNumber *)v26 longLongValue]+ 1];

      if ([(NSNumber *)v28 unsignedLongLongValue]<= v2)
      {
LABEL_20:
        data_ark_set(*(a1 + 56), 0, @"SplunkRetryAttempt", v28, 1);
        [(NSNumber *)v28 doubleValue];
        v29 = (exp2(v30) * 60.0);

        goto LABEL_21;
      }

      v26 = v28;
      v28 = [NSNumber numberWithUnsignedInt:v2];
    }

    else
    {
      v28 = &off_1003FBD98;
    }

    goto LABEL_20;
  }

  v29 = 5;
LABEL_21:
  v31 = copyLoggingHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v36 = v29;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Rescheduling splunk logging for %d seconds.", buf, 8u);
  }

  scheduleXPCActivity(*(a1 + 56), [@"com.apple.mobileactivationd.splunklogging" UTF8String], v29, 1, 0x400u, 0x400u, &__block_literal_global_66);
LABEL_24:
  v32 = copyLoggingHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Successfully performed splunk logging.", buf, 2u);
  }

  v33 = *(*(a1 + 72) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = 0;
}

void __copy_helper_block_e8_32s40s48s56s64r72r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  v8 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v8, 8);
}

void __copy_helper_block_e8_32s40s48s56s64s72r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v9, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 72), 8);

  v2 = *(a1 + 32);
}

void splunk_daily_stats_activity_handler(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = copySplunkQueue();
    if (v2)
    {
      v3 = v2;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3254779904;
      block[2] = __splunk_daily_stats_activity_handler_block_invoke;
      block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v6 = v1;
      v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);

      dispatch_async(v3, v4);
    }

    else
    {
      v4 = copyLoggingHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        copySplunkDeviceIdentifiers_cold_1();
      }
    }
  }

  else
  {
    v4 = copyLoggingHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
    }
  }
}

void __splunk_daily_stats_activity_handler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = copySplunkDailyStatistics(v2, &v8);
  v5 = v8;
  if (!v3)
  {
    v6 = copyLoggingHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __splunk_daily_stats_activity_handler_block_invoke_cold_1();
    }
  }

  writeSplunkLog(*(a1 + 32), 25, -1, "splunk_daily_stats_activity_handler_block_invoke", 1571, v3, 0, v4, v7);
}

void splunk_roll_uuid_activity_handler(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  if (v1)
  {
    v2 = copySplunkQueue();
    if (v2)
    {
      v3 = v2;
      [@"com.apple.mobileactivationd.splunklogging.rollidentifier" UTF8String];
      v4 = os_transaction_create();
      v5 = v12[5];
      v12[5] = v4;

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3254779904;
      v7[2] = __splunk_roll_uuid_activity_handler_block_invoke;
      v7[3] = &__block_descriptor_48_e8_32s40r_e5_v8__0l;
      v8 = v1;
      v9 = &v11;
      v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v7);

      dispatch_async(v3, v6);
    }

    else
    {
      v6 = copyLoggingHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        copySplunkDeviceIdentifiers_cold_1();
      }
    }
  }

  else
  {
    v6 = copyLoggingHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
    }
  }

  _Block_object_dispose(&v11, 8);
}

void sub_10031BCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __splunk_roll_uuid_activity_handler_block_invoke(uint64_t a1)
{
  rollSplunkLogUUID(*(a1 + 32));
  v2 = copyLoggingHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Successfully rolled splunk logging UUID.", v5, 2u);
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void rollSplunkLogUUID(void *a1)
{
  v1 = a1;
  v2 = copySplunkUUIDQueue();
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __rollSplunkLogUUID_block_invoke;
    block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
    v5 = v1;
    dispatch_async(v2, block);
    v3 = v5;
  }

  else
  {
    v3 = copyLoggingHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      copySplunkDeviceIdentifiers_cold_1();
    }
  }
}

id copySplunkUUIDQueue()
{
  if (copySplunkUUIDQueue_onceToken != -1)
  {
    copySplunkUUIDQueue_cold_1();
  }

  v1 = copySplunkUUIDQueue_splunkQueue;

  return v1;
}

void __rollSplunkLogUUID_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSUUID UUID];
  v3 = [(NSUUID *)v2 UUIDString];
  data_ark_set(v1, 0, @"uuidString", v3, 1);
}

void __copySplunkLogUUID_block_invoke(uint64_t a1)
{
  if ((data_ark_exists(*(a1 + 32), 0, @"uuidString") & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = +[NSUUID UUID];
    v4 = [(NSUUID *)v3 UUIDString];
    data_ark_set(v2, 0, @"uuidString", v4, 1);
  }

  v5 = data_ark_copy(*(a1 + 32), 0, @"uuidString");
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __copySplunkQueue_block_invoke(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.mobileactivationd.splunk", v1);
  v3 = copySplunkQueue_splunkQueue;
  copySplunkQueue_splunkQueue = v2;
}

void __copySplunkUUIDQueue_block_invoke(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.mobileactivationd.splunk.uuid", v1);
  v3 = copySplunkUUIDQueue_splunkQueue;
  copySplunkUUIDQueue_splunkQueue = v2;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id copyRootCertificate(uint64_t a1, int a2, NSError **a3)
{
  switch(a1)
  {
    case 1:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICGDCCAZ+gAwIBAgIIMyDS5tjDo60wCgYIKoZIzj0EAwMwUjEmMCQGA1UEAwwd\nVEVTVCBVQ1JUIEFUVEVTVEFUSU9OIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIElu\nYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwMzE3MTg0NzIzWhcNMzIwMzE3\nMTg0NzIzWjBSMSYwJAYDVQQDDB1URVNUIFVDUlQgQVRURVNUQVRJT04gUk9PVCBD\nQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAG\nByqGSM49AgEGBSuBBAAiA2IABK8j8XvaJOsMr8X6albKQ1LFlMi3k+b8Jooja8Qs\n0lsrRmax8FItjsoWcxj3c1sPjPF59FI2sCb+9cUZ8KgTeJ3b5748pO1XRGByMNHp\ntmIuLYRvqRHhkWl638PWGRUoYKNCMEAwHQYDVR0OBBYEFGnDBpAIQSifJVW2RWKm\nf6jT3iIXMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49\nBAMDA2cAMGQCMBFwSHXop87Ghm50PPMGFHtpB/o3K2Gx5747Q0mlR2qE0DsmrJSu\n2LO+9QEQL5HZRwIwBMg0g5oYcfMMDWwFSRESii+SqHxFgbmVuzHR5Cu0peL1MiMB\nnMjKoG3YyhB4geQ9\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICGjCCAaGgAwIBAgIIO0EdkA1/e+swCgYIKoZIzj0EAwMwUzEnMCUGA1UEAwwe\nQmFzaWMgQXR0ZXN0YXRpb24gVXNlciBSb290IENBMRMwEQYDVQQKDApBcHBsZSBJ\nbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMB4XDTE3MDQxOTIxNDE1NloXDTMyMDMy\nMjAwMDAwMFowUzEnMCUGA1UEAwweQmFzaWMgQXR0ZXN0YXRpb24gVXNlciBSb290\nIENBMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMHYw\nEAYHKoZIzj0CAQYFK4EEACIDYgAE639EEPCGvFOPAbzd5eGJM46/I+N1rpRhPBc2\n+hvNC5vlVyv1hVNPSTIcF0sLPgCeEEQqGIZsUPO48ECh03YzXUT86015HwktM439\nbWGKGE/VRepW8S8EDRLh6+83XZ9do0IwQDAPBgNVHRMBAf8EBTADAQH/MB0GA1Ud\nDgQWBBSD5aMhnrB0w/lhkP2XTiMQdqSj8jAOBgNVHQ8BAf8EBAMCAQYwCgYIKoZI\nzj0EAwMDZwAwZAIwQol5uLqv1SXY9G1wHSx2EYIULFlLssYTnTwbSlZPj2yF9cgk\n7xJO8bw6nTklgnHhAjBgMvsir7UEVzw7uxn8y3GGf9KSCFV5scySrYDZnJhETYlc\nyPYSFsZIerKNPP6v28Y=\n-----END CERTIFICATE-----";
      }

      v6 = &QABAAUCRTRootCAPEMLen;
      v7 = &BAAUCRTRootCAPEMLen;
      goto LABEL_47;
    case 2:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB/zCCAYWgAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwRTEZMBcGA1UEAwwQ\nVEVTVCBTRVAgUk9PVCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwK\nQ2FsaWZvcm5pYTAeFw0xNzAzMTcxNzQ4MzBaFw0zMjAzMTcxNzQ4MzBaMEUxGTAX\nBgNVBAMMEFRFU1QgU0VQIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzAR\nBgNVBAgMCkNhbGlmb3JuaWEwdjAQBgcqhkjOPQIBBgUrgQQAIgNiAARPM4laW0B+\nfOrILxB1SgluOqUops+ps7POnbPvuhEZq3A+/zMJpvuA9r81okf3hb2irmpUAuvd\npbjz1pDf73/8VC/uMSJsWXEc39kpm2j6DwBOIxJ++OwnhEU7pf0gCQ6jQjBAMB0G\nA1UdDgQWBBRWyfg8mg8Ak5e1SZm7V0WL85j2NDAPBgNVHRMBAf8EBTADAQH/MA4G\nA1UdDwEB/wQEAwIBBjAKBggqhkjOPQQDAwNoADBlAjEAiOkQ9WnIfqiQXIKRjOhu\neWd+RPxKGQt1XmVQZGiNDwIu6SVQ0UVDGZg4ywsotyLNAjAOQgMucccaDYgsmELm\nYpYzgzyReDQx/ajwQdc97/unxkOWYP/5TPptimsc9E0u9bU=\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICIDCCAaWgAwIBAgIIePhG1bNbWBcwCgYIKoZIzj0EAwMwVTEpMCcGA1UEAwwg\nQmFzaWMgQXR0ZXN0YXRpb24gU3lzdGVtIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxl\nIEluYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwNDIwMDAyMjA5WhcNMzIw\nMzIyMDAwMDAwWjBVMSkwJwYDVQQDDCBCYXNpYyBBdHRlc3RhdGlvbiBTeXN0ZW0g\nUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5p\nYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABN7OnRlUVkOVlHTw7UF9qForIhvM8pLL\nWTrHm6Be42c3LZFIM2RNT5FZZDkIgQfYLS6vsRpfrhEMKIHIWomtyuCxp2c/AIxu\nwEml4f2d8IktTRcNHwqKzUgzPJV3CyKh2KNCMEAwDwYDVR0TAQH/BAUwAwEB/zAd\nBgNVHQ4EFgQU/tHRwggHA9W5PDSyu/18OpklG48wDgYDVR0PAQH/BAQDAgEGMAoG\nCCqGSM49BAMDA2kAMGYCMQCmU03bvMmBE4X03P8MdpxEE/LpNcRmsnktIav8tpNh\nGmo4mv2FyZKKvaJtO2OhIrwCMQDxMBcXge5NpWx/VBcFTj2Tb2VxQ8zMKbWapLE/\nHPN4kbBaiIIUl52drBlQjS/c3P8=\n-----END CERTIFICATE-----\n";
      }

      v6 = &QABAASCRTRootCAPEMLen;
      v7 = &BAASCRTRootCAPEMLen;
      goto LABEL_47;
    case 3:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICGDCCAZ+gAwIBAgIIMyDS5tjDo60wCgYIKoZIzj0EAwMwUjEmMCQGA1UEAwwd\nVEVTVCBVQ1JUIEFUVEVTVEFUSU9OIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIElu\nYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwMzE3MTg0NzIzWhcNMzIwMzE3\nMTg0NzIzWjBSMSYwJAYDVQQDDB1URVNUIFVDUlQgQVRURVNUQVRJT04gUk9PVCBD\nQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAG\nByqGSM49AgEGBSuBBAAiA2IABK8j8XvaJOsMr8X6albKQ1LFlMi3k+b8Jooja8Qs\n0lsrRmax8FItjsoWcxj3c1sPjPF59FI2sCb+9cUZ8KgTeJ3b5748pO1XRGByMNHp\ntmIuLYRvqRHhkWl638PWGRUoYKNCMEAwHQYDVR0OBBYEFGnDBpAIQSifJVW2RWKm\nf6jT3iIXMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49\nBAMDA2cAMGQCMBFwSHXop87Ghm50PPMGFHtpB/o3K2Gx5747Q0mlR2qE0DsmrJSu\n2LO+9QEQL5HZRwIwBMg0g5oYcfMMDWwFSRESii+SqHxFgbmVuzHR5Cu0peL1MiMB\nnMjKoG3YyhB4geQ9\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAZqgAwIBAgIUfK8gpf3d6f7acICzvf5MBWnAVEYwCgYIKoZIzj0EAwIw\nVzErMCkGA1UEAwwiQXBwbGUgQWNjZXNzb3J5IFJvb3QgQ0EgLSAwMDAwMDAwMTET\nMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTAgFw0yMDA5\nMTYxODI5MzRaGA8yMDUwMDkxNDAwMDAwMFowVzErMCkGA1UEAwwiQXBwbGUgQWNj\nZXNzb3J5IFJvb3QgQ0EgLSAwMDAwMDAwMTETMBEGA1UECgwKQXBwbGUgSW5jLjET\nMBEGA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABMGo\nQSB6dmrLAhjkTUVAoAC1RwaOmEmEk7SYEnnm6aBw9HZZQt5pkncuTXxvL6NDvx4D\n8Wn3frxp+UOTgEalb0ajQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAZD\nZup+SdTmXls49aokHuK+fHKjMA4GA1UdDwEB/wQEAwIBBjAKBggqhkjOPQQDAgNI\nADBFAiEA4HcCYv5+W+1/HOy1v1cYVozNEW4+2WvR84Japg8rabkCIDP9zynWiR60\nO06J60wrt0rQfBOPnoeY1+ydbP2g8Tiy\n-----END CERTIFICATE-----";
      }

      v6 = &QABAAMFiRootCAPEMLen;
      v7 = &BAAMFiRootCAPEMLen;
      goto LABEL_47;
    case 4:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIBgzCCASkCFDjx/NbFt/axSboRZlQvaFKmOM9cMAoGCCqGSM49BAMCMEQxGDAW\nBgNVBAMMD1JPT1QgVk1Ib3N0IERFVjETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEG\nA1UECAwKQ2FsaWZvcm5pYTAeFw0yMjEyMjAyMjQ5MjNaFw0zMjEyMTcyMjQ5MjNa\nMEQxGDAWBgNVBAMMD1JPT1QgVk1Ib3N0IERFVjETMBEGA1UECgwKQXBwbGUgSW5j\nLjETMBEGA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IA\nBFEzB9BX594q7qqyNgDRIB2qQm6uhylOPgS3zX6kVNpCe+IGeuYGVKu+n0oVoUEq\nah/zwVwo9xZPJycEbHBhGlAwCgYIKoZIzj0EAwIDSAAwRQIhAJxxz1ciDUVxdnIz\n34ondjHZD90U6Pzvu9abpIU1TsJxAiAKxVubHXInckv6HidbV1J2RghMPdxOyKnw\nZR6YEAfSMQ==\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICLDCCAbOgAwIBAgIUfj+NzqI5TD5k+plnCuu7oXn/1NYwCgYIKoZIzj0EAwMw\nVjEqMCgGA1UEAwwhQmFzaWMgQXR0ZXN0YXRpb24gVk0gUm9vdCBDQSAtIEcxMRMw\nEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMB4XDTIyMTEx\nNzE5MjQ0NloXDTQ3MTExNzAwMDAwMFowVjEqMCgGA1UEAwwhQmFzaWMgQXR0ZXN0\nYXRpb24gVk0gUm9vdCBDQSAtIEcxMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYD\nVQQIDApDYWxpZm9ybmlhMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEh+bXFjhVZxpY\nSW1tUJhQc7Mesr7Ua/2EIJDhZnq1eUV666b7j8V1apF7zQdcVc1GHqBMRfeagBk0\nktB5PgRQ4hFX3OAbfjSVnmuPVuHznBbS/1f/ABuTlJJjO592E9JVo0IwQDAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTHKW8b5x+bDXk9PC/lPsufj3wUEzAOBgNV\nHQ8BAf8EBAMCAQYwCgYIKoZIzj0EAwMDZwAwZAIwXsNPIuolYDriFDkULrsZy81O\nyAk4v7Y4f1p86Ox2J7g4xdGIwAyLw/JNRKGoHGpVAjBk20GA6ZvKKoO+HvE9v2xu\nwiVPsqk37xSmgK+RHJDMMy+hrhJVsCsBzeYpI9Cz4sI=\n-----END CERTIFICATE-----";
      }

      v6 = &QABAAVMRootCAPEMLen;
      v7 = &BAAVMRootCAPEMLen;
      goto LABEL_47;
    case 5:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB9jCCAXwCFGyFzDAIXLHwUcHOxFEzhqQrOQOPMAoGCCqGSM49BAMDMF8xMzAx\nBgNVBAMMKkJhc2ljIEF0dGVzdGF0aW9uIFNFUCBBcHAgRGV2IFJvb3QgQ0EgLSBH\nMTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTAeFw0y\nMzAxMTkyMTEzNTFaFw0zMzAxMTYyMTEzNTFaMF8xMzAxBgNVBAMMKkJhc2ljIEF0\ndGVzdGF0aW9uIFNFUCBBcHAgRGV2IFJvb3QgQ0EgLSBHMTETMBEGA1UECgwKQXBw\nbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAi\nA2IABOnVQFqNs86j5R5dAcjUlpotBUkO2q3+udEnqwkzzcrptPz6FIp5GQagMCQk\nwDgzXTe3jUqDkGxMNUjLt6DkzbwX7SrHhvIf9RlTXmlgrCUUrR21089VP+FZu8sD\n38l7PTAKBggqhkjOPQQDAwNoADBlAjEA7qwslEakgN0e+27DzPtrOqbud2pXVdRP\nqGFmLcklmZWHF1UIn6JlD1TNLVHQlCr3AjBkSmV+m5D/pJVRvg4ewQq+9oeyuYg8\nJHQGGaubDFMjZXhJ3NXrLHmIWDRQW2lgChA=\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICODCCAb2gAwIBAgIUW5y5rEfNQCu9iSCmlQjrP1Rz/tAwCgYIKoZIzj0EAwMw\nWzEvMC0GA1UEAwwmQmFzaWMgQXR0ZXN0YXRpb24gU0VQIEFwcCBSb290IENBIC0g\nRzExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcN\nMjIwOTEyMTc1OTM0WhcNNDcwOTEyMDAwMDAwWjBbMS8wLQYDVQQDDCZCYXNpYyBB\ndHRlc3RhdGlvbiBTRVAgQXBwIFJvb3QgQ0EgLSBHMTETMBEGA1UECgwKQXBwbGUg\nSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IA\nBAXaHBhlPwzGbPrirq+GvLIVTB4ym+88OQOB2Aq3ZuWIDz2DV9EWt7/3tpHL276X\nWE4ObPymHzrbl5aNpIzjm9W0tgiZRWw8l3YEuoz56dh3sZqVdDxszB3CQw1KX+62\nYaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUywowhXlxUMVVx846sCHP\nXQIrUR4wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49BAMDA2kAMGYCMQC/AZhw1x8+\nXBPQw3lTl2A4SxY5UvCMjyseU9uUD0qgFDYlvUzH0qi8KB5BZled0cYCMQClhMgI\nrl3Txh1EJBb5yoWhvs8Gy+qkov9/SIDIEGpmZ7OUngbjN5zheCyJio90Xig=\n-----END CERTIFICATE-----";
      }

      v6 = &QABAAASMFiOSRootCAPEMLen;
      v7 = &BAAASMFiOSRootCAPEMLen;
      goto LABEL_47;
    case 6:
      v8 = *"&\b";
      v5 = "-----BEGIN CERTIFICATE-----\nMIIF2DCCA8CgAwIBAgIBADANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjFZMFcGA1UEAxNQRkRSLUNBMS1ST09ULUNNIDg2\nQkQ1QkFFQ0JBNEQ5RUM0QzdBOUJGRUZEM0I3QTE0Mzc5QTE1RTVGQjM2MDNCQ0U2\nOTA1MDczRUMwNjBBM0YwHhcNMTQwNjExMjEwODM5WhcNNDQwNjExMjEwODM5WjB9\nMQswCQYDVQQGEwJVUzETMBEGA1UEChMKQXBwbGUgSW5jLjFZMFcGA1UEAxNQRkRS\nLUNBMS1ST09ULUNNIDg2QkQ1QkFFQ0JBNEQ5RUM0QzdBOUJGRUZEM0I3QTE0Mzc5\nQTE1RTVGQjM2MDNCQ0U2OTA1MDczRUMwNjBBM0YwggIiMA0GCSqGSIb3DQEBAQUA\nA4ICDwAwggIKAoICAQDRSE8a8Xl+OFgz07qfQf610WJgBhQUMqYqLME8yNW6HRAo\nZmRJCZhKzJCW7W77utpo/QZqCs/Tmc8yAuyw06MlLdb/EaFbIJhnd8KvhNO2aBn1\n0zTF3BrKu/iBj4Cb31nzd+P3BAyIIhnNfqnJ1YDGrXDHApFKs96bRNYfFj/cm55e\n+5ZaVAE4pGq3I45pO1HMEObvysFnbEw4R5EZ8BsyNaSe+EEprYZQqjfGciVZn+WD\nnP0g1TONgE8yAplaud+0QQIcLxE82toZqnAEErojrXbb9KYiW6OH+w8p8ITKrA0a\nbyud5ZwU8x2dwJngg2P53vzdaEPgl+oEWm5uTtOBS5kGh9N0Ky3N094qn6Y9OmLD\neXsYXGE3Q91AZ6Ps+0cmZYAMvnlTMh6h6TRgIG6kUi/7fIn6umQHgavSMP+XWNET\nCzbwE7YZnTnhMlW3Oaey40bKDgxZAgVAVKt+qf/B9Exb074GqicYr5RH3MmYYqVo\nbHZTPkeKykUxUJoNm/jRoyXQnStl0uBclShH3ORMOHL6MeQMSGIEIVbD6AJz3rIX\n7nidx3ePUeA7QVV/vhL09DU4Q5KKQsbgl4qSGzxA87ClUGworLaWa+AUE+MP5NLJ\ntSlsY4+Fl3VLq51AJA2oeOwF6KCTRTZWG56anqaSrEU0UKsWgQ6ys+9153eGTwID\nAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4E\nFgQUESXWmKVwOl5LaoSB35L33xPje14wHwYDVR0jBBgwFoAUESXWmKVwOl5LaoSB\n35L33xPje14wDQYJKoZIhvcNAQELBQADggIBAJcISq7FqhBfFRpgEAiedVPPzff5\nrU2uNQLpApMb3A6jFSostHTwypA//pc0PbTPTi5t2CcF14Gznqt4Gf1Ej75C+fgK\nQoWjcgYPCXkK+6KkTW8EMLsL+n8ZL1tqdOuJCOBTRBTU3Lbwon5uYF98CdBlPIam\nZqDEbEiwrp/I5uBMkut1P2sftxu5ysu3+A1bGMDI5T84sXbG0eJU6zmx1p/WUHAc\nHZy9/S7Ad5vJRMQrWx4JDdLvJ+1PXqdJtZUkp4TNPchxA9OzGsatVJJ5T/5EVDuL\nQgLaZNiWeAC19+clUREnS247RjLNIZZq0hj2Rk5zO6sSyt8vM+kJZrTVdGaSk++l\nOFWzSdo0Ev/izPkuL/cH146YZS1UWZJI61mdvbvvxqqQaoTmviuMDqDoCZ7crLu3\nLRoS6/+w+xir5s6hmAF8D6FzAkVmeAroyd6Hclk6CnhlcQP5GxjTQjA2YGe/9X54\n30qL4fjiDwdLYqxyL5J28/yxt068aoVaukoRAgiGoZouyieTV9DabenxYBOygijS\n4G4RVf4qVnQ7wGkQokhz4WIkMr4C4ydWU3GhSuM3T9Tx9ASscch/oLMczDMLKYMe\n3sdtc60+gxrctSq/B3E/5nddDj9vQ7BdRWcvJ+n/ESsXgwk5z15YZUwU/qW0j5rD\n4bPy9nox5DLds+/l\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 7:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIBtDCCAVqgAwIBAgIBJzAKBggqhkjOPQQDAjBIMRwwGgYDVQQDDBNTRVAgUm9v\ndCBDQSAoTG9jYWwpMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxp\nZm9ybmlhMB4XDTE2MDQyMjIyMTgzOVoXDTI2MDQyMDIyMTgzOVowSDEcMBoGA1UE\nAwwTU0VQIFJvb3QgQ0EgKExvY2FsKTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEG\nA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABLbmMPmv\nubyAcSjOqIvq+HkYPAn68WV+DopU/kfpNtEo0y0kjdxYGyuiaKC3LPqBmgM8pHlJ\npP81SMyx900L5YyjNTAzMA8GA1UdEwEB/wQFMAMBAf8wCwYDVR0PBAQDAgEGMBMG\nCSqGSIb3Y2QGLAQGFgR1Y3J0MAoGCCqGSM49BAMCA0gAMEUCIQCz/HH34JCprRWh\nsrjvjvb0vUjLY22yA/3uJS0zZ2LRGgIgahGt0ZuEvMzPDnG9n8wRXEOB46xu7zDy\nrXK+zQjBPMY=\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAXugAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTQwNjI0MjE0MzI0WhcNMjkwNjI0MjE0MzI0WjBAMRQwEgYDVQQD\nDAtTRVAgUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2Fs\naWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABEBGXhKwc7q3iFvkUoGDP6j2\ndrpxSCxsSCODaDQIqGwd53wZJ0xIJIv0RTf2TS7+/u4KzhrANzb19r+TQzwqFJMp\nhp3mI3yY4pukIFc/kWS7DLQAx/ftWBXX6vl4ig3wEqNCMEAwHQYDVR0OBBYEFFjv\n1r7FgrBUzRimhK2i9nt7On/PMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQD\nAgEGMAoGCCqGSM49BAMDA2cAMGQCMCWRVB9DxwYdXsJ8KVZwbU5y0rfNEWJwpH5B\nbH3HoiOT/k7TIzlcXWiWAZVVBsDf/gIwC5wq3OepHwBMMCa3Q4ZvpT4Qs0dmc4oa\nGYxqUZYACJiGD7vRVavVMFnf0s4xG0JG\n-----END CERTIFICATE-----";
      }

      v6 = &QAUCRTRootCAPEMLen;
      goto LABEL_41;
    case 8:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICXjCCAeWgAwIBAgIJAO5ey/a/ZXo9MAoGCCqGSM49BAMDMGQxNzA1BgNVBAMT\nLmltZzQgdGVzdCBzZWNwMzg0cjEgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkx\nFDASBgNVBAoTC0FwcGxlLCBJbmMuMRMwEQYDVQQIEwpDYWxpZm9ybmlhMB4XDTE1\nMDgyNzA0MTk1MloXDTI1MDgyNDA0MTk1MlowZDE3MDUGA1UEAxMuaW1nNCB0ZXN0\nIHNlY3AzODRyMSBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eTEUMBIGA1UEChML\nQXBwbGUsIEluYy4xEzARBgNVBAgTCkNhbGlmb3JuaWEwdjAQBgcqhkjOPQIBBgUr\ngQQAIgNiAARmiQLNit/MHLEymNygtXRdYvZ2V9ujKbG78XPHs815eRetxfbAe0SU\n3LOKQ0xvpm77RUDARHdFyNzRSkKxTY2iBUGOapBwlwzfZlUmJU4JRXE9ATRwYNco\nKfVcrL0BFnejYzBhMB0GA1UdDgQWBBTFrjb8IhN7kz3HMYTxcqKeXtGm5DAPBgNV\nHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFMWuNvwiE3uTPccxhPFyop5e0abkMA4G\nA1UdDwEB/wQEAwIBhjAKBggqhkjOPQQDAwNnADBkAjB5ryjJQJlO6BD0fqejchDc\nHB9su7+GoJMD5Kv9hoDeDlCTYoxE1fUp/36BAM3Ph/4CMB+QED5D9Nf7Fas99Xst\nxQ+EdLq74wvw/0YFQlsLVUH3UAnFE1uWnmwHkDZYF1EkcA==\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAXugAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTQwNjI0MjE0MzI0WhcNMjkwNjI0MjE0MzI0WjBAMRQwEgYDVQQD\nDAtTRVAgUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2Fs\naWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABEBGXhKwc7q3iFvkUoGDP6j2\ndrpxSCxsSCODaDQIqGwd53wZJ0xIJIv0RTf2TS7+/u4KzhrANzb19r+TQzwqFJMp\nhp3mI3yY4pukIFc/kWS7DLQAx/ftWBXX6vl4ig3wEqNCMEAwHQYDVR0OBBYEFFjv\n1r7FgrBUzRimhK2i9nt7On/PMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQD\nAgEGMAoGCCqGSM49BAMDA2cAMGQCMCWRVB9DxwYdXsJ8KVZwbU5y0rfNEWJwpH5B\nbH3HoiOT/k7TIzlcXWiWAZVVBsDf/gIwC5wq3OepHwBMMCa3Q4ZvpT4Qs0dmc4oa\nGYxqUZYACJiGD7vRVavVMFnf0s4xG0JG\n-----END CERTIFICATE-----";
      }

      v6 = &QAUCRTRootCAP384PEMLen;
LABEL_41:
      v7 = &UCRTRootCAPEMLen;
      goto LABEL_47;
    case 9:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIBtjCCAVugAwIBAgIBJTAKBggqhkjOPQQDAjBIMRwwGgYDVQQDDBNTRVAgUm9v\ndCBDQSAoTG9jYWwpMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxp\nZm9ybmlhMB4XDTE2MDQyMjIyMDMwMloXDTI2MDQyMDIyMDMwMlowSTETMBEGA1UE\nCAwKQ2FsaWZvcm5pYTETMBEGA1UECgwKQXBwbGUgSW5jLjEdMBsGA1UEAwwUdWNy\ndCBWZW5kaW5nIFNlcnZpY2UwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQooWKn\nj4PQnKhSGEpmJok/4CSDeG6fIk6A4vCDtuC5T2twqSmM0VWT3SY5B8QKMAspxnnT\nfxPmUJ+d2vhNPocFozUwMzAPBgNVHRMBAf8EBTADAQH/MAsGA1UdDwQEAwIBBjAT\nBgkqhkiG92NkBiwEBhYEdWNydDAKBggqhkjOPQQDAgNJADBGAiEAq6YVB2GvW4uu\nb17G+wTS/pehuM8tHLOH6RfJzUarkpUCIQDViFsKmYnrNx3yi9whnCHUE2SqvdRK\nYFSjST8cXO8B2g==\n-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIICFzCCAZygAwIBAgIIOcUqQ8IC/hswCgYIKoZIzj0EAwIwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTYwNDI1MjM0NTQ3WhcNMjkwNjI0MjE0MzI0WjBFMRMwEQYDVQQI\nDApDYWxpZm9ybmlhMRMwEQYDVQQKDApBcHBsZSBJbmMuMRkwFwYDVQQDDBBGRFJE\nQy1VQ1JULVNVQkNBMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEaDc2O/MruYvP\nVPaUbKR7RRzn66B14/8KoUMsEDb7nHkGEMX6eC+0gStGHe4HYMrLyWcap1tDFYmE\nDykGQ3uM2aN7MHkwHQYDVR0OBBYEFLSqOkOtG+V+zgoMOBq10hnLlTWzMA8GA1Ud\nEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUWO/WvsWCsFTNGKaEraL2e3s6f88wDgYD\nVR0PAQH/BAQDAgEGMBYGCSqGSIb3Y2QGLAEB/wQGFgR1Y3J0MAoGCCqGSM49BAMC\nA2kAMGYCMQDf5zNiiKN/Jqms1w+3CDYkESOPieJMpEkLe9a0UjWXEBDL0VEsq/Cd\nE3aKXkc6R10CMQDS4MiWiymY+Rxkvy/hicDDQqI/BL+N3LHqzJZUuw2Sx0afDX7B\n6LyKk+sLq4urkMY=\n-----END CERTIFICATE-----";
      }

      v6 = &QAUCRTSubCAPEMLen;
      v7 = &UCRTSubCAPEMLen;
      goto LABEL_47;
    case 10:
      v8 = 1115;
      v5 = "-----BEGIN CERTIFICATE-----\nMIIDCjCCAnOgAwIBAgIJAKLEjm9wthY+MA0GCSqGSIb3DQEBBQUAMGIxCzAJBgNV\nBAYTAlVTMQswCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQK\nEwpBcHBsZSBJbmMuMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcjAeFw0x\nMTA2MjMxOTA1NDNaFw0xOTA5MDkxOTA1NDNaMGIxCzAJBgNVBAYTAlVTMQswCQYD\nVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQKEwpBcHBsZSBJbmMu\nMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcjCBnzANBgkqhkiG9w0BAQEF\nAAOBjQAwgYkCgYEAyckOSUo0WP7JAPTWXeVyEfeJ7JUm1cVzL4hURR/Kr9PR8x1g\nptLaxWVcni+9D6eHmn9FxmmQFXRbIQCs5/qj4PhFZLC3c77wvi/8OL2EwSIOq9MN\nHpm0P0jh/0e8AxJZS98gPfz6YF58H1/Vi5yYlM7zsGPdXaUiQokAbTcyXZUCAwEA\nAaOBxzCBxDAdBgNVHQ4EFgQUMSXJGuBw9hqPqJDExjgE206NyD4wgZQGA1UdIwSB\njDCBiYAUMSXJGuBw9hqPqJDExjgE206NyD6hZqRkMGIxCzAJBgNVBAYTAlVTMQsw\nCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQKEwpBcHBsZSBJ\nbmMuMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcoIJAKLEjm9wthY+MAwG\nA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAqrgiRsSNB4ubv2ZDUqH7p1a1\nHca1vMmXZy1bTBXTbxoNJ/tHnkBZrQHoRq31931Sd6CDLnN/8h+Zpcg7C40vKMBu\nnJ4gaPVrPZlv36rrW/xNf6ZLETt0Q8VM554/P2QfT4aU/2v2rFb/orAqsKSW6wtJ\n9WmL1qAfmVJAPdcwYbY=\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 11:
      v8 = 1143;
      v5 = "-----BEGIN CERTIFICATE-----\nMIIDHzCCAoigAwIBAgIJAK/qJPz+p+3XMA0GCSqGSIb3DQEBBQUAMGkxCzAJBgNV\nBAYTAlVTMQswCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQK\nEwpBcHBsZSBJbmMuMQwwCgYDVQQLEwNFVFMxFjAUBgNVBAMTDVJhcHRvciBEZXZp\nY2UwHhcNMTEwNjIzMTkwNjE3WhcNMTkwOTA5MTkwNjE3WjBpMQswCQYDVQQGEwJV\nUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzETMBEGA1UEChMKQXBw\nbGUgSW5jLjEMMAoGA1UECxMDRVRTMRYwFAYDVQQDEw1SYXB0b3IgRGV2aWNlMIGf\nMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOPR58emAZ3QBW6U3tZXmTjELxK495\nJavHz3yZm1lX1z7K9tmbqcmUuEXpBbxHtgEkTTmwZQIgM3f6asTn8CKln8kq7aYj\nAWbSNOCy35hLDCy+hCN9hi++3LqqHiuQ9whVAvyrqpX7xPfgGwheIgpp/sPoPbZF\nx5EiwPt7/uHzfQIDAQABo4HOMIHLMB0GA1UdDgQWBBSWWwNRWUp2XVKrcZ8yKR4r\nZh/4wDCBmwYDVR0jBIGTMIGQgBSWWwNRWUp2XVKrcZ8yKR4rZh/4wKFtpGswaTEL\nMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRIwEAYDVQQHEwlDdXBlcnRpbm8xEzAR\nBgNVBAoTCkFwcGxlIEluYy4xDDAKBgNVBAsTA0VUUzEWMBQGA1UEAxMNUmFwdG9y\nIERldmljZYIJAK/qJPz+p+3XMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQAD\ngYEAP2PMyy+666s+vDH4mLhFb2ZUFUM/nyxnLbjEyxgxR5Z5iZ/H0BEp7s59Matv\ndO0dzhP1+khkcM6opicPG3Vu5eDI0odn41m7LDj6Z3lgrxFTKIm/Ghc7c7c0qdWA\nYLTvijBQsDqsY1YoAXr+80ReSSouJgkNvljBAoPFPpoK2xQ=\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 12:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "Certificate:\n"
             "    Data:\n"
             "        Version: 3 (0x2)\n"
             "        Serial Number: 1 (0x1)\n"
             "        Signature Algorithm: sha1WithRSAEncryption\n"
             "        Issuer: C=US, O=Apple Inc., OU=Apple Certification Authority, CN=[TEST] Apple iPhone Certification Authority\n"
             "        Validity\n"
             "            Not Before: Mar 21 06:20:50 2007 GMT\n"
             "            Not After : Mar 12 06:20:50 2022 GMT\n"
             "        Subject: C=US, O=Apple Inc., OU=Apple iPhone, CN=[TEST] Apple iPhone Device CA\n"
             "        Subject Public Key Info:\n"
             "            Public Key Algorithm: rsaEncryption\n"
             "            RSA Public Key: (1024 bit)\n"
             "                Modulus (1024 bit):\n"
             "                    00:d7:60:52:2a:fa:93:52:dc:db:ae:92:6b:d6:ac:\n"
             "                    59:17:1f:9a:20:ed:34:ae:c2:15:e8:e3:f0:3b:63:\n"
             "                    84:d8:6d:8d:02:65:74:e6:62:18:27:d1:fc:78:c3:\n"
             "                    2f:36:83:39:91:9f:3d:32:e0:95:7f:90:3b:ab:47:\n"
             "                    be:f1:47:85:8c:5d:ab:1c:5c:bb:10:69:47:56:b8:\n"
             "                    15:bf:34:4a:f0:49:6e:8a:35:4a:4f:47:bb:3e:ea:\n"
             "                    cc:df:2e:f4:b8:96:16:94:dd:38:f6:f0:82:cf:26:\n"
             "                    fd:67:a1:73:01:43:d8:25:bd:02:2c:82:89:7c:70:\n"
             "                    01:68:c2:8a:85:60:84:77:83\n"
             "                Exponent: 65537 (0x10001)\n"
             "        X509v3 extensions:\n"
             "            X509v3 Key Usage: critical\n"
             "                Digital Signature, Certificate Sign, CRL Sign\n"
             "            X509v3 Basic Constraints: critical\n"
             "                CA:TRUE\n"
             "            X509v3 Subject Key Identifier:\n"
             "                38:05:20:A9:3F:C6:79:F4:EC:9A:6F:7F:47:02:5E:6E:A4:79:11:F5\n"
             "            X509v3 Authority Key Identifier:\n"
             "                keyid:45:A2:4C:A9:8A:5B:4A:27:5E:85:A6:4D:05:1C:27:44:A5:87:76:17\n"
             "\n"
             "            X509v3 CRL Distribution Points:\n"
             "                URI:http://www.apple.com/appleca/iphone.crl\n"
             "\n"
             "    Signature Algorithm: sha1WithRSAEncryption\n"
             "        8d:be:6b:c8:4e:80:9e:78:86:0c:09:d0:6e:ed:c1:dc:30:f7:\n"
             "        29:4b:20:4e:2c:6c:b3:24:72:fd:ce:24:34:60:95:30:d7:32:\n"
             "        61:31:e5:d4:d5:63:aa:3f:89:81:f6:44:ab:71:d0:bc:17:db:\n"
             "        ab:bc:ec:bb:a4:40:6a:e7:e4:57:c6:28:6f:11:72:fc:0c:51:\n"
             "        07:31:db:40:54:ee:b5:e6:1e:e3:dc:9b:f9:3c:6a:ba:d8:c3:\n"
             "        20:f1:dd:49:cb:3a:a6:29:cd:52:f9:f3:f3:18:5e:dd:82:83:\n"
             "        b8:e8:4e:94:10:7a:1e:11:a0:63:4d:8e:60:4a:1d:45:72:4d:\n"
             "        a0:ac:1f:b0:98:8b:b4:33:5a:85:60:cf:7f:89:35:62:65:d1:\n"
             "        1b:48:a4:ec:ca:60:1a:9d:a6:d1:b9:3d:f3:64:a4:67:d1:a5:\n"
             "        1b:b6:d9:e7:65:75:cb:af:2f:7a:db:d8:a1:f4:f3:09:bf:9a:\n"
             "        99:1a:34:a6:ed:1f:82:84:0b:b6:a8:68:5d:ec:49:d4:b3:34:\n"
             "        84:af:cb:a4:d9:00:f0:bc:07:6c:17:e7:95:bb:c3:3d:d9:bb:\n"
             "        6a:13:1d:34:bd:2f:c1:9a:f1:4d:67:5f:56:33:90:b2:ef:ff:\n"
             "        27:da:19:60:55:b0:78:c2:8c:34:5b:61:3a:e1:ec:61:92:8b:\n"
             "        2f:04:9a:c6\n"
             "-----BEGIN CERTIFICATE-----\n"
             "MIIDeDCCAmCgAwIBAgIBATANBgkqhkiG9w0BAQUFADCBgDELMAkGA1UEBhMCVVMx\n"
             "EzARBgNVBAoTCkFwcGxlIEluYy4xJjAkBgNVBAsTHUFwcGxlIENlcnRpZmljYXRp\n"
             "b24gQXV0aG9yaXR5MTQwMgYDVQQDFCtbVEVTVF0gQXBwbGUgaVBob25lIENlcnRp\n"
             "ZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MDMyMTA2MjA1MFoXDTIyMDMxMjA2MjA1\n"
             "MFowYTELMAkGA1UEBhMCVVMxEzARBgNVBAoTCkFwcGxlIEluYy4xFTATBgNVBAsT\n"
             "DEFwcGxlIGlQaG9uZTEmMCQGA1UEAxQdW1RFU1RdIEFwcGxlIGlQaG9uZSBEZXZp\n"
             "Y2UgQ0EwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBANdgUir6k1Lc266Sa9as\n"
             "WRcfmiDtNK7CFejj8DtjhNhtjQJldOZiGCfR/HjDLzaDOZGfPTLglX+QO6tHvvFH\n"
             "hYxdqxxcuxBpR1a4Fb80SvBJboo1Sk9Huz7qzN8u9LiWFpTdOPbwgs8m/WehcwFD\n"
             "2CW9AiyCiXxwAWjCioVghHeDAgMBAAGjgZ4wgZswDgYDVR0PAQH/BAQDAgGGMA8G\n"
             "A1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFDgFIKk/xnn07Jpvf0cCXm6keRH1MB8G\n"
             "A1UdIwQYMBaAFEWiTKmKW0onXoWmTQUcJ0Slh3YXMDgGA1UdHwQxMC8wLaAroCmG\n"
             "J2h0dHA6Ly93d3cuYXBwbGUuY29tL2FwcGxlY2EvaXBob25lLmNybDANBgkqhkiG\n"
             "9w0BAQUFAAOCAQEAjb5ryE6AnniGDAnQbu3B3DD3KUsgTixssyRy/c4kNGCVMNcy\n"
             "YTHl1NVjqj+JgfZEq3HQvBfbq7zsu6RAaufkV8YobxFy/AxRBzHbQFTuteYe49yb\n"
             "+TxqutjDIPHdScs6pinNUvnz8xhe3YKDuOhOlBB6HhGgY02OYEodRXJNoKwfsJiL\n"
             "tDNahWDPf4k1YmXRG0ik7MpgGp2m0bk982SkZ9GlG7bZ52V1y68vetvYofTzCb+a\n"
             "mRo0pu0fgoQLtqhoXexJ1LM0hK/LpNkA8LwHbBfnlbvDPdm7ahMdNL0vwZrxTWdf\n"
             "VjOQsu//J9oZYFWweMKMNFthOuHsYZKLLwSaxg==\n"
             "-----END CERTIFICATE-----";
      }

      else
      {
        v5 = "Bag Attributes\n    localKeyID: 7C 29 15 15 12 C9 CF F6 15 2B 5B 25 70 3D A7 9A 98 14 36 06\nsubject=/C=US/O=Apple Inc./OU=Apple iPhone/CN=Apple iPhone Device CA\nissuer=/C=US/O=Apple Inc./OU=Apple Certification Authority/CN=Apple iPhone Certification Authority\n-----BEGIN CERTIFICATE-----\nMIIDaTCCAlGgAwIBAgIBATANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjEmMCQGA1UECxMdQXBwbGUgQ2VydGlmaWNhdGlv\nbiBBdXRob3JpdHkxLTArBgNVBAMTJEFwcGxlIGlQaG9uZSBDZXJ0aWZpY2F0aW9u\nIEF1dGhvcml0eTAeFw0wNzA0MTYyMjU0NDZaFw0xNDA0MTYyMjU0NDZaMFoxCzAJ\nBgNVBAYTAlVTMRMwEQYDVQQKEwpBcHBsZSBJbmMuMRUwEwYDVQQLEwxBcHBsZSBp\nUGhvbmUxHzAdBgNVBAMTFkFwcGxlIGlQaG9uZSBEZXZpY2UgQ0EwgZ8wDQYJKoZI\nhvcNAQEBBQADgY0AMIGJAoGBAPGUSsnquloYYK3Lok1NTlQZaRdZB2bLl+hmmkdf\nRq5nerVKc1SxywT2vTa4DFU4ioSDMVJl+TPhl3ecK0wmsCU/6TKqewh0lOzBSzgd\nZ04IUpRai1mjXNeT9KD+VYW7TEaXXm6yd0UvZ1y8Cxi/WblshvcqdXbSGXH0KWO5\nJQuvAgMBAAGjgZ4wgZswDgYDVR0PAQH/BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8w\nHQYDVR0OBBYEFLL+ISNEhpVqedWBJo5zENinTI50MB8GA1UdIwQYMBaAFOc0Ki4i\n3jlga7SUzneDYS8xoHw1MDgGA1UdHwQxMC8wLaAroCmGJ2h0dHA6Ly93d3cuYXBw\nbGUuY29tL2FwcGxlY2EvaXBob25lLmNybDANBgkqhkiG9w0BAQUFAAOCAQEAd13P\nZ3pMViukVHe9WUg8Hum+0I/0kHKvjhwVd/IMwGlXyU7DhUYWdja2X/zqj7W24Aq5\n7dEKm3fqqxK5XCFVGY5HI0cRsdENyTP7lxSiiTRYj2mlPedheCn+k6T5y0U4Xr40\nFXwWb2nWqCF1AgIudhgvVbxlvqcxUm8Zz7yDeJ0JFovXQhyO5fLUHRLCQFssAbf8\nB4i8rYYsBUhYTspVJcxVpIIltkYpdIRSIARA49HNvKK4hzjzMS/OhKQpVKw+OCEZ\nxptCVeN2pjbdt9uzi175oVo/u6B2ArKAW17u6XEHIdDMOe7cb33peVI6TD15W4MI\npyQPbp8orlXe+tA8JA==\n-----END CERTIFICATE-----";
      }

      v6 = &QAIphoneDeviceCAPEMLen;
      v7 = &iPhoneDeviceCAPEMLen;
      goto LABEL_47;
    case 13:
      v4 = a2 == 0;
      if (a2)
      {
        v5 = "Certificate:\n"
             "    Data:\n"
             "        Version: 3 (0x2)\n"
             "        Serial Number: 2 (0x2)\n"
             "        Signature Algorithm: sha1WithRSAEncryption\n"
             "        Issuer: C=US, O=Apple Inc., OU=Apple Certification Authority, CN=[TEST] Apple iPhone Certification Authority\n"
             "        Validity\n"
             "            Not Before: Mar 21 06:20:50 2007 GMT\n"
             "            Not After : Mar 12 06:20:50 2022 GMT\n"
             "        Subject: C=US, O=Apple Inc., OU=Apple iPhone, CN=[TEST] Apple iPhone Activation\n"
             "        Subject Public Key Info:\n"
             "            Public Key Algorithm: rsaEncryption\n"
             "            RSA Public Key: (1024 bit)\n"
             "                Modulus (1024 bit):\n"
             "                    00:b3:62:65:ec:48:dd:dd:ed:44:d4:f1:fe:fb:c2:\n"
             "                    6f:42:d0:82:09:03:00:a6:01:e8:b1:07:09:26:5b:\n"
             "                    12:65:db:7f:51:15:ef:4f:45:b3:8f:ce:4d:16:1d:\n"
             "                    38:84:01:10:57:4e:8c:71:e1:5e:de:67:14:75:da:\n"
             "                    48:9a:4c:6f:f0:45:65:66:e8:9c:b5:a2:4c:f4:53:\n"
             "                    c1:ec:98:62:90:b0:94:be:12:f2:a0:ac:5c:77:16:\n"
             "                    07:73:72:5a:97:ba:50:4e:67:30:52:1e:f0:30:4e:\n"
             "                    8f:b2:a4:d3:d1:fa:f8:66:79:87:91:2f:a1:ef:4e:\n"
             "                    e6:41:8d:94:18:29:e0:f2:cf\n"
             "                Exponent: 65537 (0x10001)\n"
             "        X509v3 extensions:\n"
             "            X509v3 Key Usage: critical\n"
             "                Digital Signature\n"
             "            X509v3 Basic Constraints: critical\n"
             "                CA:FALSE\n"
             "            X509v3 Subject Key Identifier:\n"
             "                C0:6F:3A:4A:1B:ED:51:DD:9D:A3:4B:C0:41:F6:6A:11:F9:AB:8B:F1\n"
             "            X509v3 Authority Key Identifier:\n"
             "                keyid:45:A2:4C:A9:8A:5B:4A:27:5E:85:A6:4D:05:1C:27:44:A5:87:76:17\n"
             "\n"
             "            X509v3 CRL Distribution Points:\n"
             "                URI:http://www.apple.com/appleca/iphone.crl\n"
             "\n"
             "    Signature Algorithm: sha1WithRSAEncryption\n"
             "        0e:4f:55:00:9d:1e:4c:75:28:e8:79:bb:db:5c:5c:cc:45:93:\n"
             "        46:d3:3b:14:00:2d:5b:b0:8c:2e:15:3e:19:60:43:25:59:7f:\n"
             "        7b:3a:b2:7c:cf:c2:96:dd:b0:d7:70:5a:8e:28:c4:cc:32:2c:\n"
             "        f4:c2:43:e3:e1:1f:b3:b1:df:ec:86:dd:43:93:45:60:a1:53:\n"
             "        05:ba:6a:70:43:44:11:a1:9e:dd:c1:71:8b:cb:30:cd:d3:15:\n"
             "        21:e0:27:30:35:8a:76:8e:c2:23:fb:44:22:bd:96:f6:aa:55:\n"
             "        bf:4d:11:b1:0e:c4:7f:cf:86:8d:f8:30:dd:80:48:5d:9e:41:\n"
             "        4e:e0:29:96:25:cc:d6:4a:0d:47:05:87:c4:61:f6:b0:1e:1a:\n"
             "        da:48:56:a3:c1:c1:56:95:b3:4e:84:82:1b:a5:4d:d3:d0:5d:\n"
             "        60:cf:fd:e5:75:3c:91:13:e2:e4:f1:60:4a:58:93:de:3f:e9:\n"
             "        3c:bf:da:c9:f6:ef:9b:9e:b1:6e:78:9e:81:f6:e7:4c:09:b3:\n"
             "        1c:87:25:bf:8f:6e:3f:d6:03:53:1e:09:a3:5b:00:4b:9e:98:\n"
             "        fb:ae:13:86:e4:47:6a:1a:44:f8:15:c8:fb:30:c7:bd:b0:e8:\n"
             "        8c:ac:2d:73:08:af:ed:b2:e8:f5:6d:a1:e2:d9:45:de:d5:b9:\n"
             "        98:89:16:72\n"
             "-----BEGIN CERTIFICATE-----\n"
             "MIIDdjCCAl6gAwIBAgIBAjANBgkqhkiG9w0BAQUFADCBgDELMAkGA1UEBhMCVVMx\n"
             "EzARBgNVBAoTCkFwcGxlIEluYy4xJjAkBgNVBAsTHUFwcGxlIENlcnRpZmljYXRp\n"
             "b24gQXV0aG9yaXR5MTQwMgYDVQQDFCtbVEVTVF0gQXBwbGUgaVBob25lIENlcnRp\n"
             "ZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MDMyMTA2MjA1MFoXDTIyMDMxMjA2MjA1\n"
             "MFowYjELMAkGA1UEBhMCVVMxEzARBgNVBAoTCkFwcGxlIEluYy4xFTATBgNVBAsT\n"
             "DEFwcGxlIGlQaG9uZTEnMCUGA1UEAxQeW1RFU1RdIEFwcGxlIGlQaG9uZSBBY3Rp\n"
             "dmF0aW9uMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCzYmXsSN3d7UTU8f77\n"
             "wm9C0IIJAwCmAeixBwkmWxJl239RFe9PRbOPzk0WHTiEARBXToxx4V7eZxR12kia\n"
             "TG/wRWVm6Jy1okz0U8HsmGKQsJS+EvKgrFx3FgdzclqXulBOZzBSHvAwTo+ypNPR\n"
             "+vhmeYeRL6HvTuZBjZQYKeDyzwIDAQABo4GbMIGYMA4GA1UdDwEB/wQEAwIHgDAM\n"
             "BgNVHRMBAf8EAjAAMB0GA1UdDgQWBBTAbzpKG+1R3Z2jS8BB9moR+auL8TAfBgNV\n"
             "HSMEGDAWgBRFokypiltKJ16Fpk0FHCdEpYd2FzA4BgNVHR8EMTAvMC2gK6Aphido\n"
             "dHRwOi8vd3d3LmFwcGxlLmNvbS9hcHBsZWNhL2lwaG9uZS5jcmwwDQYJKoZIhvcN\n"
             "AQEFBQADggEBAA5PVQCdHkx1KOh5u9tcXMxFk0bTOxQALVuwjC4VPhlgQyVZf3s6\n"
             "snzPwpbdsNdwWo4oxMwyLPTCQ+PhH7Ox3+yG3UOTRWChUwW6anBDRBGhnt3BcYvL\n"
             "MM3TFSHgJzA1inaOwiP7RCK9lvaqVb9NEbEOxH/Pho34MN2ASF2eQU7gKZYlzNZK\n"
             "DUcFh8Rh9rAeGtpIVqPBwVaVs06EghulTdPQXWDP/eV1PJET4uTxYEpYk94/6Ty/\n"
             "2sn275uesW54noH250wJsxyHJb+Pbj/WA1MeCaNbAEuemPuuE4bkR2oaRPgVyPsw\n"
             "x72w6IysLXMIr+2y6PVtoeLZRd7VuZiJFnI=\n"
             "-----END CERTIFICATE-----\n";
      }

      else
      {
        v5 = "Bag Attributes\n    localKeyID: 75 60 9A FA 74 F6 E1 90 9C 00 2D 77 E5 10 D6 1C B3 E5 1F 4B\nsubject=/C=US/O=Apple Inc./OU=Apple iPhone/CN=Apple iPhone Activation\nissuer=/C=US/O=Apple Inc./OU=Apple Certification Authority/CN=Apple iPhone Certification Authority\n-----BEGIN CERTIFICATE-----\nMIIDZzCCAk+gAwIBAgIBAjANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjEmMCQGA1UECxMdQXBwbGUgQ2VydGlmaWNhdGlv\nbiBBdXRob3JpdHkxLTArBgNVBAMTJEFwcGxlIGlQaG9uZSBDZXJ0aWZpY2F0aW9u\nIEF1dGhvcml0eTAeFw0wNzA0MTYyMjU1MDJaFw0xNDA0MTYyMjU1MDJaMFsxCzAJ\nBgNVBAYTAlVTMRMwEQYDVQQKEwpBcHBsZSBJbmMuMRUwEwYDVQQLEwxBcHBsZSBp\nUGhvbmUxIDAeBgNVBAMTF0FwcGxlIGlQaG9uZSBBY3RpdmF0aW9uMIGfMA0GCSqG\nSIb3DQEBAQUAA4GNADCBiQKBgQDFAXzRImArmoiHfbS2oPcqAfbEv0d1jk7GbnX7\n+4YUlyIfprzBVdlmz2JHYv1+04IzJtL7cL97UI7fk0i0OMY0al8a+JPQa4Ug611T\nbqEt+njAmAkge3HXWDBdAXD9MhkC7T/9o77zOQ1oli4cUdzlnYWfzmW0PduOxuve\nAeYY4wIDAQABo4GbMIGYMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8EAjAAMB0G\nA1UdDgQWBBShoNL+t7Rz/psUaq/NPXNPH+/WlDAfBgNVHSMEGDAWgBTnNCouIt45\nYGu0lM53g2EvMaB8NTA4BgNVHR8EMTAvMC2gK6AphidodHRwOi8vd3d3LmFwcGxl\nLmNvbS9hcHBsZWNhL2lwaG9uZS5jcmwwDQYJKoZIhvcNAQEFBQADggEBAF9qmrUN\ndA+FROYGP7pWcYTAK+pLyOf9zOaE7aeVI885V8Y/BKHhlwAo+zEkiOU3FbEPCS9V\ntS18ZBcwD/+d5ZQTMFknhcUJwdPqqjnm9LqTfH/x4pw8ONHRDzxHdp96gOV3A4+8\nabkoASfcYqvIRypXnbur3bRRhTzAs4VILS6jTyFYymZeSewtBubmmigo1kCQiZGc\n76c5feDAyHb2bzEqtvx3WprljtS46QT5CR6YelinZnio32jAzRYTxtS6r3JsvZDi\nJ07+EHcmfGdpxwgO+7btW1pFar0ZjF9/jYKKnOYNyvCrwszhafbSYwzAG5EJoXFB\n4d+piWHUDcPxtcc=\n-----END CERTIFICATE-----";
      }

      v6 = &QAIphoneActivationPEMLen;
      v7 = &iPhoneActivationPEMLen;
LABEL_47:
      if (v4)
      {
        v6 = v7;
      }

      v8 = *v6;
      goto LABEL_51;
    case 14:
      v8 = 4721;
      v5 = iPhoneCAPEM;
      goto LABEL_51;
    default:
      v11 = createMobileActivationError("copyRootCertificate", 118, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid certificate type: %d", a1);
      if (v11)
      {
        goto LABEL_54;
      }

      v8 = 0;
      v5 = 0;
LABEL_51:
      v9 = [[NSData alloc] initWithBytesNoCopy:v5 length:v8 freeWhenDone:0];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
      }

      else
      {
        v11 = createMobileActivationError("copyRootCertificate", 128, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.");
LABEL_54:
        if (a3)
        {
          v11 = v11;
          v10 = 0;
          *a3 = v11;
        }

        else
        {
          v10 = 0;
        }
      }

      return v10;
  }
}

id copy_system_container_path()
{
  if (copy_system_container_path_onceToken != -1)
  {
    copy_system_container_path_cold_1();
  }

  v1 = copy_system_container_path_retval;

  return v1;
}

void __copy_system_container_path_block_invoke(id a1)
{
  v1 = container_system_path_for_identifier();
  if (v1)
  {
    v2 = v1;
    v3 = [NSString stringWithUTF8String:v1];
    v4 = copy_system_container_path_retval;
    copy_system_container_path_retval = v3;

    free(v2);
  }
}

NSString *copy_group_container_path(uint64_t a1)
{
  if (a1 && (v1 = container_system_group_path_for_identifier()) != 0)
  {
    v2 = v1;
    v3 = [NSString stringWithUTF8String:v1];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id copy_regulatory_images_directory_path()
{
  if (copy_regulatory_images_directory_path_onceToken != -1)
  {
    copy_regulatory_images_directory_path_cold_1();
  }

  v1 = copy_regulatory_images_directory_path_retval;

  return v1;
}

void __copy_regulatory_images_directory_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.regulatory_images" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/RegulatoryImages"];
    v4 = copy_regulatory_images_directory_path_retval;
    copy_regulatory_images_directory_path_retval = v3;
  }
}

id copy_suinfo_directory_path()
{
  if (copy_suinfo_directory_path_onceToken != -1)
  {
    copy_suinfo_directory_path_cold_1();
  }

  v1 = copy_suinfo_directory_path_retval;

  return v1;
}

void __copy_suinfo_directory_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.pisco.suinfo" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/ProvenanceV2"];
    v4 = copy_suinfo_directory_path_retval;
    copy_suinfo_directory_path_retval = v3;
  }
}

id copy_software_update_log_directory_path()
{
  if (copy_software_update_log_directory_path_onceToken != -1)
  {
    copy_software_update_log_directory_path_cold_1();
  }

  v1 = copy_software_update_log_directory_path_retval;

  return v1;
}

void __copy_software_update_log_directory_path_block_invoke(id a1)
{
  v1 = [@"/private/var/hardware/MobileActivation" stringByAppendingPathComponent:@"logs"];
  v2 = copy_software_update_log_directory_path_retval;
  copy_software_update_log_directory_path_retval = v1;
}

id copy_software_update_splunk_directory_path()
{
  if (copy_software_update_splunk_directory_path_onceToken != -1)
  {
    copy_software_update_splunk_directory_path_cold_1();
  }

  v1 = copy_software_update_splunk_directory_path_retval;

  return v1;
}

void __copy_software_update_splunk_directory_path_block_invoke(id a1)
{
  v1 = [@"/private/var/hardware/MobileActivation" stringByAppendingPathComponent:@"splunk"];
  v2 = copy_software_update_splunk_directory_path_retval;
  copy_software_update_splunk_directory_path_retval = v1;
}

id copy_uik_path()
{
  if (copy_uik_path_onceToken != -1)
  {
    copy_uik_path_cold_1();
  }

  v1 = copy_uik_path_retval;

  return v1;
}

void __copy_uik_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.mobileactivationd" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/uik"];
    v4 = copy_uik_path_retval;
    copy_uik_path_retval = v3;
  }
}

id copy_software_update_ucrt_directory_path()
{
  if (copy_software_update_ucrt_directory_path_onceToken != -1)
  {
    copy_software_update_ucrt_directory_path_cold_1();
  }

  v1 = copy_software_update_ucrt_directory_path_retval;

  return v1;
}

void __copy_software_update_ucrt_directory_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.mobileactivationd" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/ucrt"];
    v4 = copy_software_update_ucrt_directory_path_retval;
    copy_software_update_ucrt_directory_path_retval = v3;
  }
}

id copy_activation_records_directory_path()
{
  if (copy_activation_records_directory_path_onceToken != -1)
  {
    copy_activation_records_directory_path_cold_1();
  }

  v1 = copy_activation_records_directory_path_retval;

  return v1;
}

void __copy_activation_records_directory_path_block_invoke(id a1)
{
  v1 = copy_system_container_path();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Library/activation_records"];
    v4 = copy_activation_records_directory_path_retval;
    copy_activation_records_directory_path_retval = v3;
  }
}

id copy_ucrt_path()
{
  if (copy_ucrt_path_onceToken != -1)
  {
    copy_ucrt_path_cold_1();
  }

  v1 = copy_ucrt_path_retval;

  return v1;
}

void __copy_ucrt_path_block_invoke(id a1)
{
  v1 = copy_group_container_path([@"systemgroup.com.apple.mobileactivationd" UTF8String]);
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 stringByAppendingPathComponent:@"Library/ucrt"];
    v4 = copy_ucrt_path_retval;
    copy_ucrt_path_retval = v3;
  }
}

id copy_dcrt_path()
{
  if (copy_dcrt_path_onceToken != -1)
  {
    copy_dcrt_path_cold_1();
  }

  v1 = copy_dcrt_path_retval;

  return v1;
}

void __copy_dcrt_path_block_invoke(id a1)
{
  v1 = [@"/private/var/hardware/MobileActivation" stringByAppendingPathComponent:@"dcrt"];
  v2 = copy_dcrt_path_retval;
  copy_dcrt_path_retval = v1;
}

id copy_legacy_dcrt_path()
{
  if (copy_legacy_dcrt_path_onceToken != -1)
  {
    copy_legacy_dcrt_path_cold_1();
  }

  v1 = copy_legacy_dcrt_path_retval;

  return v1;
}

void __copy_legacy_dcrt_path_block_invoke(id a1)
{
  v1 = copy_system_container_path();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Library/dcrt"];
    v4 = copy_legacy_dcrt_path_retval;
    copy_legacy_dcrt_path_retval = v3;
  }
}

id copy_data_ark_directory_path()
{
  if (copy_data_ark_directory_path_onceToken != -1)
  {
    copy_data_ark_directory_path_cold_1();
  }

  v1 = copy_data_ark_directory_path_retval;

  return v1;
}

void __copy_data_ark_directory_path_block_invoke(id a1)
{
  v1 = copy_system_container_path();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Library/internal"];
    v4 = copy_data_ark_directory_path_retval;
    copy_data_ark_directory_path_retval = v3;
  }
}

id copy_log_directory_path()
{
  if (copy_log_directory_path_onceToken != -1)
  {
    copy_log_directory_path_cold_1();
  }

  v1 = copy_log_directory_path_retval;

  return v1;
}

void __copy_log_directory_path_block_invoke(id a1)
{
  v1 = copy_log_directory_path_retval;
  copy_log_directory_path_retval = @"/private/var/mobile/Library/Logs/mobileactivationd";
}

id copy_splunk_directory_path()
{
  if (copy_splunk_directory_path_onceToken != -1)
  {
    copy_splunk_directory_path_cold_1();
  }

  v1 = copy_splunk_directory_path_retval;

  return v1;
}

void __copy_splunk_directory_path_block_invoke(id a1)
{
  v1 = copy_system_container_path();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Library/splunk"];
    v4 = copy_splunk_directory_path_retval;
    copy_splunk_directory_path_retval = v3;
  }
}

uint64_t mobileactivationErrorHasDomainAndErrorCode(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    do
    {
      v9 = [v5 domain];
      if ([v9 isEqualToString:v7])
      {
        v10 = [v5 code];

        if (v10 == a3)
        {
          v8 = 1;
          goto LABEL_9;
        }
      }

      else
      {
      }

      v11 = [v5 userInfo];
      v12 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v5 = v12;
    }

    while (v12);
    v8 = 0;
  }

LABEL_9:

  return v8;
}

uint64_t load_identity(CFTypeRef *a1, id a2, void *a3, void *a4, int *a5, NSError **a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (!a1 || !v12)
  {
    v21 = createMobileActivationError("load_identity", 57, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v22 = 0;
    v15 = 0;
    v20 = -1;
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v25[0] = kSecAttrLabel;
  v25[1] = kSecClass;
  v26[0] = v12;
  v26[1] = kSecClassIdentity;
  v25[2] = kSecReturnRef;
  v25[3] = kSecUseDataProtectionKeychain;
  v26[2] = &__kCFBooleanTrue;
  v26[3] = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
  v15 = [(NSDictionary *)v14 mutableCopy];

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:kSecAttrAccessGroup];
  }

  if (v13)
  {
    v16 = [v13 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
    v17 = isNSNumber(v16);

    if (v17)
    {
      v18 = [v13 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
      [v15 setObject:v18 forKeyedSubscript:kSecUseSystemKeychain];
    }
  }

  v19 = SecItemCopyMatching(v15, a1);
  v20 = v19;
  if (v19)
  {
    v21 = createMobileActivationError("load_identity", 88, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy identity: %d", v19);
    v22 = 0;
    if (!a5)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a5 = v20;
    goto LABEL_13;
  }

  v21 = 0;
  v22 = 1;
  if (a5)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (a6)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v21 = v21;
    *a6 = v21;
  }

  return v22;
}

uint64_t delete_identity(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v8)
  {
    v16 = createMobileActivationError("delete_identity", 116, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v11 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v19[0] = kSecAttrLabel;
  v19[1] = kSecClass;
  v20[0] = v8;
  v20[1] = kSecClassIdentity;
  v19[2] = kSecReturnRef;
  v19[3] = kSecUseDataProtectionKeychain;
  v20[2] = &__kCFBooleanTrue;
  v20[3] = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v11 = [(NSDictionary *)v10 mutableCopy];

  if (v7)
  {
    [v11 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
  }

  if (v9)
  {
    v12 = [v9 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
    v13 = isNSNumber(v12);

    if (v13)
    {
      v14 = [v9 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
      [v11 setObject:v14 forKeyedSubscript:kSecUseSystemKeychain];
    }
  }

  v15 = SecItemDelete(v11);
  v16 = 0;
  v17 = 1;
  if (v15 != -25300 && v15)
  {
    v16 = createMobileActivationError("delete_identity", 146, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing identity: %d", v15);
    if (!a4)
    {
LABEL_10:
      v17 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v16 = v16;
    v17 = 0;
    *a4 = v16;
  }

LABEL_13:

  return v17;
}

uint64_t store_identity(uint64_t a1, id a2, void *a3, void *a4, NSError **a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1 && v10)
  {
    v24 = 0;
    v12 = delete_identity(v9, v10, v11, &v24);
    v13 = v24;
    if (v12)
    {
      v25[0] = kSecAttrLabel;
      v25[1] = kSecValueRef;
      v26[0] = v10;
      v26[1] = a1;
      v25[2] = kSecUseDataProtectionKeychain;
      v25[3] = kSecAttrAccessible;
      v26[2] = &__kCFBooleanTrue;
      v26[3] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
      v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
      v15 = [(NSDictionary *)v14 mutableCopy];

      if (v9)
      {
        [v15 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
      }

      if (v11)
      {
        v16 = [v11 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
        v17 = isNSNumber(v16);

        if (v17)
        {
          v18 = [v11 objectForKeyedSubscript:@"UseSystemKeychainSharediPadOnly"];
          [v15 setObject:v18 forKeyedSubscript:kSecUseSystemKeychain];
        }
      }

      v19 = SecItemAdd(v15, 0);
      if (!v19)
      {
        v22 = 1;
        goto LABEL_17;
      }

      v20 = createMobileActivationError("store_identity", 206, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add identity to keychain: %d", v19);
    }

    else
    {
      v20 = createMobileActivationError("store_identity", 176, @"com.apple.MobileActivation.ErrorDomain", -1, v13, @"Failed to delete existing identity.");

      v15 = 0;
    }

    v13 = v20;
    if (!a5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = createMobileActivationError("store_identity", 171, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v15 = 0;
    if (!a5)
    {
LABEL_15:
      v22 = 0;
      goto LABEL_17;
    }
  }

  v21 = v13;
  v22 = 0;
  *a5 = v13;
LABEL_17:

  return v22;
}

uint64_t load_certificate(CFTypeRef *a1, id a2, void *a3, int *a4, NSError **a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  result = 0;
  if (!v10)
  {
    v16 = createMobileActivationError("load_certificate", 231, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid inputs.");
    v17 = 0;
    v13 = 0;
    v15 = -1;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v22[0] = kSecAttrLabel;
  v22[1] = kSecClass;
  v23[0] = v10;
  v23[1] = kSecClassCertificate;
  v22[2] = kSecReturnRef;
  v22[3] = kSecUseDataProtectionKeychain;
  v23[2] = &__kCFBooleanTrue;
  v23[3] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
  v13 = [(NSDictionary *)v12 mutableCopy];

  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v14 = SecItemCopyMatching(v13, &result);
  if (v14)
  {
    v15 = v14;
    v16 = createMobileActivationError("load_certificate", 253, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate (%@): %d", v11, v14);
    v17 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a4 = v15;
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0;
  if (a1)
  {
    *a1 = CFRetain(result);
  }

  v17 = 1;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a5)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = v16;
    *a5 = v16;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  return v17;
}

uint64_t delete_certificate(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v11 = createMobileActivationError("delete_certificate", 287, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v9 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v14[0] = kSecAttrLabel;
  v14[1] = kSecClass;
  v15[0] = v6;
  v15[1] = kSecClassCertificate;
  v14[2] = kSecReturnRef;
  v14[3] = kSecUseDataProtectionKeychain;
  v15[2] = &__kCFBooleanTrue;
  v15[3] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v9 = [(NSDictionary *)v8 mutableCopy];

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v10 = SecItemDelete(v9);
  v11 = 0;
  v12 = 1;
  if (v10 != -25300 && v10)
  {
    v11 = createMobileActivationError("delete_certificate", 309, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing certificate (%@): %d", v7, v10);
    if (!a3)
    {
LABEL_7:
      v12 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v11 = v11;
    v12 = 0;
    *a3 = v11;
  }

LABEL_10:

  return v12;
}

uint64_t store_certificate(uint64_t a1, id a2, void *a3, int a4, NSError **a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  result = 0;
  if (!a1 || !v10)
  {
    v13 = createMobileActivationError("store_certificate", 334, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
LABEL_11:
    v15 = 0;
    if (!a5)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

LABEL_12:
    v19 = v13;
    v20 = 0;
    *a5 = v13;
    goto LABEL_20;
  }

  v24 = 0;
  v12 = delete_certificate(v9, v10, &v24);
  v13 = v24;
  if (!v12)
  {
    goto LABEL_11;
  }

  v26[0] = kSecAttrLabel;
  v26[1] = kSecClass;
  v27[0] = v11;
  v27[1] = kSecClassCertificate;
  v26[2] = kSecReturnRef;
  v26[3] = kSecValueRef;
  v27[2] = &__kCFBooleanTrue;
  v27[3] = a1;
  v26[4] = kSecUseDataProtectionKeychain;
  v27[4] = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
  v15 = [(NSDictionary *)v14 mutableCopy];

  if (v9)
  {
    [v15 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v16 = SecItemAdd(v15, 0);
  if (v16 == -25299 && a4)
  {
    [v15 removeObjectForKey:kSecAttrLabel];
    v17 = SecItemCopyMatching(v15, &result);
    if (v17)
    {
      MobileActivationError = createMobileActivationError("store_certificate", 368, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query duplicate certificate: %d", v17);
      goto LABEL_18;
    }

    v21 = SecItemDelete(v15);
    if (v21)
    {
      MobileActivationError = createMobileActivationError("store_certificate", 378, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to delete duplicate certificate: %d", v21);
      goto LABEL_18;
    }

    [v15 setObject:v11 forKeyedSubscript:kSecAttrLabel];
    v16 = SecItemAdd(v15, 0);
  }

  if (v16)
  {
    MobileActivationError = createMobileActivationError("store_certificate", 392, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add certificate (%@) to keychain: %d", v11, v16);
LABEL_18:
    v22 = MobileActivationError;

    v13 = v22;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v20 = 1;
LABEL_20:
  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  return v20;
}

uint64_t update_certificate(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v8 && v9)
  {
    v17[0] = kSecAttrLabel;
    v17[1] = kSecClass;
    v18[0] = v8;
    v18[1] = kSecClassCertificate;
    v17[2] = kSecUseDataProtectionKeychain;
    v18[2] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    v12 = [(NSDictionary *)v11 mutableCopy];

    if (v7)
    {
      [v12 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v13 = SecItemUpdate(v12, v10);
    if (!v13)
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v14 = createMobileActivationError("update_certificate", 440, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update %@ in keychain: %d", v8, v13);
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_9:
    v14 = v14;
    v15 = 0;
    *a4 = v14;
    goto LABEL_11;
  }

  v14 = createMobileActivationError("update_certificate", 419, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v12 = 0;
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = 0;
LABEL_11:

  return v15;
}

uint64_t store_pem_as_identity(void *a1, void *a2, void *a3, void *a4, void *a5, NSError **a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v11 && v12 && v14)
  {
    v24 = 0;
    v16 = lockcrypto_identity_from_pem_data(v12, v11, &v24);
    v17 = v24;
    v18 = v17;
    if (v16)
    {
      v23 = v17;
      v19 = store_identity(v16, v13, v14, v15, &v23);
      v20 = v23;

      if (!a6)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v20 = createMobileActivationError("store_pem_as_identity", 469, @"com.apple.MobileActivation.ErrorDomain", -1, v17, @"Failed to create identity from pem data");
  }

  else
  {
    v20 = createMobileActivationError("store_pem_as_identity", 463, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid inputs.");
    v16 = 0;
  }

  v19 = 0;
  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_10:
  if ((v19 & 1) == 0)
  {
    v21 = v20;
    *a6 = v20;
  }

LABEL_12:
  if (v16)
  {
    CFRelease(v16);
  }

  return v19;
}

uint64_t store_pem_as_certificate(void *a1, void *a2, void *a3, int a4, NSError **a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v11;
  if (!v9 || !v11)
  {
    v17 = createMobileActivationError("store_pem_as_certificate", 499, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid inputs.");
    v13 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v24 = 0;
  v13 = lockcrypto_cert_from_pem_data(v9, &v24);
  v14 = v24;
  v15 = v14;
  if (!v13)
  {
    v17 = createMobileActivationError("store_pem_as_certificate", 505, @"com.apple.MobileActivation.ErrorDomain", -1, v14, @"Failed to create certificate from pem data.");

    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v23 = v14;
  v16 = store_certificate(v13, v10, v12, a4, &v23);
  v17 = v23;

  if (v16)
  {
    v18 = 1;
LABEL_11:
    CFRelease(v13);
    v20 = v18;
    goto LABEL_12;
  }

  v22 = createMobileActivationError("store_pem_as_certificate", 511, @"com.apple.MobileActivation.ErrorDomain", -1, v17, @"Failed to store certificate.");

  v17 = v22;
  if (a5)
  {
LABEL_9:
    v19 = v17;
    *a5 = v17;
  }

LABEL_10:
  v18 = 0;
  v20 = 0;
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v20;
}

CFTypeRef copy_keychain_item(void *a1, void *a2, void *a3, int *a4, NSError **a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v11;
  result = 0;
  if (!v10)
  {
    v16 = createMobileActivationError("copy_keychain_item", 542, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v17 = 0;
    v18 = -1;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v27 = a5;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"LocalAuthenticationContext"];
    if (v13)
    {
      v14 = [v12 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      getLAContextClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v12 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      }

      else
      {
        v13 = 0;
      }
    }

    v19 = [v12 objectForKeyedSubscript:@"UseAuthenticationUI"];
    v20 = isNSString(v19);

    if (v20)
    {
      v21 = [v12 objectForKeyedSubscript:@"UseAuthenticationUI"];
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  v21 = 0;
LABEL_13:
  v29[0] = kSecAttrLabel;
  v29[1] = kSecClass;
  v30[0] = v10;
  v30[1] = kSecClassKey;
  v29[2] = kSecReturnRef;
  v29[3] = kSecUseDataProtectionKeychain;
  v30[2] = &__kCFBooleanTrue;
  v30[3] = &__kCFBooleanTrue;
  v22 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
  v23 = [(NSDictionary *)v22 mutableCopy];

  if (v9)
  {
    [v23 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
  }

  if (v13)
  {
    [v23 setObject:v13 forKeyedSubscript:kSecUseAuthenticationContext];
  }

  if (v21)
  {
    [v23 setObject:v21 forKeyedSubscript:kSecUseAuthenticationUI];
  }

  v24 = SecItemCopyMatching(v23, &result);
  v18 = v24;
  if (v24)
  {
    v16 = createMobileActivationError("copy_keychain_item", 586, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v10, v24);

    v17 = 0;
  }

  else
  {
    v17 = result;
    result = 0;

    v16 = 0;
  }

  a5 = v27;
  if (a4)
  {
LABEL_23:
    *a4 = v18;
  }

LABEL_24:
  if (a5 && !v17)
  {
    v25 = v16;
    *a5 = v16;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  return v17;
}

id getLAContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAContextClass_softClass;
  v7 = getLAContextClass_softClass;
  if (!getLAContextClass_softClass)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3254779904;
    v3[2] = __getLAContextClass_block_invoke;
    v3[3] = &__block_descriptor_40_e8_32r_e5_v8__0l;
    v3[4] = &v4;
    __getLAContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10031E988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t delete_keychain_item(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v13 = createMobileActivationError("delete_keychain_item", 617, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v9 = 0;
    if (!a3)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v15[0] = kSecAttrLabel;
  v15[1] = kSecClass;
  v16[0] = v6;
  v16[1] = kSecClassKey;
  v15[2] = kSecUseDataProtectionKeychain;
  v16[2] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  v9 = [(NSDictionary *)v8 mutableCopy];

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v10 = SecItemDelete(v9);
  if (v10 != -25300 && v10 != 0)
  {
    v13 = createMobileActivationError("delete_keychain_item", 638, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing keychain item %@: %d", v7, v10);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_11:
    v13 = v13;
    v12 = 0;
    *a3 = v13;
    goto LABEL_14;
  }

  v13 = 0;
  v12 = 1;
LABEL_14:

  return v12;
}

uint64_t store_keychain_item(uint64_t a1, id a2, void *a3, void *a4, NSError **a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (a1 && v10)
  {
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      if (v13 && (v14 = v13, v15 = [v12 objectForKeyedSubscript:@"LocalAuthenticationContext"], getLAContextClass(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, v14, (isKindOfClass & 1) != 0))
      {
        v17 = [v12 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      }

      else
      {
        v17 = 0;
      }

      v23 = [v12 objectForKeyedSubscript:@"UseAuthenticationUI"];
      v24 = isNSString(v23);

      if (v24)
      {
        v20 = [v12 objectForKeyedSubscript:@"UseAuthenticationUI"];
        goto LABEL_14;
      }
    }

    else
    {
      v17 = 0;
    }

    v20 = 0;
LABEL_14:
    v30 = 0;
    v25 = delete_keychain_item(v9, v10, &v30);
    v18 = v30;
    if (v25)
    {
      v31[0] = kSecAttrLabel;
      v31[1] = kSecClass;
      v32[0] = v10;
      v32[1] = kSecClassKey;
      v31[2] = kSecValueRef;
      v31[3] = kSecUseDataProtectionKeychain;
      v32[2] = a1;
      v32[3] = &__kCFBooleanTrue;
      v31[4] = kSecAttrAccessible;
      v32[4] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
      v26 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];
      v19 = [(NSDictionary *)v26 mutableCopy];

      if (v9)
      {
        [v19 setObject:v9 forKeyedSubscript:kSecAttrAccessGroup];
      }

      if (v17)
      {
        [v19 setObject:v17 forKeyedSubscript:kSecUseAuthenticationContext];
      }

      if (v20)
      {
        [v19 setObject:v20 forKeyedSubscript:kSecUseAuthenticationUI];
      }

      v27 = SecItemAdd(v19, 0);
      if (!v27)
      {
        v22 = 1;
        goto LABEL_27;
      }

      v28 = createMobileActivationError("store_keychain_item", 717, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add %@ to keychain: %d", v10, v27);
    }

    else
    {
      v28 = createMobileActivationError("store_keychain_item", 684, @"com.apple.MobileActivation.ErrorDomain", -1, v18, @"Failed to delete existing keychain item.");

      v19 = 0;
    }

    v18 = v28;
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v18 = createMobileActivationError("store_keychain_item", 667, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v19 = 0;
  v17 = 0;
  v20 = 0;
  if (!a5)
  {
LABEL_25:
    v22 = 0;
    goto LABEL_27;
  }

LABEL_8:
  v21 = v18;
  v22 = 0;
  *a5 = v18;
LABEL_27:

  return v22;
}

uint64_t update_keychain_item(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v8 && v9)
  {
    v17[0] = kSecAttrLabel;
    v17[1] = kSecClass;
    v18[0] = v8;
    v18[1] = kSecClassKey;
    v17[2] = kSecUseDataProtectionKeychain;
    v18[2] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    v12 = [(NSDictionary *)v11 mutableCopy];

    if (v7)
    {
      [v12 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v13 = SecItemUpdate(v12, v10);
    if (!v13)
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v14 = createMobileActivationError("update_keychain_item", 763, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update %@ in keychain: %d", v8, v13);
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_9:
    v14 = v14;
    v15 = 0;
    *a4 = v14;
    goto LABEL_11;
  }

  v14 = createMobileActivationError("update_keychain_item", 742, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v12 = 0;
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = 0;
LABEL_11:

  return v15;
}

id copy_keychain_data(void *a1, void *a2, int *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  result = 0;
  if (v8)
  {
    v20[0] = kSecAttrLabel;
    v20[1] = kSecClass;
    v21[0] = v8;
    v21[1] = kSecClassGenericPassword;
    v20[2] = kSecReturnData;
    v20[3] = kSecUseDataProtectionKeychain;
    v21[2] = &__kCFBooleanTrue;
    v21[3] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
    v11 = [(NSDictionary *)v10 mutableCopy];

    if (v7)
    {
      [v11 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v12 = SecItemCopyMatching(v11, &result);
    v13 = v12;
    if (v12)
    {
      v14 = createMobileActivationError("copy_keychain_data", 810, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v9, v12);
      v15 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
      v15 = result;
      result = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v14 = createMobileActivationError("copy_keychain_data", 788, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  v15 = 0;
  v11 = 0;
  v13 = -1;
  if (a3)
  {
LABEL_8:
    *a3 = v13;
  }

LABEL_9:
  if (a4 && !v15)
  {
    v16 = v14;
    *a4 = v14;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;
  v17 = v15;

  return v17;
}

id copy_keychain_data_attributes(void *a1, void *a2, int *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  result = 0;
  if (v8)
  {
    v20[0] = kSecAttrLabel;
    v20[1] = kSecClass;
    v21[0] = v8;
    v21[1] = kSecClassGenericPassword;
    v20[2] = kSecReturnAttributes;
    v20[3] = kSecUseDataProtectionKeychain;
    v21[2] = &__kCFBooleanTrue;
    v21[3] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
    v11 = [(NSDictionary *)v10 mutableCopy];

    if (v7)
    {
      [v11 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v12 = SecItemCopyMatching(v11, &result);
    v13 = v12;
    if (v12)
    {
      v14 = createMobileActivationError("copy_keychain_data_attributes", 864, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v9, v12);
      v15 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
      v15 = result;
      result = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v14 = createMobileActivationError("copy_keychain_data_attributes", 842, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  v15 = 0;
  v11 = 0;
  v13 = -1;
  if (a3)
  {
LABEL_8:
    *a3 = v13;
  }

LABEL_9:
  if (a4 && !v15)
  {
    v16 = v14;
    *a4 = v14;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;
  v17 = v15;

  return v17;
}

uint64_t delete_keychain_data(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v13 = createMobileActivationError("delete_keychain_data", 895, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v9 = 0;
    if (!a3)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v15[0] = kSecAttrLabel;
  v15[1] = kSecClass;
  v16[0] = v6;
  v16[1] = kSecClassGenericPassword;
  v15[2] = kSecUseDataProtectionKeychain;
  v16[2] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  v9 = [(NSDictionary *)v8 mutableCopy];

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v10 = SecItemDelete(v9);
  if (v10 != -25300 && v10 != 0)
  {
    v13 = createMobileActivationError("delete_keychain_data", 916, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing keychain item %@: %d", v7, v10);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_11:
    v13 = v13;
    v12 = 0;
    *a3 = v13;
    goto LABEL_14;
  }

  v13 = 0;
  v12 = 1;
LABEL_14:

  return v12;
}

uint64_t store_keychain_data(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v7 && v9)
  {
    v20 = 0;
    v11 = delete_keychain_data(v8, v9, &v20);
    v12 = v20;
    if (v11)
    {
      v21[0] = kSecAttrLabel;
      v21[1] = kSecClass;
      v22[0] = v10;
      v22[1] = kSecClassGenericPassword;
      v21[2] = kSecValueData;
      v21[3] = kSecUseDataProtectionKeychain;
      v22[2] = v7;
      v22[3] = &__kCFBooleanTrue;
      v21[4] = kSecAttrService;
      v21[5] = kSecAttrAccount;
      v22[4] = @"com.apple.mobileactivationd";
      v22[5] = v10;
      v21[6] = kSecAttrAccessible;
      v22[6] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
      v13 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:7];
      v14 = [(NSDictionary *)v13 mutableCopy];

      if (v8)
      {
        [v14 setObject:v8 forKeyedSubscript:kSecAttrAccessGroup];
      }

      v15 = SecItemAdd(v14, 0);
      if (!v15)
      {
        v18 = 1;
        goto LABEL_14;
      }

      v16 = createMobileActivationError("store_keychain_data", 974, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add %@ to keychain: %d", v10, v15);
    }

    else
    {
      v16 = createMobileActivationError("store_keychain_data", 946, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to delete existing keychain item.");

      v14 = 0;
    }

    v12 = v16;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = createMobileActivationError("store_keychain_data", 941, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v14 = 0;
    if (!a4)
    {
LABEL_12:
      v18 = 0;
      goto LABEL_14;
    }
  }

  v17 = v12;
  v18 = 0;
  *a4 = v12;
LABEL_14:

  return v18;
}

uint64_t update_keychain_data(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v8)
  {
    v16[0] = kSecAttrLabel;
    v16[1] = kSecClass;
    v17[0] = v8;
    v17[1] = kSecClassGenericPassword;
    v16[2] = kSecUseDataProtectionKeychain;
    v16[3] = kSecAttrService;
    v17[2] = &__kCFBooleanTrue;
    v17[3] = @"com.apple.mobileactivationd";
    v16[4] = kSecAttrAccount;
    v17[4] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
    v11 = [(NSDictionary *)v10 mutableCopy];

    if (v7)
    {
      [v11 setObject:v7 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v12 = SecItemUpdate(v11, v9);
    if (!v12)
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_10;
    }

    v13 = createMobileActivationError("update_keychain_data", 1022, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update %@ in keychain: %d", v8, v12);
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_10;
  }

  v13 = createMobileActivationError("update_keychain_data", 999, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v11 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = v13;
  v14 = 0;
  *a4 = v13;
LABEL_10:

  return v14;
}

Class __getLAContextClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = off_1003D1D68;
    v5 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    __getLAContextClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

BOOL networkReachable(NSError **a1)
{
  v2 = +[NetworkProvider sharedInstance];
  v3 = v2;
  if (!v2)
  {
    v5 = createMobileActivationError("networkReachable", 87, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate network provider.");
    v4 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = [(NetworkProvider *)v2 networkReachable];
  v5 = 0;
  if (a1)
  {
LABEL_3:
    v5 = v5;
    *a1 = v5;
  }

LABEL_4:

  return v4;
}

NSArray *copy_required_dcrt_oids()
{
  v2[0] = @"1.2.840.113635.100.8.4";
  v2[1] = @"1.2.840.113635.100.8.12";
  v2[2] = @"1.2.840.113635.100.8.5";
  v2[3] = @"1.2.840.113635.100.8.7";
  v0 = [NSArray arrayWithObjects:v2 count:4];

  return v0;
}

NSArray *copy_critical_dcrt_oids()
{
  v2[0] = @"1.2.840.113635.100.8.4";
  v2[1] = @"1.2.840.113635.100.8.5";
  v0 = [NSArray arrayWithObjects:v2 count:2];

  return v0;
}

NSMutableSet *copy_supported_baa_oids()
{
  v0 = [NSMutableSet setWithObjects:@"1.2.840.113635.100.10.1", @"1.2.840.113635.100.10.2", @"1.2.840.113635.100.8.1", @"1.2.840.113635.100.8.2", @"1.2.840.113635.100.8.3", @"1.2.840.113635.100.8.4", @"1.2.840.113635.100.8.5", @"1.2.840.113635.100.8.6", @"1.2.840.113635.100.8.7", @"1.2.840.113635.100.8.12", @"1.2.840.113635.100.6.71.1", @"1.2.840.113635.100.6.71.2", @"1.2.840.113635.100.6.71.3", @"1.2.840.113635.100.8.9.4", @"1.2.840.113635.100.8.10.4", 0];
  if (is_virtual_machine())
  {
    v1 = [NSSet setWithObjects:@"1.2.840.113635.100.10.1", 0];
    [(NSMutableSet *)v0 minusSet:v1];
  }

  return v0;
}

CFTypeRef createReferenceKeyBlob(const void *a1, char a2, id a3, NSError **a4)
{
  v7 = a3;
  v8 = kSecAttrKeyTypeECSECPrimeRandom;
  error = 0;
  if (v7 && (v9 = [v7 objectForKeyedSubscript:@"KeySizeInBits"], v10 = isNSNumber(v9), v10, v9, v10))
  {
    v11 = [v7 objectForKeyedSubscript:@"KeySizeInBits"];
    if (([v11 isEqualToNumber:&off_1003FBDB0] & 1) == 0 && (objc_msgSend(v11, "isEqualToNumber:", &off_1003FBDC8) & 1) == 0)
    {
      v12 = createMobileActivationError("createReferenceKeyBlob", 73, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unsupported size (%@)", @"KeySizeInBits", v11);
      v13 = 0;
LABEL_20:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v18 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v11 = &off_1003FBDB0;
  }

  v14 = +[GestaltHlpr getSharedInstance];
  v13 = [v14 copyAnswer:@"HasPKA"];

  v15 = isNSNumber(v13);
  if (!v15)
  {
    v12 = createMobileActivationError("createReferenceKeyBlob", 84, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve PKA state.");
    goto LABEL_20;
  }

  if ([v13 BOOLValue] && (a2 & 1) == 0)
  {
    v16 = kSecAttrKeyTypeECSECPrimeRandomPKA;

    v8 = v16;
  }

  if (a1)
  {
    v17 = CFRetain(a1);
    if (v17)
    {
      v18 = v17;
      goto LABEL_23;
    }
  }

  if ((isRunningInRecovery() & 1) != 0 || isRunningInDiagnosticsMode())
  {
    v18 = SecAccessControlCreate();
    if (!v18)
    {
      MobileActivationError = createMobileActivationError("createReferenceKeyBlob", 104, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
      goto LABEL_29;
    }

    v19 = kSecAttrAccessibleUntilReboot;
    if ((SecAccessControlSetProtection() & 1) == 0)
    {
      MobileActivationError = createMobileActivationError("createReferenceKeyBlob", 109, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v19);
LABEL_29:
      v12 = MobileActivationError;
      v21 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v18 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
    if (!v18)
    {
      MobileActivationError = createMobileActivationError("createReferenceKeyBlob", 115, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control (%@).", kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate);
      goto LABEL_29;
    }
  }

LABEL_23:
  v24 = objc_alloc_init(NSMutableDictionary);
  v21 = v24;
  if (!v24)
  {
    v12 = createMobileActivationError("createReferenceKeyBlob", 123, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to alloc dictionary.");
LABEL_30:
    v22 = 0;
    v23 = 0;
    goto LABEL_31;
  }

  [v24 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsPermanent];
  [v21 setObject:kSecAttrTokenIDAppleKeyStore forKeyedSubscript:kSecAttrTokenID];
  [v21 setObject:v8 forKeyedSubscript:kSecAttrKeyType];
  [v21 setObject:v18 forKeyedSubscript:kSecAttrAccessControl];
  [v21 setObject:v11 forKeyedSubscript:kSecAttrKeySizeInBits];
  v25 = SecKeyCreateRandomKey(v21, &error);
  v23 = v25;
  if (v25)
  {
    v22 = CFRetain(v25);
    v12 = 0;
  }

  else
  {
    v12 = createMobileActivationError("createReferenceKeyBlob", 141, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create ref key.");
    v22 = 0;
  }

LABEL_31:
  if (a4 && !v22)
  {
    v26 = v12;
    *a4 = v12;
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v22;
}

id create_baa_info(__SecKey *a1, id a2, NSError **a3)
{
  v4 = a2;
  error = 0;
  v5 = [NSMutableArray alloc];
  v241[0] = @"1.2.840.113635.100.8.4";
  v241[1] = @"1.2.840.113635.100.8.5";
  v241[2] = @"1.2.840.113635.100.8.7";
  v6 = [NSArray arrayWithObjects:v241 count:3];
  v7 = [v5 initWithArray:v6];

  v8 = [NSNumber numberWithUnsignedInt:0];
  v219 = v4;
  if (!v4)
  {
    v191 = 0;
    v187 = 0;
    v189 = 0;
    v25 = 0;
    v210 = 0;
    v26 = 0;
    v27 = 0;
    v198 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    v195 = 0;
    v196 = 0;
    v197 = 0;
    v28 = 0;
    v29 = 1;
    v205 = &off_1003FBDF8;
    v215 = 0;
    v216 = &off_1003FBDF8;
    v206 = &off_1003FBDE0;
    goto LABEL_25;
  }

  v9 = [v4 objectForKeyedSubscript:@"OIDSToInclude"];
  v10 = isNSArray(v9);

  v182 = v8;
  if (v10)
  {
    key = a1;
    v217 = v7;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v11 = [v4 objectForKeyedSubscript:@"OIDSToInclude"];
    v12 = [v11 countByEnumeratingWithState:&v233 objects:v240 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v234;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v234 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = isNSString(*(*(&v233 + 1) + 8 * i));

          if (!v16)
          {
            v40 = [v219 objectForKeyedSubscript:@"OIDSToInclude"];
            v35 = createMobileActivationError("create_baa_info", 244, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid options (%@): %@", @"OIDSToInclude", v40);

            v193 = 0;
            v37 = 0;
            v196 = 0;
            v197 = 0;
            v199 = 0;
            v200 = 0;
            v213 = 0;
            v214 = 0;
            v195 = 0;
            v201 = 0;
            v202 = 0;
            v198 = 0;
            v212 = 0;
            v208 = 0;
            v209 = 0;
            v203 = 0;
            v204 = 0;
            v38 = 0;
            v25 = 0;
            goto LABEL_31;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v233 objects:v240 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = [NSMutableArray alloc];
    v18 = [v219 objectForKeyedSubscript:@"OIDSToInclude"];
    v7 = [v17 initWithArray:v18];

    if (is_virtual_machine())
    {
      v19 = copy_unsupported_virtual_machine_oids();
      v20 = [(NSSet *)v19 allObjects];
      [v7 removeObjectsInArray:v20];
    }

    v8 = v182;
    a1 = key;
  }

  if (([v7 containsObject:@"1.2.840.113635.100.8.1"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.7") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.1") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.2") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.3"))
  {
    v21 = [v7 containsObject:@"1.2.840.113635.100.8.1"];
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v217 = v7;
  v189 = [v7 containsObject:@"1.2.840.113635.100.8.7"];
  v187 = v21;
  v191 = v22;
  if (([v7 containsObject:@"1.2.840.113635.100.8.2"] & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.11.1"))
  {
    v23 = [v219 objectForKeyedSubscript:@"nonce"];
    v24 = isNSData(v23);
    if (v24)
    {
    }

    else
    {
      v52 = [v219 objectForKeyedSubscript:@"AppSpecificData"];
      v25 = isNSData(v52);

      if (!v25)
      {
        v35 = createMobileActivationError("create_baa_info", 281, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing one of the required options: %@ / %@", @"nonce", @"AppSpecificData");
        v193 = 0;
        v37 = 0;
        v196 = 0;
        v197 = 0;
        v199 = 0;
        v200 = 0;
        v213 = 0;
        v214 = 0;
        v195 = 0;
        v201 = 0;
        v202 = 0;
        v198 = 0;
        v212 = 0;
        v208 = 0;
        v209 = 0;
        v203 = 0;
        v204 = 0;
        v38 = 0;
        v16 = 0;
LABEL_31:
        v39 = 0;
        v210 = 0;
        v211 = 0;
        v215 = 0;
        keya = 0;
        v188 = 0;
        v194 = 0;
        v207 = 0;
        v41 = 0;
        v42 = 0;
        v190 = 0;
        v192 = 0;
        v34 = v182;
        goto LABEL_118;
      }
    }

    v53 = [v219 objectForKeyedSubscript:@"nonce"];
    v54 = [v219 objectForKeyedSubscript:@"AppSpecificData"];
    v55 = v54;
    v213 = v53;
    if (v54)
    {
      v39 = isNSData(v54);

      v8 = v182;
      if (!v39)
      {
        v212 = v55;
        v34 = v182;
        v35 = createMobileActivationError("create_baa_info", 290, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@).", @"AppSpecificData");
        v193 = 0;
        v37 = 0;
        v196 = 0;
        v197 = 0;
        v199 = 0;
        v200 = 0;
        v214 = 0;
        v195 = 0;
        v201 = 0;
LABEL_65:
        v198 = 0;
        v202 = 0;
        v203 = 0;
        v208 = 0;
        v209 = 0;
        v204 = 0;
        v38 = 0;
        v16 = 0;
        v25 = 0;
LABEL_117:
        v210 = 0;
        v211 = 0;
        v215 = 0;
        keya = 0;
        v188 = 0;
        v194 = 0;
        v207 = 0;
        v41 = 0;
        v42 = 0;
        v190 = 0;
        v192 = 0;
LABEL_118:
        v216 = &off_1003FBDF8;
        v205 = &off_1003FBDF8;
        v206 = &off_1003FBDE0;
        goto LABEL_119;
      }

      if ([v55 length] >= 0x41)
      {
        v212 = v55;
        v56 = createMobileActivationError("create_baa_info", 295, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", @"AppSpecificData", [v55 length]);
        v34 = v182;
LABEL_113:
        v35 = v56;
LABEL_114:
        v193 = 0;
        v37 = 0;
        v196 = 0;
        v197 = 0;
        v199 = 0;
        v200 = 0;
        v214 = 0;
        v195 = 0;
        v201 = 0;
        goto LABEL_115;
      }
    }

    else
    {
      v8 = v182;
    }
  }

  else
  {
    v213 = 0;
    v55 = 0;
  }

  v59 = [v219 objectForKeyedSubscript:@"CertType"];
  v60 = isNSNumber(v59);

  v212 = v55;
  if (v60)
  {
    v61 = [v219 objectForKeyedSubscript:@"CertType"];
    v62 = v8;
    v8 = v61;

    v63 = [NSNumber numberWithUnsignedInt:0];
    if ([(NSNumber *)v8 isEqualToNumber:v63])
    {
LABEL_62:

      goto LABEL_69;
    }

    v64 = [NSNumber numberWithUnsignedInt:1];
    if ([(NSNumber *)v8 isEqualToNumber:v64])
    {

      goto LABEL_62;
    }

    v67 = [NSNumber numberWithUnsignedInt:2];
    v68 = [(NSNumber *)v8 isEqualToNumber:v67];

    if ((v68 & 1) == 0)
    {
      v34 = v8;
      MobileActivationError = createMobileActivationError("create_baa_info", 305, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"CertType", v8);
      goto LABEL_112;
    }
  }

LABEL_69:
  v69 = [NSNumber numberWithUnsignedInt:1];
  v70 = [(NSNumber *)v8 isEqualToNumber:v69];

  if (v70)
  {
    if (!device_supports_mfi_certificates())
    {
      v34 = v8;
      MobileActivationError = createMobileActivationError("create_baa_info", 312, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Certificate type not supported on this platform: %@", v8);
      goto LABEL_112;
    }

    if (([v7 containsObject:@"1.2.840.113635.100.6.71.1"] & 1) == 0)
    {
      v34 = v8;
      MobileActivationError = createMobileActivationError("create_baa_info", 317, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required OID for certificate type (%@): %@", v8, @"1.2.840.113635.100.6.71.1");
LABEL_112:
      v56 = MobileActivationError;
      goto LABEL_113;
    }
  }

  else if (([v7 containsObject:@"1.2.840.113635.100.6.71.1"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.6.71.2") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.6.71.3"))
  {
    v34 = v8;
    MobileActivationError = createMobileActivationError("create_baa_info", 324, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid OID(s) for requested certificate type: %@", v8);
    goto LABEL_112;
  }

  if ([v7 containsObject:@"1.2.840.113635.100.6.71.1"] && (v72 = objc_msgSend(v219, "objectForKeyedSubscript:", @"MFiProperties"), v73 = isNSData(v72), v73, v72, v73))
  {
    v74 = [v219 objectForKeyedSubscript:@"MFiProperties"];
    v75 = [v74 length];

    if (v75 != 32)
    {
      v34 = v8;
      v120 = [v219 objectForKeyedSubscript:@"MFiProperties"];
      v35 = createMobileActivationError("create_baa_info", 332, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", @"MFiProperties", [v120 length]);

      goto LABEL_114;
    }

    v201 = [v219 objectForKeyedSubscript:@"MFiProperties"];
  }

  else
  {
    v201 = 0;
  }

  if (![v7 containsObject:@"1.2.840.113635.100.6.71.2"])
  {
    v38 = 0;
    v113 = 0;
    goto LABEL_130;
  }

  v99 = [v219 objectForKeyedSubscript:@"MFiPPUID"];
  v39 = isNSString(v99);

  if (!v39)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 342, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", @"MFiPPUID");
    v193 = 0;
    v37 = 0;
    v196 = 0;
    v197 = 0;
    v199 = 0;
    v200 = 0;
    v214 = 0;
    v195 = 0;
    goto LABEL_65;
  }

  v100 = [v219 objectForKeyedSubscript:@"MFiPPUID"];
  v101 = [v100 length];

  if (v101 >= 0x25)
  {
    v34 = v8;
    v102 = [v219 objectForKeyedSubscript:@"MFiPPUID"];
    v35 = createMobileActivationError("create_baa_info", 347, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", @"MFiPPUID", [v102 length]);

    v193 = 0;
    v37 = 0;
    v196 = 0;
    v197 = 0;
    v199 = 0;
    v200 = 0;
    v214 = 0;
    v195 = 0;
LABEL_115:
    v198 = 0;
    v202 = 0;
    v203 = 0;
    v208 = 0;
    v204 = 0;
    v38 = 0;
LABEL_116:
    v16 = 0;
    v209 = 0;
    v25 = 0;
    v39 = 0;
    goto LABEL_117;
  }

  v121 = [v219 objectForKeyedSubscript:@"MFiPPUID"];
  v38 = [v121 stringByPaddingToLength:36 withString:&stru_1003F4CD8 startingAtIndex:0];

  if (!v38)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 356, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to pad string.");
    v193 = 0;
    v37 = 0;
    v196 = 0;
    v197 = 0;
    v199 = 0;
    v200 = 0;
    v214 = 0;
    v195 = 0;
    v198 = 0;
    v202 = 0;
    v203 = 0;
    v208 = 0;
    v204 = 0;
    goto LABEL_116;
  }

  v113 = [v38 dataUsingEncoding:4];
  if (!v113)
  {
    v34 = v8;
    v195 = v38;
    v35 = createMobileActivationError("create_baa_info", 362, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to convert string to data.");
    v193 = 0;
    v37 = 0;
    v196 = 0;
    v197 = 0;
    goto LABEL_150;
  }

LABEL_130:
  v196 = v113;
  v195 = v38;
  if (![v7 containsObject:@"1.2.840.113635.100.6.71.3"])
  {
    v200 = 0;
    goto LABEL_154;
  }

  v114 = [v219 objectForKeyedSubscript:@"MFiData"];
  v39 = isNSData(v114);

  if (!v39)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 369, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", @"MFiData");
    v193 = 0;
    v37 = 0;
    v197 = 0;
    v199 = 0;
    v200 = 0;
    v214 = 0;
    goto LABEL_65;
  }

  v115 = [v219 objectForKeyedSubscript:@"MFiData"];
  v116 = [v115 length];

  if (v116 >= 0x4B0)
  {
    v34 = v8;
    v117 = [v219 objectForKeyedSubscript:@"MFiData"];
    v35 = createMobileActivationError("create_baa_info", 374, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", @"MFiData", [v117 length]);

    v193 = 0;
    v37 = 0;
    v197 = 0;
LABEL_150:
    v199 = 0;
    v200 = 0;
    v214 = 0;
    goto LABEL_115;
  }

  v200 = [v219 objectForKeyedSubscript:@"MFiData"];
LABEL_154:
  v122 = [v219 objectForKeyedSubscript:@"UseRKSigningInterface"];
  v123 = isNSNumber(v122);

  if (v123)
  {
    v124 = [v219 objectForKeyedSubscript:@"UseRKSigningInterface"];
    v28 = [v124 BOOLValue];
  }

  else
  {
    v28 = 0;
  }

  v125 = [v219 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
  v126 = isNSNumber(v125);

  if (v126)
  {
    v127 = [v219 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
    v29 = [v127 BOOLValue];
  }

  else
  {
    v29 = 1;
  }

  v128 = [v219 objectForKeyedSubscript:@"Validity"];
  v129 = isNSNumber(v128);

  if (v129)
  {
    v130 = [v219 objectForKeyedSubscript:@"Validity"];
    v206 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v130 unsignedIntegerValue]);
  }

  else
  {
    v206 = &off_1003FBDE0;
  }

  v131 = [v219 objectForKeyedSubscript:@"CACert"];
  v132 = isNSNumber(v131);

  if (v132)
  {
    v133 = [v219 objectForKeyedSubscript:@"CACert"];
    v205 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v133 unsignedIntegerValue]);
  }

  else
  {
    v205 = &off_1003FBDF8;
  }

  v134 = [v219 objectForKeyedSubscript:@"scrtAttestation"];
  v135 = isNSNumber(v134);

  if (v135)
  {
    v136 = [v219 objectForKeyedSubscript:@"scrtAttestation"];
    v216 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v136 unsignedIntegerValue]);
  }

  else
  {
    v216 = &off_1003FBDF8;
  }

  v137 = [v219 objectForKeyedSubscript:@"ClientAttestationData"];
  v138 = isNSData(v137);

  if (!v138)
  {
    v25 = 0;
    v215 = 0;
LABEL_174:
    v210 = 0;
    goto LABEL_175;
  }

  v139 = [v219 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
  v25 = isNSData(v139);

  if (!v25)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 411, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option for %@.", @"ClientAttestationPublicKey");
    v193 = 0;
    v37 = 0;
    v197 = 0;
    v198 = 0;
    v199 = 0;
    v214 = 0;
    v215 = 0;
    v202 = 0;
    v203 = 0;
    v208 = 0;
    v209 = 0;
    v204 = 0;
    v38 = 0;
    v16 = 0;
    v39 = 0;
    v210 = 0;
    goto LABEL_83;
  }

  v25 = [v219 objectForKeyedSubscript:@"ClientAttestationData"];
  v215 = [v219 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
  v140 = [v219 objectForKeyedSubscript:@"ClientDirectAttestationCertificate"];
  v141 = isNSData(v140);

  if (!v141)
  {
    goto LABEL_174;
  }

  v210 = [v219 objectForKeyedSubscript:@"ClientDirectAttestationCertificate"];
LABEL_175:
  v142 = [v219 objectForKeyedSubscript:@"AppID"];
  v143 = isNSString(v142);

  if (v143)
  {
    v198 = [v219 objectForKeyedSubscript:@"AppID"];
  }

  else
  {
    v198 = 0;
  }

  v144 = [v219 objectForKeyedSubscript:@"LiveImage4Manifest"];
  v145 = isNSData(v144);

  if (v145)
  {
    v199 = [v219 objectForKeyedSubscript:@"LiveImage4Manifest"];
  }

  else
  {
    v199 = 0;
  }

  v146 = [v219 objectForKeyedSubscript:@"RepairImage4Manifest"];
  v147 = isNSData(v146);

  if (v147)
  {
    v197 = [v219 objectForKeyedSubscript:@"RepairImage4Manifest"];
  }

  else
  {
    v197 = 0;
  }

  v27 = v212;
  v26 = v213;
LABEL_25:
  v217 = v7;
  v212 = v27;
  v213 = v26;
  if (is_virtual_machine())
  {
    v30 = v8;
    v31 = a1;
    v232 = 0;
    v32 = vm_copy_host_certificate(0, &v232);
    v33 = v232;
    v214 = v32;
    if (!v32)
    {
      v211 = v25;
      v35 = createMobileActivationError("create_baa_info", 440, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to copy VM host certificate.");

      v193 = 0;
      v194 = 0;
      v37 = 0;
      v214 = 0;
      v202 = 0;
      v203 = 0;
      v208 = 0;
      v209 = 0;
      v204 = 0;
      v38 = 0;
      v16 = 0;
      v25 = 0;
      v39 = 0;
      keya = 0;
      v188 = 0;
      v207 = 0;
      v41 = 0;
      v42 = 0;
      v190 = 0;
      v192 = 0;
      v34 = v30;
      goto LABEL_119;
    }

    a1 = v31;
    v8 = v30;
    if (!a1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v214 = 0;
    v33 = 0;
    if (!a1)
    {
LABEL_28:
      v211 = v25;
      v34 = v8;
      v35 = createMobileActivationError("create_baa_info", 472, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
      v36 = v33;
LABEL_29:

      v193 = 0;
      v37 = 0;
      v202 = 0;
      v203 = 0;
      v208 = 0;
      v209 = 0;
      v204 = 0;
      v38 = 0;
      v16 = 0;
      v25 = 0;
      v39 = 0;
LABEL_84:
      keya = 0;
      v188 = 0;
      v194 = 0;
      v207 = 0;
      v41 = 0;
      v42 = 0;
      v190 = 0;
      v192 = 0;
      goto LABEL_119;
    }
  }

  if (v25)
  {
    v43 = 0;
  }

  else
  {
    v43 = v28;
  }

  if (v43 != 1)
  {
    v181 = 0;
    v183 = v8;
    v178 = 0;
    v180 = 0;
LABEL_53:
    v211 = v25;
    v228 = v33;
    v229 = 0;
    v57 = security_copy_system_key(0, &v229, &v228);
    v179 = v229;
    v58 = v228;

    if (!v57)
    {
      v35 = createMobileActivationError("create_baa_info", 524, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy SIK attestation key.");

      v190 = 0;
      v192 = 0;
      v42 = 0;
      v41 = 0;
      v207 = 0;
      v208 = 0;
      keya = 0;
      v188 = 0;
      v193 = 0;
      v194 = 0;
      v25 = 0;
      v209 = 0;
      v16 = 0;
      v38 = 0;
      v203 = 0;
      v204 = 0;
      v202 = 0;
      v65 = 0;
      v66 = v178;
      v39 = v179;
      goto LABEL_197;
    }

    v39 = v179;
    if ([(NSNumber *)v216 BOOLValue])
    {
      v25 = 0;
      v177 = 0;
    }

    else
    {
      v226 = v58;
      v227 = 0;
      v76 = v58;
      v77 = security_copy_system_key(2, &v227, &v226);
      v25 = v227;
      v78 = v226;

      v177 = v77;
      if (!v77)
      {
        v119 = v57;
        v35 = createMobileActivationError("create_baa_info", 533, @"com.apple.MobileActivation.ErrorDomain", -1, v78, @"Failed to copy UIK attestation key.");

        CFRelease(v119);
        v190 = 0;
        v192 = 0;
        v42 = 0;
        v41 = 0;
        v207 = 0;
        v208 = 0;
        keya = 0;
        v188 = 0;
        v193 = 0;
        v194 = 0;
        v209 = 0;
        v16 = 0;
        v38 = 0;
        v203 = 0;
        v204 = 0;
        v202 = 0;
        v65 = 0;
        v66 = v178;
        goto LABEL_197;
      }

      v58 = v78;
    }

    cf = v57;
    v176 = objc_alloc_init(NSMutableDictionary);
    if (v176)
    {
      if (-[NSNumber BOOLValue](v216, "BOOLValue") || (v79 = +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v80 = copy_ucrt_path(), v81 = [v80 stringByAppendingPathComponent:@"ucrt.pem"], v82 = -[NSFileManager fileExistsAtPath:](v79, "fileExistsAtPath:", v81), v81, v80, v79, (v82 & 1) != 0))
      {
        v83 = +[GestaltHlpr getSharedInstance];
        v16 = [v83 copyAnswer:@"UniqueChipID"];

        v41 = isNSNumber(v16);
        if (v41)
        {
          keyb = a1;
          v84 = +[GestaltHlpr getSharedInstance];
          v85 = [v84 copyAnswer:@"ChipID"];

          v174 = v85;
          v41 = isNSNumber(v85);

          if (!v41)
          {
            v35 = createMobileActivationError("create_baa_info", 562, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"ChipID");

            v190 = 0;
            v192 = 0;
            v207 = 0;
            v208 = 0;
            keya = 0;
            v188 = 0;
            v193 = 0;
            v194 = 0;
            v209 = 0;
            v203 = 0;
            v204 = 0;
            v202 = 0;
            v65 = 0;
            v39 = v179;
LABEL_193:
            v42 = v176;
LABEL_194:
            v38 = v174;
LABEL_195:
            v66 = v178;
            CFRelease(cf);
            if (v177)
            {
              CFRelease(v177);
            }

LABEL_197:
            if (v66)
            {
              CFRelease(v66);
            }

            v148 = v180;
            if (!v180)
            {
              goto LABEL_201;
            }

            goto LABEL_200;
          }

          v173 = v16;
          v86 = +[GestaltHlpr getSharedInstance];
          v87 = [v86 copyAnswer:@"BoardId"];

          v204 = v87;
          v41 = isNSNumber(v87);

          if (v41)
          {
            v88 = +[GestaltHlpr getSharedInstance];
            v89 = [v88 copyAnswer:@"SecurityDomain"];

            v203 = v89;
            v41 = isNSNumber(v89);

            if (v41)
            {
              v90 = +[GestaltHlpr getSharedInstance];
              v91 = [v90 copyAnswer:@"SerialNumber"];

              v65 = isNSString(v91);
              v208 = v91;
              if (v65)
              {
                if (![v91 length] && -[NSNumber BOOLValue](v216, "BOOLValue") && isRunningInDiagnosticsMode())
                {

                  v208 = 0;
                }

                v92 = +[GestaltHlpr getSharedInstance];
                v93 = [v92 copyAnswer:@"BuildVersion"];

                v65 = isNSString(v93);
                v202 = v93;
                if (v65)
                {
                  v94 = SecKeyCopyPublicKey(keyb);
                  if (v94)
                  {
                    v65 = v94;
                    v209 = SecKeyCopyExternalRepresentation(v94, &error);
                    if (v209)
                    {
                      if (v210)
                      {
                        v225 = v58;
                        v95 = &v225;
                        v96 = &v225;
                        v97 = keyb;
                        v98 = 7;
                      }

                      else
                      {
                        if ([(NSNumber *)v216 BOOLValue])
                        {
                          v98 = 0;
                        }

                        else
                        {
                          v98 = 2;
                        }

                        v224 = v58;
                        v95 = &v224;
                        v96 = &v224;
                        v97 = keyb;
                      }

                      v149 = security_create_system_key_attestation(v97, v98, v213, v96);
                      v150 = *v95;

                      if (v149)
                      {
                        v151 = @"RKCertification";
                        if (v211)
                        {
                          [v176 setObject:v211 forKeyedSubscript:@"RKCertification"];
                          [v176 setObject:v149 forKeyedSubscript:@"RKSigning"];
                          v151 = @"RKSigningPub";
                          v152 = v176;
                          v153 = v209;
                        }

                        else
                        {
                          v152 = v176;
                          v153 = v149;
                        }

                        [v152 setObject:v153 forKeyedSubscript:v151];
                        v154 = [NSMutableDictionary alloc];
                        v238[0] = @"UniqueChipID";
                        v238[1] = @"ChipID";
                        v239[0] = v173;
                        v239[1] = v174;
                        v238[2] = @"BoardId";
                        v238[3] = @"SecurityDomain";
                        v239[2] = v204;
                        v239[3] = v203;
                        v238[4] = @"OsBuildVersion";
                        v238[5] = @"scrtAttestation";
                        v239[4] = v202;
                        v239[5] = v216;
                        v238[6] = @"CertType";
                        v238[7] = @"Validity";
                        v239[6] = v183;
                        v239[7] = v206;
                        v238[8] = @"CACert";
                        v238[9] = @"OIDSToInclude";
                        v239[8] = v205;
                        v239[9] = v7;
                        v238[10] = @"SIKPub";
                        v39 = v179;
                        v239[10] = v179;
                        v155 = [NSDictionary dictionaryWithObjects:v239 forKeys:v238 count:11];
                        v156 = [v154 initWithDictionary:v155];
                        v157 = v155;
                        v158 = v156;

                        if (v208)
                        {
                          [v158 setObject:v208 forKeyedSubscript:@"SerialNumber"];
                        }

                        if (v211)
                        {
                          [v158 setObject:v215 forKeyedSubscript:@"RKCertificationPub"];
                          [v158 setObject:v209 forKeyedSubscript:@"RKSigningPub"];
                          if (v210)
                          {
                            [v158 setObject:v210 forKeyedSubscript:@"DirectAttestationCertificate"];
                          }
                        }

                        else
                        {
                          [v158 setObject:v209 forKeyedSubscript:@"RKCertificationPub"];
                        }

                        if (v214)
                        {
                          [v158 setObject:v214 forKeyedSubscript:@"VMHostIdentityCertificate"];
                        }

                        if (v25)
                        {
                          [v158 setObject:v25 forKeyedSubscript:@"UIKPub"];
                        }

                        if (v212)
                        {
                          [v158 setObject:v212 forKeyedSubscript:@"AppSpecificData"];
                        }

                        v159 = copy_trusted_local_policy_hash();

                        v207 = v158;
                        v194 = v149;
                        if (v159)
                        {
                          v223 = v150;
                          v160 = copyPersonalizedFirmwareData(9, &v223);
                          v161 = v223;

                          if (!v160)
                          {
                            v35 = createMobileActivationError("create_baa_info", 710, @"com.apple.MobileActivation.ErrorDomain", -1, v161, @"Failed to load cryptex1 local policy.");

                            v190 = 0;
                            v192 = 0;
                            v41 = 0;
                            keya = 0;
                            v188 = 0;
                            v193 = 0;
                            goto LABEL_192;
                          }

                          [v207 setObject:v160 forKeyedSubscript:@"LocalPolicy"];
                          v150 = v161;
                        }

                        else
                        {
                          v160 = 0;
                        }

                        v193 = v160;
                        if (!v191)
                        {
                          v192 = 0;
                          goto LABEL_239;
                        }

                        v222 = v150;
                        v162 = copyPersonalizedFirmwareData(2, &v222);
                        v163 = v222;

                        if (v162)
                        {
                          v192 = v162;
                          [v207 setObject:? forKeyedSubscript:?];
                          v164 = copy_sfr_manifest();
                          [v207 setObject:v164 forKeyedSubscript:@"FWImage4Manifest"];

                          v150 = v163;
LABEL_239:
                          v165 = v189;
                          if (!v159)
                          {
                            v165 = 0;
                          }

                          if (v165 != 1)
                          {
                            v190 = 0;
                            v42 = v176;
                            v168 = v207;
LABEL_245:
                            if (v198)
                            {
                              [v168 setObject:v198 forKeyedSubscript:@"AppID"];
                            }

                            if (v201)
                            {
                              [v168 setObject:v201 forKeyedSubscript:@"MFiProperties"];
                            }

                            if (v196)
                            {
                              [v168 setObject:v196 forKeyedSubscript:@"MFiPPUID"];
                            }

                            if (v200)
                            {
                              [v168 setObject:v200 forKeyedSubscript:@"MFiData"];
                            }

                            if (v199)
                            {
                              [v168 setObject:v199 forKeyedSubscript:@"LiveImage4Manifest"];
                            }

                            if (v197)
                            {
                              [v168 setObject:v197 forKeyedSubscript:@"RepairImage4Manifest"];
                            }

                            v220 = 0;
                            v169 = [NSPropertyListSerialization dataWithPropertyList:v168 format:100 options:0 error:&v220];
                            v35 = v220;

                            if (v169)
                            {
                              [v42 setObject:v169 forKeyedSubscript:@"RKProperties"];
                              v188 = v169;
                              v170 = SecKeyCreateSignature(keyb, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v169, &error);
                              if (v170)
                              {
                                keya = v170;
                                [v42 setObject:v170 forKeyedSubscript:@"RKPropertiesSignature"];
                                v41 = v42;
LABEL_266:
                                v16 = v173;
                                goto LABEL_194;
                              }

                              v171 = createMobileActivationError("create_baa_info", 841, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to sign data with ref key.");

                              v41 = 0;
                            }

                            else
                            {
                              v171 = createMobileActivationError("create_baa_info", 830, @"com.apple.MobileActivation.ErrorDomain", -1, v35, @"Could not convert dictionary to xml data.");

                              v41 = 0;
                              v188 = 0;
                            }

                            keya = 0;
                            v35 = v171;
                            goto LABEL_266;
                          }

                          v221 = v150;
                          v166 = copyPersonalizedFirmwareData(10, &v221);
                          v167 = v221;

                          if (v166)
                          {
                            v168 = v207;
                            v190 = v166;
                            [v207 setObject:v166 forKeyedSubscript:@"Cryptex1Image4Manifest"];
                            v150 = v167;
                            v42 = v176;
                            goto LABEL_245;
                          }

                          v35 = createMobileActivationError("create_baa_info", 791, @"com.apple.MobileActivation.ErrorDomain", -1, v167, @"Failed to load cryptex1 manifest.");

                          v188 = 0;
                          v190 = 0;
                          v41 = 0;
                          keya = 0;
                          goto LABEL_192;
                        }

                        if (v187)
                        {
                          v172 = createMobileActivationError("create_baa_info", 725, @"com.apple.MobileActivation.ErrorDomain", -1, v163, @"Failed to load boot manifest.");
                        }

                        else
                        {
                          v172 = createMobileActivationError("create_baa_info", 745, @"com.apple.MobileActivation.ErrorDomain", -1, v163, @"Failed to load boot manifest.");
                        }

                        v35 = v172;

                        v190 = 0;
                        v192 = 0;
                        v41 = 0;
                        keya = 0;
                        v188 = 0;
                        goto LABEL_191;
                      }

                      v35 = createMobileActivationError("create_baa_info", 622, @"com.apple.MobileActivation.ErrorDomain", -1, v150, @"Failed to create reference key attestation (nonce: %@).", v213);

                      v190 = 0;
                      v192 = 0;
                      v41 = 0;
                      v207 = 0;
                      keya = 0;
                      v188 = 0;
                      v194 = 0;
                    }

                    else
                    {
                      v35 = createMobileActivationError("create_baa_info", 609, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode RK public key as data.");

                      v190 = 0;
                      v192 = 0;
                      v41 = 0;
                      v207 = 0;
                      keya = 0;
                      v188 = 0;
                      v194 = 0;
                      v209 = 0;
                    }
                  }

                  else
                  {
                    v35 = createMobileActivationError("create_baa_info", 603, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.");

                    v190 = 0;
                    v192 = 0;
                    v41 = 0;
                    v207 = 0;
                    keya = 0;
                    v188 = 0;
                    v194 = 0;
                    v209 = 0;
                    v65 = 0;
                  }

                  v193 = 0;
                  v39 = v179;
                  goto LABEL_192;
                }

                v35 = createMobileActivationError("create_baa_info", 594, @"com.apple.MobileActivation.ErrorDomain", -1, v58, @"Failed to retrieve %@.", @"BuildVersion");

                v190 = 0;
                v192 = 0;
                v41 = 0;
                v207 = 0;
                keya = 0;
                v188 = 0;
                v194 = 0;
                v209 = 0;
              }

              else
              {
                v35 = createMobileActivationError("create_baa_info", 580, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"SerialNumber");

                v190 = 0;
                v192 = 0;
                v41 = 0;
                v207 = 0;
                keya = 0;
                v188 = 0;
                v194 = 0;
                v209 = 0;
                v202 = 0;
              }

LABEL_190:
              v193 = 0;
LABEL_191:
              v39 = v179;
LABEL_192:
              v16 = v173;
              goto LABEL_193;
            }

            v35 = createMobileActivationError("create_baa_info", 574, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"SecurityDomain");

            v190 = 0;
            v192 = 0;
            v207 = 0;
            keya = 0;
            v188 = 0;
            v194 = 0;
            v209 = 0;
          }

          else
          {
            v35 = createMobileActivationError("create_baa_info", 568, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"BoardId");

            v190 = 0;
            v192 = 0;
            v207 = 0;
            keya = 0;
            v188 = 0;
            v194 = 0;
            v209 = 0;
            v203 = 0;
          }

          v208 = 0;
          v202 = 0;
          v65 = 0;
          goto LABEL_190;
        }

        v35 = createMobileActivationError("create_baa_info", 556, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"UniqueChipID");

        v190 = 0;
        v192 = 0;
        v207 = 0;
        v208 = 0;
        keya = 0;
        v188 = 0;
        v193 = 0;
        v194 = 0;
        v209 = 0;
        v38 = 0;
        v203 = 0;
        v204 = 0;
        v202 = 0;
        v65 = 0;
        v39 = v179;
      }

      else
      {
        v35 = createMobileActivationError("create_baa_info", 548, @"com.apple.MobileActivation.ErrorDomain", -4, 0, @"UCRT is unavailable.");

        v190 = 0;
        v192 = 0;
        v41 = 0;
        v207 = 0;
        v208 = 0;
        keya = 0;
        v188 = 0;
        v193 = 0;
        v194 = 0;
        v209 = 0;
        v16 = 0;
        v38 = 0;
        v203 = 0;
        v204 = 0;
        v202 = 0;
        v65 = 0;
        v39 = v179;
      }
    }

    else
    {
      v35 = createMobileActivationError("create_baa_info", 541, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");

      v190 = 0;
      v192 = 0;
      v41 = 0;
      v207 = 0;
      v208 = 0;
      keya = 0;
      v188 = 0;
      v193 = 0;
      v194 = 0;
      v209 = 0;
      v16 = 0;
      v38 = 0;
      v203 = 0;
      v204 = 0;
      v202 = 0;
      v65 = 0;
    }

    v42 = v176;
    goto LABEL_195;
  }

  if ([(NSNumber *)v216 BOOLValue])
  {
    v44 = 0;
  }

  else
  {
    v44 = 2;
  }

  v231 = v33;
  v25 = security_create_system_key_attestation(a1, v44, v26, &v231);
  v45 = v231;

  if (!v25)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 482, @"com.apple.MobileActivation.ErrorDomain", -1, v45, @"Failed to create reference key attestation.");

    v193 = 0;
    v37 = 0;
    v202 = 0;
    v203 = 0;
    v208 = 0;
    v209 = 0;
    v204 = 0;
    v38 = 0;
    v16 = 0;
    v39 = 0;
LABEL_83:
    v211 = 0;
    goto LABEL_84;
  }

  v46 = SecKeyCopyPublicKey(a1);
  v211 = v25;
  if (!v46)
  {
    v34 = v8;
    v35 = createMobileActivationError("create_baa_info", 488, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.");
    v36 = v45;
    goto LABEL_29;
  }

  v180 = v46;
  v47 = SecKeyCopyExternalRepresentation(v46, &error);

  v183 = v8;
  if (!v47)
  {
    v118 = createMobileActivationError("create_baa_info", 494, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to encode RK public key as data.");
LABEL_140:
    v35 = v118;
    v181 = 0;
    goto LABEL_187;
  }

  v48 = SecAccessControlCreate();
  if (!v48)
  {
    v118 = createMobileActivationError("create_baa_info", 502, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
    goto LABEL_140;
  }

  v49 = kSecAttrAccessibleUntilReboot;
  v50 = v48;
  v181 = v48;
  if (SecAccessControlSetProtection())
  {
    v230 = v45;
    ReferenceKeyBlob = createReferenceKeyBlob(v50, v29, v219, &v230);
    v33 = v230;

    if (ReferenceKeyBlob)
    {
      v215 = v47;
      v178 = ReferenceKeyBlob;
      a1 = ReferenceKeyBlob;
      goto LABEL_53;
    }

    v35 = createMobileActivationError("create_baa_info", 513, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to create reference key.");
    v45 = v33;
  }

  else
  {
    v35 = createMobileActivationError("create_baa_info", 507, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v49);
  }

LABEL_187:

  v190 = 0;
  v192 = 0;
  v42 = 0;
  v41 = 0;
  v207 = 0;
  v208 = 0;
  keya = 0;
  v188 = 0;
  v193 = 0;
  v194 = 0;
  v39 = 0;
  v25 = 0;
  v209 = 0;
  v16 = 0;
  v38 = 0;
  v203 = 0;
  v204 = 0;
  v202 = 0;
  v215 = v47;
  v65 = 0;
  v148 = v180;
LABEL_200:
  CFRelease(v148);
LABEL_201:
  if (v65)
  {
    CFRelease(v65);
  }

  v37 = v181;
  v34 = v183;
LABEL_119:
  if (error)
  {
    v103 = v38;
    v104 = v42;
    v105 = v16;
    v106 = v35;
    v107 = v25;
    v108 = v39;
    v109 = v37;
    CFRelease(error);
    v37 = v109;
    v39 = v108;
    v25 = v107;
    v35 = v106;
    v16 = v105;
    v42 = v104;
    v38 = v103;
  }

  error = 0;
  if (v37)
  {
    CFRelease(v37);
  }

  if (a3 && !v41)
  {
    v110 = v35;
    *a3 = v35;
  }

  v111 = v41;

  return v111;
}