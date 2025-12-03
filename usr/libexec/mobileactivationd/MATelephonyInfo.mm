@interface MATelephonyInfo
+ (id)sharedInstance;
- (BOOL)bootstrapDataServiceAvailableWithError:(id *)error;
- (BOOL)setCellularBootstrapAssertion:(BOOL)assertion withError:(id *)error;
- (BOOL)setOTAActivationAssertion:(BOOL)assertion withError:(id *)error;
- (MATelephonyInfo)init;
- (id)_copyConnectionAvailabilityWithSlotID:(int64_t)d error:(id *)error;
- (id)_copyPhoneNumberWithSlotID:(int64_t)d error:(id *)error;
- (id)_copySIMStatusWithSlotID:(int64_t)d error:(id *)error;
- (id)copyConnectionAvailabilityWithSlotID:(int64_t)d error:(id *)error;
- (id)copyPhoneNumberWithSlotID:(int64_t)d error:(id *)error;
- (id)copySIMStatusWithSlotID:(int64_t)d error:(id *)error;
- (void)connectionAvailability:(id)availability availableConnections:(id)connections;
- (void)dealloc;
- (void)phoneNumberChanged:(id)changed;
- (void)setOtaActivationAssertion:(void *)assertion;
- (void)simStatusDidChange:(id)change status:(id)status;
@end

@implementation MATelephonyInfo

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedInstance_telephony)
  {
    v3 = objc_alloc_init(MATelephonyInfo);
    v4 = sharedInstance_telephony;
    sharedInstance_telephony = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = sharedInstance_telephony;

  return v5;
}

- (MATelephonyInfo)init
{
  v45.receiver = self;
  v45.super_class = MATelephonyInfo;
  v2 = [(MATelephonyInfo *)&v45 init];
  if (v2)
  {
    v3 = [CoreTelephonyClient alloc];
    v4 = dispatch_get_global_queue(0, 0);
    v5 = [v3 initWithQueue:v4];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v5;

    if (v2->_telephonyClient)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.mobileactivationd.dark", v7);
      queue = v2->_queue;
      v2->_queue = v8;

      if (v2->_queue)
      {
        v10 = MGCopyAnswer();
        v11 = isNSNumber(v10);

        if (v11)
        {
          v2->_dualSIMCapable = [v10 BOOLValue];
          v44 = 0;
          v12 = [(MATelephonyInfo *)v2 _copyPhoneNumberWithSlotID:1 error:&v44];
          v13 = v44;
          phoneNumber = v2->_phoneNumber;
          v2->_phoneNumber = v12;

          lastPhoneNumberError = v2->_lastPhoneNumberError;
          v2->_lastPhoneNumberError = v13;

          if (v2->_dualSIMCapable)
          {
            v43 = 0;
            v16 = [(MATelephonyInfo *)v2 _copyPhoneNumberWithSlotID:2 error:&v43];
            v17 = v43;
            phoneNumberTwo = v2->_phoneNumberTwo;
            v2->_phoneNumberTwo = v16;

            lastPhoneNumberTwoError = v2->_lastPhoneNumberTwoError;
            v2->_lastPhoneNumberTwoError = v17;
          }

          v42 = 0;
          v20 = [(MATelephonyInfo *)v2 _copySIMStatusWithSlotID:1 error:&v42];
          v21 = v42;
          simStatus = v2->_simStatus;
          v2->_simStatus = v20;

          lastSimStatusError = v2->_lastSimStatusError;
          v2->_lastSimStatusError = v21;

          if (v2->_dualSIMCapable)
          {
            v41 = 0;
            v24 = [(MATelephonyInfo *)v2 _copySIMStatusWithSlotID:2 error:&v41];
            v25 = v41;
            simStatusTwo = v2->_simStatusTwo;
            v2->_simStatusTwo = v24;

            v27 = v2->_lastSimStatusError;
            v2->_lastSimStatusError = v25;
          }

          v40 = 0;
          v28 = [(MATelephonyInfo *)v2 _copyConnectionAvailabilityWithSlotID:1 error:&v40];
          v29 = v40;
          connectionAvailability = v2->_connectionAvailability;
          v2->_connectionAvailability = v28;

          lastConnectionAvailabilityError = v2->_lastConnectionAvailabilityError;
          v2->_lastConnectionAvailabilityError = v29;

          if (v2->_dualSIMCapable)
          {
            v39 = 0;
            v32 = [(MATelephonyInfo *)v2 _copyConnectionAvailabilityWithSlotID:2 error:&v39];
            v33 = v39;
            connectionAvailabilityTwo = v2->_connectionAvailabilityTwo;
            v2->_connectionAvailabilityTwo = v32;

            lastConnectionAvailabilityTwoError = v2->_lastConnectionAvailabilityTwoError;
            v2->_lastConnectionAvailabilityTwoError = v33;
          }

          [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];

          goto LABEL_12;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = @"jkr5aFPOh/d6zTzNKYthBw";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query '%@'.", buf, 0xCu);
        }

LABEL_21:
        v36 = 0;
        goto LABEL_22;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v37 = "Failed to create queue.";
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v37 = "Failed to create Telephony client.";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
    goto LABEL_21;
  }

LABEL_12:
  v36 = v2;
LABEL_22:

  return v36;
}

- (void)dealloc
{
  otaActivationAssertion = self->_otaActivationAssertion;
  if (otaActivationAssertion)
  {
    CFRelease(otaActivationAssertion);
  }

  v4.receiver = self;
  v4.super_class = MATelephonyInfo;
  [(MATelephonyInfo *)&v4 dealloc];
}

- (BOOL)setCellularBootstrapAssertion:(BOOL)assertion withError:(id *)error
{
  assertionCopy = assertion;
  if (objc_opt_class())
  {
    v6 = +[CTCellularPlanManager sharedManager];
    if (v6)
    {
      v7 = v6;
      v8 = +[CTCellularPlanManager sharedManager];
      [v8 setUserInPurchaseFlow:assertionCopy];

      v9 = 0;
      v10 = 1;
      goto LABEL_9;
    }

    MobileActivationError = createMobileActivationError("[MATelephonyInfo setCellularBootstrapAssertion:withError:]", 156, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query cellular plan manager.");
  }

  else
  {
    MobileActivationError = createMobileActivationError("[MATelephonyInfo setCellularBootstrapAssertion:withError:]", 150, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"CellularPlanManager library is not loaded.");
  }

  v9 = MobileActivationError;
  if (error)
  {
    v9 = v9;
    v10 = 0;
    *error = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (BOOL)setOTAActivationAssertion:(BOOL)assertion withError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  queue = [(MATelephonyInfo *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = __55__MATelephonyInfo_setOTAActivationAssertion_withError___block_invoke;
  v10[3] = &__block_descriptor_57_e8_32s40r48r_e5_v8__0l;
  assertionCopy = assertion;
  v10[4] = self;
  v10[5] = &v18;
  v10[6] = &v12;
  dispatch_sync(queue, v10);

  v8 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v8 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8 & 1;
}

void __55__MATelephonyInfo_setOTAActivationAssertion_withError___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    goto LABEL_7;
  }

  if ([*(a1 + 32) otaActivationAssertion])
  {
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
LABEL_7:
    v3 = *(a1 + 32);
    goto LABEL_8;
  }

  if (_CTServerConnectionCreate())
  {
    v2 = _CTServerConnectionOTAActivationAssertionCreate();
    if (!HIDWORD(v2))
    {
      v3 = *(a1 + 32);
LABEL_8:
      [v3 setOtaActivationAssertion:0];
      goto LABEL_9;
    }

    v7 = createMobileActivationError("[MATelephonyInfo setOTAActivationAssertion:withError:]_block_invoke", 202, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create OTA activation assertion: %d.%d", v2, HIDWORD(v2));
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v4 = createMobileActivationError("[MATelephonyInfo setOTAActivationAssertion:withError:]_block_invoke", 196, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to connect to CommCenter.");
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)setOtaActivationAssertion:(void *)assertion
{
  otaActivationAssertion = self->_otaActivationAssertion;
  if (otaActivationAssertion)
  {
    CFRelease(otaActivationAssertion);
  }

  self->_otaActivationAssertion = assertion;
}

- (BOOL)bootstrapDataServiceAvailableWithError:(id *)error
{
  telephonyClient = [(MATelephonyInfo *)self telephonyClient];
  v11 = 0;
  v5 = [(CoreTelephonyClient *)telephonyClient usingBootstrapDataService:&v11];
  v6 = v11;

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = createMobileActivationError("[MATelephonyInfo bootstrapDataServiceAvailableWithError:]", 240, @"com.apple.MobileActivation.ErrorDomain", -1, v6, @"Failed to query bootstrap data service state.");

    bOOLValue = 0;
    v6 = v8;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((bOOLValue & 1) == 0)
  {
    v9 = v6;
    *error = v6;
  }

LABEL_7:

  return bOOLValue;
}

- (id)copyPhoneNumberWithSlotID:(int64_t)d error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  queue = [(MATelephonyInfo *)self queue];
  dispatch_assert_queue_not_V2(queue);

  if ((d - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    queue2 = [(MATelephonyInfo *)self queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3254779904;
    v15[2] = __51__MATelephonyInfo_copyPhoneNumberWithSlotID_error___block_invoke;
    v15[3] = &__block_descriptor_64_e8_32s40r48r_e5_v8__0l;
    v15[4] = self;
    v15[5] = &v16;
    v15[6] = &v22;
    v15[7] = d;
    dispatch_sync(queue2, v15);
    v10 = queue2;
  }

  else
  {
    v8 = createMobileActivationError("[MATelephonyInfo copyPhoneNumberWithSlotID:error:]", 264, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.");
    v9 = v17[5];
    v17[5] = v8;
    v10 = v9;
  }

  v12 = v23[5];
  if (error && !v12)
  {
    *error = v17[5];
    v12 = v23[5];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v13;
}

void __51__MATelephonyInfo_copyPhoneNumberWithSlotID_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v4 = [*(a1 + 32) phoneNumberTwo];
    if (v4)
    {
    }

    else
    {
      v10 = [*(a1 + 32) lastPhoneNumberTwoError];

      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v16 = *(v12 + 40);
        v13 = [v11 _copyPhoneNumberWithSlotID:2 error:&v16];
        objc_storeStrong((v12 + 40), v16);
        [*(a1 + 32) setPhoneNumberTwo:v13];

        [*(a1 + 32) setLastPhoneNumberTwoError:*(*(*(a1 + 40) + 8) + 40)];
      }
    }

    v9 = [*(a1 + 32) phoneNumberTwo];
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = [*(a1 + 32) phoneNumber];
    if (v3)
    {
    }

    else
    {
      v5 = [*(a1 + 32) lastPhoneNumberError];

      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(*(a1 + 40) + 8);
        obj = *(v7 + 40);
        v8 = [v6 _copyPhoneNumberWithSlotID:1 error:&obj];
        objc_storeStrong((v7 + 40), obj);
        [*(a1 + 32) setPhoneNumber:v8];

        [*(a1 + 32) setLastPhoneNumberError:*(*(*(a1 + 40) + 8) + 40)];
      }
    }

    v9 = [*(a1 + 32) phoneNumber];
  }

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v9;
}

- (id)copySIMStatusWithSlotID:(int64_t)d error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  queue = [(MATelephonyInfo *)self queue];
  dispatch_assert_queue_not_V2(queue);

  if ((d - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    queue2 = [(MATelephonyInfo *)self queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3254779904;
    v15[2] = __49__MATelephonyInfo_copySIMStatusWithSlotID_error___block_invoke;
    v15[3] = &__block_descriptor_64_e8_32s40r48r_e5_v8__0l;
    v15[4] = self;
    v15[5] = &v16;
    v15[6] = &v22;
    v15[7] = d;
    dispatch_sync(queue2, v15);
    v10 = queue2;
  }

  else
  {
    v8 = createMobileActivationError("[MATelephonyInfo copySIMStatusWithSlotID:error:]", 305, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.");
    v9 = v17[5];
    v17[5] = v8;
    v10 = v9;
  }

  v12 = v23[5];
  if (error && !v12)
  {
    *error = v17[5];
    v12 = v23[5];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v13;
}

void __49__MATelephonyInfo_copySIMStatusWithSlotID_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v4 = [*(a1 + 32) simStatusTwo];
    if (v4)
    {
    }

    else
    {
      v10 = [*(a1 + 32) lastSimStatusTwoError];

      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v16 = *(v12 + 40);
        v13 = [v11 _copySIMStatusWithSlotID:2 error:&v16];
        objc_storeStrong((v12 + 40), v16);
        [*(a1 + 32) setSimStatusTwo:v13];

        [*(a1 + 32) setLastSimStatusTwoError:*(*(*(a1 + 40) + 8) + 40)];
      }
    }

    v9 = [*(a1 + 32) simStatusTwo];
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = [*(a1 + 32) simStatus];
    if (v3)
    {
    }

    else
    {
      v5 = [*(a1 + 32) lastSimStatusError];

      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(*(a1 + 40) + 8);
        obj = *(v7 + 40);
        v8 = [v6 _copySIMStatusWithSlotID:1 error:&obj];
        objc_storeStrong((v7 + 40), obj);
        [*(a1 + 32) setSimStatus:v8];

        [*(a1 + 32) setLastSimStatusError:*(*(*(a1 + 40) + 8) + 40)];
      }
    }

    v9 = [*(a1 + 32) simStatus];
  }

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v9;
}

- (id)copyConnectionAvailabilityWithSlotID:(int64_t)d error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  queue = [(MATelephonyInfo *)self queue];
  dispatch_assert_queue_not_V2(queue);

  if ((d - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    queue2 = [(MATelephonyInfo *)self queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3254779904;
    v15[2] = __62__MATelephonyInfo_copyConnectionAvailabilityWithSlotID_error___block_invoke;
    v15[3] = &__block_descriptor_64_e8_32s40r48r_e5_v8__0l;
    v15[4] = self;
    v15[5] = &v16;
    v15[6] = &v22;
    v15[7] = d;
    dispatch_sync(queue2, v15);
    v10 = queue2;
  }

  else
  {
    v8 = createMobileActivationError("[MATelephonyInfo copyConnectionAvailabilityWithSlotID:error:]", 346, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.");
    v9 = v17[5];
    v17[5] = v8;
    v10 = v9;
  }

  v12 = v23[5];
  if (error && !v12)
  {
    *error = v17[5];
    v12 = v23[5];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v13;
}

void __62__MATelephonyInfo_copyConnectionAvailabilityWithSlotID_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v4 = [*(a1 + 32) connectionAvailabilityTwo];
    if (v4)
    {
    }

    else
    {
      v10 = [*(a1 + 32) lastConnectionAvailabilityTwoError];

      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 8);
        v16 = *(v12 + 40);
        v13 = [v11 _copyConnectionAvailabilityWithSlotID:2 error:&v16];
        objc_storeStrong((v12 + 40), v16);
        [*(a1 + 32) setConnectionAvailabilityTwo:v13];

        [*(a1 + 32) setLastConnectionAvailabilityTwoError:*(*(*(a1 + 40) + 8) + 40)];
      }
    }

    v9 = [*(a1 + 32) connectionAvailabilityTwo];
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = [*(a1 + 32) connectionAvailability];
    if (v3)
    {
    }

    else
    {
      v5 = [*(a1 + 32) lastConnectionAvailabilityError];

      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(*(a1 + 40) + 8);
        obj = *(v7 + 40);
        v8 = [v6 _copyConnectionAvailabilityWithSlotID:1 error:&obj];
        objc_storeStrong((v7 + 40), obj);
        [*(a1 + 32) setConnectionAvailability:v8];

        [*(a1 + 32) setLastConnectionAvailabilityError:*(*(*(a1 + 40) + 8) + 40)];
      }
    }

    v9 = [*(a1 + 32) connectionAvailability];
  }

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v9;
}

- (id)_copySIMStatusWithSlotID:(int64_t)d error:(id *)error
{
  if ((d - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = createMobileActivationError("[MATelephonyInfo _copySIMStatusWithSlotID:error:]", 388, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.");
    v6 = 0;
    v7 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v7 = dispatch_semaphore_create(0);
  if (!v7)
  {
    v5 = createMobileActivationError("[MATelephonyInfo _copySIMStatusWithSlotID:error:]", 394, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create semaphore.");
    v6 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = [CTXPCServiceSubscriptionContext contextWithSlot:d];
  if (!v6)
  {
    v5 = createMobileActivationError("[MATelephonyInfo _copySIMStatusWithSlotID:error:]", 400, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve context for slot ID %ld.", d);
    if (!error)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

LABEL_11:
    v13 = v5;
    v12 = 0;
    *error = v5;
    goto LABEL_14;
  }

  telephonyClient = [(MATelephonyInfo *)self telephonyClient];
  v16 = 0;
  v11 = [(CoreTelephonyClient *)telephonyClient getSIMStatus:v6 error:&v16];
  v5 = v16;

  if (!v11)
  {
    v14 = createMobileActivationError("[MATelephonyInfo _copySIMStatusWithSlotID:error:]", 406, @"com.apple.MobileActivation.ErrorDomain", -1, v5, @"Failed to retrieve SIM status for SIM slot ID %d.", [(CTXPCServiceSubscriptionContext *)v6 slotID]);

    v5 = v14;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v12 = v11;
LABEL_14:

  return v12;
}

- (id)_copyPhoneNumberWithSlotID:(int64_t)d error:(id *)error
{
  if ((d - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = createMobileActivationError("[MATelephonyInfo _copyPhoneNumberWithSlotID:error:]", 429, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.");
    number = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v7 = [CTXPCServiceSubscriptionContext contextWithSlot:?];
  if (!v7)
  {
    v5 = createMobileActivationError("[MATelephonyInfo _copyPhoneNumberWithSlotID:error:]", 435, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve context for slot ID %ld.", d);
    number = 0;
LABEL_10:
    v11 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  telephonyClient = [(MATelephonyInfo *)self telephonyClient];
  v16 = 0;
  v11 = [(CoreTelephonyClient *)telephonyClient getPhoneNumber:v7 error:&v16];
  v5 = v16;

  if (v11)
  {
    if (![v11 isPresent] || (number = objc_msgSend(v11, "number"), number, number))
    {
      number = [v11 number];
      if (!error)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    v15 = createMobileActivationError("[MATelephonyInfo _copyPhoneNumberWithSlotID:error:]", 446, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve phone number.");
  }

  else
  {
    v15 = createMobileActivationError("[MATelephonyInfo _copyPhoneNumberWithSlotID:error:]", 441, @"com.apple.MobileActivation.ErrorDomain", -1, v5, @"Failed to retrieve phone number information for subscription context.");

    number = 0;
  }

  v5 = v15;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!number)
  {
    v12 = v5;
    *error = v5;
  }

LABEL_13:
  v13 = number;

  return v13;
}

- (id)_copyConnectionAvailabilityWithSlotID:(int64_t)d error:(id *)error
{
  if ((d - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = createMobileActivationError("[MATelephonyInfo _copyConnectionAvailabilityWithSlotID:error:]", 469, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.");
    v6 = 0;
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [CTXPCServiceSubscriptionContext contextWithSlot:?];
  if (!v7)
  {
    v5 = createMobileActivationError("[MATelephonyInfo _copyConnectionAvailabilityWithSlotID:error:]", 475, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve context for slot ID %ld.", d);
    v6 = 0;
LABEL_8:
    v11 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  telephonyClient = [(MATelephonyInfo *)self telephonyClient];
  v15 = 0;
  v6 = [(CoreTelephonyClient *)telephonyClient getConnectionAvailability:v7 connectionType:9 error:&v15];
  v5 = v15;

  if (v6)
  {
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 available]);
    if (!error)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = createMobileActivationError("[MATelephonyInfo _copyConnectionAvailabilityWithSlotID:error:]", 481, @"com.apple.MobileActivation.ErrorDomain", -1, v5, @"Failed to retrieve connection availability for SIM slot id %ld.", [(CTXPCServiceSubscriptionContext *)v7 slotID]);

    v6 = 0;
    v11 = 0;
    v5 = v14;
    if (!error)
    {
      goto LABEL_11;
    }
  }

LABEL_9:
  if (!v11)
  {
    v12 = v5;
    *error = v5;
  }

LABEL_11:

  return v11;
}

- (void)phoneNumberChanged:(id)changed
{
  changedCopy = changed;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    slotID = [changedCopy slotID];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Phone number changed (%d).", buf, 8u);
  }

  queue = [(MATelephonyInfo *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = __38__MATelephonyInfo_phoneNumberChanged___block_invoke;
  v7[3] = &__block_descriptor_48_e8_32s40s_e5_v8__0l;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_barrier_async(queue, v7);
}

void __38__MATelephonyInfo_phoneNumberChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) slotID];
  v6 = 0;
  v4 = [v2 _copyPhoneNumberWithSlotID:v3 error:&v6];
  v5 = v6;
  if ([*(a1 + 40) slotID] == 1)
  {
    [*(a1 + 32) setPhoneNumber:v4];
    [*(a1 + 32) setLastPhoneNumberError:v5];
  }

  else if ([*(a1 + 40) slotID] == 2)
  {
    [*(a1 + 32) setPhoneNumberTwo:v4];
    [*(a1 + 32) setLastPhoneNumberTwoError:v5];
  }
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  changeCopy = change;
  statusCopy = status;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    slotID = [changeCopy slotID];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SIM status changed (%d).", buf, 8u);
  }

  queue = [(MATelephonyInfo *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __45__MATelephonyInfo_simStatusDidChange_status___block_invoke;
  block[3] = &__block_descriptor_56_e8_32s40s48s_e5_v8__0l;
  v12 = changeCopy;
  selfCopy = self;
  v14 = statusCopy;
  v9 = statusCopy;
  v10 = changeCopy;
  dispatch_barrier_async(queue, block);
}

id __45__MATelephonyInfo_simStatusDidChange_status___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) slotID] == 1)
  {
    [*(a1 + 40) setSimStatus:*(a1 + 48)];
    v2 = *(a1 + 40);

    return [v2 setLastSimStatusError:0];
  }

  else
  {
    result = [*(a1 + 32) slotID];
    if (result == 2)
    {
      [*(a1 + 40) setSimStatusTwo:*(a1 + 48)];
      v4 = *(a1 + 40);

      return [v4 setLastSimStatusTwoError:0];
    }
  }

  return result;
}

- (void)connectionAvailability:(id)availability availableConnections:(id)connections
{
  availabilityCopy = availability;
  connectionsCopy = connections;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    slotID = [availabilityCopy slotID];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Connection availability changed (%d).", buf, 8u);
  }

  queue = [(MATelephonyInfo *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __63__MATelephonyInfo_connectionAvailability_availableConnections___block_invoke;
  block[3] = &__block_descriptor_56_e8_32s40s48s_e5_v8__0l;
  v12 = connectionsCopy;
  v13 = availabilityCopy;
  selfCopy = self;
  v9 = availabilityCopy;
  v10 = connectionsCopy;
  dispatch_barrier_async(queue, block);
}

id __63__MATelephonyInfo_connectionAvailability_availableConnections___block_invoke(id *a1)
{
  v2 = [a1[4] containsObject:kCTDataConnectionServiceTypeOTAActivation];
  if ([a1[5] slotID] == 1)
  {
    v3 = [NSNumber numberWithBool:v2];
    [a1[6] setConnectionAvailability:v3];

    v4 = a1[6];

    return [v4 setLastConnectionAvailabilityError:0];
  }

  else
  {
    result = [a1[5] slotID];
    if (result == 2)
    {
      v6 = [NSNumber numberWithBool:v2];
      [a1[6] setConnectionAvailabilityTwo:v6];

      v7 = a1[6];

      return [v7 setLastConnectionAvailabilityTwoError:0];
    }
  }

  return result;
}

@end