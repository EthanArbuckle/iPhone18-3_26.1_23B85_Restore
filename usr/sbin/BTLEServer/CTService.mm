@interface CTService
- (CTService)init;
- (char)currentTimeZone;
- (id)currentTimeValue;
- (id)localTimeInformationValue;
- (unsigned)currentDstOffset;
- (void)cancelNextDSTTransitionTimer;
- (void)currentTimeDidChange;
- (void)dealloc;
- (void)dstDidChange;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)setupNextDSTTransitionTimer;
- (void)significantTimeChange;
- (void)startNotifications;
- (void)stop;
- (void)stopNotifications;
- (void)updateCurrentTime;
@end

@implementation CTService

- (CTService)init
{
  v18.receiver = self;
  v18.super_class = CTService;
  v2 = [(CTService *)&v18 init];
  if (v2)
  {
    v3 = [CBMutableCharacteristic alloc];
    v4 = [CBUUID UUIDWithString:CBUUIDCurrentTimeCharacteristicString];
    v5 = [v3 initWithType:v4 properties:1042 value:0 permissions:17];
    currentTimeCharacteristic = v2->_currentTimeCharacteristic;
    v2->_currentTimeCharacteristic = v5;

    v7 = [CBMutableCharacteristic alloc];
    v8 = [CBUUID UUIDWithString:CBUUIDLocalTimeInformationCharacteristicString];
    v9 = [v7 initWithType:v8 properties:2 value:0 permissions:17];
    localTimeInformationCharacteristic = v2->_localTimeInformationCharacteristic;
    v2->_localTimeInformationCharacteristic = v9;

    v11 = [CBMutableService alloc];
    v12 = [CBUUID UUIDWithString:CBUUIDCurrentTimeServiceString];
    v13 = [v11 initWithType:v12 primary:1];
    [(ServerService *)v2 setService:v13];

    v19[0] = v2->_currentTimeCharacteristic;
    v19[1] = v2->_localTimeInformationCharacteristic;
    v14 = [NSArray arrayWithObjects:v19 count:2];
    service = [(ServerService *)v2 service];
    [service setCharacteristics:v14];

    nextDSTTransitionTimer = v2->_nextDSTTransitionTimer;
    v2->_nextDSTTransitionTimer = 0;
  }

  return v2;
}

- (void)stop
{
  [(CTService *)self cancelNextDSTTransitionTimer];
  v3.receiver = self;
  v3.super_class = CTService;
  [(ServerService *)&v3 stop];
}

- (void)dealloc
{
  [(CTService *)self stopNotifications];
  v3.receiver = self;
  v3.super_class = CTService;
  [(CTService *)&v3 dealloc];
}

- (id)currentTimeValue
{
  v2 = [DataOutputStream outputStreamWithByteOrder:1];
  v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v4 = +[NSDate date];
  v5 = [v3 components:33532 fromDate:v4];

  [v2 writeUint16:{objc_msgSend(v5, "year")}];
  [v2 writeUint8:{objc_msgSend(v5, "month")}];
  [v2 writeUint8:{objc_msgSend(v5, "day")}];
  [v2 writeUint8:{objc_msgSend(v5, "hour")}];
  [v2 writeUint8:{objc_msgSend(v5, "minute")}];
  [v2 writeUint8:{objc_msgSend(v5, "second")}];
  weekday = [v5 weekday];
  v7 = weekday - 1;
  if (weekday == 1)
  {
    v7 = 7;
  }

  [v2 writeUint8:v7];
  [v2 writeUint8:{((((objc_msgSend(v5, "nanosecond") >> 1) * 0x112E0BE826D694B3uLL) >> 64) >> 17)}];
  [v2 writeUint8:2];
  data = [v2 data];

  return data;
}

- (void)updateCurrentTime
{
  currentTimeValue = [(CTService *)self currentTimeValue];
  currentTimeCharacteristic = [(CTService *)self currentTimeCharacteristic];
  [(ServerService *)self updateValue:currentTimeValue forCharacteristic:currentTimeCharacteristic onSubscribedCentrals:0];
}

- (id)localTimeInformationValue
{
  v3 = +[DataOutputStream outputStream];
  [v3 writeUint8:{-[CTService currentTimeZone](self, "currentTimeZone")}];
  [v3 writeUint8:{-[CTService currentDstOffset](self, "currentDstOffset")}];
  data = [v3 data];

  return data;
}

- (void)cancelNextDSTTransitionTimer
{
  nextDSTTransitionTimer = [(CTService *)self nextDSTTransitionTimer];
  [nextDSTTransitionTimer invalidate];

  [(CTService *)self setNextDSTTransitionTimer:0];
}

- (void)setupNextDSTTransitionTimer
{
  [(CTService *)self cancelNextDSTTransitionTimer];
  v3 = +[NSTimeZone systemTimeZone];
  nextDaylightSavingTimeTransition = [v3 nextDaylightSavingTimeTransition];

  if (nextDaylightSavingTimeTransition)
  {
    v4 = [[NSTimer alloc] initWithFireDate:nextDaylightSavingTimeTransition interval:self target:"dstDidChange" selector:0 userInfo:0 repeats:0.0];
    [(CTService *)self setNextDSTTransitionTimer:v4];

    v5 = +[NSRunLoop mainRunLoop];
    nextDSTTransitionTimer = [(CTService *)self nextDSTTransitionTimer];
    [v5 addTimer:nextDSTTransitionTimer forMode:NSDefaultRunLoopMode];
  }
}

- (void)startNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100058AA0, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  [(CTService *)self setupNextDSTTransitionTimer];
}

- (void)stopNotifications
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v6[0] = 67109120;
    v6[1] = [(ServerService *)self restrictedMode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restrictedMode : %d", v6, 8u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  [(CTService *)self cancelNextDSTTransitionTimer];
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
  currentTimeCharacteristic = [(CTService *)self currentTimeCharacteristic];
  subscribedCentrals = [currentTimeCharacteristic subscribedCentrals];
  v9 = [subscribedCentrals count];

  if (!v9)
  {
    +[NSTimeZone resetSystemTimeZone];
  }

  characteristic = [requestCopy characteristic];
  currentTimeCharacteristic2 = [(CTService *)self currentTimeCharacteristic];

  if (characteristic == currentTimeCharacteristic2)
  {
    readCurrentTime = [(CTService *)self readCurrentTime];
  }

  else
  {
    characteristic2 = [requestCopy characteristic];
    localTimeInformationCharacteristic = [(CTService *)self localTimeInformationCharacteristic];

    if (characteristic2 != localTimeInformationCharacteristic)
    {
      v14 = 10;
      goto LABEL_9;
    }

    readCurrentTime = [(CTService *)self readLocalTimeInformation];
  }

  v16 = readCurrentTime;
  [requestCopy setValue:readCurrentTime];

  v14 = 0;
LABEL_9:
  [managerCopy respondToRequest:requestCopy withResult:v14];
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  currentTimeCharacteristic = [(CTService *)self currentTimeCharacteristic];

  if (currentTimeCharacteristic == characteristicCopy)
  {
    currentTimeCharacteristic2 = [(CTService *)self currentTimeCharacteristic];
    subscribedCentrals = [currentTimeCharacteristic2 subscribedCentrals];
    v10 = [subscribedCentrals count];

    if (v10 == 1)
    {
      [(CTService *)self startNotifications];

      +[NSTimeZone resetSystemTimeZone];
    }
  }
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  currentTimeCharacteristic = [(CTService *)self currentTimeCharacteristic];

  if (currentTimeCharacteristic == characteristicCopy)
  {
    currentTimeCharacteristic2 = [(CTService *)self currentTimeCharacteristic];
    subscribedCentrals = [currentTimeCharacteristic2 subscribedCentrals];
    v10 = [subscribedCentrals count];

    if (!v10)
    {

      [(CTService *)self stopNotifications];
    }
  }
}

- (void)significantTimeChange
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Significant time change", v4, 2u);
  }

  +[NSTimeZone resetSystemTimeZone];
  [(CTService *)self currentTimeDidChange];
}

- (void)dstDidChange
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DST did change", v4, 2u);
  }

  [(CTService *)self currentTimeDidChange];
}

- (void)currentTimeDidChange
{
  [(CTService *)self setupNextDSTTransitionTimer];

  [(CTService *)self updateCurrentTime];
}

- (char)currentTimeZone
{
  v2 = +[NSTimeZone systemTimeZone];
  secondsFromGMT = [v2 secondsFromGMT];
  [v2 daylightSavingTimeOffset];
  v5 = ((secondsFromGMT - v4) / 60.0 / 15.0);

  return v5;
}

- (unsigned)currentDstOffset
{
  v2 = +[NSTimeZone systemTimeZone];
  [v2 daylightSavingTimeOffset];
  v4 = (v3 / 60.0 / 15.0);

  return v4;
}

@end