@interface Ace3SoCRestoreInfoFirmwareCopierBackDeploy
- (Ace3SoCRestoreInfoFirmwareCopierBackDeploy)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)a3;
- (BOOL)parseOptions:(id)a3;
- (id)readFirmwareFileDataWithError:(id *)a3;
@end

@implementation Ace3SoCRestoreInfoFirmwareCopierBackDeploy

- (Ace3SoCRestoreInfoFirmwareCopierBackDeploy)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = Ace3SoCRestoreInfoFirmwareCopierBackDeploy;
  v9 = [(Ace3SoCRestoreInfoHelperBackDeploy *)&v13 initWithOptions:v8 logFunction:a4 logContext:a5];
  v10 = v9;
  if (v9 && ([(Ace3SoCRestoreInfoHelperBackDeploy *)v9 log:@"%s: input options: %@", "[Ace3SoCRestoreInfoFirmwareCopierBackDeploy initWithOptions:logFunction:logContext:]", v8], ![(Ace3SoCRestoreInfoFirmwareCopierBackDeploy *)v10 parseOptions:v8]))
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)parseOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"BuildIdentity"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"DeviceInfo"];
    if (!v6)
    {
      [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Warning: Could not find device info dictionary"];
    }

    if ([v5 count])
    {
      v7 = [(Ace3SoCRestoreInfoFirmwareCopierBackDeploy *)self firmwareKeyFromBuildIdentityDict:v5 deviceInfo:v6];
      if (!v7)
      {
        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Could not find firmware key in build identity dictionary"];
LABEL_26:
        v16 = 0;
        goto LABEL_27;
      }

      v8 = v7;
      v9 = [v5 objectForKeyedSubscript:v7];
      v10 = [v9 objectForKeyedSubscript:@"Info"];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 objectForKeyedSubscript:@"Path"];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 copy];
          v15 = *(&self->_destBundlePathURL + 1);
          *(&self->_destBundlePathURL + 1) = v14;

LABEL_11:
          v17 = [v4 objectForKeyedSubscript:@"FirmwareData"];
          v18 = *(&self->_firmwareBundleURL + 1);
          *(&self->_firmwareBundleURL + 1) = v17;

          v19 = *(&self->_firmwareBundleURL + 1);
          if (v19)
          {
            [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Detected firmware override"];
            v19 = *(&self->_firmwareBundleURL + 1);
          }

          if (!v19 && v8)
          {
            v20 = [v4 objectForKeyedSubscript:@"BundleDataDict"];
            v21 = v20;
            if (v20)
            {
              v22 = [v20 objectForKeyedSubscript:v8];
              v23 = *(&self->_firmwareOverrideData + 1);
              *(&self->_firmwareOverrideData + 1) = v22;

              [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Attempt to use '%@' firmware from BundleDataDict: %@", v8, *(&self->_firmwareOverrideData + 1)];
            }

            v19 = *(&self->_firmwareBundleURL + 1);
          }

          if (v19 || *(&self->_firmwareOverrideData + 1))
          {
            goto LABEL_20;
          }

          if (*(&self->_destBundlePathURL + 1))
          {
            v27 = [v4 objectForKeyedSubscript:@"BundlePath"];
            if (v27)
            {
              v28 = v27;
              v29 = [v27 URLByAppendingPathComponent:*(&self->_destBundlePathURL + 1)];
              v30 = *(&self->_firmwarePathSuffix + 1);
              *(&self->_firmwarePathSuffix + 1) = v29;

LABEL_20:
              v24 = [v4 objectForKeyedSubscript:@"DestBundlePath"];
              v25 = *(&self->super._verbose + 1);
              *(&self->super._verbose + 1) = v24;

              v16 = 1;
LABEL_27:

              goto LABEL_28;
            }

            v31 = @"Could not find bundle path";
          }

          else
          {
            v31 = @"Firmware override must be specified if build identity dictionary is empty";
          }

          [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:v31];
          goto LABEL_25;
        }

        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Could not find firmware path"];
      }

      else
      {
        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Could not find firmware info dictionary"];
      }

LABEL_25:
      goto LABEL_26;
    }

    [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Detected empty build identity dictionary"];
    v8 = 0;
    goto LABEL_11;
  }

  [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Could not find build identity dictionary"];
  v16 = 0;
LABEL_28:

  return v16;
}

- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)a3
{
  v4 = *(&self->super._verbose + 1);
  if (v4 && *(&self->_destBundlePathURL + 1))
  {
    v6 = [v4 path];
    v7 = [NSString stringWithFormat:@"%@/%@", v6, *(&self->_destBundlePathURL + 1)];

    v8 = [NSURL fileURLWithPath:v7];
    v9 = +[NSFileManager defaultManager];
    v10 = [v8 URLByDeletingLastPathComponent];
    v11 = +[NSFileManager defaultManager];
    v12 = [v10 path];
    v34 = 0;
    v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v34];
    v14 = v34;

    if ((v13 & 1) == 0 && ([v14 isFileExistsError] & 1) == 0)
    {
      v23 = [v10 path];
      [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to create directory at '%@' (%@)", v23, v14];

      if (!a3)
      {
        goto LABEL_21;
      }

      v24 = v14;
      v21 = 0;
      *a3 = v14;
      goto LABEL_22;
    }

    v15 = [v8 path];
    v16 = [v9 fileExistsAtPath:v15];

    if (v16)
    {
      v33 = 0;
      v17 = [v9 removeItemAtURL:v8 error:&v33];
      v18 = v33;
      v19 = v18;
      if ((v17 & 1) == 0)
      {
        v28 = [v8 path];
        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to remove file at '%@' (%@)", v28, v19];
        goto LABEL_18;
      }
    }

    v20 = *(&self->_firmwareBundleURL + 1);
    if (v20)
    {
      v21 = 1;
      if (([v20 writeToURL:v8 atomically:1] & 1) == 0)
      {
        v22 = [v8 path];
        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to write firmware file data to '%@'", v22];

LABEL_21:
        v21 = 0;
      }

LABEL_22:

      return v21;
    }

    v25 = +[NSFileManager defaultManager];
    v26 = *(&self->_firmwarePathSuffix + 1);
    v32 = 0;
    v27 = [v25 copyItemAtURL:v26 toURL:v8 error:&v32];
    v19 = v32;

    if (v27)
    {

      v21 = 1;
      goto LABEL_22;
    }

    v28 = [*(&self->_firmwarePathSuffix + 1) path];
    v29 = [v8 path];
    [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to copy firmware from '%@' to '%@' (%@)", v28, v29, v19];

LABEL_18:
    if (a3)
    {
      v30 = v19;
      *a3 = v19;
    }

    goto LABEL_21;
  }

  [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Not copying firmware to destination bundle"];
  return 1;
}

- (id)readFirmwareFileDataWithError:(id *)a3
{
  v3 = *(&self->_firmwareBundleURL + 1);
  if (v3 || (v3 = *(&self->_firmwareOverrideData + 1)) != 0)
  {
    v5 = v3;
  }

  else
  {
    v8 = *(&self->_firmwarePathSuffix + 1);
    v12 = 0;
    v5 = [NSData dataWithContentsOfURL:v8 options:0 error:&v12];
    v9 = v12;
    if (!v5)
    {
      v10 = [*(&self->_firmwarePathSuffix + 1) path];
      [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to read firmware file at '%@' (%@)", v10, v9];

      if (a3)
      {
        v11 = v9;
        *a3 = v9;
      }
    }
  }

  return v5;
}

@end