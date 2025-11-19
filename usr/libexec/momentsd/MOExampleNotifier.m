@interface MOExampleNotifier
- (MOExampleNotifier)initWithName:(id)a3;
- (void)tick;
@end

@implementation MOExampleNotifier

- (MOExampleNotifier)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = MOExampleNotifier;
  v3 = [(MONotifier *)&v7 initWithName:a3];
  v4 = v3;
  if (v3)
  {
    *(v3 + 33) = 0;
    v5 = v3;
  }

  return v4;
}

- (void)tick
{
  if ([(MONotifier *)self isEnabled])
  {
    v3 = [NSNumber numberWithInt:*(&self->super._enabled + 1)];
    [(MONotifier *)self notify:0 withPayload:v3];

    HIDWORD(v4) = -286331153 * *(&self->super._enabled + 1) + 143165576;
    LODWORD(v4) = HIDWORD(v4);
    if ((v4 >> 2) <= 0x4444444)
    {
      v5 = [NSNumber numberWithInt:?];
      [(MONotifier *)self notify:1 withPayload:v5];
    }

    v6 = dispatch_time(0, 1000000000);
    v7 = [(MONotifier *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __25__MOExampleNotifier_tick__block_invoke;
    block[3] = &unk_100335F40;
    block[4] = self;
    dispatch_after(v6, v7, block);
  }
}

@end