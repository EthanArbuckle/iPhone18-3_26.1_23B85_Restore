id sub_100000E20()
{
  if (qword_1000281E0 != -1)
  {
    sub_100011DE4();
  }

  v1 = qword_1000281E8;

  return v1;
}

void sub_100000E64(id a1)
{
  qword_1000281E8 = dispatch_queue_create("com.apple.mobile_storage_proxy.filetransfer", 0);

  _objc_release_x1();
}

uint64_t sub_100000EA4()
{
  dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000F70;
  v6 = block[3] = &unk_1000246A0;
  v0 = qword_1000281F0;
  v1 = v6;
  if (v0 != -1)
  {
    dispatch_once(&qword_1000281F0, block);
  }

  v2 = qword_1000281F8;
  v3 = qword_1000281F8;

  return v2;
}

uint64_t sub_100000F70(uint64_t a1)
{
  qword_1000281F8 = dispatch_queue_create("com.apple.mobile_storage_proxy.hostconnections", *(a1 + 32));

  return _objc_release_x1();
}

void sub_100000FB0(uint64_t a1)
{
  v2 = sub_100000E20();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001038;
  block[3] = &unk_1000246C0;
  block[4] = a1;
  dispatch_sync(v2, block);
}

void sub_100001038(uint64_t a1)
{
  if (byte_100028200)
  {
    unlink(&byte_100028200);
    bzero(&byte_100028200, 0x400uLL);
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    strncpy(&byte_100028200, v2, 0x3FFuLL);
  }
}

uint64_t sub_1000010B0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = sub_100000E20();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001164;
  block[3] = &unk_1000246E8;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sub_100001164(uint64_t result)
{
  if (byte_100028200)
  {
    *(*(*(result + 32) + 8) + 24) = &byte_100028200;
  }

  return result;
}

void sub_100001188(char a1)
{
  v2 = sub_100000E20();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001210;
  block[3] = &unk_100024708;
  v4 = a1;
  dispatch_sync(v2, block);
}

uint64_t sub_100001220()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = sub_100000E20();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000012D4;
  block[3] = &unk_1000246E8;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sub_1000012EC()
{
  result = MKBGetDeviceLockState();
  if (result != 1)
  {
    return MKBGetDeviceLockState() == 2;
  }

  return result;
}

uint64_t sub_100001320(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v28 = @"Invalid input(s).";
    v29 = 123;
    v30 = -3;
    goto LABEL_34;
  }

  value = objc_alloc_init(NSMutableArray);
  if (!value)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create array.", buf, 2u);
    }

    v28 = @"Failed to create array.";
    v29 = 129;
    v30 = -2;
LABEL_34:
    v31 = sub_100008A30("handle_lookup_image", v29, v30, 0, v28, v25, v26, v27, v41);
    value = 0;
    v6 = 0;
    v4 = 0;
    goto LABEL_35;
  }

  v4 = CFDictionaryGetValue(a1, @"ImageType");
  v5 = sub_100008214(v4);

  if (v5)
  {
    v6 = MobileStorageCopyDevicesWithError();
    v7 = sub_1000081A8(v6);

    if (v7)
    {
      if ([v6 count])
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = v9;
          v9 = [v6 objectAtIndexedSubscript:v8];

          v14 = sub_10000813C(v9);

          if (v14)
          {
            v15 = [v9 objectForKeyedSubscript:@"DeviceType"];

            v16 = sub_100008214(v15);

            if (v16)
            {
              if ([v15 isEqualToString:@"DiskImage"])
              {
                v17 = [v9 objectForKeyedSubscript:@"DiskImageType"];

                v18 = sub_100008214(v17);

                if (v18)
                {
                  if ([v4 isEqualToString:v17])
                  {
                    v19 = [v9 objectForKeyedSubscript:@"ImageSignature"];

                    v20 = sub_100008280(v19);

                    if (v20)
                    {
                      [value addObject:v19];
                    }

                    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      v24 = [v6 count];
                      *buf = 138412802;
                      *v44 = @"ImageSignature";
                      *&v44[8] = 1024;
                      *v45 = v8 + 1;
                      *&v45[4] = 1024;
                      *&v45[6] = v24;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value %@ for entry %d of %d.", buf, 0x18u);
                    }

                    v12 = v19;
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [v6 count];
                  *buf = 138412802;
                  *v44 = @"DiskImageType";
                  *&v44[8] = 1024;
                  *v45 = v8 + 1;
                  *&v45[4] = 1024;
                  *&v45[6] = v23;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value %@ for entry %d of %d.", buf, 0x18u);
                }

                v11 = v17;
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v6 count];
              *buf = 138412802;
              *v44 = @"DeviceType";
              *&v44[8] = 1024;
              *v45 = v8 + 1;
              *&v45[4] = 1024;
              *&v45[6] = v22;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value %@ for entry %d of %d.", buf, 0x18u);
            }

            v10 = v15;
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v6 count];
            *buf = 67109376;
            *v44 = v8;
            *&v44[4] = 1024;
            *&v44[6] = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve entry %d of %d.", buf, 0xEu);
          }

          ++v8;
        }

        while (v8 < [v6 count]);
      }

      else
      {
        v12 = 0;
        v11 = 0;
        v10 = 0;
        v9 = 0;
      }

      CFDictionarySetValue(a2, @"ImageSignature", value);
      CFDictionarySetValue(a2, @"Status", @"Complete");
      v31 = 0;
      v32 = 1;
      goto LABEL_49;
    }

    v36 = [[NSString alloc] initWithFormat:@"Failed to copy device list."];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v44 = v36;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v31 = sub_100008A30("handle_lookup_image", 144, -2, 0, @"Failed to copy device list.", v37, v38, v39, v41);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v44 = @"ImageType";
      *&v44[8] = 2112;
      *v45 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
    }

    v31 = sub_100008A30("handle_lookup_image", 136, -2, 0, @"Invalid value for %@: %@", v33, v34, v35, @"ImageType");
    CFDictionarySetValue(a2, @"Error", @"MissingImageType");
    v6 = 0;
  }

LABEL_35:
  v9 = 0;
  v32 = 0;
  if (a2 && v31)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v31 description]);
    v32 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

LABEL_49:

  return v32;
}

uint64_t sub_100001A98(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v18 = sub_100008A30("handle_mount_image", 233, -3, 0, @"Invalid input(s).", v20, v21, v22, v58);
    v23 = 0;
    v13 = 0;
    v9 = 0;
    v24 = 0;
    v6 = 0;
    v4 = 0;
    goto LABEL_48;
  }

  v4 = CFDictionaryGetValue(a1, @"ImageType");
  v5 = sub_100008214(v4);

  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = @"ImageType";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
    }

    v18 = sub_100008A30("handle_mount_image", 240, -3, 0, @"Invalid value for %@.", v25, v26, v27, @"ImageType");
    CFDictionarySetValue(a2, @"Error", @"MissingImageType");
    v23 = 0;
    v13 = 0;
    v9 = 0;
    v24 = 0;
    v6 = 0;
    goto LABEL_48;
  }

  v6 = CFDictionaryGetValue(a1, @"ImageSignature");
  v7 = sub_100008280(v6);

  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = @"ImageSignature";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
    }

    v18 = sub_100008A30("handle_mount_image", 248, -3, 0, @"Invalid value for %@.", v28, v29, v30, @"ImageSignature");
    CFDictionarySetValue(a2, @"Error", @"MissingImageSignature");
    v23 = 0;
    v13 = 0;
    v9 = 0;
    goto LABEL_47;
  }

  v8 = CFDictionaryGetValue(a1, @"ImageTrustCache");
  v9 = v8;
  if (v8)
  {
    v10 = sub_100008280(v8);

    if (!v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v60 = @"ImageTrustCache";
        v61 = 2112;
        v62 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for option %@: %@", buf, 0x16u);
      }

      sub_100008A30("handle_mount_image", 255, -2, 0, @"Invalid value for option %@: %@", v37, v38, v39, @"ImageTrustCache");
      goto LABEL_43;
    }
  }

  if (![v4 isEqualToString:@"Cryptex"])
  {
    v13 = 0;
    goto LABEL_24;
  }

  v11 = sub_100008280(v9);

  if (!v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v60 = @"ImageTrustCache";
      v61 = 2112;
      v62 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for required option %@: %@", buf, 0x16u);
    }

    sub_100008A30("handle_mount_image", 262, -2, 0, @"Invalid value for required option %@: %@", v43, v44, v45, @"ImageTrustCache");
    v18 = LABEL_43:;
    CFDictionarySetValue(a2, @"Error", @"MissingTrustCache");
    v23 = 0;
    v13 = 0;
    goto LABEL_47;
  }

  v12 = CFDictionaryGetValue(a1, @"ImageInfoPlist");
  v13 = v12;
  if (v12)
  {
    v14 = sub_100008280(v12);

    if (!v14)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v60 = @"ImageInfoPlist";
        v61 = 2112;
        v62 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for option %@: %@", buf, 0x16u);
      }

      v18 = sub_100008A30("handle_mount_image", 269, -2, 0, @"Invalid value for option %@: %@", v15, v16, v17, @"ImageInfoPlist");
      v19 = off_100024958;
LABEL_39:
      CFDictionarySetValue(a2, @"Error", *v19);
      v23 = 0;
LABEL_47:
      v24 = 0;
      goto LABEL_48;
    }
  }

LABEL_24:
  v31 = objc_alloc_init(NSMutableDictionary);
  if (!v31)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    v18 = sub_100008A30("handle_mount_image", 278, -2, 0, @"Failed to create dictionary.", v40, v41, v42, v58);
    v19 = off_100024988;
    goto LABEL_39;
  }

  v23 = v31;
  v32 = sub_1000010B0();
  if (!v32)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disk image is missing.", buf, 2u);
    }

    v18 = sub_100008A30("handle_mount_image", 295, -2, 0, @"Disk image is missing.", v46, v47, v48, v58);
    CFDictionarySetValue(a2, @"Error", @"MissingImagePath");
    goto LABEL_47;
  }

  v24 = [NSString stringWithUTF8String:v32];
  v33 = sub_100008214(v24);

  if (v33)
  {
    [v23 setObject:@"DiskImage" forKeyedSubscript:@"DeviceType"];
    [v23 setObject:v4 forKeyedSubscript:@"DiskImageType"];
    [v23 setObject:v6 forKeyedSubscript:@"ImageSignature"];
    if (v9)
    {
      [v23 setObject:v9 forKeyedSubscript:@"ImageTrustCache"];
    }

    if (v13)
    {
      [v23 setObject:v13 forKeyedSubscript:@"ImageInfoPlist"];
    }

    v34 = MobileStorageMountWithError();
    if (v34)
    {
      v35 = v34;
      CFDictionarySetValue(a2, @"Status", @"Complete");

      v18 = 0;
      v36 = 1;
      goto LABEL_53;
    }

    v54 = [[NSString alloc] initWithFormat:@"Failed to mount %@.", v24];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v54;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v18 = sub_100008A30("handle_mount_image", 316, -2, 0, @"Failed to mount %@.", v55, v56, v57, v24);

    v53 = off_100024990;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
    }

    v18 = sub_100008A30("handle_mount_image", 290, -2, 0, @"Failed to create string.", v50, v51, v52, v58);
    v53 = off_100024978;
  }

  CFDictionarySetValue(a2, @"Error", *v53);
LABEL_48:
  sub_100000FB0(0);
  v36 = 0;
  if (a2 && v18)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v18 description]);
    v36 = 0;
  }

LABEL_53:

  return v36;
}

uint64_t sub_1000023F8(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, @"MountPath");
    v4 = sub_100008214(Value);

    if (v4)
    {
      if (!MobileStorageUnmountWithError())
      {
        CFDictionarySetValue(a2, @"Status", @"Complete");
        v9 = 0;
        v16 = 1;
        goto LABEL_20;
      }

      v5 = [[NSString alloc] initWithFormat:@"Failed to unmount %@.", Value];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v9 = sub_100008A30("handle_unmount_image", 369, -2, 0, @"Failed to unmount %@.", v6, v7, v8, Value);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = @"MountPath";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
      }

      v9 = sub_100008A30("handle_unmount_image", 363, -3, 0, @"Invalid value for %@.", v13, v14, v15, @"MountPath");
      CFDictionarySetValue(a2, @"Error", @"MissingImagePath");
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v9 = sub_100008A30("handle_unmount_image", 357, -3, 0, @"Invalid input(s).", v10, v11, v12, v18);
  }

  v16 = 0;
  if (a2 && v9)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v9 description]);
    v16 = 0;
  }

LABEL_20:

  return v16;
}

uint64_t sub_10000271C(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    if (MobileStorageRollPersonalizationNonceWithError())
    {
      CFDictionarySetValue(a2, @"Status", @"Complete");
      v3 = 0;
      v4 = 1;
      goto LABEL_16;
    }

    v8 = [[NSString alloc] initWithFormat:@"Failed to roll personalization nonce."];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v3 = sub_100008A30("handle_roll_personalization_nonce", 410, -2, 0, @"Failed to roll personalization nonce.", v9, v10, v11, v13);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v3 = sub_100008A30("handle_roll_personalization_nonce", 404, -3, 0, @"Invalid input(s).", v5, v6, v7, v13);
  }

  v4 = 0;
  if (a2 && v3)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v3 description]);
    v4 = 0;
  }

LABEL_16:

  return v4;
}

uint64_t sub_10000296C(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    if (MobileStorageRollCryptexNonceWithError())
    {
      CFDictionarySetValue(a2, @"Status", @"Complete");
      v3 = 0;
      v4 = 1;
      goto LABEL_16;
    }

    v8 = [[NSString alloc] initWithFormat:@"Failed to roll cryptex nonce."];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v3 = sub_100008A30("handle_roll_cryptex_nonce", 451, -2, 0, @"Failed to roll cryptex nonce.", v9, v10, v11, v13);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v3 = sub_100008A30("handle_roll_cryptex_nonce", 445, -3, 0, @"Invalid input(s).", v5, v6, v7, v13);
  }

  v4 = 0;
  if (a2 && v3)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v3 description]);
    v4 = 0;
  }

LABEL_16:

  return v4;
}

uint64_t sub_100002BBC(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v4 = CFDictionaryGetValue(a1, @"PersonalizedImageType");
    v5 = sub_100008214(v4);

    if (v5)
    {
      v6 = CFDictionaryGetValue(a1, @"ImageSignature");
      v7 = sub_100008280(v6);

      if (v7)
      {
        v8 = MobileStorageCopyPersonalizationManifestWithError();
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(a2, @"ImageSignature", v8);

          v10 = 0;
          v11 = 1;
          goto LABEL_24;
        }

        v21 = [[NSString alloc] initWithFormat:@"Failed to copy personalization manifest."];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v10 = sub_100008A30("handle_query_personalization_manifest", 506, -2, 0, @"Failed to copy personalization manifest.", v22, v23, v24, v26);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = @"ImageSignature";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
        }

        v10 = sub_100008A30("handle_query_personalization_manifest", 500, -3, 0, @"Invalid value for %@.", v18, v19, v20, @"ImageSignature");
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = @"PersonalizedImageType";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
      }

      v10 = sub_100008A30("handle_query_personalization_manifest", 494, -3, 0, @"Invalid value for %@.", v15, v16, v17, @"PersonalizedImageType");
      v6 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v10 = sub_100008A30("handle_query_personalization_manifest", 488, -3, 0, @"Invalid input(s).", v12, v13, v14, v26);
    v6 = 0;
    v4 = 0;
  }

  v11 = 0;
  if (a2 && v10)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v10 description]);
    v11 = 0;
  }

LABEL_24:

  return v11;
}

uint64_t sub_100002F88(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = CFDictionaryGetValue(a1, @"PersonalizedImageType");
    v6 = sub_100008214(v5);

    if (v6)
    {
      [v4 setObject:v5 forKeyedSubscript:@"PersonalizedImageType"];
    }

    v7 = MobileStorageCopyPersonalizationNonceWithError();
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(a2, @"PersonalizationNonce", v7);

      v9 = 0;
      v10 = 1;
      goto LABEL_18;
    }

    v14 = [[NSString alloc] initWithFormat:@"Failed to copy personalization nonce."];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v9 = sub_100008A30("handle_query_personalization_nonce", 556, -2, 0, @"Failed to copy personalization nonce.", v15, v16, v17, v19);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v9 = sub_100008A30("handle_query_personalization_nonce", 543, -3, 0, @"Invalid input(s).", v11, v12, v13, v19);
    v4 = 0;
    v5 = 0;
  }

  v10 = 0;
  if (a2 && v9)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v9 description]);
    v10 = 0;
  }

LABEL_18:

  return v10;
}

uint64_t sub_100003248(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = CFDictionaryGetValue(a1, @"PersonalizedImageType");
    v6 = sub_100008214(v5);

    if (v6)
    {
      [v4 setObject:v5 forKeyedSubscript:@"PersonalizedImageType"];
    }

    v7 = MobileStorageCopyPersonalizationIdentifiersWithError();
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(a2, @"PersonalizationIdentifiers", v7);

      v9 = 0;
      v10 = 1;
      goto LABEL_18;
    }

    v14 = [[NSString alloc] initWithFormat:@"Failed to copy personalization identifiers."];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v9 = sub_100008A30("handle_query_personalization_identifiers", 605, -2, 0, @"Failed to copy personalization identifiers.", v15, v16, v17, v19);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v9 = sub_100008A30("handle_query_personalization_identifiers", 592, -3, 0, @"Invalid input(s).", v11, v12, v13, v19);
    v4 = 0;
    v5 = 0;
  }

  v10 = 0;
  if (a2 && v9)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v9 description]);
    v10 = 0;
  }

LABEL_18:

  return v10;
}

uint64_t sub_100003508(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v3 = MobileStorageCopyCryptexNonceWithError();
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(a2, @"CryptexNonce", v3);

      v5 = 0;
      v6 = 1;
      goto LABEL_16;
    }

    v10 = [[NSString alloc] initWithFormat:@"Failed to copy cryptex nonce."];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v5 = sub_100008A30("handle_query_cryptex_nonce", 645, -2, 0, @"Failed to copy cryptex nonce.", v11, v12, v13, v15);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v5 = sub_100008A30("handle_query_cryptex_nonce", 639, -3, 0, @"Invalid input(s).", v7, v8, v9, v15);
  }

  v6 = 0;
  if (a2 && v5)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v5 description]);
    v6 = 0;
  }

LABEL_16:

  return v6;
}

uint64_t sub_100003758(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v3 = MobileStorageCopyDeveloperModeStatusWithError();
    CFDictionarySetValue(a2, @"DeveloperModeStatus", [NSNumber numberWithBool:v3]);
    v7 = 0;
    v8 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v7 = sub_100008A30("handle_query_developer_mode_status", 679, -3, 0, @"Invalid input(s).", v4, v5, v6, v10);
    v8 = 0;
    if (a2 && v7)
    {
      if (!CFDictionaryGetValue(a2, @"Error"))
      {
        CFDictionarySetValue(a2, @"Error", @"InternalError");
      }

      CFDictionarySetValue(a2, @"DetailedError", [v7 description]);
      v8 = 0;
    }
  }

  return v8;
}

uint64_t sub_1000039BC(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v3 = MobileStorageCopyDevicesWithError();
    v4 = sub_1000081A8(v3);

    if (v4)
    {
      if (v3)
      {
        CFDictionarySetValue(a2, @"EntryList", v3);
      }

      CFDictionarySetValue(a2, @"Status", @"Complete");
      v5 = 0;
      v6 = 1;
      goto LABEL_18;
    }

    v10 = [[NSString alloc] initWithFormat:@"Failed to copy device list."];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v5 = sub_100008A30("handle_copy_devices", 725, -2, 0, @"Failed to copy device list.", v11, v12, v13, v15);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v5 = sub_100008A30("handle_copy_devices", 719, -3, 0, @"Invalid input(s).", v7, v8, v9, v15);
    v3 = 0;
  }

  v6 = 0;
  if (a2 && v5)
  {
    if (!CFDictionaryGetValue(a2, @"Error"))
    {
      CFDictionarySetValue(a2, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a2, @"DetailedError", [v5 description]);
    v6 = 0;
  }

LABEL_18:

  return v6;
}

uint64_t sub_100003C44(uint64_t a1, CFMutableDictionaryRef theDict)
{
  if (a1)
  {
    v3 = theDict == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", &v11, 2u);
    }

    v9 = sub_100008A30("handle_hangup", 761, -3, 0, @"Invalid input(s).", v6, v7, v8, v11);
    v5 = v9;
    if (theDict && v9)
    {
      if (!CFDictionaryGetValue(theDict, @"Error"))
      {
        CFDictionarySetValue(theDict, @"Error", @"InternalError");
      }

      CFDictionarySetValue(theDict, @"DetailedError", [v5 description]);
    }
  }

  else
  {
    CFDictionarySetValue(theDict, @"Goodbye", kCFBooleanTrue);
    v5 = 0;
  }

  return v4;
}

BOOL sub_100003D7C()
{
  v4 = 0;
  v5[0] = &v4;
  v5[1] = 0x2020000000;
  v6 = 0;
  if (!&_lockdown_checkin_xpc)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Platform does not support lockdown.", buf, 2u);
    }

    goto LABEL_8;
  }

  v0 = sub_100000EA4();
  *(v5[0] + 24) = lockdown_checkin_xpc();

  if (!*(v5[0] + 24))
  {
LABEL_8:
    v1 = 1;
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100011DF8(v5);
  }

  v1 = *(v5[0] + 24) == 0;
LABEL_9:
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100003EF0(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, __n128 a4)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ClientName");
    v22 = sub_100008214(Value);
  }

  else
  {
    v22 = 0;
  }

  v7 = 0;
  a4.n128_u64[0] = 138412290;
  v21 = a4;
  while (1)
  {
    v8 = sub_100007DE4();
    if (!v8)
    {
      break;
    }

    v9 = v8;
    *(*(*(a1 + 32) + 8) + 24) = lockdown_receive_message();
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*(*(a1 + 32) + 8) + 24);
        *buf = 67109120;
        LODWORD(v24) = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive message: 0x%08x", buf, 8u);
      }

      CFRelease(v9);
      goto LABEL_104;
    }

    v10 = CFDictionaryGetValue(0, @"Command");

    v11 = sub_100008214(v10);

    v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (!v11)
    {
      if (v12)
      {
        *buf = 138412546;
        v24 = @"Command";
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
      }

      v14 = v9;
      v15 = @"MissingCommand";
LABEL_17:
      CFDictionarySetValue(v14, @"Error", v15);
      goto LABEL_29;
    }

    if (v12)
    {
      *buf = 138543618;
      v24 = v22;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Host connection (%{public}@): %{public}@", buf, 0x16u);
    }

    if ([(__CFString *)v10 isEqualToString:@"LookupImage", *&v21])
    {
      if ((sub_100001320(0, v9) & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "Failed to lookup image.";
          goto LABEL_27;
        }

        goto LABEL_29;
      }
    }

    else if ([(__CFString *)v10 isEqualToString:@"CopyDevices"])
    {
      if ((sub_1000039BC(0, v9) & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "Failed to copy device list.";
          goto LABEL_27;
        }

        goto LABEL_29;
      }
    }

    else if ([(__CFString *)v10 isEqualToString:@"MountImage"])
    {
      if (sub_1000012EC())
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      }

      if ((sub_100001A98(0, v9) & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "Failed to mount image.";
          goto LABEL_27;
        }

        goto LABEL_29;
      }
    }

    else if ([(__CFString *)v10 isEqualToString:@"UnmountImage"])
    {
      if (sub_1000012EC())
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      }

      if ((sub_1000023F8(0, v9) & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "Failed to unmount image.";
          goto LABEL_27;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if ([(__CFString *)v10 isEqualToString:@"Hangup"])
      {
        if ((sub_100003C44(0, v9) & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "Failed to hangup.";
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      if ([(__CFString *)v10 isEqualToString:@"ReceiveBytes"])
      {
        if (sub_1000012EC())
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        CFDictionarySetValue(v9, @"Status", @"ReceiveBytesAck");
        *(*(*(a1 + 32) + 8) + 24) = lockdown_send_message();
        if (*(*(*(a1 + 32) + 8) + 24))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 67109120;
            LODWORD(v24) = v19;
            v13 = "Failed to send message: 0x%08x";
            v17 = 8;
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if (sub_1000049C4(a2, 0, v9))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = "Failed to receive bytes.";
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      else if ([(__CFString *)v10 isEqualToString:@"RollPersonalizationNonce"])
      {
        if (sub_1000012EC())
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        if ((sub_10000271C(0, v9) & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = "Failed to roll personalization nonce.";
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      else if ([(__CFString *)v10 isEqualToString:@"RollCryptexNonce"])
      {
        if (sub_1000012EC())
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
LABEL_40:
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device is locked, denying host request.", buf, 2u);
          }

LABEL_41:
          v14 = v9;
          v15 = @"DeviceLocked";
          goto LABEL_17;
        }

        if ((sub_10000296C(0, v9) & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = "Failed to roll cryptex nonce.";
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      else if ([(__CFString *)v10 isEqualToString:@"QueryPersonalizationManifest"])
      {
        if ((sub_100002BBC(0, v9) & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = "Failed to query personalization manifest.";
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      else if ([(__CFString *)v10 isEqualToString:@"QueryNonce"])
      {
        if ((sub_100002F88(0, v9) & 1) == 0)
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

LABEL_83:
          *buf = 0;
          v13 = "Failed to query personalization nonce.";
          goto LABEL_27;
        }
      }

      else if ([(__CFString *)v10 isEqualToString:@"QueryPersonalizationIdentifiers"])
      {
        if ((sub_100003248(0, v9) & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = "Failed to query personalization identifiers.";
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      else if ([(__CFString *)v10 isEqualToString:@"QueryCryptexNonce"])
      {
        if ((sub_100003508(0, v9) & 1) == 0)
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          goto LABEL_83;
        }
      }

      else
      {
        if (![(__CFString *)v10 isEqualToString:@"QueryDeveloperModeStatus"])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21.n128_u32[0];
            v24 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid command: %@", buf, 0xCu);
          }

          v14 = v9;
          v15 = @"UnknownCommand";
          goto LABEL_17;
        }

        if ((sub_100003758(0, v9) & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v13 = "Failed to query developer mode status.";
LABEL_27:
            v17 = 2;
LABEL_28:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, buf, v17);
          }

LABEL_29:
          v16 = 0;
          goto LABEL_30;
        }
      }
    }

    v16 = 1;
LABEL_30:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sending response: %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = lockdown_send_message();
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v16 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(*(a1 + 32) + 8) + 24);
        *buf = 67109120;
        LODWORD(v24) = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to send message: 0x%08x", buf, 8u);
        v16 = 0;
      }
    }

    CFRelease(v9);
    v7 = v10;
    if ((v16 & 1) == 0)
    {
      goto LABEL_105;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
  }

LABEL_104:
  v10 = v7;
LABEL_105:
  if (a2)
  {
    lockdown_disconnect();
  }
}

uint64_t sub_1000049C4(uint64_t a1, const __CFDictionary *a2, __CFDictionary *a3)
{
  bzero(__str, 0x400uLL);
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v9 = sub_100008A30("handle_receive_bytes", 135, -3, 0, @"Invalid input(s).", v10, v11, v12, v73);
    goto LABEL_10;
  }

  if (sub_100001220())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Existing file transfer in progress.", buf, 2u);
    }

    v9 = sub_100008A30("handle_receive_bytes", 140, -2, 0, @"Existing file transfer in progress.", v6, v7, v8, v73);
    CFDictionarySetValue(a3, @"Error", @"ExistingTransferInProgress");
LABEL_10:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_11:
    v17 = -1;
LABEL_12:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v16 = CFDictionaryGetValue(a2, @"ImageType");
  v20 = sub_100008214(v16);

  if (!v20)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = @"ImageType";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
    }

    v9 = sub_100008A30("handle_receive_bytes", 148, -3, 0, @"Invalid value for %@.", v31, v32, v33, @"ImageType");
    CFDictionarySetValue(a3, @"Error", @"MissingImageType");
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v15 = CFDictionaryGetValue(a2, @"ImageSize");
  v21 = sub_1000080D0(v15);

  if (!v21)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = @"ImageSize";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
    }

    v9 = sub_100008A30("handle_receive_bytes", 156, -3, 0, @"Invalid value for %@.", v34, v35, v36, @"ImageSize");
    CFDictionarySetValue(a3, @"Error", @"MissingImageSize");
    v13 = 0;
    v14 = 0;
    goto LABEL_11;
  }

  v14 = CFDictionaryGetValue(a2, @"ImageSignature");
  v22 = sub_100008280(v14);

  if (!v22)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = @"ImageSignature";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
    }

    sub_100008A30("handle_receive_bytes", 164, -3, 0, @"Invalid value for %@.", v37, v38, v39, @"ImageSignature");
    goto LABEL_68;
  }

  if (([v16 isEqualToString:@"Personalized"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"Cryptex"))
  {
    *buf = 0;
    v75 = 0;
    v23 = [v16 isEqualToString:@"Personalized"];
    inited = Img4DecodeInitManifest([v14 bytes], objc_msgSend(v14, "length"), v83);
    if (inited)
    {
      v25 = inited;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 67109120;
        v82 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to init img4 manifest: %d", v81, 8u);
      }

      v29 = @"Failed to init img4 manifest: %d";
      v73 = v25;
      v30 = 186;
LABEL_67:
      sub_100008A30("handle_receive_bytes", v30, -2, 0, v29, v26, v27, v28, v73);
      v9 = LABEL_68:;
LABEL_69:
      v13 = 0;
      goto LABEL_11;
    }

    if (v23)
    {
      v40 = 1885629799;
    }

    else
    {
      v40 = 1668315236;
    }

    Img4DecodeGetObjectPropertyData(v83, v40, 1145525076, buf, &v75);
    v42 = v41;
    if (v41 == 1)
    {
      if (![v16 isEqualToString:@"Cryptex"])
      {
        v42 = 1;
        goto LABEL_61;
      }

      Img4DecodeGetObjectPropertyData(v83, 1885629799, 1145525076, buf, &v75);
      v42 = v43;
    }

    if (!v42)
    {
      v44 = [NSData alloc];
      v45 = [v44 initWithBytes:*buf length:v75];

      if (!v45)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", v81, 2u);
        }

        v9 = sub_100008A30("handle_receive_bytes", 206, -2, 0, @"Failed to create data.", v60, v61, v62, v73);
        v14 = 0;
        goto LABEL_69;
      }

      v14 = v45;
      goto LABEL_49;
    }

LABEL_61:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v81 = 67109120;
      v82 = v42;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve data from manifest: %d", v81, 8u);
    }

    v29 = @"Failed to retrieve data from manifest: %d";
    v73 = v42;
    v30 = 200;
    goto LABEL_67;
  }

LABEL_49:
  v46 = sub_10000C964();
  if (!v46)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query working directory.", buf, 2u);
    }

    v29 = @"Failed to query working directory.";
    v30 = 213;
    goto LABEL_67;
  }

  v47 = v46;
  v13 = sub_10000BEA8(v14, v46);

  if (!v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v14;
      v79 = 2112;
      v80 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create path with signature %@ in %@.", buf, 0x16u);
    }

    v29 = @"Failed to create path with signature %@ in %@.";
    v73 = v14;
    v30 = 219;
    goto LABEL_67;
  }

  v48 = +[NSFileManager defaultManager];
  v76 = NSFilePosixPermissions;
  v77 = &off_100027908;
  v49 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v74 = 0;
  v50 = [v48 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:v49 error:&v74];
  v9 = v74;

  if ((v50 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %@.", buf, 0xCu);
    }

    sub_100008A30("handle_receive_bytes", 224, -2, 0, @"Failed to create %@.", v57, v58, v59, v13);
    goto LABEL_79;
  }

  snprintf(__str, 0x400uLL, "%s/XXXXXX.dmg", [v13 UTF8String]);
  v51 = mkstemps(__str, 4);
  if (v51 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v63 = __error();
      v64 = strerror(*v63);
      *buf = 136315394;
      *&buf[4] = __str;
      v79 = 2080;
      v80 = v64;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %s: %s", buf, 0x16u);
    }

    v65 = __error();
    strerror(*v65);
    sub_100008A30("handle_receive_bytes", 233, -2, 0, @"Failed to create %s: %s", v66, v67, v68, __str);
    v69 = LABEL_79:;

    CFDictionarySetValue(a3, @"Error", @"FileCreateFailed");
    v17 = -1;
    v9 = v69;
    goto LABEL_12;
  }

  v17 = v51;
  if (sub_10000C094(__str))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = __str;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Path is bad: %s", buf, 0xCu);
    }

    v55 = sub_100008A30("handle_receive_bytes", 239, -2, 0, @"Path is bad: %s", v52, v53, v54, __str);

    v56 = off_100024998;
  }

  else
  {
    sub_100001188(1);
    sub_100000FB0(__str);
    if (sub_1000055B4(v17, a1, [v15 unsignedLongValue]))
    {
      CFDictionarySetValue(a3, @"Status", @"Complete");
      v18 = 0;
      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = __str;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive bytes into %s.", buf, 0xCu);
    }

    v55 = sub_100008A30("handle_receive_bytes", 249, -2, 0, @"Failed to receive bytes into %s.", v70, v71, v72, __str);

    v56 = off_1000249B8;
  }

  CFDictionarySetValue(a3, @"Error", *v56);
  v18 = 0xFFFFFFFFLL;
  v9 = v55;
LABEL_13:
  if (v9)
  {
    if (!CFDictionaryGetValue(a3, @"Error"))
    {
      CFDictionarySetValue(a3, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a3, @"DetailedError", [v9 description]);
  }

  if (v17 != -1)
  {
    close(v17);
  }

  if (v9)
  {
    sub_100000FB0(0);
  }

  sub_100001188(0);

  return v18;
}

uint64_t sub_1000055B4(int a1, uint64_t a2, unint64_t a3)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_1000058B0;
  v16 = &unk_100024758;
  v18 = v22;
  v19 = a3;
  v17 = v21;
  v20 = a1;
  v4 = v14;
  if (a3 >= 0x20000)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = a3;
  }

  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (v6)
  {
    if (!a3)
    {
LABEL_10:
      free(v6);

      v9 = 1;
      goto LABEL_21;
    }

    v7 = 0;
    while (1)
    {
      v8 = lockdown_recv();
      if ((v8 + 1) <= 1)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v10 = *__error();
        *buf = 67109120;
        v25 = v10;
        v11 = "Failed to receive secure message: %{errno}d";
        v12 = 8;
        goto LABEL_17;
      }

      if (((v15)(v4, v6, v8) & 1) == 0)
      {
        break;
      }

      v7 += v8;
      if (v7 >= a3)
      {
        goto LABEL_10;
      }
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v11 = "Transfer cancelled.";
    v12 = 2;
LABEL_17:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
LABEL_18:
    free(v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate buffer.", buf, 2u);
  }

  v9 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to receive data.", buf, 2u);
    v9 = 0;
  }

LABEL_21:
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
  return v9;
}

BOOL sub_1000058B0(uint64_t a1, void *__buf, size_t __nbyte)
{
  v6 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) += __nbyte;
  v7 = (a1 + 48);
  v8 = ((*(*(*(a1 + 32) + 8) + 24) / *(a1 + 48)) * 100.0);
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 24) != v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100011E80(v6, v7, v8);
    }

    v9 = *(*(a1 + 40) + 8);
  }

  *(v9 + 24) = v8;
  v10 = write(*(a1 + 56), __buf, __nbyte);
  if (v10 == -1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *__error();
    v13[0] = 67109120;
    v13[1] = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Write failed: %{errno}d", v13, 8u);
  }

  return v10 != -1;
}

uint64_t sub_100005A24()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Failed to read DeviceSupportsLockdown from gestalt.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
    }

LABEL_11:
    v3 = 0;
    goto LABEL_12;
  }

  v1 = sub_100000EA4();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  if (!remote_service_listener)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Failed to create remote listener.";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = v0;
  xpc_remote_connection_set_event_handler();
  xpc_remote_connection_activate();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "com.apple.mobile.storage_mounter_proxy.bridge";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RemoteXPC service (%s) alive.", buf, 0xCu);
  }

  v3 = 1;
LABEL_12:

  return v3;
}

void sub_100005C08(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v3 = v4;
  xpc_remote_connection_set_event_handler();
  xpc_remote_connection_activate();
}

void sub_100005CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v15 = *(a1 + 32);
    xpc_remote_connection_cancel();
    goto LABEL_18;
  }

  reply = xpc_dictionary_create_reply(v3);
  if (reply)
  {
    v5 = reply;
    v6 = dispatch_semaphore_create(0);
    if (v6)
    {
      v7 = v6;
      v8 = xpc_dictionary_get_value(v3, "XPCRequestDictionary");
      v9 = v8;
      if (!v8 || xpc_get_type(v8) != &_xpc_type_dictionary)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "XPCRequestDictionary";
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %s: %@", buf, 0x16u);
        }

        v13 = @"Invalid value for %s: %@";
        v66 = "XPCRequestDictionary";
        v14 = 797;
LABEL_9:
        sub_100008A30("remote_service_init_block_invoke", v14, -2, 0, v13, v10, v11, v12, v66);

LABEL_10:
LABEL_11:

        goto LABEL_18;
      }

      v16 = _CFXPCCreateCFObjectFromXPCObject();
      if (!v16)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cannot create CF object from XPC request dictionary", buf, 2u);
        }

        v13 = @"Cannot create CF object from XPC request dictionary";
        v14 = 803;
        goto LABEL_9;
      }

      v17 = v16;
      v18 = CFDictionaryGetValue(v16, @"HostProcessName");
      v19 = sub_100008214(v18);

      if (!v19)
      {

        v18 = @"unknown";
      }

      v20 = CFDictionaryGetValue(v17, @"Command");
      v21 = sub_100008214(v20);

      v22 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v22)
        {
          *buf = 138543618;
          *&buf[4] = v18;
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Remote connection (%{public}@): %{public}@", buf, 0x16u);
        }

        v26 = sub_100007DE4();
        if (v26)
        {
          v27 = v26;
          if ([v20 isEqualToString:@"ReceiveBytes"])
          {
            if (sub_100006D88(v3, v5, v17, v27))
            {

              CFRelease(v17);
LABEL_132:
              CFRelease(v27);

              goto LABEL_11;
            }

            v70 = v18;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_103;
            }

            *buf = 0;
            v32 = "Failed to receive bytes.";
            goto LABEL_45;
          }

          v70 = v18;
          if ([v20 isEqualToString:@"LookupImage"])
          {
            if ((sub_100001320(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_103;
            }

            *buf = 0;
            v32 = "Failed to lookup image.";
            goto LABEL_45;
          }

          if ([v20 isEqualToString:@"CopyDevices"])
          {
            if ((sub_1000039BC(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_103;
            }

            *buf = 0;
            v32 = "Failed to copy device list.";
            goto LABEL_45;
          }

          if ([v20 isEqualToString:@"MountImage"])
          {
            if (sub_1000012EC())
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device is locked.", buf, 2u);
              }

              v36 = 856;
LABEL_60:
              v37 = sub_100008A30("remote_service_init_block_invoke", v36, -2, 0, @"Device is locked.", v33, v34, v35, v66);
              v38 = off_1000249B0;
LABEL_74:
              CFDictionarySetValue(v27, @"Error", *v38);
LABEL_104:
              v69 = 0;
              goto LABEL_105;
            }

            if (sub_100001220())
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Existing file transfer in progress.", buf, 2u);
              }

              v42 = 862;
LABEL_73:
              v37 = sub_100008A30("remote_service_init_block_invoke", v42, -2, 0, @"Existing file transfer in progress.", v39, v40, v41, v66);
              v38 = off_1000249D0;
              goto LABEL_74;
            }

            if ((sub_100001A98(v17, v27) & 1) == 0)
            {
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_103;
              }

              *buf = 0;
              v32 = "Failed to mount image.";
LABEL_45:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
LABEL_103:
              v37 = 0;
              goto LABEL_104;
            }

            goto LABEL_84;
          }

          if ([v20 isEqualToString:@"UnmountImage"])
          {
            if (sub_1000012EC())
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device is locked.", buf, 2u);
              }

              v36 = 877;
              goto LABEL_60;
            }

            if (sub_100001220())
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Existing file transfer in progress.", buf, 2u);
              }

              v42 = 883;
              goto LABEL_73;
            }

            if ((sub_1000023F8(v17, v27) & 1) == 0)
            {
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_103;
              }

              *buf = 0;
              v32 = "Failed to unmount image.";
              goto LABEL_45;
            }

LABEL_84:
            v37 = 0;
            v69 = 1;
            goto LABEL_105;
          }

          if ([v20 isEqualToString:@"Hangup"])
          {
            if ((sub_100003C44(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_103;
            }

            *buf = 0;
            v32 = "Failed to hangup.";
            goto LABEL_45;
          }

          if ([v20 isEqualToString:@"RollPersonalizationNonce"])
          {
            if (sub_1000012EC())
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device is locked.", buf, 2u);
              }

              v36 = 905;
              goto LABEL_60;
            }

            if ((sub_10000271C(v17, v27) & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to roll personalization nonce.", buf, 2u);
            }

            v69 = 0;
            v37 = 0;
LABEL_105:
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v27;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sending response: %{public}@", buf, 0xCu);
            }

            v44 = _CFXPCCreateXPCObjectFromCFObject();
            v71 = v44;
            if (v44)
            {
              v45 = v44;
              v46 = v5;
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_100007C84;
              v74 = &unk_100024820;
              v75 = v46;
              LOBYTE(v45) = xpc_dictionary_apply(v45, buf);

              if (v45)
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create XPC object from CF object.", buf, 2u);
              }

              v50 = sub_100008A30("remote_service_init_block_invoke", 1039, -2, 0, @"Failed to create XPC object from CF object.", v47, v48, v49, v66);

              v37 = v50;
            }

            v51 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v37)
            {
              if (v51)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to merge XPC dictionary.", buf, 2u);
              }

              goto LABEL_120;
            }

            if (v51)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to merge XPC dictionary.", buf, 2u);
            }

            v37 = sub_100008A30("remote_service_init_block_invoke", 1044, -2, 0, @"Failed to merge XPC dictionary.", v52, v53, v54, v66);
LABEL_119:
            if (!v37)
            {
LABEL_123:
              xpc_dictionary_send_reply();
              v18 = v70;
              v63 = v71;
              if (v69)
              {
                if ([*(a1 + 40) BOOLValue])
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Delegating RSD reset to lockdownd.", buf, 2u);
                  }
                }

                else
                {
                  v64 = dispatch_get_global_queue(0, 0);
                  v72 = v7;
                  remote_device_browse_present();

                  v65 = dispatch_time(0, 20000000000);
                  if (dispatch_semaphore_wait(v72, v65) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
                  {
                    sub_100011F24();
                  }

                  v63 = v71;
                }
              }

              CFRelease(v17);

              goto LABEL_132;
            }

LABEL_120:
            v68 = v27;
            v67 = v20;
            CStringPtr = CFStringGetCStringPtr(@"Error", 0x8000100u);
            v56 = xpc_dictionary_get_value(v5, CStringPtr);

            if (!v56)
            {
              v57 = CFStringGetCStringPtr(@"Error", 0x8000100u);
              v58 = CFStringGetCStringPtr(@"InternalError", 0x8000100u);
              v59 = xpc_string_create(v58);
              xpc_dictionary_set_value(v5, v57, v59);
            }

            v60 = CFStringGetCStringPtr(@"DetailedError", 0x8000100u);
            v61 = [v37 description];
            v62 = xpc_string_create([v61 UTF8String]);
            xpc_dictionary_set_value(v5, v60, v62);

            v20 = v67;
            v27 = v68;
            goto LABEL_123;
          }

          if ([v20 isEqualToString:@"RollCryptexNonce"])
          {
            if (!sub_1000012EC())
            {
              if ((sub_10000296C(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_103;
              }

              *buf = 0;
              v32 = "Failed to roll cryptex nonce.";
              goto LABEL_45;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device is locked.", buf, 2u);
            }

            v36 = 918;
            goto LABEL_60;
          }

          if ([v20 isEqualToString:@"QueryPersonalizationManifest"])
          {
            if ((sub_100002BBC(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_150;
            }

            *buf = 0;
            v43 = "Failed to query personalization manifest.";
          }

          else if ([v20 isEqualToString:@"QueryNonce"])
          {
            if ((sub_100002F88(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_150;
            }

            *buf = 0;
            v43 = "Failed to query personalization nonce.";
          }

          else if ([v20 isEqualToString:@"QueryPersonalizationIdentifiers"])
          {
            if ((sub_100003248(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_150;
            }

            *buf = 0;
            v43 = "Failed to query personalization identifiers.";
          }

          else if ([v20 isEqualToString:@"QueryCryptexNonce"])
          {
            if ((sub_100003508(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_150;
            }

            *buf = 0;
            v43 = "Failed to query cryptex nonce.";
          }

          else
          {
            if (![v20 isEqualToString:@"QueryDeveloperModeStatus"])
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid command: %@", buf, 0xCu);
              }

              CFDictionarySetValue(v27, @"Error", @"UnknownCommand");
              goto LABEL_150;
            }

            if ((sub_100003758(v17, v27) & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
LABEL_150:
              v37 = 0;
              v69 = 0;
              goto LABEL_105;
            }

            *buf = 0;
            v43 = "Failed to query developer mode status.";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
          goto LABEL_150;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
        }

        v28 = sub_100008A30("remote_service_init_block_invoke", 823, -2, 0, @"Failed to create dictionary.", v29, v30, v31, v66);
      }

      else
      {
        if (v22)
        {
          *buf = 138412546;
          *&buf[4] = @"Command";
          *&buf[12] = 2112;
          *&buf[14] = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
        }

        v28 = sub_100008A30("remote_service_init_block_invoke", 814, -2, 0, @"Invalid value for %@: %@", v23, v24, v25, @"Command");
        CFDictionarySetValue(0, @"Error", @"MissingCommand");
      }

      CFRelease(v17);

      goto LABEL_10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create semaphore.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create reply.", buf, 2u);
  }

LABEL_18:
}

uint64_t sub_100006D88(void *a1, void *a2, const __CFDictionary *a3, __CFDictionary *a4)
{
  v7 = a1;
  v8 = a2;
  bzero(__str, 0x400uLL);
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    v12 = sub_100008A30("handle_receive_bytes", 59, -3, 0, @"Invalid input(s).", v14, v15, v16, v73);
    goto LABEL_22;
  }

  if (sub_100001220())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Existing file transfer in progress.", buf, 2u);
    }

    v12 = sub_100008A30("handle_receive_bytes", 64, -2, 0, @"Existing file transfer in progress.", v9, v10, v11, v73);
    v13 = off_1000249D0;
LABEL_21:
    CFDictionarySetValue(a4, @"Error", *v13);
LABEL_22:
    v34 = 0;
    v21 = 0;
    v19 = 0;
LABEL_23:
    v35 = 0;
    v36 = -1;
    goto LABEL_24;
  }

  v17 = xpc_dictionary_get_value(v7, "XPCRequestRecvTx");
  if (!v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "XPCRequestRecvTx";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %s.", buf, 0xCu);
    }

    v12 = sub_100008A30("handle_receive_bytes", 71, -3, 0, @"Invalid value for %s.", v31, v32, v33, "XPCRequestRecvTx");
    v13 = off_1000249C0;
    goto LABEL_21;
  }

  v18 = v17;
  v19 = CFDictionaryGetValue(a3, @"ImageType");
  v20 = sub_100008214(v19);

  if (!v20)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = @"ImageType";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
    }

    v12 = sub_100008A30("handle_receive_bytes", 79, -3, 0, @"Invalid value for %@.", v39, v40, v41, @"ImageType");
    CFDictionarySetValue(a4, @"Error", @"MissingImageType");

    v34 = 0;
    v21 = 0;
    goto LABEL_23;
  }

  v21 = CFDictionaryGetValue(a3, @"ImageSignature");
  v22 = sub_100008280(v21);

  if (!v22)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = @"ImageSignature";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
    }

    sub_100008A30("handle_receive_bytes", 87, -3, 0, @"Invalid value for %@.", v42, v43, v44, @"ImageSignature");
    goto LABEL_68;
  }

  if (([v19 isEqualToString:@"Personalized"] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @"Cryptex"))
  {
    *buf = 0;
    v78 = 0;
    v23 = [v19 isEqualToString:@"Personalized"];
    inited = Img4DecodeInitManifest([v21 bytes], objc_msgSend(v21, "length"), v86);
    if (inited)
    {
      v25 = inited;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v84 = 67109120;
        v85 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to init img4 manifest: %d", v84, 8u);
      }

      v29 = @"Failed to init img4 manifest: %d";
      v73 = v25;
      v30 = 109;
LABEL_67:
      sub_100008A30("handle_receive_bytes", v30, -2, 0, v29, v26, v27, v28, v73);
      v12 = LABEL_68:;
LABEL_69:

      v34 = 0;
      goto LABEL_23;
    }

    if (v23)
    {
      v45 = 1885629799;
    }

    else
    {
      v45 = 1668315236;
    }

    Img4DecodeGetObjectPropertyData(v86, v45, 1145525076, buf, &v78);
    v47 = v46;
    if (v46 == 1)
    {
      if (![v19 isEqualToString:@"Cryptex"])
      {
        v47 = 1;
        goto LABEL_61;
      }

      Img4DecodeGetObjectPropertyData(v86, 1885629799, 1145525076, buf, &v78);
      v47 = v48;
    }

    if (!v47)
    {
      v49 = [NSData alloc];
      v50 = [v49 initWithBytes:*buf length:v78];

      if (!v50)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", v84, 2u);
        }

        v12 = sub_100008A30("handle_receive_bytes", 129, -2, 0, @"Failed to create data.", v64, v65, v66, v73);
        v21 = 0;
        goto LABEL_69;
      }

      v21 = v50;
      goto LABEL_49;
    }

LABEL_61:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v84 = 67109120;
      v85 = v47;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve data from manifest: %d", v84, 8u);
    }

    v29 = @"Failed to retrieve data from manifest: %d";
    v73 = v47;
    v30 = 123;
    goto LABEL_67;
  }

LABEL_49:
  v51 = sub_10000C964();
  if (!v51)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query working directory.", buf, 2u);
    }

    v29 = @"Failed to query working directory.";
    v30 = 136;
    goto LABEL_67;
  }

  v52 = v51;
  v34 = sub_10000BEA8(v21, v51);

  if (!v34)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v21;
      v82 = 2112;
      v83 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create path with signature %@ in %@.", buf, 0x16u);
    }

    v29 = @"Failed to create path with signature %@ in %@.";
    v73 = v21;
    v30 = 142;
    goto LABEL_67;
  }

  v74 = +[NSFileManager defaultManager];
  v79 = NSFilePosixPermissions;
  v80 = &off_100027920;
  v53 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v77 = 0;
  v54 = [v74 createDirectoryAtPath:v34 withIntermediateDirectories:1 attributes:v53 error:&v77];
  v12 = v77;

  if ((v54 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v34;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %@.", buf, 0xCu);
    }

    sub_100008A30("handle_receive_bytes", 147, -2, 0, @"Failed to create %@.", v61, v62, v63, v34);
    goto LABEL_79;
  }

  snprintf(__str, 0x400uLL, "%s/XXXXXX.dmg", [v34 UTF8String]);
  v55 = mkstemps(__str, 4);
  if (v55 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v67 = __error();
      v68 = strerror(*v67);
      *buf = 136315394;
      *&buf[4] = __str;
      v82 = 2080;
      v83 = v68;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %s: %s", buf, 0x16u);
    }

    v69 = __error();
    strerror(*v69);
    sub_100008A30("handle_receive_bytes", 156, -2, 0, @"Failed to create %s: %s", v70, v71, v72, __str);
    v75 = LABEL_79:;

    CFDictionarySetValue(a4, @"Error", @"FileCreateFailed");
    v35 = 0;
    v36 = -1;
LABEL_80:
    v12 = v75;
    goto LABEL_24;
  }

  v36 = v55;
  v56 = sub_10000C094(__str);
  v57 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v56)
  {
    if (v57)
    {
      *buf = 136315138;
      *&buf[4] = __str;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Path is bad: %s", buf, 0xCu);
    }

    v75 = sub_100008A30("handle_receive_bytes", 162, -2, 0, @"Path is bad: %s", v58, v59, v60, __str);

    CFDictionarySetValue(a4, @"Error", @"FileCreateFailed");
    v35 = 0;
    goto LABEL_80;
  }

  if (v57)
  {
    *buf = 136315394;
    *&buf[4] = __str;
    v82 = 1024;
    LODWORD(v83) = v36;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Writing file %s (%d) ...", buf, 0x12u);
  }

  v35 = 1;
  sub_100001188(1);
  sub_100000FB0(__str);
  v76 = v8;
  xpc_file_transfer_write_to_fd();

LABEL_24:
  if (v12)
  {
    if (!CFDictionaryGetValue(a4, @"Error"))
    {
      CFDictionarySetValue(a4, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a4, @"DetailedError", [v12 description]);
  }

  if (v36 == -1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v35;
  }

  if ((v37 & 1) == 0)
  {
    close(v36);
  }

  return v35;
}

void sub_10000794C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Done resetting devices.", buf, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Resetting device.", v7, 2u);
    }

    if ((remote_device_reset() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100011FA8();
    }
  }
}

void sub_100007A34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v23 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to write from remote file: %d", buf, 8u);
    }

    v7 = sub_100008A30("handle_receive_bytes_block_invoke", 185, -2, 0, @"Failed to write from remote file: %d", v4, v5, v6, a2);
    v8 = *(a1 + 32);
    CStringPtr = CFStringGetCStringPtr(@"Error", 0x8000100u);
    v10 = CFStringGetCStringPtr(@"InternalError", 0x8000100u);
    v11 = xpc_string_create(v10);
    xpc_dictionary_set_value(v8, CStringPtr, v11);

    v12 = *(a1 + 32);
    v13 = CFStringGetCStringPtr(@"DetailedError", 0x8000100u);
    v14 = [v7 description];
    v15 = xpc_string_create([v14 UTF8String]);
    xpc_dictionary_set_value(v12, v13, v15);

    v16 = *(a1 + 32);
    xpc_dictionary_send_reply();
    if (v7)
    {
      sub_100000FB0(0);
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = CFStringGetCStringPtr(@"Status", 0x8000100u);
    v19 = CFStringGetCStringPtr(@"Complete", 0x8000100u);
    v20 = xpc_string_create(v19);
    xpc_dictionary_set_value(v17, v18, v20);

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully wrote remote file.", buf, 2u);
    }

    v21 = *(a1 + 32);
    xpc_dictionary_send_reply();
  }

  sub_100001188(0);
}

uint64_t start()
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    sub_100011FF0();
  }

  v0 = sub_10000C964();
  if (!v0)
  {
    sub_100012174(0, v1, v2, v3, v4, v5, v6, v7);
  }

  v8 = v0;
  v9 = +[NSFileManager defaultManager];
  v21 = NSFilePosixPermissions;
  v22 = &off_100027938;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v20 = 0;
  v11 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:v10 error:&v20];
  v12 = v20;

  if ((v11 & 1) == 0)
  {
    sub_1000120D0(v12, v8, v13, v14, v15, v16, v17, v18);
  }

  if ((sub_100005A24() & 1) == 0)
  {
    sub_10001213C();
  }

  if (!sub_100003D7C())
  {
    sub_100012158();
  }

  CFRunLoopRun();

  return 0;
}

id sub_100007E08(void *a1)
{
  entry = 0;
  v1 = sub_100007F8C(a1);
  v2 = v1;
  if (!v1 || (v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v1 UTF8String]), MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3), (entry = MatchingService) == 0))
  {
    v8 = 0;
    CFProperty = 0;
    goto LABEL_18;
  }

  v5 = MatchingService;
  if (!IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
  {
    v8 = 0;
    CFProperty = 0;
    goto LABEL_17;
  }

  if (sub_100008040(&entry, "AppleAPFSContainer") && sub_100008040(&entry, "AppleAPFSMedia") && sub_100008040(&entry, "AppleAPFSContainerScheme") && sub_100008040(&entry, "IOMedia"))
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"BSD Name", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v7 = [[NSString alloc] initWithFormat:@"/dev/%@", CFProperty];
      if (v7)
      {
        v8 = v7;
        goto LABEL_14;
      }
    }
  }

  else
  {
    CFProperty = 0;
  }

  v8 = 0;
LABEL_14:
  v5 = entry;
  if (entry)
  {
LABEL_17:
    IOObjectRelease(v5);
  }

LABEL_18:

  return v8;
}

id sub_100007F8C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = @"/dev/r";
    if (([v3 hasPrefix:@"/dev/r"] & 1) != 0 || (v4 = @"/dev/", objc_msgSend(v3, "hasPrefix:", @"/dev/")))
    {
      v5 = [v3 substringFromIndex:{-[__CFString length](v4, "length")}];

      v3 = v5;
    }

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100008040(io_object_t *a1, const char *a2)
{
  result = 0;
  parent = 0;
  if (a1 && a2)
  {
    if (IORegistryEntryGetParentEntry(*a1, "IOService", &parent) || !IOObjectConformsTo(parent, a2))
    {
      result = parent;
      if (parent)
      {
        IOObjectRelease(parent);
        return 0;
      }
    }

    else
    {
      IOObjectRelease(*a1);
      *a1 = parent;
      return 1;
    }
  }

  return result;
}

id sub_1000080D0(void *a1)
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

id sub_10000813C(void *a1)
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

id sub_1000081A8(void *a1)
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

id sub_100008214(void *a1)
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

id sub_100008280(void *a1)
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

id sub_1000082EC(void *a1)
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

uint64_t sub_100008358()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(v26, 0x1000uLL);
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *entry = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", entry, 2u);
    }

    v3 = 0;
    goto LABEL_34;
  }

  v4 = sub_100007F8C(v3);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v4 UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  *entry = MatchingService;
  if (!MatchingService)
  {
    goto LABEL_20;
  }

  v8 = MatchingService;
  if (!IOObjectConformsTo(MatchingService, "IOMedia"))
  {
    IOObjectRelease(v8);
LABEL_20:

    goto LABEL_21;
  }

  if (!sub_10000CC7C(entry, "AppleAPFSContainerScheme") || !sub_10000CC7C(entry, "AppleAPFSMedia"))
  {
    v14 = 0;
    v9 = 0;
LABEL_45:
    CFProperty = 0;
    goto LABEL_46;
  }

  v9 = IORegistryEntrySearchCFProperty(*entry, "IOService", @"Content Hint", kCFAllocatorDefault, 0);
  if (!v9 || ![@"EF57347C-0000-11AA-AA11-00306543ECAC" isEqualToString:v9])
  {
    goto LABEL_44;
  }

  if (!v2)
  {
    CFProperty = 0;
    v14 = 1;
    goto LABEL_46;
  }

  if (!sub_10000CC7C(entry, "AppleAPFSContainer") || !sub_10000CC7C(entry, "AppleAPFSVolume"))
  {
LABEL_44:
    v14 = 0;
    goto LABEL_45;
  }

  CFProperty = IORegistryEntryCreateCFProperty(*entry, @"BSD Name", kCFAllocatorDefault, 0);
  v11 = sub_100008214(CFProperty);

  if (v11)
  {
    v12 = [@"/dev/" stringByAppendingString:CFProperty];

    if (v12)
    {
      v13 = v12;
      *v2 = v12;
      v14 = 1;
      CFProperty = v12;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v14 = 0;
LABEL_46:
  if (*entry)
  {
    IOObjectRelease(*entry);
  }

  if (v14)
  {
    v18 = 6;
    goto LABEL_53;
  }

LABEL_21:
  if (([v3 hasPrefix:{@"/dev/", *entry}] & 1) == 0)
  {
    v15 = [@"/dev/" stringByAppendingString:v3];

    v3 = v15;
  }

  v16 = open([v3 UTF8String], 0);
  if (v16 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *__error();
      *entry = 138412546;
      *&entry[4] = v3;
      v24 = 1024;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to open %@: %{errno}d", entry, 0x12u);
    }

LABEL_34:
    v18 = 0;
    goto LABEL_53;
  }

  v17 = v16;
  if (read(v16, v26, 0x1000uLL) == 4096)
  {
    if (v26[0] == 233 || v26[0] == 235 && v26[2] == 144)
    {
      if (v27 == 0x202020205346544ELL)
      {
        v18 = 5;
      }

      else if (v27 == 0x2020205441465845)
      {
        v18 = 4;
      }

      else
      {
        v18 = 1;
      }
    }

    else if (v28 == 11080)
    {
      v18 = 2 * (v29 == 4);
    }

    else if (v29 == 5 && v28 == 22600)
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *__error();
      *entry = 138412546;
      *&entry[4] = v3;
      v24 = 1024;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to read %@ volume header: %{errno}d", entry, 0x12u);
      v18 = 0;
    }
  }

  close(v17);
LABEL_53:

  return v18;
}

BOOL sub_1000087F4()
{
  v4 = 8;
  v5 = 0;
  if (!sysctlbyname("security.mac.amfi.developer_mode_status", &v5, &v4, 0, 0))
  {
    return v5 == 1;
  }

  v0 = __error();
  v1 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v1)
  {
    v3 = *v0;
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to read developer mode status: %{darwin.errno}d", buf, 8u);
    return 0;
  }

  return result;
}

BOOL sub_1000088E0(BOOL *a1, void *a2)
{
  v12 = 0;
  v11 = 4;
  if (sysctlbyname("security.codesigning.config", &v12, &v11, 0, 0))
  {
    v4 = *__error();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "security.codesigning.config";
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to read sysctl (%s): %{darwin.errno}d", buf, 0x12u);
    }

    v8 = sub_100008A30("systemSupportsRestrictedExecutionMode", 773, -2, 0, @"Failed to read sysctl (%s): %{darwin.errno}d", v5, v6, v7, "security.codesigning.config");
    if (a2 && v8)
    {
      v8 = v8;
      *a2 = v8;
    }
  }

  else
  {
    v8 = 0;
    if (a1)
    {
      *a1 = (v12 & 0x2000000) != 0;
    }
  }

  v9 = v8 == 0;

  return v9;
}

id sub_100008A30(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v14 = a5;
  v15 = [[NSMutableString alloc] initWithFormat:v14 arguments:&a9];

  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = v16;
  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v18 = [NSString stringWithUTF8String:a1];
      [v17 setObject:v18 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v19 = [NSNumber numberWithInt:a2];
      [v17 setObject:v19 forKeyedSubscript:@"SourceLine"];
    }
  }

  v20 = [NSError errorWithDomain:@"com.apple.MobileStorage.ErrorDomain" code:a3 userInfo:v17];

  return v20;
}

uint64_t sub_100008BB8()
{
  if (os_parse_boot_arg_int())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v4 = " not";
      v5 = 2080;
      v6 = "allow_msm_to_invalidate_attestations";
      v7 = 2048;
      v8 = 0;
      v0 = "Invalidating system attestation is%s allowed per boot-arg %s=%lld";
      v1 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v0, buf, v1);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v4 = "allow_msm_to_invalidate_attestations";
    v0 = "You can set the boot-arg %s=1 to allow invalidating the system's attestation.";
    v1 = 12;
    goto LABEL_6;
  }

  return 0;
}

const __CFString *sub_100008D00(io_registry_entry_t a1)
{
  v1 = IORegistryEntrySearchCFProperty(a1, "IOService", @"Protocol Characteristics", kCFAllocatorDefault, 3u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, @"Physical Interconnect");
  v4 = Value;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      v4 = (CFStringCompare(v4, @"Virtual Interface", 0) == kCFCompareEqualTo);
    }

    else
    {
      v4 = 0;
    }
  }

  CFRelease(v2);
  return v4;
}

id sub_100008DB4()
{
  v44 = 0;
  v45 = 0;
  v37 = objc_alloc_init(NSMutableDictionary);
  if (v37)
  {
    v0 = getfsstat(0, 0, 2);
    if (v0 < 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *__error();
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
      }

      v7 = 0;
    }

    else
    {
      v1 = v0;
      v2 = 0;
      v3 = 0;
      while (1)
      {
        v4 = 2168 * v1;
        if (v2 > v4)
        {
          goto LABEL_11;
        }

        if (v3)
        {
          free(v3);
        }

        v2 = v4 + 2168;
        v5 = malloc_type_malloc(v4 + 2168, 0x100004087E0324AuLL);
        if (!v5)
        {
          break;
        }

        v3 = v5;
        v1 = getfsstat(v5, v4 + 2168, 2);
        if (v1 < 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *__error();
            *buf = 67109120;
            *&buf[4] = v6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
          }

LABEL_11:
          v7 = v3;
          goto LABEL_21;
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *__error();
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate memory: %{errno}d", buf, 8u);
      }

      v7 = 0;
LABEL_21:
      if (v1 > 0)
      {
        v36 = v7;
        v11 = MGCopyAnswer();
        v12 = [v11 BOOLValue];

        if (((v12 | os_variant_is_recovery()) & 1) == 0)
        {
          v14 = cryptex_copy_list_4MSM();
          if ((v14 & 0xFFFFFFFD) != 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v15 = strerror(v14);
              *buf = 67109378;
              *&buf[4] = v14;
              LOWORD(v51) = 2080;
              *(&v51 + 2) = v15;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to copy cryptex list (%d (%s)), non-fatal.", buf, 0x12u);
            }

            v44 = 0;
          }
        }

        v16 = 0;
        v17 = v1;
        v18 = v36;
        f_mntonname = v36->f_mntonname;
        *&v13 = 136315138;
        v35 = v13;
        while (1)
        {
          *buf = 0;
          *&v51 = buf;
          *(&v51 + 1) = 0x2020000000;
          v52 = 0;
          v20 = sub_100009778(v18, v45, v44);
          v21 = v20;
          if (!v20)
          {
            break;
          }

          v22 = [v20 objectForKeyedSubscript:@"MountPath"];
          if (!v22)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 138412290;
              v49 = @"MountPath";
              v25 = "Map entry missing value for key %@.";
              v26 = 12;
LABEL_36:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v25, v48, v26);
            }

            goto LABEL_37;
          }

          v39 = v22;
          v23 = [v21 objectForKeyedSubscript:@"DiskImageType"];
          v24 = [v23 isEqualToString:@"Cryptex"];

          if (v24)
          {
            *(v51 + 24) = 1;
          }

          else
          {
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_10000A504;
            v40[3] = &unk_100024CC8;
            v29 = v39;
            v41 = v29;
            v42 = v21;
            v43 = buf;
            [&off_1000279C8 enumerateObjectsUsingBlock:v40];

            if ((*(v51 + 24) & 1) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_1000121C8(v46, v29, &v47);
              }

              v27 = 0;
              v28 = 0;
              v32 = 0;
              v30 = 0;
              v38 = v16;
              v39 = v29;
              goto LABEL_55;
            }
          }

          v38 = [v21 objectForKeyedSubscript:{@"DeviceNode", v35}];

          if (v38)
          {
            v30 = [v21 objectForKeyedSubscript:@"DeviceType"];
            if (v30)
            {
              if ([@"DiskImage" isEqualToString:v30])
              {
                v31 = sub_10000A58C(v18 + 1112);
                if (v31)
                {
                  [v21 setObject:v31 forKeyedSubscript:@"BackingImage"];
                  v27 = [v21 objectForKeyedSubscript:@"ImageSignature"];
                  if (v27)
                  {
                    v32 = 0;
                    v28 = v31;
LABEL_61:
                    [v37 setObject:v21 forKeyedSubscript:v38];
                    goto LABEL_55;
                  }

                  v28 = sub_10000A58C(v18 + 1112);

                  if (v28)
                  {
                    v32 = sub_10000A744(v28);
                    if (v32)
                    {
                      v27 = [[NSMutableData alloc] initDataWithHexString:v32];
                      if (v27)
                      {
                        [v21 setObject:v27 forKeyedSubscript:@"ImageSignature"];
                        goto LABEL_61;
                      }

                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                      {
                        *v48 = 138412290;
                        v49 = v28;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to convert signature from %@", v48, 0xCu);
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                      {
                        *v48 = 138412290;
                        v49 = v28;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to recover signature from %@", v48, 0xCu);
                      }

                      v32 = 0;
                    }

                    goto LABEL_60;
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_58:
                    *v48 = v35;
                    v49 = f_mntonname;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get backing image path for %s", v48, 0xCu);
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_58;
                }
              }

              v32 = 0;
              v28 = 0;
LABEL_60:
              v27 = 0;
              goto LABEL_61;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 138412290;
              v49 = @"DeviceType";
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map entry missing %@.", v48, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 138412290;
              v49 = @"DeviceNode";
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map entry missing %@.", v48, 0xCu);
            }

            v38 = 0;
          }

          v27 = 0;
          v28 = 0;
LABEL_54:
          v32 = 0;
          v30 = 0;
LABEL_55:
          _Block_object_dispose(buf, 8);

          v18 += 2168;
          f_mntonname = (f_mntonname + 2168);
          v8 = v38;
          v16 = v38;
          if (!--v17)
          {
            v7 = v36;
            if (!v36)
            {
              goto LABEL_77;
            }

LABEL_76:
            free(v7);
            goto LABEL_77;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 0;
          v25 = "Failed to create map entry.";
          v26 = 2;
          goto LABEL_36;
        }

LABEL_37:
        v27 = 0;
        v28 = 0;
        v38 = v16;
        v39 = 0;
        goto LABEL_54;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *__error();
      *buf = 67109120;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
    }

    v8 = 0;
    if (v7)
    {
      goto LABEL_76;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    v8 = 0;
  }

LABEL_77:
  if (v45)
  {
    cryptex_msm_array_destroy();
  }

  return v37;
}

id sub_100009778(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a1 || (v3 = a3, (v4 = a2) == 0) && a3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      v7 = 0;
      v8 = 0;
      v4 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
LABEL_8:
      v15 = 0;
      goto LABEL_9;
    }

    *buf = 0;
    v6 = "Invalid intput.";
LABEL_6:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    goto LABEL_7;
  }

  v17 = [[NSString alloc] initWithCString:a1 + 1112 encoding:4];
  if (!v17)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "Failed to create string.";
    goto LABEL_6;
  }

  v14 = v17;
  v18 = [[NSString alloc] initWithCString:a1 + 88 encoding:4];
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
    }

    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v13 = v18;
  v19 = [v13 UTF8String];
  if (!v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v37 = "Failed to get C string.";
LABEL_53:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
    }

LABEL_54:
    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v20 = v19;
  v21 = [[NSString alloc] initWithCString:a1 + 72 encoding:4];
  if (!v21)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v37 = "Failed to create string.";
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v12 = v21;
  v22 = objc_alloc_init(NSMutableDictionary);
  if (!v22)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  v15 = v22;
  [v22 setObject:@"MassStorage" forKeyedSubscript:?];
  [v15 setObject:v14 forKeyedSubscript:@"DeviceNode"];
  [v15 setObject:v13 forKeyedSubscript:@"MountPath"];
  [v15 setObject:v12 forKeyedSubscript:@"FilesystemType"];
  [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsMounted"];
  v23 = [[NSURL alloc] initWithString:v14];
  if (!v23)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = v14;
      v60 = 2080;
      v61 = (a1 + 88);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create URL (%@ / %s).", buf, 0x16u);
    }

    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    goto LABEL_64;
  }

  v9 = v23;
  __s2 = v20;
  v24 = [v23 lastPathComponent];
  v25 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v24 UTF8String]);

  if (!v25)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v9 lastPathComponent];
      *buf = 138412290;
      v59 = v38;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create a BSD matching dictionary for %@.", buf, 0xCu);
    }

    v7 = 0;
    v8 = 0;
    v4 = 0;
LABEL_64:
    v10 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v25);
  mainPort = MatchingService;
  if (!MatchingService)
  {
    if (([(__CFString *)v14 isEqualToString:@"devfs"]& 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve the IO service matching the device node for %@.", buf, 0xCu);
    }

    goto LABEL_104;
  }

  if (!sub_100008D00(MatchingService))
  {
LABEL_104:
    cf = 0;
    v8 = 0;
    v4 = 0;
LABEL_105:
    v10 = 0;
    v11 = 0;
    goto LABEL_106;
  }

  [v15 setObject:@"DiskImage" forKeyedSubscript:@"DeviceType"];
  if (!strcmp("/Developer", __s2))
  {
    v39 = @"Developer";
    v40 = off_100024B88;
LABEL_103:
    [v15 setObject:v39 forKeyedSubscript:*v40];
    goto LABEL_104;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_automation", 0x24uLL))
  {
    [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v41 = off_100024BD0;
LABEL_102:
    v39 = *v41;
    v40 = off_100024BA8;
    goto LABEL_103;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_demo", 0x1EuLL))
  {
    [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v41 = off_100024BC0;
    goto LABEL_102;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_debug", 0x1FuLL))
  {
    [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v41 = off_100024BB0;
    goto LABEL_102;
  }

  if (__s2 != strnstr(__s2, "/System/Developer", 0x11uLL))
  {
    if (__s2 == strnstr(__s2, "/private/var/personalized_factory", 0x21uLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v41 = off_100024BC8;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldService", 0x1CuLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v41 = off_100024BE0;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldServiceDiagnostic", 0x26uLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v41 = off_100024BE8;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldServiceRepair", 0x22uLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v41 = off_100024BF0;
    }

    else if (__s2 == strnstr(__s2, "/private/var/personalized_quality", 0x21uLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v41 = off_100024BF8;
    }

    else
    {
      if (__s2 != strnstr(__s2, "/private/var/personalized_repair", 0x20uLL))
      {
        if (!v4)
        {
          cf = 0;
          v8 = 0;
          goto LABEL_105;
        }

        [v15 setObject:@"Cryptex" forKeyedSubscript:@"DiskImageType"];
        if (v3)
        {
          while (1)
          {
            v27 = *v4;
            string = cryptex_msm_get_string();
            if (string)
            {
              v29 = string;
              v30 = strlen((a1 + 1112));
              if (strnstr(v29, (a1 + 1112), v30))
              {
                v31 = cryptex_msm_get_string();
                if (v31)
                {
                  v32 = v31;
                  v33 = cryptex_msm_get_string();
                  if (v33)
                  {
                    break;
                  }
                }
              }
            }

            ++v4;
            if (!--v3)
            {
              goto LABEL_39;
            }
          }

          v52 = [NSString stringWithUTF8String:v33];
          [v15 setObject:v52 forKeyedSubscript:@"CryptexName"];

          v53 = [NSString stringWithUTF8String:v32];
          [v15 setObject:v53 forKeyedSubscript:@"CryptexVersion"];
        }

LABEL_39:
        v34 = [v15 objectForKeyedSubscript:@"CryptexName"];
        if (!v34 || (v35 = v34, [v15 objectForKeyedSubscript:@"CryptexVersion"], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, !v36))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v59 = v14;
            v60 = 2112;
            v61 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Mount (%@ / %@) is not a cryptex or personalized image (not fatal).", buf, 0x16u);
          }

          v7 = 0;
          cf = 0;
          v8 = 0;
          v4 = 0;
          v10 = 0;
          v11 = 0;
LABEL_113:
          v49 = mainPort;
          if (!mainPort)
          {
            goto LABEL_115;
          }

          goto LABEL_114;
        }

        goto LABEL_104;
      }

      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v41 = off_100024C00;
    }

    goto LABEL_102;
  }

  v42 = [v13 stringByAppendingPathComponent:@"Library/Frameworks/DTRemoteServices.framework"];
  if (v42)
  {
    v10 = v42;
    [NSURL fileURLWithPath:v42 isDirectory:0];
    Unique = _CFBundleCreateUnique();
    if (Unique)
    {
      cf = Unique;
      v11 = CFBundleGetValueForInfoDictionaryKey(Unique, kCFBundleVersionKey);
      v44 = sub_100008214(v11);

      if (v44)
      {
        v45 = [v13 stringByAppendingPathComponent:@"version.plist"];
        if (v45)
        {
          v8 = v45;
          v46 = +[NSFileManager defaultManager];
          __s2a = [v46 fileExistsAtPath:v8];

          if (__s2a)
          {
            v4 = [[NSDictionary alloc] initWithContentsOfFile:v8];
            if (v4)
            {
LABEL_81:
              [v15 setObject:v11 forKeyedSubscript:@"PersonalizedImageVersion"];
              [v15 setObject:v4 forKeyedSubscript:@"PersonalizedImageVersionInfo"];
              [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
              [v15 setObject:@"DeveloperDiskImage" forKeyedSubscript:@"PersonalizedImageType"];
LABEL_106:
              if (*(a1 + 64))
              {
                v50 = &__kCFBooleanTrue;
              }

              else
              {
                v50 = &__kCFBooleanFalse;
              }

              [v15 setObject:v50 forKeyedSubscript:@"IsReadOnly"];
              if ((*(a1 + 64) & 0x80) != 0)
              {
                v51 = &__kCFBooleanTrue;
              }

              else
              {
                v51 = &__kCFBooleanFalse;
              }

              [v15 setObject:v51 forKeyedSubscript:@"SupportsContentProtection"];
              v7 = v15;
              goto LABEL_113;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              sub_100012214(v8, v11);
            }
          }

          v4 = 0;
          goto LABEL_81;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_99;
        }

        *buf = 0;
        v47 = "Failed to create path.";
        v48 = 2;
      }

      else
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_99:
          v4 = 0;
          v8 = 0;
          goto LABEL_100;
        }

        *buf = 138412290;
        v59 = kCFBundleVersionKey;
        v47 = "Failed to query bundle key %@.";
        v48 = 12;
      }

      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v47, buf, v48);
      goto LABEL_99;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query bundle for DTRemoteServices.framework.", buf, 2u);
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create path.", buf, 2u);
    }

    v11 = 0;
    v10 = 0;
  }

  v4 = 0;
  v8 = 0;
  cf = 0;
LABEL_100:
  v7 = 0;
  v49 = mainPort;
LABEL_114:
  IOObjectRelease(v49);
LABEL_115:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_9:

  return v7;
}

void sub_10000A504(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (([*(a1 + 32) hasPrefix:a2] & 1) != 0 || (objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"DiskImageType"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Cryptex"), v6, v7))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id sub_10000A58C(uint64_t a1)
{
  if (!a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Invalid input.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }

LABEL_10:
    v5 = 0;
    v2 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v1 = [[NSString alloc] initWithUTF8String:a1];
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Failed to create string.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v2 = v1;
  v8 = 0;
  v3 = [DiskImages2 imageURLFromDevice:v1 error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 path];
    goto LABEL_12;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve image URL: %@", buf, 0xCu);
  }

  v5 = 0;
LABEL_11:
  v3 = 0;
LABEL_12:

  return v5;
}

id sub_10000A744(void *a1)
{
  v1 = [a1 pathComponents];
  if ([v1 count] >= 4)
  {
    v3 = [NSString alloc];
    v4 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 3}];
    v5 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 2}];
    v2 = [v3 initWithFormat:@"%@%@", v4, v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10000A810()
{
  properties = 0;
  existing = 0;
  v0 = objc_alloc_init(NSMutableDictionary);
  if (v0)
  {
    v1 = IOServiceMatching("IOUSBInterface");
    if (v1 && (v2 = v1, [(__CFDictionary *)v1 setObject:&off_100027950 forKeyedSubscript:@"bInterfaceClass"], [(__CFDictionary *)v2 setObject:&off_100027968 forKeyedSubscript:@"bInterfaceSubClass"], [(__CFDictionary *)v2 setObject:&off_100027968 forKeyedSubscript:@"bInterfaceProtocol"], !IOServiceGetMatchingServices(kIOMasterPortDefault, v2, &existing)) && (v6 = IOIteratorNext(existing)) != 0)
    {
      v7 = v6;
      v4 = 0;
      v3 = 0;
      do
      {
        v8 = IORegistryEntryCreateCFProperties(v7, &properties, 0, 0);
        if (v8)
        {
          v9 = v8;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v16) = v9 & 0x3FFF;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperties failed: 0x%04x", buf, 8u);
          }
        }

        else
        {
          Value = CFDictionaryGetValue(properties, @"locationID");

          v11 = sub_1000080D0(Value);

          if (v11)
          {
            v12 = objc_alloc_init(NSMutableDictionary);

            if (v12)
            {
              [v12 setObject:Value forKeyedSubscript:@"LocationID"];
              [v12 setObject:@"PTPCamera" forKeyedSubscript:@"DeviceType"];
              [v0 setObject:v12 forKeyedSubscript:@"PTPNode"];
              v3 = v12;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
              }

              v3 = 0;
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v16 = "locationID";
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve %s.", buf, 0xCu);
          }

          v4 = Value;
        }

        if (properties)
        {
          CFRelease(properties);
        }

        properties = 0;
        IOObjectRelease(v7);
        v7 = IOIteratorNext(existing);
      }

      while (v7);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    if (existing)
    {
      IOObjectRelease(existing);
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v0;
}

id sub_10000AB5C()
{
  properties = 0;
  existing = 0;
  bzero(v55, 0x878uLL);
  v0 = IOServiceMatching("IOMedia");
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v0, &existing))
  {
LABEL_2:
    v1 = 0;
LABEL_3:
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_4;
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    goto LABEL_2;
  }

  v1 = v10;
  v11 = IOIteratorNext(existing);
  if (!v11)
  {
    goto LABEL_3;
  }

  v12 = v11;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v40 = 0;
  v39 = 1;
  do
  {
    if (sub_100008D00(v12))
    {
      goto LABEL_40;
    }

    v13 = IORegistryEntryCreateCFProperties(v12, &properties, 0, 0);
    if (v13)
    {
      v14 = v13;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 67109120;
      LODWORD(v52) = v14 & 0x3FFF;
      v15 = "IORegistryEntryCreateCFProperties failed: 0x%04x";
      v16 = 8;
      goto LABEL_16;
    }

    if (properties)
    {
      v17 = CFDictionaryGetValue(properties, @"BSD Name");

      v18 = sub_100008214(v17);

      if (!v18)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v52 = "BSD Name";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve %s.", buf, 0xCu);
        }

        goto LABEL_39;
      }

      v19 = [[NSString alloc] initWithFormat:@"/dev/%@", v17];

      if (!v19)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
        }

        v3 = 0;
        goto LABEL_39;
      }

      v20 = CFDictionaryGetValue(properties, @"Content");

      v21 = sub_100008214(v20);

      if (v21)
      {
        if ([@"C12A7328-F81F-11D2-BA4B-00A0C93EC93B" isEqualToString:v20])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100012374(&v43, v44, v22);
          }

          goto LABEL_38;
        }

        if ([@"Apple_partition_map" isEqualToString:v20])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100012338(&v41, v42, v25);
          }

          goto LABEL_38;
        }

        v26 = CFDictionaryGetValue(properties, @"Removable");

        v8 = v26;
        v27 = sub_1000080D0(v26);

        if (v27)
        {
          if (([v26 BOOLValue] & 1) == 0 && (sub_10000B500(v12) & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1000122A0(v49, v17, &v50);
            }

            goto LABEL_38;
          }

          v28 = CFDictionaryGetValue(properties, @"Leaf");

          v7 = v28;
          v29 = sub_1000080D0(v28);

          if (v29)
          {
            if (([v28 BOOLValue] & 1) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_1000122EC(v47, v17, &v48);
              }

              goto LABEL_38;
            }

            v30 = CFDictionaryGetValue(properties, @"Writable");

            v4 = v30;
            v31 = sub_1000080D0(v30);
            if (v31)
            {
              v32 = v31;
              v33 = [v30 BOOLValue];

              v39 &= v33 ^ 1;
            }

            v34 = sub_100008358();
            if (v34 != 4 && (v34 & 3) != 1)
            {
              v35 = objc_alloc_init(NSMutableDictionary);

              if (v35)
              {
                [v35 setObject:@"MassStorage" forKeyedSubscript:@"DeviceType"];
                [v35 setObject:v19 forKeyedSubscript:@"DeviceNode"];
                [v35 setObject:&__kCFBooleanFalse forKeyedSubscript:@"IsMounted"];
                v36 = [NSNumber numberWithBool:v39 & 1];
                [v35 setObject:v36 forKeyedSubscript:@"IsReadOnly"];

LABEL_55:
                [v1 setObject:v35 forKeyedSubscript:v19];
                v40 = v35;
                goto LABEL_38;
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v37 = "Failed to create dictionary.";
                v38 = 2;
LABEL_72:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
                goto LABEL_73;
              }

              goto LABEL_73;
            }

            [v19 UTF8String];
            if (__strlcpy_chk() < 0x400)
            {
              [v19 UTF8String];
              if (__strlcpy_chk() < 0x400)
              {
                if (__strlcpy_chk() < 0x10)
                {
                  v35 = sub_100009778(v55, 0, 0);

                  if (v35)
                  {
                    goto LABEL_55;
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v52 = v19;
                    v37 = "Failed to create map entry for %@.";
                    v38 = 12;
                    goto LABEL_72;
                  }

LABEL_73:
                  v40 = 0;
                  goto LABEL_38;
                }

                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_38;
                }
              }

              else if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_38;
              }
            }

            else if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_38;
            }

            *buf = 0;
            v23 = "Invalid string size.";
            v24 = 2;
            goto LABEL_34;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          *buf = 138412546;
          v52 = v17;
          v53 = 2080;
          v54 = "Leaf";
          v23 = "The attached media object %@ does not have a '%s' flag.";
        }

        else
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          *buf = 138412546;
          v52 = v17;
          v53 = 2080;
          v54 = "Removable";
          v23 = "The attached media object %@ does not have a '%s' flag.";
        }
      }

      else
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_38:
          v3 = v19;
          v5 = v20;
LABEL_39:
          v6 = v17;
          goto LABEL_40;
        }

        *buf = 138412546;
        v52 = v17;
        v53 = 2080;
        v54 = "Content";
        v23 = "The attached media object %@ does not have a '%s' flag.";
      }

      v24 = 22;
LABEL_34:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
      goto LABEL_38;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Failed to retrieve any properties for the matched service.";
      v16 = 2;
LABEL_16:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
    }

LABEL_40:
    IOObjectRelease(v12);
    if (properties)
    {
      CFRelease(properties);
    }

    properties = 0;
    v12 = IOIteratorNext(existing);
  }

  while (v12);
  v2 = v40;
LABEL_4:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v1;
}

uint64_t sub_10000B500(io_object_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_10000BE0C;
  v10 = &unk_100024CF0;
  v11 = &v12;
  v2 = v8;
  v17 = 0;
  v9();
  if ((v17 & 1) == 0)
  {
    IOObjectRetain(a1);
    if ((v17 & 1) == 0)
    {
      while (1)
      {
        parent = 0;
        ParentEntry = IORegistryEntryGetParentEntry(a1, "IOService", &parent);
        IOObjectRelease(a1);
        if (ParentEntry != -536870208 && ParentEntry != 0)
        {
          break;
        }

        a1 = parent;
        if (!parent)
        {
          goto LABEL_13;
        }

        (v9)(v2, parent, &v17);
        if (v17 == 1)
        {
          IOObjectRelease(a1);
          goto LABEL_13;
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v19 = ParentEntry & 0x3FFF;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IORegistryEntryGetParentEntry failed: 0x%04x", buf, 8u);
      }
    }
  }

LABEL_13:

  v6 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v6;
}

id sub_10000B6F8()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  if (v0)
  {
    v1 = sub_10000A810();
    if (v1)
    {
      [v0 addEntriesFromDictionary:v1];
    }

    v2 = sub_10000AB5C();

    if (v2)
    {
      [v0 addEntriesFromDictionary:v2];
    }

    v3 = sub_100008DB4();

    if (v3)
    {
      [v0 addEntriesFromDictionary:v3];
    }
  }

  return v0;
}

id sub_10000B7AC(void *a1)
{
  v1 = sub_10000B86C(@"MassStorage", @"DeviceNode", a1);
  v2 = v1;
  if (v1 && [v1 count] && (objc_msgSend(v2, "objectAtIndex:", 0), v3 = objc_claimAutoreleasedReturnValue(), sub_10000813C(v3), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [v2 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10000B86C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v29 = a2;
  v28 = a3;
  if (!v5 || !v29 || !v28)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    goto LABEL_26;
  }

  v6 = sub_10000B6F8();
  if (!v6)
  {
    v22 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v22)
    {
      sub_1000123B0(v22, v23, v24);
    }

LABEL_26:
    v27 = 0;
    v25 = 0;
    v10 = 0;
    v7 = 0;
    goto LABEL_32;
  }

  v7 = v6;
  v27 = objc_alloc_init(NSMutableArray);
  if (v27)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v7;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v31 = 0;
      v10 = 0;
      v11 = *v33;
      do
      {
        v12 = 0;
        v30 = v9;
        do
        {
          v13 = v10;
          if (*v33 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [v7 objectForKey:*(*(&v32 + 1) + 8 * v12)];
          v10 = [v14 objectForKeyedSubscript:@"DeviceType"];

          if (v10)
          {
            if ([v10 isEqual:v5])
            {
              v15 = v11;
              v16 = v7;
              v17 = v5;
              v18 = [v14 objectForKeyedSubscript:v29];

              v19 = sub_100008214(v18);
              if (v19)
              {
                v20 = v19;
                v21 = [v18 isEqual:v28];

                if (v21)
                {
                  [v27 addObject:v14];
                }
              }

              v31 = v18;
              v5 = v17;
              v7 = v16;
              v11 = v15;
              v9 = v30;
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = @"DeviceType";
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
    }

    else
    {
      v31 = 0;
      v10 = 0;
    }

    v25 = v31;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create array.", buf, 2u);
    }

    v27 = 0;
    v25 = 0;
    v10 = 0;
  }

LABEL_32:

  return v27;
}

id sub_10000BC18(void *a1)
{
  v1 = a1;
  v2 = sub_10000B6F8();
  v3 = v2;
  if (v2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v20 = v3;
      v7 = 0;
      v8 = *v22;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v4 objectForKey:*(*(&v21 + 1) + 8 * v9)];
        v11 = sub_10000813C(v10);

        if (v11)
        {
          v12 = [v10 objectForKeyedSubscript:@"MountPath"];

          v7 = v12;
        }

        v13 = sub_100008214(v7);
        if (v13)
        {
          v14 = v13;
          v15 = [v7 isEqualToString:v1];

          if (v15)
          {
            break;
          }
        }

        if (v6 == ++v9)
        {
          v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          v10 = 0;
          break;
        }
      }

      v3 = v20;
    }

    else
    {
      v7 = 0;
      v10 = 0;
    }
  }

  else
  {
    v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      sub_1000123B0(v16, v17, v18);
    }

    v7 = 0;
    v10 = 0;
  }

  return v10;
}

void sub_10000BE0C(uint64_t a1, io_registry_entry_t entry, _BYTE *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"removable", 0, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    if (CFEqual(CFProperty, kCFBooleanTrue))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }

    CFRelease(v6);
  }
}

id sub_10000BEA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[NSString alloc] initHexStringWithData:v3];
  v6 = v5;
  if (!v5)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v8 = 0;
      v7 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v10 = "Failed to create hex string with data.";
    v11 = 2;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
    goto LABEL_9;
  }

  if ([v5 length] != 256 && objc_msgSend(v6, "length") != 96 && objc_msgSend(v6, "length") != 40)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 67109378;
    v15 = [v6 length];
    v16 = 2112;
    v17 = v3;
    v10 = "Unsupported signature length: %d characters (%@)";
    v11 = 18;
    goto LABEL_8;
  }

  v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") >> 1}];
  v8 = [v6 substringFromIndex:{objc_msgSend(v6, "length") >> 1}];
  v9 = [[NSString alloc] initWithFormat:@"%@/%@/%@", v4, v7, v8];
LABEL_10:
  v12 = v9;

  return v9;
}

uint64_t sub_10000C094(const char *a1)
{
  bzero(__s1, 0x400uLL);
  if (strlen(a1) > 0x400)
  {
    goto LABEL_18;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_10000CD2C;
  v16 = &unk_100024D38;
  v17 = buf;
  v18 = a1;
  v2 = v14;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 stringWithFileSystemRepresentation:a1 length:strlen(a1)];

  v5 = [v4 pathComponents];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = [v6 count];
    if (v7)
    {
      do
      {
        v8 = [NSString pathWithComponents:v6];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          v11 = [v9 fileSystemRepresentation];
          if (!(v15)(v2, v11))
          {

            break;
          }

          [v6 removeLastObject];
        }
      }

      while (--v7);
    }
  }

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  if ((v12 & 1) != 0 || !realpath_DARWIN_EXTSN(a1, __s1) || (result = strcmp(__s1, a1), result))
  {
LABEL_18:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = a1;
      *&buf[12] = 2080;
      *&buf[14] = __s1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Paths don't match: (%s/%s)", buf, 0x16u);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10000C318(const char *a1, removefile_flags_t a2)
{
  value = 0;
  v4 = removefile_state_alloc();
  if (v4)
  {
    v5 = v4;
    if (removefile_state_set(v4, 3u, sub_10000C55C) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 67109378;
      v19 = v6;
      v20 = 2080;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "removefile_state_set failed: %d (%s)", buf, 0x12u);
    }

    if (removefile_state_set(v5, 4u, &value) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 67109378;
      v19 = v9;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "removefile_state_set failed: %d (%s)", buf, 0x12u);
    }

    if (removefile(a1, v5, a2))
    {
      v12 = 0;
      if (*__error() != 2 || value)
      {
        goto LABEL_17;
      }
    }

    else if (value)
    {
      v12 = 0;
LABEL_17:
      removefile_state_free(v5);
      return v12;
    }

    v12 = 1;
    goto LABEL_17;
  }

  v12 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *__error();
    v14 = __error();
    v15 = strerror(*v14);
    *buf = 67109378;
    v19 = v13;
    v20 = 2080;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "removefile_state_alloc failed: %d (%s)", buf, 0x12u);
    return 0;
  }

  return v12;
}

uint64_t sub_10000C55C(_removefile_state *a1, const char *a2, int *a3)
{
  dst = 0;
  memset(&v17, 0, sizeof(v17));
  if (removefile_state_get(a1, 5u, &dst))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *__error();
      *buf = 67109120;
      LODWORD(v20) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "removefile_state_get failed: %{errno}d", buf, 8u);
    }

    dst = 2;
    goto LABEL_17;
  }

  if (dst == 1)
  {
    if (lstat(a2, &v17))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *__error();
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 136315650;
        v20 = a2;
        v21 = 1024;
        v22 = v6;
        v23 = 2080;
        v24 = v8;
        v9 = "lstat failed for %s: %d (%s)";
LABEL_9:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
      }
    }

    else
    {
      if ((v17.st_flags & 2) == 0)
      {
        goto LABEL_17;
      }

      if (lchflags(a2, v17.st_flags & 0xFFFFFFFD))
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v10 = *__error();
        v11 = __error();
        v12 = strerror(*v11);
        *buf = 136315650;
        v20 = a2;
        v21 = 1024;
        v22 = v10;
        v23 = 2080;
        v24 = v12;
        v9 = "lchflags failed for %s: %d (%s)";
        goto LABEL_9;
      }

      if (!unlink(a2))
      {
        return 0;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *__error();
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 136315650;
        v20 = a2;
        v21 = 1024;
        v22 = v13;
        v23 = 2080;
        v24 = v15;
        v9 = "Failed to unlink %s: %d (%s)";
        goto LABEL_9;
      }
    }
  }

LABEL_17:
  if (a3 && !*a3)
  {
    *a3 = dst;
  }

  return 0;
}

id sub_10000C7F8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 UTF8String];
    v3 = container_system_group_path_for_identifier();
    if (v3)
    {
      v4 = v3;
      v5 = [[NSString alloc] initWithUTF8String:v3];
      free(v4);
      goto LABEL_10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v2;
      v11 = 1024;
      v12 = 1;
      v6 = "Failed to copy system group container (%@): %d";
      v7 = 18;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = "Invalid input.";
    v7 = 2;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, buf, v7);
  }

  v5 = 0;
LABEL_10:

  return v5;
}

id sub_10000C964()
{
  if (qword_100028608 != -1)
  {
    sub_1000123F0();
  }

  v1 = qword_100028610;

  return v1;
}

void sub_10000C9A8(id a1)
{
  v3 = sub_10000C7F8(@"systemgroup.com.apple.mobilestorageproxy");
  v1 = [v3 stringByAppendingPathComponent:@"backingStore"];
  v2 = qword_100028610;
  qword_100028610 = v1;
}

uint64_t sub_10000CA10(void *a1, void *a2, id a3)
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

id sub_10000CAF0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  CFProperty = 0;
  if (a1 && v3)
  {
    v6 = IORegistryEntryFromPath(kIOMainPortDefault, [a1 fileSystemRepresentation]);
    if (v6)
    {
      v7 = v6;
      CFProperty = IORegistryEntryCreateCFProperty(v6, v4, 0, 0);
      IOObjectRelease(v7);
    }

    else
    {
      CFProperty = 0;
    }
  }

  return CFProperty;
}

id sub_10000CB94(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  v13 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = v5;
  if (!a2)
  {
    goto LABEL_7;
  }

  v7 = sub_10000CAF0(a1, a2);
  v9 = sub_100008280(v7);
  if (v9 && (v10 = v9, v11 = [v7 length], v10, v11 == 4))
  {
    [v7 getBytes:&v13 length:4];
    v8 = [NSNumber numberWithInt:v13];
  }

  else
  {
LABEL_6:
    v8 = v6;
  }

LABEL_7:

  return v8;
}

uint64_t sub_10000CC7C(io_object_t *a1, const char *a2)
{
  v2 = 0;
  iterator = 0;
  if (a1 && a2)
  {
    if (IORegistryEntryGetChildIterator(*a1, "IOService", &iterator))
    {
      v2 = 0;
    }

    else
    {
      while (1)
      {
        v5 = IOIteratorNext(iterator);
        v2 = v5;
        if (!v5)
        {
          break;
        }

        if (IOObjectConformsTo(v5, a2))
        {
          IOObjectRelease(*a1);
          *a1 = v2;
          v2 = 1;
          break;
        }

        IOObjectRelease(v2);
      }
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }
  }

  return v2;
}

uint64_t sub_10000CD2C(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  if (!lstat(*(a1 + 40), &v8))
  {
    result = 1;
    if ((v8.st_mode & 0xF000) != 0xA000)
    {
      return result;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  if (*__error() == 2)
  {
    return 1;
  }

  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    *buf = 136315650;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "lstat failed for %s: %d (%s)", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void sub_10000CE78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
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

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

double DERImg4DecodeFindInSequence(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v7 = 0;
  v8 = 0uLL;
  while (!DERDecodeSeqNext(a1, &v7))
  {
    if (v7 == a2)
    {
      result = *&v8;
      *a3 = v8;
      return result;
    }
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E39C(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_10000E67C(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePayloadExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136))
    {
      v4 = *(a1 + 144) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayload(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 136);
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *v2;
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadType(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = DERParseInteger(a1 + 104, a2);
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (result)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadVersion(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 120);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadKeybagExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 152))
    {
      v4 = *(a1 + 160) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadKeybag(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 152);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadCompressionInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 168))
    {
      v4 = *(a1 + 176) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadCompressionInfo(void *a1, _DWORD *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a1[17] && a1[18] && a1[21] && a1[22])
    {
      v7 = 0u;
      v8 = 0u;
      result = DERParseSequenceContentToObject(a1 + 21, 2u, &DERImg4CompressionItemSpecs, &v7, 0x20uLL, 0);
      if (!result)
      {
        result = DERParseInteger(&v7, a2);
        if (!result)
        {
          result = DERParseInteger(&v8, a3);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (a3)
    {
      *a2 = -1;
      *a3 = -1;
    }
  }

  return result;
}

double Img4DecodeCopyPayloadHashWithCallback(uint64_t a1, void (*a2)(void, void, __int128 *), uint64_t a3, int a4)
{
  if (!a1 || a4 != 20 || !a3)
  {
    if (!a3)
    {
      return *&v5;
    }

LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    return *&v5;
  }

  if (!*(a1 + 136) || !*(a1 + 144))
  {
    goto LABEL_9;
  }

  if (*a1 == 1)
  {
    v5 = *(a1 + 184);
    *(a3 + 16) = *(a1 + 200);
    *a3 = v5;
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
    a2(*(a1 + 8), *(a1 + 16), &v7);
    *&v5 = v7;
    *a3 = v7;
    *(a3 + 16) = v8;
  }

  return *&v5;
}

uint64_t Img4DecodeManifestExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24) != 0;
    }
  }

  return result;
}

double Img4DecodeCopyManifestHashWithCallback(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  if (!a1 || a4 != 20 || !a3)
  {
    if (!a3)
    {
      return *&v5;
    }

LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    return *&v5;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

  if (*(a1 + 1) == 1)
  {
    v5 = *(a1 + 328);
    *(a3 + 16) = *(a1 + 344);
    *a3 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    a2();
    *&v5 = 0;
    *a3 = 0uLL;
    *(a3 + 16) = 0;
  }

  return *&v5;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t Img4DecodeRestoreInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 440))
    {
      v4 = *(a1 + 448) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4)
{
  memset(v8, 0, sizeof(v8));
  v4 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v8);
      v4 = v6;
      if (!v6)
      {
        return DERParseBoolean(&v8[1] + 1, a4);
      }
    }
  }

  return v4;
}

void Img4DecodeGetIntegerFromSection(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetInteger64FromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger64(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetDataFromSection(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      *a5 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
      *a5 = v8;
    }
  }
}

double Img4DecodeGetObjectProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (DERImg4DecodeParseManifestProperties(a1, v11, 0) || DERImg4DecodeFindProperty(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || DERImg4DecodeFindProperty(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void Img4DecodeGetObjectPropertyInteger(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger64(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

void Img4DecodeGetObjectPropertyString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 0x16uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  *v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        *v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyData(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = DERImg4DecodeProperty(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, a3 + 88))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t sub_10000F5E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePerformTrustEvaluation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return sub_10000FD58(a1, a2, v6, a4, 0, a5);
}

uint64_t Img4DecodePerformTrustEvaluatation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return sub_10000FD58(a1, a2, v6, a4, 0, a5);
}

uint64_t sub_10000F7E4(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a1;
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a4;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  memset(v11, 0, sizeof(v11));
  if (v8 && !DERImg4DecodeProperty(v8, 0xE00000006D616E78, &v13) && *(&v15 + 1) == 0x2000000000000011 && !DERDecodeSeqContentInit(&v14 + 1, v12))
  {
    v9 = a1 | 0xE000000000000000;
    while (!DERDecodeSeqNext(v12, v11))
    {
      if (v11[0] == v9)
      {
        (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, 4, &v10);
        return 0;
      }
    }
  }

  (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, *(a2 + 8), *a2);
  return 0;
}

uint64_t sub_10000F904(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a11 = 0u;
  v14 = *(a1 + 2);
  a9 = *a1;
  a10 = v14;
  v15 = a2 | 0xE000000000000000;

  return DERImg4DecodeProperty(&a9, v15, &a11);
}

void sub_10000F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_10000F9B0(a1, a2, 2uLL, &a9, 0);
}

void sub_10000F978(uint64_t a1, ...)
{
  va_start(va, a1);

  bzero(va, 0xA0uLL);
}

void *sub_10000F998(uint64_t a1, const void *a2)
{

  return memcpy(v3, a2, v2);
}

void sub_10000F9B0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, BOOL *a5)
{
  if (a1)
  {
    bzero(v18, 0xA0uLL);
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
    v11 = *(a1 + 8);
    v10 = a1 + 8;
    if (v11)
    {
      bzero(v18, 0xA0uLL);
      if (!DERImg4DecodePayloadWithProperties(v10, v18))
      {
        if (v19[0])
        {
          DERImg4DecodeContentFindItemWithTag(v19, 0x2000000000000010, &v17);
          if (!v12)
          {
            DERImg4DecodeContentFindItemWithTag(&v17, 0x2000000000000011, &v16);
            if (!v13)
            {
              if (a5)
              {
                DERImg4DecodeContentFindItemWithTag(&v16, a2, &v15);
                if (v14)
                {
                  return;
                }

                *a5 = v15 != 0;
              }

              if (a4)
              {
                DERImg4DecodeFindProperty(&v16, a2, a3, a4);
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000FAFC(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !DERDecodeSeqInit((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (DERDecodeSeqNext(v21, &v17))
      {
        return;
      }

      v4 = (a1 + 7);
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (DERImg4DecodeProperty(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || DERDecodeSeqContentInit(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = DERDecodeSeqNext(v20, &v14);
            if (v5)
            {
              break;
            }

            if (DERImg4DecodeProperty(&__s1, v14, v9))
            {
              return;
            }

            DERImg4DecodeContentFindItemWithTag(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = (a1 + 9);
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = (a1 + 9);
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t sub_10000FD58(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  v14 = *(a2 + 32);
  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v15 = *(a3 + 8);
  if (v15 && (v16 = v15(a2, a6)) != 0 && !memcmp((a2 + 328), v16, **(a4 + 32)))
  {
    v17 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v21, &v22, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v21, v22, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v17 = 1;
  }

  result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v18 = *(a3 + 16);
    v19 = (a2 + 40);
    v20 = a1 | 0xE000000000000000;
    if (v18)
    {
      result = v18(v19, v20, 0x2000000000000011, v23, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERImg4DecodeFindProperty(v19, v20, 0x2000000000000011uLL, v23);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v23[1] + 8);
  }

  if (v17)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_rsa3k(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = sub_10001008C(v13, v9[4], v11, v12, 3072);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10001008C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 != 4096 && a5 != 3072)
  {
    return 0xFFFFFFFFLL;
  }

  v23[2] = 0;
  v23[3] = 0;
  v8 = (a5 + 63) >> 6;
  __chkstk_darwin();
  v10 = (v22 - v9);
  bzero(v22 - v9, v9);
  *v10 = v8;
  v11 = *(a1 + 8);
  v23[0] = *a1;
  v23[1] = v11;
  memset(v22, 0, sizeof(v22));
  if (DERParseSequenceToObject(v23, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v22, 0x20uLL, 0x20uLL) || sub_1000104B8(v10, *(&v22[0] + 1), *&v22[0]))
  {
    return 0xFFFFFFFFLL;
  }

  if (&CCRSA_PKCS1_FAULT_CANARY && &_ccrsa_verify_pkcs1v15_digest)
  {
    v13 = *a3;
    v12 = a3[1];
    v15 = *a4;
    v14 = a4[1];
    if (ccrsa_verify_pkcs1v15_digest() || cc_cmp_safe())
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  LOBYTE(v22[0]) = 0;
  v18 = *a3;
  v17 = a3[1];
  v20 = *a4;
  v19 = a4[1];
  v21 = ccrsa_verify_pkcs1v15();
  result = 0xFFFFFFFFLL;
  if (!v21 && (v22[0] & 1) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t verify_signature_rsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = sub_10001008C(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_signature_rsa4096_fixed(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = 0;
  v18 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    v11 = *v10;
                    if (*v10)
                    {
                      result = 0xFFFFFFFFLL;
                      if (a2 == 516 && *v11 == a6)
                      {
                        if (a1 >= 0xFFFFFFFFFFFFFE00)
                        {
                          __break(0x5513u);
                        }

                        else
                        {
                          __chkstk_darwin(0xFFFFFFFFLL);
                          bzero(&v15, 0x638uLL);
                          v14 = 64;
                          result = sub_1000104B8(&v14, 0x200uLL, a1);
                          if (!result)
                          {
                            if (&CCRSA_PKCS1_FAULT_CANARY && &_ccrsa_verify_pkcs1v15_digest)
                            {
                              v12 = v11[4];
                              result = ccrsa_verify_pkcs1v15_digest();
                              if (!result)
                              {
                                if (cc_cmp_safe())
                                {
                                  return 0xFFFFFFFFLL;
                                }

                                return 0;
                              }
                            }

                            else
                            {
                              v16 = 0;
                              v13 = v11[4];
                              LODWORD(result) = ccrsa_verify_pkcs1v15();
                              if (!result && (v16 & 1) != 0)
                              {
                                return 0;
                              }

                              if (result)
                              {
                                return result;
                              }

                              else
                              {
                                return 0xFFFFFFFFLL;
                              }
                            }
                          }
                        }
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000104B8(unint64_t *a1, unint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a2)
  {
    while (!*a3)
    {
      if (a3 == -1)
      {
        __break(0x5513u);
        goto LABEL_10;
      }

      ++a3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
  }

  else
  {
    v5 = (v4 + 7) >> 3;
    if (v5 > *a1)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v5;
  }

  return _ccrsa_make_pub();
}

void verify_signature_ecdsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  if (v9[2] && *(a7 + 48) && *v9 == a6)
                  {
                    v12[2] = v7;
                    v12[3] = v8;
                    v12[0] = a1;
                    v12[1] = a2;
                    v11[0] = a3;
                    v11[1] = a4;
                    v10[0] = a5;
                    v10[1] = a6;
                    sub_1000105C0(v12, v10, v11);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000105C0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v23[7] = 0;
  v6 = a1[1];
  ccec_x963_import_pub_size();
  if (ccec_keysize_is_supported())
  {
    cp = ccec_get_cp();
    v8 = *cp;
    if (*cp >> 61 || !is_mul_ok(8 * v8, 3uLL))
    {
      __break(0x550Cu);
    }

    else
    {
      v9 = 24 * v8;
      v10 = __CFADD__(v9, 16);
      v11 = v9 + 16;
      if (!v10)
      {
        v10 = __CFADD__(v11, 16);
        v12 = v11 + 16;
        if (!v10)
        {
          v13 = cp;
          v14 = v12 - 1;
          __chkstk_darwin();
          v16 = &v23[-v15];
          bzero(&v23[-v15], v15);
          if (v14 < 0x10)
          {
            __break(1u);
          }

          else
          {
            *v16 = v13;
            v18 = *a1;
            v17 = a1[1];
            if (!ccec_import_pub())
            {
              v20 = *a2;
              v19 = a2[1];
              v22 = *a3;
              v21 = a3[1];
              ccec_verify();
            }
          }

          return;
        }
      }
    }

    __break(0x5500u);
  }
}

uint64_t verify_chain_img4_v1(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &ROOT_CA_CERTIFICATE;
        v30[1] = 1215;
        if (!sub_100011AD4(v29, v30, 3u) && !sub_1000109F8(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = &_mh_execute_header;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = sub_100010C44(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            LODWORD(v17) = v17 + 1;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (DERDecodeSeqContentInit(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!DERDecodeSeqNext(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!DERDecodeSeqContentInit(v44, v50))
                {
                  do
                  {
                    v23 = DERDecodeSeqNext(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || DERParseSequenceContentToObject(v49, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!DEROidCompare(&oidCommonName, &v46));
                  v28 = v47;
                  result = DEROidCompare(&off_100026030, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_1000109F8(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = DERParseSequenceToObject(v7 + 16 * v8, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = DERParseSequenceToObject(a3 + 48 * v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (DERParseSequenceContentToObject((v12 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v23, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = DEROidCompare(&v20, &oidRsa);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = DERParseBitString(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = sub_100011BB0(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_100010C44(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0;
  memset(v13, 0, sizeof(v13));
  v8 = 0;
  v9 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || DERParseSequenceContentToObject(a2 + 2, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v11, 0x20uLL, 0x20uLL))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(&v12 + 1))
  {
    result = DEROidCompare(&v11, &oidEcPubKey);
    if ((result & 1) == 0)
    {
      if (*(&v12 + 1) != 2 || *v12 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v12 == -1)
      {
        __break(0x5513u);
        return result;
      }

      if (*(v12 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (!DEROidCompare(&v11, *(a3 + 40)))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a3)(*a2, a2[1], v13, **(a3 + 32), a3))
  {
    return 0xFFFFFFFFLL;
  }

  if (DERParseBitString((a2 + 4), &v8, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(a3 + 16))(*a1, a1[1], v8, v9, v13, **(a3 + 32), a3, 0);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100010E00(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = sub_1000109F8(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = sub_100010C44(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100010F90(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_X86_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (sub_100011AD4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}