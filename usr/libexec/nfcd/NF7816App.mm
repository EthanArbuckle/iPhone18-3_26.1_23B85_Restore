@interface NF7816App
+ (NF7816App)appWithAid:(id)aid type:(int64_t)type;
- (NF7816App)initWithAid:(id)aid type:(int64_t)type;
- (id)description;
@end

@implementation NF7816App

- (NF7816App)initWithAid:(id)aid type:(int64_t)type
{
  aidCopy = aid;
  v11.receiver = self;
  v11.super_class = NF7816App;
  v8 = [(NF7816App *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_aid, aid);
    v9->_type = type;
  }

  return v9;
}

+ (NF7816App)appWithAid:(id)aid type:(int64_t)type
{
  aidCopy = aid;
  v6 = [[NF7816App alloc] initWithAid:aidCopy type:type];

  return v6;
}

- (id)description
{
  type = self->_type;
  if (type > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_10031A3A0 + type);
  }

  v4 = [[NSString alloc] initWithFormat:@"%@-%@", self->_aid, v3];

  return v4;
}

@end