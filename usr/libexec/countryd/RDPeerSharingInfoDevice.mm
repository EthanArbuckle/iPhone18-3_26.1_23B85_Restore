@interface RDPeerSharingInfoDevice
- (RDPeerSharingInfoDevice)initWithCoder:(id)coder;
- (RDPeerSharingInfoDevice)initWithCountryCode:(id)code andDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RDPeerSharingInfoDevice

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  sharedCountryCode = [(RDPeerSharingInfoDevice *)self sharedCountryCode];
  lastShareDate = [(RDPeerSharingInfoDevice *)self lastShareDate];
  v7 = [v4 initWithCountryCode:sharedCountryCode andDate:lastShareDate];

  return v7;
}

- (RDPeerSharingInfoDevice)initWithCountryCode:(id)code andDate:(id)date
{
  codeCopy = code;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = RDPeerSharingInfoDevice;
  v9 = [(RDPeerSharingInfoDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharedCountryCode, code);
    objc_storeStrong(&v10->_lastShareDate, date);
  }

  return v10;
}

- (RDPeerSharingInfoDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RDPeerSharingInfoDevice;
  v5 = [(RDPeerSharingInfoDevice *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"kRDPeerSharingInfoDeviceKeyCountry"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRDPeerSharingInfoDeviceKeyDate"];
    v5 = [(RDPeerSharingInfoDevice *)v5 initWithCountryCode:v6 andDate:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sharedCountryCode = [(RDPeerSharingInfoDevice *)self sharedCountryCode];
  [coderCopy encodeObject:sharedCountryCode forKey:@"kRDPeerSharingInfoDeviceKeyCountry"];

  lastShareDate = [(RDPeerSharingInfoDevice *)self lastShareDate];
  [coderCopy encodeObject:lastShareDate forKey:@"kRDPeerSharingInfoDeviceKeyDate"];
}

@end