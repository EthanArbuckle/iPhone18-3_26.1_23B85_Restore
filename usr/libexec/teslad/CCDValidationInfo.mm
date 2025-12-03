@interface CCDValidationInfo
- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)dictionary resultsDictionary:(id)resultsDictionary;
- (BOOL)validateSelfWithDictionary:(id)dictionary resultsDictionary:(id)resultsDictionary;
- (CCDValidationInfo)initWithName:(id)name validationInfo:(id)info;
@end

@implementation CCDValidationInfo

- (CCDValidationInfo)initWithName:(id)name validationInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CCDValidationInfo;
  v9 = [(CCDValidationInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = [infoCopy objectForKeyedSubscript:@"isRequired"];
    v10->_isRequired = [v11 BOOLValue];

    objc_storeStrong(&v10->_validationInfo, info);
  }

  return v10;
}

- (BOOL)validateSelfWithDictionary:(id)dictionary resultsDictionary:(id)resultsDictionary
{
  dictionaryCopy = dictionary;
  resultsDictionaryCopy = resultsDictionary;
  name = [(CCDValidationInfo *)self name];
  v9 = [dictionaryCopy objectForKeyedSubscript:name];

  if (v9)
  {
    LOBYTE(self) = [(CCDValidationInfo *)self validateSelfUsingValidationInfoWithDictionary:dictionaryCopy resultsDictionary:resultsDictionaryCopy];
  }

  else
  {
    LODWORD(self) = ![(CCDValidationInfo *)self isRequired];
  }

  return self;
}

- (BOOL)validateSelfUsingValidationInfoWithDictionary:(id)dictionary resultsDictionary:(id)resultsDictionary
{
  dictionaryCopy = dictionary;
  resultsDictionaryCopy = resultsDictionary;
  __assert_rtn("[CCDValidationInfo validateSelfUsingValidationInfoWithDictionary:resultsDictionary:]", "CCDValidationInfo.m", 50, "0");
}

@end