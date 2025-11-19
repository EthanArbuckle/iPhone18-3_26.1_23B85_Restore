@interface NSXPCConnection
- (BOOL)_connectionHasEntitlement:(id)a3;
- (BOOL)sd_connectionHasEntitlement:(id)a3;
- (NSString)sd_connectionBundleID;
- (NSString)sd_connectionProcessName;
- (NSString)sd_description;
@end

@implementation NSXPCConnection

- (NSString)sd_description
{
  v3 = [(NSXPCConnection *)self sd_connectionBundleID];
  v4 = v3;
  v5 = @"N/A";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [NSString stringWithFormat:@"%@(%d)", v6, [(NSXPCConnection *)self processIdentifier]];

  return v7;
}

- (NSString)sd_connectionBundleID
{
  v3 = [(NSXPCConnection *)self _xpcConnection];
  v4 = sub_10000C344(v3);

  if (!v4)
  {
    v4 = [(NSXPCConnection *)self valueForEntitlement:@"application-identifier"];
  }

  return v4;
}

- (NSString)sd_connectionProcessName
{
  if (proc_name([(NSXPCConnection *)self processIdentifier:0], &v4, 0x20u) < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [[NSString alloc] initWithUTF8String:&v4];
  }

  return v2;
}

- (BOOL)sd_connectionHasEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_connectionHasEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end