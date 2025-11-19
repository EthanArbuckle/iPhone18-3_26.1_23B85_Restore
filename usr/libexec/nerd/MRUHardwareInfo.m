@interface MRUHardwareInfo
- (MRUHardwareInfo)initWithChipID:(unsigned int)a3 chipRev:(unsigned int)a4 boardID:(unsigned int)a5 securityEpoch:(unsigned int)a6 productionStatus:(BOOL)a7 securityMode:(BOOL)a8 securityDomain:(unsigned int)a9 ecid:(unint64_t)a10;
- (MRUHardwareInfo)initWithCoder:(id)a3;
- (MRUHardwareInfo)initWithOptions:(id)a3 error:(id *)a4;
- (NSDictionary)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRUHardwareInfo

- (MRUHardwareInfo)initWithChipID:(unsigned int)a3 chipRev:(unsigned int)a4 boardID:(unsigned int)a5 securityEpoch:(unsigned int)a6 productionStatus:(BOOL)a7 securityMode:(BOOL)a8 securityDomain:(unsigned int)a9 ecid:(unint64_t)a10
{
  v17.receiver = self;
  v17.super_class = MRUHardwareInfo;
  result = [(MRUHardwareInfo *)&v17 init];
  if (result)
  {
    result->_chipID = a3;
    result->_chipRev = a4;
    result->_boardID = a5;
    result->_securityEpoch = a6;
    result->_productionStatus = a7;
    result->_securityMode = a8;
    result->_securityDomain = a9;
    result->_ecid = a10;
  }

  return result;
}

- (MRUHardwareInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MRUHardwareInfo;
  v5 = [(MRUHardwareInfo *)&v23 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v4 decodeObjectForKey:@"chipID"];
  v7 = v6;
  if (v6)
  {
    v5->_chipID = [(MRUHardwareInfo *)v6 unsignedIntValue];
    v8 = [v4 decodeObjectForKey:@"chipRev"];
    if (v8)
    {
      v9 = v8;
      v5->_chipRev = [v8 unsignedIntValue];
      v10 = [v4 decodeObjectForKey:@"boardID"];
      if (v10)
      {
        v11 = v10;
        v5->_boardID = [v10 unsignedIntValue];
        v12 = [v4 decodeObjectForKey:@"securityEpoch"];
        if (v12)
        {
          v13 = v12;
          v5->_securityEpoch = [v12 unsignedIntValue];
          v14 = [v4 decodeObjectForKey:@"productionStatus"];
          if (v14)
          {
            v15 = v14;
            v5->_productionStatus = [v14 unsignedIntValue] != 0;
            v16 = [v4 decodeObjectForKey:@"securityMode"];
            if (v16)
            {
              v17 = v16;
              v5->_securityMode = [v16 unsignedIntValue] != 0;
              v18 = [v4 decodeObjectForKey:@"securityDomain"];
              if (v18)
              {
                v19 = v18;
                v5->_securityDomain = [v18 unsignedIntValue];
                v20 = [v4 decodeObjectForKey:@"ecid"];
                if (v20)
                {
                  v21 = v20;
                  v5->_ecid = [v20 unsignedLongLongValue];

LABEL_11:
                  v7 = v5;
                  goto LABEL_19;
                }
              }
            }
          }
        }
      }
    }

    v7 = 0;
  }

LABEL_19:

  return v7;
}

- (MRUHardwareInfo)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v42.receiver = self;
  v42.super_class = MRUHardwareInfo;
  v7 = [(MRUHardwareInfo *)&v42 init];
  if (!v7)
  {
LABEL_35:
    v36 = v7;
    goto LABEL_36;
  }

  v8 = [v6 objectForKeyedSubscript:@"chipID"];
  if (!v8)
  {
    if (*a4)
    {
      v57 = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithFormat:@"No chipID in options dict"];
      v58 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v25];
    }

    goto LABEL_31;
  }

  v9 = v8;
  v7->_chipID = [v8 unsignedIntValue];
  v10 = [v6 objectForKeyedSubscript:@"bundlePath"];
  if (!v10)
  {
    if (*a4)
    {
      v55 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithFormat:@"No chipRev in options dict"];
      v56 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v27];
    }

    goto LABEL_30;
  }

  v11 = v10;
  v7->_chipRev = [v10 unsignedIntValue];
  v12 = [v6 objectForKeyedSubscript:@"boardID"];
  if (!v12)
  {
    if (*a4)
    {
      v53 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithFormat:@"No boardID in options dict"];
      v54 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v29];
    }

    goto LABEL_29;
  }

  v13 = v12;
  v7->_boardID = [v12 unsignedIntValue];
  v14 = [v6 objectForKeyedSubscript:@"securityEpoch"];
  if (!v14)
  {
    if (*a4)
    {
      v51 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithFormat:@"No securityEpoch in options dict"];
      v52 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v31];
    }

    goto LABEL_28;
  }

  v15 = v14;
  v7->_securityEpoch = [v14 unsignedIntValue];
  v16 = [v6 objectForKeyedSubscript:@"productionStatus"];
  if (!v16)
  {
    if (*a4)
    {
      v49 = NSLocalizedDescriptionKey;
      v32 = [NSString stringWithFormat:@"No productionStatus in options dict"];
      v50 = v32;
      v33 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v33];
    }

    goto LABEL_27;
  }

  v17 = v16;
  v7->_productionStatus = [v16 BOOLValue];
  v18 = [v6 objectForKeyedSubscript:@"securityMode"];
  if (!v18)
  {
    if (!*a4)
    {
LABEL_26:

LABEL_27:
LABEL_28:

LABEL_29:
LABEL_30:

      goto LABEL_31;
    }

    v47 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"No securityMode in options dict"];
    v48 = v19;
    v34 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v34];

LABEL_25:
    goto LABEL_26;
  }

  v19 = v18;
  v7->_securityMode = [v18 BOOLValue];
  v20 = [v6 objectForKeyedSubscript:@"securityDomain"];
  if (!v20)
  {
    if (*a4)
    {
      v45 = NSLocalizedDescriptionKey;
      v41 = [NSString stringWithFormat:@"No securityDomain in options dict"];
      v46 = v41;
      v35 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v35];
    }

    goto LABEL_25;
  }

  v21 = v20;
  v7->_securityDomain = [v20 unsignedIntValue];
  v22 = [v6 objectForKeyedSubscript:@"ecid"];
  if (v22)
  {
    v23 = v22;
    v7->_ecid = [v22 unsignedLongLongValue];
    v22 = v23;
  }

  else if (*a4)
  {
    v43 = NSLocalizedDescriptionKey;
    v40 = [NSString stringWithFormat:@"No ecid in options dict"];
    v44 = v40;
    v39 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v39];

    v22 = 0;
  }

  v37 = v22;

  if (v37)
  {
    goto LABEL_35;
  }

LABEL_31:
  v36 = 0;
LABEL_36:

  return v36;
}

- (void)encodeWithCoder:(id)a3
{
  chipID = self->_chipID;
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedInt:chipID];
  [v5 encodeObject:v6 forKey:@"chipID"];

  v7 = [NSNumber numberWithUnsignedInt:self->_chipRev];
  [v5 encodeObject:v7 forKey:@"chipRev"];

  v8 = [NSNumber numberWithUnsignedInt:self->_boardID];
  [v5 encodeObject:v8 forKey:@"boardID"];

  v9 = [NSNumber numberWithUnsignedInt:self->_securityEpoch];
  [v5 encodeObject:v9 forKey:@"securityEpoch"];

  v10 = [NSNumber numberWithBool:self->_productionStatus];
  [v5 encodeObject:v10 forKey:@"productionStatus"];

  v11 = [NSNumber numberWithBool:self->_securityMode];
  [v5 encodeObject:v11 forKey:@"securityMode"];

  v12 = [NSNumber numberWithUnsignedInt:self->_securityDomain];
  [v5 encodeObject:v12 forKey:@"securityDomain"];

  v13 = [NSNumber numberWithUnsignedLongLong:self->_ecid];
  [v5 encodeObject:v13 forKey:@"ecid"];
}

- (NSDictionary)asDictionary
{
  v13[0] = @"chipID";
  v3 = [NSNumber numberWithUnsignedInt:self->_chipID];
  v14[0] = v3;
  v13[1] = @"bundlePath";
  v4 = [NSNumber numberWithUnsignedInt:self->_chipRev];
  v14[1] = v4;
  v13[2] = @"boardID";
  v5 = [NSNumber numberWithUnsignedInt:self->_boardID];
  v14[2] = v5;
  v13[3] = @"securityEpoch";
  v6 = [NSNumber numberWithUnsignedInt:self->_securityEpoch];
  v14[3] = v6;
  v13[4] = @"productionStatus";
  v7 = [NSNumber numberWithBool:self->_productionStatus];
  v14[4] = v7;
  v13[5] = @"securityMode";
  v8 = [NSNumber numberWithBool:self->_securityMode];
  v14[5] = v8;
  v13[6] = @"securityDomain";
  v9 = [NSNumber numberWithUnsignedInt:self->_securityDomain];
  v14[6] = v9;
  v13[7] = @"ecid";
  v10 = [NSNumber numberWithUnsignedLongLong:self->_ecid];
  v14[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%@(\n"), v4;

  [v5 appendFormat:@"\tchipID: %u\n", self->_chipID];
  [v5 appendFormat:@"\tchipRev: %u\n", self->_chipRev];
  [v5 appendFormat:@"\tboardID: %u\n", self->_boardID];
  [v5 appendFormat:@"\tsecurityEpoch: %u\n", self->_securityEpoch];
  [v5 appendFormat:@"\tproductionStatus: %u\n", self->_productionStatus];
  [v5 appendFormat:@"\tsecurityMode: %u\n", self->_securityMode];
  [v5 appendFormat:@"\tsecurityDomain: %u\n", self->_securityDomain];
  [v5 appendFormat:@"\tecid: %llu\n", self->_ecid];
  [v5 appendString:@""]);
  v6 = [NSString stringWithString:v5];

  return v6;
}

@end