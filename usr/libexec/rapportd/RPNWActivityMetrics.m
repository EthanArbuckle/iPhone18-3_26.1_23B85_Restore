@interface RPNWActivityMetrics
+ (id)metricsUsingToken:(id)a3;
- (id)_initWithNWActivity:(id)a3;
- (void)submitMetrics;
@end

@implementation RPNWActivityMetrics

- (void)submitMetrics
{
  v5 = [(RPNWActivityMetrics *)self _metricsDictionary];
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  if (v3)
  {
    v4 = [(RPNWActivityMetrics *)self nwActivity];
    nw_activity_submit_metrics();
  }

  else if (dword_1001D3FF0 <= 90 && (dword_1001D3FF0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011CC4C();
  }
}

+ (id)metricsUsingToken:(id)a3
{
  v4 = a3;
  v5 = [RPNWActivityUtils activityFromToken:v4];
  if (v5)
  {
    v6 = [[a1 alloc] _initWithNWActivity:v5];
  }

  else
  {
    if (dword_1001D3FF0 <= 90 && (dword_1001D3FF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10011CC0C();
    }

    v6 = 0;
  }

  return v6;
}

- (id)_initWithNWActivity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RPNWActivityMetrics;
  v6 = [(RPNWActivityMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_nwActivity, a3);
  }

  return v7;
}

@end