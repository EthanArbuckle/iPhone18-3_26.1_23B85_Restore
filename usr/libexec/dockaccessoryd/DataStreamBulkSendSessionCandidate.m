@interface DataStreamBulkSendSessionCandidate
- (DataStreamBulkSendProtocol)bulkSendProtocol;
- (DataStreamBulkSendSessionCandidate)initWithProtocol:(id)a3 requestHeader:(id)a4 metadata:(id)a5;
- (void)acceptBulkSendSessionOnQueue:(id)a3 callback:(id)a4;
@end

@implementation DataStreamBulkSendSessionCandidate

- (DataStreamBulkSendSessionCandidate)initWithProtocol:(id)a3 requestHeader:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = DataStreamBulkSendSessionCandidate;
  v11 = [(DataStreamBulkSendSessionCandidate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_bulkSendProtocol, v8);
    objc_storeStrong(&v12->_requestHeader, a4);
    v13 = +[NSMutableArray array];
    pendingReads = v12->_pendingReads;
    v12->_pendingReads = v13;

    objc_storeStrong(&v12->_metadata, a5);
  }

  return v12;
}

- (void)acceptBulkSendSessionOnQueue:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DataStreamBulkSendSessionCandidate *)self bulkSendProtocol];
  [v8 asyncBulkSendSessionCandidate:self didAcceptOnQueue:v7 callback:v6];
}

- (DataStreamBulkSendProtocol)bulkSendProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_bulkSendProtocol);

  return WeakRetained;
}

@end