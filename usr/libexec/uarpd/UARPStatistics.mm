@interface UARPStatistics
- (UARPStatistics)initWithPacketsNoVersionAgreement:(unint64_t)agreement packetsMissed:(unint64_t)missed packetsDuplicate:(unint64_t)duplicate packetsOutOfOrder:(unint64_t)order;
@end

@implementation UARPStatistics

- (UARPStatistics)initWithPacketsNoVersionAgreement:(unint64_t)agreement packetsMissed:(unint64_t)missed packetsDuplicate:(unint64_t)duplicate packetsOutOfOrder:(unint64_t)order
{
  v11.receiver = self;
  v11.super_class = UARPStatistics;
  result = [(UARPStatistics *)&v11 init];
  if (result)
  {
    result->_packetsNoVersionAgreement = agreement;
    result->_packetsMissed = missed;
    result->_packetsDuplicate = duplicate;
    result->_packetsOutOfOrder = order;
  }

  return result;
}

@end