@interface TMPreferences
- (BOOL)isAppleTV;
- (BOOL)isAutomaticTimeEnabled;
- (BOOL)isAutomaticTimeZoneEnabled;
- (BOOL)isWatch;
- (BOOL)shouldClamp;
- (BOOL)supportsBasebandAPTimeSync;
- (NSString)NTPServerAddress;
- (TMPreferences)init;
- (TMPreferences)initWithDefaults:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation TMPreferences

- (BOOL)isAutomaticTimeEnabled
{
  v3 = [(NSUserDefaults *)self->_defaults BOOLForKey:@"TMAutomaticTimeOnlyEnabled"];
  if (v3)
  {
    LOBYTE(v3) = ![(NSUserDefaults *)self->_defaults BOOLForKey:@"DisableAutomaticTime"];
  }

  return v3;
}

- (BOOL)isAutomaticTimeZoneEnabled
{
  v3 = [(NSUserDefaults *)self->_defaults BOOLForKey:@"TMAutomaticTimeZoneEnabled"];
  if (v3)
  {
    LOBYTE(v3) = ![(NSUserDefaults *)self->_defaults BOOLForKey:@"DisableAutomaticTime"];
  }

  return v3;
}

- (BOOL)shouldClamp
{
  v3 = [(TMPreferences *)self NTPServerAddress];
  if (self)
  {
    v4 = @"time.apple.com";
  }

  else
  {
    v4 = 0;
  }

  return [(NSString *)v3 isEqualToString:v4];
}

- (NSString)NTPServerAddress
{
  if (!os_variant_allows_internal_security_policies() || (result = [(NSUserDefaults *)self->_defaults stringForKey:@"NtpTimeServer"]) == 0)
  {
    if (self)
    {
      return @"time.apple.com";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TMPreferences;
  [(TMPreferences *)&v3 dealloc];
}

- (TMPreferences)initWithDefaults:(id)a3
{
  v6.receiver = self;
  v6.super_class = TMPreferences;
  v4 = [(TMPreferences *)&v6 init];
  if (v4)
  {
    _CFPreferencesSetFileProtectionClass();
    v4->_defaults = a3;
    sub_10001864C(&v4->super.isa);
  }

  return v4;
}

- (TMPreferences)init
{
  v3 = +[NSUserDefaults standardUserDefaults];

  return [(TMPreferences *)self initWithDefaults:v3];
}

- (BOOL)isAppleTV
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFEqual(v2, @"AppleTV") != 0;
  CFRelease(v3);
  return v4;
}

- (BOOL)supportsBasebandAPTimeSync
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

- (BOOL)isWatch
{
  v2 = MGCopyAnswer();

  return [v2 isEqualToString:@"Watch"];
}

- (id)description
{
  v2 = [(NSUserDefaults *)self->_defaults dictionaryRepresentation];

  return [(NSDictionary *)v2 description];
}

@end