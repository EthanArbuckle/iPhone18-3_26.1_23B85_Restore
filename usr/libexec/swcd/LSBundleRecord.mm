@interface LSBundleRecord
- (BOOL)swc_isBuiltForDevelopment;
- (BOOL)swc_linkedOnOrAfter:(id)after;
@end

@implementation LSBundleRecord

- (BOOL)swc_linkedOnOrAfter:(id)after
{
  afterCopy = after;
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  sDKVersion = [(LSBundleRecord *)self SDKVersion];
  v7 = [v5 isVersion:sDKVersion greaterThanOrEqualToVersion:afterCopy];

  return v7;
}

- (BOOL)swc_isBuiltForDevelopment
{
  isProfileValidated = [(LSBundleRecord *)self isProfileValidated];
  if (isProfileValidated)
  {
    if (([(LSBundleRecord *)self isUPPValidated]& 1) != 0)
    {
      LOBYTE(isProfileValidated) = 0;
    }

    else if (objc_opt_respondsToSelector())
    {
      LOBYTE(isProfileValidated) = [(LSBundleRecord *)self isBeta]^ 1;
    }

    else
    {
      LOBYTE(isProfileValidated) = 1;
    }
  }

  return isProfileValidated;
}

@end