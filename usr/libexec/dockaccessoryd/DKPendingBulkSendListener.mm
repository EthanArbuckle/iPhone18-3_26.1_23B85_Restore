@interface DKPendingBulkSendListener
- (DKPendingBulkSendListener)initWithListener:(id)listener fileType:(id)type;
- (DataStreamBulkSendListener)listener;
@end

@implementation DKPendingBulkSendListener

- (DKPendingBulkSendListener)initWithListener:(id)listener fileType:(id)type
{
  listenerCopy = listener;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = DKPendingBulkSendListener;
  v8 = [(DKPendingBulkSendListener *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listener, listenerCopy);
    objc_storeStrong(&v9->_fileType, type);
  }

  return v9;
}

- (DataStreamBulkSendListener)listener
{
  WeakRetained = objc_loadWeakRetained(&self->_listener);

  return WeakRetained;
}

@end