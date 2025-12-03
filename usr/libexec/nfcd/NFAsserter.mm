@interface NFAsserter
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualType:(id)type;
- (NFAsserter)initWithRemoteAssertion:(id)assertion xpcConnection:(id)connection;
- (NSString)description;
- (NSXPCConnection)xpc;
- (id)onAssert;
- (id)onDeassert;
- (unint64_t)hash;
@end

@implementation NFAsserter

- (NSString)description
{
  v3 = [NSString alloc];
  remoteAssertion = [(NFAsserter *)self remoteAssertion];
  v5 = [remoteAssertion description];
  v6 = [v3 initWithFormat:@"%@, state=%lu", v5, -[NFAsserter state](self, "state")];

  return v6;
}

- (NFAsserter)initWithRemoteAssertion:(id)assertion xpcConnection:(id)connection
{
  assertionCopy = assertion;
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = NFAsserter;
  v9 = [(NFAsserter *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteAssertion, assertion);
    objc_storeWeak(&v10->_xpc, connectionCopy);
    v10->_state = 0;
    v11 = v10;
  }

  return v10;
}

- (id)onAssert
{
  [(NFAsserter *)self setState:2];
  v2 = [NSError alloc];
  v3 = [NSString stringWithUTF8String:"nfcd"];
  v8 = NSLocalizedDescriptionKey;
  v4 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v2 initWithDomain:v3 code:14 userInfo:v5];

  return v6;
}

- (id)onDeassert
{
  [(NFAsserter *)self setState:4];
  v2 = [NSError alloc];
  v3 = [NSString stringWithUTF8String:"nfcd"];
  v8 = NSLocalizedDescriptionKey;
  v4 = [NSString stringWithUTF8String:"Feature Not Supported"];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v2 initWithDomain:v3 code:14 userInfo:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      remoteAssertion = [(NFAsserter *)self remoteAssertion];
      remoteAssertion2 = [(NFAsserter *)equalCopy remoteAssertion];
      v7 = [remoteAssertion isEqual:remoteAssertion2];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_9;
      }

      remoteAssertion = [(NFAsserter *)self remoteAssertion];
      v7 = [remoteAssertion isEqual:equalCopy];
    }
  }

LABEL_9:

  return v7;
}

- (BOOL)isEqualType:(id)type
{
  typeCopy = type;
  remoteAssertion = [(NFAsserter *)self remoteAssertion];
  assertionType = [remoteAssertion assertionType];
  remoteAssertion2 = [typeCopy remoteAssertion];

  LOBYTE(typeCopy) = assertionType == [remoteAssertion2 assertionType];
  return typeCopy;
}

- (unint64_t)hash
{
  remoteAssertion = [(NFAsserter *)self remoteAssertion];
  v3 = [remoteAssertion hash];

  return v3;
}

- (NSXPCConnection)xpc
{
  WeakRetained = objc_loadWeakRetained(&self->_xpc);

  return WeakRetained;
}

@end