@interface SDActivityPayloadRequestRecord
- (id)description;
- (void)dealloc;
@end

@implementation SDActivityPayloadRequestRecord

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_linkClient invalidate];
  v3.receiver = self;
  v3.super_class = SDActivityPayloadRequestRecord;
  [(SDActivityPayloadRequestRecord *)&v3 dealloc];
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
  advertisementPayload = self->_advertisementPayload;
  v8 = SFHexStringForData();
  command = self->_command;
  v13.receiver = self;
  v13.super_class = SDActivityPayloadRequestRecord;
  v10 = [(SDActivityRequestRecord *)&v13 description];
  v11 = [NSString stringWithFormat:@"<%@: %p, advertisementPayload:%@, command:%@, %@%@>", v6, self, v8, command, linkClient, v10];

  return v11;
}

@end