BOOL sub_1000112B4(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4, __CFData *a5)
{
  v8 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
  v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a3, a4, kCFAllocatorNull);
  v17 = v9;
  if (v8)
  {
    v18 = v9 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v22 = sub_10000DA5C(kCFAllocatorDefault, v10, v11, v12, v13, v14, v15, v16, @"d1", v8);
    CFDataSetLength(a5, 0);
    DERData = CFPropertyListCreateDERData(kCFAllocatorDefault, v22, 0, v23, v24, v25, v26, v27);
    v19 = DERData;
    if (DERData)
    {
      BytePtr = CFDataGetBytePtr(DERData);
      v30 = CFDataGetLength(v19);
      CFDataAppendBytes(a5, BytePtr, v30);
      CFRelease(v19);
      v19 = CFDataGetLength(a5) > 0;
    }

    CFRelease(v22);
LABEL_13:
    CFRelease(v8);
    v20 = v19;
    if (!v17)
    {
      return v20;
    }

    goto LABEL_8;
  }

  v19 = 0;
  v20 = 0;
  if (v8)
  {
    goto LABEL_13;
  }

  if (v9)
  {
LABEL_8:
    CFRelease(v17);
  }

  return v20;
}

uint64_t sub_100011408(uint64_t a1, uint64_t a2, CFIndex a3, MockAKSRefKeyObject **a4, CFTypeRef *a5, __CFString **a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  cf = 0;
  v27 = 0;
  v13 = a2 + a3;
  v14 = der_decode_plist(0, &cf, 0, a2, a2 + a3, a6, a7, a8);
  if (!v14 || (v15 = v14, v14 != v13))
  {
    SecError(-26275, a6, @"encrypted_data_from_blob: NULL 'blob data'");
LABEL_11:
    v17 = 0;
LABEL_12:
    v21 = 0;
    goto LABEL_20;
  }

  v16 = CFGetTypeID(cf);
  if (v16 != CFDictionaryGetTypeID())
  {
    v18 = CFGetTypeID(cf);
    v19 = CFCopyTypeIDDescription(v18);
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"encrypted_data_from_blob: Bad object type %@ for 'blob data'", v19);
    SecError(-26276, a6, @"%@", v20);
    __security_simulatecrash(v20, 1405091842);
    if (v19)
    {
      CFRelease(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    goto LABEL_11;
  }

  if (sub_100011CAC(cf, &v27, &theData))
  {
    v17 = v27;
  }

  else
  {
    v17 = CFDataCreate(kCFAllocatorDefault, v15, a3);
    v27 = v17;
    theData = CFRetain(v17);
  }

  if (!v17)
  {
    SecError(-26275, a6, @"encrypted_data_from_blob: failed to decode 'encrypted data'");
    goto LABEL_12;
  }

  v22 = theData;
  if (!theData)
  {
    SecError(-26275, a6, @"encrypted_data_from_blob: failed to decode 'key data'");
    goto LABEL_12;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v22);
  v25 = aks_ref_key_create_with_blob(a1, BytePtr, Length, a4);
  if (v25)
  {
    SecError(-26275, a6, @"aks_ref_key: failed to create ref key with blob: %x (bag: %d)", v25, a1);
    goto LABEL_12;
  }

  if (a5)
  {
    *a5 = CFRetain(v17);
  }

  v21 = 1;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v21;
}

BOOL sub_100011628(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, _DWORD *a7, CFDataRef theData, char a9, __CFString **a10)
{
  v18 = CFDataGetLength(theData);
  length[0] = v18;
  if (CFEqual(a1, @"oe"))
  {
    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    if (a9)
    {
      v36 = v18;
      v20 = aks_kc_backup_wrap_key(a2, a6, a5, MutableBytePtr, &v36);
      if (v20)
      {
        v21 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          length[1] = 67109120;
          length[2] = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ks_crypt: aks_kc_backup_wrap_key returned %d", &length[1], 8u);
        }
      }

      else
      {
        length[0] = v36;
        if (a7)
        {
          *a7 = a4;
        }
      }

      goto LABEL_20;
    }

    v24 = aks_wrap_key(a6, a5, a4, a2, MutableBytePtr, length, a7);
LABEL_19:
    v20 = v24;
    goto LABEL_20;
  }

  if (!CFEqual(a1, @"od"))
  {
    if (!CFEqual(a1, @"odel"))
    {
      v20 = 3758097090;
      goto LABEL_37;
    }

    v25 = CFDataGetMutableBytePtr(theData);
    v26 = a6;
    v27 = a5;
    v28 = a4;
    v29 = a2;
    goto LABEL_18;
  }

  v22 = CFDataGetMutableBytePtr(theData);
  if (!a3)
  {
    v26 = a6;
    v27 = a5;
    v28 = a4;
    v29 = a2;
    v25 = v22;
LABEL_18:
    v24 = aks_unwrap_key(v26, v27, v28, v29, v25, length);
    goto LABEL_19;
  }

  v36 = v18;
  v23 = secLogObjForScope("ks_crypt");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(length[1]) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "have a backup_keypair, attempting to use", &length[1], 2u);
  }

  v20 = aks_kc_backup_unwrap_key(a3, a6, a5, v22, &v36);
  if (!v20)
  {
    length[0] = v36;
  }

LABEL_20:
  if (v20 > -536870161)
  {
    switch(v20)
    {
      case 0xE00002F0:
        return SecError(-25291, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) No key available for class.", 3758097136, a1, a4, a2);
      case 0xE007C013:
        return SecError(-26275, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.", v20, a1, a4, a2);
      case 0:
        CFDataSetLength(theData, length[0]);
        return 1;
    }

    goto LABEL_37;
  }

  if (v20 == -536870212)
  {
    return SecError(-26275, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.", v20, a1, a4, a2);
  }

  if (v20 != -536870207 && v20 != -536870174)
  {
LABEL_37:
    if (!CFEqual(a1, @"od") && !CFEqual(a1, @"odel"))
    {
      return SecError(-25291, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d)", v20, a1, a4, a2);
    }

    v36 = 0;
    *&length[1] = 0;
    v35 = sub_100011408(a2, a6, a5, &v36, &length[1], a10, v33, v34);
    if (*&length[1])
    {
      CFRelease(*&length[1]);
    }

    aks_ref_key_free(&v36);
    if (!v35)
    {
      return SecError(-25291, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d)", v20, a1, a4, a2);
    }

    return SecError(-26275, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.", v20, a1, a4, a2);
  }

  v30 = a4 == 10 || a4 == 7;
  v31 = "";
  if (v30)
  {
    v31 = " (hibernation?)";
  }

  return SecError(-25308, a10, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) Access to item attempted while keychain is locked%s.", v20, a1, a4, a2, v31);
}

uint64_t sub_100011A30(CFErrorRef *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *a1;
  if (!v4)
  {
    goto LABEL_10;
  }

  if (CFErrorGetCode(v4) != -25330)
  {
    return 0;
  }

  if (*a1)
  {
    v5 = CFErrorCopyUserInfo(*a1);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
    CFRelease(v5);
    v7 = *a1;
    if (*a1)
    {
      *a1 = 0;
      CFRelease(v7);
    }

    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_10:
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (a2)
    {
LABEL_8:
      valuePtr = -25330;
      v8 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
      Value = CFDictionaryGetValue(MutableCopy, v8);
      if (Value)
      {
        Mutable = CFArrayCreateMutableCopy(0, 0, Value);
      }

      else
      {
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      }

      v20 = Mutable;
      v21 = sub_100011BD8(Mutable, v11, v12, v13, v14, v15, v16, v17, a2);
      CFArrayAppendValue(v20, v21);
      CFRelease(v21);
      CFDictionarySetValue(MutableCopy, v8, v20);
      CFRelease(v8);
      CFRelease(v20);
      v18 = kCFErrorDomainOSStatus;
      v19 = MutableCopy;
      goto LABEL_14;
    }
  }

  v18 = kCFErrorDomainOSStatus;
  v19 = 0;
LABEL_14:
  *a1 = CFErrorCreate(0, v18, -25330, v19);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return 0;
}

CFArrayRef sub_100011BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v9 = -1;
  do
  {
    v10 = v18++;
    ++v9;
  }

  while (*v10);
  v19 = &a9;
  Mutable = CFArrayCreateMutable(0, v9, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  for (i = Mutable; v9; --v9)
  {
    v13 = v19++;
    v14 = *v13;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = kCFNull;
    }

    CFArrayAppendValue(i, v15);
  }

  Copy = CFArrayCreateCopy(0, i);
  CFRelease(i);
  return Copy;
}

uint64_t sub_100011CAC(const __CFDictionary *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"d1");
  v7 = CFDictionaryGetValue(a1, @"d2");
  if (Value)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v9 = v7;
  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(Value))
  {
    return 0;
  }

  v11 = CFDataGetTypeID();
  if (v11 != CFGetTypeID(v9))
  {
    return 0;
  }

  *a2 = CFRetain(Value);
  *a3 = CFRetain(v9);
  return 1;
}

BOOL sub_100011D68(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4, uint64_t a5, const __CFData *a6, __CFString **a7)
{
  if (CFEqual(cf1, @"od"))
  {
    v14 = "decrypt";
  }

  else if (CFEqual(cf1, @"oe"))
  {
    v14 = "encrypt";
  }

  else
  {
    v14 = "";
  }

  v15 = CFEqual(cf1, @"odel");
  v16 = "delete";
  if (!v15)
  {
    v16 = v14;
  }

  if (a1 <= -536870161)
  {
    if (a1 != -536870212)
    {
      if (a1 == -536870194)
      {
        goto LABEL_20;
      }

      if (a1 != -536870174)
      {
LABEL_25:
        SecError(-25291, a7, @"aks_ref_key: %x failed to '%s' item (class %d, bag: %d)", a1, v16, a4, a3);
        return 0;
      }

      SecError(-25308, a7, @"aks_ref_key: %x failed to '%s' item (class %d, bag: %d) Access to item attempted while keychain is locked.", 3758097122, v16, a4, a3);
      return 0;
    }

LABEL_19:
    SecError(-26275, a7, @"aks_ref_key: %x failed to '%s' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.", a1, v16, a4, a3);
    return 0;
  }

  if (a1 > -536363000)
  {
    if (a1 != -536362999 && a1 != -536362989)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (a1 != -536870160)
  {
    if (a1 != -536363000)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (a1 == -536870194 && a6)
    {
      CFDataGetBytePtr(a6);
      CFDataGetLength(a6);
      if (ACMContextCreateWithExternalForm())
      {
        ACMContextRemovePassphraseCredentialsByPurposeAndScope();
        ACMContextDelete();
      }
    }

    sub_100011A30(a7, a5);
    return 0;
  }

  return SecError(-25291, a7, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) No key available for class.", 3758097136, cf1, a4, a3);
}

uint64_t sub_100011FB8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, __CFData *a5, const __CFData *a6, const __CFData *a7, uint64_t a8, CFErrorRef *a9)
{
  bytes = 0;
  v37 = 0;
  length = 0;
  v35 = 0;
  v16 = SecAccessControlCopyData();
  v33 = 0;
  if (!a7 || (SecAccessControlIsBound() & 1) == 0)
  {
    SecAccessControlIsBound();
    sub_100011A30(a9, v16);
    goto LABEL_9;
  }

  BytePtr = CFDataGetBytePtr(a6);
  v18 = CFDataGetLength(a6);
  v19 = a1;
  v20 = a2;
  v21 = CFDataGetBytePtr(a7);
  v22 = CFDataGetLength(a7);
  aks_operation_optional_params(0, 0, BytePtr, v18, v21, v22, &v37, &v35);
  v23 = aks_ref_key_create(v19, v20, 0, v37, v35, &v33);
  if (v23)
  {
    v27 = v19;
    v28 = v20;
    v29 = v16;
    v30 = a7;
    v31 = a9;
LABEL_21:
    sub_100011D68(v23, @"oe", v27, v28, v29, v30, v31);
    goto LABEL_9;
  }

  v23 = aks_ref_key_encrypt(v33, v37, v35, a4, a3, &bytes, &length);
  if (v23)
  {
    v27 = v19;
    v28 = v20;
    v29 = v16;
    v30 = a7;
    v31 = a9;
    goto LABEL_21;
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  blob = aks_ref_key_get_blob(v33, &v32);
  if (blob)
  {
    if (sub_1000112B4(bytes, length, blob, v32, a5))
    {
      v25 = 1;
      goto LABEL_10;
    }

    SecError(-26275, a9, @"ks_crypt_acl: %x failed to '%s' item (class %d, bag: %d) Item can't be encrypted due to merge failed, so drop the item.", 0, "encrypt", v20, v19);
  }

  else
  {
    SecError(-26275, a9, @"ks_crypt_acl: %x failed to '%s' item (class %d, bag: %d) Item can't be encrypted due to invalid key data, so drop the item.", 0, "encrypt", v20, v19);
  }

LABEL_9:
  v25 = 0;
LABEL_10:
  if (v33)
  {
    aks_ref_key_free(&v33);
  }

  if (v37)
  {
    free(v37);
  }

  if (bytes)
  {
    free(bytes);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v25;
}

uint64_t sub_100012230(void *a1, const __CFData *a2, __CFData *a3, const __CFData *a4, CFDataRef theData, uint64_t a6, __CFString **a7)
{
  Length = theData;
  v34 = 0;
  v35 = 0;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(Length);
  }

  else
  {
    BytePtr = 0;
  }

  v32 = 0;
  v33 = 0;
  v14 = SecAccessControlCopyData();
  if (a4)
  {
    v15 = CFDataGetBytePtr(a4);
    v16 = CFDataGetLength(a4);
    aks_operation_optional_params(BytePtr, Length, 0, 0, v15, v16, &v35, &v33);
    v17 = v35;
    v18 = v33;
    v19 = CFDataGetBytePtr(a2);
    v20 = CFDataGetLength(a2);
    v21 = aks_ref_key_decrypt(a1, v17, v18, v19, v20, &v34, &v32);
    if (v21)
    {
      sub_100011D68(v21, @"od", 0, 0, v14, a4, a7);
    }

    else if (v34)
    {
      cf = 0;
      der_decode_plist(kCFAllocatorDefault, &cf, 0, v34, v34 + v32, v22, v23, v24);
      if (cf)
      {
        v25 = CFGetTypeID(cf);
        if (v25 == CFDataGetTypeID())
        {
          CFDataSetLength(a3, 0);
          v26 = cf;
          v27 = CFDataGetBytePtr(cf);
          v28 = CFDataGetLength(v26);
          CFDataAppendBytes(a3, v27, v28);
          CFRelease(cf);
          v29 = 1;
          goto LABEL_13;
        }

        CFRelease(cf);
        SecError(-26275, a7, @"ks_crypt_acl: %x failed to '%s' item, Item can't be decrypted due to wrong data, so drop the item.", 0, "decrypt");
      }

      else
      {
        SecError(-26275, a7, @"ks_crypt_acl: %x failed to '%s' item, Item can't be decrypted due to failed decode der, so drop the item.", 0, "decrypt");
      }
    }

    else
    {
      SecError(-26275, a7, @"ks_crypt_acl: %x failed to '%s' item, Item can't be decrypted due to invalid der data, so drop the item.", 0, "decrypt");
    }
  }

  else
  {
    sub_100011A30(a7, 0);
  }

  v29 = 0;
LABEL_13:
  if (v35)
  {
    free(v35);
  }

  if (v34)
  {
    free(v34);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v29;
}

id sub_100012490(uint64_t a1, CFDataRef theData, MockAKSRefKeyObject **a3, void *a4, __CFString **a5)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v12 = aks_ref_key_create_with_blob(a1, BytePtr, Length, a3);
  if (v12)
  {
    if (v12 == -536870206)
    {
      SecError(-26275, a5, @"aks_ref_key: failed to create ref key with blob because bad data (bag: %d)", a1);
    }

    else
    {
      SecError(-26275, a5, @"aks_ref_key: failed to create ref key with blob: %x (bag: %d)", v12, a1);
    }

    return 0;
  }

  else
  {
    v13 = *a3;

    return aks_ref_key_get_external_data(v13, a4);
  }
}

uint64_t sub_100012570()
{
  if (qword_100073708 != -1)
  {
    sub_10003E5B8();
  }

  return byte_100073700;
}

void sub_1000125A8(id a1)
{
  v1 = hwaes_key_available();
  byte_100073700 = v1;
  if (v1)
  {
    v2 = secLogObjForScope("aks");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E5CC(v2);
    }
  }

  else
  {
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "unable to access hwaes key", v4, 2u);
    }
  }
}

void sub_100012694(id a1)
{
  v1 = qword_100073710;
  if (qword_100073710)
  {
    [qword_100073710 dropAllKeys];
    v1 = qword_100073710;
  }

  qword_100073710 = 0;
}

uint64_t sub_1000127E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012800(uint64_t a1)
{
  v2 = qword_100073710;
  if (!qword_100073710)
  {
    v3 = [objc_alloc(*(a1 + 40)) _init];
    v4 = qword_100073710;
    qword_100073710 = v3;

    v2 = qword_100073710;
  }

  v5 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v5, v2);
}

void sub_1000129B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000129CC(uint64_t a1)
{
  cf = 0;
  *buf = -1431655766;
  lock_state = aks_get_lock_state(dword_1000739E8, buf);
  if (SecKernError(lock_state, &cf, @"aks_get_lock_state failed: %x", lock_state))
  {
    if ((buf[0] & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = cf;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecDbKeychainMetadataKeyStore: error getting lock state: %@", buf, 0xCu);
    }

    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onQueueDropClassAKeys];
}

void sub_1000134A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000134DC(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 40) + 8) + 24) &= SecDbBindObject(a2, 1, [NSNumber numberWithInt:*(a1 + 64)], (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) &= SecDbBindObject(a2, 2, [NSNumber numberWithInt:*(a1 + 68)], (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) &= SecDbBindBlob(a2, 3, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"), 0xFFFFFFFFFFFFFFFFLL, (*(*(a1 + 48) + 8) + 24));
  result = SecDbStep(*(a1 + 56), a2, (*(*(a1 + 48) + 8) + 24), 0);
  *(*(*(a1 + 40) + 8) + 24) &= result;
  return result;
}

void sub_1000137DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

BOOL sub_10001381C(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 24) &= SecDbBindObject(a2, 1, [NSNumber numberWithInt:*(a1 + 80)], (*(*(a1 + 40) + 8) + 24));
  v4 = *(*(a1 + 40) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013908;
  v8[3] = &unk_100059F88;
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v10 = a2;
  v11 = v6;
  v9 = *(a1 + 48);
  result = SecDbStep(v5, a2, (v4 + 24), v8);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

uint64_t sub_100013908(uint64_t a1)
{
  v2 = [NSData alloc];
  v3 = sqlite3_column_blob(*(a1 + 48), 0);
  v4 = [v2 initWithBytes:v3 length:{sqlite3_column_bytes(*(a1 + 48), 0)}];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = sqlite3_column_int(*(a1 + 48), 1);
  **(a1 + 56) = result;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_100013EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100013F2C(uint64_t a1)
{
  v3 = +[SecDbKeychainMetadataKeyStore cachingEnabled];
  if (v3)
  {
    v4 = *(*(a1 + 32) + 24);
    v1 = [NSNumber numberWithInt:*(a1 + 80)];
    v5 = [v4 objectForKeyedSubscript:v1];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (v3)
  {
  }

  v6 = *(a1 + 48);
  if (!*(*(v6 + 8) + 40))
  {
    v7 = *(*(a1 + 64) + 8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100014088;
    v12[3] = &unk_10005A000;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v14 = v6;
    v12[4] = v8;
    v16 = *(a1 + 80);
    v10 = v9;
    v17 = *(a1 + 88);
    v11 = *(a1 + 72);
    v13 = v10;
    v15 = v11;
    v18 = v3;
    *(*(*(a1 + 56) + 8) + 24) &= sub_10001992C(1, 0, v7 + 24, v12);
  }
}

BOOL sub_100014088(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 68);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 72);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [v6 fetchKeyForClass:v4 fromDb:a2 keybag:v5 specifier:v7 allowWrites:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v13 = [*(*(*(a1 + 56) + 8) + 40) domain];
    if ([v13 isEqualToString:kCFErrorDomainOSStatus])
    {
      v14 = [*(*(*(a1 + 56) + 8) + 40) code];

      if (v14 == -25308)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000145A4;
        block[3] = &unk_100059FD8;
        block[4] = *(a1 + 56);
        if (qword_100073728 != -1)
        {
          dispatch_once(&qword_100073728, block);
        }

        sec_action_perform(qword_100073720);
        return *(*(*(a1 + 48) + 8) + 40) != 0;
      }
    }

    else
    {
    }
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
LABEL_9:
    v15 = *(*(*(a1 + 48) + 8) + 40);
    if (v15)
    {
      if (*(a1 + 73) == 1)
      {
        v16 = *(*(a1 + 32) + 24);
        v17 = [NSNumber numberWithInt:*(a1 + 64)];
        [v16 setObject:v15 forKeyedSubscript:v17];
      }
    }

    else
    {
      v35 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412290;
        v51[0] = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: scary error encountered: %@", buf, 0xCu);
      }
    }

    return *(*(*(a1 + 48) + 8) + 40) != 0;
  }

  if (*(a1 + 72))
  {
    v18 = *(*(*(a1 + 56) + 8) + 40);
    if (v18)
    {
      v19 = [v18 domain];
      if (([v19 isEqualToString:NSOSStatusErrorDomain] & 1) == 0)
      {

        goto LABEL_9;
      }

      v20 = [*(*(*(a1 + 56) + 8) + 40) code];

      if (v20 != -26275)
      {
        goto LABEL_9;
      }
    }

    v21 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(*(*(a1 + 56) + 8) + 40) code];
      *buf = 134217984;
      v51[0] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: unable to use key (%ld), will attempt to create new one", buf, 0xCu);
    }

    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = 0;

    v25 = *(a1 + 64);
    v26 = *(a1 + 68);
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = *(*(a1 + 56) + 8);
    v45 = *(v29 + 40);
    v30 = [v27 newKeyForKeyclass:v25 withKeybag:v26 keySpecifier:v28 database:a2 error:&v45];
    objc_storeStrong((v29 + 40), v45);
    v31 = *(*(a1 + 48) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      return *(*(*(a1 + 48) + 8) + 40) != 0;
    }

    v33 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v51[0] = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: unable to create or save new key: %@", buf, 0xCu);
    }
  }

  else
  {
    v38 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 64);
      v40 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 67109378;
      LODWORD(v51[0]) = v39;
      WORD2(v51[0]) = 2112;
      *(v51 + 6) = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: Unable to load metadatakey for class %d from disk (%@) and not allowed to create new one", buf, 0x12u);
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v48 = NSLocalizedDescriptionKey;
      v49 = @"Unable to find a suitable metadata key and not permitted to create one";
      v41 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v42 = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-26275 userInfo:v41];
      v43 = *(*(a1 + 56) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;
    }
  }

  return 0;
}

void sub_1000145A4(uint64_t a1)
{
  v2 = sec_action_create("keychainlockedlogmessage", 1);
  v3 = qword_100073720;
  qword_100073720 = v2;

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014644;
  v4[3] = &unk_100059FD8;
  v4[4] = *(a1 + 32);
  sec_action_set_handler(qword_100073720, v4);
}

void sub_100014644(uint64_t a1)
{
  v2 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(*(a1 + 32) + 8) + 40) code];
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: cannot decrypt metadata key because the keychain is locked (%ld)", &v4, 0xCu);
  }
}

void sub_10001477C(id a1)
{
  qword_100073718 = dispatch_queue_create("metadata_store", 0);

  _objc_release_x1();
}

uint64_t sub_100014884(uint64_t a1)
{
  qword_100073738 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100014998(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  if (mach_timebase_info(&info))
  {
    _os_assumes_log();
    v1 = 1;
  }

  else
  {
    v1 = info.numer / info.denom;
  }

  qword_100073750 = v1;
}

void sub_100014CA8(id a1)
{
  v1 = secLogObjForScope("SecCritical");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SecWatchdog: watchdog has failed to exit securityd/secd gracefully - exiting ungracefully", v2, 2u);
  }

  exit(1);
}

void sub_100014EF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained runWatchdog];
    WeakRetained = v2;
  }
}

void sub_10001529C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v17);
  _Unwind_Resume(a1);
}

void sub_1000152C8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v7 isEqualToString:@"allowed-runtime"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      WeakRetained[4] = [v5 longValue];
    }

    else if ([v7 isEqualToString:@"reset-period"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      WeakRetained[5] = [v5 longValue];
    }

    else if ([v7 isEqualToString:@"check-period"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      WeakRetained[6] = [v5 longValue];
    }

    else if ([v7 isEqualToString:@"graceful-exit-time"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      WeakRetained[8] = [v5 longValue];
    }

    else
    {
      [*(a1 + 32) addObject:v7];
    }
  }
}

uint64_t start()
{
  zone = malloc_create_zone(0, 0);
  malloc_set_zone_name(zone, "ICU");
  u_setMemoryFunctions();
  sub_10001742C();
  if (SecSupportsEnhancedApfs() && (SecSeparateUserKeychain() & 1) == 0 && SecIsEduMode())
  {
    v1 = secLogObjForScope("keychain_handle");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "using system keychain handle", buf, 2u);
    }

    sub_100010DE0(4294967290);
  }

  else
  {
    v2 = secLogObjForScope("keychain_handle");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "using normal handle", buf, 2u);
    }
  }

  if (SecSeparateUserKeychain())
  {
    SecKeychainMoveUserDb();
  }

  signal(15, 1);
  global_queue = dispatch_get_global_queue(25, 0);
  qword_100073758 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, global_queue);
  dispatch_source_set_event_handler(qword_100073758, &stru_10005A138);
  dispatch_activate(qword_100073758);
  _SecDbServerSetup();
  _SecDbStatsEnableWaitSignposts(1);
  sub_100008ECC();
  mach_service = xpc_connection_create_mach_service("com.apple.securityd", 0, 1uLL);
  if (!mach_service)
  {
    sub_10003E7D8();
  }

  v5 = mach_service;
  xpc_connection_set_event_handler(mach_service, &stru_10005A178);
  xpc_connection_resume(v5);
  xpc_activity_register("com.apple.securityd.entropyhealth", XPC_ACTIVITY_CHECK_IN, &stru_10005A1D8);
  xpc_activity_register("com.apple.securityd.prng", XPC_ACTIVITY_CHECK_IN, &stru_10005A218);
  xpc_activity_register("com.apple.securityd.kcsharing.resync", XPC_ACTIVITY_CHECK_IN, &stru_10005A258);
  sub_10002C6BC();
  sub_100010C88();
  CFRunLoopRun();
  return 0;
}

void sub_100015714(id a1)
{
  v1 = secLogObjForScope("signal");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM, exiting when clean ✌️", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100015780(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10001581C;
    handler[3] = &unk_10005A198;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

void sub_10001581C(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return;
  }

  v4 = *(a1 + 32);
  type = xpc_get_type(object);
  cf = 0;
  v112 = 0u;
  *v113 = 0u;
  *v110 = 0u;
  *v111 = 0u;
  HIDWORD(v111[0]) = xpc_connection_get_euid(v4);
  BYTE12(v112) = 0;
  BYTE1(v113[1]) = 0;
  if (type != &_xpc_type_dictionary)
  {
    SecCFCreateErrorWithFormat(1, sSecXPCErrorDomain, 0, &cf, 0, @"Messages expect to be xpc dictionary, got: %@", v6, v7, object);
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v110[0];
      *&buf[12] = 2112;
      *&buf[14] = cf;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: returning error: %@", buf, 0x16u);
    }

    XPCObjectWithCFError = SecCreateXPCObjectWithCFError(cf);
    reply_with_format = xpc_create_reply_with_format();
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  reply_with_format = xpc_dictionary_create_reply(object);
  uint64 = xpc_dictionary_get_uint64(object, off_1000734A8);
  memset(buf, 0, 32);
  xpc_connection_get_audit_token();
  v11 = CFDataCreate(kCFAllocatorDefault, buf, 32);
  euid = xpc_connection_get_euid(v4);
  *v115 = *buf;
  *&v115[16] = *&buf[16];
  if (sub_100024EA0(v110, euid, v115))
  {
    if (uint64 == 30)
    {
      v12 = sub_10001758C(v110[0]);
    }

    else
    {
      v12 = 0;
    }

    v16 = secLogObjForScope("serverxpc");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E848(v110, uint64, v16);
    }

    if (uint64 <= 103)
    {
      if (uint64 > 6)
      {
        if (uint64 > 9)
        {
          if (uint64 != 10)
          {
            if (uint64 != 98)
            {
              if (uint64 != 103)
              {
                goto LABEL_204;
              }

              if (sub_100016B14(0x67u, v110[0], @"com.apple.private.uninstall.deletion", &cf) && (v17 = sub_10002BCB8(object, off_100073510, &cf)) != 0)
              {
                v18 = v17;
                v19 = sub_10003F0E8(v17, v110, &cf);
                CFRelease(v18);
              }

              else
              {
                v19 = 0;
              }

              v87 = off_1000734B0;
              v88 = reply_with_format;
              v86 = v19;
              goto LABEL_185;
            }

LABEL_48:
            if (sub_100016A90(0x62u, v110[0], &cf) && sub_100016B14(0x62u, v110[0], @"com.apple.private.keychain.allow-update-tokens", &cf))
            {
              v20 = sub_10002C0B8(object, off_1000734F8, &cf);
              v21 = sub_10002BCB8(object, off_100073500, &cf);
              v22 = sub_10002BCB8(object, off_1000734E8, &cf);
              if (v20)
              {
                if (uint64 == 136)
                {
                  v23 = sub_10001D0F4(v20, v21, v22, v110, &cf);
                }

                else
                {
                  v23 = sub_10001D030(v20, v21, v22, v110, &cf);
                }

                xpc_dictionary_set_BOOL(reply_with_format, off_1000734B0, v23);
                CFRelease(v20);
              }

              if (v21)
              {
                CFRelease(v21);
              }

              if (v22)
              {
                goto LABEL_202;
              }
            }

LABEL_204:
            if (!cf)
            {
              XPCObjectWithCFError = 0;
LABEL_6:
              if (reply_with_format)
              {
                xpc_connection_send_message(v4, reply_with_format);
                xpc_release(reply_with_format);
              }

              if (XPCObjectWithCFError)
              {
                xpc_release(XPCObjectWithCFError);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v110[1])
              {
                CFRelease(v110[1]);
              }

              if (v111[1])
              {
                CFRelease(v111[1]);
              }

              if (v110[0])
              {
                CFRelease(v110[0]);
              }

              v13 = v113[0];
              if (v113[0])
              {
                v113[0] = 0;
                CFRelease(v13);
              }

              if (v12)
              {
                CFRelease(v12);
              }

              if (v11)
              {
                CFRelease(v11);
              }

              return;
            }

            if (SecErrorGetOSStatus() != -25300)
            {
              v96 = cf;
              if (cf && CFErrorGetCode(cf) == 2)
              {
                Domain = CFErrorGetDomain(v96);
                if (Domain && kSOSErrorDomain)
                {
                  if (CFEqual(Domain, kSOSErrorDomain))
                  {
                    goto LABEL_220;
                  }
                }

                else if (Domain == kSOSErrorDomain)
                {
                  goto LABEL_220;
                }
              }

              if (SecErrorGetOSStatus() == -25330)
              {
                v98 = secLogObjForScope("SecWarning");
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_220;
                }

                v99 = v110[0];
                v100 = sub_10002B91C(uint64);
                *v115 = 138412802;
                *&v115[4] = v99;
                *&v115[12] = 2112;
                *&v115[14] = v100;
                *&v115[22] = 2112;
                *&v115[24] = cf;
                v101 = "Authentication is needed %@ %@ %@";
              }

              else
              {
                v98 = secLogObjForScope("SecError");
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_220;
                }

                v102 = v110[0];
                v103 = sub_10002B91C(uint64);
                *v115 = 138412802;
                *&v115[4] = v102;
                *&v115[12] = 2112;
                *&v115[14] = v103;
                *&v115[22] = 2112;
                *&v115[24] = cf;
                v101 = "%@ %@ %@";
              }

              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, v101, v115, 0x20u);
            }

LABEL_220:
            XPCObjectWithCFError = SecCreateXPCObjectWithCFError(cf);
            if (reply_with_format)
            {
              xpc_dictionary_set_value(reply_with_format, off_1000734C0, XPCObjectWithCFError);
            }

            goto LABEL_6;
          }

          if (!sub_100016B14(0xAu, v110[0], @"restore-keychain", &cf))
          {
            goto LABEL_204;
          }

          *v115 = 0;
          v109 = 0;
          v71 = sub_10002BC5C(object, off_100073508, 0);
          v72 = v71;
          if (v71 == -1)
          {
            v73 = sub_10002BD60(object, off_1000734C8, &cf);
          }

          else
          {
            v73 = sub_100016C08(v71, v115, &v109);
          }

          v91 = v73;
          if (v73)
          {
            v92 = sub_10002BD60(object, off_1000734D0, &cf);
            if (v92)
            {
              v93 = v92;
              v108 = 0;
              if (sub_10002BDF4(object, off_1000734D8, &v108, &cf))
              {
                v94 = sub_10001D998(v91, v110, v93, v108, &cf);
                xpc_dictionary_set_BOOL(reply_with_format, off_1000734B0, v94);
                if (v108)
                {
                  CFRelease(v108);
                }
              }

              CFRelease(v93);
            }

            CFRelease(v91);
          }

          if (v72 == -1)
          {
LABEL_224:
            if (*v115)
            {
              munmap(*v115, v109);
            }

            goto LABEL_204;
          }

          v95 = v72;
LABEL_223:
          close(v95);
          goto LABEL_224;
        }

        if (uint64 != 7)
        {
          if (uint64 == 9 && sub_100016B14(9u, v110[0], @"restore-keychain", &cf))
          {
            *v115 = 0;
            v109 = 0;
            if (sub_10002BDF4(object, off_1000734D0, v115, &cf))
            {
              if (sub_10002BDF4(object, off_1000734D8, &v109, &cf))
              {
                v45 = j__xpc_dictionary_get_BOOL(object, off_1000734E0);
                v46 = sub_10001D3C8(v110, *v115, v109, v45, &cf);
                if (v46)
                {
                  v47 = v46;
                  v48 = sub_10002BC5C(object, off_100073508, 0);
                  if (v48 < 0)
                  {
                    sub_10002BA4C(reply_with_format, off_1000734B0, v47, &cf);
                  }

                  else
                  {
                    v49 = v48;
                    v50 = sub_100016B94(v48, v47);
                    if (close(v49))
                    {
                      v51 = 0;
                    }

                    else
                    {
                      v51 = v50;
                    }

                    if (!v51)
                    {
                      v52 = __error();
                      SecError(-36, &cf, @"Failed to write backup file: %d", *v52);
                    }

                    sub_10002BAF0(reply_with_format, off_1000734B0, v51);
                  }

                  CFRelease(v47);
                }

                if (v109)
                {
                  CFRelease(v109);
                }
              }

              v82 = *v115;
              if (*v115)
              {
                goto LABEL_203;
              }
            }
          }

          goto LABEL_204;
        }

        v83 = sub_100017534(v110[0]);
        if (v83 && (v84 = v83, v85 = CFEqual(v83, @"com.apple.purplebuddy"), CFRelease(v84), v85) || sub_100016B14(7u, v110[0], @"com.apple.private.security.delete.all", &cf))
        {
          v86 = sub_10001D104(&cf);
        }

        else
        {
          v86 = 0;
        }

        v87 = off_1000734B0;
        v88 = reply_with_format;
LABEL_185:
        xpc_dictionary_set_BOOL(v88, v87, v86);
        goto LABEL_204;
      }

      if (uint64 <= 1)
      {
        if (uint64)
        {
          if (uint64 != 1)
          {
            goto LABEL_204;
          }

          if (!sub_100016A90(0, v110[0], &cf))
          {
            goto LABEL_204;
          }

          v24 = sub_10002BE68(object, off_1000734E8, &cf);
          if (!v24)
          {
            goto LABEL_204;
          }

          v22 = v24;
          *v115 = 0;
          if (sub_10001AD28(v24, v110, v115, &cf) && *v115)
          {
            sub_10002B94C(reply_with_format, off_1000734B0, *v115, 1, &cf, v25, v26, v27);
            goto LABEL_61;
          }
        }

        else
        {
          if (!sub_100016A90(0, v110[0], &cf))
          {
            goto LABEL_204;
          }

          v55 = sub_10002BE68(object, off_1000734E8, &cf);
          if (!v55)
          {
            goto LABEL_204;
          }

          v22 = v55;
          if ((CFDictionaryGetValue(v55, kSecAttrDeriveSyncIDFromItemAttributes) || CFDictionaryGetValue(v22, kSecAttrPCSPlaintextServiceIdentifier) || CFDictionaryGetValue(v22, kSecAttrPCSPlaintextPublicKey) || CFDictionaryGetValue(v22, kSecAttrPCSPlaintextPublicIdentity)) && !sub_100016B14(0, v110[0], @"com.apple.private.ckks.plaintextfields", &cf) || (CFDictionaryGetValue(v22, kSecDataInetExtraNotes) || CFDictionaryGetValue(v22, kSecDataInetExtraHistory) || CFDictionaryGetValue(v22, kSecDataInetExtraClientDefined0) || CFDictionaryGetValue(v22, kSecDataInetExtraClientDefined1) || CFDictionaryGetValue(v22, kSecDataInetExtraClientDefined2) || CFDictionaryGetValue(v22, kSecDataInetExtraClientDefined3)) && !sub_100016B14(0, v110[0], @"com.apple.private.keychain.inet_expansion_fields", &cf))
          {
            *v115 = 0;
            goto LABEL_202;
          }

          if (CFDictionaryGetValue(v22, kSecAttrSysBound))
          {
            v56 = sub_100016B14(0, v110[0], @"com.apple.private.keychain.sysbound", &cf);
            *v115 = 0;
            if (!v56)
            {
              goto LABEL_202;
            }
          }

          else
          {
            *v115 = 0;
          }

          if (sub_10001B514(v22, v110, v115, &cf) && *v115)
          {
            sub_10002B940(reply_with_format, off_1000734B0, *v115, &cf, v104, v105, v106, v107);
LABEL_61:
            v28 = *v115;
            if (*v115)
            {
              *v115 = 0;
              CFRelease(v28);
            }
          }
        }

LABEL_202:
        v82 = v22;
        goto LABEL_203;
      }

      if (uint64 != 2)
      {
        if (uint64 != 3)
        {
          goto LABEL_204;
        }

        if (!sub_100016A90(0, v110[0], &cf))
        {
          goto LABEL_204;
        }

        v41 = sub_10002BE68(object, off_1000734E8, &cf);
        if (!v41)
        {
          goto LABEL_204;
        }

        v22 = v41;
        v42 = sub_10001D020(v41, v110, &cf);
        xpc_dictionary_set_BOOL(reply_with_format, off_1000734B0, v42);
        goto LABEL_202;
      }

      if (!sub_100016A90(2u, v110[0], &cf))
      {
        goto LABEL_204;
      }

      v62 = sub_10002BE68(object, off_1000734E8, &cf);
      if (!v62)
      {
        goto LABEL_204;
      }

      v61 = v62;
      v63 = sub_10002BE68(object, off_1000734F0, &cf);
      if (!v63)
      {
        goto LABEL_158;
      }

      v64 = v63;
      if ((!CFDictionaryGetValue(v61, kSecAttrDeriveSyncIDFromItemAttributes) && !CFDictionaryGetValue(v64, kSecAttrPCSPlaintextServiceIdentifier) && !CFDictionaryGetValue(v64, kSecAttrPCSPlaintextPublicKey) && !CFDictionaryGetValue(v64, kSecAttrPCSPlaintextPublicIdentity) || sub_100016B14(2u, v110[0], @"com.apple.private.ckks.plaintextfields", &cf)) && (!CFDictionaryGetValue(v64, kSecDataInetExtraNotes) && !CFDictionaryGetValue(v64, kSecDataInetExtraHistory) && !CFDictionaryGetValue(v64, kSecDataInetExtraClientDefined0) && !CFDictionaryGetValue(v64, kSecDataInetExtraClientDefined1) && !CFDictionaryGetValue(v64, kSecDataInetExtraClientDefined2) && !CFDictionaryGetValue(v64, kSecDataInetExtraClientDefined3) || sub_100016B14(2u, v110[0], @"com.apple.private.keychain.inet_expansion_fields", &cf)) && (!CFDictionaryGetValue(v61, kSecAttrSysBound) || sub_100016B14(2u, v110[0], @"com.apple.private.keychain.sysbound", &cf)))
      {
        v65 = sub_10001CBE0(v61, v64, v110, &cf);
        xpc_dictionary_set_BOOL(reply_with_format, off_1000734B0, v65);
      }

      goto LABEL_157;
    }

    if (uint64 > 111)
    {
      if (uint64 > 130)
      {
        if (uint64 != 131)
        {
          if (uint64 == 132)
          {
            if (sub_100016A90(0x84u, v110[0], &cf) && sub_100016B14(0x84u, v110[0], @"com.apple.private.keychain.allow-delete-on-sign-out", &cf) && sub_10001C0B0(v110, &cf))
            {
              sub_10002BAF0(reply_with_format, off_1000734B0, 1);
            }

            goto LABEL_204;
          }

          if (uint64 != 136)
          {
            goto LABEL_204;
          }

          goto LABEL_48;
        }

        if (!sub_100016A90(0x83u, v110[0], &cf))
        {
          goto LABEL_204;
        }

        if (BYTE1(v113[1]) != 1)
        {
          goto LABEL_204;
        }

        v74 = sub_10002BE68(object, off_1000734E8, &cf);
        if (!v74)
        {
          goto LABEL_204;
        }

        v61 = v74;
        v75 = sub_10002C0B8(object, off_100073528, &cf);
        if (!v75)
        {
          goto LABEL_158;
        }

        v64 = v75;
        v76 = sub_10001B528(v61, v75, v110, &cf);
        if (v76)
        {
          v81 = v76;
          sub_10002B940(reply_with_format, off_1000734B0, v76, &cf, v77, v78, v79, v80);
          CFRelease(v81);
        }

LABEL_157:
        CFRelease(v64);
LABEL_158:
        v82 = v61;
        goto LABEL_203;
      }

      if (uint64 != 112)
      {
        if (uint64 != 114 || !sub_100016B14(0x72u, v110[0], @"com.apple.private.keychain.keychaincontrol", &cf))
        {
          goto LABEL_204;
        }

        v53 = sub_100007A04();
        if (v53)
        {
          v54 = v53;
          xpc_dictionary_set_value(reply_with_format, off_1000734B8, v53);
          xpc_dictionary_set_BOOL(reply_with_format, off_1000734B0, 1);
          xpc_release(v54);
          goto LABEL_204;
        }

        goto LABEL_165;
      }

      v43 = v110[0];
      v44 = 112;
LABEL_164:
      if (!sub_100016B14(v44, v43, @"com.apple.private.keychain.backuptableops", &cf))
      {
        goto LABEL_204;
      }

LABEL_165:
      v87 = off_1000734B0;
      v88 = reply_with_format;
      v86 = 0;
      goto LABEL_185;
    }

    if (uint64 <= 109)
    {
      if (uint64 == 104)
      {
        if (!sub_100016B14(0x68u, v110[0], @"restore-keychain", &cf))
        {
          goto LABEL_204;
        }

        *v115 = 0;
        v109 = 0;
        v57 = sub_10002BC5C(object, off_100073508, 0);
        if (v57 == -1)
        {
          goto LABEL_204;
        }

        v58 = v57;
        v59 = sub_100016C08(v57, v115, &v109);
        if (!v59)
        {
          v95 = v58;
          goto LABEL_223;
        }

        v60 = v59;
        v61 = sub_10001DE28(v59, &cf);
        if (v61)
        {
          sub_10002BB0C(reply_with_format, off_1000734B0, v61, &cf);
        }

        CFRelease(v60);
        close(v58);
        if (*v115)
        {
          munmap(*v115, v109);
        }

        if (!v61)
        {
          goto LABEL_204;
        }

        goto LABEL_158;
      }

      if (uint64 != 109)
      {
        goto LABEL_204;
      }

      if (!sub_100016B14(0x6Du, v110[0], @"com.apple.private.keychain.certificates", &cf))
      {
        sub_10002BA34(reply_with_format, off_1000734B0, 0, &cf, v29, v30, v31, v32);
        goto LABEL_204;
      }

      v33 = sub_10002BD60(object, off_100073518, &cf);
      v34 = sub_10002BCB8(object, off_100073510, &cf);
      v39 = v34;
      if (v33 && v34)
      {
        v40 = sub_10001E0B4(v33, v34, &cf);
      }

      else
      {
        v40 = 0;
        v90 = 0;
        if (!v33)
        {
LABEL_174:
          if (v39)
          {
            CFRelease(v39);
          }

          sub_10002BA34(reply_with_format, off_1000734B0, v90, &cf, v35, v36, v37, v38);
          if (!v90)
          {
            goto LABEL_204;
          }

          v82 = v90;
LABEL_203:
          CFRelease(v82);
          goto LABEL_204;
        }
      }

      CFRelease(v33);
      v90 = v40;
      goto LABEL_174;
    }

    if (uint64 != 110)
    {
      v43 = v110[0];
      v44 = 111;
      goto LABEL_164;
    }

    if (!sub_100016B14(0x6Eu, v110[0], @"com.apple.private.keychain.certificates", &cf))
    {
      v89 = 0;
LABEL_184:
      v87 = off_1000734B0;
      v88 = reply_with_format;
      v86 = v89;
      goto LABEL_185;
    }

    v66 = sub_10002BD60(object, off_100073518, &cf);
    v67 = sub_10002BD60(object, off_100073520, &cf);
    v68 = sub_10002BCB8(object, off_100073510, &cf);
    v69 = v68;
    if (v66 && v67 && v68)
    {
      v70 = sub_10001E200(v66, v67, v68, &cf);
    }

    else
    {
      v70 = 0;
      v89 = 0;
      if (!v66)
      {
LABEL_180:
        if (v67)
        {
          CFRelease(v67);
        }

        if (v69)
        {
          CFRelease(v69);
        }

        goto LABEL_184;
      }
    }

    CFRelease(v66);
    v89 = v70;
    goto LABEL_180;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  xpc_connection_send_message(v4, reply_with_format);
  xpc_release(reply_with_format);
}

BOOL sub_100016A90(unsigned int a1, __SecTask *a2, __CFString **a3)
{
  v6 = sub_100017830(a2, @"com.apple.private.keychain.deny");
  if (v6)
  {
    v7 = sub_10002B91C(a1);
    SecError(-25291, a3, @"%@: %@ has entitlement %@", v7, a2, @"com.apple.private.keychain.deny");
  }

  return !v6;
}

BOOL sub_100016B14(unsigned int a1, __SecTask *a2, const __CFString *a3, __CFString **a4)
{
  v8 = sub_100017830(a2, a3);
  if (!v8)
  {
    v9 = sub_10002B91C(a1);
    SecError(-34018, a4, @"%@: %@ lacks entitlement %@", v9, a2, a3);
  }

  return v8;
}

BOOL sub_100016B94(int a1, CFDataRef theData)
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

CFDataRef sub_100016C08(int a1, const UInt8 **a2, CFIndex *a3)
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

void sub_100016CB4(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {

    _SecCoreAnalyticsSendKernEntropyAnalytics();
  }
}

void sub_100016CF0(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_get_state(a2) != 2)
  {
    return;
  }

  v17 = 0;
  v2 = open("/dev/random", 1);
  if (v2 == -1)
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(v19) = v7;
      v6 = "failed to open /dev/random (%d)";
      goto LABEL_8;
    }
  }

  else
  {
    v3 = aks_ref_key_create(0xFFFFFFFFLL, 13, 4, 0, 0, &v17);
    if (!v3)
    {
      __nbyte = 0;
      public_key = aks_ref_key_get_public_key(v17, &__nbyte);
      v11 = __nbyte;
      ccec_cp_256();
      if (v11 > (((cczp_bitlen() + 7) >> 2) | 1))
      {
        v12 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        *buf = 134217984;
        v19 = __nbyte;
        v6 = "invalid pub key (%zu)";
        v8 = v12;
        v9 = 12;
        goto LABEL_9;
      }

      v13 = __nbyte;
      if (!__nbyte)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v14 = write(v2, public_key, v13);
        if (v14 == -1)
        {
          break;
        }

        public_key += v14;
        v13 = __nbyte - v14;
        __nbyte -= v14;
        if (!__nbyte)
        {
          goto LABEL_10;
        }
      }

      v5 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v15 = *__error();
      *buf = 67109120;
      LODWORD(v19) = v15;
      v6 = "failed to write /dev/random (%d)";
LABEL_8:
      v8 = v5;
      v9 = 8;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v6, buf, v9);
      goto LABEL_10;
    }

    v4 = v3;
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v19) = v4;
      v6 = "failed to create refkey (%d)";
      goto LABEL_8;
    }
  }

LABEL_10:
  if (v17)
  {
    aks_ref_key_free(&v17);
  }

  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }
}

uint64_t sub_100016F58()
{
  if (dword_100073760)
  {
    v0 = dword_100073760 == 1;
  }

  else
  {
    if (qword_100073768 != -1)
    {
      sub_10003E900();
    }

    v0 = byte_100073764;
  }

  return v0 & 1;
}

void sub_100016FAC(id a1)
{
  byte_100073764 = _os_feature_enabled_impl();
  v1 = secLogObjForScope("keychain");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100073764)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "System Keychain Always Supported set via feature flag to %s", &v3, 0xCu);
  }
}

uint64_t sub_100017084()
{
  if (dword_100073770)
  {
    v0 = dword_100073770 == 1;
  }

  else
  {
    if (qword_100073778 != -1)
    {
      sub_10003E914();
    }

    v0 = byte_100073774;
  }

  return v0 & 1;
}

CFTypeRef *sub_100017148(CFTypeRef cf2, dispatch_once_t *predicate, uint64_t a3)
{
  if (dword_100073780)
  {
    v7 = *(&off_100073388 + dword_100073780);

    return sub_100017388(v7, cf2);
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_1000173F4;
    v10[3] = &unk_1000625C0;
    v10[4] = a3;
    v10[5] = cf2;
    if (*predicate != -1)
    {
      dispatch_once(predicate, v10);
    }

    return *a3;
  }
}

uint64_t sub_100017278(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"PRAGMA user_version = %d", a1);
  v6 = SecDbExec(a2, v5, a3);
  if ((v6 & 1) == 0)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v8 = *a3;
      }

      else
      {
        v8 = 0;
      }

      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setDbUserVersion failed: %@", buf, 0xCu);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

CFTypeRef *sub_100017388(uint64_t a1, CFTypeRef cf2)
{
  result = *(a1 + 8);
  if (result)
  {
    v5 = (a1 + 16);
    do
    {
      v6 = *result;
      if (cf2 && v6)
      {
        if (CFEqual(*result, cf2))
        {
          return *(v5 - 1);
        }
      }

      else if (v6 == cf2)
      {
        return result;
      }

      v7 = *v5++;
      result = v7;
    }

    while (v7);
  }

  return result;
}

CFTypeRef *sub_1000173F4(uint64_t a1)
{
  result = sub_100017388(off_100073388, *(a1 + 40));
  **(a1 + 32) = result;
  return result;
}

const void *sub_10001743C(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

const void *sub_100017490(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
LABEL_8:
      CFRelease(v3);
      return 0;
    }

    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != CFStringGetTypeID())
        {
          break;
        }

        if (v6 == ++v7)
        {
          return v3;
        }
      }

      goto LABEL_8;
    }
  }

  return v3;
}

const void *sub_100017534(__SecTask *a1)
{
  result = sub_10001743C(a1, @"application-identifier");
  if (!result)
  {

    return sub_10001743C(a1, @"com.apple.application-identifier");
  }

  return result;
}

__CFArray *sub_100017598(__SecTask *a1)
{
  v2 = sub_100017830(a1, @"com.apple.developer.on-demand-install-capable");
  v3 = sub_100017490(a1, @"keychain-access-groups");
  v4 = sub_100017490(a1, @"com.apple.security.application-groups");
  v5 = sub_100017534(a1);
  v6 = sub_100017490(a1, @"com.apple.developer.associated-application-identifier");
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (v3)
  {
    v16.length = CFArrayGetCount(v3);
    v16.location = 0;
    CFArrayAppendArray(Mutable, v3, v16);
  }

  if (v6)
  {
    v17.length = CFArrayGetCount(v6);
    v17.location = 0;
    CFArrayAppendArray(Mutable, v6, v17);
  }

  if (v5)
  {
    CFArrayAppendValue(Mutable, v5);
  }

  if (v4)
  {
    if (v2)
    {
      v8 = secLogObjForScope("entitlements");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = @"com.apple.security.application-groups";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because client is API-restricted", &v13, 0xCu);
      }
    }

    else
    {
      v18.length = CFArrayGetCount(v4);
      v18.location = 0;
      CFArrayAppendArray(Mutable, v4, v18);
    }
  }

  v15.length = CFArrayGetCount(Mutable);
  v15.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v15, kSecAttrAccessGroupToken);
  if (FirstIndexOfValue == -1)
  {
LABEL_15:
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = FirstIndexOfValue;
  if (_os_feature_enabled_impl())
  {
    CFArrayRemoveValueAtIndex(Mutable, v10);
    CFArrayAppendValue(Mutable, kSecAttrAccessGroupToken);
    goto LABEL_15;
  }

  v12 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Keychain access group com.apple.token ignored, feature not available", &v13, 2u);
  }

  CFArrayRemoveValueAtIndex(Mutable, v10);
  if (v6)
  {
LABEL_16:
    CFRelease(v6);
  }

LABEL_17:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

BOOL sub_100017830(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  TypeID = CFBooleanGetTypeID();
  v5 = TypeID == CFGetTypeID(v3) && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

uint64_t sub_100017A1C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadData();
        v22 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 3)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
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

LABEL_37:
            *(a1 + 16) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000180F0()
{
  os_unfair_lock_lock(&unk_1000737C8);
  DistributedCenter = qword_1000737D0;
  if (!qword_1000737D0)
  {
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
  }

  os_unfair_lock_unlock(&unk_1000737C8);

  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, @"com.apple.security.shared-items-changed", 0, 0, 0);
}

void sub_100018160()
{
  if (qword_1000737D8 != -1)
  {
    sub_10003FB5C();
  }

  v1 = qword_1000737E0;

  sec_action_perform(v1);
}

void sub_1000181A4(id a1)
{
  v1 = sec_action_create("SecServerKeychainChanged", 1);
  qword_1000737E0 = v1;

  sec_action_set_handler(v1, &stru_100062640);
}

void sub_1000181E8(id a1)
{
  v1 = notify_post(off_1000734A0);
  if (v1)
  {
    v2 = v1;
    v3 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 136315394;
    v9 = off_1000734A0;
    v10 = 1024;
    v11 = v2;
    v4 = "notify_post %s returned: %u";
    v5 = v3;
    v6 = 18;
  }

  else
  {
    v7 = secLogObjForScope("item");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 136315138;
    v9 = off_1000734A0;
    v4 = "Sent %s";
    v5 = v7;
    v6 = 12;
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, &v8, v6);
}

uint64_t sub_100018308(uint64_t a1, int *a2, CFTypeRef *a3)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 0x40000000;
  v24[2] = sub_1000186E0;
  v24[3] = &unk_100062690;
  v24[5] = &v25;
  v24[6] = a1;
  v24[4] = &v33;
  v6 = SecDbPrepare(a1, @"SELECT name FROM sqlite_master WHERE type='table' AND name='tversion'", &v32, v24);
  v7 = v6 & v34[3];
  *(v34 + 24) = v7;
  if (v7)
  {
    if (v26[3])
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 0x40000000;
      v23[2] = sub_100018788;
      v23[3] = &unk_1000626D8;
      v23[4] = &v33;
      v23[5] = a1;
      v23[6] = a2;
      v8 = SecDbPrepare(a1, @"SELECT version FROM tversion", v30 + 3, v23);
      v9 = (v8 & v34[3]);
      *(v34 + 24) &= v8;
      if (v9 == 1 && *a2 >= 9u)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 0x40000000;
        v22[2] = sub_10001885C;
        v22[3] = &unk_100062720;
        v22[4] = &v33;
        v22[5] = &v29;
        v22[6] = a2;
        v22[7] = a1;
        SecDbPrepare(a1, @"SELECT minor FROM tversion WHERE version = ?", v30 + 3, v22);
        *(v34 + 24) = 1;
      }
    }

    else
    {
      v10 = secLogObjForScope("upgr");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v30[3];
        *buf = 138412290;
        *v38 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "no tversion table, will setup a new database: %@", buf, 0xCu);
      }

      *a2 = 0;
    }
  }

  else
  {
    SecDbError(11, a3, @"Failed to read sqlite_master table: %@", v30[3]);
  }

  v12 = secLogObjForScope("upgr");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a2;
    v14 = *(v34 + 24);
    v15 = v30[3];
    *buf = 67109634;
    *v38 = v13;
    *&v38[4] = 1024;
    *&v38[6] = v14;
    v39 = 2112;
    v40 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "database version is: 0x%08x : %d : %@", buf, 0x18u);
  }

  v16 = secLogObjForScope("upgr");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = getuid();
    v18 = geteuid();
    *buf = 67109376;
    *v38 = v17;
    *&v38[4] = 1024;
    *&v38[6] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "UID: %d  EUID: %d", buf, 0xEu);
  }

  v19 = v30[3];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(v34 + 24);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v20;
}

BOOL sub_1000186E0(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100018770;
  v5[3] = &unk_100062668;
  v5[4] = a1[5];
  result = SecDbStep(v3, a2, 0, v5);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_100018770(uint64_t result, _BYTE *a2)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a2 = 1;
  return result;
}

BOOL sub_100018788(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[5];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100018818;
  v5[3] = &unk_1000626B0;
  v5[4] = a1[6];
  v5[5] = a2;
  result = SecDbStep(v3, a2, 0, v5);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_100018818(uint64_t a1, _BYTE *a2)
{
  result = sqlite3_column_int(*(a1 + 40), 0);
  **(a1 + 32) = result;
  if (result)
  {
    *a2 = 1;
  }

  return result;
}

BOOL sub_10001885C(uint64_t a1, sqlite3_stmt *a2)
{
  result = SecDbBindInt(a2, 1, **(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  if (result)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100018910;
    v7[3] = &unk_1000626F8;
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7[4] = a2;
    v7[5] = v6;
    result = SecDbStep(v5, a2, 0, v7);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

sqlite3_int64 sub_100018910(uint64_t a1, _BYTE *a2)
{
  result = sqlite3_column_int64(*(a1 + 32), 0);
  **(a1 + 40) |= (result << 8) & 0xFF00FF00;
  *a2 = 1;
  return result;
}

CFDataRef sub_100018960()
{
  v0 = CFUUIDCreate(kCFAllocatorDefault);
  v3 = CFUUIDGetUUIDBytes(v0);
  v1 = CFDataCreate(kCFAllocatorDefault, &v3.byte0, 16);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t sub_1000189C8(const __CFArray *a1, const __CFString *cf, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count)
      {
        v8 = Count;
        v10.location = 0;
        v10.length = Count;
        if (CFArrayContainsValue(a1, v10, cf))
        {
          return 1;
        }

        v11.location = 0;
        v11.length = v8;
        if (CFArrayContainsValue(a1, v11, @"*") || a3 && *(a3 + 19) == 1 && CFStringHasSuffix(cf, kSecNetworkExtensionAccessGroupSuffix))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100018A9C(const __CFDictionary *a1, const __CFArray *a2)
{
  Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);

  return sub_1000189C8(a2, Value, 0);
}

const __CFString *sub_100018AE8()
{
  if (os_variant_is_recovery())
  {
    v0 = SecCopyURLForFileInSystemKeychainDirectory(@"keychain-recovery-2.db");
  }

  else
  {
    if (sub_100012570())
    {
      v1 = @"keychain-2.db";
    }

    else
    {
      v1 = @"keychain-2-debug.db";
    }

    v0 = SecCopyURLForFileInUserScopedKeychainDirectory(v1);
  }

  v2 = v0;
  if (v0)
  {
    v3 = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = secLogObjForScope("SecServerKeychainCopyPath");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
      v6 = "<unknown>";
      if (CStringPtr)
      {
        v6 = CStringPtr;
      }
    }

    else
    {
      v6 = "<null>";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "path: %s", &v8, 0xCu);
  }

  return v3;
}

uint64_t sub_100018C24(const __CFString *a1, void *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100018D04;
  v6[3] = &unk_100062748;
  v6[4] = &v7;
  v3 = SecDbCreate(a1, 384, 1, 1, 1, 1, 6, v6);
  v4 = v3;
  if (v3)
  {
    SecDbSetCorruptionReset(v3, &stru_100062788);
  }

  if (a2)
  {
    *a2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t sub_100018D04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, CFTypeRef *a6)
{
  v77 = 0;
  if (SecSupportsEnhancedApfs() && (SecSeparateUserKeychain() & 1) == 0)
  {
    IsEduMode = SecIsEduMode();
  }

  else
  {
    IsEduMode = 0;
  }

  v73 = a4;
  if (a4)
  {
    if (IsEduMode)
    {
      sub_10003FBCC(a3);
    }

    goto LABEL_8;
  }

  v13 = sub_100018308(a3, &v77, a6);
  if ((v13 & IsEduMode) == 1)
  {
    v14 = sub_1000197A8(a3);
    v15 = secLogObjForScope("upgr");
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if ((v14 & 1) == 0)
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "must transcrypt", buf, 2u);
      }

      v87 = 0;
      *buf = -1431655766;
      lock_state = aks_get_lock_state(4294967290, buf);
      if (SecKernError(lock_state, &v87, @"aks_get_lock_state failed: %x", lock_state))
      {
        if ((buf[0] & 1) == 0)
        {
          sub_10003FB70();
          v12 = 1;
          goto LABEL_13;
        }
      }

      else
      {
        v55 = secLogObjForScope("upgr");
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v87;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "error querying system keybag lock state: %@", buf, 0xCu);
        }

        v56 = v87;
        if (v87)
        {
          v87 = 0;
          CFRelease(v56);
        }
      }

      v57 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Cannot transcrypt because system keybag not (yet) unlocked!! 🫸", buf, 2u);
      }

      SecError(-25291, a6, @"transcryption error: system keybag not (yet) unlocked");
      v12 = 0;
LABEL_93:
      v66 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = "";
        if (v73)
        {
          v67 = "from v0 ";
        }

        if (a6)
        {
          v68 = *a6;
        }

        else
        {
          v68 = 0;
        }

        *buf = 136315394;
        *&buf[4] = v67;
        *&buf[12] = 2112;
        *&buf[14] = v68;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Upgrade %sfailed: %@", buf, 0x16u);
      }

      v64 = 0;
      if (!a6)
      {
        goto LABEL_91;
      }

      goto LABEL_101;
    }

    if (v16)
    {
      sub_10003FC30(v15, v17, v18);
LABEL_8:
      v12 = 0;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (!v13)
  {
    goto LABEL_93;
  }

LABEL_13:
  v74 = v12;
  v19 = v77;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2000000000;
  LOBYTE(v90) = 0;
  values = 0;
  p_values = &values;
  v85 = 0x2000000000;
  v86 = 1;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2000000000;
  v82 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v20 = sub_100017114();
  v21 = v20;
  v22 = v20[1];
  v23 = *v20 | (v22 << 8);
  if (v23 != v19)
  {
    if (*v20 == v19 && v22 < BYTE1(v19))
    {
      v24 = secLogObjForScope("upgr");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "skipping upgrade since minor is newer", buf, 2u);
      }
    }

    else
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_10001E400;
      *&buf[24] = &unk_100062BA8;
      *&v101 = &values;
      *(&v101 + 1) = &v79;
      v105 = v19;
      v106 = v23;
      v103 = v20;
      v104 = a5;
      *&v102 = &v87;
      *(&v102 + 1) = a3;
      v25 = SecDbTransaction(a3, 2, v80 + 3, buf);
      v26 = (v25 & p_values[3]);
      *(p_values + 24) &= v25;
      if (v26 == 1 && *(v88 + 24) == 1)
      {
        SecCoreAnalyticsSendValue();
      }
    }
  }

  v75 = a1;
  v76 = a6;
  if (*(p_values + 24) != 1)
  {
LABEL_28:
    v28 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v80[3];
      *v94 = 138412290;
      v95 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "upgrade: error occurred, considering marking database as corrupt: %@", v94, 0xCu);
    }

    v30 = v80[3];
    if (!v30)
    {
      v34 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
LABEL_82:
        v60 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "upgrade: marking database as corrupt", v94, 2u);
        }

        SecDbCorrupt(a3, v80[3]);
        SecCoreAnalyticsSendValue();
        goto LABEL_85;
      }

      *v94 = 0;
      v35 = "upgrade: unable to complete upgrade and no error object returned, marking DB as corrupt";
      v36 = v34;
      v37 = 2;
LABEL_81:
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, v94, v37);
      goto LABEL_82;
    }

    Domain = CFErrorGetDomain(v30);
    Code = CFErrorGetCode(v80[3]);
    if (Domain && kSecDbErrorDomain)
    {
      if (CFEqual(Domain, kSecDbErrorDomain))
      {
        goto LABEL_34;
      }
    }

    else if (Domain == kSecDbErrorDomain)
    {
LABEL_34:
      if (Code - 5 < 2 || Code == -536870184 || Code == 13 || Code == -25291)
      {
        goto LABEL_46;
      }

      v33 = -536870186;
      goto LABEL_45;
    }

    if (Code == -536870186 || Code == -536870184)
    {
      goto LABEL_46;
    }

    v33 = -25291;
LABEL_45:
    if (Code == v33)
    {
LABEL_46:
      v38 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v80[3];
        *v94 = 138412290;
        v95 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "upgrade: not marking keychain database corrupt for error: %@", v94, 0xCu);
      }

      v40 = v80[3];
      if (v40)
      {
        v80[3] = 0;
        CFRelease(v40);
      }

      goto LABEL_85;
    }

    v58 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_82;
    }

    v59 = v80[3];
    *v94 = 138412290;
    v95 = v59;
    v35 = "upgrade: unable to complete upgrade, marking DB as corrupt: %@";
    v36 = v58;
    v37 = 12;
    goto LABEL_81;
  }

  if (v80[3])
  {
    v27 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "upgrade: error has been set but status is true", v94, 2u);
    }

    *(p_values + 24) = 0;
    goto LABEL_28;
  }

  if (*(v88 + 24) == 1)
  {
    LKAReportKeychainUpgradeOutcomeWithError();
  }

  if (v23 == v19 || *(v88 + 24) == 1)
  {
    sub_10001F8AC(a3);
    v43 = *(v21 + 1);
    v42 = (v21 + 2);
    v41 = v43;
    if (v43)
    {
      do
      {
        v44 = v41[2];
        if (v44)
        {
          v45 = v41 + 3;
          do
          {
            if ((~*(v44 + 4) & 6) == 0)
            {
              cf = 0;
              v46 = CFStringCreateWithFormat(0, 0, @"CREATE INDEX IF NOT EXISTS %@%@ ON %@(%@);", **v42, *v44, **v42, *v44);
              v47 = SecDbExec(a3, v46, &cf);
              if (v46)
              {
                CFRelease(v46);
              }

              if ((v47 & 1) == 0)
              {
                v48 = secLogObjForScope("SecError");
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = **v42;
                  v50 = *v44;
                  *v94 = 138412802;
                  v95 = v49;
                  v96 = 2112;
                  v97 = v50;
                  v98 = 2112;
                  v99 = cf;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "upgrade: unable to opportunistically create index (%@,%@): %@", v94, 0x20u);
                }
              }

              v51 = cf;
              if (cf)
              {
                cf = 0;
                CFRelease(v51);
              }
            }

            v52 = *v45++;
            v44 = v52;
          }

          while (v52);
        }

        v53 = v42[1];
        ++v42;
        v41 = v53;
      }

      while (v53);
    }
  }

LABEL_85:
  v61 = v80;
  v62 = v80[3];
  a6 = v76;
  v12 = v74;
  if (v62)
  {
    if (!v76 || (*v76 = CFRetain(v62), v61 = v80, (v62 = v80[3]) != 0))
    {
      v61[3] = 0;
      CFRelease(v62);
    }
  }

  v63 = *(p_values + 24);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&values, 8);
  _Block_object_dispose(&v87, 8);
  if ((v63 & 1) == 0)
  {
    a1 = v75;
    goto LABEL_93;
  }

  v64 = 1;
  a1 = v75;
  if (!v76)
  {
LABEL_91:
    v65 = 0;
    goto LABEL_102;
  }

LABEL_101:
  v65 = *a6;
LABEL_102:
  *(*(*(a1 + 32) + 8) + 24) = v65;
  if (v12)
  {
    values = @"*";
    v101 = 0u;
    v102 = 0u;
    memset(buf, 0, sizeof(buf));
    *&buf[8] = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    *&buf[16] = 1;
    buf[18] = 0;
    v87 = _NSConcreteStackBlock;
    v88 = 0x40000000;
    v89 = sub_10002069C;
    v90 = &unk_100062F18;
    v91 = buf;
    v92 = a6;
    v93 = a3;
    sub_100009168(a3, a6, &v87);
    v69 = *&buf[8];
    if (*&buf[8])
    {
      *&buf[8] = 0;
      CFRelease(v69);
    }

    v70 = secLogObjForScope("upgr");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v87) = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "transcrypted, setting flag to remember we've already done so", &v87, 2u);
    }

    sub_100019854(a3);
    v71 = secLogObjForScope("upgr");
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v87) = 0;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "transcrypted, using system keychain handle", &v87, 2u);
    }

    sub_100010DE0(4294967290);
  }

  return v64;
}

uint64_t sub_1000197A8(uint64_t a1)
{
  v1 = sub_100017268(a1) & 1;
  v2 = secLogObjForScope("edutranscrypted");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "got: %{BOOL}d", v4, 8u);
  }

  return v1;
}

void sub_100019854(uint64_t a1)
{
  cf = 0;
  v2 = sub_100017268(a1);
  if ((sub_100017278(v2 | 1u, a1, &cf) & 1) == 0)
  {
    v3 = secLogObjForScope("edutranscrypted");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = cf;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "failed to set DB user version: %@", buf, 0xCu);
    }

    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }
  }
}

uint64_t sub_100019940(uint64_t a1)
{
  if (qword_100073800 != -1)
  {
    sub_10003FC6C();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100020B28;
  block[3] = &unk_100062FB8;
  block[4] = a1;
  dispatch_sync(qword_100073808, block);
  return qword_1000737E8;
}

uint64_t sub_1000199E0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a3 && sub_100019940(a4) != a3)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    if (a1)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 0x40000000;
      v16[2] = sub_100019BD8;
      v16[3] = &unk_1000627B0;
      v16[4] = a5;
      v16[5] = &v17;
      SecDbPerformWrite(a3, v6, v16);
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 0x40000000;
      v15[2] = sub_100019C14;
      v15[3] = &unk_1000627D8;
      v15[4] = a5;
      v15[5] = &v17;
      SecDbPerformRead(a3, v6, v15);
    }

    LOBYTE(v6) = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    return v6 & 1;
  }

  off_100073680();
  if (!*v9)
  {
    v12 = v9;
    v13 = sub_100019940(v6);
    if (v13)
    {
      if (SecDbConnectionAcquireRefMigrationSafe(v13, a1 ^ 1, v12, v6))
      {
        v14 = (*(a5 + 16))(a5, *v12);
        SecDbConnectionRelease(*v12);
        *v12 = 0;
        return v14;
      }
    }

    else
    {
      if (!v6)
      {
        return v6 & 1;
      }

      if (!*v6)
      {
        SecError(-25316, v6, @"failed to get a db handle");
      }
    }

    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v10 = *(a5 + 16);

  return v10(a5);
}

uint64_t sub_100019BD8(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100019C14(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100019C50(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const __CFArray *a5, int a6)
{
  LODWORD(v6) = a6;
  theArray = 0;
  v30.length = CFArrayGetCount(a5);
  v30.location = 0;
  if (CFArrayContainsValue(a5, v30, a4))
  {
    return 1;
  }

  keys[0] = kSecClass;
  keys[1] = kSecReturnRef;
  keys[2] = kSecAttrSubject;
  values[0] = kSecClassCertificate;
  values[1] = kCFBooleanTrue;
  values[2] = a4;
  v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 3, 0, 0);
  v12 = v14;
  if (!v14)
  {
    return v12;
  }

  v24 = 0;
  v15 = sub_10002A574(v14, a3, -1, 0, &v24);
  CFRelease(v12);
  if (v15)
  {
    sub_10000A6FC(a1, v15, &theArray, a2, &v24);
    sub_100029F58(v15, &v24);
  }

  if (v24)
  {
    v16 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v24;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "items matching issuer parent: %@", buf, 0xCu);
    }

    v17 = v24;
    if (!v24)
    {
      return 0;
    }

    v12 = 0;
    v24 = 0;
LABEL_24:
    CFRelease(v17);
    return v12;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v12 = 0;
  }

  else
  {
    v19 = Count;
    v20 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20 - 1);
      Value = CFDictionaryGetValue(ValueAtIndex, kSecAttrIssuer);
      if (CFEqual(Value, a4) || (v23 = __OFSUB__(v6, 1), v6 = (v6 - 1), (v6 < 0) ^ v23))
      {
        v12 = 0;
      }

      else
      {
        v12 = sub_100019C50(a1, a2, a3, Value, a5, v6);
      }

      if (v20 >= v19)
      {
        break;
      }

      ++v20;
    }

    while (!v12);
  }

  v17 = theArray;
  if (theArray)
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_100019EE4(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = sub_100019940(0);
  if (v5)
  {
    v6 = v5;
    CFRetain(v5);
    CFRetain(a2);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10001A04C;
    v10[3] = &unk_100062848;
    v10[4] = v6;
    v10[5] = a2;
    v10[6] = a3;
    v7 = qword_1000739F0;
    if (qword_1000739F0)
    {
      dispatch_group_enter(qword_1000739F0);
      v8 = dispatch_time(0, 250000000);
      if (qword_100073810 != -1)
      {
        sub_10003FC80();
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_10001A39C;
      block[3] = &unk_100062870;
      block[4] = v10;
      block[5] = v7;
      dispatch_after(v8, qword_100073818, block);
    }

    else
    {
      if (qword_100073810 != -1)
      {
        sub_10003FC80();
      }

      dispatch_async(qword_100073818, v10);
    }
  }
}

void sub_10001A04C(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10001A110;
  v4[3] = &unk_100062828;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[5] = *(a1 + 40);
  v4[6] = v3;
  v4[4] = v5;
  sub_1000199E0(1, 0, v2, &v6, v4);
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  _Block_object_dispose(v5, 8);
}

uint64_t sub_10001A110(void *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"DELETE FROM %@ WHERE rowid=%lli", a1[5], a1[6]);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 1;
  v5 = a1[4];
  v6 = *(v5 + 8);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 0x40000000;
  v22[2] = sub_10001A350;
  v22[3] = &unk_100062800;
  v22[5] = v5;
  v22[6] = a2;
  v22[4] = &v23;
  v7 = SecDbPrepare(a2, v4, (v6 + 24), v22);
  v8 = (v7 & v24[3]);
  *(v24 + 24) &= v7;
  if (v8 != 1 || *(*(a1[4] + 8) + 24))
  {
    v9 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v11 = a1[5];
    v10 = a1[6];
    v12 = *(*(a1[4] + 8) + 24);
    *buf = 138412802;
    v28 = v11;
    v29 = 2048;
    v30 = v10;
    v31 = 2112;
    v32 = v12;
    v13 = "Failed to delete corrupt item, %@ row %lli: %@";
    v14 = v9;
    v15 = 32;
    goto LABEL_5;
  }

  v19 = secLogObjForScope("item");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = a1[5];
    v20 = a1[6];
    *buf = 134218242;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    v13 = "Deleted corrupt rowid %lli from table %@";
    v14 = v19;
    v15 = 22;
LABEL_5:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }

LABEL_6:
  v16 = *(a1[4] + 8);
  v17 = *(v16 + 24);
  if (v17)
  {
    *(v16 + 24) = 0;
    CFRelease(v17);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  _Block_object_dispose(&v23, 8);
  return 1;
}

BOOL sub_10001A350(void *a1, sqlite3_stmt *a2)
{
  result = SecDbStep(a1[6], a2, (*(a1[5] + 8) + 24), 0);
  *(*(a1[4] + 8) + 24) &= result;
  return result;
}

void sub_10001A39C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

BOOL sub_10001A3E0(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString **a5)
{
  if (!sub_10001AA2C(a1, 1, a5))
  {
    return 0;
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
    return SecError(-34018, a5, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  CFRetain(*(a4 + 8));
  Count = CFArrayGetCount(v10);
  if (!Count)
  {
    CFRelease(v10);
    return SecError(-34018, a5, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v12 = Count;
  kdebug_trace();
  if (*(a4 + 19) == 1)
  {
    theData = 0;
    v43 = 0;
    v41 = 0;
    if (CFDictionaryGetValue(a1, kSecValuePersistentRef))
    {
      if (_SecItemParsePersistentRef())
      {
        SecKeychainIsStaticPersistentRefsEnabled();
        v47 = 0;
        v48 = &v47;
        v49 = 0x2000000000;
        v50 = 0;
        v45[0] = 0;
        v45[1] = v45;
        v45[2] = 0x2000000000;
        v46 = 0;
        values[0] = _NSConcreteStackBlock;
        values[1] = 0x40000000;
        values[2] = sub_100020F08;
        values[3] = &unk_1000630A8;
        values[6] = v43;
        values[7] = v41;
        values[4] = v45;
        values[5] = &v47;
        v14 = sub_1000199E0(0, 0, 0, &v46, values);
        v15 = v48[3];
        if ((v14 & 1) == 0 && v15)
        {
          v48[3] = 0;
          CFRelease(v15);
          v15 = 0;
        }

        _Block_object_dispose(v45, 8);
        _Block_object_dispose(&v47, 8);
        if (v15)
        {
          if (CFStringHasSuffix(v15, kSecNetworkExtensionAccessGroupSuffix))
          {
            v51.location = 0;
            v51.length = v12;
            if (!CFArrayContainsValue(v10, v51, v15))
            {
              MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
              CFArrayAppendValue(MutableCopy, v15);
              CFRelease(v10);
              v10 = MutableCopy;
            }
          }

          CFRelease(v15);
        }
      }

      v17 = theData;
      if (theData)
      {
        theData = 0;
        CFRelease(v17);
      }
    }
  }

  v52.location = 0;
  v52.length = v12;
  if (CFArrayContainsValue(v10, v52, @"*") && v10)
  {
    CFRelease(v10);
    v10 = 0;
  }

  v18 = sub_10002A574(a1, *(a4 + 24), 1, a4, a5);
  if (!v18)
  {
    v26 = 0;
    if (!v10)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v19 = v18;
  Value = CFDictionaryGetValue(*(v18 + 8), kSecAttrAccessGroup);
  if (!Value)
  {
LABEL_29:
    v22 = *(v19 + 196);
    v23 = *(a4 + 36);
    if (v22)
    {
      if (*(a4 + 36))
      {
        v24 = *(v19 + 128);
        if (v24)
        {
          *(v19 + 128) = 0;
          CFRelease(v24);
          v22 = *(v19 + 196);
        }

        v25 = sub_10002946C(v22);
LABEL_52:
        *(v19 + 128) = v25;
        goto LABEL_53;
      }
    }

    else if (*(a4 + 36))
    {
      if (*(a4 + 18) == 1)
      {
        v27 = *(v19 + 128);
        if (v27)
        {
          *(v19 + 128) = 0;
          CFRelease(v27);
        }

        v25 = sub_1000294E4(*(a4 + 20));
        goto LABEL_52;
      }

      v28 = (v19 + 192);
      v29 = *(v19 + 192);
      if (v29 == 1)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v28 = (v19 + 192);
    v29 = *(v19 + 192);
    if (v29 == 1)
    {
LABEL_47:
      *v28 = 0;
LABEL_53:
      sub_10002A738(v19, v10);
      if (*(a4 + 44) == 1 && (sub_10001ABD0(a4) & 1) == 0)
      {
        v33 = SecError(-34020, a5, @"App clips are not permitted to use access groups other than application identifier");
      }

      else
      {
        if (*(v19 + 192))
        {
          if ((*(a4 + 16) & 1) == 0)
          {
            v31 = @"client doesn't have entitlement for system keychain";
            goto LABEL_68;
          }

          if (*(v19 + 196))
          {
            if (*(a4 + 17))
            {
              v31 = @"can't do both system and syncbubble keychain";
LABEL_68:
              v32 = -34018;
              goto LABEL_69;
            }

LABEL_67:
            v31 = @"client doesn't have entitlement for syncbubble keychain";
            goto LABEL_68;
          }
        }

        else if (*(v19 + 196) && (*(a4 + 17) & 1) == 0)
        {
          goto LABEL_67;
        }

        if (*(v19 + 88))
        {
          v31 = @"use item list unsupported";
LABEL_64:
          v32 = -50;
LABEL_69:
          v33 = SecError(v32, a5, v31);
          goto LABEL_70;
        }

        if (*(v19 + 176))
        {
          v35 = *v19;
          if (v35 != sub_100017224())
          {
            v36 = *v19;
            if (v36 != sub_10001725C())
            {
              v31 = @"unsupported match attribute";
LABEL_86:
              v32 = -4;
              goto LABEL_69;
            }
          }
        }

        if (*(v19 + 248))
        {
          v37 = *v19;
          if (v37 != sub_100017208())
          {
            v31 = @"unsupported kSecMatchHostOrSubdomainOfHost attribute";
            goto LABEL_86;
          }
        }

        if (*(v19 + 208))
        {
          v38 = *v19;
          if (v38 != sub_100017224())
          {
            v39 = *v19;
            if (v39 != sub_10001725C())
            {
              v31 = @"unsupported kSecMatchPolicy attribute";
              goto LABEL_86;
            }
          }
        }

        if (!a3 && *(v19 + 48))
        {
          v31 = @"missing pointer";
          goto LABEL_64;
        }

        if (*(v19 + 116) == 1 && CFDictionaryContainsKey(*(v19 + 8), kSecAttrSharingGroup))
        {
          v31 = @"can't copy shared items without Keychain Sharing client entitlement";
          goto LABEL_68;
        }

        if (*(v19 + 40))
        {
          v34 = 0;
LABEL_71:
          v26 = sub_100029F58(v19, a5) & v34;
          if (!v10)
          {
LABEL_73:
            kdebug_trace();
            return v26;
          }

LABEL_72:
          CFRelease(v10);
          goto LABEL_73;
        }

        v40[0] = _NSConcreteStackBlock;
        v40[1] = 0x40000000;
        v40[2] = sub_10001AD14;
        v40[3] = &unk_100062890;
        v40[4] = v19;
        v40[5] = a3;
        v40[6] = v10;
        v40[7] = a5;
        v33 = sub_1000199E0(0, 0, a2, a5, v40);
      }

LABEL_70:
      v34 = v33;
      goto LABEL_71;
    }

LABEL_46:
    if (v29 != 2)
    {
      goto LABEL_47;
    }

LABEL_49:
    v30 = *(v19 + 128);
    if (v30)
    {
      *(v19 + 128) = 0;
      CFRelease(v30);
    }

    v25 = sub_1000291DC();
    goto LABEL_52;
  }

  v21 = Value;
  if (sub_1000189C8(v10, Value, a4))
  {
    values[0] = v21;
    if (v10)
    {
      CFRelease(v10);
    }

    v10 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
    goto LABEL_29;
  }

  SecError(-34018, a5, @"Client explicitly specifies access group %@ but is only entitled for %@", v21, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  sub_100029F58(v19, 0);
  return 0;
}

BOOL sub_10001AA2C(const __CFDictionary *a1, uint64_t a2, __CFString **a3)
{
  if (!CFDictionaryContainsKey(a1, @"clip"))
  {
    if (CFDictionaryContainsKey(a1, kSecAttrSharingGroup))
    {
      if (sub_10001B280(a1))
      {
        v6 = @"Can't query the synced keychain with a sharing group";
        goto LABEL_3;
      }

      if (a2 == 2)
      {
        v6 = @"Can't update an item's sharing group";
        goto LABEL_3;
      }
    }

    return 1;
  }

  v6 = @"Non-API attributes present in query";
LABEL_3:

  return SecError(-50, a3, v6);
}

const void *sub_10001AAE4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100020C74;
  v5[3] = &unk_100063030;
  v5[6] = a1;
  v5[7] = a2;
  v5[4] = v6;
  v5[5] = &v8;
  v2 = sub_1000199E0(0, 0, 0, &v7, v5);
  v3 = v9[3];
  if ((v2 & 1) == 0 && v3)
  {
    v9[3] = 0;
    CFRelease(v3);
    v3 = 0;
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return v3;
}

uint64_t sub_10001ABD0(uint64_t a1)
{
  if (!a1 || !*(a1 + 48) || (v2 = *(a1 + 8)) == 0)
  {
    v6 = secLogObjForScope("SecError");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v7)
    {
      return result;
    }

    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "item: no app clip client or attributes not set, cannot verify restrictions", v12, 2u);
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (Count != 2)
  {
    if (Count == 1)
    {
      v4 = *(a1 + 48);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), 0);
      if (v4 && ValueAtIndex)
      {
        return CFEqual(v4, ValueAtIndex) != 0;
      }

      if (v4 == ValueAtIndex)
      {
        return 1;
      }
    }

    return 0;
  }

  v13.location = 0;
  v13.length = 2;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 8), v13, kSecAttrAccessGroupToken);
  if (FirstIndexOfValue == -1)
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v11 = CFArrayGetValueAtIndex(*(a1 + 8), FirstIndexOfValue == 0);
  if (v10 && v11)
  {
    return CFEqual(v10, v11) != 0;
  }

  else
  {
    return v10 == v11;
  }
}

BOOL sub_10001AD38(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString **a5)
{
  if (sub_10001AA2C(a1, 0, a5))
  {
    v10 = sub_10001B19C(a3);
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      if (Count)
      {
        v13 = Count;
        kdebug_trace();
        v14 = sub_10002A574(a1, *(a3 + 24), 0, a3, a5);
        if (!v14)
        {
          v18 = 0;
          goto LABEL_60;
        }

        v15 = v14;
        Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
        v32.location = 0;
        v32.length = v13;
        if (CFArrayContainsValue(v11, v32, @"*"))
        {
          CFRelease(v11);
          v11 = 0;
        }

        if (Value)
        {
          if ((sub_1000189C8(v11, Value, a3) & 1) == 0)
          {
            v17 = SecError(-34018, a5, @"Client explicitly specifies access group %@ but is only entitled for %@", Value, v11);
            goto LABEL_16;
          }
        }

        else
        {
          Value = CFArrayGetValueAtIndex(*(a3 + 8), 0);
          sub_100029AD0(kSecAttrAccessGroup, Value, v15);
        }

        v17 = 1;
LABEL_16:
        v20 = *(v15 + 192);
        if (v20 == 2 || v20 == 1 && *(a3 + 36) == 1)
        {
          v21 = *(v15 + 128);
          if (v21)
          {
            *(v15 + 128) = 0;
            CFRelease(v21);
          }

          v22 = sub_1000291DC();
          *(v15 + 128) = v22;
        }

        else
        {
          *(v15 + 192) = 0;
          v22 = *(v15 + 128);
        }

        sub_100029840(&off_10005A578, v22, v15);
        if (!v17)
        {
          v27 = 0;
          goto LABEL_59;
        }

        sub_100029E38(v15, Value);
        if (SecKeychainIsStaticPersistentRefsEnabled())
        {
          v23 = sub_100018960();
          sub_100029AD0(@"persistref", v23, v15);
          v24 = *(v15 + 80);
          if (v24 != v23)
          {
            if (!v23 || (CFRetain(v23), (v24 = *(v15 + 80)) != 0))
            {
              CFRelease(v24);
            }

            *(v15 + 80) = v23;
          }

          if (v23)
          {
            CFRelease(v23);
          }
        }

        if (*(a3 + 44) == 1)
        {
          if (!sub_10001ABD0(a3))
          {
            v26 = @"App clips are not permitted to use access groups other than application identifier";
            goto LABEL_41;
          }

          if (*(a3 + 44))
          {
            v25 = CFDictionaryGetValue(a1, kSecAttrSynchronizable);
            if (v25 && kCFBooleanTrue)
            {
              if (CFEqual(v25, kCFBooleanTrue))
              {
LABEL_38:
                v26 = @"App clips are not permitted to add synchronizable items to the keychain";
LABEL_41:
                v28 = -34020;
LABEL_57:
                v30 = SecError(v28, a5, v26);
                goto LABEL_58;
              }
            }

            else if (v25 == kCFBooleanTrue)
            {
              goto LABEL_38;
            }
          }
        }

        v29 = *(v15 + 192);
        if (v29)
        {
          if ((*(a3 + 16) & 1) == 0)
          {
            v26 = @"client doesn't have entitlement for system keychain";
            goto LABEL_56;
          }

          if (v29 == 2 && sub_10001B280(a1))
          {
            v26 = @"Can't store system keychain (always) and synchronizable";
LABEL_53:
            v28 = -50;
            goto LABEL_57;
          }
        }

        if (*(v15 + 196) && (*(a3 + 17) & 1) == 0)
        {
          v26 = @"client doesn't have entitlement for syncbubble keychain";
        }

        else
        {
          if (*(v15 + 72) || *(v15 + 240))
          {
            v26 = @"q_row_id";
            goto LABEL_53;
          }

          if (*(v15 + 116) != 1 || !CFDictionaryContainsKey(*(v15 + 8), kSecAttrSharingGroup))
          {
            if (*(v15 + 40))
            {
              v27 = 1;
LABEL_59:
              v18 = sub_10002A060(v15, v27, a5);
              if (!v11)
              {
LABEL_61:
                kdebug_trace();
                return v18;
              }

LABEL_60:
              CFRelease(v11);
              goto LABEL_61;
            }

            sub_10001B394(@"add", Value, a3);
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 0x40000000;
            v31[2] = sub_10001B450;
            v31[3] = &unk_1000628D0;
            v31[4] = a5;
            v31[5] = v15;
            v31[6] = a4;
            v30 = sub_1000199E0(1, 0, a2, a5, v31);
LABEL_58:
            v27 = v30;
            goto LABEL_59;
          }

          v26 = @"can't add shared item without Keychain Sharing client entitlement";
        }

LABEL_56:
        v28 = -34018;
        goto LABEL_57;
      }

      CFRelease(v11);
    }

    return SecError(-34018, a5, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  return 0;
}

CFArrayRef *sub_10001B19C(CFArrayRef *a1)
{
  MutableCopy = a1;
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      v6.length = CFArrayGetCount(v2);
      v6.location = 0;
      if (CFArrayContainsValue(MutableCopy[1], v6, kSecAttrAccessGroupToken))
      {
        MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy[1]);
        v7.length = CFArrayGetCount(MutableCopy);
        v7.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v7, kSecAttrAccessGroupToken);
        if (FirstIndexOfValue != -1)
        {
          for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(MutableCopy, v8, kSecAttrAccessGroupToken))
          {
            CFArrayRemoveValueAtIndex(MutableCopy, i);
            v8.length = CFArrayGetCount(MutableCopy);
            v8.location = 0;
          }
        }
      }

      else
      {
        MutableCopy = MutableCopy[1];
        if (MutableCopy)
        {
          CFRetain(MutableCopy);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return MutableCopy;
}

BOOL sub_10001B280(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kSecAttrSynchronizable);
  v2 = Value;
  if (Value)
  {
    v3 = CFGetTypeID(Value);
    if (v3 == CFBooleanGetTypeID())
    {
      v4 = CFBooleanGetValue(v2) == 0;
      return !v4;
    }

    v5 = CFGetTypeID(v2);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
      v4 = valuePtr == 0;
      return !v4;
    }

    v7 = CFGetTypeID(v2);
    if (v7 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v2);
      v9 = CFStringCreateWithFormat(0, 0, @"%ld", IntValue);
      v10 = CFEqual(v9, v2);
      if (IntValue)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      v2 = !v11;
      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_10001B394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SecPLShouldLogRegisteredEvent(@"SecItem"))
  {
    v14 = *(a3 + 48);
    v12 = sub_10000DA5C(0, v5, v6, v7, v8, v9, v10, v11, @"operation", a1);
    if (v12)
    {
      v13 = v12;
      SecPLLogRegisteredEvent(@"SecItem", v12);

      CFRelease(v13);
    }
  }
}

uint64_t sub_10001B450(void *a1, uint64_t a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10001B4D0;
  v6[3] = &unk_1000628B0;
  v3 = a1[4];
  v4 = a1[6];
  v6[4] = a1[5];
  v6[5] = a2;
  v6[6] = v4;
  v6[7] = v3;
  return sub_100009168(a2, v3, v6);
}

uint64_t sub_10001B4D0(uint64_t a1)
{
  sub_10000B8D8(*(a1 + 32), 1);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return sub_100009A7C(v2, v3, v4, v5);
}

CFNullRef sub_10001B528(const __CFDictionary *a1, CFTypeRef cf1, uint64_t a3, __CFString **a4)
{
  if (!cf1 || (v8 = kSecAttrSharingGroupNone) != 0 && CFEqual(cf1, kSecAttrSharingGroupNone))
  {
    v9 = @"A group must be specified to share the item";
LABEL_5:
    v10 = -50;
LABEL_12:
    SecError(v10, a4, v9, v36, v37);
    return 0;
  }

  if ((*(a3 + 57) & 1) == 0)
  {
    v9 = @"Client doesn't have Keychain Sharing client entitlement";
    goto LABEL_11;
  }

  if (sub_10001AA2C(a1, 1, a4))
  {
    if (CFDictionaryContainsKey(a1, kSecAttrTombstone))
    {
      v9 = @"Tombstones can't be shared";
      goto LABEL_5;
    }

    if (*(a3 + 36) == 1)
    {
      SecError(-909, a4, @"This client can't share items");
      return 0;
    }

    v13 = sub_10001B19C(a3);
    if (v13)
    {
      v14 = v13;
      if (CFArrayGetCount(v13))
      {
        v52.length = CFArrayGetCount(v14);
        v52.location = 0;
        if (CFArrayContainsValue(v14, v52, @"*"))
        {
          CFRelease(v14);
          v14 = 0;
        }

        Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
        if (!Value)
        {
LABEL_26:
          v24 = sub_10002A574(a1, *(a3 + 24), -1, a3, a4);
          if (v24)
          {
            v25 = v24;
            sub_10002A738(v24, v14);
            if ((sub_1000292E0(*(v25 + 128)) || SecError(-909, a4, @"Items from a multi-user view can't be shared")) && (!*(v25 + 192) || SecError(-909, a4, @"System keychain items can't be shared")))
            {
              if (*(v25 + 196))
              {
                v26 = SecError(-909, a4, @"Items in a sync bubble can't be shared");
              }

              else
              {
                v26 = 1;
              }
            }

            else
            {
              v26 = 0;
            }

            v27 = *(v25 + 48);
            *(v25 + 48) = 3;
            v28 = *(v25 + 104);
            v29 = kSecAttrSharingGroup;
            if (!CFDictionaryContainsKey(*(v25 + 8), kSecAttrSharingGroup))
            {
              sub_100029AD0(v29, v8, v25);
            }

            if (v26 && (!*(v25 + 40) || (sub_100029ECC(v25, a4) & 1) != 0))
            {
              v48 = 0;
              v49 = &v48;
              v50 = 0x2000000000;
              v51 = 1;
              v44 = 0;
              v45 = &v44;
              v46 = 0x2000000000;
              v47 = 0;
              v40 = 0;
              v41 = &v40;
              v42 = 0x2000000000;
              v43 = 0;
              v38[0] = _NSConcreteStackBlock;
              v38[1] = 0x40000000;
              v38[2] = sub_10001BAB4;
              v38[3] = &unk_100062940;
              v38[8] = v25;
              v38[9] = v14;
              v38[4] = &v48;
              v38[5] = &v44;
              v38[6] = &v40;
              v38[7] = a4;
              v38[10] = cf1;
              v39 = v27;
              v30 = sub_1000199E0(1, 0, 0, a4, v38);
              sub_100029F58(v25, a4);
              if (v14)
              {
                CFRelease(v14);
              }

              if (v49[3])
              {
                if (v30)
                {
                  sub_100018160();
                  sub_1000180F0();
                  if (!v27)
                  {
                    v11 = kCFNull;
                    goto LABEL_67;
                  }

                  if (v28 == 1)
                  {
                    if (CFArrayGetCount(v41[3]) != 1)
                    {
                      v11 = 0;
LABEL_67:
                      v35 = v41[3];
                      if (v35)
                      {
                        v41[3] = 0;
                        CFRelease(v35);
                      }

                      goto LABEL_62;
                    }

                    ValueAtIndex = CFArrayGetValueAtIndex(v41[3], 0);
                    Copy = CFRetain(ValueAtIndex);
                  }

                  else
                  {
                    Copy = CFArrayCreateCopy(kCFAllocatorDefault, v41[3]);
                  }

                  v11 = Copy;
                  goto LABEL_67;
                }

                v34 = v41[3];
                if (v34)
                {
                  v41[3] = 0;
                  CFRelease(v34);
                }
              }

              else
              {
                v33 = v41[3];
                if (v33)
                {
                  v41[3] = 0;
                  CFRelease(v33);
                }

                sub_10001C024(v45[3], a4);
              }

              v11 = 0;
LABEL_62:
              _Block_object_dispose(&v40, 8);
              _Block_object_dispose(&v44, 8);
              _Block_object_dispose(&v48, 8);
              return v11;
            }

            sub_100029F58(v25, 0);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          return 0;
        }

        v16 = Value;
        if (sub_1000189C8(v14, Value, a3))
        {
          if (v14)
          {
            CFRelease(v14);
          }

          v14 = sub_10001B9DC(kCFAllocatorDefault, v17, v18, v19, v20, v21, v22, v23, v16);
          goto LABEL_26;
        }

        if (v14)
        {
          CFRelease(v14);
        }

        v36 = v16;
        v37 = 0;
        v9 = @"Client explicitly specifies access group %@ but is only entitled for %@";
LABEL_11:
        v10 = -34018;
        goto LABEL_12;
      }

      CFRelease(v14);
    }

    v36 = @"application-identifier nor keychain-access-groups";
    v9 = @"Client has neither %@ entitlements";
    goto LABEL_11;
  }

  return 0;
}

CFArrayRef sub_10001B9DC(CFAllocatorRef allocator, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = &a9;
  v10 = -1;
  do
  {
    v11 = v19++;
    ++v10;
  }

  while (*v11);
  v20 = &a9;
  Mutable = CFArrayCreateMutable(allocator, v10, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  for (i = Mutable; v10; --v10)
  {
    v14 = v20++;
    v15 = *v14;
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = kCFNull;
    }

    CFArrayAppendValue(i, v16);
  }

  Copy = CFArrayCreateCopy(allocator, i);
  CFRelease(i);
  return Copy;
}

uint64_t sub_10001BAB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10001BB54;
  v5[3] = &unk_100062918;
  v8 = *(a1 + 64);
  v6 = *(a1 + 32);
  v9 = a2;
  v10 = v3;
  v7 = *(a1 + 48);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  return sub_100009168(a2, v3, v5);
}

uint64_t sub_10001BB54(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(*(a1 + 40) + 8);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 0x40000000;
  v37[2] = sub_10001C01C;
  v37[3] = &unk_1000628F0;
  v37[4] = Mutable;
  *(*(*(a1 + 32) + 8) + 24) = sub_100009D54(v3, v4, v5, (v6 + 24), v37);
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    if (!Mutable)
    {
LABEL_61:
      v29 = 0;
      return v29 & 1;
    }

LABEL_60:
    CFRelease(Mutable);
    goto LABEL_61;
  }

  if (!CFArrayGetCount(Mutable))
  {
    *(*(*(a1 + 32) + 8) + 24) = SecError(-25300, *(a1 + 80), @"No items matched the query");
    if (!Mutable)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  Count = CFArrayGetCount(Mutable);
  *(*(*(a1 + 48) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_65;
  }

  v8 = 0;
  v9 = kSecAttrUUID;
  cf2 = kSecAttrSharingGroup;
  v33 = Mutable;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8);
    v35 = *(*(a1 + 40) + 8);
    v11 = ValueAtIndex[2];
    v12 = v11[2];
    if (!v12)
    {
LABEL_37:
      LOBYTE(v19) = SecError(-50, (v35 + 24), @"Items of class '%@' can't be shared", *v11);
      goto LABEL_40;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v32 = *(a1 + 72);
    v34 = *(a1 + 88);
    v17 = v11 + 3;
    do
    {
      if (CFEqual(*v12, v9))
      {
        v13 = v12;
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      else if (CFEqual(*v12, cf2))
      {
        v14 = v12;
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      else if (CFEqual(*v12, kSecAttrSynchronizable))
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (*(v12 + 8) == 16)
        {
          v16 = v12;
        }

        if (!v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 && v15 && v16)
      {
        goto LABEL_24;
      }

LABEL_22:
      v18 = *v17++;
      v12 = v18;
    }

    while (v18);
    if (!v14)
    {
      v11 = ValueAtIndex[2];
      Mutable = v33;
      goto LABEL_37;
    }

LABEL_24:
    v19 = sub_100003F9C(ValueAtIndex, (v35 + 24));
    if (!v19)
    {
      goto LABEL_39;
    }

    if (v13)
    {
      v19 = sub_100002090(ValueAtIndex, v13, 0, (v35 + 24));
      if (!v19)
      {
        goto LABEL_39;
      }
    }

    if (v16)
    {
      v20 = sub_100018960();
      v21 = sub_100002090(ValueAtIndex, v16, v20, (v35 + 24));
      if (v20)
      {
        CFRelease(v20);
      }

      if (!v21)
      {
        LOBYTE(v19) = 0;
LABEL_39:
        Mutable = v33;
        goto LABEL_40;
      }
    }

    v19 = sub_100002090(ValueAtIndex, v14, v34, (v35 + 24));
    if (!v19)
    {
      goto LABEL_39;
    }

    if (v15)
    {
      v19 = sub_100002090(ValueAtIndex, v15, kCFBooleanFalse, (v35 + 24));
      if (!v19)
      {
        goto LABEL_39;
      }
    }

    v38 = 0;
    if (sub_1000057E0(ValueAtIndex, v32, 0, 0, &v38))
    {
      LOBYTE(v19) = 1;
      goto LABEL_39;
    }

    v24 = sub_100004630(v38);
    v25 = v38;
    if (!v24)
    {
      Mutable = v33;
      if (!v38)
      {
        LOBYTE(v19) = 1;
        goto LABEL_40;
      }

      v26 = v35;
      v27 = *(v35 + 24);
      if (v27)
      {
        if (CFErrorGetCode(v27) == -25330)
        {
          v26 = v35;
          v28 = *(v35 + 24);
          if (v28)
          {
            *(v35 + 24) = 0;
            CFRelease(v28);
            goto LABEL_55;
          }
        }

        else
        {
LABEL_55:
          v26 = v35;
          if (*(v35 + 24))
          {
            CFRelease(v25);
            LOBYTE(v19) = 0;
            goto LABEL_40;
          }
        }
      }

      LOBYTE(v19) = 0;
      *(v26 + 24) = v25;
      goto LABEL_40;
    }

    Mutable = v33;
    if (v38)
    {
      v38 = 0;
      CFRelease(v25);
    }

    LOBYTE(v19) = SecError(-25299, (v35 + 24), @"Item is already shared with this group", v31);
LABEL_40:
    *(*(*(a1 + 32) + 8) + 24) = v19;
    if (*(*(*(a1 + 32) + 8) + 24) != 1)
    {
      break;
    }

    v22 = sub_1000096F4(ValueAtIndex, *(a1 + 96), (*(*(a1 + 40) + 8) + 24));
    if (!v22)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      break;
    }

    v23 = v22;
    if (!CFEqual(v22, kCFNull))
    {
      CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 24), v23);
    }

    CFRelease(v23);
    ++v8;
  }

  while (v8 < CFArrayGetCount(Mutable));
LABEL_65:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v29 = *(*(*(a1 + 32) + 8) + 24);
  return v29 & 1;
}

void sub_10001C024(__CFError *cf, CFErrorRef *a2)
{
  if (cf && a2)
  {
    if (!*a2)
    {
      goto LABEL_13;
    }

    if (CFErrorGetCode(*a2) != -25330)
    {
      goto LABEL_9;
    }

    v4 = *a2;
    if (!*a2)
    {
LABEL_13:
      *a2 = cf;
      return;
    }

    *a2 = 0;
    CFRelease(v4);
  }

  else
  {
    if (!cf)
    {
      return;
    }

    if (!a2)
    {
      goto LABEL_10;
    }
  }

LABEL_9:
  if (!*a2)
  {
    goto LABEL_13;
  }

LABEL_10:

  CFRelease(cf);
}

uint64_t sub_10001C0B0(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10001C148;
  v4[3] = &unk_1000629C8;
  v4[4] = a2;
  v4[5] = a1;
  v2 = sub_1000199E0(1, 0, 0, a2, v4);
  if (v2)
  {
    sub_100018160();
    sub_1000180F0();
  }

  return v2;
}

uint64_t sub_10001C148(int8x16_t *a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10001C1CC;
  v4[3] = &unk_1000629A8;
  v2 = a1[2];
  v5 = vextq_s8(v2, v2, 8uLL);
  v6 = a2;
  return sub_100009168(a2, v2.i64[0], v4);
}

uint64_t sub_10001C1CC(uint64_t a1)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 1;
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v2 = sub_100029270();
  }

  v39[0] = sub_100017208();
  v39[1] = sub_10001712C();
  v39[2] = sub_100017224();
  v39[3] = sub_100017240();
  v10 = sub_10001B9DC(0, v3, v4, v5, v6, v7, v8, v9, @"com.apple.safari.credit-cards");
  v11 = v32;
  if (*(v32 + 24) == 1)
  {
    v12 = 0;
    v26 = kSecAttrMultiUser;
    while (1)
    {
      v13 = secLogObjForScope("SecDeleteItemsOnSignOut");
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      v15 = v39[v12];
      if (v14)
      {
        v23 = *v15;
        *buf = 138412546;
        v36 = v23;
        v37 = 2112;
        v38 = v2;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Deleting items from class=%@ with multi-user view=%@", buf, 0x16u);
      }

      v16 = sub_10002A0E4(v15, v2, 0, *(a1 + 32), *(a1 + 40));
      if (!v16)
      {
        break;
      }

      v17 = v16;
      sub_100029AD0(v26, v2, v16);
      sub_100029AD0(kSecAttrSynchronizable, kCFBooleanTrue, v17);
      if (CFArrayGetCount(v10) >= 1)
      {
        v18 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v18);
          sub_100029CFC(kSecAttrAccessGroup, ValueAtIndex, v17);
          ++v18;
        }

        while (v18 < CFArrayGetCount(v10));
      }

      v20 = *(a1 + 48);
      v28 = *(a1 + 40);
      v29.isa = _NSConcreteStackBlock;
      *&v29.flags = 0x40000000;
      v29.invoke = sub_10001C57C;
      v29.descriptor = &unk_100062960;
      v30 = v17;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 0x40000000;
      v27[2] = sub_10001C5A8;
      v27[3] = &unk_100062988;
      v27[4] = &v31;
      v27[5] = v20;
      v21 = sub_100004958(v17, v20, v28, 0, &v29, 0, 0, v27);
      *(v32 + 24) &= v21;
      sub_100029F58(v17, 0);
      v11 = v32;
      if (*(v32 + 24) == 1 && v12++ < 3)
      {
        continue;
      }

      goto LABEL_16;
    }

    v11 = v32;
    *(v32 + 24) = 0;
  }

LABEL_16:
  if (v10)
  {
    CFRelease(v10);
    v11 = v32;
  }

  v24 = *(v11 + 24);
  _Block_object_dispose(&v31, 8);
  return v24;
}

CFStringRef **sub_10001C5A8(uint64_t a1, CFStringRef **a2, _BYTE *a3)
{
  result = sub_10000682C(a2, *(a1 + 40), kCFBooleanFalse, 0, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) &= result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

BOOL sub_10001C618(const __CFDictionary *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, __CFString **a5)
{
  if (!sub_10001AA2C(a1, 1, a5) || !sub_10001AA2C(a3, 2, a5))
  {
    return 0;
  }

  v10 = sub_10001B19C(a4);
  if (!v10)
  {
    return SecError(-34018, a5, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v11 = v10;
  Count = CFArrayGetCount(v10);
  if (!Count)
  {
    CFRelease(v11);
    return SecError(-34018, a5, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v13 = Count;
  Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
  if (!Value || (sub_1000189C8(v11, Value, a4) & 1) != 0)
  {
    kdebug_trace();
    v35.location = 0;
    v35.length = v13;
    if (CFArrayContainsValue(v11, v35, @"*"))
    {
      CFRelease(v11);
      v11 = 0;
    }

    v15 = sub_10002A574(a1, *(a4 + 24), -1, a4, a5);
    if (!v15)
    {
      v20 = 0;
LABEL_72:
      if (v11)
      {
        CFRelease(v11);
      }

      kdebug_trace();
      return v20;
    }

    v16 = v15;
    v17 = *(v15 + 192);
    if (v17 == 2 || v17 == 1 && *(a4 + 36) == 1)
    {
      v18 = *(v15 + 128);
      if (v18)
      {
        *(v16 + 128) = 0;
        CFRelease(v18);
      }

      *(v16 + 128) = sub_1000291DC();
    }

    else
    {
      *(v15 + 192) = 0;
    }

    sub_10002A738(v16, v11);
    if (*(a4 + 44) == 1)
    {
      if (!sub_10001ABD0(a4))
      {
        v22 = SecError(-34020, a5, @"App clips are not permitted to use access groups other than application identifier");
        goto LABEL_63;
      }

      if (*(a4 + 44))
      {
        v21 = CFDictionaryGetValue(a1, kSecAttrSynchronizable);
        if (v21 && kCFBooleanTrue)
        {
          if (CFEqual(v21, kCFBooleanTrue))
          {
            goto LABEL_35;
          }
        }

        else if (v21 == kCFBooleanTrue)
        {
          goto LABEL_35;
        }

        v23 = CFDictionaryGetValue(a3, kSecAttrSynchronizable);
        if (kCFBooleanTrue && v23)
        {
          if (CFEqual(v23, kCFBooleanTrue))
          {
            goto LABEL_35;
          }
        }

        else if (v23 == kCFBooleanTrue)
        {
LABEL_35:
          if (!SecError(-34020, a5, @"App clips are not permitted to make items synchronizable"))
          {
            goto LABEL_70;
          }

          goto LABEL_64;
        }
      }
    }

    v24 = *(v16 + 192);
    if (v24)
    {
      if ((*(a4 + 16) & 1) == 0)
      {
        v25 = @"client doesn't have entitlement for system keychain";
        goto LABEL_49;
      }

      if (v24 == 2 && sub_10001B280(a3))
      {
        v25 = @"Can't update a system keychain (always) item with synchronizable";
LABEL_61:
        v26 = -50;
        goto LABEL_62;
      }
    }

    if (*(v16 + 196) && (*(a4 + 17) & 1) == 0)
    {
      v25 = @"client doesn't have entitlement for syncbubble keychain";
    }

    else
    {
      if (*(v16 + 88))
      {
        v25 = @"use item list not supported";
        goto LABEL_61;
      }

      v27 = *(v16 + 48);
      if (v27)
      {
        v25 = @"return data not supported by update";
        goto LABEL_61;
      }

      if ((v27 & 2) != 0)
      {
        v25 = @"return attributes not supported by update";
        goto LABEL_61;
      }

      if ((v27 & 4) != 0)
      {
        v25 = @"return ref not supported by update";
        goto LABEL_61;
      }

      if ((v27 & 8) != 0)
      {
        v25 = @"return persistent ref not supported by update";
        goto LABEL_61;
      }

      if (*(v16 + 116) != 1 || !CFDictionaryContainsKey(*(v16 + 8), kSecAttrSharingGroup))
      {
        v29 = CFDictionaryGetValue(a3, kSecAttrAccessGroup);
        if (v29)
        {
          v30 = v29;
          if ((sub_1000189C8(v11, v29, a4) & 1) == 0)
          {
            v31 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v34 = v30;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Cannot update keychain item to access group %@", buf, 0xCu);
            }

            if (!SecError(-34018, a5, @"Client explicitly specifies access group %@ but is only entitled for %@", v30, v11))
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_64;
      }

      v25 = @"can't update shared items without Keychain Sharing client entitlement";
    }

LABEL_49:
    v26 = -34018;
LABEL_62:
    v22 = SecError(v26, a5, v25);
LABEL_63:
    if (!v22)
    {
LABEL_70:
      v28 = 0;
      goto LABEL_71;
    }

LABEL_64:
    sub_10001B394(@"update", Value, a4);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 0x40000000;
    v32[2] = sub_10001CB44;
    v32[3] = &unk_100062A08;
    v32[4] = a5;
    v32[5] = v16;
    v32[6] = a3;
    v32[7] = v11;
    v28 = sub_1000199E0(1, 0, a2, a5, v32);
LABEL_71:
    v20 = sub_10002A060(v16, v28, a5);
    goto LABEL_72;
  }

  SecError(-34018, a5, @"Client explicitly specifies access group %@ but is only entitled for %@", Value, v11);
  CFRelease(v11);
  return 0;
}

uint64_t sub_10001CB44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10001CBCC;
  v5[3] = &unk_1000629E8;
  v5[4] = a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = v3;
  return sub_100009168(a2, v3, v5);
}

BOOL sub_10001CBF4(const __CFDictionary *a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  if (!sub_10001AA2C(a1, 3, a4))
  {
    return 0;
  }

  v8 = sub_10001B19C(a3);
  if (!v8)
  {
    return SecError(-34018, a4, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v9 = v8;
  Count = CFArrayGetCount(v8);
  if (!Count)
  {
    CFRelease(v9);
    return SecError(-34018, a4, @"Client has neither %@ entitlements", @"application-identifier nor keychain-access-groups");
  }

  v11 = Count;
  Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
  if (!Value || (sub_1000189C8(v9, Value, a3) & 1) != 0)
  {
    kdebug_trace();
    v23.location = 0;
    v23.length = v11;
    if (CFArrayContainsValue(v9, v23, @"*"))
    {
      CFRelease(v9);
      v9 = 0;
    }

    v13 = sub_10002A574(a1, *(a3 + 24), -1, a3, a4);
    if (!v13)
    {
      v18 = 0;
LABEL_41:
      if (v9)
      {
        CFRelease(v9);
      }

      kdebug_trace();
      return v18;
    }

    v14 = v13;
    v15 = *(v13 + 192);
    if (v15 == 2 || v15 == 1 && *(a3 + 36) == 1)
    {
      v16 = *(v13 + 128);
      if (v16)
      {
        *(v14 + 128) = 0;
        CFRelease(v16);
      }

      *(v14 + 128) = sub_1000291DC();
    }

    else
    {
      *(v13 + 192) = 0;
    }

    sub_10002A738(v14, v9);
    if (*(a3 + 44) == 1 && (sub_10001ABD0(a3) & 1) == 0)
    {
      v20 = SecError(-34020, a4, @"App clips are not permitted to use access groups other than application identifier");
LABEL_40:
      v18 = sub_10002A060(v14, v20, a4);
      goto LABEL_41;
    }

    if (*(v14 + 192) && (*(a3 + 16) & 1) == 0)
    {
      v19 = @"client doesn't have entitlement for system keychain";
    }

    else if (*(v14 + 196) && (*(a3 + 17) & 1) == 0)
    {
      v19 = @"client doesn't have entitlement for syncbubble keychain";
    }

    else
    {
      if (*(v14 + 104) != -1)
      {
        v19 = @"match limit not supported by delete";
LABEL_38:
        v21 = -50;
        goto LABEL_39;
      }

      if (sub_1000296F4(v14))
      {
        v19 = @"match not supported by delete";
        goto LABEL_38;
      }

      if (*(v14 + 64))
      {
        v19 = @"value ref not supported by delete";
        goto LABEL_38;
      }

      if (*(v14 + 72) && sub_100002E28(v14))
      {
        v19 = @"rowid and other attributes are mutually exclusive";
        goto LABEL_38;
      }

      if (*(v14 + 240) && sub_100002E28(v14) != 1)
      {
        v19 = @"token persistent ref and other attributes are mutually exclusive";
        goto LABEL_38;
      }

      if (*(v14 + 116) != 1 || !CFDictionaryContainsKey(*(v14 + 8), kSecAttrSharingGroup))
      {
        sub_10001B394(@"delete", Value, a3);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 0x40000000;
        v22[2] = sub_10001CF8C;
        v22[3] = &unk_100062A48;
        v22[4] = a4;
        v22[5] = v14;
        v22[6] = v9;
        v20 = sub_1000199E0(1, 0, a2, a4, v22);
        goto LABEL_40;
      }

      v19 = @"can't delete shared items without Keychain Sharing client entitlement";
    }

    v21 = -34018;
LABEL_39:
    v20 = SecError(v21, a4, v19);
    goto LABEL_40;
  }

  SecError(-34018, a4, @"Client explicitly specifies access group %@ but is only entitled for %@", Value, v9);
  CFRelease(v9);
  return 0;
}

uint64_t sub_10001CF8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10001D010;
  v5[3] = &unk_100062A28;
  v5[4] = a2;
  v6 = *(a1 + 40);
  v7 = v3;
  return sub_100009168(a2, v3, v5);
}

uint64_t sub_10001D040(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, __CFString **a6)
{
  if (*(a5 + 44) == 1)
  {

    return SecError(-34020, a6, @"App Clips may not call this API");
  }

  else
  {
    v11 = v6;
    v12 = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_100021140;
    v9[3] = &unk_1000630E8;
    v9[4] = a6;
    v9[5] = a1;
    v10 = a4;
    v9[6] = a2;
    v9[7] = a5;
    v9[8] = a3;
    return sub_1000199E0(1, 0, 0, a6, v9);
  }
}

uint64_t sub_10001D104(uint64_t a1)
{
  v2 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecServerItemDeleteAll", v4, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000211D4;
  v4[3] = &unk_100063128;
  v4[4] = a1;
  return sub_1000199E0(1, 0, 0, a1, v4);
}

void sub_10001D1D0(id a1)
{
  values[0] = @"*";
  values[1] = @"apple";
  values[2] = @"com.apple.security.sos";
  values[3] = @"lockdown-identities";
  qword_1000737F8 = CFSetCreate(0, values, 4, &kCFTypeSetCallBacks);
}

uint64_t sub_10001D260(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (cf && (v10 = CFGetTypeID(cf), v10 == CFStringGetTypeID()))
  {
    result = CFSetContainsValue(qword_1000737F8, cf);
    if (!result)
    {
      return result;
    }

    result = SecCFCreateErrorWithFormat(1, sSecXPCErrorDomain, 0, *(a1 + 40), 0, @"illegal access group: %@", v12, v13, *(a1 + 48));
  }

  else
  {
    result = SecCFCreateErrorWithFormat(1, sSecXPCErrorDomain, 0, *(a1 + 40), 0, @"access not a string: %@", a7, a8, cf);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t sub_10001D31C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10003F32C;
  v6[3] = &unk_100062AD0;
  v7 = *(a1 + 40);
  v8 = v4;
  v9 = a2;
  v10 = *(a1 + 56);
  result = sub_100009168(a2, v4, v6);
  if (result)
  {
    return SecDbExec(a2, @"VACUUM", *(a1 + 32));
  }

  return result;
}

uint64_t sub_10001D3C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_10001D568;
  v13[3] = &unk_100062B40;
  v14 = a4;
  v13[6] = a3;
  v13[7] = a5;
  v13[4] = &v15;
  v13[5] = a2;
  v13[8] = a1;
  sub_1000199E0(0, 0, 0, a5, v13);
  v6 = secLogObjForScope("SecServerKeychainCreateBackup");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v16[3])
    {
      v7 = "success";
    }

    else
    {
      v7 = "fail";
    }

    if (a5)
    {
      v8 = *a5;
    }

    else
    {
      v8 = 0;
    }

    *buf = 136315394;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Backup result: %s (%@)", buf, 0x16u);
  }

  v9 = v16[3];
  if (a5)
  {
    v10 = *a5;
  }

  LKABackupReportEnd();
  v11 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t sub_10001D568(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  LKABackupReportStart();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_10001D62C;
  v10[3] = &unk_100062B18;
  v15 = *(a1 + 72);
  v7 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v7;
  v13 = a2;
  v8 = *(a1 + 56);
  v14 = vextq_s8(v8, v8, 8uLL);
  return sub_100009178(a2, 3, v8.i64[0], v10);
}

BOOL sub_10001D62C(uint64_t a1)
{
  v2 = secLogObjForScope("SecServerKeychainCreateBackup");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = "provided";
    }

    else
    {
      v3 = "device";
    }

    v4 = "";
    if (*(a1 + 80))
    {
      v4 = ", EMCS mode";
    }

    *buf = 136315394;
    *&buf[4] = v3;
    v19 = 2080;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing backup from %s keybag%s", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (*(a1 + 40) == 0)
  {
    v9 = sub_10001D8C8(*(a1 + 56), *(a1 + 64), 0, *(a1 + 72));
    goto LABEL_17;
  }

  v10 = *(a1 + 80);
  v11 = *(a1 + 72);
  v17 = -1431655766;
  kdebug_trace();
  *buf = 0;
  v12 = MKBKeyBagCreateWithData(v6, buf);
  if (!v12)
  {
    if (!v5 || (v10 & 1) != 0)
    {
      sub_10003FCD8();
    }

    else
    {
      v15 = MKBKeyBagUnlock(*buf);
      if (v15)
      {
        v16 = v15;
        CFRelease(*buf);
        if (SecKernError(v16, v11, @"failed to unlock bag: %d", v16))
        {
          goto LABEL_12;
        }

LABEL_22:
        sub_10003FCA8();
        v9 = 0;
        goto LABEL_17;
      }
    }

    v13 = *buf;
    goto LABEL_13;
  }

  if (!SecKernError(v12, v11, @"MKBKeyBagCreateWithData failed: %d", v12))
  {
    goto LABEL_22;
  }

LABEL_12:
  v13 = 0;
LABEL_13:
  if (MKBKeyBagGetAKSHandle(v13, &v17))
  {
    v9 = 0;
  }

  else
  {
    kdebug_trace();
    kdebug_trace();
    v9 = sub_10001D8C8(v7, v8, &v17, v11);
  }

  kdebug_trace();
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_17:
  *(*(*(a1 + 32) + 8) + 24) = v9;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

CFDataRef sub_10001D8C8(uint64_t a1, uint64_t a2, int *a3, __CFString **a4)
{
  kdebug_trace();
  v8 = sub_10000E184(a1, a2, a3, 2, a4);
  if (v8)
  {
    v9 = v8;
    Data = CFPropertyListCreateData(kCFAllocatorDefault, v8, kCFPropertyListBinaryFormat_v1_0, 0, a4);
    CFRelease(v9);
  }

  else
  {
    Data = 0;
  }

  kdebug_trace();
  return Data;
}

BOOL sub_10001D998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString **a5)
{
  if (a1 && a3)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_10001DA60;
    v8[3] = &unk_100062B60;
    v8[4] = a2;
    v8[5] = a1;
    v8[6] = a3;
    v8[7] = a4;
    v8[8] = a5;
    v6 = sub_1000199E0(1, 0, 0, a5, v8);
    result = 0;
    if (v6)
    {
      sub_100018160();
      sub_1000180F0();
      return 1;
    }
  }

  else
  {

    return SecError(-50, a5, @"backup or keybag missing");
  }

  return result;
}

uint64_t sub_10001DA60(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v5 = a1[7];
  v7 = a1[8];
  v25 = -1;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v8;
  v26[3] = v8;
  v26[0] = v8;
  v26[1] = v8;
  v9 = secLogObjForScope("SecServerKeychainRestore");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restoring keychain backup", &buf, 2u);
  }

  kdebug_trace();
  BytePtr = CFDataGetBytePtr(v6);
  Length = CFDataGetLength(v6);
  if (v5)
  {
    v12 = CFDataGetBytePtr(v5);
    v13 = CFDataGetLength(v5);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  aks_kc_backup_open_keybag(BytePtr, Length, v12, v13, &v25, v26);
  if (v14)
  {
    v15 = v14;
    v16 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SecServerKeychainRestore: aks_kc_backup_open_keybag failed: %d", &buf, 8u);
    }

    if (v7)
    {
      SecKernError(v15, v7, @"aks_kc_backup_open_keybag failed: %d", v15);
    }

    kdebug_trace();
LABEL_20:
    v22 = secLogObjForScope("SecWarning");
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v23)
    {
      if (v7)
      {
        v24 = *v7;
      }

      else
      {
        v24 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SecServerKeychainRestore: Restore failed with: %@", &buf, 0xCu);
      return 0;
    }

    return result;
  }

  v17 = secLogObjForScope("SecServerKeychainRestore");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v25;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "aks_kc_backup_open_keybag got backup_keybag:%d", &buf, 8u);
  }

  kdebug_trace();
  kdebug_trace();
  v18 = v26;
  if (v25 != -1)
  {
    v18 = 0;
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v28 = sub_1000215D8;
  v29 = &unk_1000631B0;
  v30 = v4;
  v31 = v7;
  v32 = a2;
  v33 = v3;
  v34 = v18;
  v35 = v25;
  v36 = dword_1000739E8;
  v19 = sub_100009168(a2, v7, &buf);
  kdebug_trace();
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = secLogObjForScope("SecServerKeychainRestore");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Restore completed successfully", &buf, 2u);
  }

  return 1;
}

const void *sub_10001DE28(CFDataRef data, CFErrorRef *error)
{
  v3 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, error);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 == CFDictionaryGetTypeID())
  {
    v6 = sub_10000F9C0(v4, error);
    v7 = v6;
    if (v6)
    {
      CFRetain(v6);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

uint64_t sub_10001DED0(char a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v6 = aks_generation(dword_1000739E8, 0, &v11);
  result = 0;
  if (!v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_10001DFA0;
    v8[3] = &unk_100062B80;
    v9 = v11 & 1;
    v10 = a1;
    v8[4] = a2;
    v8[5] = a3;
    return sub_1000199E0(1, 0, 0, a3, v8);
  }

  return result;
}

BOOL sub_10001DFA0(uint64_t a1, const void *a2)
{
  result = sub_10000FA3C(a2, *(a1 + 48));
  if (*(a1 + 52) == 1 && !result)
  {
    if (!sub_10000FCC0(a2, *(a1 + 32), *(a1 + 40)))
    {
      goto LABEL_8;
    }

    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed roll keys.", buf, 2u);
    }

    if (sub_10000FA3C(a2, *(a1 + 48)))
    {
      return 1;
    }

    else
    {
LABEL_8:
      v6 = secLogObjForScope("SecError");
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v7)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to roll keys.", v8, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001E0B4(void *a1, uint64_t a2, __CFString **a3)
{
  keys[0] = kSecClass;
  keys[1] = kSecReturnData;
  keys[2] = kSecMatchLimit;
  keys[3] = kSecAttrSubject;
  keys[4] = kSecAttrSynchronizable;
  values[0] = kSecClassCertificate;
  values[1] = kCFBooleanTrue;
  values[2] = kSecMatchLimitAll;
  values[3] = a1;
  values[4] = kSecAttrSynchronizableAny;
  v5 = CFDictionaryCreate(0, keys, values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = 0;
  v7[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7[1] = a2;
  LOBYTE(v8) = 1;
  BYTE2(v8) = 0;
  sub_10001A3E0(v5, 0, &v11, v7, a3);
  CFRelease(v5);
  return v11;
}

BOOL sub_10001E200(void *a1, void *a2, uint64_t a3, __CFString **a4)
{
  keys[0] = kSecClass;
  keys[1] = kSecMatchLimit;
  keys[2] = kSecAttrIssuer;
  keys[3] = kSecAttrSerialNumber;
  keys[4] = kSecAttrSynchronizable;
  values[0] = kSecClassCertificate;
  values[1] = kSecMatchLimitOne;
  values[2] = a1;
  values[3] = a2;
  values[4] = kSecAttrSynchronizableAny;
  v9[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9[1] = a3;
  LOBYTE(v10) = 1;
  BYTE2(v10) = 0;
  v5 = CFDictionaryCreate(0, keys, values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  cf = 0;
  v6 = sub_10001A3E0(v5, 0, &cf, v9, a4);
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_10001E360(uint64_t a1)
{
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v4.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v4, 0);
  v2 = 1000 * (v4.tv_sec - *a1) + *(a1 + 8) / -1000 + v4.tv_usec / 1000;

  return SecBucket2Significant(v2);
}

void sub_10001E400(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  v147 = 0;
  v134 = a1 + 40;
  v4 = sub_100018308(*(a1 + 56), &v147, (*(*(a1 + 40) + 8) + 24));
  v5 = v3 + 32;
  *(*(*(v3 + 32) + 8) + 24) = v4;
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = *(v3 + 80);
  if (v6 != v147)
  {
    sub_10003FDA0(v134, v3 + 32);
    goto LABEL_16;
  }

  v7 = *(v3 + 64);
  v8 = v7[1];
  if ((*v7 | (v8 << 8)) == v6)
  {
LABEL_16:
    v19 = 0;
    goto LABEL_147;
  }

  if (!v6)
  {
    *(*(*(v3 + 32) + 8) + 24) = sub_100009260(*(v3 + 56), v7, 0, 1, *(*(v3 + 40) + 8) + 24);
    sub_10001F8AC(*(v3 + 56));
    v116 = *(v3 + 84);
    v117 = *(*(*(v3 + 40) + 8) + 24);
LABEL_15:
    LKAReportKeychainUpgradeOutcomeWithError();
    goto LABEL_16;
  }

  v9 = HIWORD(v6);
  v10 = *(v3 + 80);
  v147 = v10;
  v11 = *v7 | (v8 << 8);
  if (v6 >= 0x10000 && v10 != v11)
  {
    *(*(*(v3 + 32) + 8) + 24) = SecDbError(11, (*(*(v3 + 40) + 8) + 24), @"Half migrated but obsolete DB found: found 0x%x(0x%x) but 0x%x is needed", v6, HIWORD(v6), v11);
    v118 = *(v3 + 84);
    goto LABEL_15;
  }

  v12 = HIWORD(v6);
  v135 = v3;
  if (v9)
  {
    goto LABEL_112;
  }

  v147 = v11;
  v13 = sub_100017108();
  v14 = *v13;
  if (!*v13)
  {
LABEL_12:
    *(*(*v5 + 8) + 24) = SecDbError(11, (*(*v134 + 8) + 24), @"no schema for version: 0x%x", v6);
    v17 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "no schema for version 0x%x", &buf, 8u);
    }

    v18 = *(v135 + 84);
    goto LABEL_15;
  }

  v15 = v13 + 1;
  while ((*v14 | (v14[1] << 8)) != v10)
  {
    v16 = *v15++;
    v14 = v16;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v124 = v6;
  v128 = HIWORD(v6);
  v132 = v5;
  v20 = secLogObjForScope("upgr");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = **(v135 + 64) | (*(*(v135 + 64) + 4) << 8);
    LODWORD(buf) = 67109376;
    DWORD1(buf) = v6;
    WORD4(buf) = 1024;
    *(&buf + 10) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Upgrading from version 0x%x to 0x%x", &buf, 0xEu);
  }

  v125 = v6;
  kdebug_trace();
  v140 = *(v135 + 56);
  v142 = *(*(v135 + 40) + 8);
  v22 = v14[1];
  v123 = *v14;
  v23 = sub_100017114();
  v121 = *v23;
  v122 = *(v23 + 4);
  v187 = 0;
  v188 = &v187;
  v189 = 0x2000000000;
  v190 = 1;
  v183 = 0;
  v184 = &v183;
  v185 = 0x2000000000;
  v186 = 0;
  v182.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v182.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v182, 0);
  v206.location = 48;
  v206.length = 57;
  v24 = CFCharacterSetCreateWithCharactersInRange(0, v206);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  v26 = *(v14 + 1);
  if (v26)
  {
    v27 = 0;
    do
    {
      v28 = CFStringCreateByTrimmingCharactersInSet(*v26, v24);
      if (CFDictionaryContainsKey(Mutable, v28))
      {
        sub_10003FDE8();
      }

      CFDictionarySetValue(Mutable, v28, v27);
      if (v28)
      {
        CFRelease(v28);
      }

      v26 = *&v14[2 * v27 + 4];
      v27 = v27 + 1;
    }

    while (v26);
  }

  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  v29 = *(v23 + 8);
  v139 = (v23 + 8);
  if (v29)
  {
    v30 = 0;
    do
    {
      v31 = CFStringCreateByTrimmingCharactersInSet(*v29, v24);
      if (CFDictionaryContainsKey(theDict, v31))
      {
        sub_10003FDE8();
      }

      CFDictionarySetValue(theDict, v31, v30);
      if (v31)
      {
        CFRelease(v31);
      }

      v29 = *(v23 + 16 + 8 * v30);
      v30 = v30 + 1;
    }

    while (v29);
  }

  v138 = (v142 + 24);
  if (v24)
  {
    CFRelease(v24);
  }

  v32 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  context = _NSConcreteStackBlock;
  p_context = 0x40000000;
  v176 = sub_10001FD60;
  v177 = &unk_100062BC8;
  v33 = theDict;
  v178 = theDict;
  v179 = v14;
  v180 = v23;
  v181 = v32;
  CFDictionaryApplyFunction(Mutable, sub_1000200AC, &context);
  v34 = CFStringCreateMutable(0, 0);
  v35 = CFArrayCreateMutable(0, 0, 0);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v198 = sub_10001FE84;
  v199 = &unk_100062BE8;
  v200 = Mutable;
  v201 = v14;
  v202 = theDict;
  v203 = v23;
  v204 = v34;
  v205 = v35;
  CFSetApplyFunction(v32, sub_10001E348, &buf);
  v166 = _NSConcreteStackBlock;
  v167 = 0x40000000;
  v168 = sub_10001FF20;
  v169 = &unk_100062C08;
  v170 = v32;
  v171 = theDict;
  v172 = v14;
  v173 = v34;
  CFDictionaryApplyFunction(Mutable, sub_1000200AC, &v166);
  v157 = _NSConcreteStackBlock;
  v158 = 0x40000000;
  v159 = sub_10001FF98;
  v160 = &unk_100062C28;
  cf = v35;
  theSet = v32;
  v161 = v32;
  v162 = Mutable;
  v163 = v23;
  v164 = v34;
  v165 = v35;
  CFDictionaryApplyFunction(theDict, sub_1000200AC, &v157);
  v130 = a2;
  if (CFStringGetLength(v34) >= 1)
  {
    v36 = SecDbExec(v140, v34, v138);
    v37 = (v36 & v188[3]);
    *(v188 + 24) &= v36;
    if (v37 != 1)
    {
      v136 = 0;
      v137 = 0;
      v52 = 0;
      v3 = v135;
      v46 = (v142 + 24);
      goto LABEL_160;
    }
  }

  if (v34)
  {
    CFRelease(v34);
  }

  v34 = CFStringCreateMutable(0, 0);
  v38 = *v139;
  if (*v139)
  {
    v39 = (v23 + 8);
    do
    {
      v40 = v38[2];
      if (v40)
      {
        v41 = v38 + 3;
        do
        {
          if ((~*(v40 + 4) & 6) == 0)
          {
            v42 = **v39;
            CFStringAppendFormat(v34, 0, @"DROP INDEX IF EXISTS %@%@;", v42, *v40);
            if (*(v40 + 2) == 11)
            {
              v43 = **v39;
              CFStringAppendFormat(v34, 0, @"DROP INDEX IF EXISTS %@%@0;", v43, *v40);
            }
          }

          v44 = *v41++;
          v40 = v44;
        }

        while (v44);
      }

      v45 = v39[1];
      ++v39;
      v38 = v45;
    }

    while (v45);
  }

  v46 = (v142 + 24);
  v47 = SecDbExec(v140, v34, v138);
  v48 = v47 & v188[3];
  *(v188 + 24) = v48;
  if (v48)
  {
    if (v34)
    {
      CFRelease(v34);
    }

    v49 = sub_100009260(v140, v23, cf, 0, v138);
    v50 = (v49 & v188[3]);
    *(v188 + 24) &= v49;
    v33 = theDict;
    if (v50 != 1)
    {
      v136 = 0;
      v137 = 0;
      v34 = 0;
      v52 = 0;
      v3 = v135;
      goto LABEL_160;
    }

    v51 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v148 = _NSConcreteStackBlock;
    v149 = 0x40000000;
    v150 = sub_1000200C8;
    v151 = &unk_100062D10;
    v152 = v51;
    CFSetApplyFunction(v32, sub_10001E348, &v148);
    v137 = v51;
    if (CFArrayGetCount(v51) < 1)
    {
      v136 = 0;
      v52 = 0;
      goto LABEL_88;
    }

    v143 = Mutable;
    v136 = 0;
    v52 = 0;
    v53 = 0;
    v34 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v51, v53);
      v55 = *&v14[2 * CFDictionaryGetValue(v143, ValueAtIndex) + 2];
      v56 = v139[CFDictionaryGetValue(v33, ValueAtIndex)];
      v57 = secLogObjForScope("upgr");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *v55;
        LODWORD(v191.tv_sec) = 138412290;
        *(&v191.tv_sec + 4) = v58;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Upgrading table %@", &v191, 0xCu);
      }

      if (v55[2])
      {
        v59 = 0;
          ;
        }

        v61 = v59;
        if (v52)
        {
LABEL_60:
          v62 = *v52;
          if (*v52)
          {
            *v52 = 0;
            CFRelease(v62);
          }

          free(v52);
        }
      }

      else
      {
        v61 = 0;
        if (v52)
        {
          goto LABEL_60;
        }
      }

      v63 = v61;
      v52 = malloc_type_malloc(8 * v61 + 24, 0x1060040E5A1EACFuLL);
      *v52 = CFStringCreateWithFormat(0, 0, @"%@_old", *v55);
      v64 = *(v55 + 8);
      *(v52 + 8) = v64;
      if ((v61 & 0x80000000) == 0)
      {
        do
        {
          v52[v63 + 2] = v55[v63 + 2];
          --v63;
        }

        while (v63 != -1);
      }

      if (v64)
      {
        Mutable = v143;
        v51 = v137;
        if (v136)
        {
          sub_100029F58(v136, 0);
        }

        v65 = sub_100029330();
        v46 = v138;
        v66 = sub_10002A0E4(v52, v65, 0, 0, v138);
        if (!v66)
        {
          v136 = 0;
          v3 = v135;
          v33 = theDict;
          goto LABEL_92;
        }

        v148 = _NSConcreteStackBlock;
        v149 = 0x40000000;
        v150 = sub_10003F3C0;
        v151 = &unk_100062CD0;
        v152 = &v183;
        v153 = &v187;
        v154 = v56;
        v155 = v138;
        v156 = v140;
        v136 = v66;
        v67 = sub_100004958(v66, v140, v138, &stru_100062C68, &stru_100062CA8, 0, 0, &v148);
        v68 = v67 & v188[3];
        *(v188 + 24) = v68;
        if ((v68 & 1) == 0)
        {
          goto LABEL_159;
        }

        v33 = theDict;
      }

      else
      {
        v51 = v137;
        if (v34)
        {
          CFRelease(v34);
        }

        v34 = CFStringCreateMutable(0, 0);
        v69 = CFStringCreateMutable(0, 0);
        v70 = v52[2];
        if (v70)
        {
          v71 = 0;
          v72 = v52 + 3;
          do
          {
            if ((*(v70 + 16) & 2) != 0)
            {
              if (v71)
              {
                CFStringAppendFormat(v69, 0, @",");
              }

              CFStringAppendFormat(v69, 0, @"%@", *v70);
              v71 = 1;
            }

            v73 = *v72++;
            v70 = v73;
          }

          while (v73);
        }

        CFStringAppendFormat(v34, 0, @"INSERT OR REPLACE INTO %@ (%@) SELECT %@ FROM %@;", *v56, v69, v69, *v52);
        if (v69)
        {
          CFRelease(v69);
        }

        v46 = v138;
        v74 = SecDbExec(v140, v34, v138);
        v75 = (v74 & v188[3]);
        *(v188 + 24) &= v74;
        v33 = theDict;
        if (v75 != 1)
        {
          v3 = v135;
          Mutable = v143;
          goto LABEL_160;
        }
      }

      if (++v53 >= CFArrayGetCount(v51))
      {
        if (v34)
        {
          CFRelease(v34);
        }

        Mutable = v143;
LABEL_88:
        v34 = CFStringCreateMutable(0, 0);
        v191.tv_sec = _NSConcreteStackBlock;
        *&v191.tv_usec = 0x40000000;
        v192 = sub_100020054;
        v193 = &unk_100062CF0;
        v194 = Mutable;
        v195 = v14;
        v196 = v34;
        CFSetApplyFunction(v32, sub_10001E348, &v191);
        if (CFStringGetLength(v34) < 1)
        {
          v3 = v135;
        }

        else
        {
          v76 = SecDbExec(v140, v34, v46);
          v77 = v76 & v188[3];
          *(v188 + 24) = v77;
          v3 = v135;
          if ((v77 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        goto LABEL_92;
      }
    }
  }

  v136 = 0;
  v137 = 0;
  v52 = 0;
LABEL_159:
  v3 = v135;
  v33 = theDict;
LABEL_160:
  v115 = *v46;
  LKAReportKeychainUpgradeOutcomeWithError();
LABEL_92:
  v78 = *(v188 + 24);
  SecBucket2Significant(v184[3]);
  sub_10001E360(&v182);
  SecCoreAnalyticsSendValue();
  SecCoreAnalyticsSendValue();
  if (v136)
  {
    sub_100029F58(v136, 0);
  }

  a2 = v130;
  v5 = v132;
  v6 = v124;
  if (v34)
  {
    CFRelease(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v52)
  {
    v79 = *v52;
    if (*v52)
    {
      *v52 = 0;
      CFRelease(v79);
    }

    free(v52);
  }

  if (v137)
  {
    CFRelease(v137);
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v80 = *(v188 + 24);
  _Block_object_dispose(&v183, 8);
  _Block_object_dispose(&v187, 8);
  *(*(*v132 + 8) + 24) = v80;
  if ((v80 & 1) == 0)
  {
    v119 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v120 = *(*(*v134 + 8) + 24);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v120;
      _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "upgrade: Upgrade phase1 failed: %@", &buf, 0xCu);
    }

    goto LABEL_16;
  }

  kdebug_trace();
  v12 = v125;
  v9 = v128;
LABEL_112:
  v141 = v12;
  v129 = v9;
  v133 = v5;
  v187 = 0;
  kdebug_trace();
  v81 = *(v3 + 56);
  v82 = *(v3 + 72);
  theDicta = v147;
  off_100073680();
  v84 = v83;
  v144 = *v83;
  *v83 = v85;
  context = 0;
  p_context = &context;
  v176 = 0x2000000000;
  LOBYTE(v177) = 1;
  v166 = 0;
  v167 = &v166;
  v168 = 0x2000000000;
  v169 = 0;
  memset(&v191, 170, sizeof(v191));
  gettimeofday(&v191, 0);
  v86 = sub_100017114();
  v87 = *(v86 + 8);
  v131 = a2;
  v88 = 0;
  if (v87)
  {
    v89 = *v86 | (*(v86 + 4) << 8);
    v90 = (v86 + 16);
    while ((v82->isa & 1) == 0)
    {
      if (*(v87 + 8) == 1)
      {
        v91 = sub_100001820(v87, 14, &v187);
        if (v91)
        {
          v92 = v91;
          if (v88)
          {
            sub_100029F58(v88, 0);
          }

          v93 = *(v90 - 1);
          v94 = sub_100029330();
          v95 = sub_10002A0E4(v93, v94, 0, 0, &v187);
          if (!v95)
          {
            *(p_context + 24) = 0;
            goto LABEL_124;
          }

          v88 = v95;
          v96 = *v84;
          v157 = _NSConcreteStackBlock;
          v158 = 0x40000000;
          v159 = sub_1000200D8;
          v160 = &unk_100062D70;
          v161 = v92;
          v148 = _NSConcreteStackBlock;
          v149 = 0x40000000;
          v150 = sub_100020134;
          v151 = &unk_100062D90;
          v152 = &v187;
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 0x40000000;
          v198 = sub_1000201BC;
          v199 = &unk_100062DB8;
          v200 = &v166;
          v201 = &context;
          v202 = &v187;
          v203 = v95;
          v204 = v82;
          v205 = __PAIR64__(v89, theDicta);
          v97 = sub_100004958(v95, v96, &v187, 0, &stru_100062D50, &v157, &v148, &buf);
          v98 = v97 & *(p_context + 24);
          *(p_context + 24) = v98;
          if ((v98 & 1) == 0)
          {
            LKAReportKeychainUpgradeOutcomeWithError();
            goto LABEL_123;
          }
        }
      }

      v99 = *v90++;
      v87 = v99;
      if (!v99)
      {
        break;
      }
    }
  }

  SecBucket2Significant(*(v167 + 24));
  sub_10001E360(&v191);
  SecCoreAnalyticsSendValue();
  SecCoreAnalyticsSendValue();
  if (v88)
  {
LABEL_123:
    sub_100029F58(v88, 0);
  }

LABEL_124:
  *v84 = v144;
  v100 = *(p_context + 24);
  _Block_object_dispose(&v166, 8);
  _Block_object_dispose(&context, 8);
  a2 = v131;
  v5 = v133;
  *(*(*v133 + 8) + 24) = v100;
  if ((*(*(*v133 + 8) + 24) & 1) == 0)
  {
    if (!v129)
    {
      **(v135 + 72) = 1;
      *(*(*(v135 + 32) + 8) + 24) = 1;
      v105 = v187;
      if (!v187)
      {
        goto LABEL_137;
      }

      v187 = 0;
      goto LABEL_135;
    }

    v101 = v187;
    if (!v187)
    {
      goto LABEL_137;
    }

    v102 = *(*v134 + 8);
    v103 = *(v102 + 24);
    if (!v103)
    {
      goto LABEL_136;
    }

    if (CFErrorGetCode(v103) == -25330)
    {
      v104 = *(v102 + 24);
      if (!v104)
      {
LABEL_136:
        *(v102 + 24) = v101;
        goto LABEL_137;
      }

      *(v102 + 24) = 0;
      CFRelease(v104);
    }

    if (*(v102 + 24))
    {
      v105 = v101;
LABEL_135:
      CFRelease(v105);
      goto LABEL_137;
    }

    goto LABEL_136;
  }

LABEL_137:
  if ((*(*(*v133 + 8) + 24) & 1) == 0)
  {
    sub_10003FE04(v6 < 0x10000, v134);
    goto LABEL_16;
  }

  if (**(v135 + 72))
  {
    v106 = v141;
  }

  else
  {
    v107 = secLogObjForScope("upgr");
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = **(v135 + 64) | (*(*(v135 + 64) + 4) << 8);
      LODWORD(buf) = 67109376;
      DWORD1(buf) = v141;
      WORD4(buf) = 1024;
      *(&buf + 10) = v108;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Done upgrading from version 0x%x to 0x%x", &buf, 0xEu);
    }

    *(*(*(v135 + 48) + 8) + 24) = 1;
    kdebug_trace();
    v106 = 0;
  }

  v109 = v147 | (v106 << 16);
  v110 = (v106 << 8) & 0xFF0000 | BYTE1(v147);
  v111 = secLogObjForScope("upgr");
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    DWORD1(buf) = v109;
    WORD4(buf) = 1024;
    *(&buf + 10) = v110;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Upgrading saving version major 0x%x minor 0x%x", &buf, 0xEu);
  }

  v19 = CFStringCreateWithFormat(0, 0, @"UPDATE tversion SET version='%d', minor='%d'", v109, v110);
  v112 = SecDbExec(*(v135 + 56), v19, (*(*(v135 + 40) + 8) + 24));
  *(*(*(v135 + 32) + 8) + 24) = v112;
  if ((v112 & 1) == 0)
  {
    sub_10003FEC0(v134, v19, &buf);
    v19 = buf;
  }

LABEL_147:
  if ((*(*(*v5 + 8) + 24) & 1) == 0)
  {
    v113 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      v114 = *(*(*v134 + 8) + 24);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v114;
      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "upgrade: SecDB upgrade failed: %@", &buf, 0xCu);
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  *a2 = *(*(*v5 + 8) + 24);
}

void sub_10001F8AC(uint64_t a1)
{
  cf = 0;
  if (SecDbExec(a1, @"DROP INDEX IF EXISTS genpagrp; DROP INDEX IF EXISTS genpsync;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS inetagrp; DROP INDEX IF EXISTS inetsync;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS certagrp; DROP INDEX IF EXISTS certsync;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS keysagrp; DROP INDEX IF EXISTS keyssync;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS genpsync0;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS inetsync0;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS certsync0;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS keyssync0;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS genpmusr;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS inetmusr;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS certmusr;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS keysmusr;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS item_backupmusr;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS backup_keybagmusr;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS backup_keyarchivemusr;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS archived_key_backupmusr;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS agrp_musr_tomb_svce;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS agrp_musr_tomb_srvr;", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_svce_acct ON genp(agrp, musr, tomb, svce, acct);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_srvr_acct ON inet(agrp, musr, tomb, srvr, acct);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_type ON inet(agrp, musr, tomb, type);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS genpagrp_musr_tomb_acct ON genp(agrp, musr, tomb, acct);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS inetagrp_musr_tomb_acct ON inet(agrp, musr, tomb, acct);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_subj ON cert(agrp, musr, tomb, subj);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_atag ON keys(agrp, musr, tomb, atag);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS synckeys_contextID_ckzone_keyclass_state ON synckeys(contextID, ckzone, keyclass, state);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS incomingqueue_contextID_ckzone_UUID ON incomingqueue(contextID, ckzone, UUID);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS incomingqueue_contextID_ckzone_state ON incomingqueue(contextID, ckzone, state);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS incomingqueue_contextID_ckzone_parentkeyUUID ON incomingqueue(contextID, ckzone, parentKeyUUID);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS outgoingqueue_contextID_ckzone_UUID ON outgoingqueue(contextID, ckzone, UUID);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS outgoingqueue_contextID_ckzone_state ON outgoingqueue(contextID, ckzone, state);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS outgoingqueue_contextID_ckzone_parentkeyUUID ON outgoingqueue(contextID, ckzone, parentKeyUUID);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS ckmirror_contextID_ckzone_UUID ON ckmirror(contextID, ckzone, UUID);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS ckmirror_contextID_ckzone_parentkeyUUID ON ckmirror(contextID, ckzone, parentKeyUUID);", &cf) && SecDbExec(a1, @"CREATE INDEX IF NOT EXISTS ckmirror_pcss_pcsk ON ckmirror(pcss, pcsk);", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS tlksharecontextID;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS currentitemscontextID;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS ckdevicestatecontextID;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS outgoingqueuecontextID;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS incomingqueuecontextID;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS synckeyscontextID;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS ckmirrorcontextID;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS currentkeyscontextID;", &cf) && SecDbExec(a1, @"DROP INDEX IF EXISTS ckstatecontextID;", &cf))
  {
    v2 = secLogObjForScope("upgr");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "processed custom indexes (now or in the past)", buf, 2u);
    }

    v3 = cf;
    if (cf)
    {
      goto LABEL_48;
    }
  }

  else if (!sub_10003FF78(&cf, buf))
  {
    v3 = *buf;
LABEL_48:
    cf = 0;
    CFRelease(v3);
  }
}

void sub_10001FD60(uint64_t a1, const void *a2, int a3)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  if (CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value))
  {
    v6 = *(*(a1 + 40) + 8 * a3 + 8);
    v7 = *(*(a1 + 48) + 8 * value + 8);
    if (CFEqual(*v6, *v7) && *(v6 + 8) == *(v7 + 8))
    {
      v8 = *(v7 + 16);
      v9 = *(v6 + 16);
      if (v9)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
LABEL_9:
        if (!(v9 | v8))
        {
          return;
        }
      }

      else
      {
        v11 = (v7 + 24);
        v12 = (v6 + 24);
        while (CFEqual(*v9, *v8) && *(v9 + 8) == *(v8 + 8) && *(v9 + 16) == *(v8 + 16) && *(v9 + 24) == *(v8 + 24) && *(v9 + 32) == *(v8 + 32))
        {
          v13 = *v11++;
          v8 = v13;
          v14 = *v12++;
          v9 = v14;
          if (!v14 || !v8)
          {
            goto LABEL_9;
          }
        }
      }
    }

    CFSetAddValue(*(a1 + 56), a2);
  }
}

void sub_10001FE84(uint64_t a1, const void *a2)
{
  v4 = *(*(a1 + 40) + 8 * CFDictionaryGetValue(*(a1 + 32), a2) + 8);
  Value = CFDictionaryGetValue(*(a1 + 48), a2);
  v6 = **(*(a1 + 56) + 8 * Value + 8);
  CFStringAppendFormat(*(a1 + 64), 0, @"ALTER TABLE %@ RENAME TO %@_old;", v6, *v4);
  v7 = *(a1 + 72);

  CFArrayAppendValue(v7, Value);
}

void sub_10001FF20(uint64_t a1, const void *a2, int a3)
{
  if (!CFSetContainsValue(*(a1 + 32), a2) && !CFDictionaryContainsKey(*(a1 + 40), a2))
  {
    CFStringAppendFormat(*(a1 + 56), 0, @"DROP TABLE IF EXISTS %@;", **(*(a1 + 48) + 8 * a3 + 8));
  }
}

void sub_10001FF98(uint64_t a1, const void *a2, int a3)
{
  if (!CFSetContainsValue(*(a1 + 32), a2) && !CFDictionaryContainsKey(*(a1 + 40), a2))
  {
    CFStringAppendFormat(*(a1 + 56), 0, @"DROP TABLE IF EXISTS %@;", **(*(a1 + 48) + 8 * a3 + 8));
    v6 = *(a1 + 64);

    CFArrayAppendValue(v6, a3);
  }
}

uint64_t sub_1000200D8(uint64_t a1, __CFString *a2, _BYTE *a3)
{
  sub_100003A64(a2, a3);
  CFStringAppendFormat(a2, 0, @"NOT %@ IN (?,?)", **(a1 + 32));
  return 1;
}

uint64_t sub_100020134(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v3 = a3;
  result = SecDbBindObject(a2, a3, kSecAttrAccessibleAlwaysPrivate, *(a1 + 32));
  if (result)
  {
    v7 = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    v8 = *(a1 + 32);

    return SecDbBindObject(a2, (v3 + 1), v7, v8);
  }

  return result;
}

void sub_1000201BC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  err = 0;
  ++*(*(*(a1 + 32) + 8) + 24);
  if (sub_100001CF0(a2, 1, &err))
  {
    v6 = sub_100001820(*(a2 + 16), 7, *(a1 + 48));
    v7 = sub_100002090(a2, v6, kCFNull, &err);
    *(*(*(a1 + 40) + 8) + 24) = v7;
    if (!v7)
    {
      goto LABEL_47;
    }

    v8 = sub_100002404(a2, kSecAttrAccessGroup);
    if (v8)
    {
      v9 = kSecAttrAccessGroupToken == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (v8 != kSecAttrAccessGroupToken)
      {
        goto LABEL_12;
      }
    }

    else if (!CFEqual(v8, kSecAttrAccessGroupToken))
    {
      goto LABEL_12;
    }

    if (!sub_100002404(a2, kSecAttrTokenID))
    {
      v20 = secLogObjForScope("upgr");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        *&buf[4] = a2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "dropping item during item upgrade due to agrp=com.apple.token: %{private}@", buf, 0xCu);
      }

      off_100073680();
      v12 = sub_10000682C(a2, *v21, kCFBooleanFalse, 0, &err);
      goto LABEL_13;
    }

LABEL_12:
    off_100073680();
    v12 = sub_100006174(a2, a2, *v11, 0, *(*(a1 + 56) + 155), &err);
LABEL_13:
    *(*(*(a1 + 40) + 8) + 24) = v12;
  }

  if (!err)
  {
    goto LABEL_49;
  }

  Code = CFErrorGetCode(err);
  if (Code <= -25309)
  {
    if (Code <= -26276)
    {
      if (Code != -536870186 && Code != -536870184)
      {
        goto LABEL_36;
      }

LABEL_34:
      **(a1 + 64) = 1;
      v18 = secLogObjForScope("upgr");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = err;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bailing in phase 2 because AKS is unavailable: %@", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (Code == -26275)
    {
      *buf = 0;
      off_100073680();
      sub_10000682C(a2, *v25, kCFBooleanFalse, 0, buf);
      v26 = *buf;
      if (*buf)
      {
        *buf = 0;
        CFRelease(v26);
      }
    }

    else if (Code != -25330)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (Code > -25292)
  {
    if (Code == -25291)
    {
      goto LABEL_34;
    }

    if (Code == 19)
    {
      v16 = kSecDbErrorDomain;
      Domain = CFErrorGetDomain(err);
      if (!CFEqual(v16, Domain))
      {
        v28 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          *&buf[4] = a2;
          v31 = 2112;
          v32 = err;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received SQLITE_CONSTRAINT with wrong error domain. Huh? Item: %{private}@, error: %@", buf, 0x16u);
        }

        goto LABEL_47;
      }

      v14 = secLogObjForScope("upgr");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 138477827;
      *&buf[4] = a2;
      v15 = "Received SQLITE_CONSTRAINT -- ignoring: %{private}@";
      goto LABEL_33;
    }

LABEL_36:
    v19 = err;
    if (err)
    {
      sub_100040030(err, a1);
    }

    *(*(*(a1 + 40) + 8) + 24) = v19 == 0;
    goto LABEL_47;
  }

  if (Code != -25308)
  {
    if (Code == -25299)
    {
      v14 = secLogObjForScope("upgr");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_45:
        v24 = *(*(a1 + 40) + 8);
        goto LABEL_46;
      }

      *buf = 138477827;
      *&buf[4] = a2;
      v15 = "Ignoring duplicate item: %{private}@";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v22 = *(a1 + 72);
  v23 = *(a1 + 76);
  LKAReportKeychainUpgradeOutcomeWithError();
  **(a1 + 64) = 1;
  *a3 = 1;
  v24 = *(*(a1 + 40) + 8);
LABEL_46:
  *(v24 + 24) = 1;
LABEL_47:
  if (err)
  {
    CFRelease(err);
  }

LABEL_49:
  if (*a3)
  {
    v27 = 1;
  }

  else
  {
    v27 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  }

  *a3 = v27 & 1;
}

uint64_t sub_10002069C(uint64_t a1)
{
  v2 = sub_1000291FC();
  v3 = sub_100017114();
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = (v3 + 16);
    v6 = 1;
    do
    {
      if (*(v4 + 8) == 1)
      {
        v7 = sub_10002A0E4(v4, v2, 0, *(a1 + 32), *(a1 + 40));
        if (v7)
        {
          v8 = v7;
          v9 = *(a1 + 40);
          v16 = *(a1 + 48);
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 0x40000000;
          v17[2] = sub_100020910;
          v17[3] = &unk_100062E98;
          v17[4] = v2;
          v17[5] = v9;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 0x40000000;
          v15[2] = sub_100020924;
          v15[3] = &unk_100062EF8;
          v6 &= sub_100004958(v7, v16, v9, &stru_100062DF8, &stru_100062E38, &stru_100062E78, v17, v15);
          sub_100029F58(v8, 0);
        }

        else
        {
          v10 = secLogObjForScope("transcrypt");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = **(v5 - 1);
            v12 = **(a1 + 40);
            *buf = 138412546;
            v19 = v11;
            v20 = 2112;
            v21 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "could not create query for class %@: %@", buf, 0x16u);
          }
        }
      }

      v13 = *v5++;
      v4 = v13;
    }

    while (v13);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

BOOL sub_1000208CC(id a1, __CFString *a2, BOOL *a3)
{
  sub_100003A64(a2, a3);
  CFStringAppendFormat(a2, 0, @"musr = ?");
  return 1;
}

void sub_100020924(uint64_t a1, __CFString ***a2)
{
  v4 = secLogObjForScope("transcrypt");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handling item: %{private}@", buf, 0xCu);
  }

  cf = 0;
  if ((sub_100002E30(a2, -6, &cf) & 1) == 0)
  {
    v5 = secLogObjForScope("transcrypt");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 138412290;
    v10 = cf;
    v6 = "failed to set keybag, but continuing. Error: %@";
    goto LABEL_9;
  }

  if (sub_100005434(a2, a2, *(a1 + 32), &cf, &stru_100062ED8))
  {
    return;
  }

  v5 = secLogObjForScope("transcrypt");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = cf;
    v6 = "failed to update item, but continuing. Error: %@";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
  }

LABEL_10:
  v7 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v7);
  }
}

void sub_100020B28(uint64_t a1)
{
  if (!qword_1000737E8)
  {
    _SecDbServerSetup();
    v2 = *(a1 + 32);
    v3 = qword_1000737E8;
    qword_1000737E8 = 0;
    v4 = sub_100018AE8();
    if (v4)
    {
      v5 = v4;
      qword_1000737E8 = sub_100018C24(v4, v2);
      CFRelease(v5);
    }

    else
    {
      v6 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no keychain path available", &v8, 2u);
      }
    }

    if (v3)
    {
      v7 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412546;
        v9 = v3;
        v10 = 2112;
        v11 = qword_1000737E8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "replaced %@ with %@", &v8, 0x16u);
      }

      CFRelease(v3);
    }
  }
}

BOOL sub_100020C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 48;
  v5 = CFEqual(*(a1 + 48), kSecClassIdentity);
  v6 = &kSecClassCertificate;
  if (!v5)
  {
    v6 = v4;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"SELECT agrp FROM %@ WHERE persistref = ?", *v6);
  v13[0] = _NSConcreteStackBlock;
  v8 = *(v4 + 8);
  v9 = *(v4 - 16);
  v10 = *(*(v4 - 16) + 8);
  v13[1] = 0x40000000;
  v13[2] = sub_100020D90;
  v13[3] = &unk_100063008;
  v15 = v8;
  v16 = a2;
  v14 = v9;
  v11 = SecDbWithSQL(a2, v7, (v10 + 24), v13);
  if (v7)
  {
    CFRelease(v7);
  }

  return v11 && *(*(*(a1 + 40) + 8) + 24) != 0;
}

BOOL sub_100020D90(uint64_t a1, sqlite3_stmt *a2)
{
  BytePtr = CFDataGetBytePtr(*(a1 + 48));
  Length = CFDataGetLength(*(a1 + 48));
  v6 = SecDbBindBlob(a2, 1, BytePtr, Length, 0xFFFFFFFFFFFFFFFFLL, (*(*(a1 + 32) + 8) + 24));
  v7 = *(a1 + 56);
  v8 = *(*(a1 + 32) + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_100020E90;
  v11[3] = &unk_100062FE0;
  v11[4] = *(a1 + 40);
  v11[5] = a2;
  if (SecDbForEach(v7, a2, (v8 + 24), v11))
  {
    v9 = !v6;
  }

  else
  {
    v9 = 1;
  }

  return !v9 && *(*(*(a1 + 40) + 8) + 24) != 0;
}

BOOL sub_100020E90(uint64_t a1)
{
  v2 = sqlite3_column_blob(*(a1 + 40), 0);
  v3 = sqlite3_column_bytes(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithBytes(0, v2, v3, 0x8000100u, 0);
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

BOOL sub_100020F08(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 48;
  v5 = CFEqual(*(a1 + 48), kSecClassIdentity);
  v6 = &kSecClassCertificate;
  if (!v5)
  {
    v6 = v4;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"SELECT agrp FROM %@ WHERE rowid == %u", *v6, *(v4 + 8));
  v12[0] = _NSConcreteStackBlock;
  v8 = *(v4 - 16);
  v9 = *(*(v4 - 16) + 8);
  v12[1] = 0x40000000;
  v12[2] = sub_100021024;
  v12[3] = &unk_100063080;
  v14 = a2;
  v13 = v8;
  v10 = SecDbWithSQL(a2, v7, (v9 + 24), v12);
  if (v7)
  {
    CFRelease(v7);
  }

  return v10 && *(*(*(a1 + 40) + 8) + 24) != 0;
}

uint64_t sub_100021024(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[6];
  v4 = *(a1[4] + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1000210C8;
  v6[3] = &unk_100063058;
  v6[4] = a1[5];
  v6[5] = a2;
  result = SecDbForEach(v3, a2, (v4 + 24), v6);
  if (result)
  {
    return *(*(a1[5] + 8) + 24) != 0;
  }

  return result;
}

BOOL sub_1000210C8(uint64_t a1)
{
  v2 = sqlite3_column_blob(*(a1 + 40), 0);
  v3 = sqlite3_column_bytes(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithBytes(0, v2, v3, 0x8000100u, 0);
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_100021140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10003F75C;
  v6[3] = &unk_1000630C8;
  v6[4] = a2;
  v7 = *(a1 + 40);
  v11 = *(a1 + 72);
  v4 = *(a1 + 64);
  v8 = *(a1 + 56);
  v9 = v3;
  v10 = v4;
  return sub_100009168(a2, v3, v6);
}

uint64_t sub_1000211D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100021270;
  v6[3] = &unk_100063108;
  v6[4] = a2;
  v6[5] = v4;
  result = sub_100009168(a2, v4, v6);
  if (result)
  {
    return SecDbExec(a2, @"VACUUM;", *(a1 + 32));
  }

  return result;
}

uint64_t sub_100021270(uint64_t a1)
{
  v2 = SecDbExec(*(a1 + 32), @"DELETE FROM genp WHERE sync=1;", *(a1 + 40));
  v3 = v2 & SecDbExec(*(a1 + 32), @"DELETE FROM inet WHERE sync=1;", *(a1 + 40));
  v4 = SecDbExec(*(a1 + 32), @"DELETE FROM cert WHERE sync=1;", *(a1 + 40));
  v5 = v3 & v4 & SecDbExec(*(a1 + 32), @"DELETE FROM keys WHERE sync=1;", *(a1 + 40));
  v6 = *(a1 + 32);
  v7 = sub_10001712C();
  LODWORD(v6) = sub_100021364(v6, v7, *(a1 + 40));
  v8 = *(a1 + 32);
  v9 = sub_100017208();
  LODWORD(v8) = v6 & sub_100021364(v8, v9, *(a1 + 40));
  v10 = *(a1 + 32);
  v11 = sub_100017224();
  LODWORD(v8) = v5 & v8 & sub_100021364(v10, v11, *(a1 + 40));
  v12 = *(a1 + 32);
  v13 = sub_100017240();
  return v8 & sub_100021364(v12, v13, *(a1 + 40));
}

BOOL sub_100021364(uint64_t a1, uint64_t a2, const void **a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitAll);
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x2000000000;
  v16 = 0;
  v7 = sub_10002A0E4(a2, 0, Mutable, 0, &v16);
  if (!v7)
  {
    sub_100040078(v15);
  }

  v8 = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_10002153C;
  v13[3] = &unk_100063190;
  v13[5] = a2;
  v13[6] = a1;
  v13[4] = &v14;
  sub_100004958(v7, a1, (v15[0] + 24), &stru_100063168, 0, 0, 0, v13);
  sub_100029F58(v8, (v15[0] + 24));
  v9 = *(v15[0] + 24);
  if (v9)
  {
    if (a3)
    {
      v10 = *a3;
      v11 = *(v15[0] + 24);
      if (*a3)
      {
        *a3 = 0;
        CFRelease(v10);
        v11 = *(v15[0] + 24);
      }

      *a3 = v11;
    }

    else
    {
      *(v15[0] + 24) = 0;
      CFRelease(v9);
    }
  }

  _Block_object_dispose(&v14, 8);
  return v9 == 0;
}

uint64_t sub_10002153C(uint64_t a1, uint64_t a2)
{
  result = sub_10000C9CC(*(a2 + 48), *(a1 + 40), 0);
  if ((result & 1) == 0)
  {
    Value = CFDictionaryGetValue(*(a2 + 48), kSecAttrAccessGroup);
    result = CFEqual(Value, @"com.apple.bluetooth");
    if (!result)
    {
      v6 = *(a1 + 48);
      v7 = (*(*(a1 + 32) + 8) + 24);

      return sub_10000682C(a2, v6, kCFBooleanFalse, 0, v7);
    }
  }

  return result;
}

uint64_t sub_1000215D8(uint64_t a1)
{
  kdebug_trace();
  v2 = CFPropertyListCreateWithData(kCFAllocatorDefault, *(a1 + 32), 0, 0, *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = sub_10000F08C(*(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 64), *(a1 + 76), v3, 2, 0, *(a1 + 40));
    }

    else
    {
      v5 = SecError(-50, *(a1 + 40), @"import: keychain is not a dictionary");
    }

    v6 = v5;
    CFRelease(v3);
  }

  else
  {
    v6 = 0;
  }

  kdebug_trace();
  return v6;
}

void sub_1000216FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

BOOL sub_100021720(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_100021754(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

BOOL sub_10002176C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100021784(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

SecCertificateRef sub_10002179C()
{

  return sub_10003EEE4(v0, v1);
}

BOOL sub_1000217B4(unsigned int a1, uint64_t a2, const __CFData *a3, __CFData *DERData, const __CFDictionary *a5, __CFData **a6, int a7, char a8, CFTypeRef *a9)
{
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  bytes[0] = v15;
  bytes[1] = v15;
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, 168);
  Constraints = SecAccessControlGetConstraints();
  v23 = Constraints;
  if (Constraints)
  {
    v24 = 6;
  }

  else
  {
    v24 = 3;
  }

  if (!Constraints)
  {
    v83 = v24;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, DERData);
    v33 = MutableCopy;
    if (a5)
    {
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_100021DF0;
      context[3] = &unk_1000631D0;
      context[4] = MutableCopy;
      CFDictionaryApplyFunction(a5, sub_100024448, context);
    }

    if (v33)
    {
      v88 = a6;
      CFDictionaryRemoveValue(v33, kSecAttrAccessControl);
      v25 = kCFAllocatorDefault;
      DERData = CFPropertyListCreateDERData(kCFAllocatorDefault, v33, a9, v34, v35, v36, v37, v38);
      CFRelease(v33);
      if (DERData)
      {
        goto LABEL_7;
      }

LABEL_15:
      v28 = 1;
LABEL_16:
      a6 = v88;
LABEL_19:
      v30 = SecError(-50, a9, @"ks_encrypt_data: invalid plain text");
      v31 = 0;
      goto LABEL_20;
    }

    DERData = 0;
LABEL_18:
    v28 = 1;
    goto LABEL_19;
  }

  if (!DERData)
  {
    goto LABEL_18;
  }

  v83 = v24;
  v88 = a6;
  v25 = kCFAllocatorDefault;
  DERData = CFPropertyListCreateDERData(kCFAllocatorDefault, DERData, a9, v18, v19, v20, v21, v22);
  if (!DERData)
  {
    goto LABEL_15;
  }

LABEL_7:
  v82 = a7;
  v26 = CFGetTypeID(DERData);
  TypeID = CFDataGetTypeID();
  v28 = 0;
  if (!a2 || v26 != TypeID)
  {
    goto LABEL_16;
  }

  Length = CFDataGetLength(DERData);
  v90 = 16;
  v89 = 0;
  if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes))
  {
    v30 = SecError(-108, a9, @"ks_encrypt_data: SecRandomCopyBytes failed");
    v28 = 0;
    v31 = 0;
LABEL_58:
    a6 = v88;
LABEL_20:
    memset_s(bytes, 0x20uLL, 0, 0x20uLL);
    v39 = 0;
    if (!Mutable)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  Protection = SecAccessControlGetProtection();
  v42 = sub_100021DF8(Protection, a9);
  if (!v42)
  {
    v28 = 0;
    v31 = 0;
    goto LABEL_57;
  }

  v81 = Length;
  if (v23)
  {
    v80 = v42;
    v43 = SecAccessControlGetConstraints();
    v44 = CFDictionaryCreateMutableCopy(0, 0, a5);
    CFDictionarySetValue(v44, @"acl", v43);
    v31 = CFPropertyListCreateDERData(v25, v44, 0, v45, v46, v47, v48, v49);
    if (v44)
    {
      CFRelease(v44);
    }

    if (sub_100011FB8(a1, v80, 0x20u, bytes, Mutable, v31, a3, a2, a9))
    {
      v87 = CFDataGetLength(Mutable);
      v50 = SecAccessControlGetProtection();
      v57 = der_sizeof_plist(v50, 0, v51, v52, v53, v54, v55, v56);
      v58 = CFDataCreateMutable(0, 0);
      CFDataSetLength(v58, v57);
      MutableBytePtr = CFDataGetMutableBytePtr(v58);
      v60 = CFDataGetMutableBytePtr(v58);
      if (der_encode_plist(v50, 0, MutableBytePtr, &v60[v57], v61, v62, v63, v64))
      {
        if (v58)
        {
          theDataa = v58;
          v65 = CFDataGetLength(v58);
          v66 = v65 + 28;
          v67 = v87;
          goto LABEL_42;
        }
      }

      else
      {
        CFRelease(v58);
      }

      v28 = 0;
LABEL_57:
      v30 = 1;
      goto LABEL_58;
    }

    v28 = 0;
LABEL_67:
    v30 = 0;
    goto LABEL_58;
  }

  if (!sub_100011628(@"oe", a1, 0, v42, 0x20u, bytes, &v89, Mutable, a8, a9))
  {
    v28 = 0;
    v31 = 0;
    goto LABEL_67;
  }

  v67 = CFDataGetLength(Mutable);
  v31 = 0;
  v65 = 0;
  theDataa = 0;
  v66 = 28;
LABEL_42:
  v68 = v81 + v67;
  v69 = CFDataCreateMutable(0, v66 + v68);
  v39 = v69;
  if (!v69)
  {
    v30 = 1;
    goto LABEL_52;
  }

  CFDataSetLength(v69, v66 + v68);
  v70 = CFDataGetMutableBytePtr(v39);
  v71 = v83 | 0x80000000;
  if (!v82)
  {
    v71 = v83;
  }

  *v70 = v71;
  if (v23)
  {
    *(v70 + 1) = v65;
    v72 = v70 + 8;
    v93.length = v65;
    v93.location = 0;
    CFDataGetBytes(theDataa, v93, v70 + 8);
    v73 = &v72[v65];
  }

  else
  {
    *(v70 + 1) = v89;
    v73 = v70 + 8;
  }

  *v73 = v67;
  v74 = (v73 + 4);
  if (v82)
  {
    CFDataGetMutableBytePtr(v39);
  }

  BytePtr = CFDataGetBytePtr(Mutable);
  memcpy(v74, BytePtr, v67);
  v76 = &v74[v67];
  v79 = &v76[v81];
  v78 = v76;
  CFDataGetBytePtr(DERData);
  v77 = CCCryptorGCM();
  if (v77)
  {
    v30 = SecError(-26276, a9, @"ks_encrypt_data: CCCryptorGCM failed: %d", v77);
LABEL_52:
    a6 = v88;
    goto LABEL_60;
  }

  a6 = v88;
  v30 = v90 == 16 || SecError(-26276, a9, @"ks_encrypt_data: CCCryptorGCM expected: 16 got: %ld byte tag", v90, v81, v78, v79, &v90);
LABEL_60:
  memset_s(bytes, 0x20uLL, 0, 0x20uLL);
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  v28 = 0;
  if (Mutable)
  {
LABEL_21:
    CFRelease(Mutable);
  }

LABEL_22:
  if ((v28 & 1) == 0)
  {
    CFRelease(DERData);
  }

  if (v30)
  {
    *a6 = v39;
  }

  else if (v39)
  {
    CFRelease(v39);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v30;
}

uint64_t sub_100021DF8(CFTypeRef cf, __CFString **a2)
{
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    SecError(-50, a2, @"accessible attribute %@ not a string", cf);
    return 0;
  }

  if (CFEqual(cf, kSecAttrAccessibleWhenUnlocked))
  {
    return 6;
  }

  if (CFEqual(cf, kSecAttrAccessibleAfterFirstUnlock))
  {
    return 7;
  }

  if (CFEqual(cf, kSecAttrAccessibleAlwaysPrivate))
  {
    return 8;
  }

  if (CFEqual(cf, kSecAttrAccessibleWhenUnlockedThisDeviceOnly))
  {
    return 9;
  }

  if (CFEqual(cf, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly))
  {
    return 10;
  }

  if (CFEqual(cf, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate))
  {
    return 11;
  }

  if (!CFEqual(cf, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly))
  {
    SecError(-50, a2, @"accessible attribute %@ unknown", cf);
    return 0;
  }

  return 12;
}

BOOL sub_100021F54(uint64_t a1, uint64_t a2, const __CFData *a3, CFDictionaryRef theDict, void *a5, const __CFDictionary *a6, __CFData **a7, int a8, char a9, __CFString **a10)
{
  if (dword_1000739E8 == a1 && a9 == 0)
  {
    Protection = SecAccessControlGetProtection();
    v23 = sub_100021DF8(Protection, a10);
    if (v23)
    {
      v24 = v23;
      v25 = objc_autoreleasePoolPush();
      if (a5)
      {
        v26 = [a5 mutableCopy];
      }

      else
      {
        v26 = +[NSMutableDictionary dictionary];
      }

      v27 = v26;
      [v26 addEntriesFromDictionary:a6];
      v28 = SecAccessControlCopyData();
      [v27 setObject:v28 forKeyedSubscript:@"SecAccessControl"];

      v29 = +[NSUUID UUID];
      v30 = [v29 UUIDString];

      v31 = [[SecDbKeychainItemV7 alloc] initWithSecretAttributes:theDict metadataAttributes:v27 tamperCheck:v30 keyclass:v24];
      v38 = 0;
      v32 = [(SecDbKeychainItemV7 *)v31 encryptedBlobWithKeybag:a1 accessControl:a2 acmContext:a3 error:&v38];
      v33 = v38;
      v34 = v33;
      v21 = v32 != 0;
      if (v32)
      {
        v35 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v32 length] + 4);
        *[v35 mutableBytes] = 8;
        memcpy([v35 mutableBytes] + 4, objc_msgSend(v32, "bytes"), objc_msgSend(v32, "length"));
        *a7 = v35;
      }

      else if (a10)
      {
        *a10 = v33;
      }

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((a9 & 1) == 0)
    {
      if (qword_100073820 != -1)
      {
        sub_100040828();
      }

      sec_action_perform(qword_100073828);
    }

    Count = CFDictionaryGetCount(theDict);
    v19 = CFDictionaryGetCount(a5);
    MutableCopy = CFDictionaryCreateMutableCopy(0, v19 + Count, a5);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100022264;
    context[3] = &unk_1000631D0;
    context[4] = MutableCopy;
    CFDictionaryApplyFunction(theDict, sub_100024448, context);
    v21 = sub_1000217B4(a1, a2, a3, MutableCopy, a6, a7, a8, a9, a10);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  return v21;
}

BOOL sub_10002226C(uint64_t a1, uint64_t a2, const void *a3, UInt8 **a4, const __CFData *a5, const __CFData *a6, uint64_t a7, const __CFData *a8, const void **a9, unsigned int *a10, char a11, _DWORD *a12, __CFString **a13)
{
  v114 = a3;
  v20 = a9;
  v21 = a10;
  Mutable = CFDataCreateMutable(0, 32);
  CFDataSetLength(Mutable, 32);
  if (a9)
  {
    *a9 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  v126 = 0;
  v127 = 0;
  v125 = 0;
  if (!a6)
  {
    v28 = SecError(-50, a13, @"ks_decrypt_data: invalid blob");
    a8 = 0;
    v118 = 0;
    v29 = 0;
    v117 = 0;
    goto LABEL_87;
  }

  v112 = a5;
  v115 = a4;
  v116 = a13;
  Length = CFDataGetLength(a6);
  BytePtr = CFDataGetBytePtr(a6);
  if (Length <= 3)
  {
    v28 = SecError(-26275, v116, @"ks_decrypt_data: Check for underflow (length)");
    a8 = 0;
    a6 = 0;
    v118 = 0;
    v29 = 0;
    v117 = 0;
LABEL_35:
    a4 = v115;
    goto LABEL_87;
  }

  v30 = BytePtr;
  v113 = a9;
  v111 = a10;
  v32 = (BytePtr + 4);
  v31 = *BytePtr;
  v33 = *BytePtr & 0x7FFFFFFF;
  if (*BytePtr < 0)
  {
    v34 = &unk_100045808;
  }

  else
  {
    v34 = 0;
  }

  if (v31 < 0)
  {
    v35 = 12;
  }

  else
  {
    v35 = 0;
  }

  v36 = Length - 4;
  v117 = *BytePtr & 0x7FFFFFFF;
  if (v33 >= 7)
  {
    v109 = objc_autoreleasePoolPush();
    [NSData dataWithBytes:v32 length:v36];
    v108 = v124 = 0;
    v37 = [[SecDbKeychainItemV7 alloc] initWithData:v108 decryptionKeybag:a1 error:&v124];
    v38 = v124;
    if (a12)
    {
      *a12 = [(SecDbKeychainItemV7 *)v37 keyclass];
    }

    v123 = v38;
    dataOutAvailable = v37;
    v39 = [(SecDbKeychainItemV7 *)v37 metadataAttributesWithError:&v123];
    v40 = v123;

    v41 = [v39 mutableCopy];
    v28 = 0;
    a6 = 0;
    v21 = v111;
    v20 = v113;
    v42 = 0;
    if (!v41)
    {
      a4 = v115;
      goto LABEL_82;
    }

    a4 = v115;
    if (v40)
    {
      goto LABEL_82;
    }

    v118 = [v41 objectForKeyedSubscript:@"SecAccessControl"];
    v42 = SecAccessControlCreateFromData();
    [v41 removeObjectForKey:@"SecAccessControl"];
    if (CFEqual(@"odel", v114))
    {
      v43 = objc_autoreleasePoolPush();
      v122 = 0;
      v44 = [dataOutAvailable deleteWithAcmContext:v112 accessControl:v42 callerAccessGroups:a8 keyDiversify:v117 != 7 error:&v122];
      v40 = v122;
      objc_autoreleasePoolPop(v43);
      if (v44)
      {
        a4 = v115;
LABEL_80:
        a6 = v41;
        v28 = 1;
        v20 = v113;
        goto LABEL_81;
      }

      v28 = 0;
      a6 = 0;
      v20 = v113;
    }

    else
    {
      if ((a11 & 1) == 0 && !SecAccessControlGetConstraints())
      {
        v40 = 0;
        goto LABEL_80;
      }

      v61 = objc_autoreleasePoolPush();
      v121 = 0;
      v62 = [dataOutAvailable secretAttributesWithAcmContext:v112 accessControl:v42 callerAccessGroups:a8 keyDiversify:v117 != 7 error:&v121];
      v63 = v121;
      v40 = v63;
      if (v62)
      {
        if (a11)
        {
          [v41 addEntriesFromDictionary:v62];
        }

        objc_autoreleasePoolPop(v61);
        a4 = v115;
        goto LABEL_80;
      }

      v78 = [v63 code];
      v20 = v113;
      if (v117 == 8 && v78 == -26275)
      {
        v79 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 8;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "ks_decrypt_data failed to decrypt secretdata: version %u mismatch with content", buf, 8u);
        }
      }

      objc_autoreleasePoolPop(v61);
      v28 = 0;
      a6 = 0;
    }

    a4 = v115;
LABEL_81:

LABEL_82:
    v118 = v42;
    if (v116 && !v28)
    {
      *v116 = v40;
    }

    objc_autoreleasePoolPop(v109);
    a8 = 0;
    goto LABEL_86;
  }

  if (v33 - 4 > 2)
  {
    if (v36 <= 3)
    {
      v45 = SecError(-26275, v116, @"ks_decrypt_data: Check for underflow (keyclass)");
      goto LABEL_31;
    }

    v48 = *v32;
    v49 = (*v32 & 0x1F) - 6;
    v21 = v111;
    if (v49 <= 6 && (v106 = **(&off_100063250 + v49)) != 0)
    {
      v105 = v48;
      LODWORD(dataOutAvailable) = v33 - 4;
      LODWORD(v109) = v31;
      v107 = v35;
      v108 = v34;
      v50 = SecAccessControlCreate();
      if (v50)
      {
        v118 = v50;
        if ((SecAccessControlSetProtection() & 1) == 0)
        {
          v28 = SecError(-26275, v116, @"ks_decrypt_data: SecAccessControlSetProtection failed");
          a8 = 0;
          a6 = 0;
          goto LABEL_32;
        }

        v57 = (v30 + 8);
        v47 = Length - 8;
        v20 = v113;
        a4 = v115;
        v29 = v118;
        goto LABEL_41;
      }

      v64 = SecError(-26275, v116, @"ks_decrypt_data: SecAccessControlCreate failed");
    }

    else
    {
      v64 = SecError(-26275, v116, @"ks_decrypt_data: invalid keyclass detected");
    }

    v28 = v64;
    a8 = 0;
    a6 = 0;
    v118 = 0;
    v29 = 0;
    goto LABEL_34;
  }

  if (v36 <= 3)
  {
    v45 = SecError(-26275, v116, @"ks_decrypt_data: Check for underflow (prot_length)");
LABEL_31:
    v28 = v45;
    a8 = 0;
    a6 = 0;
    v118 = 0;
LABEL_32:
    v29 = 0;
LABEL_33:
    v21 = v111;
LABEL_34:
    v20 = v113;
    goto LABEL_35;
  }

  v46 = *v32;
  v47 = Length - 8 - v46;
  if (Length - 8 < v46)
  {
    v45 = SecError(-26275, v116, @"ks_decrypt_data: Check for underflow (prot)");
    goto LABEL_31;
  }

  LODWORD(dataOutAvailable) = v33 - 4;
  LODWORD(v109) = v31;
  v107 = v35;
  v108 = v34;
  *buf = 0;
  v118 = &BytePtr[v46 + 8];
  der_decode_plist(0, buf, 0, (BytePtr + 8), v118, v25, v26, v27);
  v65 = *buf;
  v20 = v113;
  if (!*buf)
  {
    v28 = SecError(-26275, v116, @"ks_decrypt_data: invalid ACL");
    a8 = 0;
    a6 = 0;
    v118 = 0;
    v29 = 0;
    v21 = v111;
    goto LABEL_35;
  }

  v29 = SecAccessControlCreate();
  if (!v29)
  {
    a8 = 0;
    a6 = 0;
    v118 = 0;
    v28 = 1;
    goto LABEL_33;
  }

  v66 = SecAccessControlSetProtection();
  CFRelease(v65);
  if ((v66 & 1) == 0)
  {
    v118 = v29;
    SecError(-26275, v116, @"ks_decrypt_data: invalid ACL");
    a8 = 0;
    a6 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_33;
  }

  Protection = SecAccessControlGetProtection();
  a4 = v115;
  v105 = sub_100021DF8(Protection, v116);
  if (!v105)
  {
    v118 = v29;
    v28 = SecError(-26275, v116, @"ks_decrypt_data: invalid ACL");
    a8 = 0;
    a6 = 0;
    v29 = 0;
    v21 = v111;
    v20 = v113;
    goto LABEL_87;
  }

  v20 = v113;
  v57 = v118;
LABEL_41:
  v58 = dataOutAvailable;
  v120 = 0;
  v118 = v29;
  if (v117 - 2 >= 5)
  {
    v59 = 0;
    if (!v117)
    {
      v80 = v57;
      v69 = CFDataGetLength(Mutable) + 8;
      v72 = v47 - (v120 + v69);
      if (v47 >= v120 + v69)
      {
        v68 = v80;
LABEL_117:
        v21 = v111;
        if (v72 > 0xF)
        {
          if ((v72 & 0xF) == 0)
          {
            dataOutAvailable = v72;
            LODWORD(v28) = 1;
LABEL_125:
            v89 = a1;
            v106 = v69;
            v90 = v68;
            a8 = 0;
            if (!sub_100011628(v114, v89, a2, v105, v69, v68, 0, Mutable, 0, v116))
            {
              v28 = 0;
              a6 = 0;
              v29 = 0;
              goto LABEL_87;
            }

            goto LABEL_131;
          }

          v88 = SecError(-26275, v116, @"ks_decrypt_data: invalid length on CBC data");
        }

        else
        {
          v88 = SecError(-26275, v116, @"ks_decrypt_data: Check for underflow (CBC check)");
        }

        v28 = v88;
        a8 = 0;
LABEL_122:
        a6 = 0;
LABEL_86:
        v29 = 0;
        goto LABEL_87;
      }

LABEL_75:
      v60 = SecError(-26275, v116, @"ks_decrypt_data: Check for underflow (wrapped_key/taglen)");
      goto LABEL_76;
    }
  }

  else
  {
    v59 = 16;
    v120 = 16;
  }

  if (v47 <= 3)
  {
    v60 = SecError(-26275, v116, @"ks_decrypt_data: Check for underflow (wrapped_key_size)");
LABEL_76:
    v28 = v60;
    a8 = 0;
    a6 = 0;
    v29 = 0;
LABEL_77:
    v21 = v111;
    goto LABEL_87;
  }

  v70 = *v57;
  v68 = v57 + 4;
  v69 = v70;
  v71 = v59 + v70;
  v72 = v47 - 4 - v71;
  if (v47 - 4 < v71)
  {
    goto LABEL_75;
  }

  if (v117 <= 1)
  {
    goto LABEL_117;
  }

  dataOutAvailable = (v47 - 4 - v71);
  if (v58 > 2)
  {
    LODWORD(v28) = 0;
    v21 = v111;
    goto LABEL_125;
  }

  if (a8)
  {
    v73 = a8;
    v74 = v116;
    v75 = v68;
    v76 = v69;
    v77 = sub_1000231A4(v73, v116, v51, v52, v53, v54, v55, v56);
    v69 = v76;
    v68 = v75;
    a8 = v77;
    v21 = v111;
    if (!v77)
    {
      goto LABEL_168;
    }
  }

  else
  {
    v21 = v111;
    v74 = v116;
  }

  v91 = a1;
  v90 = v68;
  v106 = v69;
  if (!sub_10002323C(v91, a7, v68, v69, v29, v117, &v127, &v125, &v126, v74))
  {
    goto LABEL_168;
  }

  if (!CFEqual(v114, @"od"))
  {
    if (!CFEqual(v114, @"odel"))
    {
      v28 = SecError(-26276, v116, @"ks_decrypt_data: invalid operation");
      goto LABEL_122;
    }

    if (sub_10003E440(v125, v126, v112, a8, v29, v116))
    {
      a6 = v127;
      if (v127)
      {
        CFRetain(v127);
      }

      v29 = 0;
      v28 = 1;
      goto LABEL_87;
    }

LABEL_168:
    a6 = 0;
    v29 = 0;
LABEL_169:
    v28 = 0;
    goto LABEL_87;
  }

  v28 = 0;
  if ((sub_100012230(v125, v126, Mutable, v112, a8, v29, v116) & 1) == 0)
  {
    goto LABEL_122;
  }

LABEL_131:
  if ((v109 & 0x80000000) != 0)
  {
    v114 = (v90 - CFDataGetBytePtr(a6));
  }

  else
  {
    v114 = 0;
  }

  v92 = v117;
  v93 = CFDataCreateMutable(0, dataOutAvailable);
  v29 = v93;
  if (!v93)
  {
    v28 = SecError(-26275, v116, @"ks_decrypt_data: failed to allocate data for plain text");
    a6 = 0;
    goto LABEL_77;
  }

  v94 = &v90[v106];
  CFDataSetLength(v93, dataOutAvailable);
  if (v120)
  {
    v112 = v104;
    __chkstk_darwin();
    v96 = &v104[-((v95 + 15) & 0xFFFFFFFFFFFFFFF0)];
    memset(v96, 170, v95);
    CFDataGetBytePtr(Mutable);
    CFDataGetLength(Mutable);
    CFDataGetMutableBytePtr(v29);
    v97 = CCCryptorGCM();
    if (v97)
    {
      v28 = SecError(-26275, v116, @"ks_decrypt_data: CCCryptorGCM failed: %d", v97);
      v21 = v111;
      v20 = v113;
LABEL_152:
      a4 = v115;
      a6 = 0;
      goto LABEL_87;
    }

    v21 = v111;
    v20 = v113;
    if (v120 != 16)
    {
      v102 = SecError(-26276, v116, @"ks_decrypt_data: CCCryptorGCM expected: 16 got: %ld byte tag", v120);
      goto LABEL_151;
    }

    if (timingsafe_bcmp(v96, &dataOutAvailable[v94], 0x10uLL))
    {
      v102 = SecError(-26275, v116, @"ks_decrypt_data: CCCryptorGCM computed tag not same as tag in blob");
LABEL_151:
      v28 = v102;
      goto LABEL_152;
    }

    a4 = v115;
    v92 = v117;
  }

  else
  {
    *buf = 0xAAAAAAAAAAAAAAAALL;
    v98 = CFDataGetBytePtr(Mutable);
    v99 = CFDataGetLength(Mutable);
    dataOut = CFDataGetMutableBytePtr(v29);
    v101 = CCCrypt(1u, 0, 1u, v98, v99, 0, v94, dataOutAvailable, dataOut, dataOutAvailable, buf);
    v21 = v111;
    if (v101)
    {
      v28 = SecError(-26275, v116, @"ks_decrypt_data: CCCrypt failed: %d", v101);
      a6 = 0;
      goto LABEL_35;
    }

    CFDataSetLength(v29, *buf);
    a4 = v115;
  }

  if (v28)
  {
    a6 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(a6, @"v_Data", v29);
  }

  else
  {
    if (v92 == 2)
    {
      v103 = sub_100023560(v29, v116);
    }

    else
    {
      v103 = sub_1000235AC(v29, v116);
    }

    a6 = v103;
  }

  if (!a6)
  {
    sub_10004083C(v116, v117);
    goto LABEL_169;
  }

  v28 = 1;
  if (v117 >= 4 && v127)
  {
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_1000236CC;
    context[3] = &unk_1000631D0;
    context[4] = a6;
    CFDictionaryApplyFunction(v127, sub_100024448, context);
  }

LABEL_87:
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v82 = CFDataGetLength(Mutable);
  v83 = CFDataGetLength(Mutable);
  memset_s(MutableBytePtr, v82, 0, v83);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (a4)
  {
    *a4 = v118;
  }

  else if (v118)
  {
    CFRelease(v118);
  }

  if (v28)
  {
    if (v20)
    {
      v84 = *v20;
      if (*v20 != a6)
      {
        if (!a6 || (CFRetain(a6), (v84 = *v20) != 0))
        {
          CFRelease(v84);
        }

        *v20 = a6;
      }
    }

    if (v21)
    {
      *v21 = v117;
    }
  }

  if (a6)
  {
    CFRelease(a6);
  }

  v85 = v127;
  if (v127)
  {
    v127 = 0;
    CFRelease(v85);
  }

  if (a8)
  {
    CFRelease(a8);
  }

  v86 = v126;
  if (v126)
  {
    v126 = 0;
    CFRelease(v86);
  }

  if (v125)
  {
    aks_ref_key_free(&v125);
  }

  return v28;
}

__CFData *sub_1000231A4(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = der_sizeof_plist(a1, a2, a3, a4, a5, a6, a7, a8);
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  CFDataSetLength(Mutable, v10);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v13 = CFDataGetMutableBytePtr(Mutable);
  if (!der_encode_plist(a1, a2, MutableBytePtr, &v13[v10], v14, v15, v16, v17))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t sub_10002323C(uint64_t a1, uint64_t a2, const UInt8 *a3, CFIndex a4, uint64_t a5, uint64_t a6, __CFDictionary **a7, void *a8, CFTypeRef *a9, __CFString **a10)
{
  v12 = a6;
  v36 = 0;
  v37 = 0;
  cf = 0;
  v35 = 0;
  der_decode_plist(0, &v37, 0, a3, &a3[a4], a6, a7, a8);
  if (!v37)
  {
    MutableCopy = 0;
    SecError(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: failed to decode 'blob data'");
LABEL_48:
    v30 = 0;
    goto LABEL_31;
  }

  if ((sub_100011CAC(v37, &cf, &v35) & 1) == 0)
  {
    cf = CFDataCreate(kCFAllocatorDefault, a3, a4);
    v35 = CFRetain(cf);
  }

  if (!cf)
  {
    MutableCopy = 0;
    SecError(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: failed to decode 'encrypted data'");
    goto LABEL_48;
  }

  if (!v35)
  {
    MutableCopy = 0;
    SecError(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: failed to decode 'key data'");
    goto LABEL_48;
  }

  v33 = 0;
  v17 = sub_100012490(a1, v35, &v36, &v33, a10);
  if (!v17)
  {
    v30 = 0;
    MutableCopy = 0;
    goto LABEL_31;
  }

  theDict = 0;
  der_decode_plist(0, &theDict, 0, v17, v17 + v33, v18, v19, v20);
  if (!theDict)
  {
    MutableCopy = 0;
    SecError(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: failed to decode 'encrypted data dictionary'");
    goto LABEL_48;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v22 = *(a2 + 16);
  if (v22)
  {
    v23 = (a2 + 24);
    do
    {
      if ((*(v22 + 17) & 0x20) != 0)
      {
        CFDictionaryRemoveValue(MutableCopy, *v22);
        Value = CFDictionaryGetValue(theDict, *v22);
        if (Value)
        {
          v25 = Value;
          Mutable = *a7;
          if (!*a7)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            *a7 = Mutable;
          }

          CFDictionaryAddValue(Mutable, *v22, v25);
        }
      }

      v27 = *v23++;
      v22 = v27;
    }

    while (v27);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!MutableCopy)
  {
    goto LABEL_26;
  }

  if (v12 == 4)
  {
    SecAccessControlSetConstraints();
    goto LABEL_24;
  }

  v28 = CFDictionaryGetValue(MutableCopy, @"acl");
  if (!v28 || (v29 = CFGetTypeID(v28), v29 != CFDictionaryGetTypeID()))
  {
    SecError(-26275, a10, @"kc_attribs_key_encrypted_data_from_blob: acl missing");
    goto LABEL_48;
  }

  SecAccessControlSetConstraints();
  if (v12 <= 5)
  {
LABEL_24:
    if (!SecAccessControlGetConstraint())
    {
      SecAccessControlAddConstraintForOperation();
    }
  }

LABEL_26:
  if (a9)
  {
    *a9 = CFRetain(cf);
  }

  if (a8)
  {
    *a8 = v36;
    v36 = 0;
    v30 = 1;
    goto LABEL_33;
  }

  v30 = 1;
LABEL_31:
  if (v36)
  {
    aks_ref_key_free(&v36);
  }

LABEL_33:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v30;
}

CFTypeRef sub_100023560(CFDataRef data, CFErrorRef *error)
{
  v3 = CFPropertyListCreateWithData(0, data, 1uLL, 0, error);

  return sub_10002452C(v3, error);
}

CFTypeRef sub_1000235AC(const __CFData *a1, CFTypeRef *a2)
{
  cf = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = &BytePtr[Length];
  v10 = der_decode_plist(0, &cf, a2, BytePtr, &BytePtr[Length], v7, v8, v9);
  if (a2 && !v10)
  {
    Domain = CFErrorGetDomain(*a2);
    if (Domain && sSecDERErrorDomain[0])
    {
      if (!CFEqual(Domain, sSecDERErrorDomain[0]))
      {
        return sub_10002452C(cf, a2);
      }
    }

    else if (Domain != sSecDERErrorDomain[0])
    {
      return sub_10002452C(cf, a2);
    }

    if (CFErrorGetCode(*a2) != -1)
    {
      return sub_10002452C(cf, a2);
    }

    v18 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v18);
    }

    v10 = sub_1000245C0(&cf, a2, BytePtr, v6, v14, v15, v16, v17);
  }

  if (v10)
  {
    if (v10 != v6)
    {
      SecCFCreateErrorWithFormat(-26275, kCFErrorDomainOSStatus, 0, a2, 0, @"trailing garbage at end of decrypted item", v11, v12, v21);
      v19 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v19);
      }
    }
  }

  return sub_10002452C(cf, a2);
}

uint64_t sub_1000236D4(uint64_t a1, const __CFAllocator *a2, CFDateRef *a3, CFErrorRef *a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  Domain = CFErrorGetDomain(*a4);
  if (Domain)
  {
    v11 = sSecDERErrorDomain[0] == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if (CFEqual(Domain, sSecDERErrorDomain[0]))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (Domain != sSecDERErrorDomain[0])
  {
    return 0;
  }

LABEL_10:
  if (CFErrorGetCode(*a4) != -1)
  {
    return 0;
  }

  at = 0.0;
  v14 = CFCalendarCreateWithIdentifier(a2, kCFGregorianCalendar);
  v15 = CFTimeZoneCreateWithTimeIntervalFromGMT(a2, 0.0);
  CFCalendarSetTimeZone(v14, v15);
  CFCalendarComposeAbsoluteTime(v14, &at, "yMd", 2001, 3, 24);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = CFDateCreate(a2, at);
  *a3 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = *a4;
  if (*a4)
  {
    *a4 = 0;
    CFRelease(v17);
  }

  return a6;
}

uint64_t sub_100023808(const __CFData *a1, uint64_t a2, const __CFArray *a3, const void **a4, void *a5, _DWORD *a6, __CFString **a7)
{
  cf = 0;
  v26 = 0;
  v14 = (*(a2 + 48) & 5) != 0 || *(a2 + 208) || *(a2 + 216) || *(a2 + 232);
  v15 = objc_autoreleasePoolPush();
  v16 = sub_10002226C(*(a2 + 120), 0, @"od", &cf, *(a2 + 144), a1, *a2, *(a2 + 184), a4, &v26, v14, a6, a7);
  objc_autoreleasePoolPop(v15);
  if (!v16)
  {
    goto LABEL_9;
  }

  if (v26 <= 1)
  {
    SecError(-26275, a7, @"version is unexpected: %d", v26);
LABEL_9:
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v18 = SecAccessControlCopyData();
  if (sub_100018A9C(*a4, a3))
  {
    if (v26 >= 4)
    {
      CFDictionarySetValue(*a4, kSecAttrAccessControl, v18);
    }

    v17 = 1;
  }

  else
  {
    v22 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      Value = CFDictionaryGetValue(*a4, kSecAttrAccessGroup);
      *buf = 138412546;
      v29 = Value;
      v30 = 2112;
      v31 = a3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "item's accessGroup '%@' not in %@", buf, 0x16u);
    }

    v24 = CFDictionaryGetValue(*a4, kSecAttrAccessGroup);
    SecError(-34018, a7, @"item's access group '%@' not in %@", v24, a3);
    v25 = *a4;
    if (*a4)
    {
      *a4 = 0;
      CFRelease(v25);
    }

    v17 = 0;
  }

LABEL_10:
  v19 = cf;
  if (a5)
  {
    if (cf)
    {
      CFRetain(cf);
      v20 = cf;
    }

    else
    {
      v20 = 0;
    }

    *a5 = v19;
    v19 = v20;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v17;
}