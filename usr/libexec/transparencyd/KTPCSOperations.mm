@interface KTPCSOperations
+ (id)PCSOperationWithSpecificUser:(id)user;
- (KTPCSOperations)initWithSpecificUser:(id)user;
- (id)getCurrentKTPCSIdentity:(id)identity error:(id *)error;
- (void)createManateeIdentity:(id)identity service:(id)service complete:(id)complete;
- (void)dealloc;
@end

@implementation KTPCSOperations

+ (id)PCSOperationWithSpecificUser:(id)user
{
  userCopy = user;
  v5 = [[self alloc] initWithSpecificUser:userCopy];

  return v5;
}

- (KTPCSOperations)initWithSpecificUser:(id)user
{
  userCopy = user;
  v17.receiver = self;
  v17.super_class = KTPCSOperations;
  cf = 0;
  v5 = [(KTPCSOperations *)&v17 init];
  if (!v5)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_18;
  }

  dsid = [userCopy dsid];
  [(KTPCSOperations *)v5 setDsid:dsid];

  dsid2 = [(KTPCSOperations *)v5 dsid];

  if (!dsid2)
  {
    if (qword_10039CB40 != -1)
    {
      sub_10025D48C();
    }

    v14 = qword_10039CB48;
    if (os_log_type_enabled(qword_10039CB48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "initWithSpecificUser dsid is NULL", buf, 2u);
    }

    goto LABEL_9;
  }

  altDSID = [userCopy altDSID];
  [(KTPCSOperations *)v5 setAltDSID:altDSID];

  v21 = kPCSSetupDSID;
  dsid3 = [(KTPCSOperations *)v5 dsid];
  v22 = dsid3;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v11 = [v10 mutableCopy];

  altDSID2 = [(KTPCSOperations *)v5 altDSID];
  [v11 setObject:altDSID2 forKeyedSubscript:kPCSSetupAltDSID];

  [(KTPCSOperations *)v5 setSet:PCSIdentitySetCreate()];
  if ([(KTPCSOperations *)v5 set])
  {
    v13 = v5;
  }

  else
  {
    if (qword_10039CB40 != -1)
    {
      sub_10025D464();
    }

    v15 = qword_10039CB48;
    if (os_log_type_enabled(qword_10039CB48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = cf;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "PCSIdentitySetCreate: %@", buf, 0xCu);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v13 = 0;
  }

LABEL_18:
  return v13;
}

- (void)dealloc
{
  set = self->_set;
  if (set)
  {
    CFRelease(set);
    self->_set = 0;
  }

  v4.receiver = self;
  v4.super_class = KTPCSOperations;
  [(KTPCSOperations *)&v4 dealloc];
}

- (void)createManateeIdentity:(id)identity service:(id)service complete:(id)complete
{
  completeCopy = complete;
  v16[0] = kPCSSetupDSID;
  serviceCopy = service;
  identityCopy = identity;
  dsid = [(KTPCSOperations *)self dsid];
  v16[1] = kPCSSetupSyncIdentity;
  v17[0] = dsid;
  v17[1] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [v12 mutableCopy];

  altDSID = [(KTPCSOperations *)self altDSID];
  [v13 setObject:altDSID forKeyedSubscript:kPCSSetupAltDSID];

  LODWORD(altDSID) = [identityCopy roll];
  if (altDSID)
  {
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kPCSSetupRollIdentity];
  }

  [(KTPCSOperations *)self set];
  v15 = completeCopy;
  PCSIdentitySetCreateManatee();
}

- (id)getCurrentKTPCSIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v7 = kTransparencyFlagForceCDPWaiting;
  if ([TransparencySettings getBool:kTransparencyFlagForceCDPWaiting defaultValue:0])
  {
    v8 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-350 description:@"Identity creation failed: %@ set", v7];
    if (error && v8)
    {
      v8 = v8;
      *error = v8;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_12;
  }

  [(KTPCSOperations *)self set];
  v9 = PCSIdentitySetCopyCurrentIdentityPointer();
  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      dsid = [(KTPCSOperations *)self dsid];
      altDSID = [(KTPCSOperations *)self altDSID];
      *buf = 138412802;
      v14 = dsid;
      v15 = 2112;
      v16 = altDSID;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PCSIdentitySetCopyCurrentIdentityWithError: %@[%@] %@", buf, 0x20u);
    }

    if (!error)
    {
      goto LABEL_6;
    }

    v9 = 0;
    *error = 0;
  }

LABEL_12:

  return v9;
}

@end