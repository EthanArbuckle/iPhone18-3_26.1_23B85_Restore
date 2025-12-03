@interface FMDIdentityInfo
- (FMDIdentityInfo)initWithDictionary:(id)dictionary;
- (FMDIdentityInfo)initWithVersion:(int64_t)version timeoutIntervalInSec:(int64_t)sec commandID:(id)d identityURL:(id)l;
- (NSDictionary)dictionaryValue;
@end

@implementation FMDIdentityInfo

- (FMDIdentityInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  integerValue = [v5 integerValue];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"timeout"];
  integerValue2 = [v7 integerValue];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"commandID"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"identityURL"];

  v11 = [(FMDIdentityInfo *)self initWithVersion:integerValue timeoutIntervalInSec:integerValue2 commandID:v9 identityURL:v10];
  return v11;
}

- (FMDIdentityInfo)initWithVersion:(int64_t)version timeoutIntervalInSec:(int64_t)sec commandID:(id)d identityURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = FMDIdentityInfo;
  v13 = [(FMDIdentityInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_version = version;
    v13->_timeoutIntervalInSec = sec;
    objc_storeStrong(&v13->_commandID, d);
    objc_storeStrong(&v14->_identityURL, l);
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

  commandID = [(FMDIdentityInfo *)self commandID];

  if (commandID)
  {
    commandID2 = [(FMDIdentityInfo *)self commandID];
    [v3 setObject:commandID2 forKeyedSubscript:@"commandID"];
  }

  identityURL = [(FMDIdentityInfo *)self identityURL];

  if (identityURL)
  {
    identityURL2 = [(FMDIdentityInfo *)self identityURL];
    [v3 setObject:identityURL2 forKeyedSubscript:@"identityURL"];
  }

  v10 = [v3 copy];

  return v10;
}

@end