@interface CCDValidationInfo
- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)a3 resultsDictionary:(id)a4;
- (BOOL)validateSelfWithDictionary:(id)a3 resultsDictionary:(id)a4;
- (CCDValidationInfo)initWithName:(id)a3 validationInfo:(id)a4;
@end

@implementation CCDValidationInfo

- (CCDValidationInfo)initWithName:(id)a3 validationInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CCDValidationInfo;
  v9 = [(CCDValidationInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v11 = [v8 objectForKeyedSubscript:@"isRequired"];
    v10->_isRequired = [v11 BOOLValue];

    objc_storeStrong(&v10->_validationInfo, a4);
  }

  return v10;
}

- (BOOL)validateSelfWithDictionary:(id)a3 resultsDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CCDValidationInfo *)self name];
  v9 = [v6 objectForKeyedSubscript:v8];

  if (v9)
  {
    LOBYTE(self) = [(CCDValidationInfo *)self validateSelfUsingValidationInfoWithDictionary:v6 resultsDictionary:v7];
  }

  else
  {
    LODWORD(self) = ![(CCDValidationInfo *)self isRequired];
  }

  return self;
}

- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)a3 resultsDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CCDValidationInfo validateSelfUsingValidationInfoWithDictionary:resultsDictionary:]", "CCDValidationInfo.m", 50, "0");
}

@end