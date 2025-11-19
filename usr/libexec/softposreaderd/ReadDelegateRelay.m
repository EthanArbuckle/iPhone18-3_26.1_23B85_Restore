@interface ReadDelegateRelay
- (void)onSuccessWithTransactionData:(id)a3;
- (void)onUpdateWithEvent:(int64_t)a3 mode:(int64_t)a4;
@end

@implementation ReadDelegateRelay

- (void)onUpdateWithEvent:(int64_t)a3 mode:(int64_t)a4
{

  sub_100100D88(a3, a4);
}

- (void)onSuccessWithTransactionData:(id)a3
{
  v5 = *self->completion;
  v4 = *&self->completion[8];
  v6 = a3;

  v5(a3, 0);
}

@end