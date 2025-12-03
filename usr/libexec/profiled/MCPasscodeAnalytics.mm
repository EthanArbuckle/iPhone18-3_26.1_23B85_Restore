@interface MCPasscodeAnalytics
+ (void)sendPasscodeChangedEventWithChangeType:(int64_t)type oldPasscodeExists:(BOOL)exists isClearingPasscode:(BOOL)passcode newPasscodeUnlockScreenType:(int)screenType newPasscodeSimpleType:(int)simpleType passcodeRecoverySupported:(BOOL)supported passcodeRecoveryRestricted:(BOOL)restricted recoverySkipped:(BOOL)self0 senderBundleID:(id)self1;
@end

@implementation MCPasscodeAnalytics

+ (void)sendPasscodeChangedEventWithChangeType:(int64_t)type oldPasscodeExists:(BOOL)exists isClearingPasscode:(BOOL)passcode newPasscodeUnlockScreenType:(int)screenType newPasscodeSimpleType:(int)simpleType passcodeRecoverySupported:(BOOL)supported passcodeRecoveryRestricted:(BOOL)restricted recoverySkipped:(BOOL)self0 senderBundleID:(id)self1
{
  dCopy = d;
  v11 = dCopy;
  AnalyticsSendEventLazy();
}

@end