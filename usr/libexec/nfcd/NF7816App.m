@interface NF7816App
+ (NF7816App)appWithAid:(id)a3 type:(int64_t)a4;
- (NF7816App)initWithAid:(id)a3 type:(int64_t)a4;
- (id)description;
@end

@implementation NF7816App

- (NF7816App)initWithAid:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NF7816App;
  v8 = [(NF7816App *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_aid, a3);
    v9->_type = a4;
  }

  return v9;
}

+ (NF7816App)appWithAid:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = [[NF7816App alloc] initWithAid:v5 type:a4];

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