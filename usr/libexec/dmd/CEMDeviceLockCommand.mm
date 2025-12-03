@interface CEMDeviceLockCommand
- (id)dmf_executeRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMDeviceLockCommand

- (id)dmf_executeRequestWithContext:(id)context error:(id *)error
{
  v5 = objc_opt_new();
  payloadMessage = [(CEMDeviceLockCommand *)self payloadMessage];
  [v5 setMessage:payloadMessage];

  payloadPhoneNumber = [(CEMDeviceLockCommand *)self payloadPhoneNumber];
  [v5 setPhoneNumber:payloadPhoneNumber];

  return v5;
}

@end