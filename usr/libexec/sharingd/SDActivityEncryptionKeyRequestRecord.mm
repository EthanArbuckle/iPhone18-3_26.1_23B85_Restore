@interface SDActivityEncryptionKeyRequestRecord
- (id)description;
- (void)dealloc;
@end

@implementation SDActivityEncryptionKeyRequestRecord

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_linkClient invalidate];
  v3.receiver = self;
  v3.super_class = SDActivityEncryptionKeyRequestRecord;
  [(SDActivityEncryptionKeyRequestRecord *)&v3 dealloc];
}

- (id)description
{
  linkClient = self->_linkClient;
  if (linkClient)
  {
    linkClient = [NSString stringWithFormat:@"linkClient: <%@>, ", linkClient];
  }

  else
  {
    linkClient = &stru_1008EFBD0;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  previousKeyIdentifier = self->_previousKeyIdentifier;
  v11.receiver = self;
  v11.super_class = SDActivityEncryptionKeyRequestRecord;
  v8 = [(SDActivityRequestRecord *)&v11 description];
  v9 = [NSString stringWithFormat:@"<%@: %p, previousKeyIdentifier:%@, %@%@>", v6, self, previousKeyIdentifier, linkClient, v8];

  return v9;
}

@end