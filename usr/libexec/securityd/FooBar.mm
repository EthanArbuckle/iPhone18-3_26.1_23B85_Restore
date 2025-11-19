@interface FooBar
- (FooBar)init;
- (FooBar)initWithFoo:(id)a3 withBar:(id)a4;
- (void)printFooBar;
@end

@implementation FooBar

- (void)printFooBar
{
  v4 = [(FooBar *)self foo];
  v3 = [(FooBar *)self bar];
  NSLog(@"Foo: %@ Bar: %@", v4, v3);
}

- (FooBar)initWithFoo:(id)a3 withBar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FooBar;
  v8 = [(FooBar *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FooBar *)v8 setFoo:v6];
    [(FooBar *)v9 setBar:v7];
  }

  else
  {
    NSLog(@"Error while initing FooBar object");
  }

  return v9;
}

- (FooBar)init
{
  v6.receiver = self;
  v6.super_class = FooBar;
  v2 = [(FooBar *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(FooBar *)v2 setFoo:@"foo"];
    [(FooBar *)v3 setBar:@"bar"];
    v4 = v3;
  }

  else
  {
    NSLog(@"Error while initing FooBar object");
  }

  return v3;
}

@end