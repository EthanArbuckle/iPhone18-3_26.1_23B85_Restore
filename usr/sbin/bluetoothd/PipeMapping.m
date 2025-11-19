@interface PipeMapping
- (PipeMapping)initWithIdentifier:(id)a3 handle:(unsigned __int16)a4;
@end

@implementation PipeMapping

- (PipeMapping)initWithIdentifier:(id)a3 handle:(unsigned __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PipeMapping;
  v8 = [(PipeMapping *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_pipeHandle = a4;
  }

  return v9;
}

@end