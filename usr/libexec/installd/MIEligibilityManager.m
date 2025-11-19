@interface MIEligibilityManager
+ (MIEligibilityManager)sharedInstance;
- (BOOL)getEligibilityForDomain:(unint64_t)a3 answer:(unint64_t *)a4 source:(unint64_t *)a5 status:(id *)a6 context:(id *)a7 error:(id *)a8;
- (BOOL)testOverridesEnabled;
- (void)setTestOverrides:(id)a3;
@end

@implementation MIEligibilityManager

+ (MIEligibilityManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053198;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A9708 != -1)
  {
    dispatch_once(&qword_1000A9708, block);
  }

  v2 = qword_1000A9700;

  return v2;
}

- (BOOL)testOverridesEnabled
{
  v7 = 0;
  v2 = +[MIDaemonConfiguration sharedInstance];
  v3 = 0;
  if ([v2 allowsInternalSecurityPolicy])
  {
    v4 = +[MITestManager sharedInstance];
    v5 = [v4 isRunningInTestMode:&v7 outError:0];
    v3 = v5 & v7;
  }

  return v3;
}

- (void)setTestOverrides:(id)a3
{
  v7 = a3;
  if ([(MIEligibilityManager *)self testOverridesEnabled])
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v6 = v7;
      MOLogWrite();
    }

    v4 = [v7 copy];
    testOverrides = self->_testOverrides;
    self->_testOverrides = v4;
  }
}

- (BOOL)getEligibilityForDomain:(unint64_t)a3 answer:(unint64_t *)a4 source:(unint64_t *)a5 status:(id *)a6 context:(id *)a7 error:(id *)a8
{
  v15 = [(MIEligibilityManager *)self testOverrides];
  if (v15 && [(MIEligibilityManager *)self testOverridesEnabled])
  {
    v16 = [NSNumber numberWithUnsignedLongLong:a3];
    v18 = [v15 objectForKeyedSubscript:v16];
    v19 = v18 != 0;
    if (v18)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        MOLogWrite();
      }

      if (a4)
      {
        *a4 = [v18 unsignedLongLongValue];
      }

      if (a5)
      {
        *a5 = 2;
      }

      if (a6)
      {
        v20 = *a6;
        *a6 = 0;
      }

      if (!a7)
      {
        goto LABEL_23;
      }

      v21 = *a7;
      *a7 = 0;
    }

    else
    {
      v21 = sub_100010734("[MIEligibilityManager getEligibilityForDomain:answer:source:status:context:error:]", 81, MIInstallerErrorDomain, 219, 0, 0, @"Test mode: no override set for domain %llu failing", v17, a3);;
      if (a8)
      {
        v21 = v21;
        *a8 = v21;
      }
    }

LABEL_23:
LABEL_24:

    goto LABEL_25;
  }

  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v24 = MIInstallerErrorDomain;
    v25 = sub_1000106F4("[MIEligibilityManager getEligibilityForDomain:answer:source:status:context:error:]", 91, NSPOSIXErrorDomain, domain_answer, 0, 0, @"os_eligibility_get_domain_answer failed", v23, v29);
    v16 = sub_1000106F4("[MIEligibilityManager getEligibilityForDomain:answer:source:status:context:error:]", 91, v24, 4, v25, 0, @"Failed to check eligibility for domain %llu", v26, a3);

    if (a8)
    {
      v27 = v16;
      v19 = 0;
      *a8 = v16;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_24;
  }

  v19 = 1;
LABEL_25:

  return v19;
}

@end