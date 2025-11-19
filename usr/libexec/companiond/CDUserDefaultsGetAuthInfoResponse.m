@interface CDUserDefaultsGetAuthInfoResponse
- (CDUserDefaultsGetAuthInfoResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDUserDefaultsGetAuthInfoResponse

- (CDUserDefaultsGetAuthInfoResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CDUserDefaultsGetAuthInfoResponse;
  v5 = [(CDUserDefaultsGetAuthInfoResponse *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 objectForKeyedSubscript:@"userDefaultsReadInfo"];
    v8 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:v6 fromData:v7 error:0];
    readInfo = v5->_readInfo;
    v5->_readInfo = v8;

    v10 = objc_opt_class();
    v11 = [v4 objectForKeyedSubscript:@"userDefaultsWriteInfo"];
    v12 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:v10 fromData:v11 error:0];
    writeInfo = v5->_writeInfo;
    v5->_writeInfo = v12;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = sub_1000129F0(self->_readInfo);
  [v3 setObject:v4 forKeyedSubscript:@"userDefaultsReadInfo"];

  v5 = sub_1000129F0(self->_writeInfo);
  [v3 setObject:v5 forKeyedSubscript:@"userDefaultsWriteInfo"];

  v6 = [v3 copy];

  return v6;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_readInfo withName:@"readInfo"];
  v5 = [v3 appendObject:self->_writeInfo withName:@"writeInfo"];
  v6 = [v3 build];

  return v6;
}

@end