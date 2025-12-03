@interface DataStreamBulkSendSessionCandidate
- (DataStreamBulkSendProtocol)bulkSendProtocol;
- (DataStreamBulkSendSessionCandidate)initWithProtocol:(id)protocol requestHeader:(id)header metadata:(id)metadata;
- (void)acceptBulkSendSessionOnQueue:(id)queue callback:(id)callback;
@end

@implementation DataStreamBulkSendSessionCandidate

- (DataStreamBulkSendSessionCandidate)initWithProtocol:(id)protocol requestHeader:(id)header metadata:(id)metadata
{
  protocolCopy = protocol;
  headerCopy = header;
  metadataCopy = metadata;
  v16.receiver = self;
  v16.super_class = DataStreamBulkSendSessionCandidate;
  v11 = [(DataStreamBulkSendSessionCandidate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_bulkSendProtocol, protocolCopy);
    objc_storeStrong(&v12->_requestHeader, header);
    v13 = +[NSMutableArray array];
    pendingReads = v12->_pendingReads;
    v12->_pendingReads = v13;

    objc_storeStrong(&v12->_metadata, metadata);
  }

  return v12;
}

- (void)acceptBulkSendSessionOnQueue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  queueCopy = queue;
  bulkSendProtocol = [(DataStreamBulkSendSessionCandidate *)self bulkSendProtocol];
  [bulkSendProtocol asyncBulkSendSessionCandidate:self didAcceptOnQueue:queueCopy callback:callbackCopy];
}

- (DataStreamBulkSendProtocol)bulkSendProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_bulkSendProtocol);

  return WeakRetained;
}

@end