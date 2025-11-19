@interface NDTMessage
- (NDTMessage)initWithData:(id)a3;
- (NDTMessage)initWithFile:(id)a3;
@end

@implementation NDTMessage

- (NDTMessage)initWithFile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NDTMessage;
  v6 = [(NDTMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
  }

  return v7;
}

- (NDTMessage)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NDTMessage;
  v6 = [(NDTMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

@end