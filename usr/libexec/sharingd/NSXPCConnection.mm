@interface NSXPCConnection
- (BOOL)_connectionHasEntitlement:(id)entitlement;
- (BOOL)sd_connectionHasEntitlement:(id)entitlement;
- (NSString)sd_connectionBundleID;
- (NSString)sd_connectionProcessName;
- (NSString)sd_description;
@end

@implementation NSXPCConnection

- (NSString)sd_description
{
  sd_connectionBundleID = [(NSXPCConnection *)self sd_connectionBundleID];
  v4 = sd_connectionBundleID;
  v5 = @"N/A";
  if (sd_connectionBundleID)
  {
    v5 = sd_connectionBundleID;
  }

  v6 = v5;

  v7 = [NSString stringWithFormat:@"%@(%d)", v6, [(NSXPCConnection *)self processIdentifier]];

  return v7;
}

- (NSString)sd_connectionBundleID
{
  _xpcConnection = [(NSXPCConnection *)self _xpcConnection];
  v4 = sub_10000C344(_xpcConnection);

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

- (BOOL)sd_connectionHasEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_connectionHasEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end