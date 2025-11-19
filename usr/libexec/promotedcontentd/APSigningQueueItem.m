@interface APSigningQueueItem
+ (id)createItemWithRequest:(id)a3 requestTimestamp:(id)a4 interval:(unint64_t)a5 jsonBody:(id)a6 startDate:(id)a7 deliveryStartDate:(id)a8 completionHandler:(id)a9;
@end

@implementation APSigningQueueItem

+ (id)createItemWithRequest:(id)a3 requestTimestamp:(id)a4 interval:(unint64_t)a5 jsonBody:(id)a6 startDate:(id)a7 deliveryStartDate:(id)a8 completionHandler:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(APSigningQueueItem);
  [(APSigningQueueItem *)v21 setRequest:v20];

  [(APSigningQueueItem *)v21 setRequestTimestamp:v19];
  [(APSigningQueueItem *)v21 setIntervalId:a5];
  [(APSigningQueueItem *)v21 setJsonBody:v18];

  [(APSigningQueueItem *)v21 setStartDate:v17];
  [(APSigningQueueItem *)v21 setHandler:v15];

  [(APSigningQueueItem *)v21 setDeliveryStartDate:v16];

  return v21;
}

@end