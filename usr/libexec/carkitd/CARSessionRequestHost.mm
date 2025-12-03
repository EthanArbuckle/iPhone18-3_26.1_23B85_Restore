@interface CARSessionRequestHost
- (id)initWithDisplayName:(id)name authenticationCertificateSerial:(id)serial pairedVehicleIdentifier:(id)identifier wiFiUUID:(id)d bleStartSessionMessage:(id)message;
@end

@implementation CARSessionRequestHost

- (id)initWithDisplayName:(id)name authenticationCertificateSerial:(id)serial pairedVehicleIdentifier:(id)identifier wiFiUUID:(id)d bleStartSessionMessage:(id)message
{
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  serialCopy = serial;
  nameCopy = name;
  wiredIPs = [messageCopy wiredIPs];
  wirelessIPs = [messageCopy wirelessIPs];
  port = [messageCopy port];
  integerValue = [port integerValue];
  deviceID = [messageCopy deviceID];
  publicKey = [messageCopy publicKey];
  sourceVersion = [messageCopy sourceVersion];

  LOWORD(v22) = 0;
  LOBYTE(v21) = 1;
  v19 = [(CARSessionRequestHost *)self initWithDisplayName:nameCopy wiredIPv6Addresses:wiredIPs wirelessIPv6Addresses:wirelessIPs port:integerValue carplayWiFiUUID:dCopy deviceIdentifier:deviceID publicKey:publicKey sourceVersion:sourceVersion supportsMutualAuthentication:v21 authenticationCertificateSerial:serialCopy pairedVehicleIdentifier:identifierCopy wiredCarPlaySimulator:v22 remoteDeviceConnected:?];

  return v19;
}

@end