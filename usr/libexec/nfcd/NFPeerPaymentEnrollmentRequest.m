@interface NFPeerPaymentEnrollmentRequest
- (NFPeerPaymentEnrollmentRequest)initWithCoder:(id)a3;
- (NFPeerPaymentEnrollmentRequest)initWithDictionary:(id)a3;
@end

@implementation NFPeerPaymentEnrollmentRequest

- (NFPeerPaymentEnrollmentRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFPeerPaymentEnrollmentRequest;
  v5 = [(NFPeerPaymentEnrollmentRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"alternateDSID"];
    alternateDSID = v5->_alternateDSID;
    v5->_alternateDSID = v6;
  }

  return v5;
}

- (NFPeerPaymentEnrollmentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFPeerPaymentEnrollmentRequest;
  v5 = [(NFPeerPaymentEnrollmentRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternateDSID"];
    alternateDSID = v5->_alternateDSID;
    v5->_alternateDSID = v6;
  }

  return v5;
}

@end