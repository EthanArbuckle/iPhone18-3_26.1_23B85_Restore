@interface UMPersonaMachPort
- (UMPersonaMachPort)initWithCoder:(id)coder;
- (id)replacementObjectForCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UMPersonaMachPort

- (id)replacementObjectForCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UMPersonaMachPort;
    selfCopy = [(UMPersonaMachPort *)&v8 replacementObjectForCoder:coderCopy];
  }

  v6 = selfCopy;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(UMPersonaMachPort *)self machPort]&& [(UMPersonaMachPort *)self machPort]!= -1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(UMPersonaMachPort *)self machPort];
    v5 = xpc_mach_send_create();
    if (v5)
    {
      [coderCopy encodeXPCObject:v5 forKey:@"UMPersonaMachPort"];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UMPersonaMachPort;
    [(UMPersonaMachPort *)&v6 encodeWithCoder:coderCopy];
  }
}

- (UMPersonaMachPort)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_100098B6C(a2, self);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([coderCopy decodeXPCObjectOfType:&_xpc_type_mach_send forKey:@"UMPersonaMachPort"], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, v8 = xpc_mach_send_copy_right(), v7, (v8 - 1) <= 0xFFFFFFFD))
  {
    v12.receiver = self;
    v12.super_class = UMPersonaMachPort;
    v9 = [(UMPersonaMachPort *)&v12 initWithMachPort:v8 options:0];
    if (!v9)
    {
      mach_port_deallocate(mach_task_self_, v8);
    }
  }

  else
  {

    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:4864 userInfo:0];
    [coderCopy failWithError:v10];

    v9 = 0;
  }

  return v9;
}

@end