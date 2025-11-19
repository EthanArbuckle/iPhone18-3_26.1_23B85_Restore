@interface NFAsserter
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualType:(id)a3;
- (NFAsserter)initWithRemoteAssertion:(id)a3 xpcConnection:(id)a4;
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
  v4 = [(NFAsserter *)self remoteAssertion];
  v5 = [v4 description];
  v6 = [v3 initWithFormat:@"%@, state=%lu", v5, -[NFAsserter state](self, "state")];

  return v6;
}

- (NFAsserter)initWithRemoteAssertion:(id)a3 xpcConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NFAsserter;
  v9 = [(NFAsserter *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteAssertion, a3);
    objc_storeWeak(&v10->_xpc, v8);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NFAsserter *)self remoteAssertion];
      v6 = [(NFAsserter *)v4 remoteAssertion];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v5 = [(NFAsserter *)self remoteAssertion];
      v7 = [v5 isEqual:v4];
    }
  }

LABEL_9:

  return v7;
}

- (BOOL)isEqualType:(id)a3
{
  v4 = a3;
  v5 = [(NFAsserter *)self remoteAssertion];
  v6 = [v5 assertionType];
  v7 = [v4 remoteAssertion];

  LOBYTE(v4) = v6 == [v7 assertionType];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(NFAsserter *)self remoteAssertion];
  v3 = [v2 hash];

  return v3;
}

- (NSXPCConnection)xpc
{
  WeakRetained = objc_loadWeakRetained(&self->_xpc);

  return WeakRetained;
}

@end