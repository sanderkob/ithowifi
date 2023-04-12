/*
   Author: Klusjesman, supersjimmie, modified and reworked by arjenhiemstra
*/

#pragma once

#include <cstdint>

enum IthoCommand
{
  IthoUnknown = 0,

  IthoJoin = 1,
  IthoLeave = 2,

  IthoAway = 3,
  IthoLow = 4,
  IthoMedium = 5,
  IthoHigh = 6,
  IthoFull = 7,

  IthoTimer1 = 8,
  IthoTimer2 = 9,
  IthoTimer3 = 10,

  IthoAuto = 11,
  IthoAutoNight = 12,

  IthoCook30 = 13,
  IthoCook60 = 14,

  IthoTimerUser = 15,

};

enum message_state
{
  S_START,
  S_HEADER,
  S_ADDR0,
  S_ADDR1,
  S_ADDR2,
  S_PARAM0,
  S_PARAM1,
  S_OPCODE,
  S_LEN,
  S_PAYLOAD,
  S_CHECKSUM,
  S_TRAILER,
  S_COMPLETE,
  S_ERROR
};

enum RemoteTypes : uint16_t
{
  UNSETTYPE = 0x0000,
  RFTCVE = 0x22F1,
  RFTAUTO = 0x22F3,
  DEMANDFLOW = 0x22F8,
  RFTRV = 0x12A0,
  RFTCO2 = 0x1298,
  ORCON15LF01 = 0x6710
};

#define F_MASK 0x03
#define F_RQ 0x00
#define F_I 0x01
#define F_W 0x02
#define F_RP 0x03

#define F_ADDR0 0x10
#define F_ADDR1 0x20
#define F_ADDR2 0x40

#define F_PARAM0 0x04
#define F_PARAM1 0x08
#define F_RSSI 0x80

// Only used for received fields
#define F_OPCODE 0x01
#define F_LEN 0x02

#define MAX_PAYLOAD 64
#define MAX_DECODED MAX_PAYLOAD + 18

static char const *const MsgType[4] = {"RQ", "_W", "_I", "RP"};

// General command structure:
// < opcode 2 bytes >< len 1 byte >< command len bytes >

// message command bytes for CVE/HRU remote (536-0124)
const uint8_t ithoMessageAwayCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x01, 0x04};
const uint8_t ithoMessageLowCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x02, 0x04};
const uint8_t ithoMessageMediumCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x03, 0x04};
const uint8_t ithoMessageHighCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x04, 0x04};
const uint8_t ithoMessageFullCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x04, 0x04};
const uint8_t ithoMessageTimer1CommandBytes[] = {0x22, 0xF3, 0x03, 0x00, 0x00, 0x0A}; // 10 minutes full speed
const uint8_t ithoMessageTimer2CommandBytes[] = {0x22, 0xF3, 0x03, 0x00, 0x00, 0x14}; // 20 minutes full speed
const uint8_t ithoMessageTimer3CommandBytes[] = {0x22, 0xF3, 0x03, 0x00, 0x00, 0x1E}; // 30 minutes full speed

// message command bytes specific for AUTO RFT (536-0150)
const uint8_t ithoMessageAUTORFTLowCommandBytes[] = {0x22, 0xF1, 0x03, 0x63, 0x02, 0x04};
const uint8_t ithoMessageAUTORFTAutoCommandBytes[] = {0x22, 0xF1, 0x03, 0x63, 0x03, 0x04};
const uint8_t ithoMessageAUTORFTAutoNightCommandBytes[] = {0x22, 0xF8, 0x03, 0x63, 0x02, 0x03};
const uint8_t ithoMessageAUTORFTHighCommandBytes[] = {0x22, 0xF1, 0x03, 0x63, 0x04, 0x04};
const uint8_t ithoMessageAUTORFTTimer1CommandBytes[] = {0x22, 0xF3, 0x03, 0x63, 0x00, 0x0A};
const uint8_t ithoMessageAUTORFTTimer2CommandBytes[] = {0x22, 0xF3, 0x03, 0x63, 0x00, 0x14};
const uint8_t ithoMessageAUTORFTTimer3CommandBytes[] = {0x22, 0xF3, 0x03, 0x63, 0x00, 0x1E};

// message command bytes specific for RFT-RV (04-00046) and RFT-CO2  (04-00045)
const uint8_t ithoMessageRV_CO2MediumCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x03, 0x07};
const uint8_t ithoMessageRV_CO2AutoCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x05, 0x07};
const uint8_t ithoMessageRV_CO2AutoNightCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x0B, 0x0B};
const uint8_t ithoMessageRV_CO2Timer1CommandBytes[] = {0x22, 0xF3, 0x07, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00};
const uint8_t ithoMessageRV_CO2Timer2CommandBytes[] = {0x22, 0xF3, 0x07, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00};
const uint8_t ithoMessageRV_CO2Timer3CommandBytes[] = {0x22, 0xF3, 0x07, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00};

// message command bytes specific for DemandFlow remote (536-0146)
const uint8_t ithoMessageDFLowCommandBytes[] = {0x22, 0xF8, 0x03, 0x00, 0x01, 0x02};
const uint8_t ithoMessageDFHighCommandBytes[] = {0x22, 0xF8, 0x03, 0x00, 0x02, 0x02};
const uint8_t ithoMessageDFTimer1CommandBytes[] = {0x22, 0xF3, 0x05, 0x00, 0x42, 0x03, 0x03, 0x03};
const uint8_t ithoMessageDFTimer2CommandBytes[] = {0x22, 0xF3, 0x05, 0x00, 0x42, 0x06, 0x03, 0x03};
const uint8_t ithoMessageDFTimer3CommandBytes[] = {0x22, 0xF3, 0x05, 0x00, 0x42, 0x09, 0x03, 0x03};
const uint8_t ithoMessageDFCook30CommandBytes[] = {0x22, 0xF3, 0x05, 0x00, 0x02, 0x1E, 0x02, 0x03};
const uint8_t ithoMessageDFCook60CommandBytes[] = {0x22, 0xF3, 0x05, 0x00, 0x02, 0x3C, 0x02, 0x03};

// Join/Leave command structure:
// < opcode 2 bytes >< len 1 byte >[next command + device ID block repeats len/6 times]< command 3 bytes >< device ID 3 bytes >

// Join/Leave commands:
const uint8_t ithoMessageCVERFTJoinCommandBytes[] = {0x1F, 0xC9, 0x0C, 0x00, 0x22, 0xF1, 0x00, 0x00, 0x00, 0x01, 0x10, 0xE0, 0x00, 0x00, 0x00};                                                                                                          // join command of CVE/HRU remote (536-0124)
const uint8_t ithoMessageAUTORFTJoinCommandBytes[] = {0x1F, 0xC9, 0x0C, 0x63, 0x22, 0xF8, 0x00, 0x00, 0x00, 0x01, 0x10, 0xE0, 0x00, 0x00, 0x00};                                                                                                         // join command of AUTO RFT (536-0150)
const uint8_t ithoMessageDFJoinCommandBytes[] = {0x1F, 0xC9, 0x0C, 0x00, 0x22, 0xF8, 0x00, 0x00, 0x00, 0x00, 0x10, 0xE0, 0x00, 0x00, 0x00};                                                                                                              // join command of DemandFlow remote (536-0146)
const uint8_t ithoMessageRVJoinCommandBytes[] = {0x1F, 0xC9, 0x18, 0x00, 0x31, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x12, 0xA0, 0x00, 0x00, 0x00, 0x01, 0x10, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x1F, 0xC9, 0x00, 0x00, 0x00};                                      // join command of RFT-RV (04-00046)
const uint8_t ithoMessageCO2JoinCommandBytes[] = {0x1F, 0xC9, 0x1E, 0x00, 0x31, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x12, 0x98, 0x00, 0x00, 0x00, 0x00, 0x2E, 0x10, 0x00, 0x00, 0x00, 0x01, 0x10, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x1F, 0xC9, 0x00, 0x00, 0x00}; // join command of RFT-CO2  (04-00045)
const uint8_t ithoMessageLeaveCommandBytes[] = {0x1F, 0xC9, 0x06, 0x00, 0x1F, 0xC9, 0x00, 0x00, 0x00};                                                                                                                                                   // standard leave command
const uint8_t ithoMessageAUTORFTLeaveCommandBytes[] = {0x1F, 0xC9, 0x06, 0x63, 0x1F, 0xC9, 0x00, 0x00, 0x00};                                                                                                                                            // leave command of AUTO RFT (536-0150)

// Orcon remote VMN-15LF01
const uint8_t orconMessageAwayCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x00, 0x04};
const uint8_t orconMessageAutoCommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x04, 0x04};
const uint8_t orconMessageButton1CommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x01, 0x04};
const uint8_t orconMessageButton2CommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x02, 0x04};
const uint8_t orconMessageButton3CommandBytes[] = {0x22, 0xF1, 0x03, 0x00, 0x03, 0x04};
const uint8_t orconMessageTimer1CommandBytes[] = {0x22, 0xF3, 0x07, 0x00, 0x02, 0x0F, 0x03, 0x04, 0x00, 0x00};
const uint8_t orconMessageTimer2CommandBytes[] = {0x22, 0xF3, 0x07, 0x00, 0x02, 0x1E, 0x03, 0x04, 0x00, 0x00};
const uint8_t orconMessageTimer3CommandBytes[] = {0x22, 0xF3, 0x07, 0x00, 0x02, 0x3C, 0x03, 0x04, 0x00, 0x00};
const uint8_t orconMessageFilterCleanCommandBytes[] = {0x10, 0xD0, 0x02, 0x00, 0xFF};
const uint8_t orconMessageJoinCommandBytes[] = {0x1F, 0xC9, 0x12, 0x00, 0x22, 0xF1, 0x00, 0x00, 0x00, 0x00, 0x22, 0xF3, 0x00, 0x00, 0x00, 0x67, 0x10, 0xE0, 0x00, 0x00, 0x00};
const uint8_t orconMessageBatteryStatusCommandBytes[] = {0x10, 0x60, 0x03, 0x00, 0xFF, 0x01};



class IthoPacket
{
public:
  enum Type : uint32_t
  {
    BIND = 0x1FC9,
    LEVEL = 0x22F1,
    TIMER = 0x22F3,
    SETPOINT = 0x22F8,
    STATUS = 0x31DA,
    REMOTESTATUS = 0x31E0,
    TEMPHUM = 0x12A0,
    CO2 = 0x1298,
    BATTERY = 0x1060
  };

  RemoteTypes remType;
  IthoCommand command;

  int8_t state;

  // Message Fields
  //<HEADER> <addr0> <addr1> <addr2> <param0> <param1> <OPCODE> <LENGTH> <PAYLOAD> <CHECKSUM>
  //<  1   > <  3  > <  3  > <  3  > <  1   > <  1   > <  2   > <  1   > <length > <   1    >

  uint8_t header;
  uint8_t type;
  uint32_t deviceId0;
  uint32_t deviceId1;
  uint32_t deviceId2;
  uint8_t param0;
  uint8_t param1;
  uint16_t opcode;
  uint8_t len;

  uint8_t error;

  uint8_t payloadPos;
  // uint8_t payload[MAX_PAYLOAD];

  uint8_t dataDecoded[MAX_DECODED];
  uint8_t length;

  uint8_t deviceType;
  uint8_t deviceId[3];

  uint8_t counter; // 0-255, counter is increased on every remote button press

  // Type getType(uint16_t opcode) const;
};
