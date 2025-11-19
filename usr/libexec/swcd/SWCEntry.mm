@interface SWCEntry
+ (BOOL)_shouldIncludeServiceWithDomain:(id)a3 fromBundleRecord:(id)a4 applicationIdentifier:(id)a5 developerModeEnabled:(BOOL)a6 enterpriseContext:(id)a7;
+ (id)_deduplicateServicesByMode:(id)a3;
+ (id)_enterpriseEntriesWithContext:(id)a3 forBundleRecord:(id)a4 applicationIdentifier:(id)a5;
+ (id)_entriesFromBuiltInJSONForBundleRecord:(id)a3 applicationIdentifier:(id)a4;
+ (id)additionalServiceDetailsDirectoryURLForApplicationIdentifier:(id)a3 createParentIfNeeded:(BOOL)a4 error:(id *)a5;
+ (id)entriesForJSONObject:(id)a3 domain:(id)a4;
+ (void)_addEntriesToOrderedSet:(id)a3 forService:(id)a4 fromAppsArray:(id)a5 domain:(id)a6;
+ (void)_addEntriesToOrderedSet:(id)a3 forUniversalLinksFromDetailsArray:(id)a4 domain:(id)a5 substitutionVariables:(id)a6 defaults:(id)a7 maximum:(unint64_t)a8;
+ (void)_addEntriesToOrderedSet:(id)a3 forUniversalLinksFromDetailsDictionary:(id)a4 domain:(id)a5 substitutionVariables:(id)a6 defaults:(id)a7 maximum:(unint64_t)a8;
+ (void)_addEntryToOrderedSet:(id)a3 forUniversalLinksFromSingleDetailsDictionary:(id)a4 domain:(id)a5 substitutionVariables:(id)a6 defaults:(id)a7;
+ (void)_enumerateJSONFilesForBundleRecord:(id)a3 applicationIdentifier:(id)a4 block:(id)a5;
+ (void)canonicalizeEntries:(id)a3;
+ (void)enumerateJSONResourceURLsForBundleURL:(id)a3 block:(id)a4;
+ (void)enumerateJSONResourceURLsForDirectoryAtURL:(id)a3 block:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsFirstDownload;
- (NSDate)nextCheckDate;
- (NSError)lastError;
- (SWCEntry)initWithApplicationIdentifier:(id)a3 service:(id)a4 domain:(id)a5;
- (SWCEntry)initWithCoder:(id)a3;
- (SWCEntry)initWithServiceSpecifier:(id)a3;
- (_SWCServiceSpecifier)serviceSpecifier;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (unint64_t)evaluateWithURLComponents:(id)a3 auditToken:(id *)a4 matchingPattern:(id *)a5;
- (unint64_t)hash;
- (void)canonicalizeObjectAtAddress:(id *)a3 objectCache:(id)a4;
- (void)canonicalizeWithObjectCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)logToFile:(__sFILE *)a3 verbosity:(unsigned __int8)a4;
- (void)setLastError:(id)a3;
@end

@implementation SWCEntry

- (SWCEntry)initWithApplicationIdentifier:(id)a3 service:(id)a4 domain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = SWCEntry;
  v11 = [(SWCEntry *)&v21 init];
  if (v11)
  {
    v12 = _SWCServiceTypeCanonicalize();
    serviceType = v11->_serviceType;
    v11->_serviceType = v12;

    v14 = [v10 copy];
    domain = v11->_domain;
    v11->_domain = v14;

    v16 = [v8 copy];
    applicationIdentifier = v11->_applicationIdentifier;
    v11->_applicationIdentifier = v16;

    v18 = +[NSDate distantPast];
    lastCheckedDate = v11->_lastCheckedDate;
    v11->_lastCheckedDate = v18;
  }

  return v11;
}

- (SWCEntry)initWithServiceSpecifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 isFullySpecified])
  {
    v6 = [v5 SWCApplicationIdentifier];
    v7 = [v5 serviceType];
    v8 = [v5 SWCDomain];
    v9 = [(SWCEntry *)self initWithApplicationIdentifier:v6 service:v7 domain:v8];

    self = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)logToFile:(__sFILE *)a3 verbosity:(unsigned __int8)a4
{
  v4 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = [(SWCEntry *)self serviceType];
  _SWCLogValueForKey();

  v8 = [(SWCEntry *)self applicationIdentifier];
  _SWCLogValueForKey();

  if (v4)
  {
    v9 = [(SWCEntry *)self applicationVersion];
    _SWCLogValueForKey();

    v10 = [(SWCEntry *)self applicationPersistentIdentifier];
    v11 = _LSPersistentIdentifierGetDebugDescription();
    _SWCLogValueForKey();
  }

  v12 = [(SWCEntry *)self domain];
  _SWCLogValueForKey();

  if (v4)
  {
    v13 = [(SWCEntry *)self patterns];

    if (v13)
    {
      v14 = [(SWCEntry *)self patterns];
      _SWCLogValueForKey();
    }

    v15 = [(SWCEntry *)self substitutionVariables];

    if (v15)
    {
      v16 = [(SWCEntry *)self substitutionVariables];
      _SWCLogValueForKey();
    }
  }

  v17 = [(SWCEntry *)self domain];
  v18 = [v17 modeOfOperation];

  if (v18 == 1)
  {
    v19 = @"developer";
  }

  else
  {
    if (v18 != 2)
    {
      v20 = 0;
      goto LABEL_14;
    }

    v19 = @"managed";
  }

  v20 = [NSSet setWithObject:v19];
LABEL_14:
  v21 = [(SWCEntry *)self fields];
  relativeOrder = v21->relativeOrder;
  v23 = *v21;
  _SWCFieldsLogDebugDescription();
  v24 = [(SWCEntry *)self lastCheckedDate];
  v25 = v24;
  if (v24)
  {
    [v24 timeIntervalSince1970];
    if (fabs(v26) < 1.0e10)
    {
      _SWCLogValueForKey();
    }
  }

  v27 = [(SWCEntry *)self nextCheckDate];
  v28 = v27;
  if (v27)
  {
    [v27 timeIntervalSince1970];
    if (fabs(v29) < 1.0e10)
    {
      _SWCLogValueForKey();
    }
  }

  v30 = [(SWCEntry *)self lastError];
  if (v30)
  {
    if (v4)
    {
      _SWCLogValueForKey();
    }

    else
    {
      v31 = [NSString alloc];
      v32 = [v30 domain];
      v33 = [v31 initWithFormat:@"%@ %lli", v32, objc_msgSend(v30, "code")];
      _SWCLogValueForKey();
    }
  }

  v34 = [(SWCEntry *)self retryCount];
  if (v34)
  {
    _SWCLogValueForKey();
  }

  objc_autoreleasePoolPop(v6);
}

- (_SWCServiceSpecifier)serviceSpecifier
{
  v3 = [_SWCServiceSpecifier alloc];
  v4 = [(SWCEntry *)self serviceType];
  v5 = [(SWCEntry *)self applicationIdentifier];
  v6 = [(SWCEntry *)self domain];
  v7 = [v3 _initWithServiceType:v4 applicationIdentifier:v5 domain:v6];

  return v7;
}

+ (void)canonicalizeEntries:(id)a3
{
  v3 = a3;
  if ([v3 count] >= 2)
  {
    objc_opt_class();
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v3;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_isKindOfClass())
          {
            if (!v5)
            {
              v5 = objc_alloc_init(NSMutableSet);
            }

            [v9 canonicalizeWithObjectCache:{v5, v10}];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)canonicalizeObjectAtAddress:(id *)a3 objectCache:(id)a4
{
  v6 = a4;
  v5 = [v6 member:*a3];
  if (v5)
  {
    objc_storeStrong(a3, v5);
  }

  else if (*a3)
  {
    [v6 addObject:?];
  }
}

- (void)canonicalizeWithObjectCache:(id)a3
{
  v4 = a3;
  [(SWCEntry *)self canonicalizeObjectAtAddress:&self->_applicationIdentifier objectCache:?];
  [(SWCEntry *)self canonicalizeObjectAtAddress:&self->_domain objectCache:v4];
  [(SWCEntry *)self canonicalizeObjectAtAddress:&self->_patterns objectCache:v4];
  [(SWCEntry *)self canonicalizeObjectAtAddress:&self->_substitutionVariables objectCache:v4];
}

- (unint64_t)evaluateWithURLComponents:(id)a3 auditToken:(id *)a4 matchingPattern:(id *)a5
{
  v8 = a3;
  v9 = [(SWCEntry *)self patterns];
  if (v9)
  {
    v10 = [(SWCEntry *)self substitutionVariables];
    v11 = [v9 evaluateWithURLComponents:v8 substitutionVariables:v10 auditToken:a4 matchingPattern:a5 index:0];
  }

  else
  {
    v11 = 200;
  }

  return v11;
}

- (BOOL)needsFirstDownload
{
  if ((*&self->_fields & 0xC) != 0)
  {
    return 0;
  }

  v3 = [(SWCEntry *)self retryCount];
  v2 = v3 == 0;

  return v2;
}

- (NSDate)nextCheckDate
{
  v3 = objc_autoreleasePoolPush();
  v4 = *[(SWCEntry *)self fields]& 0xC;
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = [(SWCEntry *)self retryCount];
  v6 = v5;
  if (!v5 || (v7 = [v5 unsignedIntegerValue], +[_SWCPrefs sharedPrefs](_SWCPrefs, "sharedPrefs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "maximumRetryCount"), v8, v7 < v9))
  {

LABEL_5:
    v10 = +[_SWCPrefs sharedPrefs];
    [v10 retryIntervalAfterSuccess:v4 != 0];
    v12 = v11;

    v13 = [(SWCEntry *)self lastCheckedDate];
    v14 = [v13 dateByAddingTimeInterval:v12];

    goto LABEL_6;
  }

  v16 = +[_SWCPrefs sharedPrefs];
  [v16 retryIntervalAfterReachLimitWithFailure:{objc_msgSend(v6, "unsignedIntegerValue")}];
  v18 = v17;

  v19 = [(SWCEntry *)self lastCheckedDate];
  v14 = [v19 dateByAddingTimeInterval:v18];

  if (qword_10003AC58 != -1)
  {
    dispatch_once(&qword_10003AC58, &stru_100034AE0);
  }

  v20 = qword_10003AC50;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = +[_SWCPrefs sharedPrefs];
    v22 = 138413058;
    v23 = self;
    v24 = 2112;
    v25 = v14;
    v26 = 2114;
    v27 = v6;
    v28 = 2048;
    v29 = [v21 maximumRetryCount];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "nextCheckDate for '%@' will be %@ because it is at its retry limit (%{public}@ of %llu)", &v22, 0x2Au);
  }

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_6:
  objc_autoreleasePoolPop(v3);

  return v14;
}

- (NSError)lastError
{
  if (self->_lastErrorJSON)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [NSJSONSerialization JSONObjectWithData:self->_lastErrorJSON options:0 error:0];
    if (v4 && _NSIsNSDictionary())
    {
      v5 = [v4 objectForKeyedSubscript:@"d"];
      v6 = [v4 objectForKeyedSubscript:@"c"];
      v7 = [v4 objectForKeyedSubscript:@"u"];
      if (_NSIsNSString() && _NSIsNSNumber() && (!v7 || _NSIsNSDictionary()))
      {
        v8 = [[NSError alloc] initWithDomain:v5 code:objc_msgSend(v6 userInfo:{"integerValue"), v7}];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLastError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = [v4 domain];
    [v6 setObject:v7 forKeyedSubscript:@"d"];

    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    [v6 setObject:v8 forKeyedSubscript:@"c"];

    v9 = [v4 userInfo];
    v10 = v9;
    if (v9 && [v9 count])
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000746C;
      v15[3] = &unk_100034940;
      v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
      v16 = v11;
      [v10 enumerateKeysAndObjectsUsingBlock:v15];
      [v6 setObject:v11 forKeyedSubscript:@"u"];
    }

    v12 = [NSJSONSerialization dataWithJSONObject:v6 options:8 error:0];
    lastErrorJSON = self->_lastErrorJSON;
    self->_lastErrorJSON = v12;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v14 = self->_lastErrorJSON;
    self->_lastErrorJSON = 0;
  }
}

- (unint64_t)hash
{
  v3 = [(SWCEntry *)self applicationIdentifier];
  v4 = [v3 hash];
  v5 = [(SWCEntry *)self serviceType];
  v6 = [v5 hash];
  v7 = [(SWCEntry *)self domain];
  v8 = [v7 hash];

  return v6 ^ v4 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SWCEntry *)self applicationIdentifier];
      v7 = [(SWCEntry *)v5 applicationIdentifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(SWCEntry *)self serviceType];
        v9 = [(SWCEntry *)v5 serviceType];
        if ([v8 isEqual:v9])
        {
          v10 = [(SWCEntry *)self domain];
          v11 = [(SWCEntry *)v5 domain];
          v12 = [v10 isEqual:v11];
        }

        else
        {
          v12 = 0;
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
    }
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(SWCEntry *)self patterns];

  if (v4)
  {
    v5 = [(SWCEntry *)self patterns];
    [v3 appendFormat:@", patternCount = %llu", objc_msgSend(v5, "count")];
  }

  v6 = [(SWCEntry *)self substitutionVariables];

  if (v6)
  {
    v7 = [(SWCEntry *)self substitutionVariables];
    [v3 appendFormat:@", subVarCount = %llu", objc_msgSend(v7, "count")];
  }

  v8 = [NSString alloc];
  v9 = [(SWCEntry *)self serviceType];
  v10 = [(SWCEntry *)self applicationIdentifier];
  v11 = [(SWCEntry *)self domain];
  v12 = *[(SWCEntry *)self fields];
  v13 = _SWCServiceApprovalStateGetDebugDescription();
  v14 = *[(SWCEntry *)self fields];
  v15 = _SWCServiceApprovalStateGetDebugDescription();
  v16 = [v8 initWithFormat:@"{ s = %@, a = %@, d = %@, ua = %@, sa = %@%@ }", v9, v10, v11, v13, v15, v3];

  return v16;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(SWCEntry *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  v4 = [(SWCEntry *)self serviceType];
  v5 = [(SWCEntry *)self applicationIdentifier];
  v6 = [v5 redactedDescription];
  v7 = [(SWCEntry *)self domain];
  v8 = [v7 redactedDescription];
  v9 = *[(SWCEntry *)self fields];
  v10 = _SWCServiceApprovalStateGetDebugDescription();
  v11 = *[(SWCEntry *)self fields];
  v12 = _SWCServiceApprovalStateGetDebugDescription();
  v13 = [v3 initWithFormat:@"{ s = %@, a = %@, d = %@, ua = %@, sa = %@ }", v4, v6, v8, v10, v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_applicationIdentifier forKey:@"appID"];
  [v6 encodeObject:self->_serviceType forKey:@"service"];
  [v6 encodeObject:self->_domain forKey:@"domain"];
  [v6 encodeObject:self->_applicationVersion forKey:@"applicationVersion"];
  [v6 encodeObject:self->_applicationPersistentIdentifier forKey:@"applicationPersistentIdentifier"];
  relativeOrder = self->_fields.relativeOrder;
  fields = self->_fields;
  _SWCFieldsEncodeWithCoder();
  [v6 encodeObject:self->_patterns forKey:@"patternList"];
  [v6 encodeObject:self->_substitutionVariables forKey:@"substitutionVariableList"];
  [v6 encodeObject:self->_lastCheckedDate forKey:@"lastCheckedDate"];
  [v6 encodeObject:self->_lastErrorJSON forKey:@"lastErrorJSON"];
  [v6 encodeObject:self->_retryCount forKey:@"retryCount"];
}

- (SWCEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"appID"];
  v7 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v8 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v9 = v8;
  if (v6 && v7 && v8)
  {
    v10 = [(SWCEntry *)self initWithApplicationIdentifier:v6 service:v7 domain:v8];
    if (v10)
    {
      v11 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"applicationVersion"];
      applicationVersion = v10->_applicationVersion;
      v10->_applicationVersion = v11;

      v13 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"applicationPersistentIdentifier"];
      applicationPersistentIdentifier = v10->_applicationPersistentIdentifier;
      v10->_applicationPersistentIdentifier = v13;

      v15 = _SWCFieldsMakeWithCoder();
      *&v10->_fields = v15;
      v10->_fields.relativeOrder = BYTE2(v15);
      v16 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"patternList"];
      patterns = v10->_patterns;
      v10->_patterns = v16;

      v18 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"substitutionVariableList"];
      substitutionVariables = v10->_substitutionVariables;
      v10->_substitutionVariables = v18;

      v20 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"lastCheckedDate"];
      lastCheckedDate = v10->_lastCheckedDate;
      v10->_lastCheckedDate = v20;

      if (!v10->_lastCheckedDate)
      {
        v22 = +[NSDate distantPast];
        v23 = v10->_lastCheckedDate;
        v10->_lastCheckedDate = v22;
      }

      v24 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"lastErrorJSON"];
      lastErrorJSON = v10->_lastErrorJSON;
      v10->_lastErrorJSON = v24;

      v26 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"retryCount"];
      retryCount = v10->_retryCount;
      v10->_retryCount = v26;
    }
  }

  else
  {
    v28 = [NSError alloc];
    v33[0] = @"Line";
    v33[1] = @"Function";
    v34[0] = &off_1000367B0;
    v29 = [NSString stringWithUTF8String:"[SWCEntry initWithCoder:]"];
    v34[1] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    v31 = [v28 initWithDomain:NSCocoaErrorDomain code:4865 userInfo:v30];
    [v4 failWithError:v31];

    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (id)entriesForJSONObject:(id)a3 domain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableOrderedSet);
  v9 = objc_autoreleasePoolPush();
  if (_NSIsNSDictionary())
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009068;
    v11[3] = &unk_100034990;
    v14 = a1;
    v12 = v8;
    v13 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
  }

  objc_autoreleasePoolPop(v9);

  return v8;
}

+ (void)enumerateJSONResourceURLsForBundleURL:(id)a3 block:(id)a4
{
  v14 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v14 URLByAppendingPathComponent:@"Contents" isDirectory:1];
  v10 = v9;
  if (!v9 || ([v9 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v11 = v14;

    v10 = v11;
  }

  v12 = [v10 URLByAppendingPathComponent:@"Library/SharedWebCredentials" isDirectory:1];

  objc_autoreleasePoolPop(v8);
  if (!v12)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"SWCEntry.mm" lineNumber:706 description:{@"Unexpected failure to allocate URL for [Contents/]Library/SharedWebCredentials directory relative to bundle URL %@.", v14}];
  }

  [a1 enumerateJSONResourceURLsForDirectoryAtURL:v12 block:v7];
}

+ (void)enumerateJSONResourceURLsForDirectoryAtURL:(id)a3 block:(id)a4
{
  v5 = a3;
  v54 = a4;
  context = objc_autoreleasePoolPush();
  bundleURL = v5;
  v52 = CFBundleCopyResourceURLsOfTypeInDirectory(v5, @"json", 0);
  if (!v52)
  {
    obj = 0;
    goto LABEL_51;
  }

  if (qword_10003AC58 != -1)
  {
    dispatch_once(&qword_10003AC58, &stru_100034AE0);
  }

  v6 = qword_10003AC50;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v49 = [(__CFArray *)v52 count];
    v50 = [(__CFURL *)bundleURL path];
    *buf = 134218498;
    v75 = v49;
    v76 = 2112;
    v77 = v50;
    v78 = 2112;
    v79 = v52;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Found %llu JSON URLs (must filter) in directory %@: %@", buf, 0x20u);
  }

  obj = objc_alloc_init(NSMutableSet);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v7 = v52;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (!v8)
  {

LABEL_33:
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v25 = v7;
    v26 = [(__CFArray *)v25 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v26)
    {
      v27 = *v64;
      do
      {
        v28 = 0;
        do
        {
          if (*v64 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v63 + 1) + 8 * v28);
          v30 = objc_autoreleasePoolPush();
          v31 = [v29 lastPathComponent];
          v32 = [v31 stringByDeletingPathExtension];

          if (v32)
          {
            v33 = [[_SWCDomain alloc] initWithString:v32];
            v34 = v33;
            if (v33 && [v33 isValid])
            {
              if (qword_10003AC58 != -1)
              {
                dispatch_once(&qword_10003AC58, &stru_100034AE0);
              }

              v35 = qword_10003AC50;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v53 = [v29 lastPathComponent];
                v36 = [(__CFURL *)bundleURL path];
                *buf = 138412802;
                v75 = v53;
                v76 = 2112;
                v77 = v34;
                v78 = 2112;
                v79 = v36;
                _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Found JSON file %@ for domain %@ in directory %@ (nothing model-specific)", buf, 0x20u);
              }

              v54[2](v54, v34, v29);
            }
          }

          objc_autoreleasePoolPop(v30);
          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [(__CFArray *)v25 countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v26);
    }

    v22 = obj;
    obj = 0;
    goto LABEL_50;
  }

  v55 = 0;
  v9 = *v68;
  do
  {
    v10 = 0;
    do
    {
      if (*v68 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v67 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = [v11 lastPathComponent];
      v14 = [v13 stringByDeletingPathExtension];

      if (v14)
      {
        v15 = [v14 rangeOfString:@"." options:4];
        v16 = [v14 rangeOfString:@"~" options:4];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL || (v15 != 0x7FFFFFFFFFFFFFFFLL ? (v17 = v15 >= v16) : (v17 = 0), v17))
        {
          v18 = v14;
        }

        else
        {
          v18 = [v14 substringToIndex:v16];

          v19 = [v18 rangeOfString:@"-macos" options:13];
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v55 = 1;
          }

          else
          {
            v20 = [v18 substringToIndex:v19];

            v55 = 1;
            v18 = v20;
          }
        }

        [obj addObject:v18];
      }

      else
      {
        v18 = 0;
      }

      objc_autoreleasePoolPop(v12);
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v21 = [(__CFArray *)v7 countByEnumeratingWithState:&v67 objects:v73 count:16];
    v8 = v21;
  }

  while (v21);

  if ((v55 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (qword_10003AC58 != -1)
  {
    dispatch_once(&qword_10003AC58, &stru_100034AE0);
  }

  v22 = qword_10003AC50;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = [obj count];
    v24 = [(__CFURL *)bundleURL path];
    *buf = 134218498;
    v75 = v23;
    v76 = 2112;
    v77 = v24;
    v78 = 2112;
    v79 = obj;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Found %llu JSON filenames (filtered) in directory %@: %@", buf, 0x20u);
  }

LABEL_50:

LABEL_51:
  objc_autoreleasePoolPop(context);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obja = obj;
  v37 = [obja countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v37)
  {
    v38 = *v60;
    do
    {
      v39 = 0;
      do
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v40 = *(*(&v59 + 1) + 8 * v39);
        v41 = objc_autoreleasePoolPush();
        v42 = [[_SWCDomain alloc] initWithString:v40];
        v43 = v42;
        if (v42 && [v42 isValid])
        {
          v44 = CFBundleCopyResourceURLInDirectory(bundleURL, v40, @"json", 0);
          if (v44)
          {
            if (qword_10003AC58 != -1)
            {
              dispatch_once(&qword_10003AC58, &stru_100034AE0);
            }

            v45 = qword_10003AC50;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v47 = [v44 lastPathComponent];
              v48 = [(__CFURL *)bundleURL path];
              *buf = 138412802;
              v75 = v47;
              v76 = 2112;
              v77 = v43;
              v78 = 2112;
              v79 = v48;
              _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Found JSON file %@ for domain %@ in directory %@", buf, 0x20u);
            }

            v54[2](v54, v43, v44);
          }
        }

        else
        {
          if (qword_10003AC58 != -1)
          {
            dispatch_once(&qword_10003AC58, &stru_100034AE0);
          }

          v44 = qword_10003AC50;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v46 = [(__CFURL *)bundleURL path];
            *buf = 138412546;
            v75 = v40;
            v76 = 2112;
            v77 = v46;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Could not construct a domain name object for the filename %@.json in directory %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v41);
        v39 = v39 + 1;
      }

      while (v37 != v39);
      v37 = [obja countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v37);
  }
}

+ (id)additionalServiceDetailsDirectoryURLForApplicationIdentifier:(id)a3 createParentIfNeeded:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = +[_SWCPrefs sharedPrefs];
  v26 = 0;
  v9 = [v8 containerURLReturningError:&v26];
  v10 = v26;

  if (v9)
  {
    v11 = [v9 URLByAppendingPathComponent:@"AdditionalServiceDetails" isDirectory:1];
    if (v11)
    {
      if (v6)
      {
        v12 = +[NSFileManager defaultManager];
        v25 = v10;
        v13 = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v25];
        v14 = v25;

        if (!v13)
        {
          v18 = 0;
          goto LABEL_13;
        }

        v10 = v14;
      }

      v15 = [v7 UUIDRepresentation];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 UUIDString];
        v18 = [v11 URLByAppendingPathComponent:v17 isDirectory:1];
LABEL_12:

        v14 = v10;
LABEL_13:

        v10 = v14;
        goto LABEL_14;
      }

      v21 = [NSError alloc];
      v30[0] = &off_1000367C8;
      v29[0] = @"Line";
      v29[1] = @"Function";
      v17 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SWCEntry(JSONParsing) additionalServiceDetailsDirectoryURLForApplicationIdentifier:createParentIfNeeded:error:]");
      v29[2] = NSDebugDescriptionErrorKey;
      v30[1] = v17;
      v30[2] = @"Could not generate a UUID for the specified application identifier.";
      v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
      v22 = [v21 initWithDomain:_SWCErrorDomain code:-1 userInfo:v20];

      v16 = 0;
      v10 = v22;
    }

    else
    {
      v19 = [NSError alloc];
      v28[0] = &off_1000367E0;
      v27[0] = @"Line";
      v27[1] = @"Function";
      v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SWCEntry(JSONParsing) additionalServiceDetailsDirectoryURLForApplicationIdentifier:createParentIfNeeded:error:]");
      v27[2] = NSDebugDescriptionErrorKey;
      v28[1] = v16;
      v28[2] = @"Could not create additional service details storage directory.";
      v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
      v20 = v10;
      v10 = [v19 initWithDomain:_SWCErrorDomain code:-1 userInfo:v17];
    }

    v18 = 0;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_14:

  if (a5 && !v18)
  {
    v23 = v10;
    *a5 = v10;
  }

  return v18;
}

+ (BOOL)_shouldIncludeServiceWithDomain:(id)a3 fromBundleRecord:(id)a4 applicationIdentifier:(id)a5 developerModeEnabled:(BOOL)a6 enterpriseContext:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if ([v11 modeOfOperation])
  {
    if (!v8)
    {
      if (qword_10003AC58 != -1)
      {
        dispatch_once(&qword_10003AC58, &stru_100034AE0);
      }

      v23 = qword_10003AC50;
      if (!os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      v29 = v11;
      v17 = "Skipping domain %@ because developer mode is disabled";
LABEL_22:
      v18 = v23;
      v19 = 12;
LABEL_23:
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
      goto LABEL_24;
    }

    if (([v12 swc_isBuiltForDevelopment] & 1) == 0)
    {
      if (qword_10003AC58 != -1)
      {
        dispatch_once(&qword_10003AC58, &stru_100034AE0);
      }

      v16 = qword_10003AC50;
      if (!os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      *buf = 138412546;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v17 = "Skipping domain %@ because bundle %@ is not developer-signed";
      v18 = v16;
      v19 = 22;
      goto LABEL_23;
    }
  }

  if (([v11 modeOfOperation] & 2) != 0)
  {
    if (v14)
    {
      v27 = 0;
      v20 = [v14 isApplicationIdentifierEligibleForManagedMode:v13 error:&v27];
      v21 = v27;
      if (v20)
      {
        v22 = [v20 BOOLValue];

        if (v22)
        {
          v15 = 1;
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (qword_10003AC58 != -1)
        {
          dispatch_once(&qword_10003AC58, &stru_100034AE0);
        }

        v24 = qword_10003AC50;
        if (os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v11;
          v30 = 2112;
          v31 = v21;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to check if the MDM profile allows direct connections for %@: %@", buf, 0x16u);
        }
      }

      if (qword_10003AC58 != -1)
      {
        dispatch_once(&qword_10003AC58, &stru_100034AE0);
      }

      v25 = qword_10003AC50;
      if (os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Skipping domain %@ because the MDM profile does not allow directly connecting to it", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_34;
    }

    if (qword_10003AC58 != -1)
    {
      dispatch_once(&qword_10003AC58, &stru_100034AE0);
    }

    v23 = qword_10003AC50;
    if (!os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_DEBUG))
    {
LABEL_24:
      v15 = 0;
      goto LABEL_35;
    }

    *buf = 138412290;
    v29 = v11;
    v17 = "Skipping domain %@ because no MDM profile is active";
    goto LABEL_22;
  }

  v15 = 1;
LABEL_35:

  return v15;
}

+ (id)_deduplicateServicesByMode:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = objc_autoreleasePoolPush();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000A660;
  v9[3] = &unk_1000349E0;
  v6 = v4;
  v10 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];

  objc_autoreleasePoolPop(v5);
  v7 = [v6 copy];

  return v7;
}

+ (id)_enterpriseEntriesWithContext:(id)a3 forBundleRecord:(id)a4 applicationIdentifier:(id)a5
{
  v7 = a3;
  v33 = a4;
  v8 = a5;
  v38 = 0;
  v31 = v7;
  v9 = [v7 serviceSpecifiersForApplicationIdentifier:v8 error:&v38];
  v32 = v38;
  if (!v9)
  {
    if (qword_10003AC58 != -1)
    {
      dispatch_once(&qword_10003AC58, &stru_100034AE0);
    }

    v26 = qword_10003AC50;
    if (os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = v33;
      v42 = 2112;
      v43 = v32;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to get enterprise-supplied service specifiers for bundle record %@: %@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (![v9 count])
  {
    if (qword_10003AC58 != -1)
    {
      dispatch_once(&qword_10003AC58, &stru_100034AE0);
    }

    v27 = qword_10003AC50;
    if (!os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v41 = v33;
    v28 = "No enterprise-supplied services for bundle record %@";
    goto LABEL_36;
  }

  v10 = [v33 entitlements];
  v11 = [v10 objectForKey:@"com.apple.developer.associated-domains.mdm-managed" ofClass:objc_opt_class()];
  v12 = [v11 isEqual:&__kCFBooleanTrue];

  if (!v12)
  {
    if (qword_10003AC58 != -1)
    {
      dispatch_once(&qword_10003AC58, &stru_100034AE0);
    }

    v27 = qword_10003AC50;
    if (!os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v41 = v33;
    v28 = "Bundle record %@ does not want enterprise-supplied entries; skipping lookup";
LABEL_36:
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, v28, buf, 0xCu);
LABEL_31:
    v15 = 0;
    goto LABEL_32;
  }

  if (qword_10003AC58 != -1)
  {
    dispatch_once(&qword_10003AC58, &stru_100034AE0);
  }

  v13 = qword_10003AC50;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v9 count];
    *buf = 134218242;
    v41 = v30;
    v42 = 2112;
    v43 = v33;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%llu enterprise-supplied services for bundle record %@", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v9;
  v15 = 0;
  v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v16)
  {
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = [SWCEntry alloc];
        v21 = [v19 serviceType];
        v22 = [v19 SWCDomain];
        v23 = [(SWCEntry *)v20 initWithApplicationIdentifier:v8 service:v21 domain:v22];

        if (v23)
        {
          v24 = v23;
          v25 = [(SWCEntry *)v23 fields];
          *v25 |= 0x100u;
          if (!v15)
          {
            v15 = objc_alloc_init(NSMutableOrderedSet);
          }

          [v15 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v16);
  }

LABEL_32:

  return v15;
}

+ (void)_enumerateJSONFilesForBundleRecord:(id)a3 applicationIdentifier:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 URL];
  if (v11)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10000B7C8;
    v21 = &unk_100034A48;
    v22 = v10;
    v23 = &v24;
    v12 = objc_retainBlock(&v18);
    [a1 enumerateJSONResourceURLsForBundleURL:v11 block:{v12, v18, v19, v20, v21}];
    v13 = [v8 entitlements];
    v14 = [v13 objectForKey:@"com.apple.private.swc.additional-service-details-consumer" ofClass:objc_opt_class()];
    v15 = [v14 isEqual:&__kCFBooleanTrue];

    v16 = v15 ^ 1;
    if (!v9)
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v17 = [a1 additionalServiceDetailsDirectoryURLForApplicationIdentifier:v9 createParentIfNeeded:0 error:0];
      if ([v17 checkResourceIsReachableAndReturnError:0])
      {
        *(v25 + 24) = 3;
        [a1 enumerateJSONResourceURLsForDirectoryAtURL:v17 block:v12];
      }
    }

    _Block_object_dispose(&v24, 8);
  }
}

+ (id)_entriesFromBuiltInJSONForBundleRecord:(id)a3 applicationIdentifier:(id)a4
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000BCDC;
  v26 = sub_10000BCEC;
  v27 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000BCF4;
  v18[3] = &unk_100034A70;
  v20 = &v22;
  v21 = a1;
  v5 = a4;
  v19 = v5;
  [v21 _enumerateJSONFilesForBundleRecord:a3 applicationIdentifier:v5 block:v18];
  if (v23[5])
  {
    v6 = +[NSDate distantFuture];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v23[5];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v28 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * i) setLastCheckedDate:{v6, v14}];
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v28 count:16];
      }

      while (v8);
    }

    v11 = v23[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 copy];

  _Block_object_dispose(&v22, 8);

  return v12;
}

+ (void)_addEntryToOrderedSet:(id)a3 forUniversalLinksFromSingleDetailsDictionary:(id)a4 domain:(id)a5 substitutionVariables:(id)a6 defaults:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v31 = a7;
  v33 = [v12 objectForKeyedSubscript:@"appIDs"];
  v32 = [v12 objectForKeyedSubscript:@"appID"];
  v29 = [v12 objectForKeyedSubscript:@"relativeOrder"];
  LOBYTE(a7) = _SWCEnabledConfigurationGetFromDetails();
  v15 = [_SWCPatternList patternListWithDetailsDictionary:v12 defaults:v31];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000C3D8;
  v38[3] = &unk_100034A98;
  v16 = v13;
  v39 = v16;
  v30 = v15;
  v40 = v30;
  v17 = v14;
  v41 = v17;
  v44 = a7;
  v18 = v29;
  v42 = v18;
  v19 = v11;
  v43 = v19;
  v20 = objc_retainBlock(v38);
  if (v33 && _NSIsNSArray())
  {
    if (qword_10003AC58 != -1)
    {
      dispatch_once(&qword_10003AC58, &stru_100034AE0);
    }

    v21 = qword_10003AC50;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v33 count];
      *buf = 134218242;
      v47 = v22;
      v48 = 2112;
      v49 = v33;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "JSON entry had %llu appIDs: %@", buf, 0x16u);
    }

    v28 = v16;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v33;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v24)
    {
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v23);
          }

          (v20[2])(v20, *(*(&v34 + 1) + 8 * i));
        }

        v24 = [v23 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v24);
    }

    v16 = v28;
  }

  else
  {
    if (qword_10003AC58 != -1)
    {
      dispatch_once(&qword_10003AC58, &stru_100034AE0);
    }

    v27 = qword_10003AC50;
    if (os_log_type_enabled(qword_10003AC50, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "JSON entry had one appID: %@", buf, 0xCu);
    }

    (v20[2])(v20, v32);
  }
}

+ (void)_addEntriesToOrderedSet:(id)a3 forUniversalLinksFromDetailsArray:(id)a4 domain:(id)a5 substitutionVariables:(id)a6 defaults:(id)a7 maximum:(unint64_t)a8
{
  v23 = a3;
  v14 = a4;
  v24 = a5;
  v15 = a6;
  v16 = a7;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = *v26;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v26 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v25 + 1) + 8 * v21);
      if (_NSIsNSDictionary())
      {
        [a1 _addEntryToOrderedSet:v23 forUniversalLinksFromSingleDetailsDictionary:v22 domain:v24 substitutionVariables:v15 defaults:v16];
        if (++v19 >= a8)
        {
          break;
        }
      }

      if (v18 == ++v21)
      {
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v18)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (void)_addEntriesToOrderedSet:(id)a3 forUniversalLinksFromDetailsDictionary:(id)a4 domain:(id)a5 substitutionVariables:(id)a6 defaults:(id)a7 maximum:(unint64_t)a8
{
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000C898;
  v18[3] = &unk_100034AC0;
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = v26;
  v24 = a1;
  v25 = a8;
  v14 = v22;
  v15 = v21;
  v16 = v20;
  v17 = v19;
  [a4 enumerateKeysAndObjectsUsingBlock:v18];

  _Block_object_dispose(v26, 8);
}

+ (void)_addEntriesToOrderedSet:(id)a3 forService:(id)a4 fromAppsArray:(id)a5 domain:(id)a6
{
  v19 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if (_NSIsNSString())
        {
          v17 = [[_SWCApplicationIdentifier alloc] initWithString:v16];
          v18 = [[SWCEntry alloc] initWithApplicationIdentifier:v17 service:v9 domain:v11];
          [v19 addObject:v18];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

@end