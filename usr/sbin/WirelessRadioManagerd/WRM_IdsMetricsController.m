@interface WRM_IdsMetricsController
+ (id)WRM_IdsMetricsControllerSingleton;
- (BOOL)getAnticipiatedTxPerValid;
- (BOOL)getTxPerAnticipatedMovAvgValid;
- (WRM_IdsMetricsController)init;
- (double)evaluateDLThroughput;
- (double)evaluateULThroughput;
- (double)getAnticipiatedTxPer;
- (double)getTxPer;
- (double)getTxPerAnticipatedMovAvg;
- (double)getTxPerMovAvg;
- (void)configureIDSMetricsReporting;
- (void)dealloc;
- (void)handlePeriodicIDSMetrics:(id)a3;
- (void)resetIDSMetrics;
@end

@implementation WRM_IdsMetricsController

- (WRM_IdsMetricsController)init
{
  v3.receiver = self;
  v3.super_class = WRM_IdsMetricsController;
  return [(WCM_Controller *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_IdsMetricsController;
  [(WCM_Controller *)&v2 dealloc];
}

+ (id)WRM_IdsMetricsControllerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D380;
  block[3] = &unk_10023DB28;
  block[4] = a1;
  if (qword_1002B7E18 != -1)
  {
    dispatch_once(&qword_1002B7E18, block);
  }

  return qword_1002B7E10;
}

- (void)resetIDSMetrics
{
  [WCM_Logging logLevel:27 message:@"Resetting IDS  metrics report"];
  [(WRM_IdsMetricsController *)self setMStreamingReportBytesSent:0];
  [(WRM_IdsMetricsController *)self setMStreamingReportPacketsSent:0];
  [(WRM_IdsMetricsController *)self setMStreamingReportBytesReceived:0];
  [(WRM_IdsMetricsController *)self setMStreamingReportPacketsReceived:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSentMessageSize:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMessageSize:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredRTT:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMessageSize:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSent:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDelivered:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredDeliveryError:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceived:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMessageSizeMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredRTTMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMessageSizeMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSentMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredDeliveryErrorMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageSent:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageDelivered:0];

  [(WRM_IdsMetricsController *)self setMMetricsConsiderationPeriod:0];
}

- (void)configureIDSMetricsReporting
{
  [WCM_Logging logLevel:27 message:@"Configuring IDS  metrics report"];
  -[WRM_IdsMetricsController setMReportDuration:](self, "setMReportDuration:", [objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")]);
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v4, "PeriodRptInval", [(WRM_IdsMetricsController *)self mReportDuration]);
      [v6 sendMessage:1103 withArgs:v4];
      v7 = @"Sending IDS  metrics Configure request";
    }

    else
    {
      v7 = @"Not sending IDS  metrics Configure request, IDS not registered";
    }

    [WCM_Logging logLevel:27 message:v7];

    xpc_release(v4);
  }
}

- (void)handlePeriodicIDSMetrics:(id)a3
{
  value = xpc_dictionary_get_value(a3, "kMessageArgs");
  [WCM_Logging logLevel:18 message:@"Periodic IDS metrics received from IDS Controller "];
  if (value)
  {
    if (xpc_dictionary_get_value(value, "StrmBytesSnt"))
    {
      [(WRM_IdsMetricsController *)self setMStreamingReportBytesSent:xpc_dictionary_get_uint64(value, "StrmBytesSnt")];
    }

    if (xpc_dictionary_get_value(value, "StrmPktsSnt"))
    {
      [(WRM_IdsMetricsController *)self setMStreamingReportPacketsSent:xpc_dictionary_get_uint64(value, "StrmPktsSnt")];
    }

    if (xpc_dictionary_get_value(value, "StrmBytesRcvd"))
    {
      [(WRM_IdsMetricsController *)self setMStreamingReportBytesReceived:xpc_dictionary_get_uint64(value, "StrmBytesRcvd")];
    }

    if (xpc_dictionary_get_value(value, "StrmPktRcvd"))
    {
      [(WRM_IdsMetricsController *)self setMStreamingReportPacketsReceived:xpc_dictionary_get_uint64(value, "StrmPktRcvd")];
    }

    if (xpc_dictionary_get_value(value, "LocMsgSntSz"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSentMessageSize:xpc_dictionary_get_uint64(value, "LocMsgSntSz")];
    }

    if (xpc_dictionary_get_value(value, "DeliveredMsgSz"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMessageSize:xpc_dictionary_get_uint64(value, "DeliveredMsgSz")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMessageSizeMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMessageSizeMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMessageSize]+ v5 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgDeliveredRTT"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredRTT:xpc_dictionary_get_uint64(value, "LocMsgDeliveredRTT")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredRTTMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredRTTMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredRTT]+ v6 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgRcvdMgSz"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMessageSize:xpc_dictionary_get_uint64(value, "LocMsgRcvdMgSz")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceivedMessageSizeMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMessageSizeMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceivedMessageSize]+ v7 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgSnt"))
    {
      uint64 = xpc_dictionary_get_uint64(value, "LocMsgSnt");
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSent:uint64];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageSent:[(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent]+ uint64];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSentMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageSent]+ v9 * 11.0) / 12.0];
      [(WRM_IdsMetricsController *)self setMMetricsConsiderationPeriod:[(WRM_IdsMetricsController *)self mMetricsConsiderationPeriod]+ 1];
      [(WRM_IdsMetricsController *)self setMMetricsConsiderationPeriod:([(WRM_IdsMetricsController *)self mMetricsConsiderationPeriod]% 12)];
      if (![(WRM_IdsMetricsController *)self mMetricsConsiderationPeriod])
      {
        [(WRM_IdsMetricsController *)self resetIDSMetrics];
      }
    }

    if (xpc_dictionary_get_value(value, "LocMsgDelivered"))
    {
      v10 = xpc_dictionary_get_uint64(value, "LocMsgDelivered");
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDelivered:v10];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageDelivered:[(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered]+ v10];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageDelivered]+ v11 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgDeliveryEr"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredDeliveryError:xpc_dictionary_get_uint64(value, "LocMsgDeliveryEr")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryErrorMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredDeliveryErrorMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError]+ v12 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgRcvd"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceived:xpc_dictionary_get_uint64(value, "LocMsgRcvd")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceivedMovAvg];
      v14 = ([(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceived]+ v13 * 11.0) / 12.0;

      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMovAvg:v14];
    }
  }
}

- (double)evaluateDLThroughput
{
  v3 = [(WRM_IdsMetricsController *)self mStreamingReportBytesReceived];
  v4 = [(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceived];
  v5 = (v3 + [(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceivedMessageSize]* v4) * 8.0;
  return v5 / ([(WRM_IdsMetricsController *)self mReportDuration]+ 0.000001);
}

- (double)evaluateULThroughput
{
  v3 = [(WRM_IdsMetricsController *)self mStreamingReportBytesSent];
  v4 = [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDelivered];
  v5 = (v3 + [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMessageSize]* v4) * 8.0;
  return v5 / ([(WRM_IdsMetricsController *)self mReportDuration]+ 0.000001);
}

- (double)getTxPer
{
  v3 = [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError];
  v4 = [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDelivered];
  return v3 / (v4 + [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError]+ 0.000001);
}

- (double)getTxPerMovAvg
{
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryErrorMovAvg];
  v4 = v3;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMovAvg];
  v6 = v5;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryErrorMovAvg];
  return v4 / (v6 + v7 + 0.000001);
}

- (double)getAnticipiatedTxPer
{
  v3 = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent];
  v4 = v3 - [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered];
  [WCM_Logging logLevel:27 message:@"getAnticipiatedTxPer: Sent: %ld, Delivered: %ld, Pkt Loss: %.2f", [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent], [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered], *&v4];
  v5 = 0.0;
  if (v4 > 0.0)
  {
    if ([(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent])
    {
      v5 = v4 / ([(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent]+ 0.000001);
      if (v5 > 1.0)
      {
        [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageSent:0];
        [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageDelivered:0];
        [WCM_Logging logLevel:27 message:@"getAnticipiatedTxPer diacard bad value"];
        return 0.0;
      }
    }
  }

  return v5;
}

- (BOOL)getAnticipiatedTxPerValid
{
  v3 = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent];
  v4 = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered]+ v3;
  return [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError]+ v4 > 0x45;
}

- (double)getTxPerAnticipatedMovAvg
{
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
  v4 = v3;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMovAvg];
  v6 = v4 - v5;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
  v8 = v7;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMovAvg];
  [WCM_Logging logLevel:27 message:@"getTxPerAnticipatedMovAvg: Sent: %.2f, Delivered: %.2f, Pkt Loss: %.2f", v8, v9, *&v6];
  v10 = 0.0;
  if (v6 > 0.0)
  {
    [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
    if (v11 >= 1.0)
    {
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
      v10 = v6 / (v12 + 0.000001);
      if (v10 > 1.0)
      {
        [WCM_Logging logLevel:27 message:@"getTxPerAnticipatedMovAvg diacard bad value"];
      }
    }
  }

  return v10;
}

- (BOOL)getTxPerAnticipatedMovAvgValid
{
  v3 = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent];
  v4 = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered]+ v3;
  return [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError]+ v4 > 0x45;
}

@end