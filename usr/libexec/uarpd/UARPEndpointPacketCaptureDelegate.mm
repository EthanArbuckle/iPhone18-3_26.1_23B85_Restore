@interface UARPEndpointPacketCaptureDelegate
- (UARPEndpointPacketCaptureDelegate)init;
- (void)closeDumper;
- (void)dealloc;
- (void)dumpPacket:(id)packet packetDirection:(unint64_t)direction;
- (void)updateFilepath:(id)filepath uuid:(id)uuid;
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

- (void)dumpPacket:(id)packet packetDirection:(unint64_t)direction
{
  packetCopy = packet;
  v7 = packetCopy;
  if (packetCopy)
  {
    internalQueue = self->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015D9C;
    block[3] = &unk_1000B8BC8;
    block[4] = self;
    directionCopy = direction;
    v10 = packetCopy;
    dispatch_async(internalQueue, block);
  }
}

- (void)updateFilepath:(id)filepath uuid:(id)uuid
{
  filepathCopy = filepath;
  uuidCopy = uuid;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015FE8;
  block[3] = &unk_1000B8B28;
  block[4] = self;
  v12 = uuidCopy;
  v13 = filepathCopy;
  v9 = filepathCopy;
  v10 = uuidCopy;
  dispatch_async(internalQueue, block);
}

@end