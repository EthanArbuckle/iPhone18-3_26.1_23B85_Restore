@interface DIHelpers
+ (BOOL)executeWithPath:(id)a3 arguments:(id)a4 error:(id *)a5;
+ (id)copyDevicePathWithStatfs:(statfs *)a3;
+ (id)stringWithImageFormat:(int64_t)a3;
+ (unint64_t)numBlocksWithSizeStr:(id)a3 blockSize:(unsigned int)a4;
+ (unsigned)getBlockSizeFromStr:(id)a3 error:(id *)a4;
@end

@implementation DIHelpers

+ (id)stringWithImageFormat:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return off_10021C1F8[a3 - 1];
  }
}

+ (unint64_t)numBlocksWithSizeStr:(id)a3 blockSize:(unsigned int)a4
{
  v5 = a3;
  v17 = 0;
  v6 = [v5 lowercaseString];
  v7 = [v6 characterAtIndex:{objc_msgSend(v5, "length") - 1}];

  if (v7 <= 106)
  {
    if (v7 == 98)
    {
      v8 = 1;
      goto LABEL_12;
    }

    if (v7 == 103)
    {
      v8 = 0x40000000;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v7)
    {
      case 'k':
        v8 = 1024;
        goto LABEL_12;
      case 'm':
        v8 = 0x100000;
        goto LABEL_12;
      case 't':
        v8 = 0x10000000000;
LABEL_12:
        v9 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

        v5 = v9;
        goto LABEL_13;
    }
  }

  v15 = +[NSCharacterSet decimalDigitCharacterSet];
  v16 = [v15 characterIsMember:v7];

  if (!v16)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v8 = a4;
LABEL_13:
  v10 = [v5 UTF8String];
  v11 = strtod(v10, &v17);
  v12 = (v17 - v10);
  v13 = 0;
  if (v12 == [v5 length] && v11 > 0.0)
  {
    v13 = (vcvtpd_u64_f64(v11 * v8) + a4 - 1) / a4;
  }

LABEL_16:

  return v13;
}

+ (BOOL)executeWithPath:(id)a3 arguments:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [NSURL fileURLWithPath:v7];
  v10 = [NSTask launchedTaskWithExecutableURL:v9 arguments:v8 error:a5 terminationHandler:0];

  if (v10)
  {
    [v10 waitUntilExit];
    if ([v10 terminationStatus])
    {
      v11 = [v7 lastPathComponent];
      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ failed with error code %d", v11, [v10 terminationStatus]);
      v13 = [DIError failWithEnumValue:154 verboseInfo:v12 error:a5];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)copyDevicePathWithStatfs:(statfs *)a3
{
  if (!a3 || _FSGetLocationFromStatfs(a3, v7, 0x400uLL))
  {
    return 0;
  }

  v4 = [[NSString alloc] initWithFormat:@"/dev/%s", v7];
  if ([v4 hasPrefix:@"/dev/disk"])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = v5;

  return v3;
}

+ (unsigned)getBlockSizeFromStr:(id)a3 error:(id *)a4
{
  result = [DIHelpers numBlocksWithSizeStr:a3 blockSize:1];
  if (result != 512 && result != 2048 && result != 4096)
  {
    return [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid value for argument 'block-size'" error:a4];
  }

  return result;
}

@end