void sub_100064534(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[UARPEndpointLayer3 denyAsset:denyReason:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s: Deny Asset", &v2, 0xCu);
  }
}

id sub_100064670(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[UARPEndpointLayer3 acceptLayer3Payload:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Accept Layer 3 Payload", &v5, 0xCu);
  }

  result = uarpPlatformEndpointPayloadRequestMetaData(*(*(a1 + 32) + 8), [*(a1 + 40) layer2Context]);
  if (result)
  {
    if (result == 40)
    {
      return [*(a1 + 32) assetPayloadMetaDataComplete:*(a1 + 40)];
    }

    else
    {
      v4 = *(*(a1 + 32) + 1024);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000841D8(v4);
      }

      return [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:28];
    }
  }

  return result;
}

id sub_100064820(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[UARPEndpointLayer3 nextLayer3Payload:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Next Layer 3 Payload", &v4, 0xCu);
  }

  return [*(a1 + 32) selectLayer3Payload:*(a1 + 40) payloadIndex:{objc_msgSend(*(a1 + 40), "selectedPayloadIndex") + 1}];
}

id sub_100064A34(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[UARPEndpointLayer3 selectLayer3Payload:payloadIndex:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Next Layer 3 Payload", &v16, 0xCu);
  }

  [*(a1 + 40) setSelectedPayloadIndex:*(a1 + 48)];
  v3 = [*(a1 + 40) selectedPayloadIndex];
  v4 = [*(a1 + 40) numPayloads];
  v5 = *(a1 + 32);
  if (v3 >= v4)
  {
    v11 = *(v5 + 1024);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fully Staged for SuperBinary <%@> for Endpoint <%@>", &v16, 0x16u);
    }

    [*(a1 + 40) setProcessingStatus:1];
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v10 = [v14 processingStatus];
    v8 = v15;
    v9 = v14;
  }

  else
  {
    result = uarpPlatformEndpointAssetSetPayloadIndex(*(v5 + 8), [*(a1 + 40) layer2Context], objc_msgSend(*(a1 + 40), "selectedPayloadIndex"));
    if (!result)
    {
      return result;
    }

    v7 = *(*(a1 + 32) + 1024);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008426C((a1 + 40), v7);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 28;
  }

  return [v8 assetFullyStaged:v9 status:v10];
}

void sub_100064CB8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = v2;
    v6 = [v3 uuid];
    *v12 = 136315650;
    *&v12[4] = "[UARPEndpointLayer3 solicitDynamicAsset:assetTag:]_block_invoke";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Solicit Dynanmic Asset; 4cc = %@, UUID = %@", v12, 0x20u);
  }

  v12[0] = [*(a1 + 40) char1];
  v12[1] = [*(a1 + 40) char2];
  v12[2] = [*(a1 + 40) char3];
  v12[3] = [*(a1 + 40) char4];
  v7 = uarpPlatformEndpointPrepareSolicitedDynamicAsset(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24), *(a1 + 48), v12, *(a1 + 32) + 632);
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = v8[128];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_5;
  }

  v10 = uarpPlatformEndpointSolicitDynamicAsset(v8[1], v8[3], v12, *(a1 + 48));
  v11 = *(a1 + 32);
  if (v10)
  {
    v9 = *(v11 + 1024);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      sub_100084308(v9);
    }
  }

  else
  {
    [*(v11 + 928) addObject:*(a1 + 48)];
  }
}

void sub_100064F04(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(*(a1 + 32) + 1032) UUIDString];
  [v2 setObject:v3 forKeyedSubscript:@"Endpoint UUID"];

  v4 = [NSNumber numberWithUnsignedShort:*(*(a1 + 32) + 990)];
  [v2 setObject:v4 forKeyedSubscript:@"Endpoint ID"];

  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 40) endpointID]);
  [v2 setObject:v5 forKeyedSubscript:@"DownstreamEndpoint Endpoint ID"];

  v6 = [*(a1 + 40) uuid];
  v7 = [v6 UUIDString];
  [v2 setObject:v7 forKeyedSubscript:@"DownstreamEndpoint Endpoint UUID"];

  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_10008439C();
  }

  [*(*(a1 + 32) + 976) addObject:*(a1 + 40)];
  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_10008441C((a1 + 32));
  }
}

void sub_1000651C4(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = *(*(a1 + 32) + 1024);
  if (*(a1 + 48))
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_INFO))
    {
      v4 = *v1;
      v6 = 136315394;
      v7 = "[UARPEndpointLayer3 downstreamEndpointReachable:downstreamEndpointID:]_block_invoke";
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Adding downstream endpoint id 0x%04x", &v6, 0x12u);
    }

    if (uarpPlatformDownstreamEndpointReachable(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24), *(a1 + 40), *(a1 + 48)))
    {
      v5 = *(*(a1 + 32) + 1024);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000844A8(v1, v5);
      }
    }
  }

  else if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_ERROR))
  {
    sub_100084544(v2);
  }
}

void sub_10006539C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[UARPEndpointLayer3 downstreamEndpointUnreachable:downstreamEndpointID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Removing downstream endpoint", &v5, 0xCu);
  }

  v3 = (a1 + 48);
  if (uarpPlatformDownstreamEndpointUnreachable(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24), *(a1 + 40), *(a1 + 48)))
  {
    v4 = *(*(a1 + 32) + 1024);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000845C8(v3, v4);
    }
  }
}

void sub_100065540(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 984) == 1)
  {
    v3 = *(v2 + 1024);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      v7 = 136315394;
      v8 = "[UARPEndpointLayer3 sendMessageUpstream:fromDownstreamID:]_block_invoke";
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Send message from downstream endpoint id %lu", &v7, 0x16u);
    }

    v2 = *(a1 + 32);
  }

  [v2 packetTracking:*(a1 + 40) inFunction:"-[UARPEndpointLayer3 sendMessageUpstream:fromDownstreamID:]_block_invoke"];
  v5 = (a1 + 48);
  if (uarpPlatformSendMessageFromDownstreamEndpointID(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24), *(a1 + 48), [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length")))
  {
    v6 = *(*(a1 + 32) + 1024);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100084664(v5, v6);
    }
  }
}

void sub_1000657B0(void *a1)
{
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v2 = *(a1[4] + 904);
  v3 = [v2 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v59;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v59 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v58 + 1) + 8 * i);
        v8 = [v7 uuid];
        v9 = UARPLayer3MatchingUUIDs(v8, a1[5]);

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v10 = *(a1[4] + 920);
  v11 = [v10 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v55;
    while (2)
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v54 + 1) + 8 * j);
        v16 = [v15 uuid];
        v17 = UARPLayer3MatchingUUIDs(v16, a1[5]);

        if (v17)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v15);
          goto LABEL_21;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v54 objects:v65 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v18 = *(a1[4] + 912);
  v19 = [v18 countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v51;
    while (2)
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v51 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v50 + 1) + 8 * k);
        v24 = [v23 uuid];
        v25 = UARPLayer3MatchingUUIDs(v24, a1[5]);

        if (v25)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v23);
          goto LABEL_31;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v50 objects:v64 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = *(a1[4] + 928);
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v63 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    while (2)
    {
      for (m = 0; m != v28; m = m + 1)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v46 + 1) + 8 * m);
        v32 = [v31 uuid];
        v33 = UARPLayer3MatchingUUIDs(v32, a1[5]);

        if (v33)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v31);
          goto LABEL_41;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v63 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_41:

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v34 = *(a1[4] + 936);
  v35 = [v34 countByEnumeratingWithState:&v42 objects:v62 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v43;
    while (2)
    {
      for (n = 0; n != v36; n = n + 1)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v42 + 1) + 8 * n);
        v40 = [v39 uuid];
        v41 = UARPLayer3MatchingUUIDs(v40, a1[5]);

        if (v41)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v39);
          goto LABEL_51;
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v42 objects:v62 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

LABEL_51:
}

void sub_100065C80(uint64_t a1)
{
  v2 = uarpPlatformEndpointDiscoverEndpointIDs(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24));
  if (v2)
  {
    uarpStatusCodeToString(v2);
    if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
    {
      sub_100084700();
    }
  }
}

void sub_100065D8C(uint64_t a1)
{
  [*(a1 + 32) packetTracking:*(a1 + 40) inFunction:"-[UARPEndpointLayer3 uarpRouteRecvMessageToDownstreamEndpoint:downstreamEndpointID:]_block_invoke"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 976);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        if ([v7 endpointID] == *(a1 + 48))
        {
          v8 = *(a1 + 32);
          if (*(v8 + 984) == 1)
          {
            v9 = *(v8 + 1024);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              v10 = *(a1 + 48);
              v11 = v9;
              v12 = [v7 uuid];
              v13 = [v12 UUIDString];
              *buf = 136315650;
              v19 = "[UARPEndpointLayer3 uarpRouteRecvMessageToDownstreamEndpoint:downstreamEndpointID:]_block_invoke";
              v20 = 2048;
              v21 = v10;
              v22 = 2112;
              v23 = v13;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Found Downstream Endpoint matching Downstream ID %lu, %@", buf, 0x20u);
            }
          }

          [v7 uarpMessageRecvFromTransport:*(a1 + 40)];
          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v2 = uarpPlatformDownstreamEndpointDelegateFindOnListByID(*(*(a1 + 32) + 8), *(*(a1 + 32) + 24), *(a1 + 48));
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___UARPEndpointTransportTxProtocol])
  {
    [v2 uarpMessageSendToTransport:*(a1 + 40)];
  }

LABEL_15:
}

void sub_10006CB28(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) logRxPacket:*(a1 + 40)];
  [*(a1 + 32) packetTracking:*(a1 + 40) inFunction:"-[UARPEndpointLayer3 uarpMessageRecvFromTransport:]_block_invoke"];
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (uarpMessageAdjustedForEndpointID([*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"), &v12, &v11, &v10))
  {
    v2 = *(*(a1 + 32) + 1024);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100084C2C(v2);
    }
  }

  else
  {
    v3 = v12;
    v4 = *(a1 + 32);
    if (!v12 && *(v4 + 984) == 1)
    {
      v5 = *(v4 + 1024);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = "[UARPEndpointLayer3 uarpMessageRecvFromTransport:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: direct endpoint, no need for downstream routing", buf, 0xCu);
      }

      v4 = *(a1 + 32);
    }

    if (*(v4 + 992) > 5u || *(v4 + 996))
    {
      if (v3)
      {
        v6 = [NSData dataWithBytes:v11 length:v10];
        [*(a1 + 32) uarpRouteRecvMessageToDownstreamEndpoint:v6 downstreamEndpointID:v12];

        return;
      }
    }

    else if (*(v4 + 984) == 1)
    {
      v7 = *(v4 + 1024);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 32) + 992);
        *buf = 136315394;
        v14 = "[UARPEndpointLayer3 uarpMessageRecvFromTransport:]_block_invoke";
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: protocol version %u, cannot do downstream routing", buf, 0x12u);
      }

      v4 = *(a1 + 32);
    }

    if (uarpPlatformEndpointRecvMessage(*(v4 + 8), *(v4 + 24), [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length")))
    {
      v9 = *(*(a1 + 32) + 1024);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100084CB4(v9);
      }
    }
  }
}

id sub_10006DA60(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) logTxPacket:*(a1 + 40)];
  [*(a1 + 32) packetTracking:*(a1 + 40) inFunction:"-[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackSendMessage:length:]_block_invoke"];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(v2 + 990);

    return [v3 sendMessageUpstream:v4 fromDownstreamID:v5];
  }

  else
  {
    v7 = *(v2 + 1000);
    v8 = *(a1 + 40);

    return [v7 uarpMessageSendToTransport:v8];
  }
}

void sub_10006DB80(uint64_t a1)
{
  v2 = [UARPSuperBinaryLayer3 alloc];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = (a1 + 32);
  v6 = [(UARPSuperBinaryLayer3 *)v2 initWithLayer2Context:v3 tmpFolderPath:*(v4 + 1040)];
  if (os_log_type_enabled(*(*v5 + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_100084EF8(v5);
  }

  [*(*v5 + 904) addObject:v6];
  [(UARPSuperBinaryLayer3 *)v6 setAssetType:2];
  v7 = [(UARPSuperBinaryLayer3 *)v6 updateIncomingAssetProperties:*v5];
  v8 = *v5;
  if (v7)
  {
    [v8 notifyAssetOffered:v6];
  }

  else
  {
    [v8 assetFullyStaged:v6 status:28];
  }
}

void sub_10006DCEC(uint64_t a1)
{
  v2 = [UARPSuperBinaryLayer3 alloc];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = (a1 + 40);
  v6 = [(UARPSuperBinaryLayer3 *)v2 initWithLayer2Context:v3 assetTag:*(v5 - 1) tmpFolderPath:*(v4 + 1040)];
  if (os_log_type_enabled(*(*v5 + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_100084F70(v5);
  }

  [*(*v5 + 928) addObject:v6];
  [(UARPSuperBinaryLayer3 *)v6 setAssetType:4];
  v7 = [(UARPSuperBinaryLayer3 *)v6 updateIncomingAssetProperties:*v5];
  v8 = *v5;
  if (v7)
  {
    [v8 notifyAssetOffered:v6];
  }

  else
  {
    [v8 assetFullyStaged:v6 status:28];
  }
}

id sub_10006DE54(uint64_t a1)
{
  v2 = (a1 + 32);
  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_100084FE8(v2);
  }

  [*(a1 + 40) setLayer2Context:*(a1 + 48)];
  [*(a1 + 40) setAssetType:4];
  v3 = [*(a1 + 40) updateIncomingAssetProperties:*(a1 + 32)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3)
  {
    return [v4 notifyAssetOffered:v5];
  }

  else
  {
    return [v4 assetFullyStaged:v5 status:28];
  }
}

id sub_10006E184(uint64_t a1)
{
  v2 = (a1 + 32);
  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_100085064(v2);
  }

  return [*(a1 + 32) notifyEndpointAppliedStagedAssets:*(a1 + 40)];
}

id sub_10006EB24(uint64_t a1)
{
  v2 = (a1 + 32);
  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_1000850E0(v2);
  }

  return [*(a1 + 32) notifyAssetSolicited:*(a1 + 40)];
}

void sub_10006ECB4(uint64_t a1)
{
  v3 = [[UARPComponentVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
  v2 = [*(*(a1 + 32) + 856) objectAtIndexedSubscript:0];
  [v2 setStagedFirmwareVersion:v3];
}

id sub_10006EDAC(uint64_t a1)
{
  v1 = (a1 + 32);
  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_10008515C(v1);
  }

  return [*v1 notifyEndpointRescindedStagedAssets];
}

void sub_10006EF10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained watchdogExpire];
}

id sub_10006F590(uint64_t a1)
{
  v2 = (a1 + 32);
  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_1000853B4(v2);
  }

  return [*(a1 + 32) notifyDownstreamEndpointReachable:*(a1 + 40)];
}

id sub_10006F66C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_DEBUG))
  {
    sub_100085428(v2);
  }

  return [*(a1 + 32) notifyDownstreamEndpointUnreachable:*(a1 + 40)];
}

id sub_10006F798(void *a1)
{
  v2 = uarpPlatformDownstreamEndpointIDFindOnListByDelegate(*(a1[4] + 8), *(a1[4] + 24), a1[5]);
  v3 = a1[4];
  v4 = a1[6];

  return [v3 uarpRouteRecvMessageToDownstreamEndpoint:v4 downstreamEndpointID:v2];
}

void sub_10006F880(uint64_t a1)
{
  [*(*(a1 + 32) + 864) addObjectsFromArray:*(a1 + 40)];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 864);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 136315394;
    v16 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(a1 + 32);
        v9 = *(v8 + 8);
        v10 = *(v8 + 24);
        v11 = [*(*(&v17 + 1) + 8 * i) endpointID];
        EndpointComponentDiscovery = uarpPlatformQueryEndpointComponentDiscovery(v9, v10, [v11 unsignedShortValue]);

        if (EndpointComponentDiscovery)
        {
          v13 = *(*(a1 + 32) + 1024);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = v13;
            v15 = uarpStatusCodeToString(EndpointComponentDiscovery);
            *buf = v16;
            v22 = "[UARPEndpointLayer3(Layer2EndpointCallbacks) layer2CallbackDiscoveredEndpointIDs:]_block_invoke";
            v23 = 2080;
            v24 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: uarpPlatformQueryEndpointComponentDiscovery() %s", buf, 0x16u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }
}

void sub_10006FAF0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 864);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 endpointID];
        v9 = [v8 unsignedShortValue];
        v10 = *(a1 + 48);

        if (v9 == v10)
        {
          [v7 setComponents:*(a1 + 40)];
          v11 = v7;

          if (v11)
          {
            [*(*(a1 + 32) + 864) removeObject:v11];
            [*(*(a1 + 32) + 856) addObject:v11];
            if (![*(*(a1 + 32) + 864) count])
            {
              [*(a1 + 32) setupPendingInfoQueries];
            }
          }

          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:
}

void sub_10006FD44(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(*(a1 + 32) + 856);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v25;
    while (2)
    {
      v5 = 0;
      v18 = v3;
      do
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * v5);
        v7 = [v6 endpointID];
        v8 = [v7 unsignedShortValue];
        v9 = *(a1 + 56);

        if (v8 == v9)
        {
          if ([*(a1 + 40) isRootLevel])
          {
            [*(a1 + 32) processOutstandingEndpointInfoQueries:v6 infoProperties:*(a1 + 48)];
            goto LABEL_23;
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = [v6 components];
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
            while (2)
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v20 + 1) + 8 * i);
                v16 = *(a1 + 40);
                v17 = [v15 componentTag];
                LODWORD(v16) = [v16 isEqual:v17];

                if (v16)
                {
                  [*(a1 + 32) processOutstandingComponentInfoQueries:v15 infoProperties:*(a1 + 48)];
                  goto LABEL_18;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:

          v3 = v18;
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
}

id sub_100070030(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(*(a1 + 32) + 856);
  v2 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v26;
    while (2)
    {
      v5 = 0;
      v19 = v3;
      do
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * v5);
        v7 = [v6 endpointID];
        v8 = [v7 unsignedShortValue];
        v9 = *(a1 + 56);

        if (v8 == v9)
        {
          if ([*(a1 + 40) isRootLevel])
          {
            [*(a1 + 32) processRespondedEndpointInfoQueries:v6 tlvs:*(a1 + 48)];
            goto LABEL_23;
          }

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = [v6 components];
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            while (2)
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v21 + 1) + 8 * i);
                v16 = *(a1 + 40);
                v17 = [v15 componentTag];
                LODWORD(v16) = [v16 isEqual:v17];

                if (v16)
                {
                  [*(a1 + 32) processRespondedComponentInfoQueries:v15 tlvs:*(a1 + 48)];
                  goto LABEL_18;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:

          v3 = v19;
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  return [*(a1 + 32) checkPropertyQueryComplete];
}

id sub_100072F80(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v7 = 136315650;
    v8 = "[UARPEndpointLayer3(Layer2AssetCallbacks) assetReady:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Asset Ready SuperBinary <%@> for Endpoint <%@>", &v7, 0x20u);
  }

  result = uarpPlatformEndpointAssetRequestMetaData(*(*(a1 + 32) + 8), [*(a1 + 40) layer2Context]);
  if (result)
  {
    if (result == 40)
    {
      return [*(a1 + 32) assetMetaDataComplete:*(a1 + 40)];
    }

    else
    {
      v6 = *(*(a1 + 32) + 1024);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10008549C(v6);
      }

      return [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:28];
    }
  }

  return result;
}

id sub_100073174(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Asset TLV %@ for SuperBinary <%@> for Endpoint <%@>", &v7, 0x20u);
  }

  return [*(a1 + 48) addTLV:*(a1 + 40)];
}

id sub_1000732D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Asset MetaData Complete for SuperBinary <%@> for Endpoint <%@>", &v6, 0x16u);
  }

  [*(a1 + 32) notifyEndpointAssetMetaDataComplete:*(a1 + 40)];
  return [*(a1 + 32) firstLayer3Payload:*(a1 + 40)];
}

id sub_100073438(uint64_t a1)
{
  v2 = (a1 + 32);
  if (os_log_type_enabled(*(*(a1 + 32) + 1024), OS_LOG_TYPE_ERROR))
  {
    sub_100085530(a1, v2);
  }

  if (*(a1 + 48) == 53)
  {
    v3 = 30;
  }

  else
  {
    v3 = 28;
  }

  return [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:v3];
}

void sub_100073544(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 selectedPayloadIndex];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    LODWORD(v15[0]) = 134218498;
    *(v15 + 4) = v5;
    WORD6(v15[0]) = 2112;
    *(v15 + 14) = v6;
    WORD3(v15[1]) = 2112;
    *(&v15[1] + 1) = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Payload Index <%lu> Ready for SuperBinary <%@> for Endpoint <%@>", v15, 0x20u);
  }

  memset(v15, 0, sizeof(v15));
  uarpPlatformAssetSelectedPayloadInfo([*(a1 + 40) layer2Context], v15);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 1024);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000855B8((a1 + 40), v9);
    }

    [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:28];
  }

  else
  {
    v10 = [UARPComponentTag alloc];
    v11 = [(UARPComponentTag *)v10 initWithChar1:SLOBYTE(v15[0]) char2:SBYTE1(v15[0]) char3:SBYTE2(v15[0]) char4:SBYTE3(v15[0])];
    v12 = [UARPComponentVersion alloc];
    v13 = [(UARPComponentVersion *)v12 initWithMajorVersion:DWORD1(v15[0]) minorVersion:DWORD2(v15[0]) releaseVersion:HIDWORD(v15[0]) buildVersion:LODWORD(v15[1])];
    v14 = [*(a1 + 40) addPayloadWith4cc:v11 payloadVersion:v13 payloadIndex:{objc_msgSend(*(a1 + 40), "selectedPayloadIndex")}];
    [*(a1 + 32) notifyPayloadReady:*(a1 + 40) payload:v14];
  }
}

void sub_1000737BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 selectedPayloadIndex];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 134218498;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Payload Index <%lu> TLV for SuperBinary <%@> for Endpoint <%@>", &v9, 0x20u);
  }

  v8 = [*(a1 + 40) payloadWithMatchingIndex:{objc_msgSend(*(a1 + 40), "selectedPayloadIndex")}];
  [v8 addTLV:*(a1 + 48)];
}

void sub_100073958(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 selectedPayloadIndex];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = 134218498;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Payload Index <%lu> MetaData Complete for SuperBinary <%@> for Endpoint <%@>", &v10, 0x20u);
  }

  if (uarpPlatformEndpointPayloadRequestData(*(*(a1 + 32) + 8), [*(a1 + 40) layer2Context]))
  {
    v8 = *(*(a1 + 32) + 1024);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100085654(v8);
    }
  }

  else
  {
    v9 = [*(a1 + 40) payloadWithMatchingIndex:{objc_msgSend(*(a1 + 40), "selectedPayloadIndex")}];
    [*(a1 + 32) notifyEndpointPayloadMetaDataComplete:*(a1 + 40) payload:v9];
  }
}

id sub_100073B50(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000856E8(a1, v3, v2);
  }

  if (*(a1 + 48) == 53)
  {
    v4 = 30;
  }

  else
  {
    v4 = 28;
  }

  return [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:v4];
}

void sub_100073C98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 selectedPayloadIndex];
    v6 = *(a1 + 56);
    v7 = [*(a1 + 48) length];
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v14 = 134219010;
    v15 = v5;
    v16 = 2048;
    v17 = v6;
    v18 = 2048;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Payload Index <%lu> Data (offset %lu, length %lu> for SuperBinary <%@> for Endpoint <%@>", &v14, 0x34u);
  }

  v10 = [*(a1 + 40) payloadWithMatchingIndex:{objc_msgSend(*(a1 + 40), "selectedPayloadIndex")}];
  v11 = [v10 appendPayloadData:*(a1 + 48) offset:*(a1 + 56)];
  v12 = *(a1 + 32);
  if (v11)
  {
    [v12 notifyEndpointPayloadData:*(a1 + 40) payload:v10 offset:*(a1 + 56) payloadData:*(a1 + 48)];
  }

  else
  {
    v13 = v12[128];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000857AC((a1 + 40), v13);
    }

    [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:28];
  }
}

void sub_100073EA8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [v3 selectedPayloadIndex];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 134218498;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Payload Index <%lu> Data Complete for SuperBinary <%@> for Endpoint <%@>", buf, 0x20u);
  }

  v8 = [*(a1 + 40) payloadWithMatchingIndex:{objc_msgSend(*(a1 + 40), "selectedPayloadIndex")}];
  [*(a1 + 32) directConfiguration];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = v30 = 0u;
  v9 = [v26 components];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v14 componentTag];
        v16 = [v8 payload4cc];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          v18 = [v8 payloadVersion];
          [v14 setStagedFirmwareVersion:v18];

          v19 = *(*(a1 + 32) + 1024);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 40);
            v21 = v19;
            v22 = [v20 selectedPayloadIndex];
            v24 = *(a1 + 32);
            v23 = *(a1 + 40);
            v25 = [v14 stagedFirmwareVersion];
            *buf = 134218754;
            v32 = v22;
            v33 = 2112;
            v34 = v23;
            v35 = 2112;
            v36 = v24;
            v37 = 2112;
            v38 = v25;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Payload Index <%lu> for SuperBinary <%@> for Endpoint <%@>.updated staged firmware version to %@", buf, 0x2Au);
          }

          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  [*(a1 + 32) notifyEndpointPayloadDataComplete:*(a1 + 40) payload:v8];
  [*(a1 + 32) nextLayer3Payload:*(a1 + 40)];
}

id sub_100074260(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 bytesTransferred];
  v5 = [*(a1 + 40) assetLength];

  return [v2 notifyAssetStagingProgress:v3 bytesTransferred:v4 assetLength:v5];
}

void sub_1000745AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "NOT IMPLEMENTED YET - Asset Rescinded for SuperBinary <%@> for Endpoint <%@>", &v5, 0x16u);
  }
}

id sub_1000746F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Asset Corrupt for SuperBinary <%@> for Endpoint <%@>", &v6, 0x16u);
  }

  return [*(a1 + 32) assetFullyStaged:*(a1 + 40) status:36];
}

void sub_100074848(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "NOT IMPLEMENTED YET - Asset Orphan for SuperBinary <%@> for Endpoint <%@>", &v5, 0x16u);
  }
}

id sub_100074990(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Asset Release for SuperBinary <%@> for Endpoint <%@>", &v6, 0x16u);
  }

  return [*(a1 + 40) setLayer2Context:0];
}

id sub_100074B14(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v14 = 138412802;
    v15 = v4;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Asset Processing Notification <%@> for SuperBinary <%@> for Endpoint <%@>", &v14, 0x20u);
  }

  v6 = *(*(a1 + 32) + 1024);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = v6;
    v10 = [v7 uuid];
    v11 = [v10 description];
    v14 = 134218242;
    v15 = v8;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asset Fully Processed, status is %lu. UUID of %@", &v14, 0x16u);
  }

  v12 = *(a1 + 56);
  if (v12 == 1)
  {
    [*(a1 + 32) notifyAssetStagingProgress:*(a1 + 48) bytesTransferred:objc_msgSend(*(a1 + 48) assetLength:{"assetLength"), objc_msgSend(*(a1 + 48), "assetLength")}];
    v12 = *(a1 + 56);
  }

  return [*(a1 + 32) assetFullyStaged:*(a1 + 48) status:v12];
}

void sub_100074D50(uint64_t a1)
{
  if ([*(a1 + 32) assetType] == 4)
  {
    v2 = *(*(a1 + 40) + 1024);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 asset4cc];
      v6 = [*(a1 + 32) uuid];
      v7 = [v6 description];
      v14 = 136315650;
      v15 = "[UARPEndpointLayer3(Layer2AssetCallbacks) assetProcessingCompletedAck:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: RX Dynamic Asset Processing Complete (%@). UUID of %@", &v14, 0x20u);
    }

    v8 = *(*(a1 + 40) + 1008);
    v9 = objc_opt_respondsToSelector();
    v10 = *(a1 + 40);
    if (*(v10 + 987) == 1)
    {
      v11 = *(v10 + 1024);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"IS NOT";
        v13 = *(a1 + 40);
        v15 = "[UARPEndpointLayer3(Layer2AssetCallbacks) assetProcessingCompletedAck:]_block_invoke";
        v14 = 136315650;
        if (v9)
        {
          v12 = @"IS";
        }

        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: %@, %@ supported", &v14, 0x20u);
      }
    }

    if (v9)
    {
      [*(*(a1 + 40) + 1008) layer3EndpointAssetFullyStaged:*(a1 + 40) rxDynamicAsset:*(a1 + 32)];
    }
  }
}

void sub_100078970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [UARPMetaData tlvsFromKey:a2 value:a3 relativeURL:*(*(a1 + 32) + 112)];
  v5 = v4;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v11 = v10;
            v12 = [v11 version];
            v13 = *(a1 + 32);
            v14 = *(v13 + 232);
            *(v13 + 232) = v12;
          }

          else
          {
            [*(*(a1 + 32) + 48) addObject:v10];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v10;
            *(*(a1 + 32) + 72) = [v15 isFTABPayload] != 0;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v16 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v7 = v16;
      }

      while (v16);
    }
  }
}

uint64_t sub_1000796D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 264);
  return result;
}

void sub_1000796DC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_10007A05C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Posting MTIC events to Core Analytics: %@", &v3, 0xCu);
}

void sub_10007A0D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to write JSON: %@", &v2, 0xCu);
}

void sub_10007A150(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  sub_10000236C();
  sub_100002394(&_mh_execute_header, v5, v6, "Failed to write File Handle at %@; error is %@", v7, v8, v9, v10, v11);
}

void sub_10007A1F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  sub_10000236C();
  sub_100002394(&_mh_execute_header, v5, v6, "Failed to close File Handle at %@; error is %@", v7, v8, v9, v10, v11);
}

void sub_10007A290(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  sub_10000236C();
  sub_100002394(&_mh_execute_header, v5, v6, "Failed to create File Handle at: %@; error is %@", v7, v8, v9, v10, v11);
}

void sub_10007A330(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create JSON: %@", &v2, 0xCu);
}

void sub_10007A678(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = 134218240;
  v7 = [a2 length];
  v8 = 2048;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Lengths of MTIC Data(%lu) and TMAP Data(%lu) do not match.", &v6, 0x16u);
}

void sub_10007ABC4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[UARPPersonalizationEventManager activateDaemonMode]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: %@ publisher could not be created", &v2, 0x16u);
}

void sub_10007AC50(os_log_t log)
{
  v1 = 136315138;
  v2 = "[UARPPersonalizationEventManager activateDaemonMode]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: event type is not dictionary", &v1, 0xCu);
}

void sub_10007ACD4(void *a1)
{
  v1 = a1;
  v2 = 136446210;
  v3 = xpc_strerror();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received error: %{public}s", &v2, 0xCu);
}

void sub_10007AD70(os_log_t log)
{
  v1 = 138543362;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not serialize tatsu request %{public}@", &v1, 0xCu);
}

void sub_10007AEEC()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007AF5C()
{
  sub_100015BA4();
  v2 = v1;
  [sub_100015B98() count];
  sub_100015B70();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10007B014(void *a1)
{
  v2 = a1;
  [sub_100015B80() processIdentifier];
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10007B0A4(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a2;
  v7 = [sub_100015B98() path];
  v8 = [*(a3 + 56) uuid];
  sub_100015B30();
  sub_100015B70();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);
}

void sub_10007B1E4()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007B254()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007B290()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007B300()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007B33C(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "[UARPHostManager offerAssetToMatchingEndpoints:personality:availableFirmwareVersion:]";
  sub_100015BC8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10007B388(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007B424(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007B4C0(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007B55C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007B618(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007B6D4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007B790(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007B94C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007BA00(uint64_t *a1)
{
  v6 = *a1;
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10007BA8C(uint64_t *a1)
{
  v1 = *a1;
  sub_100015BE8();
  sub_100002FB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10007BB0C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007BBC0(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007BC74(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007BD28(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007BDDC(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 uuid];
  v7 = [v6 UUIDString];
  v8 = [a3 uuid];
  v9 = [v8 UUIDString];
  v10 = 136315650;
  v11 = "[UARPHostManager layer3EndpointPersonalizationNeeded:asset:]_block_invoke";
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: Could not find Personalizing Asset %@ for %@", &v10, 0x20u);
}

void sub_10007BEE8(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007BF9C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() path];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v4, v5, "%s: Personalized URL written to %@", v6, v7, v8, v9, 2u);
}

void sub_10007C038()
{
  sub_100015BA4();
  v2 = v1;
  v3 = [sub_100015B98() path];
  sub_100015B1C();
  sub_100015B70();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10007C0EC(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() path];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v4, v5, "%s: Original URL moved to %@", v6, v7, v8, v9, 2u);
}

void sub_10007C208(uint64_t *a1)
{
  v1 = *a1;
  sub_100015BE8();
  sub_100002FB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10007C288(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C33C(unsigned __int16 *a1)
{
  v6 = *a1;
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10007C3B4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C468(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C51C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C5D0(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C684(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C738(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C7EC(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C8A0(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007C954(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() uuid];
  v4 = [v3 UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v5, v6, "%s: %@", v7, v8, v9, v10, 2u);
}

void sub_10007CA08(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v4, v5, "%s: Host Endpoint is %@", v6, v7, v8, v9, 2u);
}

void sub_10007CAA4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v4, v5, "%s: Asset UUID is %@", v6, v7, v8, v9, 2u);
}

void sub_10007CB40(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007CBE4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007CC88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 232);
  v4 = a2;
  v5 = [sub_100015B80() path];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10007CD20(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() path];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10007CDB0(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() path];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10007CE40(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() path];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10007CED0(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() path];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007CF6C(void *a1, uint64_t a2)
{
  *a2 = 136315394;
  *(a2 + 4) = "[UARPHostManager matchingDatabaseEntry:]";
  *(a2 + 12) = 2112;
  *(a2 + 14) = a1;
  sub_100015BC8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007CFD4(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007D070()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D0AC(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() path];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007D148()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D1B8()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D228()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D298()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D308()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D400(uint64_t a1, void *a2)
{
  v3 = *(a1 + 264);
  v4 = a2;
  v5 = [sub_100015B80() path];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_10007D498(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() path];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10007D528(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() path];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10007D5B8(uint64_t *a1, void *a2)
{
  sub_100015BB0(a1, a2);
  v3 = [sub_100015B80() path];
  sub_100015B1C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007D654()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D6C4()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D734()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D7A4()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D814()
{
  sub_100015B8C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D884(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_100015BC8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10007D8C0(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_100015BC8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10007D8FC()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D938()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D974()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D9B0()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D9EC()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007DA28()
{
  sub_1000049EC();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007DA64()
{
  sub_100015BA4();
  v3 = v2;
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() path];
  sub_100015B30();
  sub_100015B70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007DB1C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10007DBB4()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007DC30()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007DCAC()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007DD28()
{
  sub_100015BA4();
  v2 = v1;
  v3 = [sub_100015B98() UUIDString];
  sub_100015B8C();
  sub_100015B70();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10007DDD4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10007DE6C()
{
  sub_100015BA4();
  v3 = v2;
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() path];
  sub_100015B30();
  sub_100015B70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007DF24()
{
  sub_100015BA4();
  v3 = v2;
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() path];
  sub_100015B30();
  sub_100015B70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007DFDC()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007E058()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007E0D4()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007E150()
{
  sub_100015B8C();
  sub_100015BC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007E1D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100015B80() path];
  sub_100015B30();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007E278(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100015B80() path];
  sub_100015B30();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10007E320(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10007E3B8()
{
  sub_100015BD4();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007E448()
{
  sub_100015BD4();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007E5DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5[0] = 67109120;
  v5[1] = [WeakRetained processIdentifier];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Connection to PID %d interrupted", v5, 8u);
}

void sub_10007E714(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10007E7D0(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10007E88C(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_100015B80() assetIdentifier];
  v6 = [a2 appleModelNumber];
  v9[0] = 136315650;
  sub_10001BD54();
  v10 = v5;
  v11 = v7;
  v12 = v8;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: Asset Identifier was updated to %@ for Apple Model Number %@", v9, 0x20u);
}

void sub_10007E960(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 160);
  sub_100015BE8();
  sub_10001BDDC(&_mh_execute_header, v3, v4, "%s: Endpoint personality is %@", v5, v6, v7, v8, 2u);
}

void sub_10007E9D8(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 160);
  sub_100015BE8();
  sub_10001BDDC(&_mh_execute_header, v3, v4, "%s: Subscribing endpoint personality is %@", v5, v6, v7, v8, 2u);
}

void sub_10007EA50(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 160);
  sub_100015BE8();
  sub_10001BDDC(&_mh_execute_header, v3, v4, "%s: Subscribed endpoint personality is %@", v5, v6, v7, v8, 2u);
}

void sub_10007EAC8(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  sub_10001BD84();
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10007EB44(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  sub_10001BD84();
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10007EBC0(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  sub_10001BD84();
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10007EC3C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  v5[0] = 136315394;
  sub_10001BD54();
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: deviceUUID not found in database; %@", v5, 0x16u);
}

void sub_10007ECEC(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007ED9C(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007EE4C(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007EEFC(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007EFAC(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007F05C(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007F10C(void *a1, void *a2)
{
  v4 = a1;
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  [sub_100015B80() length];
  sub_10001BD54();
  sub_10001BDA4(&_mh_execute_header, v5, v6, "%s: deviceUUID is %@, uarpMessage is %lu bytes", v7, v8, v9, v10, 2u);
}

void sub_10007F1C8(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007F278(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007F328(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007F3D8(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007F488(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007F538(uint64_t *a1, void *a2)
{
  sub_10001BDC4(a1, a2);
  [sub_100015B98() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100015B80() UUIDString];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: deviceUUID does not match; expected %@, got %@", v7, v8, v9, v10, 2u);
}

void sub_10007F5E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  [sub_100015B98() length];
  v13 = *(*a3 + 8);
  sub_10001BDA4(&_mh_execute_header, v7, v8, "%s: send %lu bytes to deviceUUID %@", v9, v10, v11, v12, 2u);
}

void sub_10007F6A4(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 8);
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v8 = 136316162;
  v9 = "[UARPHostEndpoint hostEntryDeviceAssetTransferProgress:bytesTransferred:totalBytes:]_block_invoke";
  v10 = 2112;
  v11 = v2;
  v12 = 2112;
  v13 = v4;
  v14 = 2112;
  v15 = v5;
  v16 = 2112;
  v17 = v6;
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: deviceUUID is %@, assetUUID is %@, %@ of %@ bytes", &v8, 0x34u);
}

void sub_10007F758(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  [sub_100015B98() length];
  v12 = [*(a3 + 8) UUIDString];
  sub_10001BDA4(&_mh_execute_header, v6, v7, "%s: send %lu bytes to %@", v8, v9, v10, v11, 2u);
}

void sub_10007F824(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 length];
  v7 = [*(a3 + 8) UUIDString];
  v8 = [*(a3 + 144) uuid];
  v9 = [v8 UUIDString];
  v10 = *(a3 + 140);
  v11 = 136316162;
  v12 = "[UARPHostEndpoint uarpMessageSendToTransport:]";
  v13 = 2048;
  v14 = v6;
  v15 = 2112;
  v16 = v7;
  v17 = 2112;
  v18 = v9;
  v19 = 1024;
  v20 = v10;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s: send %lu bytes from %@ to %@, downstream ID is %u", &v11, 0x30u);
}

void sub_10007F948(os_log_t log)
{
  v1 = 136315138;
  v2 = "[UARPHostPersonalizationManager personalizeAssetWithXPCEvent:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: TSS Request is NULL", &v1, 0xCu);
}

void sub_10007FAEC(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10007FB64(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10007FC00(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10007FC9C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10007FD38(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10007FDD4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10007FE70(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10007FF0C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10007FFA8(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080044(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_1000800E0(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10008017C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080218(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_1000802B4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080350(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_1000803EC(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080488(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080524(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_1000805C0(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10008065C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_1000806F8(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080794(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080830(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_1000808CC(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080968(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080A04(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080AA0(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080B3C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080BD8(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080C74(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080D10(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080DAC(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080E48(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080EE4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100080F80(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10008101C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v4, v5, "%s: Caching Controller Asset <%@>", v6, v7, v8, v9, 2u);
}

void sub_1000810B8(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: could not prepare caching asset %@", v6, v7, v8, v9, 2u);
}

void sub_100081154(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_1000811F0(void *a1, void *a2)
{
  v3 = a1;
  [a2 UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = 136315650;
  v5 = "[UARPEndpointControllerInternal endpointControllerCacheAsset:assetUUID:appendData:reply:]";
  v6 = 2112;
  v7 = a2;
  v8 = 2048;
  v9 = [sub_100015B80() length];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s: Caching Controller Asset <%@>, appending %lu bytes of data", &v4, 0x20u);
}

void sub_1000812C8(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: could not append to caching asset %@", v6, v7, v8, v9, 2u);
}

void sub_100081364(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100081400(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100015B50(&_mh_execute_header, v4, v5, "%s: Finish Caching Controller Asset <%@>", v6, v7, v8, v9, 2u);
}

void sub_10008149C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: could not finalize caching asset %@", v6, v7, v8, v9, 2u);
}

void sub_100081538(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: could not get url for caching asset %@", v6, v7, v8, v9, 2u);
}

void sub_1000815D4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100081670(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: assetUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10008170C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: asset length is zero for %@", v6, v7, v8, v9, 2u);
}

void sub_1000817A8(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: attributes is nil for %@", v6, v7, v8, v9, 2u);
}

void sub_100081844(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_1000818E0(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: assetUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_10008197C(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100081A18(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: endpointUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100081AB4(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: assetUUID not found %@", v6, v7, v8, v9, 2u);
}

void sub_100081B50(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() UUIDString];
  sub_100015B1C();
  sub_100025314(&_mh_execute_header, v4, v5, "%s: hash does not match for %@", v6, v7, v8, v9, 2u);
}

void sub_100081BEC()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100081CE0(os_log_t log)
{
  v1 = 136315138;
  v2 = &unk_1000D3A50;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s\n", &v1, 0xCu);
}

void sub_100081E54(os_log_t log)
{
  v1 = 136315138;
  v2 = &unk_1000D4450;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s\n", &v1, 0xCu);
}

void sub_100081ED8(os_log_t log)
{
  v1 = 136315138;
  v2 = &unk_1000D4650;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s\n", &v1, 0xCu);
}

void sub_100081F5C(int a1, int a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[UARPRTKitFTABSubfile getDataBlock:offset:]";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Requested offset (%d) longer than subfile length %d", &v3, 0x18u);
}

void sub_100081FF4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[UARPRTKitFTABSubfile getDataBlock:offset:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: asset length is zero, cannot get block", &v1, 0xCu);
}

void sub_100082078(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 absoluteString];
  v7 = [a3 description];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v8, v9, "%s: cannot close %@, error %@", v10, v11, v12, v13, 2u);
}

void sub_100082138(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 absoluteString];
  v7 = [a3 description];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v8, v9, "%s: cannot open %@ for reading, error %@", v10, v11, v12, v13, 2u);
}

void sub_1000821F8(unsigned __int8 *a1, unsigned __int8 *a2, os_log_t log)
{
  v3 = *a1;
  v4 = a2[89];
  v5 = a2[90];
  v6 = a2[91];
  v7 = a2[92];
  v8 = a2[93];
  v9 = a2[94];
  v10 = a2[95];
  v11 = 136317186;
  v12 = "[UARPRTKitFTAB expandFileTable:]";
  v13 = 1024;
  v14 = v3;
  v15 = 1024;
  v16 = v4;
  v17 = 1024;
  v18 = v5;
  v19 = 1024;
  v20 = v6;
  v21 = 1024;
  v22 = v7;
  v23 = 1024;
  v24 = v8;
  v25 = 1024;
  v26 = v9;
  v27 = 1024;
  v28 = v10;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Unexpected header magic (%02x %02x %02x %02x %02x %02x %02x %02x)", &v11, 0x3Cu);
}

void sub_1000822E0(int a1, int a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[UARPRTKitFTAB getDataBlock:offset:]";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Requested offset (%d) longer than ftab length %d", &v3, 0x18u);
}

void sub_100082378(os_log_t log)
{
  v1 = 136315138;
  v2 = "[UARPRTKitFTAB getDataBlock:offset:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: asset length is zero, cannot get block", &v1, 0xCu);
}

void sub_1000823FC(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 absoluteString];
  v7 = [a3 description];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v8, v9, "%s: cannot close %@, error %@", v10, v11, v12, v13, 2u);
}

void sub_1000824BC(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 absoluteString];
  v7 = [a3 description];
  sub_10001BD38();
  sub_10001BD64(&_mh_execute_header, v8, v9, "%s: cannot open %@ for reading, error %@", v10, v11, v12, v13, 2u);
}

void sub_100082694(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "UARP: Failed personalization response, error = %u", v2, 8u);
}

void sub_10008270C(void *a1, uint64_t *a2)
{
  v3 = [a1 path];
  if (a2)
  {
    v4 = *a2;
  }

  sub_10004C628();
  sub_10004C644();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000827C4(void *a1, uint64_t *a2)
{
  v3 = [a1 path];
  if (a2)
  {
    v4 = *a2;
  }

  sub_10004C628();
  sub_10004C644();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10008287C(void *a1)
{
  v6 = [a1 path];
  sub_10004C644();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100082920(void *a1, uint64_t *a2)
{
  v3 = [a1 path];
  if (a2)
  {
    v4 = *a2;
  }

  sub_10004C628();
  sub_10004C644();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000829EC(os_log_t log)
{
  v1 = 136315138;
  v2 = "UARPSuperBinaryProcessMetaData";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: not enough data to process a TLV's value", &v1, 0xCu);
}

void sub_100082A70(os_log_t log)
{
  v1 = 136315138;
  v2 = "UARPSuperBinaryProcessMetaData";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: not enough data to process a TLV's header", &v1, 0xCu);
}

void sub_100082AF4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 path];
  sub_10001BD54();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100082BA0(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[UARPSuperBinaryLayer3 personalizationStateCompleted]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: composing payload failed", buf, 0xCu);
}

void sub_100082BF0(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100082C84(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100082D18(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100082EBC(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 absoluteString];
  v7 = [a3 description];
  sub_10001BD54();
  sub_10001BD64(&_mh_execute_header, v8, v9, "%s: cannot close %@, error %@", v10, v11, v12, v13, 2u);
}

void sub_100082F88(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 absoluteString];
  v7 = [a3 description];
  sub_10001BD54();
  sub_10001BD64(&_mh_execute_header, v8, v9, "%s: cannot open %@ for reading, error %@", v10, v11, v12, v13, 2u);
}

void sub_100083054()
{
  sub_10001BD54();
  sub_100060BEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000830DC(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 path];
  sub_10001BD54();
  sub_10001BD64(&_mh_execute_header, v5, v6, "%s: Failed to modify date to now for file %@; error %@", v7, v8, v9, v10, 2u);
}

void sub_100083494()
{
  sub_100060BD8();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083510()
{
  sub_100060BD8();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008358C()
{
  sub_100060BD8();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083608(int *a1)
{
  v6 = *a1;
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100083694(uint64_t *a1, unsigned int *a2)
{
  v7 = *a1;
  v8 = *a2;
  sub_100060BEC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000837AC()
{
  sub_100060BD8();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083828(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[UARPSuperBinaryLayer3 expandPayloadHeadersAndMetaData:offset:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: expandPayloadWithHeader failed", buf, 0xCu);
}

void sub_1000838F8(int *a1)
{
  v6 = *a1;
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100083A14()
{
  sub_10001BD54();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083B14()
{
  sub_1000049EC();
  sub_1000750FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100083B50()
{
  sub_1000049EC();
  sub_1000750FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100083B8C()
{
  sub_100015B8C();
  sub_1000750C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100083C48(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100083CD0(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100083D58(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_1000750A4();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100083DEC(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_1000750A4();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100083E80(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_1000750A4();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100083F14(unsigned int *a1)
{
  v1 = *a1;
  sub_100075150();
  sub_1000750C8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100083F88(unsigned int *a1)
{
  v1 = *a1;
  sub_100075150();
  sub_1000750C8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100083FFC()
{
  sub_100015BA4();
  v3 = v2;
  v4 = sub_100015B98();
  uarpStatusCodeToString(v4);
  v5 = *v0;
  sub_100075118();
  sub_100015B70();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_1000840A0()
{
  sub_100015BA4();
  v3 = v2;
  v4 = sub_100015B98();
  uarpStatusCodeToString(v4);
  v5 = *v0;
  sub_100075118();
  sub_100015B70();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100084144(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000841D8(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10008426C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_100015B80() selectedPayloadIndex];
  sub_100075108();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100084308(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10008439C()
{
  sub_10001BD54();
  sub_1000750FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008441C(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v7 = *(v1 + 976);
  sub_1000750FC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000844A8(unsigned __int16 *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_100060BFC();
  sub_1000750B8();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100084544(os_log_t log)
{
  v1 = 136315138;
  v2 = "[UARPEndpointLayer3 downstreamEndpointReachable:downstreamEndpointID:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Cannot add direct endpoint as downstream endpoint", &v1, 0xCu);
}

void sub_1000845C8(unsigned __int16 *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_100060BFC();
  sub_1000750B8();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100084664(unsigned __int16 *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_100060BFC();
  sub_1000750B8();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100084700()
{
  sub_1000750A4();
  sub_1000750FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008477C(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_1000750A4();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100084810(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_1000750A4();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000848A4(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_1000750A4();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100084938(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_1000750A4();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000849CC(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_1000750A4();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100084A60(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B80() componentTag];
  v4 = [v3 tagString];
  sub_10001BD54();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100084B20()
{
  v2[0] = 136315394;
  sub_10001BD54();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: Failed to craft tatsu requests, %@", v2, 0x16u);
}

void sub_100084BA4(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100015B8C();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100084C2C(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100075138();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100084CB4(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100075138();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100084D3C(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100084DD0(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100084E64(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100084EF8(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  sub_10001BD54();
  sub_1000750C8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100084F70(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  sub_10001BD54();
  sub_1000750C8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100084FE8(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_10001BD54();
  sub_1000750C8();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100085064(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100075108();
  sub_1000750C8();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000850E0(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_10001BD54();
  sub_1000750C8();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10008515C(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  sub_1000750FC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000851D0()
{
  sub_100015BA4();
  v2 = v1;
  v3 = sub_100015B98();
  uarpLoggingCategoryToString(v3);
  getpid();
  sub_1000750D8();
  sub_100015B70();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_10008526C()
{
  sub_100015BA4();
  v2 = v1;
  v3 = sub_100015B98();
  uarpLoggingCategoryToString(v3);
  getpid();
  sub_1000750D8();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: [pid=%d] %@\n", v4, 0x1Cu);
}

void sub_100085310()
{
  sub_100015BA4();
  v2 = v1;
  v3 = sub_100015B98();
  uarpLoggingCategoryToString(v3);
  getpid();
  sub_1000750D8();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s: [pid=%d] %@\n", v4, 0x1Cu);
}

void sub_1000853B4(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100075168();
  sub_1000750C8();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100085428(uint64_t *a1)
{
  sub_10001BD98(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100075168();
  sub_1000750C8();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10008549C(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100085530(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  v6[0] = 138412546;
  sub_10001BD54();
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Asset MetaData Processing Error for SuperBinary <%@> for Endpoint <%@>", v6, 0x16u);
}

void sub_1000855B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_100015B80() selectedPayloadIndex];
  sub_100075108();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100085654(void *a1)
{
  v2 = a1;
  sub_100060BFC();
  sub_100060BB8();
  sub_100015B40();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000856E8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  [v5 selectedPayloadIndex];
  v7 = *a3;
  v8 = *(a1 + 40);
  sub_100015B8C();
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = v10;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Payload Index <%lu> MetaData Processing Error for SuperBinary <%@> for Endpoint <%@>", v11, 0x20u);
}

void sub_1000857AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_100015B80() selectedPayloadIndex];
  sub_100075108();
  sub_100015B40();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100085848(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Endpoint Packet Capture at %@", &v2, 0xCu);
}

void sub_1000858C0()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008593C()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000859B8()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100085A34()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100085AB0(uint64_t a1)
{
  v1 = *(a1 + 136);
  v4 = 136315650;
  sub_100015BE8();
  sub_1000796DC(&_mh_execute_header, v2, v3, "%s: Could find subfile %@ for %@", v4);
}

void sub_100085C30(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 payloadLength];
  sub_100015B70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x18u);
}

void sub_100085D6C(uint64_t *a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = a2;
  v7 = [sub_100015B98() absoluteString];
  v8 = [a3 description];
  sub_10001BD38();
  sub_100015B70();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x20u);
}

void sub_100085E30(uint64_t *a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = a2;
  v7 = [sub_100015B98() absoluteString];
  v8 = [a3 description];
  sub_10001BD38();
  sub_100015B70();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x20u);
}

void sub_100085EF4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[UARPSuperBinaryPayloadLayer3 setDataBlockToURL:offset:url:]";
  *&v3[12] = 2048;
  *&v3[14] = a1;
  *&v3[22] = 2048;
  sub_1000796DC(&_mh_execute_header, a2, a3, "%s: offset %lu does not equal %lu ", *v3, *&v3[8], *&v3[16]);
}

void sub_100085F7C()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100085FF8()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100086074()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000860F0(void *a1)
{
  v2 = a1;
  v3 = [sub_100015B98() path];
  sub_100015B1C();
  sub_100015B70();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1000861A8(void *a1)
{
  v2 = a1;
  [sub_100015B98() length];
  sub_100015B70();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100086260()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10008665C(uint64_t *a1)
{
  v1 = *a1;
  sub_100015BE8();
  sub_100002FB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10008675C(uint64_t *a1)
{
  v1 = *a1;
  sub_100015BE8();
  sub_100002FB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000869DC()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100086A58(uint64_t a1)
{
  sub_1000796D0(a1, __stack_chk_guard);
  sub_1000796BC();
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100086AD4(uint64_t a1)
{
  sub_1000796D0(a1, __stack_chk_guard);
  sub_1000796BC();
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100086B50(uint64_t a1)
{
  sub_1000796D0(a1, __stack_chk_guard);
  sub_1000796BC();
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100086BCC(uint64_t a1)
{
  sub_1000796D0(a1, __stack_chk_guard);
  sub_1000796BC();
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100086C48(uint64_t a1)
{
  sub_1000796D0(a1, __stack_chk_guard);
  sub_1000796BC();
  sub_100002FB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100086CC4()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100086D40()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100086EBC()
{
  sub_100015B1C();
  sub_100002FB8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}