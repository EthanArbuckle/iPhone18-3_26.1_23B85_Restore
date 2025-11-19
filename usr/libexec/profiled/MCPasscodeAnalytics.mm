@interface MCPasscodeAnalytics
+ (void)sendPasscodeChangedEventWithChangeType:(int64_t)a3 oldPasscodeExists:(BOOL)a4 isClearingPasscode:(BOOL)a5 newPasscodeUnlockScreenType:(int)a6 newPasscodeSimpleType:(int)a7 passcodeRecoverySupported:(BOOL)a8 passcodeRecoveryRestricted:(BOOL)a9 recoverySkipped:(BOOL)a10 senderBundleID:(id)a11;
@end

@implementation MCPasscodeAnalytics

+ (void)sendPasscodeChangedEventWithChangeType:(int64_t)a3 oldPasscodeExists:(BOOL)a4 isClearingPasscode:(BOOL)a5 newPasscodeUnlockScreenType:(int)a6 newPasscodeSimpleType:(int)a7 passcodeRecoverySupported:(BOOL)a8 passcodeRecoveryRestricted:(BOOL)a9 recoverySkipped:(BOOL)a10 senderBundleID:(id)a11
{
  v12 = a11;
  v11 = v12;
  AnalyticsSendEventLazy();
}

@end