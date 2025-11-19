@interface DataStreamBulkSendOpenSessionResult
- (DataStreamBulkSendOpenSessionResult)initWithSession:(id)a3 payload:(id)a4;
- (id)attributeDescriptions;
@end

@implementation DataStreamBulkSendOpenSessionResult

- (DataStreamBulkSendOpenSessionResult)initWithSession:(id)a3 payload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DataStreamBulkSendOpenSessionResult;
  v9 = [(DataStreamBulkSendOpenSessionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    objc_storeStrong(&v10->_payload, a4);
  }

  return v10;
}

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  v4 = [(DataStreamBulkSendOpenSessionResult *)self session];
  v5 = [v3 initWithName:@"session" value:v4];
  v11[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  v7 = [(DataStreamBulkSendOpenSessionResult *)self payload];
  v8 = [v6 initWithName:@"payload" value:v7];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

@end