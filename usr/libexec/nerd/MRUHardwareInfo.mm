@interface MRUHardwareInfo
- (MRUHardwareInfo)initWithChipID:(unsigned int)d chipRev:(unsigned int)rev boardID:(unsigned int)iD securityEpoch:(unsigned int)epoch productionStatus:(BOOL)status securityMode:(BOOL)mode securityDomain:(unsigned int)domain ecid:(unint64_t)self0;
- (MRUHardwareInfo)initWithCoder:(id)coder;
- (MRUHardwareInfo)initWithOptions:(id)options error:(id *)error;
- (NSDictionary)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRUHardwareInfo

- (MRUHardwareInfo)initWithChipID:(unsigned int)d chipRev:(unsigned int)rev boardID:(unsigned int)iD securityEpoch:(unsigned int)epoch productionStatus:(BOOL)status securityMode:(BOOL)mode securityDomain:(unsigned int)domain ecid:(unint64_t)self0
{
  v17.receiver = self;
  v17.super_class = MRUHardwareInfo;
  result = [(MRUHardwareInfo *)&v17 init];
  if (result)
  {
    result->_chipID = d;
    result->_chipRev = rev;
    result->_boardID = iD;
    result->_securityEpoch = epoch;
    result->_productionStatus = status;
    result->_securityMode = mode;
    result->_securityDomain = domain;
    result->_ecid = ecid;
  }

  return result;
}

- (MRUHardwareInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MRUHardwareInfo;
  v5 = [(MRUHardwareInfo *)&v23 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [coderCopy decodeObjectForKey:@"chipID"];
  v7 = v6;
  if (v6)
  {
    v5->_chipID = [(MRUHardwareInfo *)v6 unsignedIntValue];
    v8 = [coderCopy decodeObjectForKey:@"chipRev"];
    if (v8)
    {
      v9 = v8;
      v5->_chipRev = [v8 unsignedIntValue];
      v10 = [coderCopy decodeObjectForKey:@"boardID"];
      if (v10)
      {
        v11 = v10;
        v5->_boardID = [v10 unsignedIntValue];
        v12 = [coderCopy decodeObjectForKey:@"securityEpoch"];
        if (v12)
        {
          v13 = v12;
          v5->_securityEpoch = [v12 unsignedIntValue];
          v14 = [coderCopy decodeObjectForKey:@"productionStatus"];
          if (v14)
          {
            v15 = v14;
            v5->_productionStatus = [v14 unsignedIntValue] != 0;
            v16 = [coderCopy decodeObjectForKey:@"securityMode"];
            if (v16)
            {
              v17 = v16;
              v5->_securityMode = [v16 unsignedIntValue] != 0;
              v18 = [coderCopy decodeObjectForKey:@"securityDomain"];
              if (v18)
              {
                v19 = v18;
                v5->_securityDomain = [v18 unsignedIntValue];
                v20 = [coderCopy decodeObjectForKey:@"ecid"];
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

- (MRUHardwareInfo)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v42.receiver = self;
  v42.super_class = MRUHardwareInfo;
  v7 = [(MRUHardwareInfo *)&v42 init];
  if (!v7)
  {
LABEL_35:
    v36 = v7;
    goto LABEL_36;
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"chipID"];
  if (!v8)
  {
    if (*error)
    {
      v57 = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithFormat:@"No chipID in options dict"];
      v58 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v25];
    }

    goto LABEL_31;
  }

  v9 = v8;
  v7->_chipID = [v8 unsignedIntValue];
  v10 = [optionsCopy objectForKeyedSubscript:@"bundlePath"];
  if (!v10)
  {
    if (*error)
    {
      v55 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithFormat:@"No chipRev in options dict"];
      v56 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v27];
    }

    goto LABEL_30;
  }

  v11 = v10;
  v7->_chipRev = [v10 unsignedIntValue];
  v12 = [optionsCopy objectForKeyedSubscript:@"boardID"];
  if (!v12)
  {
    if (*error)
    {
      v53 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithFormat:@"No boardID in options dict"];
      v54 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v29];
    }

    goto LABEL_29;
  }

  v13 = v12;
  v7->_boardID = [v12 unsignedIntValue];
  v14 = [optionsCopy objectForKeyedSubscript:@"securityEpoch"];
  if (!v14)
  {
    if (*error)
    {
      v51 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithFormat:@"No securityEpoch in options dict"];
      v52 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v31];
    }

    goto LABEL_28;
  }

  v15 = v14;
  v7->_securityEpoch = [v14 unsignedIntValue];
  v16 = [optionsCopy objectForKeyedSubscript:@"productionStatus"];
  if (!v16)
  {
    if (*error)
    {
      v49 = NSLocalizedDescriptionKey;
      v32 = [NSString stringWithFormat:@"No productionStatus in options dict"];
      v50 = v32;
      v33 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v33];
    }

    goto LABEL_27;
  }

  v17 = v16;
  v7->_productionStatus = [v16 BOOLValue];
  v18 = [optionsCopy objectForKeyedSubscript:@"securityMode"];
  if (!v18)
  {
    if (!*error)
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
    *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v34];

LABEL_25:
    goto LABEL_26;
  }

  v19 = v18;
  v7->_securityMode = [v18 BOOLValue];
  v20 = [optionsCopy objectForKeyedSubscript:@"securityDomain"];
  if (!v20)
  {
    if (*error)
    {
      v45 = NSLocalizedDescriptionKey;
      v41 = [NSString stringWithFormat:@"No securityDomain in options dict"];
      v46 = v41;
      v35 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v35];
    }

    goto LABEL_25;
  }

  v21 = v20;
  v7->_securityDomain = [v20 unsignedIntValue];
  v22 = [optionsCopy objectForKeyedSubscript:@"ecid"];
  if (v22)
  {
    v23 = v22;
    v7->_ecid = [v22 unsignedLongLongValue];
    v22 = v23;
  }

  else if (*error)
  {
    v43 = NSLocalizedDescriptionKey;
    v40 = [NSString stringWithFormat:@"No ecid in options dict"];
    v44 = v40;
    v39 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    *error = [NSError errorWithDomain:@"com.apple.Manta.MantaRestoreUtils" code:1 userInfo:v39];

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

- (void)encodeWithCoder:(id)coder
{
  chipID = self->_chipID;
  coderCopy = coder;
  v6 = [NSNumber numberWithUnsignedInt:chipID];
  [coderCopy encodeObject:v6 forKey:@"chipID"];

  v7 = [NSNumber numberWithUnsignedInt:self->_chipRev];
  [coderCopy encodeObject:v7 forKey:@"chipRev"];

  v8 = [NSNumber numberWithUnsignedInt:self->_boardID];
  [coderCopy encodeObject:v8 forKey:@"boardID"];

  v9 = [NSNumber numberWithUnsignedInt:self->_securityEpoch];
  [coderCopy encodeObject:v9 forKey:@"securityEpoch"];

  v10 = [NSNumber numberWithBool:self->_productionStatus];
  [coderCopy encodeObject:v10 forKey:@"productionStatus"];

  v11 = [NSNumber numberWithBool:self->_securityMode];
  [coderCopy encodeObject:v11 forKey:@"securityMode"];

  v12 = [NSNumber numberWithUnsignedInt:self->_securityDomain];
  [coderCopy encodeObject:v12 forKey:@"securityDomain"];

  v13 = [NSNumber numberWithUnsignedLongLong:self->_ecid];
  [coderCopy encodeObject:v13 forKey:@"ecid"];
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