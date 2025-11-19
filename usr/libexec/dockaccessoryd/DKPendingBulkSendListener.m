@interface DKPendingBulkSendListener
- (DKPendingBulkSendListener)initWithListener:(id)a3 fileType:(id)a4;
- (DataStreamBulkSendListener)listener;
@end

@implementation DKPendingBulkSendListener

- (DKPendingBulkSendListener)initWithListener:(id)a3 fileType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DKPendingBulkSendListener;
  v8 = [(DKPendingBulkSendListener *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listener, v6);
    objc_storeStrong(&v9->_fileType, a4);
  }

  return v9;
}

- (DataStreamBulkSendListener)listener
{
  WeakRetained = objc_loadWeakRetained(&self->_listener);

  return WeakRetained;
}

@end