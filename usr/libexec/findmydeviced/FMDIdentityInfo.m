@interface FMDIdentityInfo
- (FMDIdentityInfo)initWithDictionary:(id)a3;
- (FMDIdentityInfo)initWithVersion:(int64_t)a3 timeoutIntervalInSec:(int64_t)a4 commandID:(id)a5 identityURL:(id)a6;
- (NSDictionary)dictionaryValue;
@end

@implementation FMDIdentityInfo

- (FMDIdentityInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"version"];
  v6 = [v5 integerValue];
  v7 = [v4 objectForKeyedSubscript:@"timeout"];
  v8 = [v7 integerValue];
  v9 = [v4 objectForKeyedSubscript:@"commandID"];
  v10 = [v4 objectForKeyedSubscript:@"identityURL"];

  v11 = [(FMDIdentityInfo *)self initWithVersion:v6 timeoutIntervalInSec:v8 commandID:v9 identityURL:v10];
  return v11;
}

- (FMDIdentityInfo)initWithVersion:(int64_t)a3 timeoutIntervalInSec:(int64_t)a4 commandID:(id)a5 identityURL:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = FMDIdentityInfo;
  v13 = [(FMDIdentityInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_version = a3;
    v13->_timeoutIntervalInSec = a4;
    objc_storeStrong(&v13->_commandID, a5);
    objc_storeStrong(&v14->_identityURL, a6);
  }

  return v14;
}

- (NSDictionary)dictionaryValue
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInteger:[(FMDIdentityInfo *)self version]];
  [v3 setObject:v4 forKeyedSubscript:@"version"];

  v5 = [NSNumber numberWithInteger:[(FMDIdentityInfo *)self timeoutIntervalInSec]];
  [v3 setObject:v5 forKeyedSubscript:@"timeout"];

  v6 = [(FMDIdentityInfo *)self commandID];

  if (v6)
  {
    v7 = [(FMDIdentityInfo *)self commandID];
    [v3 setObject:v7 forKeyedSubscript:@"commandID"];
  }

  v8 = [(FMDIdentityInfo *)self identityURL];

  if (v8)
  {
    v9 = [(FMDIdentityInfo *)self identityURL];
    [v3 setObject:v9 forKeyedSubscript:@"identityURL"];
  }

  v10 = [v3 copy];

  return v10;
}

@end