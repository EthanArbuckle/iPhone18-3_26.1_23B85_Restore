@interface APAttributionRetryWorkerBridge
+ (BOOL)startWithSession:(id)a3 request:(id)a4 requestorId:(id)a5 intervalId:(unint64_t)a6 reportingStorefront:(id)a7 requestTimestamp:(id)a8 daemonStartTime:(id)a9 tokenReturnedToClientDate:(id)a10 payloadDeliveryStartDate:(id)a11;
- (APAttributionRetryWorkerBridge)init;
@end

@implementation APAttributionRetryWorkerBridge

+ (BOOL)startWithSession:(id)a3 request:(id)a4 requestorId:(id)a5 intervalId:(unint64_t)a6 reportingStorefront:(id)a7 requestTimestamp:(id)a8 daemonStartTime:(id)a9 tokenReturnedToClientDate:(id)a10 payloadDeliveryStartDate:(id)a11
{
  v39 = a3;
  v40 = a6;
  v38 = a11;
  v36 = a8;
  v37 = a10;
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
  if (a5)
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
  v29 = v39;
  v30 = a4;
  LODWORD(v40) = sub_100285B6C(v29, v30, v34, v35, v40, v33, v28, v25, v23, v20, v17);

  v31 = *(v14 + 8);
  v31(v17, v13);
  v31(v20, v13);
  v31(v23, v13);
  v31(v25, v13);
  return v40 & 1;
}

- (APAttributionRetryWorkerBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AttributionRetryWorkerBridge();
  return [(APAttributionRetryWorkerBridge *)&v3 init];
}

@end