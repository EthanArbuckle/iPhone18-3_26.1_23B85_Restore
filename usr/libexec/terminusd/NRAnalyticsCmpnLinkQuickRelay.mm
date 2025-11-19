@interface NRAnalyticsCmpnLinkQuickRelay
- (void)reset;
- (void)submit;
@end

@implementation NRAnalyticsCmpnLinkQuickRelay

- (void)reset
{
  if (self)
  {
    self->_idsSessionInvitationCollisionCount = 0;
    self->_idsSessionSendInvitationStart = 0;
    self->_idsSessionSendInvitationEnd = 0;
    self->_idsSessionReceiveInvitationStart = 0;
    self->_idsSessionReceiveInvitationEnd = 0;
    self->_idsSessionStart = 0;
    self->_idsSessionEnd = 0;
    self->super._ikeClassCAttempts = 0;
    self->super._ikeClassDAttempts = 0;
    self->super._ikeClassDSetupStart = 0;
    self->super._ikeClassDSetupEnd = 0;
    self->super._ikeClassCSetupStart = 0;
    self->super._ikeClassCSetupEnd = 0;
    self->_ikeClassDKeepAliveStart = 0;
    self->_ikeClassCKeepAliveStart = 0;
    self->_ikeClassDKeepAliveEnd = 0;
    self->_ikeClassCKeepAliveEnd = 0;
  }
}

- (void)submit
{
  sub_1001554F0(self);
  if (self)
  {
    idsSessionSendInvitationStart = self->_idsSessionSendInvitationStart;
    idsSessionSendInvitationEnd = self->_idsSessionSendInvitationEnd;
    NRDiffMachTimeInSeconds();
    v6 = v5;
    idsSessionReceiveInvitationStart = self->_idsSessionReceiveInvitationStart;
    idsSessionReceiveInvitationEnd = self->_idsSessionReceiveInvitationEnd;
    NRDiffMachTimeInSeconds();
    v10 = v9;
    idsSessionStart = self->_idsSessionStart;
    idsSessionEnd = self->_idsSessionEnd;
    NRDiffMachTimeInSeconds();
    v14 = v13;
    ikeClassDKeepAliveStart = self->_ikeClassDKeepAliveStart;
    ikeClassDKeepAliveEnd = self->_ikeClassDKeepAliveEnd;
    NRDiffMachTimeInSeconds();
    v18 = v17;
    ikeClassCKeepAliveStart = self->_ikeClassCKeepAliveStart;
    ikeClassCKeepAliveEnd = self->_ikeClassCKeepAliveEnd;
    NRDiffMachTimeInSeconds();
    v22 = v21;
    if (self->_idsSessionInvitationFailed)
    {
      v23 = [NSNumber numberWithDouble:round(v6 * 1000.0) * 0.001];
      [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v23 forKeyedSubscript:@"idsSessionInvitationTimeToFailureInSec"];

      [(NSMutableDictionary *)self->super.super._eventDictionary setObject:&off_10020A1A0 forKeyedSubscript:@"idsSessionSendInvitationDurationInSec"];
      goto LABEL_8;
    }

    eventDictionary = self->super.super._eventDictionary;
  }

  else
  {
    NRDiffMachTimeInSeconds();
    v6 = v36;
    NRDiffMachTimeInSeconds();
    v10 = v37;
    NRDiffMachTimeInSeconds();
    v14 = v38;
    NRDiffMachTimeInSeconds();
    v18 = v39;
    NRDiffMachTimeInSeconds();
    v22 = v40;
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:&off_10020A1A0 forKeyedSubscript:@"idsSessionInvitationTimeToFailureInSec"];
  v25 = [NSNumber numberWithDouble:round(v6 * 1000.0) * 0.001];
  if (self)
  {
    v26 = self->super.super._eventDictionary;
  }

  else
  {
    v26 = 0;
  }

  [(NSMutableDictionary *)v26 setObject:v25 forKeyedSubscript:@"idsSessionSendInvitationDurationInSec"];

LABEL_8:
  v27 = [NSNumber numberWithDouble:round(v10 * 1000.0) * 0.001];
  if (self)
  {
    v28 = self->super.super._eventDictionary;
  }

  else
  {
    v28 = 0;
  }

  [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:@"idsSessionReceiveInvitationDurationInSec"];

  v29 = [NSNumber numberWithDouble:round(v14 * 1000.0) * 0.001];
  if (self)
  {
    v30 = self->super.super._eventDictionary;
  }

  else
  {
    v30 = 0;
  }

  [(NSMutableDictionary *)v30 setObject:v29 forKeyedSubscript:@"idsSessionDurationInSec"];

  v31 = [NSNumber numberWithDouble:round(v18 * 1000.0) * 0.001];
  if (self)
  {
    v32 = self->super.super._eventDictionary;
  }

  else
  {
    v32 = 0;
  }

  [(NSMutableDictionary *)v32 setObject:v31 forKeyedSubscript:@"ikeClassDKeepAliveDurationInSec"];

  v33 = [NSNumber numberWithDouble:round(v22 * 1000.0) * 0.001];
  if (self)
  {
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v33 forKeyedSubscript:@"ikeClassCKeepAliveDurationInSec"];

    if (!self->_idsSessionEndedReason)
    {
      goto LABEL_18;
    }

    v33 = [NSNumber numberWithUnsignedInt:?];
    v34 = self->super.super._eventDictionary;
    v35 = @"idsSessionEndedReason";
  }

  else
  {
    v35 = @"ikeClassCKeepAliveDurationInSec";
    v34 = 0;
  }

  [(NSMutableDictionary *)v34 setObject:v33 forKeyedSubscript:v35];

LABEL_18:

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.cmpnLinkQuickRelay");
}

@end