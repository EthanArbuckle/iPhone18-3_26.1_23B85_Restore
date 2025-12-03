@interface KCSharingUserEntity
- (BOOL)isEqual:(id)equal;
- (KCSharingUserEntity)initWithCBORData:(id)data error:(id *)error;
- (KCSharingUserEntity)initWithUserHandle:(id)handle;
- (NSData)CBORData;
- (unint64_t)hash;
@end

@implementation KCSharingUserEntity

- (NSData)CBORData
{
  v3 = [CBOR cborWithUTF8String:@"id"];
  v10 = v3;
  userHandle = [(KCSharingUserEntity *)self userHandle];
  v5 = [CBOR cborWithData:userHandle];
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [CBOR cborWithDictionary:v6];

  v8 = [NSData dataWithCBOR:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if ([(KCSharingUserEntity *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    userHandle = [(KCSharingUserEntity *)self userHandle];
    userHandle2 = [(KCSharingUserEntity *)v5 userHandle];

    v8 = [userHandle isEqualToData:userHandle2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  userHandle = [(KCSharingUserEntity *)self userHandle];
  v3 = [userHandle hash];

  return v3;
}

- (KCSharingUserEntity)initWithUserHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = KCSharingUserEntity;
  v5 = [(KCSharingUserEntity *)&v9 init];
  if (v5)
  {
    v6 = [handleCopy copy];
    userHandle = v5->_userHandle;
    v5->_userHandle = v6;
  }

  return v5;
}

- (KCSharingUserEntity)initWithCBORData:(id)data error:(id *)error
{
  v6 = [CBOR decodeFromData:data];
  dictionary = [v6 dictionary];
  v8 = [CBOR cborWithUTF8String:@"id"];
  v9 = [dictionary objectForKeyedSubscript:v8];
  data = [v9 data];

  if (data)
  {
    self = [(KCSharingUserEntity *)self initWithUserHandle:data];
    selfCopy = self;
  }

  else
  {
    sub_100061E2C(error, 19, 0);
    selfCopy = 0;
  }

  return selfCopy;
}

@end