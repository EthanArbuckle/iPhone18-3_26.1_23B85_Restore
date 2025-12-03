@interface DataStreamBulkSendOpenSessionResult
- (DataStreamBulkSendOpenSessionResult)initWithSession:(id)session payload:(id)payload;
- (id)attributeDescriptions;
@end

@implementation DataStreamBulkSendOpenSessionResult

- (DataStreamBulkSendOpenSessionResult)initWithSession:(id)session payload:(id)payload
{
  sessionCopy = session;
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = DataStreamBulkSendOpenSessionResult;
  v9 = [(DataStreamBulkSendOpenSessionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_payload, payload);
  }

  return v10;
}

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  session = [(DataStreamBulkSendOpenSessionResult *)self session];
  v5 = [v3 initWithName:@"session" value:session];
  v11[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  payload = [(DataStreamBulkSendOpenSessionResult *)self payload];
  v8 = [v6 initWithName:@"payload" value:payload];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

@end