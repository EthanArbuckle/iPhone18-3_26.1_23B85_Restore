@interface APSigningQueueItem
+ (id)createItemWithRequest:(id)request requestTimestamp:(id)timestamp interval:(unint64_t)interval jsonBody:(id)body startDate:(id)date deliveryStartDate:(id)startDate completionHandler:(id)handler;
@end

@implementation APSigningQueueItem

+ (id)createItemWithRequest:(id)request requestTimestamp:(id)timestamp interval:(unint64_t)interval jsonBody:(id)body startDate:(id)date deliveryStartDate:(id)startDate completionHandler:(id)handler
{
  handlerCopy = handler;
  startDateCopy = startDate;
  dateCopy = date;
  bodyCopy = body;
  timestampCopy = timestamp;
  requestCopy = request;
  v21 = objc_alloc_init(APSigningQueueItem);
  [(APSigningQueueItem *)v21 setRequest:requestCopy];

  [(APSigningQueueItem *)v21 setRequestTimestamp:timestampCopy];
  [(APSigningQueueItem *)v21 setIntervalId:interval];
  [(APSigningQueueItem *)v21 setJsonBody:bodyCopy];

  [(APSigningQueueItem *)v21 setStartDate:dateCopy];
  [(APSigningQueueItem *)v21 setHandler:handlerCopy];

  [(APSigningQueueItem *)v21 setDeliveryStartDate:startDateCopy];

  return v21;
}

@end