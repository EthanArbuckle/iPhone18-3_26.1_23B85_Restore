@interface NVMEiBootUpdater
+ (id)IOMatchingPropertyTable;
- (BOOL)_copyIBICFromPath:(char *)a3 withOptions:(__CFDictionary *)a4 intoArray:(const __CFArray *)a5 withError:(__CFError *)a6;
- (BOOL)generateFirmwareImagesWithCallback:(ramrod_update_callbacks *)a3 context:(firmware_update_context *)a4;
- (BOOL)updateBootFirmwareWithCallback:(ramrod_update_callbacks *)a3 context:(firmware_update_context *)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation NVMEiBootUpdater

+ (id)IOMatchingPropertyTable
{
  v3 = @"IOProviderClass";
  v4 = @"AppleEmbeddedNVMeController";
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NVMEiBootUpdater;
  [(MSUBootFirmwareUpdater *)&v3 dealloc];
}

- (BOOL)generateFirmwareImagesWithCallback:(ramrod_update_callbacks *)a3 context:(firmware_update_context *)a4
{
  v5.receiver = self;
  v5.super_class = NVMEiBootUpdater;
  return [(MSUBootFirmwareUpdater *)&v5 generateFirmwareImagesWithCallback:a3 context:a4];
}

- (BOOL)updateBootFirmwareWithCallback:(ramrod_update_callbacks *)a3 context:(firmware_update_context *)a4 error:(id *)a5
{
  v8 = [(MSUBootFirmwareUpdater *)self llbData];
  v115 = __NSArray0__;
  v114 = 0;
  v113 = 0;
  if (ramrod_hardware_partition_supports_bics() && ![(NVMEiBootUpdater *)self _copyIBICFromPath:[(NSString *)[(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] devicePath] UTF8String] withOptions:a4->var1 intoArray:&v115 withError:&v113])
  {
    iBU_LOG_real(@"Copy iBIC failed.", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v9, v10, v11, v12, v13, v14, v101);
    if (!a5)
    {
      return 0;
    }

    v42 = MSUBootFirmwareError(1, v113, @"Copy iBIC failed.", v43, v44, v45, v46, v47, v104);
    goto LABEL_10;
  }

  v15 = [(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] isAvailable];
  v16 = [(NVMEiBootUpdater *)self writer];
  if ((v15 & 1) == 0)
  {
    iBU_LOG_real(@"Writer %@ was unavailable at write-time", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v17, v18, v19, v20, v21, v22, v16);
    if (!a5)
    {
      return 0;
    }

    v103 = [(NVMEiBootUpdater *)self writer];
    v42 = MSUBootFirmwareError(6, 0, @"Writer %@ was unavailable at write-time", v37, v38, v39, v40, v41, v103);
LABEL_10:
    v48 = v42;
    result = 0;
    *a5 = v48;
    return result;
  }

  v23 = [(DevNodeWriter *)v16 devicePath];
  iBU_LOG_real(@"Writing lldb data to dev node %@", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v24, v25, v26, v27, v28, v29, v23);
  if ([(MSUBootFirmwareUpdater *)self _encodeAndWriteFirmware:v8 toWriter:[(NVMEiBootUpdater *)self writer] withError:a5])
  {
    v36 = @"Failed to write lldb data to dev node.";
LABEL_31:
    iBU_LOG_real(v36, "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v30, v31, v32, v33, v34, v35, v102);
    return 0;
  }

  v50 = [(NSArray *)[(MSUBootFirmwareUpdater *)self firmwareImages] count];
  [(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] devicePath];
  iBU_LOG_real(@"Writing %lu firmware images to dev node %@", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v51, v52, v53, v54, v55, v56, v50);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v57 = [(MSUBootFirmwareUpdater *)self firmwareImages];
  v58 = [(NSArray *)v57 countByEnumeratingWithState:&v109 objects:v117 count:16];
  if (v58)
  {
    v65 = v58;
    v66 = *v110;
    while (2)
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v110 != v66)
        {
          objc_enumerationMutation(v57);
        }

        if ([(MSUBootFirmwareUpdater *)self _encodeAndWriteFirmware:*(*(&v109 + 1) + 8 * i) toWriter:[(NVMEiBootUpdater *)self writer] withError:a5])
        {
          v36 = @"Failed to write firmware data to dev node.";
          goto LABEL_31;
        }
      }

      v65 = [(NSArray *)v57 countByEnumeratingWithState:&v109 objects:v117 count:16];
      if (v65)
      {
        continue;
      }

      break;
    }
  }

  if (v115)
  {
    v68 = [v115 count];
    [(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] devicePath];
    iBU_LOG_real(@"Writing %d iBIC firmware image segments to dev node %@", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v69, v70, v71, v72, v73, v74, v68);
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v75 = v115;
    v76 = [v115 countByEnumeratingWithState:&v105 objects:v116 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v106;
      while (2)
      {
        for (j = 0; j != v77; j = j + 1)
        {
          if (*v106 != v78)
          {
            objc_enumerationMutation(v75);
          }

          if ([(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] writeData:*(*(&v105 + 1) + 8 * j) withError:a5])
          {
            v36 = @"Failed to write ibic data to dev node.";
            goto LABEL_31;
          }
        }

        v77 = [v75 countByEnumeratingWithState:&v105 objects:v116 count:16];
        if (v77)
        {
          continue;
        }

        break;
      }
    }
  }

  iBU_LOG_real(@"Writing end_of_contents_bytes to dev node.", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v59, v60, v61, v62, v63, v64, v102);
  if ([(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] writeData:[NSData withError:"dataWithBytes:length:" dataWithBytes:2 length:?], a5])
  {
    v36 = @"Failed to write end_of_contents bytes.";
    goto LABEL_31;
  }

  v80 = [(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] numberOfBytesRemainingInBlock];
  if (v80)
  {
    v87 = v80;
    iBU_LOG_real(@"There are %lu bytes remaining in the boot block. Padding with zeroes.", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v81, v82, v83, v84, v85, v86, v80);
    if ([(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] writeData:[NSMutableData withError:"dataWithLength:" dataWithLength:v87], a5])
    {
      v36 = @"Failed to pad zeroes to the end of the block.";
      goto LABEL_31;
    }
  }

  if (![(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] finished])
  {
    iBU_LOG_real(@"Failed to clean up writer.", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v88, v89, v90, v91, v92, v93, v102);
  }

  v94 = IORegistryEntrySetCFProperty([(MSUBootFirmwareUpdater *)self matchedService], @"fw-write-done", kCFBooleanTrue);
  if (!v94)
  {
    iBU_LOG_real(@"Successfully updated iBoot firmware images", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v95, v96, v97, v98, v99, v100, v102);
    return 1;
  }

  iBU_LOG_real(@"Failed to set 'fw-write-done' property on dev node. Kernel error: %d", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v95, v96, v97, v98, v99, v100, v94);
  return 0;
}

- (BOOL)_copyIBICFromPath:(char *)a3 withOptions:(__CFDictionary *)a4 intoArray:(const __CFArray *)a5 withError:(__CFError *)a6
{
  v81 = -1;
  theData = 0;
  v80 = -1;
  if (!a6)
  {
    [(NVMEiBootUpdater *)self _copyIBICFromPath:a2 withOptions:a3 intoArray:a4 withError:a5, 0, v6, v7, v76];
LABEL_33:
    v28 = 0;
    Mutable = 0;
    goto LABEL_40;
  }

  if (!a5)
  {
    [(NVMEiBootUpdater *)a6 _copyIBICFromPath:a2 withOptions:a3 intoArray:a4 withError:0, a6, v6, v7];
    goto LABEL_33;
  }

  v10 = a3;
  if (!a3)
  {
    [(NVMEiBootUpdater *)a6 _copyIBICFromPath:a2 withOptions:0 intoArray:a4 withError:a5, a6, v6, v7];
    v28 = 0;
    Mutable = 0;
    URLFromString = 0;
    v47 = 0;
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    [(NVMEiBootUpdater *)a6 _copyIBICFromPath:v12 withOptions:v13 intoArray:v14 withError:v15, v16, v17, v18];
    v28 = 0;
    goto LABEL_40;
  }

  v20 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v28 = v20;
  if (!v20)
  {
    [(NVMEiBootUpdater *)a6 _copyIBICFromPath:v21 withOptions:v22 intoArray:v23 withError:v24, v25, v26, v27];
    goto LABEL_40;
  }

  CFArrayAppendValue(v20, @"ibic");
  if (a4)
  {
    Value = CFDictionaryGetValue(a4, @"iBICRequired");
    v30 = CFDictionaryGetValue(a4, @"iBICAdditionalTag");
    if (!v30)
    {
      goto LABEL_11;
    }

    v31 = v30;
    v32 = CFGetTypeID(v30);
    if (v32 == CFStringGetTypeID())
    {
      CFArrayAppendValue(v28, v31);
      goto LABEL_11;
    }

    [(NVMEiBootUpdater *)a6 _copyIBICFromPath:v33 withOptions:v34 intoArray:v35 withError:v36, v37, v38, v39];
LABEL_40:
    URLFromString = 0;
    v47 = 0;
    goto LABEL_41;
  }

  Value = 0;
LABEL_11:
  v47 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
  if (!v47)
  {
    [(NVMEiBootUpdater *)a6 _copyIBICFromPath:v40 withOptions:v41 intoArray:v42 withError:v43, v44, v45, v46];
    URLFromString = 0;
LABEL_41:
    LOBYTE(v10) = 0;
    goto LABEL_29;
  }

  URLFromString = AMSupportCreateURLFromString(kCFAllocatorDefault, v47, v41, v42, v43, v44, v45, v46);
  if (!URLFromString)
  {
    [(NVMEiBootUpdater *)a6 _copyIBICFromPath:v48 withOptions:v49 intoArray:v50 withError:v51, v52, v53, v54];
    goto LABEL_41;
  }

  v78 = a5;
  v79 = v47;
  v77 = a6;
  if (CFArrayGetCount(v28) < 1)
  {
LABEL_27:
    *v78 = CFRetain(Mutable);
    LOBYTE(v10) = 1;
  }

  else
  {
    v56 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v28, v56);
      CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
      v67 = AMRestorePartitionFWCopyTagData(URLFromString, ValueAtIndex, 0, &v81, &theData, &v80, v59, v60);
      if (Value)
      {
        v68 = CFGetTypeID(Value);
        if (v68 == CFBooleanGetTypeID() && CFBooleanGetValue(Value) == 1 && v67)
        {
          break;
        }
      }

      if (v67 == 8)
      {
        iBU_LOG_real(@"FW tag %s missing, but this is not fatal.\n", "[NVMEiBootUpdater _copyIBICFromPath:withOptions:intoArray:withError:]", v61, v62, v63, v64, v65, v66, CStringPtr);
      }

      else if (v67)
      {
        iBU_LOG_real(@"Unexpected error %d scanning for FW tag %s - corrupt FW partition?\n", "[NVMEiBootUpdater _copyIBICFromPath:withOptions:intoArray:withError:]", v61, v62, v63, v64, v65, v66, v67);
      }

      else
      {
        CFDataGetLength(theData);
        iBU_LOG_real(@"Found FW tag %s of %lu length.\n", "[NVMEiBootUpdater _copyIBICFromPath:withOptions:intoArray:withError:]", v69, v70, v71, v72, v73, v74, CStringPtr);
        CFArrayAppendValue(Mutable, theData);
      }

      if (theData)
      {
        CFRelease(theData);
        theData = 0;
      }

      if (CFArrayGetCount(v28) <= ++v56)
      {
        goto LABEL_27;
      }
    }

    [(NVMEiBootUpdater *)v77 _copyIBICFromPath:v67 withOptions:v61 intoArray:v62 withError:v63, v64, v65, v66];
    LOBYTE(v10) = 0;
  }

  v47 = v79;
LABEL_29:
  AMSupportSafeRelease(v47);
  AMSupportSafeRelease(URLFromString);
  AMSupportSafeRelease(v28);
  AMSupportSafeRelease(theData);
  AMSupportSafeRelease(Mutable);
  return v10;
}

@end