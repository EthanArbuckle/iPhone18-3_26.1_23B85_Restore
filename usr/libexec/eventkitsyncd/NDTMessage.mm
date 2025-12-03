@interface NDTMessage
- (NDTMessage)initWithData:(id)data;
- (NDTMessage)initWithFile:(id)file;
@end

@implementation NDTMessage

- (NDTMessage)initWithFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = NDTMessage;
  v6 = [(NDTMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, file);
  }

  return v7;
}

- (NDTMessage)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = NDTMessage;
  v6 = [(NDTMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

@end