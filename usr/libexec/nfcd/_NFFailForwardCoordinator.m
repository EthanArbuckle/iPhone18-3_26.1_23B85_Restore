@interface _NFFailForwardCoordinator
- (_NFFailForwardCoordinator)init;
@end

@implementation _NFFailForwardCoordinator

- (_NFFailForwardCoordinator)init
{
  v10.receiver = self;
  v10.super_class = _NFFailForwardCoordinator;
  v2 = [(_NFFailForwardCoordinator *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nfcd.recovery", v3);
    coordinatorQueue = v2->_coordinatorQueue;
    v2->_coordinatorQueue = v4;

    v2->_disabled = 0;
    objc_opt_self();
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 removeObjectForKey:@"RecoveredOS"];
    [v6 removeObjectForKey:@"RecoveryNeeded"];
    [v6 removeObjectForKey:@"RecoveryAttempts"];
    [v6 removeObjectForKey:@"FuryRecoveryNeeded"];
    [v6 removeObjectForKey:@"RecoveryInProgress"];
    [v6 removeObjectForKey:@"FailForwardNeeded"];
    [v6 removeObjectForKey:@"FailForwardInProgress"];
    [v6 removeObjectForKey:@"FailForwardDetectedTimestamp"];
    [v6 removeObjectForKey:@"FailForwardLastAttemptTimestamp"];

    v7 = v2->_coordinatorQueue;
    v9 = v2;
    v9->_stateCaptureHandle = os_state_add_handler();
  }

  return v2;
}

@end