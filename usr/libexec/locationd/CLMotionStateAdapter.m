@interface CLMotionStateAdapter
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLMotionStateAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)queryMotionStatesWithStartTime:(double)a3 endTime:(double)a4 isFromInternalClient:(BOOL)a5 withReply:(id)a6;
@end

@implementation CLMotionStateAdapter

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102658220 != -1)
  {
    sub_1018D5AF0();
  }

  return qword_102658218;
}

- (CLMotionStateAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLMotionStateAdapter;
  return [(CLMotionStateAdapter *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLMotionStateProtocol outboundProtocol:&OBJC_PROTOCOL___CLMotionStateClientProtocol];
}

- (void)beginService
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1005C1EC4([(CLMotionStateAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018D5B04();
  }
}

- (void)endService
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

- (void)adaptee
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

- (void)doAsync:(id)a3
{
  v4 = [(CLMotionStateAdapter *)self adaptee];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  (*(a3 + 2))(a3, [(CLMotionStateAdapter *)self adaptee]);
  v5 = *(a4 + 2);

  v5(a4);
}

- (void)queryMotionStatesWithStartTime:(double)a3 endTime:(double)a4 isFromInternalClient:(BOOL)a5 withReply:(id)a6
{
  v7 = a5;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v10 = [(CLMotionStateAdapter *)self adaptee];
  (*(*v10 + 216))(v10, v7, &v35, a3, a4);
  v12 = v35;
  v11 = v36;
  v13 = 0xF0F0F0F0F0F0F0F1 * ((v36 - v35) >> 3);
  v14 = [NSMutableArray arrayWithCapacity:v13];
  if (v11 != v12)
  {
    v15 = 0;
    v16 = v13 - 1;
    if (v13 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v13;
    }

    do
    {
      v18 = *&v35[v15 + 112];
      v32 = *&v35[v15 + 96];
      v33 = v18;
      v34 = *&v35[v15 + 128];
      v19 = *&v35[v15 + 48];
      v28 = *&v35[v15 + 32];
      v29 = v19;
      v20 = *&v35[v15 + 80];
      v30 = *&v35[v15 + 64];
      v31 = v20;
      v21 = *&v35[v15 + 16];
      v26 = *&v35[v15];
      v27 = v21;
      v22 = a4;
      if (v16)
      {
        v22 = *&v35[v15 + 216] + -2.22044605e-16;
      }

      v23 = [CMMotionActivity alloc];
      v24 = [v23 initWithMotionActivity:&v25 endDate:{+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v22, v26, v27, v28, v29, v30, v31, v32, v33, v34)}];
      [(NSMutableArray *)v14 addObject:v24];

      --v16;
      v15 += 136;
      --v17;
    }

    while (v17);
  }

  (*(a6 + 2))(a6, v14);
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

@end