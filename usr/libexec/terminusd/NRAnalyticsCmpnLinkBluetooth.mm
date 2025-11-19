@interface NRAnalyticsCmpnLinkBluetooth
- (void)submit;
@end

@implementation NRAnalyticsCmpnLinkBluetooth

- (void)submit
{
  sub_1001554F0(self);
  if (self)
  {
    ikePairingSessionSetupStart = self->_ikePairingSessionSetupStart;
    ikePairingSessionSetupEnd = self->_ikePairingSessionSetupEnd;
  }

  NRDiffMachTimeInSeconds();
  v6 = [NSNumber numberWithDouble:round(v5 * 1000.0) * 0.001];
  if (!self)
  {
    v16 = @"ikePairingSessionSetupTimeInSec";
    eventDictionary = 0;
    goto LABEL_22;
  }

  [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v6 forKeyedSubscript:@"ikePairingSessionSetupTimeInSec"];

  if (self->_ikePairingSessionSetupAttempts)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v7 forKeyedSubscript:@"ikePairingSessionSetupAttempts"];
  }

  if (self->_urgentLoopChecksumError)
  {
    v8 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v8 forKeyedSubscript:@"urgentLoopChecksumError"];
  }

  if (self->_loopChecksumError)
  {
    v9 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v9 forKeyedSubscript:@"loopChecksumError"];
  }

  if (self->_bufferChecksumError)
  {
    v10 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v10 forKeyedSubscript:@"bufferChecksumError"];
  }

  if (self->_preludeChecksumError)
  {
    v11 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v11 forKeyedSubscript:@"preludeChecksumError"];
  }

  if (self->_urgentPreludeChecksumError)
  {
    v12 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v12 forKeyedSubscript:@"urgentPreludeChecksumError"];
  }

  if (self->_preludeTimeoutError)
  {
    v13 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v13 forKeyedSubscript:@"preludeTimeoutError"];
  }

  if (self->_urgentPreludeTimeoutError)
  {
    v14 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v14 forKeyedSubscript:@"urgentPreludeTimeoutError"];
  }

  if (self->_urgentPipeDisconnections)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:?];
    eventDictionary = self->super.super._eventDictionary;
    v16 = @"urgentPipeDisconnections";
LABEL_22:
    [(NSMutableDictionary *)eventDictionary setObject:v6 forKeyedSubscript:v16];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.cmpnLinkBluetooth");
}

@end