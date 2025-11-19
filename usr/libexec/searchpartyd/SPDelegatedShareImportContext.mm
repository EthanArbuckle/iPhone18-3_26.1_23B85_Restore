@interface SPDelegatedShareImportContext
- (SPDelegatedShareImportContext)initWithCoder:(id)a3;
- (SPDelegatedShareImportContext)initWithUrl:(id)a3;
- (SPDelegatedShareImportContext)initWithUrl:(id)a3 callbackValue:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDelegatedShareImportContext

- (SPDelegatedShareImportContext)initWithUrl:(id)a3 callbackValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPDelegatedShareImportContext;
  v9 = [(SPDelegatedShareImportContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputUrl, a3);
    objc_storeStrong(&v10->_callbackValue, a4);
  }

  return v10;
}

- (SPDelegatedShareImportContext)initWithUrl:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SPDelegatedShareImportContext;
  v6 = [(SPDelegatedShareImportContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputUrl, a3);
    callbackValue = v7->_callbackValue;
    v7->_callbackValue = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  callbackValue = self->_callbackValue;
  v5 = a3;
  [v5 encodeObject:callbackValue forKey:@"callbackValue"];
  [v5 encodeObject:self->_inputUrl forKey:@"inputUrl"];
}

- (SPDelegatedShareImportContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputUrl"];
  inputUrl = self->_inputUrl;
  self->_inputUrl = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callbackValue"];

  callbackValue = self->_callbackValue;
  self->_callbackValue = v7;

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPDelegatedShareImportContext alloc];
  inputUrl = self->_inputUrl;
  callbackValue = self->_callbackValue;

  return [(SPDelegatedShareImportContext *)v4 initWithUrl:inputUrl callbackValue:callbackValue];
}

@end