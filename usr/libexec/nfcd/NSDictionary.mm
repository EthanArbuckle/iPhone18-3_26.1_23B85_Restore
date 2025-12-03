@interface NSDictionary
- (BOOL)NF_isEqualToExpressConfig:(id)config;
- (unint64_t)NF_expressConfigHash;
@end

@implementation NSDictionary

- (BOOL)NF_isEqualToExpressConfig:(id)config
{
  configCopy = config;
  v5 = [(NSDictionary *)self objectForKeyedSubscript:@"passUniqueID"];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = v5;
  v7 = [(NSDictionary *)self objectForKeyedSubscript:@"passUniqueID"];
  v8 = [configCopy objectForKeyedSubscript:@"passUniqueID"];
  v9 = [v7 caseInsensitiveCompare:v8];

  if (v9)
  {
    goto LABEL_3;
  }

  v12 = [(NSDictionary *)self objectForKeyedSubscript:@"appletIdentifier"];
  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = v12;
  v14 = [(NSDictionary *)self objectForKeyedSubscript:@"appletIdentifier"];
  v15 = [configCopy objectForKeyedSubscript:@"appletIdentifier"];
  v16 = [v14 caseInsensitiveCompare:v15];

  if (v16)
  {
    goto LABEL_3;
  }

  v17 = [(NSDictionary *)self objectForKeyedSubscript:@"ExpressType"];
  if (!v17)
  {
    goto LABEL_3;
  }

  v18 = v17;
  v19 = [(NSDictionary *)self objectForKeyedSubscript:@"ExpressType"];
  v20 = [configCopy objectForKeyedSubscript:@"ExpressType"];
  v21 = [v19 caseInsensitiveCompare:v20];

  if (v21)
  {
    goto LABEL_3;
  }

  v22 = [(NSDictionary *)self objectForKeyedSubscript:@"expressEnabled"];
  if (!v22)
  {
    goto LABEL_3;
  }

  v23 = v22;
  v24 = [(NSDictionary *)self objectForKeyedSubscript:@"expressEnabled"];
  bOOLValue = [v24 BOOLValue];
  v26 = [configCopy objectForKeyedSubscript:@"expressEnabled"];
  bOOLValue2 = [v26 BOOLValue];

  if (bOOLValue != bOOLValue2)
  {
    goto LABEL_3;
  }

  v28 = [(NSDictionary *)self objectForKeyedSubscript:@"moduleIdentifier"];
  if (!v28)
  {
    goto LABEL_3;
  }

  v29 = v28;
  v30 = [(NSDictionary *)self objectForKeyedSubscript:@"moduleIdentifier"];
  v31 = [configCopy objectForKeyedSubscript:@"moduleIdentifier"];
  v32 = [v30 caseInsensitiveCompare:v31];

  if (v32)
  {
    goto LABEL_3;
  }

  v33 = [(NSDictionary *)self objectForKeyedSubscript:@"keyIdentifier"];

  if (v33)
  {
    v34 = [(NSDictionary *)self objectForKeyedSubscript:@"keyIdentifier"];
    v35 = [configCopy objectForKeyedSubscript:@"keyIdentifier"];
    v36 = [v34 caseInsensitiveCompare:v35];

    if (v36)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [configCopy objectForKeyedSubscript:@"keyIdentifier"];

    if (v37)
    {
      goto LABEL_3;
    }
  }

  v38 = [(NSDictionary *)self objectForKeyedSubscript:@"inSessionOnly"];

  if (v38)
  {
    v39 = [(NSDictionary *)self objectForKeyedSubscript:@"inSessionOnly"];
    bOOLValue3 = [v39 BOOLValue];
    v41 = [configCopy objectForKeyedSubscript:@"inSessionOnly"];
    bOOLValue4 = [v41 BOOLValue];

    if (bOOLValue3 != bOOLValue4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = [configCopy objectForKeyedSubscript:@"inSessionOnly"];

    if (v43)
    {
      goto LABEL_3;
    }
  }

  v44 = [(NSDictionary *)self objectForKeyedSubscript:@"UWBExpressEnabled"];

  if (v44)
  {
    v45 = [(NSDictionary *)self objectForKeyedSubscript:@"UWBExpressEnabled"];
    bOOLValue5 = [v45 BOOLValue];
    v47 = [configCopy objectForKeyedSubscript:@"UWBExpressEnabled"];
    bOOLValue6 = [v47 BOOLValue];

    if (bOOLValue5 != bOOLValue6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = [configCopy objectForKeyedSubscript:@"UWBExpressEnabled"];

    if (v49)
    {
      goto LABEL_3;
    }
  }

  v50 = [(NSDictionary *)self objectForKeyedSubscript:@"userChoice"];

  if (v50)
  {
    v51 = [(NSDictionary *)self objectForKeyedSubscript:@"userChoice"];
    bOOLValue7 = [v51 BOOLValue];
    v53 = [configCopy objectForKeyedSubscript:@"userChoice"];
    bOOLValue8 = [v53 BOOLValue];

    if (bOOLValue7 != bOOLValue8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v55 = [configCopy objectForKeyedSubscript:@"userChoice"];

    if (v55)
    {
      goto LABEL_3;
    }
  }

  v56 = [(NSDictionary *)self objectForKeyedSubscript:@"ECP2Info"];

  if (v56)
  {
    v57 = [(NSDictionary *)self objectForKeyedSubscript:@"ECP2Info"];
    v58 = [configCopy objectForKeyedSubscript:@"ECP2Info"];
    v59 = [v57 isEqual:v58];

    if ((v59 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v60 = [configCopy objectForKeyedSubscript:@"ECP2Info"];

    if (v60)
    {
      goto LABEL_3;
    }
  }

  v61 = [(NSDictionary *)self objectForKeyedSubscript:@"readerIdentifier"];

  if (v61)
  {
    v62 = [(NSDictionary *)self objectForKeyedSubscript:@"readerIdentifier"];
    v63 = [configCopy objectForKeyedSubscript:@"readerIdentifier"];
    v64 = [v62 caseInsensitiveCompare:v63];

    if (v64)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = [configCopy objectForKeyedSubscript:@"readerIdentifier"];

    if (v65)
    {
      goto LABEL_3;
    }
  }

  v66 = [(NSDictionary *)self objectForKeyedSubscript:@"groupActivationStyle"];

  if (v66)
  {
    v67 = [(NSDictionary *)self objectForKeyedSubscript:@"groupActivationStyle"];
    intValue = [v67 intValue];
    v69 = [configCopy objectForKeyedSubscript:@"groupActivationStyle"];
    intValue2 = [v69 intValue];

    if (intValue != intValue2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v71 = [configCopy objectForKeyedSubscript:@"groupActivationStyle"];

    if (v71)
    {
      goto LABEL_3;
    }
  }

  v72 = [(NSDictionary *)self objectForKeyedSubscript:@"groupHead"];

  if (v72)
  {
    v73 = [(NSDictionary *)self objectForKeyedSubscript:@"groupHead"];
    v74 = [configCopy objectForKeyedSubscript:@"groupHead"];
    v75 = [v73 caseInsensitiveCompare:v74];

    if (v75)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v76 = [configCopy objectForKeyedSubscript:@"groupHead"];

    if (v76)
    {
      goto LABEL_3;
    }
  }

  v77 = [(NSDictionary *)self objectForKeyedSubscript:@"groupMembers"];

  if (v77)
  {
    v78 = [(NSDictionary *)self objectForKeyedSubscript:@"groupMembers"];
    v79 = [configCopy objectForKeyedSubscript:@"groupMembers"];
    v80 = [v78 isEqual:v79];

    if ((v80 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v81 = [configCopy objectForKeyedSubscript:@"groupMembers"];

    if (v81)
    {
      goto LABEL_3;
    }
  }

  v82 = [(NSDictionary *)self objectForKeyedSubscript:@"aliroGroupResolvingKeys"];

  if (v82)
  {
    v83 = [(NSDictionary *)self objectForKeyedSubscript:@"aliroGroupResolvingKeys"];
    v84 = [configCopy objectForKeyedSubscript:@"aliroGroupResolvingKeys"];
    v85 = [v83 isEqual:v84];

    if ((v85 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v86 = [configCopy objectForKeyedSubscript:@"aliroGroupResolvingKeys"];

    if (v86)
    {
      goto LABEL_3;
    }
  }

  v87 = [(NSDictionary *)self objectForKeyedSubscript:@"associatedReaderIdentifiers"];

  if (v87)
  {
    v88 = [(NSDictionary *)self objectForKeyedSubscript:@"associatedReaderIdentifiers"];
    v89 = [configCopy objectForKeyedSubscript:@"associatedReaderIdentifiers"];
    v90 = [v88 isEqual:v89];

    if (v90)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v91 = [configCopy objectForKeyedSubscript:@"associatedReaderIdentifiers"];

    if (!v91)
    {
LABEL_57:
      v10 = 1;
      goto LABEL_4;
    }
  }

LABEL_3:
  v10 = 0;
LABEL_4:

  return v10;
}

- (unint64_t)NF_expressConfigHash
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"passUniqueID"];

  if (v3)
  {
    v4 = [@"passUniqueID" hash];
    v5 = [(NSDictionary *)self objectForKeyedSubscript:@"passUniqueID"];
    v3 = [v5 hash] ^ v4;
  }

  v6 = [(NSDictionary *)self objectForKeyedSubscript:@"appletIdentifier"];

  if (v6)
  {
    v7 = [@"appletIdentifier" hash];
    v8 = [(NSDictionary *)self objectForKeyedSubscript:@"appletIdentifier"];
    v3 ^= v7 ^ [v8 hash];
  }

  v9 = [(NSDictionary *)self objectForKeyedSubscript:@"ExpressType"];

  if (v9)
  {
    v10 = [@"ExpressType" hash];
    v11 = [(NSDictionary *)self objectForKeyedSubscript:@"ExpressType"];
    v3 ^= v10 ^ [v11 hash];
  }

  v12 = [(NSDictionary *)self objectForKeyedSubscript:@"expressEnabled"];

  if (v12)
  {
    v13 = [@"expressEnabled" hash];
    v14 = [(NSDictionary *)self objectForKeyedSubscript:@"expressEnabled"];
    v3 ^= v13 ^ [v14 BOOLValue];
  }

  v15 = [(NSDictionary *)self objectForKeyedSubscript:@"moduleIdentifier"];

  if (v15)
  {
    v16 = [@"moduleIdentifier" hash];
    v17 = [(NSDictionary *)self objectForKeyedSubscript:@"moduleIdentifier"];
    v3 ^= v16 ^ [v17 hash];
  }

  v18 = [(NSDictionary *)self objectForKeyedSubscript:@"keyIdentifier"];

  if (v18)
  {
    v19 = [@"keyIdentifier" hash];
    v20 = [(NSDictionary *)self objectForKeyedSubscript:@"keyIdentifier"];
    v3 ^= v19 ^ [v20 hash];
  }

  v21 = [(NSDictionary *)self objectForKeyedSubscript:@"inSessionOnly"];

  if (v21)
  {
    v22 = [@"inSessionOnly" hash];
    v23 = [(NSDictionary *)self objectForKeyedSubscript:@"inSessionOnly"];
    v3 ^= v22 ^ [v23 BOOLValue];
  }

  v24 = [(NSDictionary *)self objectForKeyedSubscript:@"UWBExpressEnabled"];

  if (v24)
  {
    v25 = [@"UWBExpressEnabled" hash];
    v26 = [(NSDictionary *)self objectForKeyedSubscript:@"UWBExpressEnabled"];
    v3 ^= v25 ^ [v26 BOOLValue];
  }

  v27 = [(NSDictionary *)self objectForKeyedSubscript:@"userChoice"];

  if (v27)
  {
    v28 = [@"userChoice" hash];
    v29 = [(NSDictionary *)self objectForKeyedSubscript:@"userChoice"];
    v3 ^= v28 ^ [v29 BOOLValue];
  }

  v30 = [(NSDictionary *)self objectForKeyedSubscript:@"ECP2Info"];

  if (v30)
  {
    v31 = [(NSDictionary *)self objectForKeyedSubscript:@"ECP2Info"];
    v32 = [@"ECP2Info" hash];
    v3 ^= v32 ^ [v31 hash];
  }

  v33 = [(NSDictionary *)self objectForKeyedSubscript:@"readerIdentifier"];

  if (v33)
  {
    v34 = [@"readerIdentifier" hash];
    v35 = [(NSDictionary *)self objectForKeyedSubscript:@"readerIdentifier"];
    v3 ^= v34 ^ [v35 hash];
  }

  v36 = [(NSDictionary *)self objectForKeyedSubscript:@"groupActivationStyle"];

  if (v36)
  {
    v37 = [@"groupActivationStyle" hash];
    v38 = [(NSDictionary *)self objectForKeyedSubscript:@"groupActivationStyle"];
    v3 ^= v37 ^ [v38 intValue];
  }

  v39 = [(NSDictionary *)self objectForKeyedSubscript:@"groupHead"];

  if (v39)
  {
    v40 = [@"groupHead" hash];
    v41 = [(NSDictionary *)self objectForKeyedSubscript:@"groupHead"];
    v3 ^= v40 ^ [v41 hash];
  }

  v42 = [(NSDictionary *)self objectForKeyedSubscript:@"groupMembers"];

  if (v42)
  {
    v43 = [(NSDictionary *)self objectForKeyedSubscript:@"groupMembers"];
    v44 = [@"groupMembers" hash];
    v3 ^= v44 ^ [v43 hash];
  }

  v45 = [(NSDictionary *)self objectForKeyedSubscript:@"aliroGroupResolvingKeys"];

  if (v45)
  {
    v46 = [(NSDictionary *)self objectForKeyedSubscript:@"aliroGroupResolvingKeys"];
    v47 = [@"aliroGroupResolvingKeys" hash];
    v3 ^= v47 ^ [v46 hash];
  }

  v48 = [(NSDictionary *)self objectForKeyedSubscript:@"associatedReaderIdentifiers"];

  if (v48)
  {
    v49 = [(NSDictionary *)self objectForKeyedSubscript:@"associatedReaderIdentifiers"];
    v50 = [@"associatedReaderIdentifiers" hash];
    v3 ^= v50 ^ [v49 hash];
  }

  return v3;
}

@end