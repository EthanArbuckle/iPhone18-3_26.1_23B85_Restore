@interface WCM_HPCellularStateMonitor
- (BOOL)start;
- (WCM_HPCellularStateMonitor)init;
- (void)stateChanged:(id)changed;
@end

@implementation WCM_HPCellularStateMonitor

- (WCM_HPCellularStateMonitor)init
{
  v6.receiver = self;
  v6.super_class = WCM_HPCellularStateMonitor;
  v2 = [(WCM_HPCellularStateMonitor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_bHPCellSetBTMitigation = 0;
    v4 = [[CTStewieStateMonitor alloc] initWithDelegate:v2 queue:&_dispatch_main_q];
    v3->fMonitor = v4;
    if (!v4)
    {
      [WCM_Logging logLevel:2 message:@"HPCellular: Failed to create HPCellStateMonitor"];
    }
  }

  return v3;
}

- (BOOL)start
{
  [WCM_Logging logLevel:4 message:@"HPCellular: start HPCellularStateMonitor ..."];
  start = [(CTStewieStateMonitor *)self->fMonitor start];
  if (start)
  {
    getState = [(CTStewieStateMonitor *)self->fMonitor getState];
    [WCM_Logging logLevel:4 message:@"HPCellular: Initial state queried succesfully. Initial state: %@", getState];
    status = [getState status];
    v6 = +[WCM_PolicyManager singleton];
    if (v6)
    {
      v7 = v6;
      if ([objc_msgSend(v6 "activeCoexFeatures")])
      {
        if (status == 5)
        {
          [(WCM_HPCellularStateMonitor *)self setBHPCellSetBTMitigation:1];
          [WCM_Logging logLevel:4 message:@"HPCellular: In initial state query, HPCellular Status is Active, bHPCellSetBTMitigation = (%d)", [(WCM_HPCellularStateMonitor *)self bHPCellSetBTMitigation]];
        }

        else
        {
          [(WCM_HPCellularStateMonitor *)self setBHPCellSetBTMitigation:0];
        }

        [WCM_Logging logLevel:4 message:@"HPCellular: In initial state query, bHPCellSetBTMitigation = (%d)", [(WCM_HPCellularStateMonitor *)self bHPCellSetBTMitigation]];
        [v7 handleHPCellularStateUpdate:{-[WCM_HPCellularStateMonitor bHPCellSetBTMitigation](self, "bHPCellSetBTMitigation")}];
      }
    }
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"HPCellular: In initial state query, Failed to start"];
  }

  return start;
}

- (void)stateChanged:(id)changed
{
  if (changed)
  {
    status = [changed status];
    [WCM_Logging logLevel:4 message:@"HPCellular: stateChanged : %@", changed];
    v6 = +[WCM_PolicyManager singleton];
    if (v6)
    {
      v7 = v6;
      if ([objc_msgSend(v6 "activeCoexFeatures")])
      {
        if (status == 5)
        {
          [(WCM_HPCellularStateMonitor *)self setBHPCellSetBTMitigation:1];
          [WCM_Logging logLevel:4 message:@"HPCellular: stateChanged, HPCellular Status is Active, bHPCellSetBTMitigation = (%d)", [(WCM_HPCellularStateMonitor *)self bHPCellSetBTMitigation]];
        }

        else
        {
          [(WCM_HPCellularStateMonitor *)self setBHPCellSetBTMitigation:0];
        }

        [WCM_Logging logLevel:4 message:@"HPCellular: stateChanged, set bHPCellSetBTMitigation = (%d)", [(WCM_HPCellularStateMonitor *)self bHPCellSetBTMitigation]];
        bHPCellSetBTMitigation = [(WCM_HPCellularStateMonitor *)self bHPCellSetBTMitigation];

        [v7 handleHPCellularStateUpdate:bHPCellSetBTMitigation];
      }
    }
  }

  else
  {

    [WCM_Logging logLevel:"logLevel:message:" message:?];
  }
}

@end