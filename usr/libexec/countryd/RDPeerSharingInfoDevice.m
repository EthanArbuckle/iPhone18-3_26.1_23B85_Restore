@interface RDPeerSharingInfoDevice
- (RDPeerSharingInfoDevice)initWithCoder:(id)a3;
- (RDPeerSharingInfoDevice)initWithCountryCode:(id)a3 andDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RDPeerSharingInfoDevice

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RDPeerSharingInfoDevice *)self sharedCountryCode];
  v6 = [(RDPeerSharingInfoDevice *)self lastShareDate];
  v7 = [v4 initWithCountryCode:v5 andDate:v6];

  return v7;
}

- (RDPeerSharingInfoDevice)initWithCountryCode:(id)a3 andDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RDPeerSharingInfoDevice;
  v9 = [(RDPeerSharingInfoDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharedCountryCode, a3);
    objc_storeStrong(&v10->_lastShareDate, a4);
  }

  return v10;
}

- (RDPeerSharingInfoDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RDPeerSharingInfoDevice;
  v5 = [(RDPeerSharingInfoDevice *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"kRDPeerSharingInfoDeviceKeyCountry"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRDPeerSharingInfoDeviceKeyDate"];
    v5 = [(RDPeerSharingInfoDevice *)v5 initWithCountryCode:v6 andDate:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RDPeerSharingInfoDevice *)self sharedCountryCode];
  [v4 encodeObject:v5 forKey:@"kRDPeerSharingInfoDeviceKeyCountry"];

  v6 = [(RDPeerSharingInfoDevice *)self lastShareDate];
  [v4 encodeObject:v6 forKey:@"kRDPeerSharingInfoDeviceKeyDate"];
}

@end