@interface RDSharerAvailability
+ (BOOL)hasLocalStatusKit;
- (_TtC8countryd20RDSharerAvailability)init;
@end

@implementation RDSharerAvailability

+ (BOOL)hasLocalStatusKit
{
  if (&metaclass for LSKLocalStatusClient)
  {
    v2 = &nominal type descriptor for LSKLocalStatusClient == 0;
  }

  else
  {
    v2 = 1;
  }

  v5 = v2 || &type metadata for LSKLocalStatusClient == 0 || &type metadata accessor for LSKLocalStatusClient == 0 || &class metadata base offset for LSKLocalStatusClient == 0;
  v6 = !v5;
  if (v5)
  {
    sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v7 = sub_10000E534();
    sub_10000E424();
  }

  return v6;
}

- (_TtC8countryd20RDSharerAvailability)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDSharerAvailability();
  return [(RDSharerAvailability *)&v3 init];
}

@end