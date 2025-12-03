@interface ReadDelegateRelay
- (void)onSuccessWithTransactionData:(id)data;
- (void)onUpdateWithEvent:(int64_t)event mode:(int64_t)mode;
@end

@implementation ReadDelegateRelay

- (void)onUpdateWithEvent:(int64_t)event mode:(int64_t)mode
{

  sub_100100D88(event, mode);
}

- (void)onSuccessWithTransactionData:(id)data
{
  v5 = *self->completion;
  v4 = *&self->completion[8];
  dataCopy = data;

  v5(data, 0);
}

@end