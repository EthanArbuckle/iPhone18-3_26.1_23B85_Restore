@interface APAttributionRetryWorkerBridge
+ (BOOL)startWithSession:(id)session request:(id)request requestorId:(id)id intervalId:(unint64_t)intervalId reportingStorefront:(id)storefront requestTimestamp:(id)timestamp daemonStartTime:(id)time tokenReturnedToClientDate:(id)self0 payloadDeliveryStartDate:(id)self1;
- (APAttributionRetryWorkerBridge)init;
@end

@implementation APAttributionRetryWorkerBridge

+ (BOOL)startWithSession:(id)session request:(id)request requestorId:(id)id intervalId:(unint64_t)intervalId reportingStorefront:(id)storefront requestTimestamp:(id)timestamp daemonStartTime:(id)time tokenReturnedToClientDate:(id)self0 payloadDeliveryStartDate:(id)self1
{
  sessionCopy = session;
  intervalIdCopy = intervalId;
  startDateCopy = startDate;
  timestampCopy = timestamp;
  dateCopy = date;
  v13 = sub_100397748();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v33 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v33 - v22;
  __chkstk_darwin(v21);
  v25 = &v33 - v24;
  if (id)
  {
    v34 = sub_100398F58();
    v35 = v26;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v33 = sub_100398F58();
  v28 = v27;
  sub_100397708();
  sub_100397708();
  sub_100397708();
  sub_100397708();
  v29 = sessionCopy;
  requestCopy = request;
  LODWORD(intervalIdCopy) = sub_100285B6C(v29, requestCopy, v34, v35, intervalIdCopy, v33, v28, v25, v23, v20, v17);

  v31 = *(v14 + 8);
  v31(v17, v13);
  v31(v20, v13);
  v31(v23, v13);
  v31(v25, v13);
  return intervalIdCopy & 1;
}

- (APAttributionRetryWorkerBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AttributionRetryWorkerBridge();
  return [(APAttributionRetryWorkerBridge *)&v3 init];
}

@end