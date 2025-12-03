@interface PipeMapping
- (PipeMapping)initWithIdentifier:(id)identifier handle:(unsigned __int16)handle;
@end

@implementation PipeMapping

- (PipeMapping)initWithIdentifier:(id)identifier handle:(unsigned __int16)handle
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PipeMapping;
  v8 = [(PipeMapping *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_pipeHandle = handle;
  }

  return v9;
}

@end