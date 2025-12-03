@interface CLDaemonMonitoringRecord
- (BOOL)isMonitoring;
- (BOOL)shouldSendEvent;
- (CLDaemonMonitoringRecord)initWithClientMonitoringRecord:(id)record clientKeyPath:(id)path authorizationContext:(id)context universe:(id)universe identifier:(id)identifier initForStopMonitoring:(BOOL)monitoring callbackHandler:(id)handler;
- (CLDaemonMonitoringRecord)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (id)getMonitoringRecordToNotifyClient;
- (unint64_t)clientState;
- (unint64_t)daemonState;
- (unint64_t)diagnosticMaskIfMonitoringIsNonFunctional;
- (unint64_t)serviceTypeMask;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetDaemonPartOfCondition;
- (void)setupDaemonPartOfConditionWithAuthContext:(id)context clientKeyPath:(id)path universe:(id)universe identifier:(id)identifier stopMonitoring:(BOOL)monitoring callbackHandler:(id)handler;
- (void)updateClientEvent:(id)event;
@end

@implementation CLDaemonMonitoringRecord

- (CLDaemonMonitoringRecord)initWithClientMonitoringRecord:(id)record clientKeyPath:(id)path authorizationContext:(id)context universe:(id)universe identifier:(id)identifier initForStopMonitoring:(BOOL)monitoring callbackHandler:(id)handler
{
  monitoringCopy = monitoring;
  v17.receiver = self;
  v17.super_class = CLDaemonMonitoringRecord;
  v15 = [(CLDaemonMonitoringRecord *)&v17 initRecordWithMonitoringRecord:?];
  if (v15)
  {
    if (!monitoringCopy)
    {
      identifier = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@@%@", identifier, [record identifier]);
    }

    [(CLDaemonMonitoringRecord *)v15 setRecordIdentifier:identifier];
    [(CLDaemonMonitoringRecord *)v15 setupDaemonPartOfConditionWithAuthContext:context clientKeyPath:path universe:universe identifier:[(CLDaemonMonitoringRecord *)v15 recordIdentifier] stopMonitoring:monitoringCopy callbackHandler:handler];
  }

  return v15;
}

- (void)dealloc
{
  self->_daemonCondition = 0;
  [(CLDaemonMonitoringRecord *)self setDaemonEvent:0];

  self->_recordIdentifier = 0;
  v3.receiver = self;
  v3.super_class = CLDaemonMonitoringRecord;
  [(CLDaemonMonitoringRecord *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder requiresSecureCoding] & 1) == 0)
  {
    sub_101948BD0(a2, self);
  }

  recordIdentifier = [(CLDaemonMonitoringRecord *)self recordIdentifier];
  [coder encodeObject:recordIdentifier forKey:off_1025D8748];
  v7.receiver = self;
  v7.super_class = CLDaemonMonitoringRecord;
  [(CLDaemonMonitoringRecord *)&v7 encodeWithCoder:coder];
}

- (CLDaemonMonitoringRecord)initWithCoder:(id)coder
{
  if (([coder requiresSecureCoding] & 1) == 0)
  {
    sub_101948C34(a2, self);
  }

  v8.receiver = self;
  v8.super_class = CLDaemonMonitoringRecord;
  v6 = [(CLDaemonMonitoringRecord *)&v8 initWithCoder:coder];
  if (v6)
  {
    -[CLDaemonMonitoringRecord setRecordIdentifier:](v6, "setRecordIdentifier:", [coder decodeObjectOfClass:objc_opt_class() forKey:off_1025D8748]);
  }

  return v6;
}

- (void)setupDaemonPartOfConditionWithAuthContext:(id)context clientKeyPath:(id)path universe:(id)universe identifier:(id)identifier stopMonitoring:(BOOL)monitoring callbackHandler:(id)handler
{
  monitoringCopy = monitoring;
  [(CLDaemonMonitoringRecord *)self condition];
  v15 = objc_opt_class();
  if (v15 == objc_opt_class())
  {
    if (![objc_msgSend(universe "vendor")])
    {
      goto LABEL_15;
    }

    v17 = [[CLDaemonCircularGeographicCondition alloc] initFromClientCondition:[(CLDaemonMonitoringRecord *)self condition] clientKeyPath:path authorizationContext:context universe:universe identifier:identifier removePersistingFenceFromMonitoring:monitoringCopy callbackHandler:handler];
LABEL_14:
    [(CLDaemonMonitoringRecord *)self setDaemonCondition:v17];
    goto LABEL_16;
  }

  if (v15 == objc_opt_class())
  {
    if (![objc_msgSend(universe "vendor")])
    {
      goto LABEL_15;
    }

    v17 = [[CLDaemonBeaconIdentityCondition alloc] initFromClientCondition:[(CLDaemonMonitoringRecord *)self condition] clientKeyPath:path authorizationContext:context universe:universe identifier:[(CLDaemonMonitoringRecord *)self recordIdentifier] removePersistingFenceFromMonitoring:monitoringCopy callbackHandler:handler];
    goto LABEL_14;
  }

  if (v15 == objc_opt_class())
  {
    if ([objc_msgSend(universe "vendor")])
    {
      v16 = CLDaemonMinimumAltitudeCondition;
      goto LABEL_13;
    }
  }

  else
  {
    if (v15 != objc_opt_class())
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101948C98();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2082;
        v27 = "assert";
        v28 = 2081;
        v29 = "nullptr";
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor unknown variant of condition is received, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          goto LABEL_29;
        }
      }

      while (1)
      {
        v20 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "nullptr";
          _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor unknown variant of condition is received", "{msg%{public}.0s:#monitor unknown variant of condition is received, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_101948CAC();
          }
        }

        v21 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "nullptr";
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#monitor unknown variant of condition is received, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
LABEL_29:
        sub_101948CAC();
      }
    }

    if ([objc_msgSend(universe "vendor")])
    {
      v16 = CLDaemonVisitCondition;
LABEL_13:
      v17 = [[v16 alloc] initFromClientCondition:-[CLDaemonMonitoringRecord condition](self clientKeyPath:"condition") authorizationContext:path universe:context identifier:universe callbackHandler:{identifier, handler}];
      goto LABEL_14;
    }
  }

LABEL_15:
  [(CLDaemonMonitoringRecord *)self setConditionUnsupported:1];
LABEL_16:
  v18 = [[CLMonitoringEvent alloc] initWithIdentifier:-[CLMonitoringEvent identifier](-[CLDaemonMonitoringRecord clientEvent](self refinement:"clientEvent") state:"identifier") date:0 diagnostics:{0, +[NSDate now](NSDate, "now"), 0}];

  [(CLDaemonMonitoringRecord *)self setDaemonEvent:v18];
}

- (void)resetDaemonPartOfCondition
{
  [(CLCondition *)[(CLDaemonMonitoringRecord *)self daemonCondition] stopMonitoring];
  self->_daemonCondition = 0;

  [(CLDaemonMonitoringRecord *)self setDaemonEvent:0];
}

- (unint64_t)clientState
{
  clientEvent = [(CLDaemonMonitoringRecord *)self clientEvent];

  return [(CLMonitoringEvent *)clientEvent state];
}

- (unint64_t)daemonState
{
  daemonEvent = [(CLDaemonMonitoringRecord *)self daemonEvent];

  return [(CLMonitoringEvent *)daemonEvent state];
}

- (BOOL)shouldSendEvent
{
  state = [(CLMonitoringEvent *)[(CLDaemonMonitoringRecord *)self daemonEvent] state];
  if (state)
  {
    clientState = [(CLDaemonMonitoringRecord *)self clientState];
    LOBYTE(state) = clientState != [(CLMonitoringEvent *)[(CLDaemonMonitoringRecord *)self daemonEvent] state];
  }

  return state;
}

- (void)updateClientEvent:(id)event
{
  v3.receiver = self;
  v3.super_class = CLDaemonMonitoringRecord;
  [(CLDaemonMonitoringRecord *)&v3 updateEvent:event];
}

- (id)getMonitoringRecordToNotifyClient
{
  v2 = [[CLMonitoringRecord alloc] initRecordWithCondition:-[CLDaemonMonitoringRecord condition](self options:"condition") event:{-[CLDaemonMonitoringRecord options](self, "options"), -[CLDaemonMonitoringRecord daemonEvent](self, "daemonEvent")}];

  return v2;
}

- (id)debugDescription
{
  v3 = [NSMutableString stringWithString:[(CLDaemonMonitoringRecord *)self description]];
  [(NSMutableString *)v3 appendFormat:@", obj: %p", self];
  return v3;
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendString:{objc_msgSend(-[CLDaemonMonitoringRecord condition](self, "condition"), "description")}];
  [v3 appendFormat:@", options: %lu", -[CLDaemonMonitoringRecord options](self, "options")];
  [v3 appendFormat:@", clientEvent: %@", -[CLDaemonMonitoringRecord clientEvent](self, "clientEvent")];
  [v3 appendFormat:@", daemonEvent: %@", -[CLDaemonMonitoringRecord daemonEvent](self, "daemonEvent")];
  return v3;
}

- (BOOL)isMonitoring
{
  daemonCondition = [(CLDaemonMonitoringRecord *)self daemonCondition];

  return [(CLCondition *)daemonCondition isMonitoring];
}

- (unint64_t)diagnosticMaskIfMonitoringIsNonFunctional
{
  v3 = [-[CLCondition authorizationContext](-[CLDaemonMonitoringRecord daemonCondition](self "daemonCondition")] & 3;
  if (![(CLDaemonMonitoringRecord *)self conditionLimitExceeded]&& ![(CLDaemonMonitoringRecord *)self conditionUnsupported]&& ![(CLDaemonMonitoringRecord *)self persistenceUnavailable])
  {
    v3 |= [(CLCondition *)[(CLDaemonMonitoringRecord *)self daemonCondition] diagnosticMaskIfNonFunctional];
  }

  return v3;
}

- (unint64_t)serviceTypeMask
{
  [(CLDaemonMonitoringRecord *)self condition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  [(CLDaemonMonitoringRecord *)self condition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  [(CLDaemonMonitoringRecord *)self condition];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CLDaemonMonitoringRecord.mm" description:272, @"Condition type is not supported", ", ", "condition", ":", "%{private, location:escape_only}@", [(CLDaemonMonitoringRecord *)self condition]];
  }

  return 16;
}

@end