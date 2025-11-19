id vm_copy_host_certificate(void *a1, NSError **a2)
{
  v3 = a1;
  if (is_virtual_machine())
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    if (v4)
    {
      v20 = 0;
      v5 = libavp_copy_strong_identity_data(v3, &v20);
      v6 = v20;
      if (v5)
      {
        [v4 setObject:@"CopyVMHostCertificateRequest" forKeyedSubscript:@"Command"];
        [v4 setObject:v5 forKeyedSubscript:@"Value"];
        v19 = v6;
        v7 = libavp_send_host_message(v4, &v19);
        v8 = v19;

        v9 = isNSDictionary(v7);
        if (v9)
        {
          v9 = [v7 objectForKeyedSubscript:@"Error"];
          v10 = isNSString(v9);

          if (!v10)
          {
            v13 = [v7 objectForKeyedSubscript:@"Value"];
            v12 = isNSDictionary(v13);

            if (v12)
            {
              v14 = [v13 objectForKeyedSubscript:@"RKCertification"];
              v12 = isNSData(v14);

              if (v12)
              {
                v12 = v14;
                v14 = v12;
                goto LABEL_11;
              }

              v18 = createMobileActivationError("vm_copy_host_certificate", 71, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.");

              goto LABEL_18;
            }

            v18 = createMobileActivationError("vm_copy_host_certificate", 65, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.");

LABEL_17:
            v14 = 0;
LABEL_18:
            v8 = v18;
            goto LABEL_11;
          }

          MobileActivationError = createMobileActivationError("vm_copy_host_certificate", 59, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Error occurred during request: %@", v9);
        }

        else
        {
          MobileActivationError = createMobileActivationError("vm_copy_host_certificate", 53, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to receive response.");
        }

        v18 = MobileActivationError;

        v12 = 0;
        v13 = 0;
        goto LABEL_17;
      }

      v8 = createMobileActivationError("vm_copy_host_certificate", 44, @"com.apple.MobileActivation.ErrorDomain", -1, v6, @"Failed to copy AVP identity data.");

      v12 = 0;
    }

    else
    {
      v8 = createMobileActivationError("vm_copy_host_certificate", 38, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");
      v12 = 0;
      v5 = 0;
    }
  }

  else
  {
    v8 = createMobileActivationError("vm_copy_host_certificate", 32, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).");
    v12 = 0;
    v5 = 0;
    v4 = 0;
  }

  v7 = 0;
  v13 = 0;
  v14 = 0;
  v9 = 0;
LABEL_11:
  if (a2 && !v12)
  {
    v15 = v8;
    *a2 = v8;
  }

  v16 = v12;

  return v12;
}

id vm_create_host_key_signature(void *a1, void *a2, void *a3, NSError **a4)
{
  v6 = a1;
  v7 = a2;
  v27 = v7;
  v28 = v6;
  if (!is_virtual_machine())
  {
    v14 = createMobileActivationError("vm_create_host_key_signature", 101, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).");
    v18 = 0;
    v11 = 0;
    v9 = 0;
LABEL_13:
    v10 = 0;
LABEL_14:
    v13 = 0;
    v19 = 0;
    v15 = 0;
    v20 = 0;
    v16 = 0;
    goto LABEL_15;
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = v8;
  if (!v8)
  {
    v14 = createMobileActivationError("vm_create_host_key_signature", 107, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");
    v18 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    [v8 addEntriesFromDictionary:v7];
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  if (!v10)
  {
    v14 = createMobileActivationError("vm_create_host_key_signature", 117, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");
    v18 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v31 = 0;
  v11 = libavp_copy_strong_identity_data(v7, &v31);
  v12 = v31;
  if (!v11)
  {
    v14 = createMobileActivationError("vm_create_host_key_signature", 123, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to copy AVP identity data.");

    v18 = 0;
    goto LABEL_14;
  }

  [v9 setObject:v11 forKeyedSubscript:@"BIKData"];
  [v10 setObject:@"CreateVMHostKeyAttestationRequest" forKeyedSubscript:@"Command"];
  [v10 setObject:v6 forKeyedSubscript:@"Value"];
  [v10 setObject:v9 forKeyedSubscript:@"Options"];
  v30 = v12;
  v13 = libavp_send_host_message(v10, &v30);
  v14 = v30;

  v15 = isNSDictionary(v13);
  if (!v15)
  {
    v25 = createMobileActivationError("vm_create_host_key_signature", 136, @"com.apple.MobileActivation.ErrorDomain", -1, v14, @"Failed to receive response.");

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v16 = [v13 objectForKeyedSubscript:@"Error"];
  v17 = isNSString(v16);

  if (v17)
  {
    v25 = createMobileActivationError("vm_create_host_key_signature", 142, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Error occurred during request: %@", v16);

    v18 = 0;
    v19 = 0;
    v15 = 0;
LABEL_10:
    v20 = 0;
LABEL_22:
    v14 = v25;
    goto LABEL_15;
  }

  v26 = a3;
  v19 = [v13 objectForKeyedSubscript:@"Value"];
  v15 = isNSDictionary(v19);

  if (!v15)
  {
    v25 = createMobileActivationError("vm_create_host_key_signature", 148, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.");

    v18 = 0;
    goto LABEL_10;
  }

  v15 = [v19 objectForKeyedSubscript:@"RKCertification"];
  v20 = isNSData(v15);

  if (!v20)
  {
    v25 = createMobileActivationError("vm_create_host_key_signature", 154, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.");

    v18 = 0;
    goto LABEL_22;
  }

  v20 = [v19 objectForKeyedSubscript:@"RKSignature"];
  v18 = isNSData(v20);

  if (!v18)
  {
    v25 = createMobileActivationError("vm_create_host_key_signature", 160, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.");

    goto LABEL_22;
  }

  if (v26)
  {
    v24 = v15;
    *v26 = v15;
  }

  v18 = v20;
  v20 = v18;
LABEL_15:
  if (a4 && !v18)
  {
    v21 = v14;
    *a4 = v14;
  }

  v22 = v18;

  return v18;
}

void sub_100326A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100326EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100327298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100327638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id copyPersonalizedFirmwareData(uint64_t a1, NSError **a2)
{
  if (getMSUDataAccessorClass())
  {
    v4 = [getMSUDataAccessorClass() sharedDataAccessor];
    v14 = 0;
    v5 = [v4 copyPathForPersonalizedData:a1 error:&v14];
    v6 = v14;

    if (v5)
    {
      v13 = v6;
      v7 = [[NSData alloc] initWithContentsOfFile:v5 options:0 error:&v13];
      v8 = v13;

      if (v7)
      {
        v9 = v7;
        goto LABEL_11;
      }

      v11 = createMobileActivationError("copyPersonalizedFirmwareData", 41, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to load firmware data from %@.", v5);

      v8 = v11;
      if (!a2)
      {
        goto LABEL_10;
      }

LABEL_8:
      v10 = v8;
      v9 = 0;
      *a2 = v8;
      goto LABEL_11;
    }

    v8 = createMobileActivationError("copyPersonalizedFirmwareData", 35, @"com.apple.MobileActivation.ErrorDomain", -1, v6, @"Failed to retrieve path for firmware data type %d.", a1);

    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = createMobileActivationError("copyPersonalizedFirmwareData", 29, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"MSUDataAccessor is not supported on this platform.");
    v5 = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v9 = 0;
LABEL_11:

  return v9;
}

id getMSUDataAccessorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSUDataAccessorClass_softClass;
  v7 = getMSUDataAccessorClass_softClass;
  if (!getMSUDataAccessorClass_softClass)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3254779904;
    v3[2] = __getMSUDataAccessorClass_block_invoke;
    v3[3] = &__block_descriptor_40_e8_32r_e5_v8__0l;
    v3[4] = &v4;
    __getMSUDataAccessorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1003289BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMSUDataAccessorClass_block_invoke(uint64_t a1)
{
  if (!MSUDataAccessorLibraryCore_frameworkLibrary)
  {
    MSUDataAccessorLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("MSUDataAccessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSUDataAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MSUDataAccessorLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MSUDataAccessorLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t createActivationRequest(void *a1, void *a2, int a3, NSError **a4)
{
  v7 = a1;
  if (!v7)
  {
    v9 = createMobileActivationError("createActivationRequest", 36, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v8 = 0;
    v10 = 0;
    v16 = 0;
    v17 = 0;
    v11 = 0;
    if (a4)
    {
LABEL_18:
      v26 = v9;
      v24 = 0;
      v19 = 0;
      *a4 = v9;
      goto LABEL_19;
    }

LABEL_13:
    v24 = 0;
    v19 = 0;
    goto LABEL_19;
  }

  v29 = 0;
  v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:100 options:0 error:&v29];
  v9 = v29;
  if (!v8)
  {
    v25 = createMobileActivationError("createActivationRequest", 45, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to convert dictionary to data.");

    v10 = 0;
LABEL_16:
    v16 = 0;
    v17 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  v10 = [[NSString alloc] initWithData:v8 encoding:4];
  if (!v10)
  {
    v25 = createMobileActivationError("createActivationRequest", 51, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to convert data to string.");

    goto LABEL_16;
  }

  v11 = +[NSMutableCharacterSet alphanumericCharacterSet];
  [(NSMutableCharacterSet *)v11 addCharactersInString:@"*-._"];
  [(NSMutableCharacterSet *)v11 addCharactersInString:@" "];
  v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

  v10 = [v12 stringByReplacingOccurrencesOfString:@" " withString:@"+"];
  v13 = [NSString alloc];
  v14 = @"activation-info";
  if (a3)
  {
    v14 = @"certify-me-info";
  }

  v15 = [v13 initWithFormat:@"%@=%@", v14, v10];
  v16 = v15;
  if (!v15)
  {
    v25 = createMobileActivationError("createActivationRequest", 64, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to convert dictionary to URL encoding.");

    v17 = 0;
    goto LABEL_17;
  }

  v17 = [v15 dataUsingEncoding:4 allowLossyConversion:0];
  if (!v17)
  {
    MobileActivationError = createMobileActivationError("createActivationRequest", 70, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to convert string to data.");
LABEL_23:
    v25 = MobileActivationError;

LABEL_17:
    v9 = v25;
    if (a4)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v18 = objc_alloc_init(NSMutableURLRequest);
  if (!v18)
  {
    MobileActivationError = createMobileActivationError("createActivationRequest", 76, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");
    goto LABEL_23;
  }

  v19 = v18;
  [v18 setCachePolicy:0];
  [v19 setTimeoutInterval:60.0];
  [v19 setHTTPMethod:@"POST"];
  v20 = [NSString stringWithFormat:@"application/x-www-form-urlencoded"];
  [v19 setValue:v20 forHTTPHeaderField:@"Content-Type"];

  v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v17 length]);
  [v19 setValue:v21 forHTTPHeaderField:@"Content-Length"];

  [v19 setHTTPBody:v17];
  [v19 setValue:@"iOS Device Activator (MobileActivation-1068.42.2)" forHTTPHeaderField:@"User-Agent"];
  v22 = [NSURL URLWithString:@"https://albert.apple.com/deviceservices/deviceActivation"];
  [v19 setURL:v22];

  if (a2)
  {
    v23 = v19;
    *a2 = v19;
  }

  v24 = 1;
LABEL_19:

  return v24;
}

id getSessionActivationRecordFromData(void *a1, NSError **a2)
{
  v3 = a1;
  if (v3)
  {
    v12 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v12];
    v5 = v12;
    v6 = isNSDictionary(v4);

    if (v6)
    {
      v6 = [v4 objectForKeyedSubscript:@"ActivationRecord"];
      v7 = isNSDictionary(v6);

      if (v7)
      {
        v7 = v6;
        v6 = v7;
        if (!a2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v8 = createMobileActivationError("getSessionActivationRecordFromData", 124, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Input data is missing activation record.");

        v5 = v8;
        if (!a2)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v7 = 0;
      if (!a2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v5 = createMobileActivationError("getSessionActivationRecordFromData", 113, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v7 = 0;
    v4 = 0;
    v6 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  if (!v7)
  {
    v9 = v5;
    *a2 = v5;
  }

LABEL_13:
  v10 = v7;

  return v7;
}

id getActivationRecordFromData(uint64_t a1, NSError **a2)
{
  v22 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:a1 options:0 format:0 error:&v22];
  v4 = v22;
  v5 = isNSDictionary(v3);

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"AccountToken"];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 objectForKeyedSubscript:@"AccountTokenSignature"];
      if (v8)
      {
        v9 = v8;
        v10 = [v3 objectForKeyedSubscript:@"DeviceCertificate"];

        if (v10)
        {
          v11 = v3;
          v5 = 0;
          if (!a2)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    v12 = @"device-activation";
    v13 = [v3 objectForKeyedSubscript:@"device-activation"];

    if (v13 || (v12 = @"iphone-activation", v14 = [v3 objectForKeyedSubscript:@"iphone-activation"], v14, v14))
    {
      v5 = [v3 objectForKeyedSubscript:v12];
    }

    else
    {
      v5 = 0;
    }

    v11 = isNSDictionary(v5);

    if (v11)
    {
      v15 = [v5 objectForKeyedSubscript:@"activation-record"];

      v16 = isNSDictionary(v15);
      if (v16)
      {
        v11 = v15;
        v5 = v11;
        if (!a2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = createMobileActivationError("getActivationRecordFromData", 173, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Input data is missing activation record.");

        v11 = 0;
        v4 = v18;
        v5 = v15;
        if (!a2)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v17 = createMobileActivationError("getActivationRecordFromData", 167, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Input data is missing activation ticket.");

      v4 = v17;
      if (!a2)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if (!v11)
  {
    v19 = v4;
    *a2 = v4;
  }

LABEL_22:
  v20 = v11;

  return v11;
}

NSDictionary *getRecertInfoFromData(void *a1, NSError **a2)
{
  v3 = a1;
  if (!v3)
  {
    v5 = createMobileActivationError("getRecertInfoFromData", 197, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v6 = 0;
    v7 = 0;
    v4 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v11 = 0;
  v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v11];
  v5 = v11;
  v6 = isNSDictionary(v4);

  if (v6)
  {
    v6 = [v4 objectForKeyedSubscript:@"certify-me-info"];
    v7 = isNSDictionary(v6);

    if (v7)
    {
      v12 = @"certify-me";
      v13 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      if (!a2)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    v8 = createMobileActivationError("getRecertInfoFromData", 209, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"XML data is missing certify-me-info.");
  }

  else
  {
    v8 = createMobileActivationError("getRecertInfoFromData", 203, @"com.apple.MobileActivation.ErrorDomain", -1, v5, @"Failed to create dictionary from data.");

    v7 = 0;
  }

  v5 = v8;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v7)
  {
    v9 = v5;
    *a2 = v5;
  }

LABEL_13:

  return v7;
}

NSError *createMobileActivationError(uint64_t a1, uint64_t a2, id a3, uint64_t a4, void *a5, void *a6, ...)
{
  va_start(va, a6);
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [[NSMutableString alloc] initWithFormat:v13 arguments:va];

  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = v15;
  if (v14)
  {
    [v15 setObject:v14 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v12)
  {
    [v16 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v17 = [NSString stringWithUTF8String:a1];
      [v16 setObject:v17 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v18 = [NSNumber numberWithUnsignedInt:a2];
      [v16 setObject:v18 forKeyedSubscript:@"SourceLine"];
    }
  }

  v19 = [NSError errorWithDomain:v11 code:a4 userInfo:v16];

  return v19;
}

uint64_t security_delete_legacy_uik(NSError **a1)
{
  v16 = 1;
  [@"systemgroup.com.apple.mobileactivationd" UTF8String];
  v2 = container_system_group_path_for_identifier();
  if (!v2)
  {
    v9 = createMobileActivationError("security_delete_legacy_uik", 105, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query group container path: %d", v16);
    v4 = 0;
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [NSString stringWithUTF8String:v2];
  v4 = [(NSString *)v3 stringByAppendingPathComponent:@"Library/uik/uik.pem"];

  v5 = +[NSFileManager defaultManager];
  v6 = [(NSFileManager *)v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    v15 = 0;
    v8 = [(NSFileManager *)v7 removeItemAtPath:v4 error:&v15];
    v9 = v15;

    if ((v8 & 1) == 0)
    {
      v10 = createMobileActivationError("security_delete_legacy_uik", 113, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to delete %@.", v4);

      v9 = v10;
      if (!a1)
      {
LABEL_8:
        v12 = 0;
        v13 = 0;
        if (!v2)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

LABEL_7:
      v11 = v9;
      *a1 = v9;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = 1;
LABEL_12:
  free(v2);
  v13 = v12;
LABEL_13:

  return v13;
}

BOOL security_committed_uik_is_legacy(NSError **a1)
{
  [@"systemgroup.com.apple.mobileactivationd" UTF8String];
  v2 = container_system_group_path_for_identifier();
  if (v2)
  {
    v3 = [NSString stringWithUTF8String:v2];
    v4 = [(NSString *)v3 stringByAppendingPathComponent:@"Library/uik/uik.pem"];

    v5 = +[NSFileManager defaultManager];
    v6 = [(NSFileManager *)v5 fileExistsAtPath:v4];

    v7 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = createMobileActivationError("security_committed_uik_is_legacy", 142, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query group container path: %d", 1);
    v6 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v8 = v7;
    *a1 = v7;
  }

LABEL_7:
  if (v2)
  {
    free(v2);
  }

  return v6;
}

__SecKey *security_copy_system_key(uint64_t a1, CFDataRef *a2, NSError **a3)
{
  v6 = 0;
  v41 = 0;
  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v40 = 0;
  is_legacy = security_committed_uik_is_legacy(&v40);
  v8 = v40;
  v6 = v8;
  if (!is_legacy && v8)
  {
    v9 = createMobileActivationError("security_copy_system_key", 180, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to query legacy UIK support.");
    v10 = 0;
LABEL_19:
    v24 = 0;
    goto LABEL_23;
  }

  if (!is_legacy)
  {
LABEL_12:
    v10 = SecKeyCopySystemKey();
    if (!v10)
    {
      v9 = createMobileActivationError("security_copy_system_key", 195, @"com.apple.MobileActivation.ErrorDomain", -1, v41, @"Failed to copy system key (%d).", a1);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v43 = 1;
  error = 0;
  [@"systemgroup.com.apple.mobileactivationd" UTF8String];
  v11 = container_system_group_path_for_identifier();
  if (!v11)
  {
    v18 = createMobileActivationError("copy_legacy_committed_uik", 44, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query group container path: %d", v43);
    v20 = 0;
    v17 = 0;
    v13 = 0;
LABEL_34:
    v22 = 0;
    v10 = 0;
    goto LABEL_40;
  }

  v12 = [NSString stringWithUTF8String:v11];
  v13 = [(NSString *)v12 stringByAppendingPathComponent:@"Library/uik/uik.pem"];

  v14 = +[NSFileManager defaultManager];
  v15 = [(NSFileManager *)v14 fileExistsAtPath:v13];

  if ((v15 & 1) == 0)
  {
    v18 = createMobileActivationError("copy_legacy_committed_uik", 50, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Legacy UIK does not exist.");
    v20 = 0;
    v17 = 0;
    goto LABEL_34;
  }

  v16 = [NSData alloc];
  v42 = 0;
  v17 = [v16 initWithContentsOfFile:v13 options:0 error:&v42];
  v18 = v42;
  if (v17)
  {
    v19 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
    if (v19)
    {
      v45[0] = kSecAttrIsPermanent;
      v45[1] = kSecAttrTokenID;
      v46[0] = &__kCFBooleanFalse;
      v46[1] = kSecAttrTokenIDAppleKeyStore;
      v45[2] = kSecAttrTokenOID;
      v45[3] = kSecAttrAccessControl;
      v46[2] = v17;
      v46[3] = v19;
      cf = v19;
      v20 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];
      v21 = SecKeyCreateWithData(+[NSData data], v20, &error);
      v22 = v21;
      if (v21)
      {
        v10 = CFRetain(v21);
      }

      else
      {
        v37 = createMobileActivationError("copy_legacy_committed_uik", 74, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to query UIK.");

        v10 = 0;
        v18 = v37;
      }

      CFRelease(cf);
      goto LABEL_40;
    }

    MobileActivationError = createMobileActivationError("copy_legacy_committed_uik", 62, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
  }

  else
  {
    MobileActivationError = createMobileActivationError("copy_legacy_committed_uik", 56, @"com.apple.MobileActivation.ErrorDomain", -1, v18, @"Failed to load %@.", v13);
  }

  cfa = MobileActivationError;

  v20 = 0;
  v22 = 0;
  v10 = 0;
  v18 = cfa;
LABEL_40:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v22)
  {
    CFRelease(v22);
  }

  if (v11)
  {
    free(v11);
  }

  v34 = v6;
  if (!v10)
  {
    v35 = v18;
    v34 = v18;
  }

  v36 = v34;
  if (!v10)
  {
    v9 = createMobileActivationError("security_copy_system_key", 189, @"com.apple.MobileActivation.ErrorDomain", -1, v36, @"Failed to copy system key (legacy).");
    v24 = 0;
    v6 = v36;
    goto LABEL_23;
  }

  v6 = v36;
LABEL_13:
  v23 = SecKeyCopyPublicKey(v10);
  v24 = v23;
  if (v23)
  {
    v25 = SecKeyCopyExternalRepresentation(v23, &v41);
    if (v25)
    {
      v26 = v25;
      if (a2)
      {
        v27 = v25;
        *a2 = v26;
      }

      v9 = v6;
      goto LABEL_28;
    }

    v28 = createMobileActivationError("security_copy_system_key", 208, @"com.apple.MobileActivation.ErrorDomain", -1, v41, @"Failed to copy public key buffer.");
  }

  else
  {
    v28 = createMobileActivationError("security_copy_system_key", 202, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy public key.");
  }

  v9 = v28;
LABEL_23:

  if (a3)
  {
    v29 = v9;
    *a3 = v9;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v26 = 0;
  v10 = 0;
  v30 = 0;
  v31 = 0;
  if (v24)
  {
LABEL_28:
    CFRelease(v24);
    v30 = v26;
    v31 = v10;
  }

  if (v41)
  {
    CFRelease(v41);
  }

  v41 = 0;

  return v31;
}

id security_create_system_key_attestation(uint64_t a1, uint64_t a2, id a3, NSError **a4)
{
  v7 = a3;
  cf = 0;
  if (!a1)
  {
    v9 = createMobileActivationError("security_create_system_key_attestation", 242, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input(s)");
    v8 = 0;
    if (!a4)
    {
LABEL_16:
      v12 = 0;
      v15 = 0;
      if (!v8)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_15:
    v14 = v9;
    *a4 = v9;
    goto LABEL_16;
  }

  v17 = 0;
  v8 = security_copy_system_key(a2, 0, &v17);
  v9 = v17;
  if (!v8)
  {
    MobileActivationError = createMobileActivationError("security_create_system_key_attestation", 248, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to copy attestation key.");
    goto LABEL_14;
  }

  if (v7)
  {
    if ([v7 length] >= 0x21)
    {
      MobileActivationError = createMobileActivationError("security_create_system_key_attestation", 254, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Nonce is too big (> 32 bytes).");
      goto LABEL_14;
    }

    if (!SecKeySetParameter())
    {
      MobileActivationError = createMobileActivationError("security_create_system_key_attestation", 259, @"com.apple.MobileActivation.ErrorDomain", -1, cf, @"Failed to set nonce.");
LABEL_14:
      v13 = MobileActivationError;

      v9 = v13;
      if (!a4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  Attestation = SecKeyCreateAttestation();
  if (!Attestation)
  {
    MobileActivationError = createMobileActivationError("security_create_system_key_attestation", 266, @"com.apple.MobileActivation.ErrorDomain", -11, cf, @"Failed to create attestation.");
    goto LABEL_14;
  }

  v12 = Attestation;
LABEL_17:
  CFRelease(v8);
  v15 = v12;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v15;
}

id security_create_attestation(uint64_t a1, uint64_t a2, NSError **a3)
{
  if (a1 && a2)
  {
    Attestation = SecKeyCreateAttestation();
    if (Attestation)
    {
      v5 = Attestation;
      v6 = 0;
      goto LABEL_10;
    }

    MobileActivationError = createMobileActivationError("security_create_attestation", 299, @"com.apple.MobileActivation.ErrorDomain", -11, 0, @"Failed to create attestation.");
  }

  else
  {
    MobileActivationError = createMobileActivationError("security_create_attestation", 293, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input(s)");
  }

  v8 = MobileActivationError;
  v6 = v8;
  if (a3)
  {
    v9 = v8;
    v5 = 0;
    *a3 = v6;
  }

  else
  {
    v5 = 0;
  }

LABEL_10:

  return v5;
}

id security_create_external_representation(__SecKey *a1, NSError *a2, NSError **a3)
{
  if (!a1)
  {
    a2 = createMobileActivationError("security_create_external_representation", 328, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v6 = 0;
    if (a3)
    {
LABEL_11:
      v14 = a2;
      v11 = 0;
      *a3 = a2;
      goto LABEL_12;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_12;
  }

  v5 = SecKeyCopyAttributes(a1);
  v6 = v5;
  if (!v5)
  {
    MobileActivationError = createMobileActivationError("security_create_external_representation", 334, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK attributes.");
    goto LABEL_10;
  }

  v7 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecAttrTokenOID];
  if (!v7)
  {
    MobileActivationError = createMobileActivationError("security_create_external_representation", 340, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode RK as data.");
LABEL_10:
    a2 = MobileActivationError;
    if (a3)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v8 = v7;
  v9 = kSecUseSystemKeychain;
  v10 = [(__CFDictionary *)v6 objectForKeyedSubscript:kSecUseSystemKeychain];

  v11 = v8;
  if (a2)
  {
    v16 = v9;
    v12 = [NSNumber numberWithBool:v10 != 0];
    v17 = v12;
    a2->super.isa = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    a2 = 0;
  }

LABEL_12:

  return v11;
}

uint64_t security_valid_security_enclave_reference_key(__SecKey *a1, int a2, unsigned __int8 *a3, NSError **a4)
{
  error = 0;
  if (!a1)
  {
    MobileActivationError = createMobileActivationError("security_valid_security_enclave_reference_key", 394, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.");
LABEL_23:
    v22 = MobileActivationError;
    v23 = 0;
    v24 = 0;
    cf = 0;
    v47 = 0;
    Duplicate = 0;
    v9 = 0;
    v48 = 0;
    v45 = 0;
    goto LABEL_35;
  }

  v7 = SecKeyCopyAttributes(a1);
  if (!v7)
  {
    MobileActivationError = createMobileActivationError("security_valid_security_enclave_reference_key", 400, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attributes.");
    goto LABEL_23;
  }

  v8 = v7;
  v9 = CFDictionaryGetValue(v7, kSecAttrTokenID);
  v10 = isNSString(v9);

  if (!v10)
  {
    v25 = createMobileActivationError("security_valid_security_enclave_reference_key", 406, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", kSecAttrTokenID);
LABEL_27:
    v22 = v25;
    v24 = 0;
    cf = 0;
    v47 = 0;
LABEL_32:
    Duplicate = 0;
    v48 = 0;
    goto LABEL_33;
  }

  if (([v9 isEqualToString:kSecAttrTokenIDSecureEnclave] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", kSecAttrTokenIDAppleKeyStore) & 1) == 0)
  {
    v25 = createMobileActivationError("security_valid_security_enclave_reference_key", 412, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid key type (actual, expected): (%@, %@)", v9, kSecAttrTokenIDSecureEnclave);
    goto LABEL_27;
  }

  v11 = CFDictionaryGetValue(v8, kSecAttrKeySizeInBits);
  v12 = isNSNumber(v11);

  v47 = v11;
  if (!v12)
  {
    v26 = createMobileActivationError("security_valid_security_enclave_reference_key", 418, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", kSecAttrKeySizeInBits);
LABEL_31:
    v22 = v26;
    v24 = 0;
    cf = 0;
    goto LABEL_32;
  }

  if ([v11 unsignedIntValue] != 256 && objc_msgSend(v11, "unsignedIntValue") != 384)
  {
    v26 = createMobileActivationError("security_valid_security_enclave_reference_key", 423, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Unsupported key size: %@", v11);
    goto LABEL_31;
  }

  v44 = a3;
  v13 = CFDictionaryGetValue(v8, kSecAttrKeyType);
  v14 = isNSString(v13);

  v48 = v13;
  if (!v14)
  {
    v27 = createMobileActivationError("security_valid_security_enclave_reference_key", 429, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", kSecAttrKeyType);
LABEL_29:
    v22 = v27;
    v24 = 0;
    cf = 0;
    Duplicate = 0;
LABEL_33:
    v45 = 0;
LABEL_34:
    v23 = v8;
    goto LABEL_35;
  }

  v15 = v13;
  if (([v13 isEqualToString:?] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", kSecAttrKeyTypeECSECPrimeRandomPKA) & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", kSecAttrKeyTypeSecureEnclaveAttestation) & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", kSecAttrKeyTypeSecureEnclaveAnonymousAttestation) & 1) == 0)
  {
    v27 = createMobileActivationError("security_valid_security_enclave_reference_key", 441, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Unsupported key type: %@", v13);
    goto LABEL_29;
  }

  if (!a2)
  {
    v20 = 0;
    v45 = 0;
    cf = 0;
    v19 = 0;
    v18 = 0;
    v32 = 0;
    v22 = 0;
    v23 = v8;
    goto LABEL_49;
  }

  Duplicate = SecKeyCreateDuplicate();
  if (!Duplicate)
  {
    v39 = createMobileActivationError("security_valid_security_enclave_reference_key", 448, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create duplicate RK.");
LABEL_57:
    v22 = v39;
    v24 = 0;
LABEL_58:
    cf = 0;
    goto LABEL_33;
  }

  if (!SecKeySetParameter())
  {
    v39 = createMobileActivationError("security_valid_security_enclave_reference_key", 456, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set RK parameter.");
    goto LABEL_57;
  }

  if (([v15 isEqualToString:kSecAttrKeyTypeECSECPrimeRandom] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", kSecAttrKeyTypeECSECPrimeRandomPKA))
  {
    v17 = SecKeyCreateSignature(Duplicate, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, +[NSData data], &error);
    if (v17)
    {
      v18 = v17;
      v19 = Duplicate;
      v20 = 0;
      cf = 0;
LABEL_68:
      v32 = 0;
      v45 = 0;
      v22 = 0;
      goto LABEL_69;
    }

    if (!mobileactivationErrorHasDomainAndErrorCode(error, TKErrorDomain, 0xFFFFFFFFFFFFFFFDLL))
    {
      v19 = Duplicate;
      v20 = 0;
      cf = 0;
      v18 = 0;
      goto LABEL_68;
    }

    v39 = createMobileActivationError("security_valid_security_enclave_reference_key", 464, @"com.apple.MobileActivation.ErrorDomain", -2, error, @"Failed to create test signature.");
    goto LABEL_57;
  }

  v24 = SecAccessControlCreate();
  if (!v24)
  {
    v42 = createMobileActivationError("security_valid_security_enclave_reference_key", 470, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
LABEL_72:
    v22 = v42;
    goto LABEL_58;
  }

  v40 = kSecAttrAccessibleUntilReboot;
  if ((SecAccessControlSetProtection() & 1) == 0)
  {
    v42 = createMobileActivationError("security_valid_security_enclave_reference_key", 475, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v40);
    goto LABEL_72;
  }

  v51[0] = kSecAttrIsPermanent;
  v51[1] = kSecAttrTokenID;
  v52[0] = &__kCFBooleanFalse;
  v52[1] = kSecAttrTokenIDAppleKeyStore;
  v51[2] = kSecAttrKeyType;
  v51[3] = kSecAttrAccessControl;
  v52[2] = kSecAttrKeyTypeECSECPrimeRandom;
  v52[3] = v24;
  v51[4] = kSecAttrKeySizeInBits;
  v52[4] = &off_1003FBE28;
  v45 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:5];
  v41 = SecKeyCreateRandomKey(v45, &error);
  if (!v41)
  {
    v22 = createMobileActivationError("security_valid_security_enclave_reference_key", 488, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create reference key.");
    cf = 0;
    goto LABEL_34;
  }

  v49 = 0;
  cf = v41;
  v19 = Duplicate;
  v32 = security_create_attestation(v41, Duplicate, &v49);
  v22 = v49;
  if (v32)
  {
    v20 = v24;
    v18 = 0;
LABEL_69:
    v23 = v8;
    v15 = v48;
LABEL_49:
    if (v44)
    {
      if ([v15 isEqualToString:kSecAttrKeyTypeSecureEnclaveAttestation])
      {
        v28 = v9;
        v37 = 1;
      }

      else
      {
        v38 = v15;
        v28 = v9;
        v37 = [v38 isEqualToString:kSecAttrKeyTypeSecureEnclaveAnonymousAttestation];
      }

      *v44 = v37;
      v31 = 1;
      v23 = v8;
    }

    else
    {
      v28 = v9;
      v31 = 1;
    }

LABEL_38:
    CFRelease(v23);
    v33 = v31;
    v34 = v18;
    v35 = v32;
    goto LABEL_39;
  }

  v43 = createMobileActivationError("security_valid_security_enclave_reference_key", 494, @"com.apple.MobileActivation.ErrorDomain", -11, v22, @"Failed to create test attestation.");

  v22 = v43;
  v23 = v8;
LABEL_35:
  v20 = v24;
  v19 = Duplicate;
  v28 = v9;
  if (a4)
  {
    v29 = v23;
    v30 = v22;
    v23 = v29;
    *a4 = v22;
  }

  v31 = 0;
  v18 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (v23)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v20)
  {
    CFRelease(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v33;
}

uint64_t security_certificate_matches_key(__SecKey *a1, id a2, __SecCertificate *a3, NSError **a4)
{
  v7 = a2;
  error = 0;
  if (!a1 || !a3)
  {
    v11 = createMobileActivationError("security_certificate_matches_key", 533, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v10 = 0;
    v12 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  v8 = SecKeyCopyPublicKey(a1);
  v9 = v8;
  if (!v8)
  {
    v11 = createMobileActivationError("security_certificate_matches_key", 539, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.");
    v10 = 0;
LABEL_8:
    v12 = 0;
    goto LABEL_15;
  }

  if (v7)
  {
    v10 = v7;
    goto LABEL_10;
  }

  v10 = SecKeyCopyExternalRepresentation(v8, &error);
  if (!v10)
  {
    v11 = createMobileActivationError("security_certificate_matches_key", 548, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy RK public key buffer.");
    goto LABEL_8;
  }

LABEL_10:
  v13 = SecCertificateCopyKey(a3);
  v12 = v13;
  if (!v13)
  {
    v11 = createMobileActivationError("security_certificate_matches_key", 557, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve certificate public key.");
LABEL_15:
    v14 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = SecKeyCopyExternalRepresentation(v13, &error);
  if (!v14)
  {
    MobileActivationError = createMobileActivationError("security_certificate_matches_key", 563, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to encode certificate public key as data.");
    goto LABEL_26;
  }

  if (([(__CFData *)v10 isEqualToData:v14]& 1) == 0)
  {
    MobileActivationError = createMobileActivationError("security_certificate_matches_key", 570, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Certificate public key does not match RK public key.");
LABEL_26:
    v11 = MobileActivationError;
    if (!a4)
    {
LABEL_17:
      v15 = 0;
      v17 = 0;
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_16:
    v16 = v11;
    *a4 = v11;
    goto LABEL_17;
  }

  v11 = 0;
  v15 = 1;
LABEL_18:
  CFRelease(v9);
  v17 = v15;
LABEL_19:
  if (v12)
  {
    CFRelease(v12);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;

  return v17;
}

BOOL is_virtual_machine()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0) && v3 == 1;
}

uint64_t createXMLRequest(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  if (!v5)
  {
    v7 = createMobileActivationError("createXMLRequest", 57, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v6 = 0;
    if (a3)
    {
LABEL_12:
      v17 = v7;
      v14 = 0;
      v9 = 0;
      *a3 = v7;
      goto LABEL_13;
    }

LABEL_8:
    v14 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  v19 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:100 options:0 error:&v19];
  v7 = v19;
  if (!v6)
  {
    MobileActivationError = createMobileActivationError("createXMLRequest", 67, @"com.apple.MobileActivation.ErrorDomain", -1, v7, @"Failed to convert dictionary to data");
    goto LABEL_11;
  }

  v8 = objc_alloc_init(NSMutableURLRequest);
  if (!v8)
  {
    MobileActivationError = createMobileActivationError("createXMLRequest", 74, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");
LABEL_11:
    v16 = MobileActivationError;

    v7 = v16;
    if (a3)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v9 = v8;
  [v8 setCachePolicy:0];
  LODWORD(v10) = NETWORK_TIMEOUT_SECONDS;
  [v9 setTimeoutInterval:v10];
  [v9 setHTTPMethod:@"POST"];
  v11 = [NSString stringWithFormat:@"application/xml"];
  [v9 setValue:v11 forHTTPHeaderField:@"Content-Type"];

  v12 = [NSString stringWithFormat:@"%lu", [(NSData *)v6 length]];
  [v9 setValue:v12 forHTTPHeaderField:@"Content-Length"];

  [v9 setHTTPBody:v6];
  if (a2)
  {
    v13 = v9;
    *a2 = v9;
  }

  v14 = 1;
LABEL_13:

  return v14;
}

id createBAAClientName(void *a1, id a2)
{
  v3 = a2;
  v4 = [a1 copy];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingFormat:@"#%@", v3];

    v5 = v6;
  }

  return v5;
}

id createUserAgentValue(void *a1, void *a2)
{
  v2 = createBAAClientName(a1, a2);
  v3 = [[NSString alloc] initWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", v2];

  return v3;
}

BOOL clientNameSuffixIsValid(void *a1, NSError **a2)
{
  v3 = a1;
  v11 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"^[A-Za-z0-9_-]{0 options:64}$" error:0, &v11];
  v5 = v11;
  if (v4)
  {
    v6 = -[NSRegularExpression firstMatchInString:options:range:](v4, "firstMatchInString:options:range:", v3, 0, 0, [v3 length]);
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
    v8 = createMobileActivationError("clientNameSuffixIsValid", 129, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create regex.");
    v6 = v5;
    v5 = v8;
  }

  if (a2 && !v7)
  {
    v9 = v5;
    *a2 = v5;
  }

  return v7;
}

uint64_t is_erase_installed_build()
{
  if (copyUserDataDisposition_onceToken != -1)
  {
    is_erase_installed_build_cold_1();
  }

  return copyUserDataDisposition_dataDisposition & 1;
}

uint64_t is_upgrade_installed_build()
{
  if (copyUserDataDisposition_onceToken != -1)
  {
    is_erase_installed_build_cold_1();
  }

  return (copyUserDataDisposition_dataDisposition >> 1) & 1;
}

id data_migration_supported()
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  [@"com.apple.mobileactivationd" UTF8String];
  if ((os_variant_is_darwinos() & 1) != 0 || !xpc_user_sessions_enabled())
  {
    return 0;
  }

  if (copyUserDataDisposition_onceToken != -1)
  {
    is_erase_installed_build_cold_1();
  }

  if ((copyUserDataDisposition_dataDisposition & 2) == 0)
  {
    return 0;
  }

  v1 = +[GestaltHlpr getSharedInstance];
  v2 = [v1 getBoolAnswer:@"DeviceSupportsMultiUser"];

  return v2;
}

void __copyUserDataDisposition_block_invoke(id a1)
{
  [@"com.apple.mobileactivationd" UTF8String];
  if ((os_variant_is_darwinos() & 1) == 0)
  {
    copyUserDataDisposition_dataDisposition = DMGetUserDataDisposition();
  }
}

uint64_t setBatteryDateOfFirtUse(void *a1, NSError **a2)
{
  v3 = a1;
  if (v3)
  {
    if (!_os_feature_enabled_impl() || (Use = IOPSSetBatteryDateOfFirstUse(), !Use))
    {
      v6 = 0;
      v7 = 1;
      goto LABEL_10;
    }

    MobileActivationError = createMobileActivationError("setBatteryDateOfFirtUse", 34, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to set battery date of first use: 0x%08x", Use);
  }

  else
  {
    MobileActivationError = createMobileActivationError("setBatteryDateOfFirtUse", 27, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  }

  v6 = MobileActivationError;
  if (a2)
  {
    v6 = v6;
    v7 = 0;
    *a2 = v6;
  }

  else
  {
    v7 = 0;
  }

LABEL_10:

  return v7;
}

BOOL hasPrimaryICloudAccount(NSError **a1)
{
  v2 = [getAKAccountManagerClass() sharedInstance];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 primaryAuthKitAccount];
    v5 = v4 != 0;

    v6 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = createMobileActivationError("hasPrimaryICloudAccount", 48, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Failed to retrieve account manager.");
    v5 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if (!v5)
  {
    v7 = v6;
    *a1 = v6;
  }

LABEL_7:

  return v5;
}

id getAKAccountManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAKAccountManagerClass_softClass;
  v6 = getAKAccountManagerClass_softClass;
  if (!getAKAccountManagerClass_softClass)
  {
    AuthKitLibraryCore();
    v4[3] = objc_getClass("AKAccountManager");
    getAKAccountManagerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_10032BE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL primaryICloudAccountIsHSA2(NSError **a1)
{
  v2 = [getAKAccountManagerClass() sharedInstance];
  v3 = v2;
  if (!v2)
  {
    MobileActivationError = createMobileActivationError("primaryICloudAccountIsHSA2", 81, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Failed to retrieve account manager.");
LABEL_8:
    v8 = MobileActivationError;
    goto LABEL_9;
  }

  v4 = [v2 primaryAuthKitAccount];
  if (!v4)
  {
    MobileActivationError = createMobileActivationError("primaryICloudAccountIsHSA2", 87, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"No primary account exists.");
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v3 securityLevelForAccount:v4];
  if (!v6)
  {
    v8 = createMobileActivationError("primaryICloudAccountIsHSA2", 93, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Failed to retrieve account security level.");

LABEL_9:
    v7 = 0;
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = v6 == 4;

  v8 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v7)
  {
    v10 = v8;
    *a1 = v8;
  }

LABEL_12:

  return v7;
}

id copyTokenForActivationLock(void *a1, void *a2, int a3, BOOL *a4, void *a5)
{
  v8 = a1;
  v48 = a2;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__8;
  v68 = __Block_byref_object_dispose__8;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__8;
  v62 = __Block_byref_object_dispose__8;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__8;
  v56 = __Block_byref_object_dispose__8;
  v57 = 0;
  v9 = objc_alloc_init(NSDictionary);
  v10 = v59[5];
  v59[5] = v9;

  if (!v59[5])
  {
    v15 = createMobileActivationError("copyTokenForActivationLock", 134, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");
LABEL_13:
    v16 = 0;
    v17 = 0;
    v49 = 0;
    goto LABEL_14;
  }

  v11 = dispatch_semaphore_create(0);
  v12 = v53[5];
  v53[5] = v11;

  if (!v53[5])
  {
    v15 = createMobileActivationError("copyTokenForActivationLock", 140, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create semaphore.");
    goto LABEL_13;
  }

  if (!getAKAppleIDAuthenticationControllerClass() || !getAKAppleIDAuthenticationContextClass() || !getAKAccountManagerClass())
  {
    v15 = createMobileActivationError("copyTokenForActivationLock", 145, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"AuthKit is not supported on this platform.");
    goto LABEL_13;
  }

  v49 = objc_alloc_init(getAKAccountManagerClass());
  if (!v49)
  {
    v15 = createMobileActivationError("copyTokenForActivationLock", 151, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate account manager.");
    goto LABEL_13;
  }

  if (v8)
  {
    v13 = v65;
    obj = v65[5];
    v14 = [v49 authKitAccountWithAppleID:v8 error:&obj];
    objc_storeStrong(v13 + 5, obj);
    if (!v14)
    {
      v15 = createMobileActivationError("copyTokenForActivationLock", 158, @"com.apple.MobileActivation.ErrorDomain", -1, v65[5], @"Failed to query account for %@.", v8);
      v16 = 0;
      v17 = 0;
LABEL_14:
      v47 = 0;
LABEL_15:
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_16:
      v22 = v65[5];
      v65[5] = v15;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = [v49 primaryAuthKitAccount];
    if (!v14)
    {
      v15 = createMobileActivationError("copyTokenForActivationLock", 164, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query primary account.");
      v16 = 0;
      v17 = 0;
      v47 = 0;
      v18 = 0;
LABEL_37:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v8 = 0;
      goto LABEL_16;
    }
  }

  v47 = v14;
  v27 = [v49 securityLevelForAccount:v14];
  v45 = v27 == 4;
  if (!v48 && (a3 & 1) == 0 && v27 != 4)
  {
    v15 = createMobileActivationError("copyTokenForActivationLock", 172, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input for Non-HSA2 account (password required).");
LABEL_35:
    v16 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v18 = [v49 DSIDForAccount:v14];
  if (!v18)
  {
    v15 = createMobileActivationError("copyTokenForActivationLock", 178, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query DSID.");
    goto LABEL_35;
  }

  v23 = [v49 formattedUsernameForAccount:v14];

  if (!v23)
  {
    v15 = createMobileActivationError("copyTokenForActivationLock", 184, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query username.");
    v16 = 0;
    v17 = 0;
    goto LABEL_37;
  }

  v19 = [v49 altDSIDForAccount:v14];
  if (!v19)
  {
    v28 = createMobileActivationError("copyTokenForActivationLock", 190, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query altDSID.");
    v16 = 0;
    v17 = 0;
    v19 = 0;
LABEL_42:
    v20 = 0;
    v21 = 0;
LABEL_43:
    v22 = v65[5];
    v65[5] = v28;
    goto LABEL_44;
  }

  v16 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  if (!v16)
  {
    v28 = createMobileActivationError("copyTokenForActivationLock", 196, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate auth controller.");
    v16 = 0;
LABEL_41:
    v17 = 0;
    goto LABEL_42;
  }

  v17 = objc_alloc_init(getAKAppleIDAuthenticationContextClass());
  if (!v17)
  {
    v28 = createMobileActivationError("copyTokenForActivationLock", 202, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate auth context.");
    goto LABEL_41;
  }

  if (v48)
  {
    if ([v48 hasSuffix:@"PET"])
    {
      v21 = v48;
      goto LABEL_47;
    }

    [v17 _setPassword:v48];
  }

  v21 = 0;
LABEL_47:
  [v17 setUsername:v23];
  v29 = [v18 stringValue];
  [v17 setDSID:v29];

  [v17 setAltDSID:v19];
  [v17 setIsUsernameEditable:0];
  [v17 setShouldPromptForPasswordOnly:0];
  [v17 setShouldUpdatePersistentServiceTokens:0];
  [v17 setServiceType:1];
  [v17 setShouldSkipSettingsLaunchAlert:0];
  [v17 setAuthenticationType:a3 ^ 1u];
  v20 = objc_alloc_init(NSMutableDictionary);
  if (!v20)
  {
    v28 = createMobileActivationError("copyTokenForActivationLock", 226, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v20 = 0;
    goto LABEL_43;
  }

  v30 = [v18 stringValue];
  [v20 setObject:v30 forKeyedSubscript:@"dsid"];

  [v20 setObject:v19 forKeyedSubscript:@"altDSID"];
  [v20 setObject:v23 forKeyedSubscript:?];
  [v20 setObject:v21 forKeyedSubscript:@"pet"];
  if (!v21)
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3254779904;
    v50[2] = __copyTokenForActivationLock_block_invoke;
    v50[3] = &__block_descriptor_56_e8_32r40r48r_e34_v24__0__NSDictionary_8__NSError_16l;
    v50[4] = &v64;
    v50[5] = &v58;
    v50[6] = &v52;
    [v16 authenticateWithContext:v17 completion:v50];
    dispatch_semaphore_wait(v53[5], 0xFFFFFFFFFFFFFFFFLL);
    if (v65[5])
    {
      v21 = 0;
      if (a5)
      {
        goto LABEL_18;
      }

LABEL_55:
      v26 = 0;
      goto LABEL_56;
    }

    v33 = v59[5];
    v44 = getAKAuthenticationPasswordKey();
    v34 = [v33 objectForKeyedSubscript:v44];
    [v20 setObject:v34 forKeyedSubscript:@"pet"];

    v35 = [v20 objectForKeyedSubscript:@"pet"];
    v36 = isNSString(v35);

    if (v36)
    {
      v37 = v59[5];
      v38 = getAKAuthenticationUsernameKey();
      v39 = [v37 objectForKeyedSubscript:v38];
      [v20 setObject:v39 forKeyedSubscript:@"appleID"];

      v40 = [v20 objectForKeyedSubscript:@"appleID"];
      v41 = isNSString(v40);

      if (v41)
      {
        goto LABEL_49;
      }

      v22 = getAKAuthenticationPasswordKey();
      v42 = createMobileActivationError("copyTokenForActivationLock", 263, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing authentication value: %@", v22);
    }

    else
    {
      v22 = getAKAuthenticationPasswordKey();
      v42 = createMobileActivationError("copyTokenForActivationLock", 257, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing authentication value: %@", v22);
    }

    v43 = v65[5];
    v65[5] = v42;

    v21 = 0;
LABEL_44:
    v8 = v23;
LABEL_17:

    v23 = v8;
    if (a5)
    {
LABEL_18:
      v24 = v65[5];
      v25 = v24;
      v26 = 0;
      *a5 = v24;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (a4)
  {
    *a4 = v45;
  }

  v26 = v20;
  v20 = v26;
LABEL_56:
  v31 = v26;

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);

  return v31;
}

void sub_10032CA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getAKAppleIDAuthenticationControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAKAppleIDAuthenticationControllerClass_softClass;
  v6 = getAKAppleIDAuthenticationControllerClass_softClass;
  if (!getAKAppleIDAuthenticationControllerClass_softClass)
  {
    AuthKitLibraryCore();
    v4[3] = objc_getClass("AKAppleIDAuthenticationController");
    getAKAppleIDAuthenticationControllerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_10032CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAppleIDAuthenticationContextClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAKAppleIDAuthenticationContextClass_softClass;
  v6 = getAKAppleIDAuthenticationContextClass_softClass;
  if (!getAKAppleIDAuthenticationContextClass_softClass)
  {
    AuthKitLibraryCore();
    v4[3] = objc_getClass("AKAppleIDAuthenticationContext");
    getAKAppleIDAuthenticationContextClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_10032CC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t __copyTokenForActivationLock_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (!a2 || a3)
  {
    v4 = createMobileActivationError("copyTokenForActivationLock_block_invoke", 238, @"com.apple.MobileActivation.ErrorDomain", -1, a3, @"Failed to authenticate.");
    v5 = 32;
  }

  else
  {
    v4 = [a2 copy];
    v5 = 40;
  }

  v6 = *(*(a1 + v5) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v8);
}

void __copy_helper_block_e8_32r40r48r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void __destroy_helper_block_e8_32r40r48r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

id getAKAuthenticationPasswordKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAKAuthenticationPasswordKeySymbolLoc_ptr;
  v7 = getAKAuthenticationPasswordKeySymbolLoc_ptr;
  if (!getAKAuthenticationPasswordKeySymbolLoc_ptr)
  {
    v1 = AuthKitLibrary();
    v5[3] = dlsym(v1, "AKAuthenticationPasswordKey");
    getAKAuthenticationPasswordKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAKAuthenticationPasswordKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_10032CEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAuthenticationUsernameKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAKAuthenticationUsernameKeySymbolLoc_ptr;
  v7 = getAKAuthenticationUsernameKeySymbolLoc_ptr;
  if (!getAKAuthenticationUsernameKeySymbolLoc_ptr)
  {
    v1 = AuthKitLibrary();
    v5[3] = dlsym(v1, "AKAuthenticationUsernameKey");
    getAKAuthenticationUsernameKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAKAuthenticationUsernameKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_10032CFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAKAccountManagerClass_block_invoke(uint64_t a1)
{
  AuthKitLibraryCore();
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAccountManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AuthKitLibraryCore()
{
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AuthKitLibraryCore_frameworkLibrary;
}

uint64_t __AuthKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke(uint64_t a1)
{
  AuthKitLibraryCore();
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAppleIDAuthenticationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAKAppleIDAuthenticationContextClass_block_invoke(uint64_t a1)
{
  AuthKitLibraryCore();
  result = objc_getClass("AKAppleIDAuthenticationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAppleIDAuthenticationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAKAuthenticationPasswordKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary();
  result = dlsym(v2, "AKAuthenticationPasswordKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationPasswordKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AuthKitLibrary()
{
  v1 = 0;
  result = AuthKitLibraryCore();
  if (!result)
  {
    AuthKitLibrary_cold_1(&v1);
  }

  return result;
}

void *__getAKAuthenticationUsernameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary();
  result = dlsym(v2, "AKAuthenticationUsernameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationUsernameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id libavp_send_host_message(void *a1, NSError **a2)
{
  v3 = a1;
  cf[0] = 0;
  if (!is_virtual_machine())
  {
    MobileActivationError = createMobileActivationError("libavp_send_host_message", 60, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).");
LABEL_15:
    v13 = MobileActivationError;
    v14 = 0;
    v11 = 0;
    v6 = 0;
    v12 = 0;
    v4 = 0;
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (!AppleVirtualPlatformLibraryCore())
  {
    MobileActivationError = createMobileActivationError("libavp_send_host_message", 65, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Virtualization library not loaded on this platform.");
    goto LABEL_15;
  }

  if (!v3)
  {
    MobileActivationError = createMobileActivationError("libavp_send_host_message", 70, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid intput.");
    goto LABEL_15;
  }

  v4 = copy_calling_process_name();
  if (!v4)
  {
    v13 = createMobileActivationError("libavp_send_host_message", 76, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve process name.");
    v14 = 0;
    v11 = 0;
    v6 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  v5 = [v3 mutableCopy];
  [v5 setObject:v4 forKeyedSubscript:@"HostProcessName"];
  v21 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:100 options:0 error:&v21];
  v7 = v21;
  if (!v6)
  {
    v13 = createMobileActivationError("libavp_send_host_message", 85, @"com.apple.MobileActivation.ErrorDomain", -1, v7, @"Could not convert dictionary to xml data.");

    v14 = 0;
    v11 = 0;
LABEL_26:
    v12 = 0;
    goto LABEL_17;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v8 = getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr;
  v27 = getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr;
  if (!getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr)
  {
    cf[1] = _NSConcreteStackBlock;
    cf[2] = 3254779904;
    cf[3] = __getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_block_invoke;
    cf[4] = &__block_descriptor_40_e8_32r_e5_v8__0l;
    v23 = &v24;
    v9 = AppleVirtualPlatformLibrary();
    v10 = dlsym(v9, "AppleVirtualPlatformSendSubsystemMessageToHost");
    *(v23[1] + 24) = v10;
    getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr = *(v23[1] + 24);
    v8 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v8)
  {
    libavp_send_host_message_cold_1();
  }

  v11 = v8(6, v6, cf);
  if (!v11)
  {
    v13 = createMobileActivationError("libavp_send_host_message", 91, @"com.apple.MobileActivation.ErrorDomain", -1, cf[0], @"Failed to send message to host.");

    v14 = 0;
    goto LABEL_26;
  }

  v20 = 0;
  v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v20];
  v13 = v20;

  v14 = isNSDictionary(v12);
  if (v14)
  {
    v14 = v12;
    v12 = v14;
  }

  else
  {
    v19 = createMobileActivationError("libavp_send_host_message", 97, @"com.apple.MobileActivation.ErrorDomain", -1, v13, @"Failed to serialize data as dictionary.");

    v13 = v19;
  }

LABEL_17:
  if (a2 && !v14)
  {
    v16 = v13;
    *a2 = v13;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v17 = v14;

  return v14;
}

void sub_10032D764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id libavp_copy_strong_identity_data(void *a1, NSError **a2)
{
  v3 = a1;
  cf = 0;
  if (!is_virtual_machine())
  {
    MobileActivationError = createMobileActivationError("libavp_copy_strong_identity_data", 126, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).");
LABEL_9:
    v11 = MobileActivationError;
    v4 = 0;
    goto LABEL_10;
  }

  if (!AppleVirtualPlatformLibraryCore())
  {
    MobileActivationError = createMobileActivationError("libavp_copy_strong_identity_data", 131, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Virtualization library not loaded on this platform.");
    goto LABEL_9;
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    v6 = isNSNumber(v5);

    if (v6)
    {
      v7 = [v3 objectForKeyedSubscript:@"NetworkTimeoutInterval"];
      [v7 doubleValue];
      if (v8 <= 0.0)
      {
        v9 = createMobileActivationError("libavp_copy_strong_identity_data", 144, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v7);
        goto LABEL_34;
      }
    }

    else
    {
      v7 = 0;
    }

    v14 = [v4 objectForKeyedSubscript:@"SkipNetworkRequest"];
    v15 = isNSNumber(v14);

    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:@"SkipNetworkRequest"];
      v17 = [v16 BOOLValue];
    }

    else
    {
      v17 = 0;
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v18 = getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr;
    v40 = getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr;
    if (!getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr)
    {
      v32 = _NSConcreteStackBlock;
      v33 = 3254779904;
      v34 = __getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_block_invoke;
      v35 = &__block_descriptor_40_e8_32r_e5_v8__0l;
      v36 = &v37;
      v19 = AppleVirtualPlatformLibrary();
      v38[3] = dlsym(v19, "kAppleVirtualPlatformGuestStrongIdentityOptionSynchronous");
      getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr = *(v36[1] + 24);
      v18 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v18)
    {
      libavp_copy_strong_identity_data_cold_4();
    }

    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:*v18];
    v20 = [NSNumber numberWithBool:v17];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v21 = getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr;
    v40 = getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr;
    if (!getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr)
    {
      v32 = _NSConcreteStackBlock;
      v33 = 3254779904;
      v34 = __getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_block_invoke;
      v35 = &__block_descriptor_40_e8_32r_e5_v8__0l;
      v36 = &v37;
      v22 = AppleVirtualPlatformLibrary();
      v38[3] = dlsym(v22, "kAppleVirtualPlatformGuestStrongIdentityOptionCachedOnly");
      getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr = *(v36[1] + 24);
      v21 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v21)
    {
      libavp_copy_strong_identity_data_cold_3();
    }

    [v4 setObject:v20 forKeyedSubscript:*v21];

    if (v7)
    {
      [v7 doubleValue];
      v24 = [NSNumber numberWithDouble:v23 * 1000000000.0];
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v25 = getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr;
      v40 = getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr;
      if (!getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr)
      {
        v32 = _NSConcreteStackBlock;
        v33 = 3254779904;
        v34 = __getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_block_invoke;
        v35 = &__block_descriptor_40_e8_32r_e5_v8__0l;
        v36 = &v37;
        v26 = AppleVirtualPlatformLibrary();
        v38[3] = dlsym(v26, "kAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsec");
        getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr = *(v36[1] + 24);
        v25 = v38[3];
      }

      _Block_object_dispose(&v37, 8);
      if (!v25)
      {
        libavp_copy_strong_identity_data_cold_1();
      }

      [v4 setObject:v24 forKeyedSubscript:*v25];
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v27 = getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr;
    v40 = getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr;
    if (!getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr)
    {
      v32 = _NSConcreteStackBlock;
      v33 = 3254779904;
      v34 = __getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_block_invoke;
      v35 = &__block_descriptor_40_e8_32r_e5_v8__0l;
      v36 = &v37;
      v28 = AppleVirtualPlatformLibrary();
      v38[3] = dlsym(v28, "AppleVirtualPlatformGuestCopyStrongIdentityData");
      getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr = *(v36[1] + 24);
      v27 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v27)
    {
      libavp_copy_strong_identity_data_cold_2();
    }

    v29 = v27(v4, &cf);
    if (v29)
    {
      v13 = v29;
      v11 = 0;
      goto LABEL_36;
    }

    v9 = createMobileActivationError("libavp_copy_strong_identity_data", 162, @"com.apple.MobileActivation.ErrorDomain", -24, cf, @"Failed to copy AVP guest identity data.");
LABEL_34:
    v11 = v9;
    if (!a2)
    {
      goto LABEL_35;
    }

LABEL_11:
    v12 = v11;
    v13 = 0;
    *a2 = v11;
    goto LABEL_36;
  }

  v11 = createMobileActivationError("libavp_copy_strong_identity_data", 137, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
LABEL_10:
  v7 = 0;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_35:
  v13 = 0;
LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void sub_10032DDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *libavp_copy_host_key_and_certs_with_data(void *a1, void *a2, void *a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  v29 = v7;
  if (is_virtual_machine())
  {
    MobileActivationError = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 192, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is a VM (not supported).");
LABEL_17:
    v14 = MobileActivationError;
    v13 = 0;
    v10 = 0;
LABEL_18:
    v18 = 0;
    v7 = 0;
    goto LABEL_19;
  }

  if (!AppleVirtualPlatformLibraryCore())
  {
    MobileActivationError = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 197, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Virtualization library not loaded on this platform.");
    goto LABEL_17;
  }

  if (!v7)
  {
    v14 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 202, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid intput.");
    v13 = 0;
    v10 = 0;
    v18 = 0;
LABEL_19:
    v20 = 0;
    v16 = 0;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v10 = objc_alloc_init(NSMutableData);
  if (!v10)
  {
    v14 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 208, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.");
    v13 = 0;
    goto LABEL_18;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v11 = getAppleVirtualPlatformHostCertificateClass_softClass;
  v35 = getAppleVirtualPlatformHostCertificateClass_softClass;
  if (!getAppleVirtualPlatformHostCertificateClass_softClass)
  {
    v30[1] = _NSConcreteStackBlock;
    v30[2] = 3254779904;
    v30[3] = __getAppleVirtualPlatformHostCertificateClass_block_invoke;
    v30[4] = &__block_descriptor_40_e8_32r_e5_v8__0l;
    v31 = &v32;
    AppleVirtualPlatformLibraryCore();
    v33[3] = objc_getClass("AppleVirtualPlatformHostCertificate");
    getAppleVirtualPlatformHostCertificateClass_softClass = *(v31[1] + 24);
    v11 = v33[3];
  }

  v12 = v11;
  _Block_object_dispose(&v32, 8);
  v30[0] = 0;
  v13 = [[v11 alloc] initWithDataRepresentation:v7 error:v30];
  v14 = v30[0];
  if (!v13)
  {
    v27 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 214, @"com.apple.MobileActivation.ErrorDomain", -1, v14, @"Failed to initialize identity data.");

    v18 = 0;
    v7 = 0;
    v20 = 0;
    v16 = 0;
    goto LABEL_35;
  }

  v15 = [v13 hostKey];
  v16 = v15;
  if (!v15)
  {
    v27 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 220, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy AVP host key.");

    v18 = 0;
    v7 = 0;
LABEL_34:
    v20 = 0;
    goto LABEL_35;
  }

  CFRetain(v15);
  v17 = [v13 leafCertificate];
  v7 = v17;
  if (!v17)
  {
    v27 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 228, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy AVP host leaf certificate.");

    v18 = 0;
    goto LABEL_34;
  }

  CFRetain(v17);
  v18 = SecCertificateCopyData(v7);
  if (!v18)
  {
    v27 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 236, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create PEM data from cert.");

    goto LABEL_34;
  }

  [v10 appendData:v18];
  v19 = [v13 intermediateCertificate];
  v20 = v19;
  if (v19)
  {
    CFRetain(v19);
    v21 = SecCertificateCopyData(v20);
    v22 = v18;
    v18 = v21;

    if (v18)
    {
      [v10 appendData:v18];
      if (a3)
      {
        v23 = v10;
        *a3 = v10;
      }

      goto LABEL_24;
    }

    v28 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 252, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create PEM data from cert.");
  }

  else
  {
    v28 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 244, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy AVP host intermediate certificate.");
  }

  v27 = v28;

LABEL_35:
  v14 = v27;
  if (a4)
  {
LABEL_20:
    v24 = v14;
    *a4 = v14;
  }

LABEL_21:
  if (v16)
  {
    CFRelease(v16);
  }

  v16 = 0;
  v25 = 0;
  if (v7)
  {
LABEL_24:
    CFRelease(v7);
    v25 = v16;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v25;
}

void sub_10032E308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t libavp_guest_has_host_key(NSError **a1)
{
  if (!is_virtual_machine())
  {
    MobileActivationError = createMobileActivationError("libavp_guest_has_host_key", 285, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).");
    goto LABEL_10;
  }

  if (!AppleVirtualPlatformLibraryCore())
  {
    MobileActivationError = createMobileActivationError("libavp_guest_has_host_key", 290, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Virtualization library not loaded on this platform.");
LABEL_10:
    v5 = MobileActivationError;
    v4 = 0;
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr;
  v11 = getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr;
  if (!getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr)
  {
    v3 = AppleVirtualPlatformLibrary();
    v9[3] = dlsym(v3, "AppleVirtualPlatformGuestHasHostKey");
    getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    libavp_guest_has_host_key_cold_1();
  }

  v4 = v2();
  v5 = 0;
  if (a1)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      v5 = v5;
      *a1 = v5;
    }
  }

LABEL_13:

  return v4;
}

void sub_10032E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AppleVirtualPlatformLibraryCore()
{
  if (!AppleVirtualPlatformLibraryCore_frameworkLibrary)
  {
    AppleVirtualPlatformLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AppleVirtualPlatformLibraryCore_frameworkLibrary;
}

uint64_t __AppleVirtualPlatformLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleVirtualPlatformLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "AppleVirtualPlatformSendSubsystemMessageToHost");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleVirtualPlatformLibrary()
{
  v1 = 0;
  result = AppleVirtualPlatformLibraryCore();
  if (!result)
  {
    AppleVirtualPlatformLibrary_cold_1(&v1);
  }

  return result;
}

void *__getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "kAppleVirtualPlatformGuestStrongIdentityOptionSynchronous");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "kAppleVirtualPlatformGuestStrongIdentityOptionCachedOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "kAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsec");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "AppleVirtualPlatformGuestCopyStrongIdentityData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAppleVirtualPlatformHostCertificateClass_block_invoke(uint64_t a1)
{
  AppleVirtualPlatformLibraryCore();
  result = objc_getClass("AppleVirtualPlatformHostCertificate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAppleVirtualPlatformHostCertificateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAppleVirtualPlatformGuestHasHostKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "AppleVirtualPlatformGuestHasHostKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10032F984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 200), 8);
  _Block_object_dispose((v40 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __copy_helper_block_e8_32s40s48s56r64r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v7 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v7, 8);
}

void __destroy_helper_block_e8_32s40s48s56r64r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);

  v2 = *(a1 + 32);
}

void sub_10033009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100331E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 240), 8);
  _Block_object_dispose((v45 - 208), 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32s40s48r56r64r72r80r88r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  v6 = *(a2 + 88);

  _Block_object_assign((a1 + 88), v6, 8);
}

void __destroy_helper_block_e8_32s40s48r56r64r72r80r88r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56s64b72r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  _Block_object_assign((a1 + 64), *(a2 + 64), 7);
  v8 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v8, 8);
}

void sub_100332C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32s40s48r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v6, 8);
}

void __copy_helper_block_e8_32s40s48b56r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  _Block_object_assign((a1 + 48), *(a2 + 48), 7);
  v6 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v6, 8);
}

void sub_100336CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32s40b48r56r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  _Block_object_assign((a1 + 40), *(a2 + 40), 7);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v5 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v5, 8);
}

void __destroy_helper_block_e8_32s40s48r56r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56b64r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  _Block_object_assign((a1 + 56), *(a2 + 56), 7);
  v7 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v7, 8);
}

void sub_10033938C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32s40s48r56r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v6 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v6, 8);
}

void __copy_helper_block_e8_32s40s48s56s64s72s80s88b96r104r(uint64_t a1, uint64_t a2)
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
  v11 = *(a2 + 104);

  _Block_object_assign((a1 + 104), v11, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96r104r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);

  v2 = *(a1 + 32);
}

void sub_10033D838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id create_eligibility_input_for_country(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = region_code_compat_for_country(v1);
  *__str = 0;
  v9 = 0;
  if (v2 && *(v2 + 8) == 1)
  {
    v3 = v2[2];
    v4 = *(v2 + 6);
  }

  else
  {
    v4 = 0;
    v3 = "??/?";
  }

  empty = xpc_dictionary_create_empty();
  v6 = empty;
  if (empty)
  {
    xpc_dictionary_set_string(empty, "OS_ELIGIBILITY_INPUT_SHIPTO_LOCATION_KEY_COUNTRY_CODE", v1);
    xpc_dictionary_set_string(v6, "OS_ELIGIBILITY_INPUT_SHIPTO_LOCATION_KEY_LEGACY_REGION_INFO", v3);
    snprintf(__str, 0x10uLL, "0x%x", v4);
    xpc_dictionary_set_string(v6, "OS_ELIGIBILITY_INPUT_SHIPTO_LOCATION_KEY_LEGACY_SOFTWARE_BEHAVIORS", __str);
  }

  return v6;
}

char **region_code_compat_for_country(char **__s1)
{
  if (__s1)
  {
    v1 = __s1;
    for (i = 0; strcmp(v1, (&COUNTRY_TO_REGION)[i / 8]); i += 32)
    {
      if (i > 0x7F)
      {
        return 0;
      }
    }

    return &(&COUNTRY_TO_REGION)[i / 8];
  }

  return __s1;
}

NSDictionary *create_region_data_for_gestalt(void *a1, NSError **a2)
{
  *__str = 0;
  v22 = 0;
  v3 = [a1 objectForKeyedSubscript:@"ManufacturingData"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"CountryCode"];
    v6 = v5;
    if (v5)
    {
      v7 = region_code_compat_for_country([v5 UTF8String]);
      if (v7 && (v8 = v7, (v7[1] & 1) != 0))
      {
        snprintf(__str, 0x10uLL, "0x%x", *(v7 + 6));
        v9 = objc_opt_new();
        if (v9)
        {
          v10 = v9;
          v20[0] = v6;
          v19[0] = @"RegionDataForGestaltCountryCode";
          v19[1] = @"RegionDataForGestaltRegionInfo";
          v11 = [NSString stringWithUTF8String:v8[2]];
          v20[1] = v11;
          v19[2] = @"RegionDataForGestaltSotwareBehaviors";
          v12 = [NSString stringWithUTF8String:__str];
          v20[2] = v12;
          v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

          v14 = 0;
          if (!a2)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        MobileActivationError = createMobileActivationError("create_region_data_for_gestalt", 129, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary", v18);
      }

      else
      {
        MobileActivationError = createMobileActivationError("create_region_data_for_gestalt", 121, @"com.apple.MobileActivation.ErrorDomain", -30, 0, @"Failed to create region code mapping for %@", v6);
      }
    }

    else
    {
      MobileActivationError = createMobileActivationError("create_region_data_for_gestalt", 115, @"com.apple.MobileActivation.ErrorDomain", -29, 0, @"Manufacturing data is missing expected key: %@", @"CountryCode");
    }

    v14 = MobileActivationError;
  }

  else
  {
    v14 = createMobileActivationError("create_region_data_for_gestalt", 109, @"com.apple.MobileActivation.ErrorDomain", -28, 0, @"Activation record is missing expected key: %@", @"ManufacturingData");
    v6 = 0;
  }

  v13 = 0;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (!v13)
  {
    v16 = v14;
    *a2 = v14;
  }

LABEL_15:

  return v13;
}

uint64_t set_eligibility_input_for_country(void *a1, NSError **a2)
{
  v3 = create_eligibility_input_for_country(a1);
  if (v3)
  {
    v4 = os_eligibility_set_input();
    if (!v4)
    {
      v7 = 0;
      v8 = 1;
      goto LABEL_9;
    }

    v5 = v4;
    v10 = strerror(v4);
    MobileActivationError = createMobileActivationError("set_eligibility_input_for_country", 166, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to set eligibility input: %d (%s)", v5, v10);
  }

  else
  {
    MobileActivationError = createMobileActivationError("set_eligibility_input_for_country", 160, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create eligibility input.");
  }

  v7 = MobileActivationError;
  if (a2)
  {
    v7 = v7;
    v8 = 0;
    *a2 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:

  return v8;
}

uint64_t set_eligibility_input(void *a1, NSError **a2)
{
  v3 = [a1 objectForKeyedSubscript:@"ManufacturingData"];
  v4 = [v3 objectForKeyedSubscript:@"CountryCode"];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v12 = 0;
  v6 = set_eligibility_input_for_country(v4, &v12);
  v7 = v12;
  if (v6)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_9;
  }

  v8 = createMobileActivationError("set_eligibility_input", 190, @"com.apple.MobileActivation.ErrorDomain", -1, v7, @"Failed to set eligibility input.");

  if (a2)
  {
    v9 = v8;
    v10 = 0;
    *a2 = v8;
  }

  else
  {
    v10 = 0;
  }

  v7 = v8;
LABEL_9:

  return v10;
}

id copySignpostLoggingHandle()
{
  if (copySignpostLoggingHandle_onceToken != -1)
  {
    copySignpostLoggingHandle_cold_1();
  }

  v1 = copySignpostLoggingHandle_logHandle;

  return v1;
}

void __copySignpostLoggingHandle_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.mobileactivationd", "analytics");
  v2 = copySignpostLoggingHandle_logHandle;
  copySignpostLoggingHandle_logHandle = v1;
}

uint64_t libaks_ref_key_create(int a1, unsigned int a2, NSError **a3)
{
  v12 = 0;
  if (a1 == 13)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  v7 = aks_ref_key_create(v6, a1, a2, 0, 0, &v12);
  if (!v7)
  {
    v8 = 0;
    v9 = v12;
    v12 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v8 = createMobileActivationError("libaks_ref_key_create", 31, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create ref key: 0x%08x", v7);
  if (v12)
  {
    aks_ref_key_free(&v12);
  }

  v9 = 0;
  if (a3)
  {
LABEL_10:
    if (!v9)
    {
      v10 = v8;
      *a3 = v8;
    }
  }

LABEL_12:

  return v9;
}

uint64_t libaks_ref_key_create_with_blob(void *a1, NSError **a2)
{
  v3 = a1;
  v4 = v3;
  v10 = 0;
  if (!v3)
  {
    v6 = createMobileActivationError("libaks_ref_key_create_with_blob", 60, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
LABEL_5:
    v7 = 0;
    if (!a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v3 bytes];
  [v4 length];
  v5 = aks_ref_key_create_with_blob();
  if (v5)
  {
    v6 = createMobileActivationError("libaks_ref_key_create_with_blob", 66, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create ref key from data: 0x%08x", v5);
    goto LABEL_5;
  }

  v6 = 0;
  v7 = v10;
  v10 = 0;
  if (a2)
  {
LABEL_8:
    v8 = v6;
    *a2 = v6;
  }

LABEL_9:

  return v7;
}

id libaks_ref_key_get_public(void *a1, NSError **a2)
{
  v15 = 0;
  if (a1)
  {
    public_key = aks_ref_key_get_public_key(a1, &v15);
    if (!public_key)
    {
      MobileActivationError = createMobileActivationError("libaks_ref_key_get_public", 102, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query public key.");
      goto LABEL_9;
    }

    v4 = public_key;
    v5 = [NSData alloc];
    v6 = [v5 initWithBytes:v4 length:v15];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      goto LABEL_12;
    }

    v9 = @"Failed to create data.";
    v10 = 108;
  }

  else
  {
    v9 = @"Invalid input(s).";
    v10 = 96;
  }

  MobileActivationError = createMobileActivationError("libaks_ref_key_get_public", v10, @"com.apple.MobileActivation.ErrorDomain", -2, 0, v9);
LABEL_9:
  v12 = MobileActivationError;
  v8 = v12;
  if (a2)
  {
    v13 = v12;
    v7 = 0;
    *a2 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_12:

  return v7;
}

id libaks_system_key_collection(uint64_t a1, uint64_t a2, unsigned int a3, id a4, NSError **a5)
{
  v9 = a4;
  v12 = v9;
  v39[0] = a3;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  if (a3 <= 0x7F && (a1 - 16) >= 0xFFFFFFF1 && (a2 - 4) > 0xFFFFFFFC)
  {
    if (a3 || v9)
    {
      v21 = aks_params_create(0);
      v13 = v21;
      v38 = v21;
      if (!v21)
      {
        v23 = @"Failed to create aks params.";
        v24 = 219;
        goto LABEL_24;
      }

      if (a3)
      {
        v22 = aks_params_set_number(v21, 18, v39);
        if (v22)
        {
          v30 = v22;
          v23 = @"Failed to set aks data: 0x%08x";
          v24 = 226;
          goto LABEL_24;
        }
      }

      if (v12)
      {
        [v12 bytes];
        [v12 length];
        aks_params_set_data();
        if (v27)
        {
          v30 = v27;
          v23 = @"Failed to set aks data: 0x%08x";
          v24 = 234;
          goto LABEL_24;
        }
      }

      der = aks_params_get_der(v13, &v37, &v36);
      if (der)
      {
        v30 = der;
        v23 = @"Failed to get DER encoded aks params: 0x%08x";
        v24 = 241;
        goto LABEL_24;
      }

      v14 = v36;
      v15 = v37;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    v16 = aks_system_key_collection(a1, a2, v15, v14, &v35, &v34, v10, v11, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6]);
    if (v16)
    {
      MobileActivationError = createMobileActivationError("libaks_system_key_collection", 248, @"com.apple.MobileActivation.ErrorDomain", -11, 0, @"Failed to perform system key (%d / %d) collection (options=%lld): 0x%08x", a1, a2, v39[0], v16);
      goto LABEL_25;
    }

    v25 = [NSData alloc];
    v26 = [v25 initWithBytesNoCopy:v35 length:v34];
    if (v26)
    {
      v35 = 0;
      v20 = v26;
      v18 = 0;
      goto LABEL_27;
    }

    v23 = @"Failed to create data.";
    v24 = 254;
LABEL_24:
    MobileActivationError = createMobileActivationError("libaks_system_key_collection", v24, @"com.apple.MobileActivation.ErrorDomain", -1, 0, v23, v30, v31, v32, v33);
LABEL_25:
    v18 = MobileActivationError;
    if (!a5)
    {
      goto LABEL_26;
    }

LABEL_10:
    v19 = v18;
    v20 = 0;
    *a5 = v18;
    goto LABEL_27;
  }

  v18 = createMobileActivationError("libaks_system_key_collection", 212, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  v13 = 0;
  if (a5)
  {
    goto LABEL_10;
  }

LABEL_26:
  v20 = 0;
LABEL_27:
  if (v13)
  {
    aks_params_free(&v38);
  }

  if (v35)
  {
    free(v35);
  }

  v35 = 0;
  if (v37)
  {
    free(v37);
  }

  v37 = 0;

  return v20;
}

uint64_t isRunningInDiagnosticsMode()
{
  if (isRunningInDiagnosticsMode_onceToken != -1)
  {
    isRunningInDiagnosticsMode_cold_1();
  }

  return isRunningInDiagnosticsMode_retval;
}

void __isRunningInDiagnosticsMode_block_invoke(id a1)
{
  v1 = MGCopyAnswer();
  v2 = isNSNumber(v1);

  if (v2)
  {
    isRunningInDiagnosticsMode_retval = [v1 BOOLValue];
  }
}

uint64_t isSupportedDeviceIdentityClient(uint64_t a1, NSError **a2)
{
  if (isSupportedDeviceIdentityClient_onceToken != -1)
  {
    isSupportedDeviceIdentityClient_cold_1();
  }

  v3 = copy_process_name();
  if (!v3)
  {
    v7 = createMobileActivationError("isSupportedDeviceIdentityClient", 305, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query process name.");
    v6 = 0;
    if (a2)
    {
LABEL_12:
      v9 = v7;
      v8 = 0;
      *a2 = v7;
      goto LABEL_15;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v4 = is_virtual_machine();
  v5 = &isSupportedDeviceIdentityClient_virtualDeviceSupportedList;
  if (!v4)
  {
    v5 = &isSupportedDeviceIdentityClient_physicalDeviceSupportedList;
  }

  v6 = *v5;
  if (([v6 containsObject:v3] & 1) == 0)
  {
    v7 = createMobileActivationError("isSupportedDeviceIdentityClient", 312, @"com.apple.MobileActivation.ErrorDomain", -25, 0, @"%@ is not allowed to use this API. File a radar with 'MobileActivation | all' for support.", v3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      isSupportedDeviceIdentityClient_cold_2(v7);
      if (a2)
      {
        goto LABEL_12;
      }
    }

    else if (a2)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v8 = 1;
LABEL_15:

  return v8;
}

void __isSupportedDeviceIdentityClient_block_invoke(id a1)
{
  v1 = isSupportedDeviceIdentityClient_virtualDeviceSupportedList;
  isSupportedDeviceIdentityClient_virtualDeviceSupportedList = &off_1003FC350;

  v2 = isSupportedDeviceIdentityClient_physicalDeviceSupportedList;
  isSupportedDeviceIdentityClient_physicalDeviceSupportedList = &off_1003FC368;
}

id isSupportedRecoveryLogClient(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (isSupportedRecoveryLogClient_onceToken != -1)
  {
    isSupportedRecoveryLogClient_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [isSupportedRecoveryLogClient_supportedList containsObject:v2];
LABEL_6:

  return v3;
}

void __isSupportedRecoveryLogClient_block_invoke(id a1)
{
  v1 = isSupportedRecoveryLogClient_supportedList;
  isSupportedRecoveryLogClient_supportedList = &off_1003FC380;
}

uint64_t isSupportedActivationLockClient(uint64_t a1, NSError **a2)
{
  if (isSupportedActivationLockClient_onceToken != -1)
  {
    isSupportedActivationLockClient_cold_1();
  }

  v3 = copy_process_name();
  if (!v3)
  {
    v4 = createMobileActivationError("isSupportedActivationLockClient", 382, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query process name.");
    if (a2)
    {
LABEL_10:
      v6 = v4;
      v5 = 0;
      *a2 = v4;
      goto LABEL_13;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  if (([isSupportedActivationLockClient_supportedList containsObject:v3] & 1) == 0)
  {
    v4 = createMobileActivationError("isSupportedActivationLockClient", 387, @"com.apple.MobileActivation.ErrorDomain", -25, 0, @"%@ is not allowed to use this API. File a radar with 'MobileActivation | all' for support.", v3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      isSupportedDeviceIdentityClient_cold_2(v4);
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else if (a2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v4 = 0;
  v5 = 1;
LABEL_13:

  return v5;
}

void __isSupportedActivationLockClient_block_invoke(id a1)
{
  v1 = isSupportedActivationLockClient_supportedList;
  isSupportedActivationLockClient_supportedList = &off_1003FC398;
}

NSArray *copy_sorted_file_list(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [NSURL URLWithString:v1];

  v4 = [NSArray arrayWithObject:NSURLCreationDateKey];
  v5 = [(NSFileManager *)v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v4 options:4 error:0];

  if (v5 && [(NSArray *)v5 count])
  {
    v6 = [(NSArray *)v5 sortedArrayUsingComparator:&__block_literal_global_429];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

int64_t __copy_sorted_file_list_block_invoke(id a1, id a2, id a3)
{
  v4 = a3;
  v15 = 0;
  v5 = [a2 getResourceValue:&v15 forKey:NSURLCreationDateKey error:0];
  v6 = v15;
  if (v5)
  {
    v14 = 0;
    v7 = [v4 getResourceValue:&v14 forKey:NSURLCreationDateKey error:0];
    v8 = v14;
    if (v7)
    {
      [v6 timeIntervalSince1970];
      v10 = v9;
      [v8 timeIntervalSince1970];
      if (v10 < v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

  return v12;
}

id isNSDictionary(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSArray(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSData(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSURL(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSDate(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id dictionary_to_xml(uint64_t a1)
{
  v1 = [NSPropertyListSerialization dataWithPropertyList:a1 format:100 options:0 error:0];
  if (v1)
  {
    v2 = [[NSString alloc] initWithData:v1 encoding:4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t store_data(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5 || !v6)
  {
    MobileActivationError = createMobileActivationError("store_data", 542, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    goto LABEL_11;
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [(NSFileManager *)v8 fileExistsAtPath:v5];

  v10 = open_dprotected_np([v5 fileSystemRepresentation], 1794, 4, 0);
  if (v10 == -1)
  {
    v18 = __error();
    v24 = strerror(*v18);
    MobileActivationError = createMobileActivationError("store_data", 551, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create %@: %s", v5, v24);
LABEL_11:
    v16 = MobileActivationError;
    v11 = -1;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v10;
  if ((v9 & 1) != 0 || !chmod([v5 fileSystemRepresentation], 0x1B6u))
  {
    v15 = write(v11, [v7 bytes], objc_msgSend(v7, "length"));
    if (v15 == [v7 length])
    {
      v16 = 0;
      v17 = 1;
LABEL_14:
      close(v11);
      v20 = v17;
      goto LABEL_15;
    }

    v22 = __error();
    v25 = strerror(*v22);
    v13 = createMobileActivationError("store_data", 564, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to write data to %@: %s", v5, v25);
  }

  else
  {
    v12 = __error();
    v23 = strerror(*v12);
    v13 = createMobileActivationError("store_data", 558, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update file permissions for %@: %s", v5, v23);
  }

  v16 = v13;
  if (a3)
  {
LABEL_12:
    v19 = v16;
    *a3 = v16;
  }

LABEL_13:
  v17 = 0;
  v20 = 0;
  if (v11 != -1)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v20;
}

uint64_t store_dict(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5 || !v6)
  {
    v9 = createMobileActivationError("store_dict", 593, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v8 = 0;
    v13 = -1;
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v28 = 0;
  v8 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v28];
  v9 = v28;
  if (!v8)
  {
    MobileActivationError = createMobileActivationError("store_dict", 601, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to serialize dictionary.");
LABEL_17:
    v23 = MobileActivationError;

    v13 = -1;
    goto LABEL_20;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [(NSFileManager *)v10 fileExistsAtPath:v5];

  v12 = open_dprotected_np([v5 fileSystemRepresentation], 1794, 4, 0);
  if (v12 == -1)
  {
    v22 = __error();
    v26 = strerror(*v22);
    MobileActivationError = createMobileActivationError("store_dict", 610, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create %@: %s", v5, v26);
    goto LABEL_17;
  }

  v13 = v12;
  if ((v11 & 1) != 0 || !chmod([v5 fileSystemRepresentation], 0x1B6u))
  {
    v21 = write(v13, [(NSData *)v8 bytes], [(NSData *)v8 length]);
    if (v21 == [(NSData *)v8 length])
    {
      v17 = 1;
      goto LABEL_11;
    }

    v24 = __error();
    v27 = strerror(*v24);
    v15 = createMobileActivationError("store_dict", 623, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to write data to %@: %s", v5, v27);
  }

  else
  {
    v14 = __error();
    v25 = strerror(*v14);
    v15 = createMobileActivationError("store_dict", 617, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to update file permissions for %@: %s", v5, v25);
  }

  v23 = v15;

LABEL_20:
  v9 = v23;
  if (a3)
  {
LABEL_9:
    v16 = v9;
    *a3 = v9;
  }

LABEL_10:
  v17 = 0;
  v18 = 0;
  if (v13 != -1)
  {
LABEL_11:
    close(v13);
    v18 = v17;
  }

  return v18;
}

NSMutableDictionary *load_dict(NSMutableDictionary *a1)
{
  if (a1)
  {
    a1 = [NSMutableDictionary dictionaryWithContentsOfFile:a1];
    v1 = vars8;
  }

  return a1;
}

id copy_process_name()
{
  v0 = __chkstk_darwin();
  bzero(buffer, 0x1000uLL);
  memset(v8, 0, sizeof(v8));
  if (v0 && (v1 = +[NSXPCConnection currentConnection]) != 0)
  {
    v2 = v1;
    v3 = [(NSXPCConnection *)v1 processIdentifier];
  }

  else
  {
    v3 = getpid();
  }

  proc_pidpath(v3, buffer, 0x1000u);
  v4 = strlen(buffer);
  if ((v4 & 0x80000000) == 0)
  {
    do
    {
      if (buffer[v4] == 47)
      {
        break;
      }
    }

    while (v4-- > 0);
  }

  __strlcpy_chk();
  v6 = [[NSString alloc] initWithFormat:@"%s", v8];

  return v6;
}

NSInteger numberOfDaysBetweenDates(void *a1, id a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (a1 && v3)
  {
    v9 = a1;
    v7 = +[NSCalendar currentCalendar];
    v16 = 0;
    v10 = [(NSCalendar *)v7 rangeOfUnit:16 startDate:&v16 interval:0 forDate:v9];

    v5 = v16;
    if (v10)
    {
      v15 = 0;
      v11 = [(NSCalendar *)v7 rangeOfUnit:16 startDate:&v15 interval:0 forDate:v4];
      v6 = v15;
      if (v11)
      {
        v12 = [(NSCalendar *)v7 components:16 fromDate:v5 toDate:v6 options:0];
        if (v12)
        {
          v13 = v12;
          v8 = [(NSDateComponents *)v12 day];

          goto LABEL_9;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
  }

LABEL_9:

  return v8;
}

NSMutableString *formatURLRequest(void *a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithString:@"\n---------REQUEST START---------\n"];
  v3 = [v1 URL];
  v4 = [v3 description];
  [(NSMutableString *)v2 appendFormat:@"URL: %@\n", v4];

  v5 = [v1 HTTPMethod];
  [(NSMutableString *)v2 appendFormat:@"METHOD: %@\n", v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v1 allHTTPHeaderFields];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v1 valueForHTTPHeaderField:v11];
        [(NSMutableString *)v2 appendFormat:@"%@: %@\n", v11, v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = [NSString alloc];
  v14 = [v1 HTTPBody];
  v15 = [v13 initWithData:v14 encoding:4];
  [(NSMutableString *)v2 appendFormat:@"BODY: \n%@\n", v15];

  [(NSMutableString *)v2 appendString:@"----------REQUEST END----------\n"];

  return v2;
}

NSMutableString *formatURLResponse(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [NSMutableString stringWithString:@"\n---------RESPONSE START---------\n"];
  v8 = [NSHTTPURLResponse localizedStringForStatusCode:a2];
  [(NSMutableString *)v7 appendFormat:@"HTTP Status Code: %ld (%s)\n", a2, [(NSString *)v8 UTF8String]];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        [(NSMutableString *)v7 appendFormat:@"%@: %@\n", v14, v15, v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [[NSString alloc] initWithData:v5 encoding:4];
  [(NSMutableString *)v7 appendFormat:@"BODY: \n%@\n", v16];

  [(NSMutableString *)v7 appendString:@"----------RESPONSE END----------\n"];

  return v7;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  memset(&v127, 0, sizeof(v127));
  v126 = 0;
  bzero(v135, 0x400uLL);
  v4 = os_transaction_create();
  [NSError _setFileNameLocalizationEnabled:0];
  if (setiopolicy_np(9, 0, 1))
  {
    main_cold_1();
  }

  [@"com.apple.mobileactivationd" UTF8String];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    main_cold_2();
  }

  signal(30, 1);
  v5 = copy_system_container_path();
  v6 = copy_group_container_path([@"systemgroup.com.apple.regulatory_images" UTF8String]);
  v7 = copy_group_container_path([@"systemgroup.com.apple.pisco.suinfo" UTF8String]);
  v8 = copy_group_container_path([@"systemgroup.com.apple.mobileactivationd" UTF8String]);
  if (!v5 || !v6 || !v7 || !v8)
  {
    main_cold_3();
  }

  v110 = v4;
  context = v3;
  v112 = v6;
  v113 = v5;
  v134[0] = v5;
  v134[1] = v6;
  v108 = v8;
  v109 = v7;
  v134[2] = v7;
  v134[3] = v8;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = [NSArray arrayWithObjects:v134 count:4];
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v122 objects:v133 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v123;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        v16 = v13;
        if (*v123 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [NSURL fileURLWithPath:*(*(&v122 + 1) + 8 * i)];

        v120 = 0;
        v121 = 0;
        v18 = [(NSURL *)v17 getResourceValue:&v121 forKey:NSURLIsExcludedFromBackupKey error:&v120];
        v13 = v121;

        v19 = v120;
        if ((v18 & 1) == 0)
        {
          main_cold_4(v19);
        }

        v11 = v17;
        v20 = isNSNumber(v13);
        if (v20 && (v21 = v20, v22 = [v13 BOOLValue], v21, (v22 & 1) != 0))
        {
          v12 = v19;
        }

        else
        {
          v119 = v19;
          v23 = [(NSURL *)v11 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v119];
          v12 = v119;

          if ((v23 & 1) == 0)
          {
            main_cold_5(v12);
          }
        }
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v122 objects:v133 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v107 = v13;

  v24 = getuid();
  if (getpwuid_r(v24, &v127, v135, 0x400uLL, &v126) || !v126)
  {
    main_cold_6();
  }

  maLog("main", 0, @"____________________ Mobile Activation Startup _____________________");
  v25 = +[GestaltHlpr getSharedInstance];
  v26 = [v25 copyAnswer:@"BuildVersion"];
  maLog("main", 0, @"build_version: %@", v26);

  if (is_internal_build())
  {
    v27 = "true";
  }

  else
  {
    v27 = "false";
  }

  maLog("main", 0, @"internal_build: %s", v27);
  maLog("main", 0, @"uid: %d", v126->pw_uid);
  maLog("main", 0, @"user_name: %s", v126->pw_name);
  maLog("main", 0, @"system_container_path: %@", v113);
  maLog("main", 0, @"regulatory_images_path: %@", v112);
  v28 = +[GestaltHlpr getSharedInstance];
  v29 = [v28 copyAnswer:@"HWModelStr"];
  maLog("main", 0, @"hardware_model: %@", v29);

  v30 = get_device_type();
  maLog("main", 0, @"product_type: %@", v30);

  v31 = get_device_class();
  maLog("main", 0, @"device_class: %@", v31);

  if (is_product_cellular())
  {
    v32 = "true";
  }

  else
  {
    v32 = "false";
  }

  maLog("main", 0, @"has_baseband: %s", v32);
  if (use_hactivation())
  {
    v33 = "true";
  }

  else
  {
    v33 = "false";
  }

  maLog("main", 0, @"should_hactivate: %s", v33);
  if (is_product_fpga())
  {
    v34 = "true";
  }

  else
  {
    v34 = "false";
  }

  maLog("main", 0, @"is_fpga: %s", v34);
  if (is_devfused_undemoted())
  {
    v35 = "true";
  }

  else
  {
    v35 = "false";
  }

  maLog("main", 0, @"is_devfused_undemoted: %s", v35);
  if (is_prodfused_demoted())
  {
    v36 = "true";
  }

  else
  {
    v36 = "false";
  }

  maLog("main", 0, @"is_prodfused_demoted: %s", v36);
  v37 = copy_soc_generation();
  maLog("main", 0, @"soc_generation: %@", v37);

  maLog("main", 0, @"____________________________________________________________________");
  v38 = copyMobileActivationSerialQueue();
  if (!v38)
  {
    main_cold_13();
  }

  v39 = v38;
  v40 = [DataArk alloc];
  v41 = copy_data_ark_directory_path();
  v42 = [(DataArk *)v40 initWithPath:v41];

  if (!v42)
  {
    main_cold_12();
  }

  v43 = v42;
  v105 = v39;
  if (!is_internal_build())
  {
    v63 = 0;
    v106 = 0;
    v62 = 0;
    goto LABEL_78;
  }

  v44 = [NSUserDefaults alloc];
  v45 = [v44 persistentDomainForName:@"com.apple.mobileactivationd"];

  v46 = [v45 objectForKey:@"DeleteExistingUCRT"];
  v47 = isNSNumber(v46);

  if (v47)
  {
    v48 = [v45 objectForKey:@"DeleteExistingUCRT"];
    v49 = [v48 BOOLValue];

    if (v49)
    {
      maLog("perform_boot_initialization_tasks", 0, @"OVERRIDE: Deleting existing UCRT (OOB)");
      deleteUCRT(v43, 0);
      data_ark_remove(v43, 0, @"UCRTOOBForbidden");
    }
  }

  v50 = [v45 objectForKey:@"UCRTHealingRequired"];
  v51 = isNSNumber(v50);

  if (v51)
  {
    v52 = [v45 objectForKey:@"UCRTHealingRequired"];
    v53 = [v52 BOOLValue];

    if (v53)
    {
      maLog("perform_boot_initialization_tasks", 0, @"OVERRIDE: Deleting existing UCRT (Healing)");
      deleteUCRT(v43, 0);
      data_ark_remove(v43, 0, @"UCRTOOBForbidden");
      data_ark_set(v43, 0, @"UCRTHealingRequired", &__kCFBooleanTrue, 1);
    }
  }

  v54 = [v45 objectForKey:@"DeleteExistingDCRT"];
  v55 = isNSNumber(v54);

  if (v55 && (v56 = [v45 objectForKey:@"DeleteExistingDCRT"], v57 = objc_msgSend(v56, "BOOLValue"), v56, v57))
  {
    maLog("perform_boot_initialization_tasks", 0, @"OVERRIDE: Deleting existing DCRT");
    deleteDCRT(v43, 0, 0);
    data_ark_remove(v43, 0, @"DCRTOOBForbidden");
    v132 = 0;
    v58 = libaks_system_key_operate(9, 1, &v132);
    v59 = v132;
    v60 = v59;
    if ((v58 & 1) == 0 && (mobileactivationErrorHasDomainAndErrorCode(v59, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFDLL) & 1) == 0)
    {
      maLog("perform_boot_initialization_tasks", 0, @"Failed to bump DAK: %@", v60);
    }

    v131 = v60;
    v61 = libaks_system_key_operate(9, 2, &v131);
    v62 = v131;

    if ((v61 & 1) == 0 && (mobileactivationErrorHasDomainAndErrorCode(v62, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFDLL) & 1) == 0)
    {
      maLog("perform_boot_initialization_tasks", 0, @"Failed to commit DAK: %@", v62);
    }
  }

  else
  {
    v62 = 0;
  }

  v64 = [v45 objectForKey:@"DeleteExistingSDCRT"];
  v65 = isNSNumber(v64);

  if (v65)
  {
    v66 = [v45 objectForKey:@"DeleteExistingSDCRT"];
    v67 = [v66 BOOLValue];

    if (v67)
    {
      maLog("perform_boot_initialization_tasks", 0, @"OVERRIDE: Deleting existing SDCRT");
      v141 = @"sdcrtAttestation";
      v142 = &__kCFBooleanTrue;
      v68 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      deleteDCRT(v43, v68, 0);

      data_ark_remove(v43, 0, @"SDCRTOOBForbidden");
      v130 = v62;
      v69 = libaks_system_key_operate(10, 1, &v130);
      v70 = v130;

      if ((v69 & 1) == 0 && (mobileactivationErrorHasDomainAndErrorCode(v70, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFDLL) & 1) == 0)
      {
        v71 = copyLoggingHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v70;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Failed to bump SDAK: %@", &buf, 0xCu);
        }
      }

      v129 = v70;
      v72 = libaks_system_key_operate(10, 2, &v129);
      v62 = v129;

      if ((v72 & 1) == 0 && (mobileactivationErrorHasDomainAndErrorCode(v62, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFDLL) & 1) == 0)
      {
        maLog("perform_boot_initialization_tasks", 0, @"Failed to commit SDAK: %@", v62);
      }
    }
  }

  v73 = [v45 objectForKey:@"DeleteExistingPCRT"];
  v74 = v45;
  v75 = isNSNumber(v73);

  if (v75)
  {
    v76 = v74;
    v77 = [v74 objectForKey:@"DeleteExistingPCRT"];
    v78 = [v77 BOOLValue];

    if (v78)
    {
      maLog("perform_boot_initialization_tasks", 0, @"OVERRIDE: Deleting existing PCRT");
      v79 = copy_suinfo_directory_path();
      v80 = [v79 stringByAppendingPathComponent:@"psc.sui"];

      if (v80)
      {
        v81 = +[NSFileManager defaultManager];
        [(NSFileManager *)v81 removeItemAtPath:v80 error:0];
      }

      v106 = v80;
      data_ark_remove(v43, 0, @"PCRTToken");
      data_ark_remove(v43, 0, @"CollectionLastPerformed");
      data_ark_remove(v43, 0, @"PCRTCollectionString");
      data_ark_remove(v43, 0, @"PCRTCollectionStringBuild");
      goto LABEL_77;
    }
  }

  else
  {
    v76 = v74;
  }

  v106 = 0;
LABEL_77:
  CFPreferencesSetAppValue(@"DeleteExistingUCRT", kCFBooleanFalse, @"com.apple.mobileactivationd");
  CFPreferencesSetAppValue(@"UCRTHealingRequired", kCFBooleanFalse, @"com.apple.mobileactivationd");
  CFPreferencesSetAppValue(@"DeleteExistingPCRT", kCFBooleanFalse, @"com.apple.mobileactivationd");
  CFPreferencesSetAppValue(@"DeleteExistingDCRT", kCFBooleanFalse, @"com.apple.mobileactivationd");
  CFPreferencesSetAppValue(@"DeleteExistingSDCRT", kCFBooleanFalse, @"com.apple.mobileactivationd");
  CFPreferencesAppSynchronize(@"com.apple.mobileactivationd");
  v63 = v76;
LABEL_78:
  v82 = data_ark_copy(v43, 0, @"BootSessionUUID");
  v83 = isNSString(v82);

  if (!v83)
  {

    v82 = &stru_1003F3678;
  }

  v84 = copy_bootsession_uuid();
  v85 = v84;
  if (!v84)
  {
    v87 = createMobileActivationError("perform_boot_initialization_tasks", 156, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve boot session UUID.");
LABEL_87:

    v90 = v87;
    v86 = 0;
    v88 = v87;
    goto LABEL_91;
  }

  if ([v84 isEqualToString:v82])
  {
    v86 = 1;
    v87 = v12;
    v88 = v62;
    goto LABEL_91;
  }

  v128 = v62;
  is_legacy = security_committed_uik_is_legacy(&v128);
  v88 = v128;

  if (!is_legacy && v88)
  {
    v87 = createMobileActivationError("perform_boot_initialization_tasks", 163, @"com.apple.MobileActivation.ErrorDomain", -1, v88, @"Failed to query legacy UIK support.");
    v62 = v88;
    goto LABEL_87;
  }

  if (is_legacy)
  {
    data_ark_set(v43, 0, @"UIKUpgradeRequired", &__kCFBooleanTrue, 1);
  }

  v91 = copyRTCResetSerialQueue();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3254779904;
  v137 = __perform_boot_initialization_tasks_block_invoke;
  v138 = &__block_descriptor_48_e8_32s40s_e5_v8__0l;
  v92 = v43;
  v139 = v92;
  v140 = v85;
  dispatch_async(v91, &buf);

  data_ark_remove(v92, 0, @"UCRTOOBForbidden");
  data_ark_remove(v92, 0, @"UCRTOOBForbiddenCount");
  data_ark_remove(v92, 0, @"DCRTOOBForbidden");
  data_ark_remove(v92, 0, @"DCRTOOBForbiddenCount");
  data_ark_remove(v92, 0, @"SDCRTOOBForbidden");
  data_ark_remove(v92, 0, @"SDCRTOOBForbiddenCount");

  v86 = 1;
  v87 = v12;
LABEL_91:

  v93 = v87;
  if ((v86 & 1) == 0)
  {
    main_cold_7(v93);
  }

  if (!data_migration_supported() || preSydroDataMigrationCompleted(v43))
  {
    v118 = v93;
    v94 = performMigration(v43, &v118);
    v95 = v118;

    v96 = v105;
    if ((v94 & 1) == 0)
    {
      main_cold_8(v95);
    }

    v93 = v95;
    goto LABEL_96;
  }

  v96 = v105;
  if (!data_migration_supported())
  {
LABEL_96:
    v97 = v113;
    goto LABEL_97;
  }

  v97 = v113;
  if ((preSydroDataMigrationCompleted(v43) & 1) == 0)
  {
    v104 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __main_block_invoke;
    block[3] = &__block_descriptor_48_e8_32s40s_e5_v8__0l;
    v116 = v105;
    v117 = v43;
    dispatch_async(v104, block);
  }

LABEL_97:
  v98 = [[MobileActivationDaemon alloc] initWithContext:v43 Queue:v96];
  if (!v98)
  {
    main_cold_11();
  }

  v99 = v98;
  [@"com.apple.mobileactivationd" UTF8String];
  if ((os_variant_is_darwinos() & 1) == 0 && !init_lockdown_server(v99, v96))
  {
    main_cold_9();
  }

  v100 = copyNotificationSerialQueue_onceToken;
  v101 = v43;
  if (v100 != -1)
  {
    main_cold_10();
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3254779904;
  v137 = __register_for_darwin_notifications_block_invoke;
  v138 = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
  v139 = v101;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", copyNotificationSerialQueue_queue, &buf);

  v102 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobileactivationd"];
  [v102 setDelegate:v99];
  [v102 resume];

  objc_autoreleasePoolPop(context);
  CFRunLoopRun();

  return 1;
}

void __main_block_invoke(uint64_t a1)
{
  DMPerformMigrationReturningAfterPlugin();
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __main_block_invoke_2;
  block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
  v5 = v2;
  dispatch_sync(v3, block);
}

void __main_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 0;
  v2 = performMigration(v1, &v4);
  v3 = v4;
  if ((v2 & 1) == 0)
  {
    __main_block_invoke_2_cold_1(v3);
  }
}

void __perform_boot_initialization_tasks_block_invoke(uint64_t a1)
{
  v2 = copyRTCResetCount();
  v15 = 0;
  v3 = copyMonotonicClockTimeInterval(&v15);
  v4 = v15;
  if (v3 <= 0.0)
  {
    v5 = copyLoggingHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __perform_boot_initialization_tasks_block_invoke_cold_1(v4, v5);
    }
  }

  v6 = data_ark_copy(*(a1 + 32), 0, @"LastBootClockTime");
  v7 = isNSNumber(v6);

  if (!v7)
  {

    v6 = &off_1003FBE40;
  }

  v8 = data_ark_copy(*(a1 + 32), 0, @"TotalRTCResetCount");
  v9 = isNSNumber(v8);

  if (!v9)
  {

    v8 = &off_1003FBE40;
  }

  if (v2 || v3 <= 0.0 || ([v6 doubleValue], v10 > 0.0) && (objc_msgSend(v6, "doubleValue"), v11 > v3))
  {
    v12 = [NSNumber numberWithUnsignedInt:[(NSNumber *)v8 unsignedIntValue]+ 1];

    v8 = v12;
  }

  data_ark_set(*(a1 + 32), 0, @"TotalRTCResetCount", v8, 1);
  v13 = *(a1 + 32);
  v14 = [NSNumber numberWithDouble:v3];
  data_ark_set(v13, 0, @"LastBootClockTime", v14, 1);

  data_ark_set(*(a1 + 32), 0, @"BootSessionUUID", *(a1 + 40), 1);
}

void __register_for_darwin_notifications_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string && !strcmp("com.apple.os-eligibility-domain.input-needed", string))
  {
    v4 = *(a1 + 32);
    v5 = copyLoggingHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing eligibility notification...", v7, 2u);
    }

    v6 = copyMobileActivationSerialQueue();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = __handle_eligibility_domain_input_needed_notification_block_invoke;
    v7[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
    v7[4] = v4;
    dispatch_async(v6, v7);
  }
}

void __copyNotificationSerialQueue_block_invoke(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.mobileactivationd.notifications", v1);
  v3 = copyNotificationSerialQueue_queue;
  copyNotificationSerialQueue_queue = v2;
}

void __handle_eligibility_domain_input_needed_notification_block_invoke(uint64_t a1)
{
  v1 = copy_activation_record(*(a1 + 32));
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __handle_eligibility_domain_input_needed_notification_block_invoke_2;
  block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __handle_eligibility_domain_input_needed_notification_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 0;
  v2 = set_eligibility_input(v1, &v7);
  v3 = v7;
  v4 = copyLoggingHandle();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully processed eligibility notification.", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __handle_eligibility_domain_input_needed_notification_block_invoke_2_cold_1(v3, v5);
  }
}

void OUTLINED_FUNCTION_0_1()
{
}

uint64_t is_dsp_device()
{
  v0 = +[GestaltHlpr getSharedInstance];
  v1 = [v0 copyAnswer:@"SerialNumber"];

  if (v1 && (v2 = objc_alloc_init(NSMutableArray)) != 0)
  {
    v3 = v2;
    if (is_internal_build())
    {
      v4 = [NSUserDefaults alloc];
      v5 = [v4 persistentDomainForName:@"com.apple.mobileactivationd"];

      v6 = [v5 objectForKeyedSubscript:@"DSPList"];
      v7 = isNSArray(v6);

      if (v7)
      {
        v8 = [v5 objectForKeyedSubscript:@"DSPList"];
        [v3 addObjectsFromArray:v8];
      }
    }

    else
    {
      v5 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v3;
    v9 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = isNSString(v13);

          if (v14 && ([v13 isEqualToString:{v1, v16}] & 1) != 0)
          {
            v9 = 1;
            goto LABEL_19;
          }
        }

        v9 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

NSNumber *copyBridgeKey(void *a1, NSError **a2)
{
  v3 = a1;
  if (is_virtual_machine() && (v4 = remote_device_copy_unique_of_type()) != 0)
  {
    v5 = v4;
    if (remote_device_get_state() == 2)
    {
      [v3 UTF8String];
      v6 = remote_device_copy_property();
      v7 = v6;
      if (v6)
      {
        if (xpc_get_type(v6) == &_xpc_type_uint64)
        {
          v8 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v7)];
          if (v8)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = _CFXPCCreateCFObjectFromXPCObject();
          if (v8)
          {
LABEL_7:
            v9 = v8;
            v10 = 0;
            goto LABEL_17;
          }
        }

        MobileActivationError = createMobileActivationError("copyBridgeKey", 294, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to convert value.");
      }

      else
      {
        MobileActivationError = createMobileActivationError("copyBridgeKey", 284, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve bridgeOS key: %@", v3);
      }

      v10 = MobileActivationError;
      if (!a2)
      {
        goto LABEL_16;
      }

LABEL_10:
      v11 = v10;
      v9 = 0;
      *a2 = v10;
      goto LABEL_17;
    }

    v10 = createMobileActivationError("copyBridgeKey", 278, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Remote device not connected yet.");
  }

  else
  {
    v10 = createMobileActivationError("copyBridgeKey", 273, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to connect to remote device.");
    v5 = 0;
  }

  v7 = 0;
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_16:
  v9 = 0;
LABEL_17:

  return v9;
}

uint64_t bridge_call_and_response_internal(int a1, id a2, void *a3, NSError **a4)
{
  v6 = a2;
  if (v6)
  {
    v7 = [[NSMutableDictionary alloc] initWithDictionary:v6];
    if (v7)
    {
      v8 = copy_calling_process_name();
      if (v8)
      {
        [v7 setObject:v8 forKeyedSubscript:@"HostProcessName"];
        v36 = v8;
        if (a1 == 1)
        {
          v9 = kMARecoveryLogBridgeConnectionID;
        }

        else
        {
          if (a1)
          {
            v10 = 0;
            goto LABEL_23;
          }

          v9 = kMABridgeConnectionID;
        }

        v15 = *v9;
        v37 = 0;
        v14 = copyRemoteServiceConnection(v15, &v37);
        v16 = v37;
        v17 = v16;
        if (v14)
        {
          v18 = v14;
          v19 = 0;
        }

        else
        {
          v20 = v16;
          v19 = v17;
        }

        v10 = v19;
        if (v14)
        {
          v12 = _CFXPCCreateXPCObjectFromCFObject();
          if (v12)
          {
            v11 = xpc_dictionary_create(0, 0, 0);
            if (v11)
            {
              xpc_dictionary_set_value(v11, [@"BridgeXPCRequestEncodedDictionary" UTF8String], v12);
              if (!a3)
              {
                xpc_remote_connection_send_message();
                v13 = 0;
                v8 = 0;
                v26 = 1;
                goto LABEL_32;
              }

              v21 = a3;
              v22 = xpc_remote_connection_send_message_with_reply_sync();
              a3 = v22;
              if (v22)
              {
                if (xpc_get_type(v22) != &_xpc_type_dictionary)
                {
                  v23 = xpc_copy_description(a3);
                  v33 = createMobileActivationError("bridge_call_and_response_internal", 221, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Unexpected message: %s", v23);

                  free(v23);
                  v8 = 0;
                  v13 = 0;
                  v10 = v33;
                  goto LABEL_29;
                }

                v29 = xpc_dictionary_get_value(a3, [@"BridgeXPCResponseEncodedDictionary" UTF8String]);
                if (v29)
                {
                  v34 = v29;
                  v8 = _CFXPCCreateCFObjectFromXPCObject();
                  v30 = isNSDictionary(v8);

                  if (v30)
                  {
                    v31 = v8;
                    *v21 = v8;
                    v26 = 1;
                    v13 = v34;
                    goto LABEL_32;
                  }

                  v32 = createMobileActivationError("bridge_call_and_response_internal", 234, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary from XPC message.");

                  v10 = v32;
                  v13 = v34;
                  goto LABEL_29;
                }

                MobileActivationError = createMobileActivationError("bridge_call_and_response_internal", 228, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"XPC message missing key (%@) : %@", @"BridgeXPCRequestEncodedDictionary", a3);
              }

              else
              {
                MobileActivationError = createMobileActivationError("bridge_call_and_response_internal", 215, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to receive XPC reply.");
              }

              v24 = MobileActivationError;

              v8 = 0;
              goto LABEL_27;
            }

            v24 = createMobileActivationError("bridge_call_and_response_internal", 206, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create xpc dictionary.");

            v8 = 0;
          }

          else
          {
            v24 = createMobileActivationError("bridge_call_and_response_internal", 200, @"com.apple.MobileActivation.ErrorDomain", -1, v10, @"Failed to create XPC dictionary (%@).", v7);

            v8 = 0;
            v11 = 0;
          }

          a3 = 0;
LABEL_27:
          v13 = 0;
          goto LABEL_28;
        }

LABEL_23:
        v24 = createMobileActivationError("bridge_call_and_response_internal", 194, @"com.apple.MobileActivation.ErrorDomain", -1, v10, @"Failed to create remote connection.");

        v8 = 0;
        v11 = 0;
        a3 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
LABEL_28:
        v10 = v24;
        goto LABEL_29;
      }

      v10 = createMobileActivationError("bridge_call_and_response_internal", 174, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve process name.");
    }

    else
    {
      v10 = createMobileActivationError("bridge_call_and_response_internal", 168, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");
      v8 = 0;
    }
  }

  else
  {
    v10 = createMobileActivationError("bridge_call_and_response_internal", 162, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v8 = 0;
    v7 = 0;
  }

  v36 = 0;
  v11 = 0;
  a3 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_29:
  if (a4)
  {
    v25 = v10;
    *a4 = v10;
  }

  v26 = 0;
LABEL_32:

  return v26;
}

id bridge_call_and_response(int a1, void *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v4 = bridge_call_and_response_internal(a1, a2, &v11, &v10);
  v5 = v11;
  v6 = v10;
  v7 = 0;
  if (v4)
  {
    v7 = v5;
  }

  if (a3 && !v7)
  {
    v8 = v6;
    *a3 = v6;
  }

  return v7;
}

id copyRemoteServiceConnection(void *a1, NSError **a2)
{
  v3 = a1;
  v4 = dispatch_semaphore_create(0);
  if (!v4)
  {
    MobileActivationError = createMobileActivationError("copyRemoteServiceConnection", 35, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create semaphore.");
    goto LABEL_8;
  }

  if (!is_virtual_machine() || (v5 = remote_device_copy_unique_of_type()) == 0)
  {
    MobileActivationError = createMobileActivationError("copyRemoteServiceConnection", 49, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to connect to remote device.");
LABEL_8:
    v11 = MobileActivationError;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = v5;
  v7 = dispatch_get_global_queue(0, 0);
  v22 = v4;
  remote_device_set_connected_callback();

  v8 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v22, v8))
  {
    v9 = createMobileActivationError("copyRemoteServiceConnection", 60, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Remote device not connected after %d seconds.", 60, v19, v20, _NSConcreteStackBlock, 3254779904, __copyRemoteServiceConnection_block_invoke, &__block_descriptor_40_e8_32s_e26_v16__0__OS_remote_device_8l);
LABEL_17:
    v11 = v9;
LABEL_9:
    v12 = 0;
    if (a2)
    {
LABEL_10:
      v11 = v11;
      v13 = 0;
      *a2 = v11;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (remote_device_get_state() != 2)
  {
    v9 = createMobileActivationError("copyRemoteServiceConnection", 65, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Remote device not connected after %d seconds.", 60, v19, v20, _NSConcreteStackBlock, 3254779904, __copyRemoteServiceConnection_block_invoke, &__block_descriptor_40_e8_32s_e26_v16__0__OS_remote_device_8l);
    goto LABEL_17;
  }

  [v3 UTF8String];
  v14 = remote_device_copy_service();
  if (!v14)
  {
    v16 = *__error();
    v17 = __error();
    v21 = strerror(*v17);
    v9 = createMobileActivationError("copyRemoteServiceConnection", 71, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to connect to remote service %@: %d (%s)", v3, v16, v21, _NSConcreteStackBlock, 3254779904, __copyRemoteServiceConnection_block_invoke, &__block_descriptor_40_e8_32s_e26_v16__0__OS_remote_device_8l);
    goto LABEL_17;
  }

  v12 = v14;
  v15 = dispatch_get_global_queue(25, 0);
  v13 = xpc_remote_connection_create_with_remote_service();

  if (v13)
  {
    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
    v11 = 0;
    goto LABEL_20;
  }

  v11 = createMobileActivationError("copyRemoteServiceConnection", 77, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create remote connection.");
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_19:
  v13 = 0;
LABEL_20:

  return v13;
}

id copyReverseProxyDictionary(void *a1, uint64_t a2, NSError **a3)
{
  v5 = a1;
  v6 = objc_alloc_init(NSMutableDictionary);
  if (!v6)
  {
    v8 = createMobileActivationError("copyReverseProxyDictionary", 31, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");
    v9 = 0;
    v7 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_14;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_15;
  }

  if (v5)
  {
    v7 = [[NSURL alloc] initWithString:v5];
  }

  else
  {
    v7 = 0;
  }

  v22 = @"TestReachability";
  v12 = [NSNumber numberWithBool:a2];
  v23 = v12;
  v10 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  RPSetLogLevel();
  v13 = RPCopyProxyDictionaryWithOptions();
  v9 = v13;
  if (v13)
  {
    v14 = [v13 objectForKeyedSubscript:@"SOCKSProxy"];
    if (v14)
    {
      v15 = v14;
      v16 = [v9 objectForKeyedSubscript:@"SOCKSPort"];

      if (v16)
      {
        v17 = [v9 objectForKeyedSubscript:@"SOCKSProxy"];
        [v6 setObject:v17 forKeyedSubscript:@"SOCKSProxyHost"];

        v18 = [v9 objectForKeyedSubscript:@"SOCKSPort"];
        [v6 setObject:v18 forKeyedSubscript:@"SOCKSProxyPort"];

        v11 = v6;
        v8 = 0;
        goto LABEL_15;
      }
    }

    MobileActivationError = createMobileActivationError("copyReverseProxyDictionary", 49, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid proxy dictionary.");
  }

  else
  {
    MobileActivationError = createMobileActivationError("copyReverseProxyDictionary", 44, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy proxy dictionary (proxy likely not running on host).");
  }

  v8 = MobileActivationError;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_14:
  v20 = v8;
  v11 = 0;
  *a3 = v8;
LABEL_15:

  return v11;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, &v4);
  if (!result)
  {
    if (v4 == v4)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  memset(v8, 170, sizeof(v8));
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  memset(v4, 170, sizeof(v4));
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void *_params_get_der_key(int a1, int a2)
{
  switch(a1)
  {
    case 1:
      v2 = &der_key_access_groups;
      goto LABEL_29;
    case 2:
      v2 = &der_key_external_data;
      goto LABEL_29;
    case 3:
      v2 = &der_key_acm_handle;
      goto LABEL_29;
    case 4:
      v2 = &der_key_salt;
      goto LABEL_29;
    case 5:
      v2 = &der_key_data;
      goto LABEL_29;
    case 6:
      v2 = &der_key_ecdh_seed;
      goto LABEL_29;
    case 7:
      v2 = &der_key_ecdh_iv;
      goto LABEL_29;
    case 8:
      v3 = &der_key_raw_output;
      goto LABEL_27;
    case 9:
      v3 = &der_key_options;
      goto LABEL_27;
    case 10:
      v2 = &der_key_shared_info;
      goto LABEL_29;
    case 11:
      v2 = &der_key_shared_info2;
      goto LABEL_29;
    case 12:
      v2 = &der_key_transcode_shared_info;
      goto LABEL_29;
    case 13:
      v2 = &der_key_transcode_shared_info2;
      goto LABEL_29;
    case 14:
      v2 = &der_key_transcode_ecdh_seed;
      goto LABEL_29;
    case 15:
      v2 = &der_key_persona_uuid;
      goto LABEL_29;
    case 16:
      v3 = &der_key_sub_key_type;
      goto LABEL_27;
    case 17:
      v2 = &der_key_system_key_client_seed;
      goto LABEL_29;
    case 18:
      v3 = &der_key_system_key_options;
      goto LABEL_27;
    case 19:
      v4 = der_key_system_key_no_img4;
      v5 = a2 == 3;
      goto LABEL_30;
    case 20:
      v3 = &der_key_remote_session_signing_key_type;
      goto LABEL_27;
    case 21:
      v2 = &der_key_remote_session_signing_key_certificate;
      goto LABEL_29;
    case 22:
      v3 = &der_key_gid_ref_key_options;
      goto LABEL_27;
    case 23:
      v3 = &der_key_pka_flags;
      goto LABEL_27;
    case 24:
      v2 = &der_key_volume_uuid;
      goto LABEL_29;
    case 25:
      v2 = &der_key_seed;
LABEL_29:
      v4 = *v2;
      v5 = a2 == 2;
      goto LABEL_30;
    case 26:
      v3 = &der_key_test_flags;
LABEL_27:
      v4 = *v3;
      v5 = a2 == 1;
LABEL_30:
      if (v5)
      {
        result = v4;
      }

      else
      {
        result = 0;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t aks_ref_key_get_type(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  result = der_dict_find_value(der_key_type, &v2, &v3);
  if (result)
  {
    return der_get_number();
  }

  return result;
}

uint64_t aks_ref_key_get_public_key(void *a1, void *a2)
{
  v17 = 0;
  v16 = 0;
  if (!a1[4])
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  if (der_dict_find_value(der_key_public_key, &v14, &v15))
  {
    v13[0] = v14;
    v13[1] = v14 + v15;
    der_utils_decode_implicit_raw_octet_string(v13, 4, &v17, &v16);
  }

  type = aks_ref_key_get_type(a1);
  if ((type - 7) < 2)
  {
    v5 = ccec_cp_384();
    goto LABEL_9;
  }

  if ((type - 4) <= 1)
  {
    v5 = ccec_cp_256();
LABEL_9:
    if (v5)
    {
      v7 = firebloom_cp_prime_bitlen(v5);
      if (v17 == (v7 + 7) >> 3)
      {
        if (v16 && !a1[8])
        {
          __chkstk_darwin();
          bzero(&v13[-1] - v8, v8);
          ccec_compact_import_pub();
          v9 = (2 * firebloom_cp_prime_size()) | 1;
          v10 = calloc(v9, 1uLL);
          a1[8] = v10;
          a1[9] = v9;
          if (v10)
          {
            ccec_export_pub();
          }

          cc_clear();
        }

        v11 = a1[9];
        v16 = a1[8];
        v17 = v11;
      }
    }
  }

  *a2 = v17;
  return v16;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return memset_s(v0, 8uLL, 0, 8uLL);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return encode_list_add_der();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return _get_merged_params();
}

uint64_t OUTLINED_FUNCTION_6(void *a1)
{

  return memset_s(a1, 8uLL, 0, 8uLL);
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);

  return encode_list_dict(v2, va, va1);
}

uint64_t OUTLINED_FUNCTION_12(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t OUTLINED_FUNCTION_13(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void OUTLINED_FUNCTION_19(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 40) = v3;
  *(v2 + 16) = a1 + a2;
}

uint64_t OUTLINED_FUNCTION_22(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void *OUTLINED_FUNCTION_28()
{

  return calloc(8uLL, 1uLL);
}

uint64_t OUTLINED_FUNCTION_29(void *a1)
{

  return memset_s(a1, 0x50uLL, 0, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_40()
{
  v3 = *v1;

  return encode_list_remove_key(v0, v3);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return encode_list_merge_dict(v0);
}

void *OUTLINED_FUNCTION_59()
{

  return calloc(0x50uLL, 1uLL);
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

void __get_aks_client_connection_block_invoke(id a1)
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_23(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

BOOL _dict_find_value_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = der_equal(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t encode_list_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t encode_list_remove_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = _encode_list_find_key(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *_encode_list_find_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && der_equal(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t _merge_dict_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!encode_list_remove_key(a5, v7) && !encode_list_add_der())
    {
      return 1;
    }
  }

  else
  {
    _merge_dict_cb_cold_1();
  }

  _merge_dict_cb_cold_2();
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_2(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return ccder_blob_encode_body();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return ccder_blob_encode_tl();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return ccder_sizeof();
}

void *OUTLINED_FUNCTION_26_0()
{

  return calloc(0x18uLL, 1uLL);
}

void *OUTLINED_FUNCTION_27_0(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return ccder_blob_decode_range();
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

uint64_t IW1PcFszqNK(uint64_t a1)
{
  v1 = *(&off_1003E74E0 + ((-15 * (dword_1004036F0 ^ 0x34 ^ dword_1004036D8)) ^ byte_1003833C0[byte_100383CC0[(-15 * (dword_1004036F0 ^ 0x34 ^ dword_1004036D8))] ^ 0xE7]) - 156);
  v2 = *(&off_1003E74E0 + ((-15 * ((dword_1004036D8 + *v1) ^ 0x34)) ^ byte_1003839C0[byte_1003836C0[(-15 * ((dword_1004036D8 + *v1) ^ 0x34))] ^ 0x6F]) - 157);
  v3 = (*(v2 - 4) - *v1) ^ &v9;
  *v1 = 618829553 * (v3 - 0x36690F2252B96534);
  *(v2 - 4) = 618829553 * (v3 ^ 0x36690F2252B96534);
  v4 = *(&off_1003E74E0 + ((-15 * ((dword_1004036D8 + dword_1004036F0) ^ 0x34)) ^ byte_100383AC0[byte_1003837C0[(-15 * ((dword_1004036D8 + dword_1004036F0) ^ 0x34))] ^ 0xD1]) - 162);
  v5 = *(v4 + 72);
  v6 = 1402727023 * (((v10 | 0x27DEB680A9B42913) - v10 + (v10 & 0xD821497F564BD6E8)) ^ 0x50B504743F2B62FBLL);
  v10[0] = -1850172192 - v6;
  v11 = a1;
  v12 = v5 - v6;
  v7 = -15 * (*v1 ^ 0x34 ^ *(v2 - 4));
  (*(v4 + 8 * ((byte_1003834CC[(byte_1003831CC[v7 - 12] ^ 0xF8) - 12] ^ v7) - 109)))(v10);
  return v10[1];
}

uint64_t Be81a395Bf0(uint64_t a1)
{
  v1 = *(&off_1003E74E0 + ((-15 * ((dword_1004036D8 - dword_1004036F8) ^ 0x34)) ^ byte_100383AC0[byte_1003837C0[(-15 * ((dword_1004036D8 - dword_1004036F8) ^ 0x34))] ^ 0x68]) - 161);
  v2 = *(&off_1003E74E0 + ((-15 * ((dword_1004036D8 + *v1) ^ 0x34)) ^ byte_1003832C0[byte_100383BC0[(-15 * ((dword_1004036D8 + *v1) ^ 0x34))] ^ 0x49]) - 156);
  v3 = *v1 - &v9 + *(v2 - 4);
  *v1 = 618829553 * v3 - 0x36690F2252B96534;
  *(v2 - 4) = 618829553 * (v3 ^ 0x36690F2252B96534);
  v4 = *(&off_1003E74E0 + ((-15 * ((dword_1004036D8 - dword_1004036F8) ^ 0x34)) ^ byte_1003834C0[byte_1003831C0[(-15 * ((dword_1004036D8 - dword_1004036F8) ^ 0x34))] ^ 0x43]) - 161);
  v5 = 1402727023 * (((v10 | 0x7C6B3F64920E76B7) - v10 + (v10 & 0x8394C09B6DF18948)) ^ 0xB008D9004913D5FLL);
  v6 = *(v4 + 56) - v5;
  v10[0] = -1850172192 - v5;
  v11 = a1;
  v12 = v6;
  v7 = -15 * ((*(v2 - 4) + *v1) ^ 0x34);
  (*(v4 + 8 * ((byte_1003838C0[byte_1003835CC[v7 - 12] ^ 0xF5] ^ v7) - 110)))(v10);
  return v10[1];
}

void nDYmeMqvWb(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a3 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100345AB0(uint64_t a1, uint64_t a2, int a3)
{
  v8[0] = *(v3 + 240);
  v12 = v8;
  v11 = 1646140907 * ((((2 * &v10) | 0x3988BEFC) - &v10 - 482631550) ^ 0x9DCFCC13) - 1458603509;
  (*(v3 + 792))(&v10);
  v8[0] = *(v3 + 224);
  v8[1] = a1;
  v8[2] = a2;
  v9 = a3 - ((2 * a3) & 0xC11FE834) - 527436774;
  v12 = v8;
  v11 = 1646140907 * ((-971957249 - (&v10 | 0xC6111BFF) + (&v10 | 0x39EEE400)) ^ 0xB8E5776D) - 1458603509;
  (*(v3 + 792))(&v10);
  return (v10 - 1247915629);
}

void KxmB0CKvgWt(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100345C50(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *(v5 + 240);
  v18 = v12;
  v17 = 1646140907 * ((((&v16 | 0xE5FBA1E6) ^ 0xFFFFFFFE) - (~&v16 | 0x1A045E19)) ^ 0x9B0FCD74) - 1458603509;
  (*(v5 + 792))(&v16);
  v12[0] = *(v5 + 120);
  v12[1] = a1;
  v13 = (a2 ^ 0xEBCFBCFF) + 1056145346 + ((2 * a2) & 0xD79F79FE);
  v12[2] = a3;
  v14 = a4;
  v15 = a5;
  v17 = 1646140907 * ((&v16 & 0x300CA9DE | ~(&v16 | 0x300CA9DE)) ^ 0x4EF8C54C) - 1458603509;
  v18 = v12;
  (*(v5 + 792))(&v16);
  return (v16 - 1247915629);
}

void t1BoNctgaUu66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100345E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *(v5 + 240);
  v18 = v12;
  v17 = 1646140907 * ((&v16 - 367535318 - 2 * (&v16 & 0xEA17DB2A)) ^ 0x6B1C4847) - 1458603509;
  (*(v5 + 792))(&v16);
  v12[0] = *(v5 + 168);
  v12[1] = a1;
  v12[2] = a2;
  v13 = (a3 ^ 0xF9DE9AFF) + 1878779883 + ((2 * a3) & 0xF3BD35FE);
  v14 = a4;
  v15 = a5;
  v17 = 1646140907 * (((&v16 | 0x4D50755D) - &v16 + (&v16 & 0xB2AF8AA0)) ^ 0xCC5BE630) - 1458603509;
  v18 = v12;
  (*(v5 + 792))(&v16);
  return (v16 - 1247915629);
}

uint64_t mbdz5ztWyQD(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = (qword_1004040D8 + qword_1004040F8) ^ &v9;
  qword_1004040F8 = 1000671541 * v5 + 0x25209C7892F2405CLL;
  qword_1004040D8 = 1000671541 * (v5 ^ 0x25209C7892F2405CLL);
  v6 = 398132233 * ((~&v10 & 0x4CDB6CE90865387FLL | &v10 & 0xB3249316F79AC780) ^ 0xBD40FFA8BC7175D9);
  v11 = v6 ^ a5;
  v12 = a1;
  v17 = sub_1001C9118 - v6;
  v10 = a2;
  v15 = a4;
  v14 = v6 ^ a3;
  v7 = byte_1003B0750[byte_1003B0650[(53 * (qword_1004040F8 ^ 0x5C ^ qword_1004040D8))] ^ 0x9F];
  v16 = -601934099 - v6;
  (*(&off_1003E7570 + ((53 * (qword_1004040F8 ^ 0x5C ^ qword_1004040D8)) ^ v7) + 1997))(&v10);
  return v13;
}

uint64_t xtiKg(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  qword_100404108 = 1000671541 * ((qword_100404108 - &v7 + qword_1004040D8) ^ 0x25209C7892F2405CLL);
  qword_1004040D8 = qword_100404108;
  v5 = 398132233 * ((2 * (&v8 & 0x130F2ADC81DB4528) - &v8 - 0x130F2ADC81DB4529) ^ 0x1D6B4662CA30F771);
  v8 = a2;
  v14 = -601934099 - v5;
  v10 = a1;
  v9 = v5 ^ a5;
  v12 = v5 ^ a3;
  v13 = a4;
  v15 = sub_1001C90C8 - v5;
  (*(&off_1003E7570 + (unk_1003B078C ^ 0xCu) + 1929))(&v8);
  return v11;
}

uint64_t ZyNF2D9(uint64_t a1)
{
  v1 = (qword_1004040D8 ^ qword_100404110) - &v5;
  qword_100404110 = 1000671541 * v1 + 0x78D52D199FB68F0CLL;
  qword_1004040D8 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * (((&v6 | 0xBCC87CDF8A18F0EFLL) - &v6 + (&v6 & 0x4337832075E70F10)) ^ 0x8E2A700E2019D0FLL);
  v6 = v2 ^ 0x9405E0C4;
  v3 = byte_1003B0550[byte_1003B0450[(53 * ((qword_1004040D8 - qword_100404110) ^ 0x5C))] ^ 0x20];
  v9 = sub_1002A5DA0 + v2;
  v7 = a1;
  (*(&off_1003E7570 + ((53 * ((qword_1004040D8 - qword_100404110) ^ 0x5C)) ^ v3) + 2185))(&v6);
  return v8;
}

uint64_t ewFHQ(uint64_t a1)
{
  v1 = qword_1004040F0 - &v5 + qword_1004040D8;
  qword_1004040F0 = (1000671541 * v1) ^ 0x25209C7892F2405CLL;
  qword_1004040D8 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * ((2 * (&v6 & 0x5BC954F4024B22D0) - &v6 - 0x5BC954F4024B22D4) ^ 0x101C70D495ADB0CCLL);
  v6 = v2 ^ 0x9405E0C4;
  LOBYTE(v1) = 53 * ((53 * v1) ^ qword_1004040D8);
  v3 = byte_1003B0550[byte_1003B0450[v1] ^ 0x6A];
  v7 = a1;
  v9 = sub_1002A5D30 + v2;
  (*(&off_1003E7570 + (v1 ^ v3) + 2031))(&v6);
  return v8;
}

uint64_t NAAB(uint64_t a1, int a2)
{
  v2 = &v7[qword_1004040D8 ^ qword_100404100];
  qword_100404100 = 1000671541 * v2 - 0x25209C7892F2405CLL;
  qword_1004040D8 = 1000671541 * (v2 ^ 0x25209C7892F2405CLL);
  v5[0] = sub_1002A5B10;
  v5[1] = a1;
  v6 = a2;
  v8[1] = (923786993 * ((((&vars0 - 24) | 0x2A7EAC27) - (&vars0 - 24) + ((&vars0 - 24) & 0xD58153D8)) ^ 0x40991068)) ^ 0x6294CF9;
  v3 = byte_1003B0950[byte_1003B0850[(53 * (qword_100404100 ^ 0x5C ^ qword_1004040D8))] ^ 1];
  v9 = v5;
  (*(&off_1003E7570 + ((53 * (qword_100404100 ^ 0x5C ^ qword_1004040D8)) ^ v3) + 1712))(v8);
  return v8[0];
}

uint64_t TcswZQtsc8hw(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = qword_1004040E0 - &v7 + qword_1004040D8;
  qword_1004040E0 = 1000671541 * (v3 - 0x25209C7892F2405CLL);
  qword_1004040D8 = 1000671541 * (v3 ^ 0x25209C7892F2405CLL);
  v6[0] = sub_1002A59E0;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  v8[1] = (923786993 * ((&vars0 - 68587631 - 2 * ((&vars0 - 24) & 0xFBE96FA9)) ^ 0x910ED3E6)) ^ 0x6294CF9;
  v4 = byte_1003B0150[byte_1003B0050[(53 * ((qword_1004040D8 + qword_1004040E0) ^ 0x5C))] ^ 0xB5];
  v9 = v6;
  (*(&off_1003E7570 + ((53 * ((qword_1004040D8 + qword_1004040E0) ^ 0x5C)) ^ v4) + 1780))(v8);
  return v8[0];
}

uint64_t qSCskg(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = qword_1004040D8 - qword_1004040E8 - &v15;
  qword_1004040E8 = 1000671541 * (v7 - 0x25209C7892F2405CLL);
  qword_1004040D8 = 1000671541 * (v7 ^ 0x25209C7892F2405CLL);
  v10[0] = sub_1002A5934;
  v10[1] = a1;
  v11 = a3;
  v10[2] = a2;
  v10[3] = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v17 = v10;
  v8 = byte_1003B0350[byte_1003B0250[(53 * ((qword_1004040D8 + qword_1004040E8) ^ 0x5C))] ^ 0xE2];
  v16[1] = (923786993 * ((((&vars0 - 24) | 0x369D7D4) - (&vars0 - 24) + ((&vars0 - 24) & 0xFC962828)) ^ 0x698E6B9B)) ^ 0x6294CF9;
  (*(&off_1003E7570 + ((53 * ((qword_1004040D8 + qword_1004040E8) ^ 0x5C)) ^ v8) + 1891))(v16);
  return v16[0];
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v2 = (a1 + 104);
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v5);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v5);
    if (result)
    {
      result = compare_octet_string(&CodeSigningCAName, v5);
      if (result)
      {
        result = compare_octet_string_partial(&MFi4AccessoryCAName, v5);
        if (result)
        {
          result = compare_octet_string_partial(&MFi4AttestationCAName, v5);
          if (result)
          {
            result = compare_octet_string_partial(&MFi4ProvisioningCAName, v5);
            if (result)
            {
              return result;
            }

            v4 = 0x1000000000;
          }

          else
          {
            v4 = 0x800000000;
          }
        }

        else
        {
          v4 = 0x400000000;
        }
      }

      else
      {
        v4 = 0x800000000008;
      }
    }

    else
    {
      v4 = 3840;
    }

    *(a1 + 240) |= v4;
  }

  return result;
}

double X509PolicySetFlagsForMFI(uint64_t a1)
{
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      goto LABEL_4;
    }

    v6 = 0;
    if (!X509CertificateGetNotBefore(a1, &v6))
    {
      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v4 = timegm(&v5);
      result = difftime(v4, v6);
      if (result < 0.0)
      {
        *(a1 + 240) |= 0x8000000uLL;
LABEL_4:
        if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
        {
          *(a1 + 240) |= 0x1000000000uLL;
        }
      }
    }
  }

  return result;
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > digests;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > digests;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v6, 0, v5);
  if (!result)
  {
    result = compare_octet_string(a1[4], v6);
    if (!result)
    {
      result = compare_octet_string(a1[3], v5);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 / 4 + 2];
    if (result > &digests[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (digests[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~digests)
  {
    return &digests[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v23 = 0;
  if (!result)
  {
    return v5 & 1;
  }

  if (!a2)
  {
    return v5 & 1;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return v5 & 1;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v21 = a5[9];
  v22 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v25 = 0xAAAAAAAAAAAAAAAALL;
      v26 = -21846;
      v24 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v25) = v13;
      if (&v24 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = __chkstk_darwin();
          v16 = (&v20 - 4 * v15);
          v17 = 0;
          *&v18 = 0xAAAAAAAAAAAAAAAALL;
          *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v19 = &v16[v17 / 8];
            *v19 = v18;
            *(v19 + 1) = v18;
            v17 += 32;
          }

          while ((v14 & 0x7FFFFFFFFFFFFFE0) != v17);
          if (v16 + 4 <= &v20 && v16 <= v16 + 4)
          {
            *v16 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else if (ccrsa_verify_pkcs1v15_allowshortsigs())
            {
              v5 = 0;
              v23 = 0;
            }

            else
            {
              v5 = v23;
            }

            return v5 & 1;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

uint64_t validateOIDs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v18 = 0;
  if (!result)
  {
    return (v5 & 1);
  }

  if (!a2)
  {
    return (v5 & 1);
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return (v5 & 1);
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = __chkstk_darwin();
  v14 = &v17[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v17 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (ccec_import_pub())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    if (ccec_verify())
    {
LABEL_29:
      v18 = 0;
    }

LABEL_30:
    v5 = v18;
    return (v5 & 1);
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      return ccec_cp_256();
    }

    return 0;
  }

  v4 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    return ccec_cp_384();
  }

  v6 = *v4;
  v7 = *(v4 + 3);
  if (v6 != -2127887098 || v7 != 587203713)
  {
    return 0;
  }

  return _ccec_cp_521();
}

uint64_t compressECPublicKey(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v6 = ccec_cp_for_oid(a2);
  if (!v6)
  {
    return 655366;
  }

  v7 = v6;
  if (v6 >= v6 + 4)
  {
    goto LABEL_20;
  }

  v8 = *v6;
  if (*v6 >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_21;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = __chkstk_darwin();
  v15 = &v18 - 2 * v14;
  v16 = 0;
  do
  {
    v17 = &v15[v16 / 8];
    *v17 = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 += 16;
  }

  while ((v13 & 0xFFFFFFFFFFFFFFF0) != v16);
  if (v13 < 0x10)
  {
    __break(1u);
    return result;
  }

  *v15 = v7;
  if (v15 + 2 > &v18 || v15 > v15 + 2)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  result = ccec_import_pub();
  if (!result)
  {
    if (ccec_compressed_x962_export_pub_size() == a4)
    {
      if (!a3 || a4)
      {
        return ccec_compressed_x962_export_pub();
      }

      goto LABEL_20;
    }

    return 393220;
  }

  return result;
}

uint64_t decompressECPublicKey(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v6 = ccec_cp_for_oid(a2);
  if (!v6)
  {
    return 655366;
  }

  if (v6 >= v6 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v7 = *v6;
  if (*v6 >> 61 || !is_mul_ok(8 * v7, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v8 = 24 * v7;
  v9 = __CFADD__(v8, 16);
  v10 = v8 + 16;
  if (v9 || v10 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = __chkstk_darwin();
  v14 = &v19 - 2 * v13;
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 >= 0x10)
  {
    *v14 = result;
    if (v14 + 2 <= &v19 && v14 <= v14 + 2)
    {
      v17 = ccec_compressed_x962_import_pub();
      if (!v17)
      {
        v18 = cczp_bitlen();
        if (v18 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v18 + 7) >> 2) | 1) == a4)
            {
              v17 = 0;
            }

            else
            {
              v17 = 393220;
            }

            ccec_export_pub();
            return v17;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

      return v17;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t CTCopyDeviceIdentifiers(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 327696;
  if (!result || !a2)
  {
    return v3;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (__CFADD__(result, a2))
  {
    __break(0x5513u);
  }

  else if (result + a2 >= result)
  {
    v10[0] = result;
    v10[1] = result + a2;
    v5 = CTConvertDashTerminatedHexstringTo64BitInteger(v10, &v13);
    v6 = 327697;
    if (!v5 && !HIDWORD(v13))
    {
      if (CTConvertDashTerminatedHexstringTo64BitInteger(v10, &v12))
      {
        return 327698;
      }

      else
      {
        v7 = CTConvertDashTerminatedHexstringTo64BitInteger(v10, &v11);
        v6 = 327699;
        if (!v7)
        {
          v8 = v11;
          if (v11 <= 0xFF)
          {
            v6 = 0;
            if (a3)
            {
              v9 = v12;
              *a3 = v13;
              *(a3 + 8) = v9;
              *(a3 + 16) = (v8 & 8) != 0;
              *(a3 + 17) = (v8 & 4) != 0;
              *(a3 + 18) = v8 & 3;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }
          }
        }
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CTConvertDashTerminatedHexstringTo64BitInteger(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result > v3)
  {
    goto LABEL_50;
  }

  v4 = result;
  v5 = *result;
  if (*result < v3)
  {
    v5 = *result;
    while (*v5 != 45)
    {
      v6 = v5 + 1;
      if ((v5 + 1) > v3 || v5 > v6)
      {
        goto LABEL_50;
      }

      *result = v6;
      ++v5;
      if (v6 == v3)
      {
        v5 = v3;
        break;
      }
    }
  }

  if (v5 > v3 || v2 > v5)
  {
    goto LABEL_50;
  }

  result = 327708;
  if (v5 == v3)
  {
    return result;
  }

  v7 = v5 - v2;
  if (v5 - v2 > 16)
  {
    return result;
  }

  if (v5 == -1)
  {
    goto LABEL_51;
  }

  v8 = v5 + 1;
  if ((v5 + 1) > v3 || v5 > v8)
  {
LABEL_50:
    __break(0x5519u);
LABEL_51:
    __break(0x5513u);
LABEL_52:
    __break(0x5500u);
    return result;
  }

  v9 = 0;
  *v4 = v8;
  if (v2 >= v5 || (v10 = (v7 + 1 + (((v7 + 1) & 0x8000u) >> 15)) >> 1, v10 < 1))
  {
LABEL_46:
    result = 0;
    if (a2)
    {
      *a2 = v9;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    while (1)
    {
      if (v7 & 1) == 0 || (v11)
      {
        v13 = *v2;
        if (v13 > ~asciiNibbleToByte)
        {
          goto LABEL_51;
        }

        v14 = &asciiNibbleToByte[v13];
        v15 = v14 < &CTOidAppleImg4Manifest && v14 >= asciiNibbleToByte;
        if (!v15)
        {
          goto LABEL_50;
        }

        if (v2 == -1)
        {
          goto LABEL_51;
        }

        if (v2 + 1 > v5 || v2 > v2 + 1)
        {
          goto LABEL_50;
        }

        v12 = *v14;
        ++v2;
      }

      else
      {
        v12 = 0;
      }

      if (v2 >= v5)
      {
        return 327703;
      }

      v16 = *v2;
      if (v16 > ~asciiNibbleToByte)
      {
        goto LABEL_51;
      }

      v17 = &asciiNibbleToByte[v16];
      if (&asciiNibbleToByte[v16] >= &CTOidAppleImg4Manifest || v17 < asciiNibbleToByte)
      {
        goto LABEL_50;
      }

      v19 = v2 + 1;
      if (v2 + 1 > v5 || v2 > v19)
      {
        goto LABEL_50;
      }

      if (v12 > 0xF)
      {
        return 327703;
      }

      v20 = *v17;
      if (v20 > 0xF)
      {
        return 327703;
      }

      v21 = (v20 | (16 * v12)) << (8 * (v10 - 1));
      v15 = __CFADD__(v9, v21);
      v9 += v21;
      if (v15)
      {
        goto LABEL_52;
      }

      if (v19 < v5)
      {
        v11 = 1;
        v22 = v10;
        LOBYTE(v10) = v10 - 1;
        ++v2;
        if (v22 > 1)
        {
          continue;
        }
      }

      goto LABEL_46;
    }
  }

  return result;
}

unint64_t CTEvaluateBAASystemWithId(unint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a3, a4, 0, 0, &v7, &v8, &X509PolicyBAASystem);
  if (!result)
  {
    return CTFillBAAIdentity(v7, v8, v9, a5);
  }

  return result;
}

unint64_t CTFillBAAIdentity(int a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a1 & 0x800000) != 0 && a4)
  {
    result = CTCopyDeviceIdentifiers(a2, a3, a4);
    if (result)
    {
      return result;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  result = 0;
  if (a1 < 0 && a3)
  {
    if (a2)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      if (a4 + 40 < a4)
      {
        __break(0x5519u);
      }

      else
      {
        result = 0;
        *(a4 + 24) = a2;
        *(a4 + 32) = a3;
      }

      return result;
    }

    return 0;
  }

  return result;
}

unint64_t CTEvaluateBAASystemTestRoot(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v9, &v10, &X509PolicyBAASystem);
  if (!result)
  {
    return CTFillBAAIdentity(v9, v10, v11, a7);
  }

  return result;
}

unint64_t CTEvaluateBAAUser(unint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a3, a4, 0, 0, &v7, &v8, &X509PolicyBAAUser);
  if (!result)
  {
    return CTFillBAAIdentity(v7, v8, v9, a5);
  }

  return result;
}

unint64_t CTEvaluateBAAUserTestRoot(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v9, &v10, &X509PolicyBAAUser);
  if (!result)
  {
    return CTFillBAAIdentity(v9, v10, v11, a7);
  }

  return result;
}

unint64_t CTEvaluateBAASepApp(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v9, &v10, &X509PolicyBAASepApp);
  if (!result)
  {
    return CTFillBAAIdentity(v9, v10, v11, a7);
  }

  return result;
}

uint64_t CTEvaluateBAAAccessory(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v12 = 0;
  v13 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a5, a6, a3, a4, 0, &v12, &X509PolicyMFi4Attestation);
  if (!result && a7)
  {
    if (a8)
    {
      v11 = v13;
      *a7 = v12;
      *a8 = v11;
    }
  }

  return result;
}

uint64_t CTEvaluateBAA(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, unint64_t a10)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return CTEvaluateBAASepApp(a2, a3, a4, a5, a6, a7, a10);
      }

      return 327712;
    }

    return CTEvaluateBAAAccessory(a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CTEvaluateBAAUserTestRoot(a2, a3, a4, a5, a6, a7, a10);
      }

      return 327712;
    }

    return CTEvaluateBAASystemTestRoot(a2, a3, a4, a5, a6, a7, a10);
  }
}

uint64_t CTGetBAARootType(unint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_14:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_14;
  }

  v3[0] = a1;
  v3[1] = a1 + a2;
  if (X509CertificateParse(v4, v3))
  {
    return 0;
  }

  if (!compare_octet_string(&v4[5] + 8, &BASystemRootSPKI))
  {
    return 1;
  }

  if (!compare_octet_string(&v4[5] + 8, &BAUserRootSPKI))
  {
    return 2;
  }

  if (compare_octet_string(&v4[5] + 8, &MFi4RootSPKI))
  {
    return 4 * (compare_octet_string(&v4[5] + 8, &BASepAppRootSPKI) == 0);
  }

  return 3;
}

uint64_t CTGetBAASubCAType(unint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_14:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_14;
  }

  v3[0] = a1;
  v3[1] = a1 + a2;
  if (X509CertificateParse(v4, v3))
  {
    return 0;
  }

  if (!compare_octet_string(&v4[10] + 8, &BASystemRootSKID))
  {
    return 1;
  }

  if (!compare_octet_string(&v4[10] + 8, &BAUserRootSKID))
  {
    return 2;
  }

  if (compare_octet_string(&v4[10] + 8, &MFi4RootSKID))
  {
    return 4 * (compare_octet_string(&v4[10] + 8, &BASepAppRootSKID) == 0);
  }

  return 3;
}

uint64_t CTEvaluateDAK(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v7 = a1 + a2;
  if (a1 + a2 < a1)
  {
    goto LABEL_32;
  }

  result = CTEvaluateBAAUserTestRoot(a1, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    return result;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[17] = v12;
  v28[18] = v12;
  v28[15] = v12;
  v28[16] = v12;
  v28[13] = v12;
  v28[14] = v12;
  v28[11] = v12;
  v28[12] = v12;
  v28[9] = v12;
  v28[10] = v12;
  v28[7] = v12;
  v28[8] = v12;
  v28[5] = v12;
  v28[6] = v12;
  v28[3] = v12;
  v28[4] = v12;
  v28[1] = v12;
  v28[2] = v12;
  v28[0] = v12;
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_33;
  }

  v17[0] = a1;
  v17[1] = v7;
  result = X509ChainParseCertificateSet(v17, v28, 1, v19, &v18);
  if (result)
  {
    return result;
  }

  if (v19[0] >= v19[0] + 304)
  {
    goto LABEL_32;
  }

  if (!v19[0])
  {
    return 327691;
  }

  v26 = 0;
  v27 = 0;
  result = CTParseExtensionValue(*v19[0], *(v19[0] + 8), &CTOidAppleFDRIdentity, 9uLL, &v26, &v27);
  if (!result)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (!__CFADD__(v26, v27))
    {
      if (v26 > v26 + v27)
      {
        goto LABEL_32;
      }

      v24 = v26;
      v25 = v26 + v27;
      v23 = v27;
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return 720929;
      }

      if (v25 < v24)
      {
        goto LABEL_32;
      }

      v13 = v23;
      if (v23 > v25 - v24)
      {
        goto LABEL_32;
      }

      v26 = v24;
      v27 = v23;
      if (!__CFADD__(v24, v23))
      {
        v14 = v24;
        if (v24 < v24 + v23)
        {
          do
          {
            if (v14 < v24)
            {
              goto LABEL_32;
            }

            if (*v14 == 45)
            {
              goto LABEL_20;
            }

            ++v14;
            --v13;
          }

          while (v13);
          v14 = (v24 + v23);
        }

LABEL_20:
        if (v14 != -1)
        {
          if ((v14 + 1) >= v24 + v23)
          {
            return 327711;
          }

          if (v24 <= (v14 + 1))
          {
            v22[0] = v14 + 1;
            v22[1] = v24 + v23;
            v20 = 0;
            v21 = 0;
            v15 = CTConvertDashTerminatedHexstringTo64BitInteger(v22, &v21);
            result = 327697;
            if (!v15 && !HIDWORD(v21))
            {
              if (CTConvertDashTerminatedHexstringTo64BitInteger(v22, &v20))
              {
                return 327698;
              }

              else
              {
                result = 0;
                if (a7)
                {
                  v16 = v20;
                  *a7 = v21;
                  *(a7 + 8) = v16;
                }
              }
            }

            return result;
          }

LABEL_32:
          __break(0x5519u);
        }
      }
    }

LABEL_33:
    __break(0x5513u);
  }

  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v27 = a1;
  v28 = &a1[a2];
  v26 = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v27, 0x2000000000000010, &v26 + 1, &v25);
  result = 65537;
  if (v7)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v27, v25))
    {
      goto LABEL_110;
    }

    if (v27 > &v27[v25] || &v27[v25] > v28)
    {
      goto LABEL_108;
    }

    v23 = v27;
    v24 = &v27[v25];
    if (ccder_blob_decode_tl())
    {
      if (v24 < v23 || v25 > v24 - v23)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_signedData_oid, v23, v25))
      {
        return 65539;
      }

      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v23 += v25;
      if (!ccder_blob_decode_ber_tl(&v23, 0xA000000000000000, &v26, &v25))
      {
        return 65540;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v21 = v23;
      v22 = &v23[v25];
      v30 = 0;
      memset(v29, 170, sizeof(v29));
      if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v30 + 1, v29) & 1) == 0)
      {
        return 131073;
      }

      if (__CFADD__(v21, v29[0]))
      {
        goto LABEL_110;
      }

      v9 = 131080;
      if (&v21[v29[0]] != v22)
      {
        return 131082;
      }

      if (!ccder_blob_decode_uint64())
      {
        return 131074;
      }

      v10 = a3[11];
      result = 131092;
      if (v10 <= 4 && ((1 << v10) & 0x1A) != 0)
      {
        if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, 0, 125))
        {
          return 131075;
        }

        v34 = 0;
        v33 = 0;
        if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v34, &v33) & 1) == 0)
        {
          return 131076;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (__CFADD__(v21, v33))
        {
          goto LABEL_110;
        }

        if (v21 > &v21[v33] || &v21[v33] > v22)
        {
          goto LABEL_108;
        }

        v31 = v21;
        v32 = &v21[v33];
        if (!ccder_blob_decode_tl())
        {
          return 131077;
        }

        if (v32 < v31 || v33 > v32 - v31)
        {
          goto LABEL_108;
        }

        if (compare_octet_string_raw(&pkcs7_data_oid, v31, v33))
        {
          return 131078;
        }

        if (__CFADD__(v31, v33))
        {
          goto LABEL_110;
        }

        v11 = &v31[v33];
        if (v31 > &v31[v33] || v11 > v32)
        {
          goto LABEL_108;
        }

        v31 += v33;
        v12 = v34;
        if (v11 != v32 || (v34 & 1) != 0)
        {
          v39 = 0;
          v37 = v32;
          v38 = 0;
          v36 = v11;
          if (ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v39, &v38))
          {
            if ((v12 & 1) == 0)
            {
              if (__CFADD__(v36, v38))
              {
                goto LABEL_110;
              }

              if (&v36[v38] != v32)
              {
                return v9;
              }
            }

            if (v36 > v37)
            {
              goto LABEL_108;
            }

            v31 = v36;
            v32 = v37;
            v35 = 0;
            v15 = v39;
            if (v39 == 1 && !ccder_blob_decode_ber_tl(&v31, 0x2000000000000004, &v35, &v38))
            {
              return 131079;
            }

            v40 = 0;
            if (!ccder_blob_decode_tl())
            {
              return 131090;
            }

            v16 = v31;
            v17 = v32;
            if (v32 < v31)
            {
              goto LABEL_108;
            }

            v18 = v40;
            if (v40 > v32 - v31)
            {
              goto LABEL_108;
            }

            a3[9] = v31;
            a3[10] = v18;
            if (__CFADD__(v16, v18))
            {
LABEL_110:
              __break(0x5513u);
              return 0;
            }

            v19 = &v16[v18];
            if (v19 > v17 || v16 > v19)
            {
              goto LABEL_108;
            }

            v31 = v19;
            if ((ccder_blob_decode_eoc(&v31, v35) & 1) == 0)
            {
              return 131089;
            }
          }

          else
          {
            if (!v12)
            {
              return v9;
            }

            v15 = v39;
          }

          if ((ccder_blob_decode_eoc(&v31, v15 & 1) & 1) == 0)
          {
            return 131088;
          }

          v11 = v31;
        }

        if (v11 > v22 || v21 > v11)
        {
          goto LABEL_108;
        }

        v21 = v11;
        if ((ccder_blob_decode_eoc(&v21, v12) & 1) == 0)
        {
          return 131081;
        }

        v36 = 0xAAAAAAAAAAAAAAAALL;
        v37 = 0xAAAAAAAAAAAAAAAALL;
        if (v21 > v22)
        {
          goto LABEL_108;
        }

        v36 = v21;
        v37 = v22;
        if ((ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v30, v29) & 1) == 0)
        {
          v13 = v21;
          v14 = v22;
          goto LABEL_85;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (!__CFADD__(v36, v29[0]))
        {
          if (v36 > &v36[v29[0]] || &v36[v29[0]] > v37)
          {
            goto LABEL_108;
          }

          v31 = v36;
          v32 = &v36[v29[0]];
          if (!CMSParseImplicitCertificateSet(&v31, a3[1], *a3, a3 + 3, a3 + 2))
          {
            return 131085;
          }

          if (!ccder_blob_decode_eoc(&v31, v30))
          {
            return 131086;
          }

          v13 = v31;
          if (v31 >= v36 != v31 - v36 < 0)
          {
            if (v36 > v31)
            {
              goto LABEL_108;
            }

            v14 = v37;
            if (v31 > v37)
            {
              goto LABEL_108;
            }

            v21 = v31;
            v22 = v37;
LABEL_85:
            if (v13 <= v14)
            {
              v36 = v13;
              v37 = v14;
              if (ccder_blob_eat_ber_inner(&v36, 0xA000000000000001, 0, 125))
              {
                if (v36 > v37)
                {
                  goto LABEL_108;
                }

                v21 = v36;
                v22 = v37;
              }

              if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, &v29[1], 125))
              {
                return 131083;
              }

              if (v29[2] >= v29[1])
              {
                v20 = &v21[-v29[1]];
                if (&v21[-v29[1]] <= v29[2] - v29[1])
                {
                  a3[5] = v29[1];
                  a3[6] = v20;
                  if ((ccder_blob_decode_eoc(&v21, HIBYTE(v30)) & 1) == 0)
                  {
                    return 131084;
                  }

                  if (!ccder_blob_decode_eoc(&v21, v26))
                  {
                    return 65541;
                  }

                  if (v21 <= v24 && v23 <= v21)
                  {
                    v23 = v21;
                    if (ccder_blob_decode_eoc(&v23, HIBYTE(v26)))
                    {
                      if ((a4 & 1) == 0 && v23 != v28)
                      {
                        return 65543;
                      }

                      return 0;
                    }

                    return (v4 + 5);
                  }
                }
              }
            }

LABEL_108:
            __break(0x5519u);
            return (v4 + 5);
          }
        }

        goto LABEL_110;
      }
    }

    else
    {
      return 65538;
    }
  }

  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8)
  {
    if (a2 == 0xAAAAAAAAAAAAAAAALL)
    {
      return ccder_blob_decode_ber_len(a1, a3, a4);
    }
  }

  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v5 = v4 - 0x5555555555555556;
  if (v4 > v4 - 0x5555555555555556 || v5 > a1[1])
  {
    goto LABEL_12;
  }

  *a1 = v5;
  return 1;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
    goto LABEL_93;
  }

  v81 = *(a1 + 40);
  v82 = v4 + v3;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (v3)
    {
      return (v48 << 8) + 196616;
    }

    return result;
  }

  v8 = 0;
  v59 = 0;
  v9 = 196871;
  v10 = 256;
  do
  {
    v68 = 0;
    v79 = 0u;
    v80 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    DWORD2(v80) = 327681;
    LOBYTE(v79) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v81, 0x2000000000000010, &v68, &v69) & 1) == 0)
    {
      return (v9 - 6);
    }

    v66 = 0xAAAAAAAAAAAAAAAALL;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v81, v69))
    {
      goto LABEL_94;
    }

    if (v81 > v81 + v69 || v81 + v69 > v82)
    {
      goto LABEL_93;
    }

    v66 = v81;
    v67 = v81 + v69;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      return (v9 - 5);
    }

    v11 = v66;
    v12 = v67;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v64 = v66;
    v65 = v67;
    v62 = v66;
    v63 = v67;
    if (ccder_blob_decode_tl())
    {
      v13 = v66;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v64;
        v14 = v65;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v58 = 196611;
          return (v58 + v10);
        }

        v13 = v62;
        v14 = v63;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v66 = v13;
      v67 = v14;
    }

    if (__CFADD__(v69, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v69 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v70 + 1) = v11;
    *&v71 = v69 + v13 - v11;
    if (__CFADD__(v13, v69))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v69 || v13 + v69 > v67)
    {
      goto LABEL_93;
    }

    v66 = v13 + v69;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v71 + 1))
    {
      v58 = 196612;
      return (v58 + v10);
    }

    v60 = 0xAAAAAAAAAAAAAAAALL;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v60 = v66;
    v61 = v67;
    if (ccder_blob_decode_tl())
    {
      if (v61 < v60 || v69 > v61 - v60)
      {
        goto LABEL_93;
      }

      *(&v72 + 1) = v60;
      *&v73 = v69;
      if (__CFADD__(v60, v69))
      {
        goto LABEL_94;
      }

      if (v60 + v69 > v61 || v60 > v60 + v69)
      {
        goto LABEL_93;
      }

      v66 = v60 + v69;
      v67 = v61;
    }

    else
    {
      *(&v72 + 1) = 0;
      *&v73 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v73 + 1) & 1) == 0)
    {
      return (v9 - 2);
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      return (v9 - 1);
    }

    if (v67 < v66 || v69 > v67 - v66)
    {
      goto LABEL_93;
    }

    *(&v75 + 1) = v66;
    *&v76 = v69;
    if (__CFADD__(v66, v69))
    {
      goto LABEL_94;
    }

    v15 = v66 + v69;
    if (v66 + v69 > v67 || v66 > v15)
    {
      goto LABEL_93;
    }

    v66 += v69;
    v60 = v15;
    v61 = v67;
    if (ccder_blob_eat_ber_inner(&v60, 0xA000000000000001, 0, 125))
    {
      if (v60 > v61)
      {
        goto LABEL_93;
      }

      v66 = v60;
      v67 = v61;
    }

    if (!ccder_blob_decode_eoc(&v66, v68))
    {
      return v9;
    }

    digest = find_digest(&v71 + 8);
    if (digest)
    {
      v17 = digest;
      v18 = *(a1 + 96);
      if (!v18 || *digest <= v18)
      {
        result = a3(a2, a1, &v70);
        if (result != 327710)
        {
          if (result)
          {
            return result;
          }

          v20 = *(a1 + 64);
          if (v20 <= v59)
          {
            if (v20)
            {
              v32 = *(a1 + 56);
              v33 = 176 * v59 - 176;
              if (__CFADD__(v32, v33))
              {
                goto LABEL_94;
              }

              v34 = v32 + v33;
              if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
              {
                goto LABEL_93;
              }

              v35 = find_digest(v34 + 24);
              if (v35)
              {
                if (*v17 > *v35)
                {
                  v36 = *(a1 + 96);
                  if (!v36 || *v17 <= v36)
                  {
                    v37 = *(a1 + 56);
                    if (__CFADD__(v37, v33))
                    {
                      goto LABEL_94;
                    }

                    v38 = 176 * *(a1 + 64);
                    if ((v38 - v33) < 0xB0)
                    {
                      goto LABEL_93;
                    }

                    v39 = (v37 + v33);
                    if (v37 + v33 > v37 + v38)
                    {
                      goto LABEL_93;
                    }

                    if (v37 > v39)
                    {
                      goto LABEL_93;
                    }

                    v40 = v70;
                    v41 = v72;
                    v39[1] = v71;
                    v39[2] = v41;
                    *v39 = v40;
                    v42 = v73;
                    v43 = v74;
                    v44 = v76;
                    v39[5] = v75;
                    v39[6] = v44;
                    v39[3] = v42;
                    v39[4] = v43;
                    v45 = v77;
                    v46 = v78;
                    v47 = v80;
                    v39[9] = v79;
                    v39[10] = v47;
                    v39[7] = v45;
                    v39[8] = v46;
                    if (v39 >= v39 + 11)
                    {
                      goto LABEL_93;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v21 = *(a1 + 96);
            if (!v21 || *v17 <= v21)
            {
              v22 = *(a1 + 56);
              if (__CFADD__(v22, 176 * v59))
              {
                goto LABEL_94;
              }

              if (176 * (v20 - v59) < 0xB0)
              {
                goto LABEL_93;
              }

              v23 = (v22 + 176 * v59);
              v24 = v70;
              v25 = v72;
              v23[1] = v71;
              v23[2] = v25;
              *v23 = v24;
              v26 = v73;
              v27 = v74;
              v28 = v76;
              v23[5] = v75;
              v23[6] = v28;
              v23[3] = v26;
              v23[4] = v27;
              v29 = v77;
              v30 = v78;
              v31 = v80;
              v23[9] = v79;
              v23[10] = v31;
              v23[7] = v29;
              v23[8] = v30;
              if (v23 >= v23 + 11)
              {
                goto LABEL_93;
              }

              if (v59 == 0xFF)
              {
                __break(0x5507u);
                return result;
              }

              ++v59;
            }
          }
        }
      }
    }

    if (v66 > v82 || v81 > v66)
    {
      goto LABEL_93;
    }

    v81 = v66;
    v48 = v8 + 1;
    if (v8 > 6)
    {
      break;
    }

    v10 += 256;
    v9 = (v9 + 256);
    ++v8;
  }

  while (v66 < v82);
  if (v66 == v82)
  {
    if (v59)
    {
      return 0;
    }

    if (!*(a1 + 64))
    {
      return 0;
    }

    v49 = *(a1 + 56);
    v50 = v70;
    v51 = v72;
    v49[1] = v71;
    v49[2] = v51;
    *v49 = v50;
    v52 = v73;
    v53 = v74;
    v54 = v76;
    v49[5] = v75;
    v49[6] = v54;
    v49[3] = v52;
    v49[4] = v53;
    v55 = v77;
    v56 = v78;
    v57 = v80;
    v49[9] = v79;
    v49[10] = v57;
    v49[7] = v55;
    v49[8] = v56;
    if (v49 < v49 + 11)
    {
      return 0;
    }

LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  return (v48 << 8) + 196616;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v19 = a3[1];
  v20 = v5;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      return 524298;
    }

    v17[2] = 0xAAAAAAAAAAAAAAAALL;
    v17[3] = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v3;
    v17[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v19;
      v12 = v20;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        return 524294;
      }

      v11 = v17[0];
      v12 = v17[1];
      if (v17[0] > v17[1])
      {
        goto LABEL_54;
      }

      v19 = v17[0];
      v20 = v17[1];
    }

    if (v12 < v11 || v18 > v12 - v11)
    {
      goto LABEL_54;
    }

    v17[2] = v11;
    v17[3] = v18;
    if (__CFADD__(v11, v18))
    {
      goto LABEL_55;
    }

    if (v11 + v18 > v12 || v11 > v11 + v18)
    {
      goto LABEL_54;
    }

    v19 = v11 + v18;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v17[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      return 524295;
    }

LABEL_38:
    if (v19 != v20)
    {
      return 524543;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        return v8;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 != 1)
  {
    return 524289;
  }

  v8 = 524290;
  memset(v17, 170, sizeof(v17));
  if (ccder_blob_decode_tl())
  {
    if (ccder_blob_decode_tl())
    {
      if (v20 < v19 || v18 > v20 - v19)
      {
        goto LABEL_54;
      }

      v17[0] = v19;
      v17[1] = v18;
      if (__CFADD__(v19, v18))
      {
        goto LABEL_55;
      }

      if (v19 + v18 > v20 || v19 > v19 + v18)
      {
        goto LABEL_54;
      }

      v19 += v18;
      if (ccder_blob_decode_tl())
      {
        if (v20 < v19 || v18 > v20 - v19)
        {
          goto LABEL_54;
        }

        v17[2] = v19;
        v17[3] = v18;
        if (__CFADD__(v19, v18))
        {
          goto LABEL_55;
        }

        if (v19 + v18 > v20)
        {
          goto LABEL_54;
        }

        if (v19 > v19 + v18)
        {
          goto LABEL_54;
        }

        v19 += v18;
        v9 = (a2 + 24);
        if (a2 + 24 > (a2 + 40))
        {
          goto LABEL_54;
        }

        CertificateUsingKeyIdentifier = *v9;
        if (*v9)
        {
          while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
          {
            if (!compare_octet_string(v17, (CertificateUsingKeyIdentifier + 15)))
            {
              if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
              {
                goto LABEL_54;
              }

              if (!compare_octet_string(&v17[2], (CertificateUsingKeyIdentifier + 17)))
              {
                goto LABEL_38;
              }
            }

            CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
            if (!CertificateUsingKeyIdentifier)
            {
              return 524293;
            }
          }

          goto LABEL_54;
        }

        return 524293;
      }

      else
      {
        return 524292;
      }
    }

    else
    {
      return 524291;
    }
  }

  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3 + 24;
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    return 327682;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v89, 0, sizeof(v89));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v89;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    return 327710;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v15 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v16 = (a3 + 128);
  v17 = *(a3 + 48);
  if (!v17)
  {
    goto LABEL_157;
  }

  if (v15 < a1)
  {
    goto LABEL_183;
  }

  v74 = a1 + 16;
  v75 = v10;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v84 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *v4;
  if (__CFADD__(*v4, v17))
  {
    goto LABEL_184;
  }

  v19 = &v18[v17];
  if (v18 > v19)
  {
    goto LABEL_183;
  }

  v83 = *v4;
  v84 = v19;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  if (v18 >= v19)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v20 = 0;
  v21 = 0x96463F78648862ALL;
  v78 = 0x2000000000000010;
  v73 = 262146;
  v77 = 262147;
  v76 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v83, v82))
    {
      goto LABEL_184;
    }

    v22 = &v83[v82];
    v81 = 0xAAAAAAAAAAAAAAAALL;
    v80 = 0xAAAAAAAAAAAAAAAALL;
    if (v83 > &v83[v82] || v22 > v84)
    {
      goto LABEL_183;
    }

    v80 = v83;
    v81 = &v83[v82];
    if (!ccder_blob_decode_tl())
    {
      result = v73;
      goto LABEL_179;
    }

    v24 = v80;
    if (__CFADD__(v80, v82))
    {
      goto LABEL_184;
    }

    if (&v80[v82] > v81 || v80 > &v80[v82])
    {
      goto LABEL_183;
    }

    v80 += v82;
    if (v82 != 9)
    {
      goto LABEL_147;
    }

    if ((v81 - v24) < 9)
    {
      goto LABEL_183;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 3)
    {
      if (v20)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v35 = ccder_blob_decode_tl();
      result = v77;
      if (v35)
      {
        if (CMSAttributeParseContentType(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 1u;
      goto LABEL_134;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 4)
    {
      if ((v20 & 2) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v38 = ccder_blob_decode_tl();
      result = v77;
      if (v38)
      {
        if (CMSAttributeParseMessageDigest(&v80, v36, v37, a3))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 2u;
      goto LABEL_134;
    }

    if (*v24 == v21 && v24[8] == 2)
    {
      if ((v20 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v87 = 0xAAAAAAAAAAAAAAAALL;
      v39 = ccder_blob_decode_tl();
      result = v77;
      if (v39)
      {
        v40 = v80;
        v41 = v81;
        if (v80 >= v81)
        {
LABEL_110:
          if (v40 == v41)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v72 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v88[0] = 0xAAAAAAAAAAAAAAAALL;
            v88[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v80, v87))
            {
              goto LABEL_184;
            }

            if (v80 > &v80[v87] || &v80[v87] > v81)
            {
              goto LABEL_183;
            }

            v43 = v21;
            v88[0] = v80;
            v88[1] = &v80[v87];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v85 = 0xAAAAAAAAAAAAAAAALL;
            v86 = 0xAAAAAAAAAAAAAAAALL;
            if (v88[1] < v88[0] || v87 > v88[1] - v88[0])
            {
              goto LABEL_183;
            }

            v85 = v88[0];
            v86 = v87;
            if (__CFADD__(v88[0], v87))
            {
              goto LABEL_184;
            }

            if (v88[0] + v87 > v88[1] || v88[0] > v88[0] + v87)
            {
              goto LABEL_183;
            }

            v88[0] += v87;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v44 = v88[0];
            if (__CFADD__(v88[0], v87))
            {
              goto LABEL_184;
            }

            v45 = v88[1];
            v46 = v88[0] + v87;
            if (v88[0] + v87 > v88[1] || v88[0] > v46)
            {
              goto LABEL_183;
            }

            v88[0] += v87;
            if (v46 != v88[1])
            {
              break;
            }

            v47 = find_digest(&v85);
            if (v47)
            {
              v48 = *v47;
              if (*v47 > *(a3 + 104))
              {
                v49 = *(v72 + 8);
                if (!v49 || v48 <= v49)
                {
                  *(a3 + 104) = v48;
                  v50 = v87;
                  if (v87 > v45 - v44)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v44;
                  *(a3 + 120) = v50;
                }
              }
            }

            v40 = v88[0];
            v41 = v81;
            if (v88[0] > v81 || v80 > v88[0])
            {
              goto LABEL_183;
            }

            v80 = v88[0];
            v21 = v43;
            if (v88[0] >= v81)
            {
              a1 = v72;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v21 = v43;
LABEL_132:
          a1 = v72;
        }
      }

      v20 |= 0x10u;
      goto LABEL_134;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 5)
    {
      if ((v20 & 4) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v51 = ccder_blob_decode_tl();
      result = v77;
      if (v51)
      {
        if (CMSAttributeParseSigningTime(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 4u;
      goto LABEL_134;
    }

    if (*v24 == v21 && v24[8] == 1)
    {
      if ((v20 & 8) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v54 = ccder_blob_decode_tl();
      result = v77;
      if (v54)
      {
        if (CMSAttributeParseAppleHashAgility(&v80, v52, v53, a3))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v24 != 0x9010DF78648862ALL || v24[8] != 52)
    {
      v31 = *v24;
      v32 = v24[8];
      if (v31 != 0x9010DF78648862ALL || v32 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v20 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v34 = ccder_blob_decode_tl();
      result = v77;
      if (v34)
      {
        if (CMSAttributeParseSMIMECapabilities(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 0x40u;
      goto LABEL_134;
    }

    if ((v20 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v20 |= 0x20u;
LABEL_135:
    if (v22 > v84 || v83 > v22)
    {
      goto LABEL_183;
    }

    v83 = v22;
  }

  while (v22 < v84);
  if ((~v20 & 3) != 0)
  {
    goto LABEL_145;
  }

  v56 = ccder_sizeof_tag();
  result = ccder_sizeof_len();
  v57 = __CFADD__(v56, result);
  v58 = v56 + result;
  v10 = v75;
  if (v57)
  {
    goto LABEL_185;
  }

  if (v58 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v88, 170, 20);
  if (__CFADD__(v88, v58))
  {
LABEL_184:
    __break(0x5513u);
  }

  v85 = v88;
  v86 = v88 + v58;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v59 = v75[1];
  v57 = __CFADD__(v59, 8);
  v60 = v59 + 8;
  if (v57 || (v61 = v75[2], v57 = __CFADD__(v60, v61), v62 = v60 + v61, v57) || (v57 = __CFADD__(v62, 4), v63 = v62 + 4, v57) || v63 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  __chkstk_darwin();
  v65 = &v71 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v65, 170, ((v66 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  ccdigest_update();
  v13 = (v10[7])(v10, v65, v89);
  v15 = v74;
LABEL_157:
  if (v15 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      return 0;
    case 0x80009:
      v67 = 524297;
LABEL_168:
      *(a3 + 168) = v67;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v67 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v68 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v79[0] = v89;
  v79[1] = v68;
  v69 = *(a3 + 152);
  if (v69 >= v69 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v69, v79, v3);
  if (!result || result == 655648 || result == 655632)
  {
    v70 = *(a3 + 168);
    if (!v70 || v70 == 458753 || v70 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v16 == v89)
  {
    *v16 = 0;
    *(a3 + 136) = 0;
  }

  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSVerify(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v29 = 0;
  v30[0] = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = &v23 + 8;
  v30[1] = 0;
  memset(__b, 170, sizeof(__b));
  v22[0] = 4;
  v22[1] = __b;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v27 = v19;
  *&v28[0] = 1;
  DWORD2(v21) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v22, 0);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    result = 131091;
    if (*(v28 + 8) != 0)
    {
      return result;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v28[0] + 1) = a3;
    *&v28[1] = a4;
  }

  v30[0] = a5;
  DWORD2(v21) = 458753;
  result = CMSParseSignerInfos(v22, v30, validateSignerInfoAndChain);
  if (result)
  {
    return result;
  }

  result = DWORD2(v21);
  if (DWORD2(v21))
  {
    return result;
  }

  if (a6 && a7)
  {
    if (*(&v20 + 1) < (*(&v20 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v20 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v18 = *&v28[1];
        if (*&v28[1])
        {
          if (*(&v28[0] + 1))
          {
            *a8 = *(&v28[0] + 1);
            *a9 = v18;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  return CMSVerify(a1, a2, a3, a4, a5, &v6, &v7, &v8, &v9);
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  return CMSVerify(a1, a2, 0, 0, a5, &v6, &v7, a3, a4);
}

uint64_t ccder_blob_decode_ber_len(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t CMSParseImplicitCertificateSet(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v31, 170, sizeof(v31)), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_47:
    __break(0x5519u);
LABEL_48:
    __break(0x5513u);
  }

  v31[0] = *a1;
  v31[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v26 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v30 = 0;
      if (!ccder_blob_decode_tag())
      {
        return 0;
      }

      if (!v31[2])
      {
        goto LABEL_9;
      }

      if (!ccder_blob_decode_ber_len(v31, &v30, &v29) || (v30 & 1) != 0 || v31[2] != 0x2000000000000010)
      {
        return 0;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v26)
      {
        goto LABEL_48;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_47;
      }

      if (v16 < a2)
      {
        goto LABEL_47;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_47;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_47;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_47;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_47;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_47;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_47;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v31, 0, 0))
      {
        return 0;
      }

      v23 = v31[0];
      v24 = v31[0] - v6;
      if (v31[0] - v6 > v7 - v6)
      {
        goto LABEL_47;
      }

      if (v15 > v13)
      {
        goto LABEL_47;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v31[1];
      if (v23 > v31[1])
      {
        goto LABEL_47;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  return 1;
}

uint64_t ccder_blob_eat_ber_inner(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v15 = 0;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && v14 == a2)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    result = ccder_blob_decode_ber_len(a1, &v15, &v13);
    if ((result & 1) == 0)
    {
      return 0;
    }

    if (a3)
    {
      v10 = a1[1];
      if (*a1 > v10)
      {
        goto LABEL_18;
      }

      *a3 = *a1;
      a3[1] = v10;
    }

    if (v15 == 1)
    {
      if (a4 >= 1)
      {
        result = ccder_blob_eat_ber_inner(a1, 0, 0, (a4 - 1));
        if (!result)
        {
          return result;
        }

        return (ccder_blob_decode_eoc(a1, 1) & 1) != 0;
      }

      return 0;
    }

    v11 = *a1;
    if (__CFADD__(*a1, v13))
    {
LABEL_19:
      __break(0x5513u);
      return result;
    }

    v12 = v11 + v13;
    if (v11 <= v11 + v13 && v12 <= a1[1])
    {
      *a1 = v12;
      return 1;
    }

LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  return result;
}

uint64_t CMSAttributeParseContentType(char **a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v3 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (v3 <= v3 - 0x5555555555555556)
      {
        return compare_octet_string_raw(&pkcs7_data_oid, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseMessageDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556uLL)
    {
      __break(0x5513u);
    }

    else
    {
      if (*a1 - 0x5555555555555556 != *(a1 + 8))
      {
        return 0;
      }

      result = a4 + 24;
      if (a4 + 24 <= (a4 + 40))
      {
        result = find_digest(result);
        if (!result)
        {
          return result;
        }

        if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        result = (*(result + 24))();
        if (*result != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8);
        v8 = v7 >= *a1;
        v9 = v7 - *a1;
        if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
        {
          if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
          {
            return 1;
          }

LABEL_14:
          *(a4 + 168) = 458754;
          return 1;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseSigningTime(unint64_t *a1)
{
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v4 = *a1;
  v5 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v3 = v4;
  if (v4 > v5)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v4;
  a1[1] = v5;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    return v3 - 0x5555555555555556 == a1[1];
  }

  __break(0x5513u);
  return result;
}

uint64_t CMSAttributeParseAppleHashAgility(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v7 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (*(a4 + 104))
      {
        return 1;
      }

      if (v7 <= v7 - 0x5555555555555556)
      {
        *(a4 + 112) = v7;
        *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseSMIMECapabilities(void *a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556uLL)
    {
      __break(0x5513u);
    }

    else
    {
      return *a1 - 0x5555555555555556 == a1[1];
    }
  }

  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = *a1;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      if (v6 < v5)
      {
        goto LABEL_20;
      }

      *a2 = v5;
      a2[1] = 0;
    }

    if (v5 == v6)
    {
      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

    else if (v5 <= v6)
    {
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return result;
      }

      if (v5 != v6)
      {
        return 0;
      }

      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

LABEL_20:
    __break(0x5519u);
  }

  return result;
}

uint64_t ccder_blob_decode_Time(void *a1)
{
  if (*a1 > a1[1])
  {
    goto LABEL_6;
  }

  if (ccder_blob_decode_tl())
  {
    return 0;
  }

  if (*a1 > a1[1])
  {
LABEL_6:
    __break(0x5519u);
  }

  ccder_blob_decode_tl();
  return 0;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v10;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        return 1;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    v16 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v11;
      if (v16 < v11)
      {
        goto LABEL_42;
      }

      *a3 = v11;
      a3[1] = 0;
      v8 = 1;
LABEL_15:
      *a2 = v8;
      goto LABEL_16;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 2;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 3;
LABEL_23:
      *a2 = v9;
      goto LABEL_6;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v13 = *a1;
    v18 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 4;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 5;
      goto LABEL_23;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v14 = *a1;
    v19 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v14;
      if (v19 < v14)
      {
        goto LABEL_42;
      }

      *a3 = v14;
      a3[1] = 0;
      v8 = 6;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v15 = *a1;
    v20 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v15;
      if (v20 < v15)
      {
        goto LABEL_42;
      }

      *a3 = v15;
      a3[1] = 0;
      v8 = 7;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      v9 = 8;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[17] = v12;
      v17[18] = v12;
      v17[15] = v12;
      v17[16] = v12;
      v17[13] = v12;
      v17[14] = v12;
      v17[11] = v12;
      v17[12] = v12;
      v17[9] = v12;
      v17[10] = v12;
      v17[7] = v12;
      v17[8] = v12;
      v17[5] = v12;
      v17[6] = v12;
      v17[3] = v12;
      v17[4] = v12;
      v17[1] = v12;
      v17[2] = v12;
      v17[0] = v12;
      v15 = a1;
      v16 = a2;
      result = X509CertificateParse(v17, &v15);
      if (result)
      {
        break;
      }

      a1 = v15;
      a2 = v16;
      if (v15 > v16 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v17[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v10[0] = a1;
  v10[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v11, v10, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v12 + 1))
    {
      v9 = v13;
      if (v13)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v12 + 1);
            *a6 = v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  memset(v8, 0, sizeof(v8));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v7[0] = a1;
  v7[1] = a1 + a2;
  result = X509CertificateParse(v8, v7);
  if (!result)
  {
    return X509CertificateParseKey(v8, a3, a4);
  }

  return result;
}

uint64_t CTEvaluateCertifiedChip(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  memset(__b, 170, sizeof(__b));
  memset(v35, 170, sizeof(v35));
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v32 = a1;
  v33 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v32, __b, 4, &v35[2], &v34);
  if (CommonName)
  {
    return CommonName;
  }

  v22 = 327690;
  if (v32 != v33)
  {
    return v22;
  }

  if (v34 != 2)
  {
    return 327692;
  }

  X509ChainResetChain(v35, &v35[2]);
  __b[74] = v35[0];
  v23 = v35[0] ? (v35[0] + 296) : &v35[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v35[0] = &__b[38];
  __b[75] = v35;
  __b[36] = 0;
  __b[37] = v35[1];
  *v35[1] = __b;
  v35[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v35, a12, 0);
  if (CommonName)
  {
    return CommonName;
  }

  v24 = **(v35[1] + 8);
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v30 = a3;
  v31 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304 || v24 + 16 > v24 + 32 || v24 + 40 > v24 + 56 || v24 + 56 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v30, &ecPublicKey, v25, v24 + 16, v24 + 40);
  if (CommonName)
  {
    return CommonName;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      return 590085;
    }
  }

  v27 = v35[0];
  if (v35[0] >= v35[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v28 = X509CertificateParseKey(v35[0], a5, a6);
  if (v28)
  {
    v22 = v28;
  }

  else
  {
    v22 = 327691;
  }

  if (v27 && !v28)
  {
    if (a11)
    {
      *a11 = (*(v27 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      return 0;
    }

    v29[0] = 0;
    v29[1] = 0;
    if (v27 + 104 <= v27 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v27 + 104), v29);
      if (CommonName)
      {
        return CommonName;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = CTCopyUID(v29, a7, a8);
        if (CommonName)
        {
          return CommonName;
        }

        return 0;
      }
    }

    goto LABEL_41;
  }

  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  memset(v41, 170, sizeof(v41));
  bzero(v42, 0x4C0uLL);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v38 = a1;
  v39 = a1 + a2;
  result = X509ChainParseCertificateSet(&v38, v42, 4, &v41[2], &v40);
  if (result)
  {
    return result;
  }

  if (v38 != v39)
  {
    return 327690;
  }

  if ((a4 & 1) == 0 && !v43)
  {
    X509ChainResetChain(v41, &v41[2]);
    v20 = v41[0];
    v21 = (v41[0] + 296);
    if (!v41[0])
    {
      v21 = &v41[1];
    }

    *v21 = v44;
    v41[0] = v42;
    v44[0] = v20;
    v44[1] = v41;
LABEL_23:
    v37[0] = a7;
    v37[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    v34 = v25;
    v35 = v25;
    v33 = *a11;
    LOBYTE(v34) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v34) = v26;
    WORD1(v34) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v34 + 1) = v37;
      *&v35 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v35 + 1) = v28;
      v36 = v30;
      result = X509ChainCheckPathWithOptions(12, v41, &v33, 0);
      if (result)
      {
        return result;
      }

      v31 = v41[0];
      if (!a5 || !a6 || !v41[0])
      {
LABEL_40:
        if (a10 && v31)
        {
          v32 = v31[32];
          *a10 = v31[31];
          a10[1] = v32;
        }

        result = 0;
        if (a9)
        {
          if (v31)
          {
            result = 0;
            *a9 = v31[30];
          }
        }

        return result;
      }

      if (v41[0] < v41[0] + 304)
      {
        result = X509CertificateParseKey(v41[0], a5, a6);
        if (result)
        {
          return result;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v34 + 1) = *(a11 + 3);
      *&v35 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v42[265] != 1)
  {
    v23 = &v45;
    v22 = v42;
    goto LABEL_20;
  }

  if (!v41[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v41[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v41[2] + 304);
  v22 = v41[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v41[2], v41, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_1003B5BB0;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_1003B5BC0;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}

uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v7[1] = a3;
    v8 = 0xAAAAAAAAAAAAAA00;
    v7[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, CTCompareGeneralNameToHostname, v7);
    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

uint64_t CTCompareGeneralNameToHostname(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}

uint64_t CTEvaluateAppleSSLWithOptionalTemporalCheck(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v20 = 0xAAAAAAAA00AAAA01;
  v21 = &null_octet;
  v19 = xmmword_1003B5BD0;
  BYTE1(v20) = a6;
  BYTE2(v20) = a7;
  v22 = &null_octet;
  v23 = &null_octet;
  v24 = &CTOctetServerAuthEKU;
  v17 = 0;
  v18 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, a6, 1, &v17, &v18, 0, 0, 0, 0, &v19);
  if (!result)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16[17] = v13;
    v16[18] = v13;
    v16[15] = v13;
    v16[16] = v13;
    v16[13] = v13;
    v16[14] = v13;
    v16[11] = v13;
    v16[12] = v13;
    v16[9] = v13;
    v16[10] = v13;
    v16[7] = v13;
    v16[8] = v13;
    v16[6] = v13;
    v16[4] = v13;
    v16[5] = v13;
    v16[2] = v13;
    v16[3] = v13;
    v16[0] = v13;
    v16[1] = v13;
    memset(v15, 170, sizeof(v15));
    if (__CFADD__(a1, a2))
    {
      __break(0x5513u);
    }

    else
    {
      v14[0] = a1;
      v14[1] = a1 + a2;
      result = X509ChainParseCertificateSet(v14, v16, 1, &v15[1], v15);
      if (!result)
      {
        result = CTVerifyAppleMarkerExtension(v16, a5);
        if (!result)
        {
          return CTVerifyHostname(v16, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t CTGetSEKType(unint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_10:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_10;
  }

  v3[0] = a1;
  v3[1] = a1 + a2;
  if (X509CertificateParse(v4, v3))
  {
    return 0;
  }

  if (compare_octet_string(&v4[10] + 8, &SEKTestRootSKID))
  {
    return compare_octet_string(&v4[10] + 8, &SEKProdRootSKID) == 0;
  }

  return 2;
}

uint64_t CTEvaluateSEK(char a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 327712;
  if ((a1 & 3) != 0)
  {
    if ((a1 & 1) == 0 || (result = CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, 0, 0, 0, 0, &X509PolicySEK), result))
    {
      if ((a1 & 2) != 0)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, &SEKTestRoot_public_key, 97, 0, 0, &X509PolicySEK);
      }
    }
  }

  return result;
}

uint64_t CTGetICDPFederationType(unint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_19:
    __break(0x5513u);
  }

  if (a1 + a2 < a1)
  {
LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  v8 = a1;
  v9 = a1 + a2;
  if (X509CertificateParse(v10, &v8))
  {
    return 0;
  }

  v3 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 0;
  }

  for (i = icdpFederationAnchors; ; i += 3)
  {
    v5 = i + 3;
    if (i < icdpFederationAnchors || v5 > @"/private/var/mobile/Library/Logs/mobileactivationd" || i >= v5)
    {
      goto LABEL_18;
    }

    if (!compare_octet_string(&v10[10] + 8, *i))
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return i[2];
}

uint64_t CTEvaluateICDPFederation(uint64_t result, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ((result & 0x7F) == 0)
  {
    return 327712;
  }

  v5 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 327712;
  }

  v6 = 0;
  v7 = 0;
  v8 = off_1003EF4E8;
  while (1)
  {
    v9 = v8 - 3 < icdpFederationAnchors || v8 > @"/private/var/mobile/Library/Logs/mobileactivationd";
    if (v9 || v8 - 3 >= v8)
    {
      break;
    }

    if (*(v8 - 1) == result)
    {
      v6 = *(v8 - 2);
      v7 = (v6 + 2);
    }

    v8 += 3;
    if (!--v5)
    {
      if (!v6)
      {
        return 327712;
      }

      if ((v6 + 2) <= v7)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, *v6, v6[1], 0, 0, &X509PolicyICDPFederation);
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CTCopyUID(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *result;
  v4 = *(result + 8);
  if (__CFADD__(*result, v4))
  {
    goto LABEL_31;
  }

  v6 = v5 + v4;
  v7 = *result;
  if (v5 < v6)
  {
    while (v7 >= v5)
    {
      v3 = *v7;
      if (v3 != 45 && ++v7 < v6)
      {
        continue;
      }

      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_6:
  if (v7 == -1)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v3 = 327693;
  result = 327693;
  if ((v7 + 1) >= v6)
  {
    return result;
  }

  if (a3 < 0 || v5 > v8)
  {
LABEL_34:
    __break(0x5519u);
    return result;
  }

  if (__CFADD__(v8, v6 - v8))
  {
    goto LABEL_31;
  }

  if (v6 - v8 != 2 * a3)
  {
    return (v3 + 1);
  }

  if (__CFADD__(a2, a3) || v7 == -2)
  {
LABEL_31:
    __break(0x5513u);
    return (v3 + 1);
  }

  v9 = v7 + 2;
  v10 = a2;
  while (1)
  {
    result = 0;
    if (v9 >= v6 || v10 >= &a2[a3])
    {
      return result;
    }

    v11 = v9 - 1;
    if ((v9 - 1) >= v6 || v11 < v8)
    {
      goto LABEL_34;
    }

    v12 = &asciiNibbleToByte[*v11];
    result = &CTOidAppleImg4Manifest;
    if (v12 >= &CTOidAppleImg4Manifest || v12 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    if (v11 < v7)
    {
      goto LABEL_34;
    }

    v14 = &asciiNibbleToByte[*v9];
    result = &CTOidAppleImg4Manifest;
    if (v14 >= &CTOidAppleImg4Manifest || v14 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    v15 = *v12;
    result = 327695;
    if (v15 > 0xF)
    {
      return result;
    }

    v16 = *v14;
    if (v16 > 0xF)
    {
      return result;
    }

    if (v10 < a2)
    {
      goto LABEL_34;
    }

    *v10++ = v16 | (16 * v15);
    v9 += 2;
    if (!v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v68 = 0;
  v69 = 0;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v66 = *a2;
  v67 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return v10;
  }

  v12 = v69;
  v13 = v66;
  v14 = v69 + v66 - v4;
  if (__CFADD__(v69, v66 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v67)
  {
    goto LABEL_189;
  }

  v64 = v13;
  v65 = v15;
  v62 = v13;
  v63 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v62, v68))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v62 != v62 + v68)
    {
      return 720916;
    }

    if (v62 + v68 > v63)
    {
      goto LABEL_189;
    }

    v64 = v62;
    v65 = v63;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720917;
  }

  v16 = v64;
  v17 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v18 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v64;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v64 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v64, (a1 + 152)))
  {
    return 720918;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720919;
  }

  v20 = v64;
  v21 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v22 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v64;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v64 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720920;
  }

  v24 = v64;
  v25 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v26 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v64;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v64 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720921;
  }

  v28 = v64;
  v29 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v30 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v64;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v64 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720922;
  }

  v32 = v64;
  v33 = v68;
  v34 = v64 - v31 + v68;
  if (__CFADD__(v64 - v31, v68))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v65)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v35;
  v62 = v35;
  if (ccder_blob_decode_tl())
  {
    return 720923;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  if (ccder_blob_decode_tl())
  {
    return 720924;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v64 != v65)
      {
        return v10;
      }
    }

    else
    {
      if (v65 > a2[1] || *a2 > v65)
      {
        goto LABEL_189;
      }

      *a2 = v65;
    }

    if (!__CFADD__(v66, v69))
    {
      if (v66 > v66 + v69 || v66 + v69 > v67)
      {
        goto LABEL_189;
      }

      v66 += v69;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, (a1 + 40)))
      {
        return 720937;
      }

      *&v70[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v70[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        return 720938;
      }

      if (v60 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v70[0] + 1) >= *&v70[0])
        {
          v51 = (v60 + 7) >> 3;
          if (v51 <= *(&v70[0] + 1) - *&v70[0])
          {
            *(a1 + 56) = *&v70[0];
            *(a1 + 64) = v51;
            v52 = v67;
            if (v66 <= v67)
            {
              v10 = 0;
              *a2 = v66;
              a2[1] = v52;
              return v10;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v62, v68))
  {
    goto LABEL_190;
  }

  if (v62 > v62 + v68 || v62 + v68 > v63)
  {
    goto LABEL_189;
  }

  v60 = v62;
  v61 = v62 + v68;
  result = ccder_blob_decode_tl();
  if (!result || !v68)
  {
    return 720925;
  }

  v36 = v60;
  if (__CFADD__(v60, v68))
  {
    goto LABEL_190;
  }

  v37 = v60 + v68;
  if (v60 > v60 + v68 || v37 > v61)
  {
    goto LABEL_189;
  }

  v61 = v60 + v68;
  *(a1 + 266) = 0;
  memset(&v70[2], 0, 128);
  if (a3)
  {
    v38 = a4 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  memset(v70, 0, 32);
  if (v36 >= v37)
  {
LABEL_162:
    if (v36 != v37)
    {
      return 720925;
    }

    if (v36 > v65 || v64 > v36)
    {
LABEL_189:
      __break(0x5519u);
    }

    v64 = v37;
    goto LABEL_167;
  }

  v53 = 0;
  v40 = 0;
  while (1)
  {
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0;
    v56 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
      return 720926;
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    if (v60 > v60 + v56 || v60 + v56 > v61)
    {
      goto LABEL_189;
    }

    v54 = v60;
    v55 = v60 + v56;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720927;
    }

    if (v55 < v54 || v68 > v55 - v54)
    {
      goto LABEL_189;
    }

    v58 = v54;
    v59 = v68;
    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v54 + v68 > v55 || v54 > v54 + v68)
    {
      goto LABEL_189;
    }

    v54 += v68;
    if (!der_get_BOOLean(&v54, 1, &v57))
    {
      return 720928;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720929;
    }

    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v55 != v54 + v68)
    {
      return 720929;
    }

    if (v39)
    {
      result = compare_octet_string_raw(&v58, a3, a4);
      if (!result)
      {
        if (v55 < v54)
        {
          goto LABEL_189;
        }

        v42 = v68;
        if (v68 > v55 - v54)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v54;
        *(a1 + 256) = v42;
      }
    }

    if (v59 == 3)
    {
      if (*v58 == 7509 && *(v58 + 2) == 15)
      {
        v49 = 720930;
        if (v40)
        {
          return v49;
        }

        result = X509ExtensionParseKeyUsage();
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 1u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 19)
      {
        v49 = 720931;
        if ((v40 & 2) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseBasicConstraints(&v54, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 2u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 35)
      {
        v49 = 720932;
        if ((v40 & 4) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v54, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 4u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 14)
      {
        v49 = 720933;
        if ((v40 & 8) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v54, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 8u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 37)
      {
        v49 = 720934;
        if ((v40 & 0x10) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v54, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x10u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 17)
      {
        v49 = 720935;
        if ((v40 & 0x20) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectAltName(&v54, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v54, v68))
      {
        goto LABEL_190;
      }

      if (v54 > v54 + v68 || v54 + v68 > v55)
      {
        goto LABEL_189;
      }

      v54 += v68;
      if (v57 == 1)
      {
        *(a1 + 266) = v57;
      }

      goto LABEL_157;
    }

    if (v59 < 8)
    {
      goto LABEL_133;
    }

    if (*v58 != -2042067414 || *(v58 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v49 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v58, v70, v53))
    {
      return v49;
    }

    result = X509ExtensionParseAppleExtension(&v54, v58, v59, (a1 + 240), (a1 + 248), v39);
    if (!result)
    {
      return v49;
    }

    if (v53 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v53;
LABEL_157:
    if (v54 != v55)
    {
      return 720926;
    }

    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    v36 = v60 + v56;
    if (v60 > v60 + v56)
    {
      goto LABEL_189;
    }

    v37 = v61;
    if (v36 > v61)
    {
      goto LABEL_189;
    }

    v60 += v56;
    if (v36 >= v61)
    {
      goto LABEL_162;
    }
  }
}

uint64_t der_get_BOOLean(void *a1, int a2, _BYTE *a3)
{
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t X509ExtensionParseKeyUsage()
{
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseBasicConstraints(void *a1, void *a2, _BYTE *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (!ccder_blob_decode_uint64())
      {
        return 1;
      }

      if (*a3 == 1)
      {
        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_15;
    }

    if (v7 - 0x5555555555555556 != a1[1])
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_16;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v10;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
LABEL_15:
      __break(0x5513u);
    }

    else
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        return 1;
      }
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

uint64_t X509ExtensionParseExtendedKeyUsage(unint64_t *a1, unint64_t *a2, void *a3)
{
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (v6)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_11;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_11;
    }

    *a2 = v10;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v9 = v8 - 0x5555555555555556;
    if (v8 > v8 - 0x5555555555555556 || v9 > a1[1])
    {
LABEL_11:
      __break(0x5519u);
    }

    *a1 = v9;
  }

  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result == 1)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
{
  if (a6)
  {
    a5 = 0;
  }

  switch(a3)
  {
    case 9uLL:
      if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
      {

        return X509ExtensionParseComponentAuth(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
      {
        v57 = 0;
        result = der_get_BOOLean(result, 0, &v57);
        if (result)
        {
          v56 = 0x20000040001;
          if (v57)
          {
            v56 = 0x10000080002;
          }

          *a4 |= v56;
        }

        return result;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
      {

        return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
      {

        return X509ExtensionParseMFIAuthv3Leaf(result);
      }

      if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
      {
        if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
        {
          result = ccder_blob_check_null();
          if (!result)
          {
            return result;
          }

          v14 = *a4 | 0x8000000000;
        }

        else
        {
          if (*a2 == 0xA6463F78648862ALL && *(a2 + 8) == 1)
          {
            *a4 |= 0x1000000uLL;
            goto LABEL_249;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000;
          }

          else
          {
            if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
            {
              if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
              {
                goto LABEL_249;
              }

              return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
            }

            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000;
          }
        }

LABEL_282:
        *a4 = v14;
        return 1;
      }

      result = ccder_blob_check_null();
      if (!result)
      {
        return result;
      }

      v54 = *a4;
      v55 = 1048584;
      goto LABEL_204;
    case 0xAuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x800000100000;
      }

      else
      {
        if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 258)
        {
          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
          {
            goto LABEL_214;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0xF00;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x800000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
          {
LABEL_214:
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x40;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x100;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x400;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x1000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
          {

            return X509ExtensionParseMFISWAuth(result, a4, a5);
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
          {
            result = ccder_blob_check_null();
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x300000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
          {

            return X509ExtensionParseGenericSSLMarker();
          }

          v35 = 1;
          goto LABEL_165;
        }

        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x58600003F0D0;
      }

LABEL_204:
      v14 = v54 | v55;
      goto LABEL_282;
    case 0xBuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x400000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x200;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x800;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x2000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x100000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x4000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x21901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x8000;
        goto LABEL_282;
      }

      break;
    default:
      if (a3 < 0xA)
      {
        goto LABEL_249;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_288;
      }

      break;
  }

  v35 = 0;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      return result;
    }

    v14 = *a4 | 0x400000;
    goto LABEL_282;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 0x8004000000;
    goto LABEL_204;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3841)
    {
      v53 = *result;
      v52 = *(result + 8);
      if (a5)
      {
        if (v53 > v52)
        {
          goto LABEL_288;
        }

        *a5 = v53;
        a5[1] = v52 - v53;
      }

      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

LABEL_249:
    v53 = *result;
    v52 = *(result + 8);
LABEL_250:
    if (v53 <= v52)
    {
      *result = v52;
      return 1;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    return v8;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    return 0;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v14 = *a1;
  v15 = v6;
  if (!ccder_blob_decode_tl())
  {
    return v10;
  }

  if (!ccder_blob_decode_tl())
  {
    return 655363;
  }

  if (v14 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v14 > v14 - 0x5555555555555556 || v14 - 0x5555555555555556 > v15)
  {
    goto LABEL_30;
  }

  v13 = v14 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    return 655362;
  }

  if (a2)
  {
    if (v13 >= v14)
    {
      *a2 = v14;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v14 - 0x5555555555555556;
  if (v14 > v14 - 0x5555555555555556 || v11 > v13)
  {
    goto LABEL_30;
  }

  if (v11 == v13)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v13 - v11;
  }

  if (v13 > v15 || v14 > v13)
  {
    goto LABEL_30;
  }

  if (!ccder_blob_decode_bitstring())
  {
    return 655364;
  }

  *a4 = 0;
  a4[1] = 0;
  if (v13 == v15)
  {
    return 0;
  }

  else
  {
    return 655365;
  }
}

uint64_t X509CertificateParseKey(uint64_t a1, void *a2, void *a3)
{
  result = 327691;
  if (a1 && *(a1 + 96))
  {
    result = a1 + 88;
    v8 = 0;
    v9 = 0;
    if (a1 + 88 > (a1 + 104))
    {
      __break(0x5519u);
    }

    else
    {
      result = X509CertificateParseSPKI(result, 0, 0, &v8);
      if (!result && a2)
      {
        if (a3)
        {
          v7 = v9;
          *a2 = v8;
          *a3 = v7;
        }
      }
    }
  }

  return result;
}

uint64_t X509CertificateCheckSignatureDigest(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = 0uLL;
  v15 = 0uLL;
  v13 = 0;
  v14 = 0;
  if (a2 + 88 > (a2 + 104))
  {
    goto LABEL_22;
  }

  v7 = X509CertificateParseSPKI((a2 + 88), &v16, &v15, &v13);
  if (!v7)
  {
    v7 = 655632;
    v9 = compare_octet_string(&v16, &rsaEncryption);
    v10 = validateSignatureRSA;
    if (v9)
    {
      v11 = compare_octet_string(&v16, &ecPublicKey);
      v10 = validateSignatureEC;
      if (v11)
      {
        return 655617;
      }
    }

    if (v12 = v10, (a1) && !compare_octet_string_raw(a4, &CTOidSha1, 5uLL) || (a1 & 4) != 0 && !compare_octet_string_raw(a4, &CTOidSha256, 9uLL) || (a1 & 8) != 0 && !compare_octet_string_raw(a4, &CTOidSha384, 9uLL) || (a1 & 0x10) != 0 && !compare_octet_string_raw(a4, &CTOidSha512, 9uLL))
    {
      if ((v14 || !v13) && (a3[1] || !*a3))
      {
        if (v12(v13))
        {
          return 0;
        }

        else
        {
          return 655648;
        }
      }

LABEL_22:
      __break(0x5519u);
    }
  }

  return v7;
}

uint64_t X509CertificateCheckSignature(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v6;
  v10[3] = v6;
  v10[0] = v6;
  v10[1] = v6;
  v9[0] = v10;
  v9[1] = 64;
  v8[0] = 0;
  v8[1] = 0;
  result = X509MatchSignatureAlgorithm(a3, a4, v9, v8);
  if (!result)
  {
    return X509CertificateCheckSignatureDigest(a1, a2, v9, v8);
  }

  return result;
}

uint64_t X509MatchSignatureAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = compare_octet_string_raw(a2, &sha1WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_8;
  }

  result = compare_octet_string_raw(a2, &sha256WithRSA_oid, 9uLL);
  if (!result)
  {
LABEL_10:
    *a4 = &CTOidSha256;
    a4[1] = 9;
    if (*(a3 + 8) < 0x20uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 32;
    ccsha256_di();
    goto LABEL_14;
  }

  result = compare_octet_string_raw(a2, &sha384WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  result = compare_octet_string_raw(a2, &sha1WithECDSA_oid, 7uLL);
  if (!result)
  {
LABEL_8:
    *a4 = &CTOidSha1;
    a4[1] = 5;
    if (*(a3 + 8) < 0x14uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 20;
    ccsha1_di();
LABEL_14:
    ccdigest();
    return 0;
  }

  result = compare_octet_string_raw(a2, &sha256WithECDSA_oid, 8uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = compare_octet_string_raw(a2, &sha384WithECDSA_oid, 8uLL);
  if (result)
  {
    return 656640;
  }

LABEL_12:
  *a4 = &CTOidSha384;
  a4[1] = 9;
  if (*(a3 + 8) >= 0x30uLL)
  {
    *(a3 + 8) = 48;
    ccsha384_di();
    goto LABEL_14;
  }

LABEL_15:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureWithPublicKey(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v7;
  v16[3] = v7;
  v16[0] = v7;
  v16[1] = v7;
  v14 = v16;
  v15 = 64;
  v13 = 0uLL;
  matched = X509MatchSignatureAlgorithm(a4, a5, &v14, &v13);
  if (matched)
  {
    return matched;
  }

  matched = 655617;
  v9 = compare_octet_string(a2, &rsaEncryption);
  v10 = validateSignatureRSA;
  if (v9)
  {
    v11 = compare_octet_string(a2, &ecPublicKey);
    v10 = validateSignatureEC;
    if (v11)
    {
      return matched;
    }
  }

  result = *a1;
  if ((a1[1] || !result) && (!v14 || v15))
  {
    if (v10(result))
    {
      return 0;
    }

    else
    {
      return 655648;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseGeneralNamesContent(uint64_t a1, uint64_t (*a2)(void, int *, uint64_t), uint64_t a3)
{
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (__CFADD__(v3, v4))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 224);
  v11 = v5;
  while (1)
  {
    if (v10 >= v11)
    {
      return 0;
    }

    memset(v9, 170, sizeof(v9));
    if ((ccder_blob_decode_GeneralName(&v10, v9, &v9[1]) & 1) == 0)
    {
      break;
    }

    if ((a2(v9[0], &v9[1], a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 720912;
}

uint64_t X509CertificateSubjectNameGetCommonName(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v20 = v3;
  if (__CFADD__(*a1, v3))
  {
    goto LABEL_61;
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_60;
  }

  v18 = *a1;
  v19 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_60;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl() || !v20)
      {
        return 720898;
      }

      v2 = v18;
      if (__CFADD__(v18, v20))
      {
        break;
      }

      v7 = v18 + v20;
      if (v18 > v18 + v20 || v7 > v19)
      {
        goto LABEL_60;
      }

      v16 = v18;
      v17 = v18 + v20;
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl())
        {
          return 720899;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20 || v16 + v20 > v17)
        {
          goto LABEL_60;
        }

        v15 = v16 + v20;
        if (!ccder_blob_decode_tl())
        {
          return 720900;
        }

        v2 = v16 + v20;
        if (v16 > v15)
        {
          goto LABEL_60;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20)
        {
          goto LABEL_60;
        }

        v14 = v16 + v20;
        if (v20 == 3 && *v16 == 1109 && *(v16 + 2) == 3)
        {
          v12 = v16 + v20;
          v13 = v16 + v20;
          if ((ccder_blob_decode_tl() & 1) == 0)
          {
            if (v14 > v15)
            {
              goto LABEL_60;
            }

            v12 = v16 + v20;
            v13 = v16 + v20;
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              if (v14 > v15)
              {
                goto LABEL_60;
              }

              v12 = v16 + v20;
              v13 = v16 + v20;
              if (!ccder_blob_decode_tl())
              {
                return v6;
              }
            }
          }

          if (__CFADD__(v12, v20))
          {
            goto LABEL_61;
          }

          v2 = v16 + v20;
          if (v15 != v12 + v20)
          {
            return 720902;
          }

          if (v13 < v12 || v20 > v13 - v12)
          {
            goto LABEL_60;
          }

          *a2 = v12;
          a2[1] = v20;
        }

        v7 = v18 + v20;
        if (v2 > v17 || v16 > v2)
        {
          goto LABEL_60;
        }

        v16 = v2;
      }

      if (v2 != v7)
      {
        return 720903;
      }

      v4 = v19;
      if (v2 > v19 || v18 > v2)
      {
        goto LABEL_60;
      }

      v18 = v2;
      if (v2 >= v19)
      {
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(0x5513u);
  }

LABEL_47:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      return 0;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      return 720905;
    }

LABEL_60:
    __break(0x5519u);
    goto LABEL_61;
  }

  return 720904;
}

BOOL X509CertificateValidAtTime(uint64_t a1, time_t a2)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  if (a1 && a2 != -1)
  {
    return !X509CertificateGetNotBefore(a1, &v6) && !X509CertificateGetNotAfter(a1, &v5) && difftime(a2, v6) >= 0.0 && difftime(a2, v5) <= 0.0;
  }

  return result;
}

unint64_t X509CertificateGetNotBefore(uint64_t a1, time_t *a2)
{
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    return X509TimeConvert(v4, a2);
  }

  return result;
}

unint64_t X509CertificateGetNotAfter(uint64_t a1, time_t *a2)
{
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    return X509TimeConvert(v4, a2);
  }

  return result;
}

BOOL X509CertificateIsValid(uint64_t a1)
{
  v2 = time(0);

  return X509CertificateValidAtTime(a1, v2);
}

uint64_t X509CertificateParseValidity(uint64_t result)
{
  v1 = 720906;
  if (!result)
  {
    return v1;
  }

  v2 = *(result + 72);
  v3 = *(result + 80);
  if (!v2 || v3 == 0)
  {
    return v1;
  }

  if (__CFADD__(v2, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v2 + v3;
    if (v2 <= v5)
    {
      v6[0] = *(result + 72);
      v6[1] = v5;
      if (!ccder_blob_decode_Time(v6))
      {
        return 720907;
      }

      if (ccder_blob_decode_Time(v6))
      {
        return 0;
      }

      return 720908;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t X509TimeConvert(uint64_t a1, time_t *a2)
{
  v2 = 720909;
  if (!a1)
  {
    return v2;
  }

  v4 = *(a1 + 8);
  if ((v4 | 2) != 0xF)
  {
    return v2;
  }

  v11.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v12 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v11.tm_mon = v6;
  *&v11.tm_isdst = v6;
  *&v11.tm_sec = v6;
  v13 = 0;
  result = __memcpy_chk();
  if (result > result + v4)
  {
    goto LABEL_24;
  }

  v8 = &v12[v4];
  if (&v12[v4] >= &v14 || &v12[v4] < v12)
  {
    goto LABEL_24;
  }

  if (v4 > 0xF)
  {
    __break(1u);
    goto LABEL_26;
  }

  v12[v4] = 0;
  if (v4 != 13)
  {
    if (v8 + 1 >= v8 && v8 + 1 <= &v14)
    {
      result = strptime(v12, "%Y%m%d%H%M%SZ", &v11);
      goto LABEL_15;
    }

LABEL_24:
    __break(0x5519u);
  }

  if (BYTE5(v13))
  {
    goto LABEL_24;
  }

  result = strptime(v12, "%y%m%d%H%M%SZ", &v11);
  if (result && v11.tm_year >= 150)
  {
    v11.tm_year -= 100;
  }

LABEL_15:
  v9 = *(a1 + 8);
  if (v9 >= 0x11)
  {
LABEL_26:
    __break(0x5512u);
    goto LABEL_27;
  }

  if (!__CFADD__(v12, v9))
  {
    if (result != &v12[v9])
    {
      return 720910;
    }

    v10 = timegm(&v11);
    if (v10 == -1)
    {
      return 720911;
    }

    v2 = 0;
    if (a2)
    {
      *a2 = v10;
    }

    return v2;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

BOOL X509ExtensionParseComponentAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  v12 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v13;
    v7 = v14;
    if (v13 > v14)
    {
      goto LABEL_19;
    }

    *a1 = v13;
    a1[1] = v14;
    v9 = v12;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        return v7 == v10;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

  return v7 == v10;
}

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      goto LABEL_12;
    }

    v8 = v7 - 0x5555555555555556;
    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    *a2 |= 0x30000000000uLL;
    if (a3)
    {
      if (v7 > v8)
      {
        goto LABEL_12;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    if (v7 <= v8)
    {
      *a1 = v8;
      return 1;
    }

LABEL_12:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v4 = a1[1];
      if (v4 != v3 - 0x5555555555555556)
      {
        return 0;
      }

      if (v3 <= v4)
      {
        *a1 = v3 - 0x5555555555555556;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseMFISWAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v8 = a1[1];
      if (v8 != v7 - 0x5555555555555556)
      {
        return 0;
      }

      if (a3)
      {
        if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_13;
        }

        *a3 = v7;
        a3[1] = 0xAAAAAAAAAAAAAAAALL;
      }

      *a2 |= 0x30000000uLL;
      if (v7 <= v8)
      {
        *a1 = v7 - 0x5555555555555556;
        return 1;
      }
    }

LABEL_13:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseServerAuthMarker(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null();
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= &_mh_execute_header;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseDeviceAttestationIdentity(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_17;
    }

    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_18;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      result = ccder_blob_decode_tl();
      if (result)
      {
        if (a3)
        {
          if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
          {
            goto LABEL_18;
          }

          *a3 = v10;
          a3[1] = 0xAAAAAAAAAAAAAAAALL;
        }

        *a2 |= 0x240000800000uLL;
        v8 = *a1;
        if (*a1 < 0x5555555555555556)
        {
          v9 = v8 - 0x5555555555555556;
          if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
          {
            *a1 = v9;
            return 1;
          }

LABEL_18:
          __break(0x5519u);
          return result;
        }

LABEL_17:
        __break(0x5513u);
        goto LABEL_18;
      }
    }
  }

  return result;
}

unint64_t *X509ExtensionParseMFI4Properties(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

unint64_t *X509ChainParseCertificateSet(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4)
  {
LABEL_33:
    __break(0x5519u);
LABEL_34:
    __break(0x5513u);
    return result;
  }

  v5 = result;
  v6 = *result >= result[1] || a3 == 0;
  if (!v6)
  {
    v10 = 0;
    v11 = a2 + 304 * a3;
    v12 = ~a2;
    v13 = (a4 + 1);
    v14 = a3 - 1;
    v15 = (a2 + 272);
    while ((v10 * 304) >> 64 == (304 * v10) >> 63 && 304 * v10 <= v12)
    {
      v16 = (v15 - 34);
      if (v15 != 272 && (v16 < a2 || (v15 + 4) > v11 || v16 > (v15 + 4)))
      {
        goto LABEL_33;
      }

      result = X509CertificateParse(v15 - 34, v5);
      if (result)
      {
        return result;
      }

      if (v10)
      {
        if (v16 < a2)
        {
          goto LABEL_33;
        }

        if ((v15 + 4) > v11)
        {
          goto LABEL_33;
        }

        v17 = *v13;
        *v15 = 0;
        v15[1] = v17;
        if (v16 > (v15 + 4))
        {
          goto LABEL_33;
        }

        *v17 = v16;
        *v13 = v15;
      }

      else
      {
        v18 = *a4;
        *v15 = *a4;
        if (v18)
        {
          v19 = (v18 + 280);
        }

        else
        {
          v19 = v13;
        }

        *v19 = v15;
        *a4 = v16;
        if (v13 < a4)
        {
          goto LABEL_33;
        }

        v15[1] = a4;
      }

      v7 = v10 + 1;
      if (*v5 < v5[1])
      {
        v15 += 38;
        v6 = v14 == v10++;
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  result = 0;
  *a5 = v7;
  return result;
}

unint64_t *X509ChainGetCertificateUsingKeyIdentifier(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return v2;
  }

  while (!*(v2 + 192))
  {
LABEL_6:
    v2 = *(v2 + 272);
    if (!v2)
    {
      return v2;
    }
  }

  if (v2 < v2 + 304 && v2 + 184 <= v2 + 200)
  {
    result = compare_octet_string(a2, v2 + 184);
    if (!result)
    {
      return v2;
    }

    goto LABEL_6;
  }

  __break(0x5519u);
  return result;
}

void *X509ChainResetChain(void *result, void *a2)
{
  *result = 0;
  if (result + 1 < result)
  {
LABEL_7:
    __break(0x5519u);
    return result;
  }

  result[1] = result;
  v2 = *a2;
  if (*a2)
  {
    while (v2 < v2 + 38)
    {
      v2[36] = 0;
      v2[37] = 0;
      if (v2 + 36 > v2 + 38)
      {
        break;
      }

      v2 = v2[34];
      if (!v2)
      {
        return result;
      }
    }

    goto LABEL_7;
  }

  return result;
}

unint64_t X509ChainBuildPathPartial(unint64_t result, unint64_t *a2, unint64_t *a3, int a4)
{
  if (!result)
  {
    return 327691;
  }

  *a3 = 0;
  v5 = (a3 + 1);
  if (a3 + 1 < a3 || (v6 = result, a3[1] = a3, *(result + 288) = 0, result + 288 > result + 296) || (*a3 = result, a3[1] = result + 288, *(result + 296) = a3, result + 304 < result) || (v7 = result + 120, result + 120 > result + 136))
  {
LABEL_38:
    __break(0x5519u);
  }

  else
  {
    while (1)
    {
      result = compare_octet_string(v7, (v6 + 13));
      if (!result)
      {
        break;
      }

      v10 = (v6 + 21);
      if (!v6[22])
      {
        goto LABEL_13;
      }

      if (v10 > (v6 + 23))
      {
        goto LABEL_38;
      }

      result = X509ChainGetCertificateUsingKeyIdentifier(a2, (v6 + 21));
      if (!result)
      {
        goto LABEL_13;
      }

      v11 = result;
      v12 = result + 304;
      if (result >= result + 304)
      {
        goto LABEL_38;
      }

      result += 104;
      if (v11 + 13 > v11 + 15)
      {
        goto LABEL_38;
      }

      result = compare_octet_string(result, v7);
      if (result)
      {
LABEL_13:
        v11 = *a2;
        if (*a2)
        {
          do
          {
            v12 = (v11 + 38);
            if (v11 >= v11 + 38 || v11 + 13 > v11 + 15)
            {
              goto LABEL_38;
            }

            result = compare_octet_string(v7, (v11 + 13));
            if (!result)
            {
              goto LABEL_19;
            }

            v11 = v11[34];
          }

          while (v11);
        }

        if (v10 > (v6 + 23))
        {
          goto LABEL_38;
        }

        if (X509ChainGetAppleRootUsingKeyIdentifier((v6 + 21), 1))
        {
          return 0;
        }

        BAARootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier((v6 + 21));
        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = 524296;
        }

        if (BAARootUsingKeyIdentifier)
        {
          return 0;
        }

        else
        {
          return v16;
        }
      }

LABEL_19:
      v6 = v11;
      v13 = *a3;
      if (*a3)
      {
        while (v13 != v11)
        {
          v13 = v13[36];
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        return 524297;
      }

LABEL_22:
      if ((v11 + 38) <= v12)
      {
        v14 = *v5;
        v11[36] = 0;
        v11[37] = v14;
        if (v11 <= v11 + 38)
        {
          *v14 = v11;
          *v5 = v11 + 36;
          v7 = (v11 + 15);
          if (v11 + 15 <= v11 + 17)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }
  }

  return result;
}

uint64_t X509ChainGetAppleRootUsingKeyIdentifier(uint64_t result, int a2)
{
  v2 = &numAppleRoots;
  if (!a2)
  {
    v2 = &numAppleProdRoots;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    for (i = &AppleRoots; ; ++i)
    {
      v6 = i + 1;
      v7 = i < &AppleRoots || v6 > AppleRootSPKIs;
      if (v7 || i > v6)
      {
        break;
      }

      v9 = *i;
      v10 = *i + 184;
      if (v10 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v4, v10);
      if (!result)
      {
        if (v9 < v9 + 304)
        {
          return v9;
        }

        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainGetBAARootUsingKeyIdentifier(uint64_t result)
{
  v1 = numBAARoots;
  if (numBAARoots)
  {
    v2 = result;
    for (i = &BAARoots; ; ++i)
    {
      v4 = i + 1;
      v5 = i < &BAARoots || v4 > &SEKTestRootPublicKey;
      if (v5 || i > v4)
      {
        break;
      }

      v7 = *i;
      v8 = *i + 184;
      if (v8 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v2, v8);
      if (!result)
      {
        if (v7 < v7 + 304)
        {
          return v7;
        }

        break;
      }

      if (!--v1)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainCheckPathWithOptions(char a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v8 = *a2;
  if (a3)
  {
    v9 = *(a3 + 48);
    if (v9)
    {
      if (*(v9 + 8))
      {
        if (v8 + 208 > v8 + 224)
        {
          goto LABEL_133;
        }

        if (compare_octet_string(v9, v8 + 208))
        {
          return 327701;
        }

        v8 = *v6;
      }
    }
  }

  if (!v8)
  {
    v23 = 0;
    v21 = 0;
    v13 = -1;
    if (a3)
    {
      goto LABEL_67;
    }

    goto LABEL_120;
  }

  v50 = v6;
  v51 = a4;
  v11 = 0;
  v12 = 0;
  v52 = 0;
  v13 = -1;
  do
  {
    v14 = v8 + 304;
    v15 = *(v8 + 288);
    v16 = v15 + 304;
    if (v15)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v8 + 120, v8 + 104))
    {
      v17 = 0;
      v15 = v8;
      v16 = v8 + 304;
      goto LABEL_12;
    }

    if (!a3)
    {
      return v12 | 0x9000Du;
    }

    if (*(a3 + 16) == 1)
    {
      AppleRootUsingKeyIdentifier = X509ChainGetAppleRootUsingKeyIdentifier(v8 + 168, *(a3 + 17));
      goto LABEL_63;
    }

    if (*(a3 + 24))
    {
      AppleRootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v8 + 168);
LABEL_63:
      v15 = AppleRootUsingKeyIdentifier;
      v52 |= AppleRootUsingKeyIdentifier != 0;
      v16 = AppleRootUsingKeyIdentifier + 304;
      if (AppleRootUsingKeyIdentifier)
      {
        goto LABEL_11;
      }
    }

    if ((*(a3 + 19) & 1) == 0)
    {
      return v12 | 0x9000Du;
    }

    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (v11 && *(v8 + 32) >= 2uLL)
    {
      if ((*(v8 + 265) & 1) == 0)
      {
        v49 = 589825;
        return v12 | v49;
      }

      if ((*(v8 + 264) & 4) == 0)
      {
        v49 = 589826;
        return v12 | v49;
      }
    }

    v18 = *(v8 + 200);
    if (v18 && v18 < v11)
    {
      v49 = 589827;
      return v12 | v49;
    }

    if (*(v8 + 266) == 1)
    {
      v49 = 589831;
      return v12 | v49;
    }

    if (compare_octet_string(v8 + 40, v8 + 152))
    {
      v49 = 589828;
      return v12 | v49;
    }

    if ((v17 & 1) == 0 && *(v8 + 168) && *(v8 + 176))
    {
      if (v15 + 304 > v16 || v15 > v15 + 304 || v15 + 184 > v15 + 200)
      {
        goto LABEL_133;
      }

      if (compare_octet_string(v8 + 168, v15 + 184))
      {
        return v12 | 0x9000Au;
      }
    }

    if (a3 && v11 && (*(v8 + 240) & *(a3 + 8)) == 0)
    {
      X509PolicySetFlagsForCommonNames(v8);
    }

    if (v15 == v8 && !*(v8 + 240))
    {
      X509PolicySetFlagsForRoots(a3, v8);
      if (!a3)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

    if (v15 != v8 && *(a3 + 18) == 1 && !X509CertificateIsValid(v8))
    {
      return v12 | 0x90009u;
    }

LABEL_38:
    if (!a3 || v11)
    {
      v13 &= *(v8 + 240);
      if (!a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *(v8 + 240);
      if ((v19 & *(a3 + 8)) == 0)
      {
        X509PolicySetFlagsForMFI(v8);
        v19 = *(v8 + 240);
      }

      v13 &= v19;
    }

    v20 = *(a3 + 8);
    if (v20 && (v20 & v13) == 0)
    {
      v49 = 589829;
      return v12 | v49;
    }

LABEL_46:
    a1 |= v15 == v8;
    if ((v17 & 1) == 0)
    {
      if (v15 + 304 > v16 || v15 > v15 + 304)
      {
        goto LABEL_133;
      }

      result = X509CertificateCheckSignature(a1, v15, v8 + 16, v8 + 40);
      if (result)
      {
        return result;
      }
    }

    v21 = v11 + 1;
    if (v11 == -1)
    {
      goto LABEL_134;
    }

    v8 = *(v8 + 288);
    v12 += 256;
    ++v11;
  }

  while (v8);
  v6 = v50;
  a4 = v51;
  v23 = v52;
  if (!a3)
  {
    goto LABEL_120;
  }

LABEL_67:
  if (*a3)
  {
    v24 = v21;
    if ((v23 & 1) == 0 || (v24 = v21 + 1, v21 != -1))
    {
      if (*a3 != v24)
      {
        return (v24 << 8) | 0x90006u;
      }

      goto LABEL_71;
    }

LABEL_134:
    __break(0x5500u);
  }

LABEL_71:
  v25 = *(a3 + 24);
  if (v25 && *(v25 + 8))
  {
    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
    if ((*(a3 + 16) & 1) == 0)
    {
      memset(v54, 170, sizeof(v54));
      v29 = (v27 + 88);
      v30 = v27 >= v28 || v29 > v27 + 104;
      v53[0] = 0xAAAAAAAAAAAAAAAALL;
      v53[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!v30)
      {
        if (X509CertificateParseSPKI(v29, &v54[2], v53, v54))
        {
          goto LABEL_82;
        }

        if (compare_octet_string(&v54[2], *(a3 + 32)) || compare_octet_string(v54, *(a3 + 24)))
        {
          if (X509CertificateCheckSignatureWithPublicKey(*(a3 + 24), *(a3 + 32), *(a3 + 40), v27 + 16, v27 + 40))
          {
LABEL_82:
            v31 = 589832;
            return v26 | v31;
          }
        }

        else if (!compare_octet_string(*(a3 + 32), &ecPublicKey))
        {
          compare_octet_string(v53, *(a3 + 40));
        }

        goto LABEL_120;
      }

      goto LABEL_133;
    }
  }

  else
  {
    if (*(a3 + 16) != 1)
    {
      goto LABEL_120;
    }

    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
  }

  if (v27 > v28)
  {
    goto LABEL_133;
  }

  v32 = 200;
  v33 = 184;
  if (v23)
  {
    v32 = 184;
    v33 = 168;
  }

  v34 = v27 + v33;
  v35 = v27 + v33 + 16;
  if (v35 > v27 + v32 || v34 > v35)
  {
    goto LABEL_133;
  }

  v37 = X509ChainGetAppleRootUsingKeyIdentifier(v34, *(a3 + 17));
  if (!v37)
  {
    return v26 | 0x9000Bu;
  }

  v38 = v37;
  v39 = v37 + 304;
  if ((v23 & 1) == 0)
  {
    v40 = v27 + 88 > v27 + 104 || v37 >= v39;
    v41 = v37 + 88;
    if (v40 || v41 > v37 + 104)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v27 + 88, v41))
    {
      goto LABEL_120;
    }
  }

  v43 = v27 + 16;
  v44 = v38 > v39 || v43 > v27 + 32;
  v45 = v27 + 40;
  v46 = v27 + 56;
  if (v44 || v45 > v46 || v46 > v27 + 72)
  {
LABEL_133:
    __break(0x5519u);
    goto LABEL_134;
  }

  if (X509CertificateCheckSignature(29, v38, v43, v45))
  {
    v31 = 589836;
    return v26 | v31;
  }

LABEL_120:
  result = 0;
  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

void __scheduleXPCActivity_block_invoke_21_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = 136315138;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to defer activity: %s", &v3, 0xCu);
}

void libInFieldCollectionLibrary_cold_1(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *libInFieldCollectionLibrary(void)"];
  [(NSAssertionHandler *)v2 handleFailureInFunction:v3 file:@"MACollectionInterface.m" lineNumber:42 description:@"%s", *a1];

  __break(1u);
}

void __getSUManagerClientClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getSUManagerClientClass(void)_block_invoke"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"support.m" lineNumber:26 description:@"Unable to find class %s", "SUManagerClient"];

  __break(1u);
}

void __getSUManagerClientClass_block_invoke_cold_2(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *SoftwareUpdateServicesLibrary(void)"];
  [(NSAssertionHandler *)v2 handleFailureInFunction:v3 file:@"support.m" lineNumber:24 description:@"%s", *a1];

  __break(1u);
}

void __issueClientCertificateWithReferenceKey_block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1(__stack_chk_guard);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Failed to enable cellular bootstrap assertion: %@", v2, v3, v4, v5, v6);
}

void __issueClientCertificateWithReferenceKey_block_invoke_4_cold_2()
{
  OUTLINED_FUNCTION_1(__stack_chk_guard);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Failed to enable cellular OTA assertion: %@", v2, v3, v4, v5, v6);
}

void __issueClientCertificateWithReferenceKey_block_invoke_4_cold_3()
{
  OUTLINED_FUNCTION_1(__stack_chk_guard);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Failed to disable cellular bootstrap assertion: %@", v2, v3, v4, v5, v6);
}

void __issueClientCertificateWithReferenceKey_block_invoke_4_cold_4()
{
  OUTLINED_FUNCTION_1(__stack_chk_guard);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Failed to disable cellular OTA assertion: %@", v2, v3, v4, v5, v6);
}

void __ucrt_oob_activity_handler_block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_3();
  v3 = 1024;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Failed to query UCRT healing support (%@). Rescheduling UCRT OOB for %d seconds.", v2, 0x12u);
}

void __getMSDKManagedDeviceClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getMSDKManagedDeviceClass(void)_block_invoke"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"activation_support.m" lineNumber:28 description:@"Unable to find class %s", "MSDKManagedDevice"];

  __break(1u);
}

void __getMSDKManagedDeviceClass_block_invoke_cold_2(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *MobileStoreDemoKitLibrary(void)"];
  [(NSAssertionHandler *)v2 handleFailureInFunction:v3 file:@"activation_support.m" lineNumber:27 description:@"%s", *a1];

  __break(1u);
}

void copySplunkDeviceIdentifiers_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __writeSplunkLog_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __writeSplunkLog_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __writeSplunkLog_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __writeSplunkLog_block_invoke_cold_5(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 lastObject];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_fault_impl(&_mh_execute_header, a4, OS_LOG_TYPE_FAULT, "Too many splunk log files, removing %@.", a1, 0xCu);
}

void __writeSplunkLog_block_invoke_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __writeSplunkLog_block_invoke_cold_8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __writeSplunkLog_block_invoke_cold_9(void *a1, NSObject *a2)
{
  [a1 length];
  OUTLINED_FUNCTION_3();
  v4 = 1024;
  v5 = 0x100000;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Splunk log is too big (%ld > %d).", v3, 0x12u);
}

void __writeSplunkLog_block_invoke_cold_10()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __writeSplunkLog_block_invoke_cold_11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __writeSplunkLog_block_invoke_cold_12()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __writeSplunkLog_block_invoke_cold_13()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __writeSplunkLog_block_invoke_cold_14()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __splunk_activity_handler_block_invoke_2_57_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, a2, a3, "Failed to perform splunk logging (will not retry post => %@): %@", *v3, *&v3[8], *&v3[16]);
}

void __splunk_daily_stats_activity_handler_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __getLAContextClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getLAContextClass(void)_block_invoke"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"identity_support.m" lineNumber:22 description:@"Unable to find class %s", "LAContext"];

  __break(1u);
}

void __getLAContextClass_block_invoke_cold_2(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *LocalAuthenticationLibrary(void)"];
  [(NSAssertionHandler *)v2 handleFailureInFunction:v3 file:@"identity_support.m" lineNumber:21 description:@"%s", *a1];

  __break(1u);
}

void getAKAuthenticationPasswordKey_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getAKAuthenticationPasswordKey(void)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"authkit.m" lineNumber:24 description:@"%s", dlerror()];

  __break(1u);
}

void getAKAuthenticationUsernameKey_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getAKAuthenticationUsernameKey(void)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"authkit.m" lineNumber:25 description:@"%s", dlerror()];

  __break(1u);
}

void AuthKitLibrary_cold_1(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AuthKitLibrary(void)"];
  [(NSAssertionHandler *)v2 handleFailureInFunction:v3 file:@"authkit.m" lineNumber:21 description:@"%s", *a1];

  __break(1u);
}

void libavp_send_host_message_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"CFDataRef gAppleVirtualPlatformSendSubsystemMessageToHost(AppleVirtualPlatformMessageSubsystem, CFDataRef, CFErrorRef *)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:34 description:@"%s", dlerror()];

  __break(1u);
}

void libavp_copy_strong_identity_data_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"CFStringRef getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsec(void)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:44 description:@"%s", dlerror()];

  __break(1u);
}

void libavp_copy_strong_identity_data_cold_2()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"CFDataRef gAppleVirtualPlatformGuestCopyStrongIdentityData(CFDictionaryRef, CFErrorRef *)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:32 description:@"%s", dlerror()];

  __break(1u);
}

void libavp_copy_strong_identity_data_cold_3()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"CFStringRef getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnly(void)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:41 description:@"%s", dlerror()];

  __break(1u);
}

void libavp_copy_strong_identity_data_cold_4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"CFStringRef getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronous(void)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:38 description:@"%s", dlerror()];

  __break(1u);
}

void libavp_guest_has_host_key_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"_Bool gAppleVirtualPlatformGuestHasHostKey(void)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:36 description:@"%s", dlerror()];

  __break(1u);
}

void AppleVirtualPlatformLibrary_cold_1(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AppleVirtualPlatformLibrary(void)"];
  [(NSAssertionHandler *)v2 handleFailureInFunction:v3 file:@"vm_libavp.m" lineNumber:26 description:@"%s", *a1];

  __break(1u);
}

void isSupportedDeviceIdentityClient_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

void main_cold_1()
{
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  v3 = [(NSError *)createAndLogError("main" description:@"com.apple.MobileActivation.ErrorDomain"];
  [v3 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_2()
{
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  v3 = [(NSError *)createAndLogError("main" description:@"com.apple.MobileActivation.ErrorDomain"];
  [v3 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_3()
{
  v0 = [(NSError *)createAndLogError("main" description:@"com.apple.MobileActivation.ErrorDomain"];
  [v0 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_4(id a1)
{
  v2 = createAndLogError("main", 342, @"com.apple.MobileActivation.ErrorDomain", -1, a1, @"Failed to get backup exclusion on container path.");
  OUTLINED_FUNCTION_0_1();
  v3 = [v1 description];
  [v3 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_5(id a1)
{
  v2 = createAndLogError("main", 348, @"com.apple.MobileActivation.ErrorDomain", -1, a1, @"Failed to set backup exclusion on container path.");
  OUTLINED_FUNCTION_0_1();
  v3 = [v1 description];
  [v3 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_6()
{
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  v3 = createAndLogError("main", 358, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve password database info for user: %d (%s)", v0, v2);
  OUTLINED_FUNCTION_0_1();
  v4 = [@"com.apple.MobileActivation.ErrorDomain" description];
  [v4 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_7(id a1)
{
  v2 = createAndLogError("main", 396, @"com.apple.MobileActivation.ErrorDomain", -1, a1, @"Failed to perform boot initialization tasks.");
  OUTLINED_FUNCTION_0_1();
  v3 = [v1 description];
  [v3 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_8(id a1)
{
  v2 = createAndLogError("main", 407, @"com.apple.MobileActivation.ErrorDomain", -1, a1, @"Migration failed.");
  OUTLINED_FUNCTION_0_1();
  v3 = [v1 description];
  [v3 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_9()
{
  v1 = createAndLogError("main", 450, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to initialize lockdown server.");
  OUTLINED_FUNCTION_0_1();
  v2 = [v0 description];
  [v2 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_11()
{
  v1 = createAndLogError("main", 438, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to initialize XPC server.");
  OUTLINED_FUNCTION_0_1();
  v2 = [v0 description];
  [v2 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_12()
{
  v1 = createAndLogError("main", 390, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create data ark.");
  OUTLINED_FUNCTION_0_1();
  v2 = [v0 description];
  [v2 UTF8String];
  _os_crash();

  __break(1u);
}

void main_cold_13()
{
  v1 = createAndLogError("main", 383, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create serial queue.");
  OUTLINED_FUNCTION_0_1();
  v2 = [v0 description];
  [v2 UTF8String];
  _os_crash();

  __break(1u);
}

void __main_block_invoke_2_cold_1(id a1)
{
  v2 = createAndLogError("main_block_invoke_2", 429, @"com.apple.MobileActivation.ErrorDomain", -1, a1, @"Migration failed.");
  OUTLINED_FUNCTION_0_1();
  v3 = [v1 description];
  [v3 UTF8String];
  _os_crash();

  __break(1u);
}

void __perform_boot_initialization_tasks_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to query monotonic clock: %@", &v2, 0xCu);
}

void __handle_eligibility_domain_input_needed_notification_block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to set eligibility input: %@", &v2, 0xCu);
}

void *aks_params_create(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_28();
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    if (a1)
    {
      if (encode_list_merge_dict(v2))
      {
        OUTLINED_FUNCTION_6(v3);
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t aks_params_set_number(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7();
  if (_params_get_der_key(v5, 1))
  {
    v6 = OUTLINED_FUNCTION_49();
    if (!encode_list_remove_key(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      v8 = OUTLINED_FUNCTION_49();
      if (!encode_list_add_number(v8, v9, v10))
      {
        return 0;
      }
    }
  }

  return v3;
}

void aks_params_set_data()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_7();
  der_key = _params_get_der_key(v6, 2);
  if (der_key && !encode_list_remove_key(v5, der_key) && v1)
  {
    if (v3 == 1 || v3 == 2)
    {
      ccder_blob_decode_tag();
    }

    else
    {
      OUTLINED_FUNCTION_54();
      encode_list_add_data();
    }
  }

  OUTLINED_FUNCTION_44();
}

uint64_t aks_params_free(void ***a1)
{
  result = 3758097090;
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      *a1 = 0;
      encode_list_free(v3);
      OUTLINED_FUNCTION_6(v3);
      free(v3);
      return 0;
    }
  }

  return result;
}

uint64_t aks_ref_key_create(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = 3758097090;
  v11 = OUTLINED_FUNCTION_28();
  *v11 = 0;
  encode_list_add_key();
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  if (!a6)
  {
    goto LABEL_14;
  }

  v12 = OUTLINED_FUNCTION_59();
  v22 = v12;
  if (!v12)
  {
    v10 = 3758604298;
    goto LABEL_14;
  }

  v13 = v12;
  OUTLINED_FUNCTION_29(v12);
  if (a4 && encode_list_merge_dict(v11) || encode_list_add_number(v11, der_key_keybag_class, a2) || encode_list_add_number(v11, der_key_type, a3) || encode_list_dict(v11, &v25, &v26))
  {
LABEL_17:
    aks_ref_key_free(&v22);
    goto LABEL_14;
  }

  v14 = _aks_operation();
  if (v14)
  {
    v10 = v14;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19(v23, v24);
  OUTLINED_FUNCTION_30();
  if (der_dict_find_value(v15, v16, v17))
  {
    v13[4] = 0;
  }

  OUTLINED_FUNCTION_30();
  if (der_dict_find_value(v18, v19, v20))
  {
    v13[3] = 0;
  }

  v10 = 0;
  *a6 = v13;
  v23 = 0;
  v24 = 0;
LABEL_14:
  encode_list_free(v11);
  OUTLINED_FUNCTION_6(v11);
  free(v11);
  OUTLINED_FUNCTION_22(v25, v26);
  free(v25);
  OUTLINED_FUNCTION_22(v23, v24);
  free(v23);
  return v10;
}

uint64_t aks_ref_key_free(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 3758097090;
  }

  *a1 = 0;
  if (*v1)
  {
    OUTLINED_FUNCTION_22(*v1, *(v1 + 8));
    free(*v1);
  }

  v2 = *(v1 + 48);
  if (v2)
  {
    OUTLINED_FUNCTION_22(v2, *(v1 + 56));
    free(*(v1 + 48));
  }

  v3 = *(v1 + 64);
  if (v3)
  {
    OUTLINED_FUNCTION_22(v3, *(v1 + 72));
    free(*(v1 + 64));
  }

  OUTLINED_FUNCTION_29(v1);
  free(v1);
  return 0;
}

uint64_t aks_ref_key_create_with_blob()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    v5 = v3;
    if (v3)
    {
      v6 = v4;
      v7 = v2;
      v8 = v1;
      if (der_get_sizeof(v2) == v3)
      {
        OUTLINED_FUNCTION_45();
        v9 = OUTLINED_FUNCTION_59();
        v12 = v9;
        if (v9)
        {
          v10 = v9;
          OUTLINED_FUNCTION_29(v9);
          *(v10 + 40) = v8;
          if (_set_blob(v10, v7, v5))
          {
            aks_ref_key_free(&v12);
          }

          else
          {
            v0 = 0;
            *v6 = v10;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t _aks_operation()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v8)
    {
      v11 = aks_client_connection;
      v12 = 3758097090;
      if (der_get_sizeof(v8) == v6)
      {
        bzero(__src, 0x8000uLL);
        __count = 0x8000;
        input = v9;
        v12 = IOConnectCallMethod(v11, 0x2Bu, &input, 1u, v8, v6, 0, 0, __src, &__count);
        if (!v12 && v4 && v2)
        {
          v13 = calloc(__count, 1uLL);
          *v4 = v13;
          if (v13)
          {
            memcpy(v13, __src, __count);
            v12 = 0;
            *v2 = __count;
          }

          else
          {
            v12 = 3758097085;
          }
        }
      }
    }

    else
    {
      v12 = 3758097090;
    }
  }

  else
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", "", -1, "", "", "", "", "_aks_operation", ":", 457, "", "");
    v12 = 3758097084;
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  return v12;
}

uint64_t _set_blob(uint64_t a1, const void *a2, size_t a3)
{
  OUTLINED_FUNCTION_16();
  if (!der_dict_find_value(v6, v7, v8))
  {
    return 3758097090;
  }

  if (*a1)
  {
    OUTLINED_FUNCTION_22(*a1, *(a1 + 8));
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v9 = calloc(a3, 1uLL);
  *a1 = v9;
  *(a1 + 8) = a3;
  if (!v9)
  {
    return 3758604298;
  }

  memcpy(v9, a2, a3);
  *(a1 + 16) = *a1 + *(a1 + 8);
  OUTLINED_FUNCTION_16();
  if (der_dict_find_value(v10, v11, v12))
  {
    *(a1 + 32) = 0;
  }

  OUTLINED_FUNCTION_16();
  if ((der_dict_find_value(v13, v14, v15) & 1) != 0 || (OUTLINED_FUNCTION_16(), result = der_dict_find_value(v16, v17, v18), result))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t _get_merged_params()
{
  OUTLINED_FUNCTION_45();
  if (v1)
  {
    v4 = v3;
    v5 = v2;
    if ((!*(v1 + 48) || !encode_list_merge_dict(v2)) && (!v4 || !encode_list_merge_dict(v5)))
    {
      encode_list_remove_key(v5, der_key_external_data);
      return 0;
    }
  }

  return v0;
}

uint64_t aks_sik_optional_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v16 = 0;
  OUTLINED_FUNCTION_7();
  if ((!v11 || v10 <= 0x20 && !encode_list_add_data()) && (!a3 || !encode_list_add_data()))
  {
    if (encode_list_is_empty(&v16))
    {
      v6 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_30();
      if (!encode_list_dict(v12, v13, v14))
      {
        v6 = 0;
        *a5 = 0;
        *a6 = 0;
      }
    }
  }

  encode_list_free(&v16);
  return v6;
}

uint64_t aks_sik_collection()
{
  OUTLINED_FUNCTION_2_0();
  v3 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8(v3);
  encode_list_add_key();
  if (!v2 || !OUTLINED_FUNCTION_48())
  {
    OUTLINED_FUNCTION_16();
    if (!encode_list_dict(v1, v4, v5))
    {
      v0 = _aks_operation();
    }
  }

  encode_list_free(v1);
  OUTLINED_FUNCTION_1_1();
  free(v1);
  return v0;
}

uint64_t der_get_sizeof(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t der_dict_iterate()
{
  OUTLINED_FUNCTION_24();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        OUTLINED_FUNCTION_31(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t der_dict_find_value(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_10();
    der_dict_iterate();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t der_get_number()
{
  OUTLINED_FUNCTION_28_0();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

__n128 der_utils_decode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  OUTLINED_FUNCTION_18(a1);
  if (OUTLINED_FUNCTION_33())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t encode_list_merge_dict(uint64_t a1)
{
  if (a1)
  {
    return der_dict_iterate() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t encode_list_dict(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15++ = *(v14 + 1);
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, _qsort_compare);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v25 = v17;
              v26 = &v17[v16];
              v19 = v8 - 1;
              v20 = v13 - v9 - 8;
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v23 = ccder_blob_encode_body();
                v20 = v22;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v25 != v26)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t encode_list_add_der()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4 && v5)
  {
    if (der_get_sizeof(v4) <= (v5 - v4))
    {
      v6 = ccder_sizeof();
      if (!OUTLINED_FUNCTION_27_0(v6))
      {
        return 4294967279;
      }

      OUTLINED_FUNCTION_14();
      if (ccder_blob_encode_body())
      {
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_5_0();
        if (v7 == v1)
        {
          v8 = OUTLINED_FUNCTION_26_0();
          if (v8)
          {
            return OUTLINED_FUNCTION_3_2(v8);
          }
        }
      }

      OUTLINED_FUNCTION_12_0();
      free(v1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t encode_list_add_data()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4)
  {
    ccder_sizeof();
    v5 = OUTLINED_FUNCTION_25();
    if (OUTLINED_FUNCTION_27_0(v5))
    {
      OUTLINED_FUNCTION_14();
      v6 = ccder_blob_encode_body();
      if (v6 && (OUTLINED_FUNCTION_23_0(v6, v7, v8, v9, v10, v11, v12, v13, v16), ccder_blob_encode_tl()) && (OUTLINED_FUNCTION_7_0(), OUTLINED_FUNCTION_5_0(), OUTLINED_FUNCTION_13_0(), OUTLINED_FUNCTION_5_0(), v14 == v1) && (v15 = OUTLINED_FUNCTION_26_0()) != 0)
      {
        return OUTLINED_FUNCTION_3_2(v15);
      }

      else
      {
        OUTLINED_FUNCTION_12_0();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_number(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v10 = 8;
  }

  else
  {
    v6 = 9;
    v7 = 48;
    v8 = 1;
    while ((v6 - 2) >= 2)
    {
      v9 = a3 >> v7;
      --v6;
      v7 -= 8;
      if (v5 != v9)
      {
        v8 = v6 - 1;
        goto LABEL_8;
      }
    }

    v6 = 2;
LABEL_8:
    if ((((a3 >> (8 * v8 - 8)) ^ v5) & 0x80) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }
  }

  v18 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    ccder_sizeof();
    v12 = ccder_sizeof();
    v13 = calloc(v12, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      do
      {
        *(&v18 + v15 - 1) = v3;
        v3 >>= 8;
        --v15;
      }

      while (v15);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_5_0(), OUTLINED_FUNCTION_16_0(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_0(), v16 == v14) && OUTLINED_FUNCTION_26_0())
      {
        result = OUTLINED_FUNCTION_17_1();
        v17[1] = v14;
        v17[2] = v12;
        *v17 = *a1;
        *a1 = v17;
      }

      else
      {
        memset_s(v14, v12, 0, v12);
        free(v14);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t _qsort_compare(const void **a1, void **a2)
{
  v5 = *a1;
  __s2 = *a2;
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v5 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v5, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}