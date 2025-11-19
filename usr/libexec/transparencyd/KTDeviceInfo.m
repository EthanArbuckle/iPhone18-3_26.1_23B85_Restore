@interface KTDeviceInfo
- (id)modelID;
- (id)osVersion;
- (id)serialNumber;
@end

@implementation KTDeviceInfo

- (id)modelID
{
  if (qword_10039CBF0 != -1)
  {
    sub_10025DC5C();
  }

  v3 = qword_10039CBE8;

  return v3;
}

- (id)osVersion
{
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = 256;
  v2 = sysctlbyname("kern.osrelease", v12, &v9, 0, 0);
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 256;
  if (sysctlbyname("kern.osversion", v10, &v8, 0, 0) | v2 || (HIBYTE(v13) = 0, HIBYTE(v11) = 0, [NSString stringWithFormat:@"%s (%s)", v12, v10], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = +[NSProcessInfo processInfo];
    v4 = [v3 operatingSystemVersionString];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"Version" withString:&stru_10032E8E8];
  }

  v6 = [NSString stringWithFormat:@"%@", v5];

  return v6;
}

- (id)serialNumber
{
  v2 = MGCopyAnswerWithError();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

@end