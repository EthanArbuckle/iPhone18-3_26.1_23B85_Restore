@interface KTPCSOperations
+ (id)PCSOperationWithSpecificUser:(id)a3;
- (KTPCSOperations)initWithSpecificUser:(id)a3;
- (id)getCurrentKTPCSIdentity:(id)a3 error:(id *)a4;
- (void)createManateeIdentity:(id)a3 service:(id)a4 complete:(id)a5;
- (void)dealloc;
@end

@implementation KTPCSOperations

+ (id)PCSOperationWithSpecificUser:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSpecificUser:v4];

  return v5;
}

- (KTPCSOperations)initWithSpecificUser:(id)a3
{
  v4 = a3;
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

  v6 = [v4 dsid];
  [(KTPCSOperations *)v5 setDsid:v6];

  v7 = [(KTPCSOperations *)v5 dsid];

  if (!v7)
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

  v8 = [v4 altDSID];
  [(KTPCSOperations *)v5 setAltDSID:v8];

  v21 = kPCSSetupDSID;
  v9 = [(KTPCSOperations *)v5 dsid];
  v22 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v11 = [v10 mutableCopy];

  v12 = [(KTPCSOperations *)v5 altDSID];
  [v11 setObject:v12 forKeyedSubscript:kPCSSetupAltDSID];

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

- (void)createManateeIdentity:(id)a3 service:(id)a4 complete:(id)a5
{
  v8 = a5;
  v16[0] = kPCSSetupDSID;
  v9 = a4;
  v10 = a3;
  v11 = [(KTPCSOperations *)self dsid];
  v16[1] = kPCSSetupSyncIdentity;
  v17[0] = v11;
  v17[1] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [v12 mutableCopy];

  v14 = [(KTPCSOperations *)self altDSID];
  [v13 setObject:v14 forKeyedSubscript:kPCSSetupAltDSID];

  LODWORD(v14) = [v10 roll];
  if (v14)
  {
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kPCSSetupRollIdentity];
  }

  [(KTPCSOperations *)self set];
  v15 = v8;
  PCSIdentitySetCreateManatee();
}

- (id)getCurrentKTPCSIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = kTransparencyFlagForceCDPWaiting;
  if ([TransparencySettings getBool:kTransparencyFlagForceCDPWaiting defaultValue:0])
  {
    v8 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-350 description:@"Identity creation failed: %@ set", v7];
    if (a4 && v8)
    {
      v8 = v8;
      *a4 = v8;
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
      v10 = [(KTPCSOperations *)self dsid];
      v11 = [(KTPCSOperations *)self altDSID];
      *buf = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PCSIdentitySetCopyCurrentIdentityWithError: %@[%@] %@", buf, 0x20u);
    }

    if (!a4)
    {
      goto LABEL_6;
    }

    v9 = 0;
    *a4 = 0;
  }

LABEL_12:

  return v9;
}

@end