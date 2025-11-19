@interface UARPEndpointPacketCaptureDelegate
- (UARPEndpointPacketCaptureDelegate)init;
- (void)closeDumper;
- (void)dealloc;
- (void)dumpPacket:(id)a3 packetDirection:(unint64_t)a4;
- (void)updateFilepath:(id)a3 uuid:(id)a4;
@end

@implementation UARPEndpointPacketCaptureDelegate

- (UARPEndpointPacketCaptureDelegate)init
{
  v6.receiver = self;
  v6.super_class = UARPEndpointPacketCaptureDelegate;
  v2 = [(UARPEndpointPacketCaptureDelegate *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.uarp.uarpd.logger", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(UARPEndpointPacketCaptureDelegate *)self closeDumper];
  v3.receiver = self;
  v3.super_class = UARPEndpointPacketCaptureDelegate;
  [(UARPEndpointPacketCaptureDelegate *)&v3 dealloc];
}

- (void)closeDumper
{
  pcap = self->_pcap;
  if (pcap)
  {
    pcap_close(pcap);
    self->_pcap = 0;
  }

  dumper = self->_dumper;
  if (dumper)
  {
    pcap_dump_close(dumper);
    self->_dumper = 0;
  }
}

- (void)dumpPacket:(id)a3 packetDirection:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    internalQueue = self->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015D9C;
    block[3] = &unk_1000B8BC8;
    block[4] = self;
    v11 = a4;
    v10 = v6;
    dispatch_async(internalQueue, block);
  }
}

- (void)updateFilepath:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015FE8;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(internalQueue, block);
}

@end