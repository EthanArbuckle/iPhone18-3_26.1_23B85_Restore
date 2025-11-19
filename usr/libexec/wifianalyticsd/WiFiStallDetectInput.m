@interface WiFiStallDetectInput
- (WiFiStallDetectInput)initWithAC_problem_bitfield:(double)a3 TxBE_expiredCompletions:(double)a4 TxBE_failedCompletions:(double)a5 TxBE_noAckCompletions:(double)a6 TxBE_otherErrCompletions:(double)a7 TxBK_expiredCompletions:(double)a8 TxBK_failedCompletions:(double)a9 TxBK_noAckCompletions:(double)a10 TxBK_otherErrCompletions:(double)a11 TxVI_expiredCompletions:(double)a12 TxVI_failedCompletions:(double)a13 TxVI_noAckCompletions:(double)a14 TxVI_otherErrCompletions:(double)a15 TxVO_expiredCompletions:(double)a16 TxVO_failedCompletions:(double)a17 TxVO_noAckCompletions:(double)a18 TxVO_otherErrCompletions:(double)a19 bt_abort:(double)a20 bt_grant:(double)a21 bt_request:(double)a22 bt_uch_latency:(double)a23 cca_bin:(double)a24 completions_chipmodeerror:(double)a25 completions_expired:(double)a26 completions_internalerror:(double)a27 completions_ioerror:(double)a28 completions_noack:(double)a29 completions_nobuf:(double)a30 completions_noremotepeer:(double)a31 completions_noresources:(double)a32 completions_txfailure:(double)a33 roam_count:(double)a34 roam_duration:(double)a35 rssi_bin:(double)a36 snr_bin:(double)a37;
- (id)featureValueForName:(id)a3;
@end

@implementation WiFiStallDetectInput

- (WiFiStallDetectInput)initWithAC_problem_bitfield:(double)a3 TxBE_expiredCompletions:(double)a4 TxBE_failedCompletions:(double)a5 TxBE_noAckCompletions:(double)a6 TxBE_otherErrCompletions:(double)a7 TxBK_expiredCompletions:(double)a8 TxBK_failedCompletions:(double)a9 TxBK_noAckCompletions:(double)a10 TxBK_otherErrCompletions:(double)a11 TxVI_expiredCompletions:(double)a12 TxVI_failedCompletions:(double)a13 TxVI_noAckCompletions:(double)a14 TxVI_otherErrCompletions:(double)a15 TxVO_expiredCompletions:(double)a16 TxVO_failedCompletions:(double)a17 TxVO_noAckCompletions:(double)a18 TxVO_otherErrCompletions:(double)a19 bt_abort:(double)a20 bt_grant:(double)a21 bt_request:(double)a22 bt_uch_latency:(double)a23 cca_bin:(double)a24 completions_chipmodeerror:(double)a25 completions_expired:(double)a26 completions_internalerror:(double)a27 completions_ioerror:(double)a28 completions_noack:(double)a29 completions_nobuf:(double)a30 completions_noremotepeer:(double)a31 completions_noresources:(double)a32 completions_txfailure:(double)a33 roam_count:(double)a34 roam_duration:(double)a35 rssi_bin:(double)a36 snr_bin:(double)a37
{
  v46.receiver = self;
  v46.super_class = WiFiStallDetectInput;
  result = [(WiFiStallDetectInput *)&v46 init];
  if (result)
  {
    result->_AC_problem_bitfield = a3;
    result->_TxBE_expiredCompletions = a4;
    result->_TxBE_failedCompletions = a5;
    result->_TxBE_noAckCompletions = a6;
    result->_TxBE_otherErrCompletions = a7;
    result->_TxBK_expiredCompletions = a8;
    result->_TxBK_failedCompletions = a9;
    result->_TxBK_noAckCompletions = a10;
    result->_TxBK_otherErrCompletions = a11;
    result->_TxVI_expiredCompletions = a12;
    result->_TxVI_failedCompletions = a13;
    result->_TxVI_noAckCompletions = a14;
    result->_TxVI_otherErrCompletions = a15;
    result->_TxVO_expiredCompletions = a16;
    result->_TxVO_failedCompletions = a17;
    result->_TxVO_noAckCompletions = a18;
    result->_TxVO_otherErrCompletions = a19;
    result->_bt_abort = a20;
    result->_bt_grant = a21;
    result->_bt_request = a22;
    result->_bt_uch_latency = a23;
    result->_cca_bin = a24;
    result->_completions_chipmodeerror = a25;
    result->_completions_expired = a26;
    result->_completions_internalerror = a27;
    result->_completions_ioerror = a28;
    result->_completions_noack = a29;
    result->_completions_nobuf = a30;
    result->_completions_noremotepeer = a31;
    result->_completions_noresources = a32;
    result->_completions_txfailure = a33;
    result->_roam_count = a34;
    result->_roam_duration = a35;
    result->_rssi_bin = a36;
    result->_snr_bin = a37;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AC_problem_bitfield"])
  {
    [(WiFiStallDetectInput *)self AC_problem_bitfield];
LABEL_71:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_72;
  }

  if ([v4 isEqualToString:@"TxBE_expiredCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBE_expiredCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxBE_failedCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBE_failedCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxBE_noAckCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBE_noAckCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxBE_otherErrCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBE_otherErrCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxBK_expiredCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBK_expiredCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxBK_failedCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBK_failedCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxBK_noAckCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBK_noAckCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxBK_otherErrCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBK_otherErrCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxVI_expiredCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVI_expiredCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxVI_failedCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVI_failedCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxVI_noAckCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVI_noAckCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxVI_otherErrCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVI_otherErrCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxVO_expiredCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVO_expiredCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxVO_failedCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVO_failedCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxVO_noAckCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVO_noAckCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"TxVO_otherErrCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVO_otherErrCompletions];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"bt_abort"])
  {
    [(WiFiStallDetectInput *)self bt_abort];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"bt_grant"])
  {
    [(WiFiStallDetectInput *)self bt_grant];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"bt_request"])
  {
    [(WiFiStallDetectInput *)self bt_request];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"bt_uch_latency"])
  {
    [(WiFiStallDetectInput *)self bt_uch_latency];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"cca_bin"])
  {
    [(WiFiStallDetectInput *)self cca_bin];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_chipmodeerror"])
  {
    [(WiFiStallDetectInput *)self completions_chipmodeerror];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_expired"])
  {
    [(WiFiStallDetectInput *)self completions_expired];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_internalerror"])
  {
    [(WiFiStallDetectInput *)self completions_internalerror];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_ioerror"])
  {
    [(WiFiStallDetectInput *)self completions_ioerror];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_noack"])
  {
    [(WiFiStallDetectInput *)self completions_noack];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_nobuf"])
  {
    [(WiFiStallDetectInput *)self completions_nobuf];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_noremotepeer"])
  {
    [(WiFiStallDetectInput *)self completions_noremotepeer];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_noresources"])
  {
    [(WiFiStallDetectInput *)self completions_noresources];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"completions_txfailure"])
  {
    [(WiFiStallDetectInput *)self completions_txfailure];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"roam_count"])
  {
    [(WiFiStallDetectInput *)self roam_count];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"roam_duration"])
  {
    [(WiFiStallDetectInput *)self roam_duration];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"rssi_bin"])
  {
    [(WiFiStallDetectInput *)self rssi_bin];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"snr_bin"])
  {
    [(WiFiStallDetectInput *)self snr_bin];
    goto LABEL_71;
  }

  v5 = 0;
LABEL_72:

  return v5;
}

@end