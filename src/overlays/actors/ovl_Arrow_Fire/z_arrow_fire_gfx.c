#include "z_arrow_fire.h"

static UNK_TYPE texture1[] = {
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000001, 0x00000000, 0x00000102, 0x01000001, 0x00000000, 0x00000000, 0x00010000, 0x00000000,
    0x00000001, 0x00000000, 0x00000204, 0x02000101, 0x00000000, 0x00000000, 0x00010101, 0x00000001, 0x00000001,
    0x00000000, 0x00000307, 0x03010102, 0x00000000, 0x00000000, 0x01010102, 0x00000002, 0x01010001, 0x00000000,
    0x00010509, 0x04010103, 0x01000000, 0x00000000, 0x01020202, 0x00000104, 0x03020101, 0x00000000, 0x0001060C,
    0x06010103, 0x01000000, 0x00000000, 0x02020202, 0x00000206, 0x05040101, 0x00000000, 0x0001080F, 0x07010103,
    0x01000001, 0x00000000, 0x03030202, 0x00010408, 0x07060201, 0x00000000, 0x00010911, 0x08010103, 0x01000001,
    0x00000001, 0x04040303, 0x0101050B, 0x0A080301, 0x00000000, 0x00020B14, 0x0A010103, 0x01000001, 0x00010102,
    0x06060403, 0x0203070D, 0x0C0A0401, 0x00000000, 0x00030D17, 0x0B020103, 0x01010001, 0x00010205, 0x09080503,
    0x0205090E, 0x0E0D0501, 0x00000000, 0x01050F18, 0x0C020102, 0x01010001, 0x00010408, 0x0D0B0502, 0x03070B0F,
    0x0F0F0601, 0x00000000, 0x02081219, 0x0D030102, 0x00010001, 0x0001050B, 0x130F0702, 0x04080B0F, 0x10110801,
    0x00000000, 0x030C1419, 0x0E040101, 0x00010001, 0x0001070F, 0x19140A03, 0x05090B0E, 0x10130A02, 0x00000001,
    0x05121719, 0x0E040100, 0x00010102, 0x01020A13, 0x1F1A0F06, 0x06090A0C, 0x10150B03, 0x01000001, 0x08181B19,
    0x0F050201, 0x01020102, 0x02040D18, 0x2721140A, 0x080A0A0C, 0x11160D04, 0x02020001, 0x0B1E1E19, 0x10070403,
    0x02030202, 0x0408111D, 0x2F2A1B0F, 0x0A0B0B0D, 0x12180F06, 0x04040101, 0x0E242119, 0x11090606, 0x04040304,
    0x070C1623, 0x38322214, 0x0E0D0E10, 0x141A1108, 0x06060102, 0x112A241A, 0x120B0909, 0x06050507, 0x0B111C29,
    0x413B291B, 0x13101216, 0x181B1209, 0x08080304, 0x152F271B, 0x140E0C0C, 0x0907080B, 0x10172230, 0x4A433223,
    0x1813161D, 0x1D1E140B, 0x0A0A0608, 0x1A342B1E, 0x17110F0F, 0x0C0B0D11, 0x171F2A38, 0x534C3B2B, 0x1E161C25,
    0x2221160D, 0x0B0C0A0E, 0x21393023, 0x1B151211, 0x0F0F1217, 0x1E273240, 0x5C564534, 0x251B242F, 0x2924190F,
    0x0E0E0F17, 0x293E372B, 0x21181513, 0x1113181E, 0x26303B48, 0x655F4E3E, 0x2D222D3A, 0x30271C13, 0x11111520,
    0x32453F35, 0x281D1714, 0x14181E25, 0x2F3A4551, 0x6F695746, 0x362B3744, 0x372A1F17, 0x15151D2A, 0x3D4D483F,
    0x31231A14, 0x171E252E, 0x38444F5B, 0x7974614F, 0x4036404C, 0x3C2D231D, 0x1A1A2637, 0x4957524A, 0x3A2A1D15,
    0x1A252E37, 0x43505B66, 0x837F6C59, 0x4A414750, 0x3F2E2723, 0x21213245, 0x57625D54, 0x43312216, 0x1F2D3741,
    0x4D5B6671, 0x8E8B7662, 0x544B4D51, 0x3F302C2C, 0x2B2D4054, 0x656D675E, 0x4C3A281A, 0x2536414B, 0x5867717B,
    0x9896816C, 0x5E545150, 0x3F323337, 0x383C5063, 0x71777168, 0x56432F21, 0x2C3F4B56, 0x63727C86, 0xA2A08B76,
    0x685D5651, 0x3F343A43, 0x484D5F70, 0x7D827B71, 0x5F4C3829, 0x34465462, 0x6F7C8690, 0xACA99581, 0x72655B53,
    0x42394450, 0x585E6D7C, 0x878C8479, 0x68574334, 0x3D4E5E6E, 0x7B88919A, 0xB4B09E8C, 0x7C6E6155, 0x46414F5F,
    0x676E7B87, 0x92958C80, 0x71625041, 0x4857697A, 0x86929BA3, 0xBBB7A796, 0x86776658, 0x4D4B5C6E, 0x777D8791,
    0x9C9F9487, 0x7A6D5C4F, 0x54617486, 0x919CA4AB, 0xC2BBAFA1, 0x907F6C5D, 0x55576A7E, 0x8589929A, 0xA5A99D90,
    0x8478695E, 0x5F697F93, 0x9DA6ACB2, 0xC8BFB6AC, 0x9A877465, 0x6064788D, 0x92949BA1, 0xADB2A89C, 0x8F83766C,
    0x6A718AA1, 0xA9AFB2B8, 0xCEC3BDB6, 0xA4907E70, 0x6C72879B, 0x9C9CA2A8, 0xB5BBB3A9, 0x9B8E8279, 0x737693AE,
    0xB4B6B9BE, 0xD5C9C5BF, 0xAF9C8B7E, 0x7A8094A5, 0xA4A0A7B0, 0xBDC5C0B7, 0xA8998E85, 0x7B7B9AB7, 0xBDBEC0C5,
    0xDBCFCCC8, 0xBAA9998E, 0x898E9FAD, 0xA8A1ACB8, 0xC6CECCC5, 0xB6A4988F, 0x8381A0BE, 0xC4C6C8CD, 0xE0D4D3D1,
    0xC5B7A89D, 0x989CA8B3, 0xABA2B0C0, 0xCED8D8D2, 0xC2AEA298, 0x8C89A6C3, 0xCACED1D5, 0xE5DBDAD8, 0xD0C4B6AB,
    0xA6A8B1B8, 0xAEA4B5C7, 0xD6E0E3DE, 0xCDB7ABA2, 0x9590ACC9, 0xD0D5D9DC, 0xEBE1E0DE, 0xDAD1C4B9, 0xB2B2B8BC,
    0xB1A7B9CE, 0xDEE8ECE8, 0xD6BDB3AC, 0x9E98B3CE, 0xD6DBE0E3, 0xF0E9E6E3, 0xE3DDD2C6, 0xBCBABEC0, 0xB4AABED5,
    0xE5EFF3F0, 0xDDC2BBB6, 0xA79FB9D4, 0xDCE2E7E9, 0xF5F0ECE7, 0xEAE8DED2, 0xC6C1C2C3, 0xB7ADC4DD, 0xEBF3F8F5,
    0xE1C6C2C1, 0xB1A7BFD8, 0xE1E7EDF0, 0xF9F5F1EB, 0xF0F0E9DD, 0xCFC7C7C6, 0xBBB1CBE5, 0xF0F5FBF7, 0xE3CACACC,
    0xBBB0C5DC, 0xE5ECF4F6, 0xFCF9F5EE, 0xF5F7F0E7, 0xD7CDCCCB, 0xBFB7D2EB, 0xF4F7FBF6, 0xE4CDD2D6, 0xC6B9CBE0,
    0xE9F1F9FB, 0xFDFCF8F2, 0xF9FAF6EE, 0xDFD5D3D0, 0xC5BDD9F0, 0xF7F9FBF4, 0xE5D0D9E0, 0xD1C2D2E4, 0xEDF5FCFE,
    0xFEFDFAF4, 0xFBFCF9F3, 0xE6DDDAD7, 0xCBC3DEF4, 0xFAFBFCF3, 0xE5D3DEE8, 0xDBCDDAE9, 0xF2F8FEFF, 0xFEFDFCF6,
    0xFCFDFCF7, 0xECE4E2DF, 0xD2C9E3F7, 0xFCFDFBF3, 0xE5D6E4EF, 0xE3D6E1EE, 0xF6FAFEFF, 0xFEFDFDF8, 0xFCFDFDFA,
    0xF1EAE9E7, 0xD9CFE7F9, 0xFEFEFBF3, 0xE7DBE9F4, 0xEBDFE8F3, 0xF9FCFFFF, 0xFEFDFDFA, 0xFDFDFEFC, 0xF5EFEFEE,
    0xE0D5ECFB, 0xFFFEFBF3, 0xE9E1EEF8, 0xF0E6EEF6, 0xFCFDFFFF, 0xFEFDFEFC, 0xFEFDFEFE, 0xF8F4F4F3, 0xE7DDF1FD,
    0xFFFEFBF3, 0xECE7F3FC, 0xF5ECF2F9, 0xFDFEFFFF, 0xFEFDFFFE, 0xFFFDFEFE, 0xFAF7F8F7, 0xEDE5F5FE, 0xFFFEFBF5,
    0xF0EDF7FD, 0xF9F1F5FA, 0xFEFFFFFF, 0xFEFDFFFF, 0xFFFEFEFF, 0xFCFAFAFA, 0xF2ECF8FE, 0xFFFEFCF7, 0xF4F3FAFE,
    0xFBF6F8FB, 0xFEFFFFFF, 0xFEFDFFFF, 0xFFFEFEFF, 0xFDFCFCFC, 0xF7F2FBFF, 0xFFFEFCFA, 0xF8F7FCFF, 0xFEFAFBFC,
    0xFFFFFFFF, 0xFEFEFFFF, 0xFFFFFFFF, 0xFEFDFEFD, 0xFAF7FCFF, 0xFFFEFDFC, 0xFCFBFDFF, 0xFFFDFDFD, 0xFFFFFFFF,
    0xFFFEFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFCFAFDFF, 0xFFFEFEFE, 0xFEFDFEFF, 0xFFFFFEFD, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFDFCFEFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFEFEFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
};

static UNK_TYPE texture2[] = {
    0x2F3E56AB, 0xA4582102, 0x10417AB0, 0x805C312A, 0x32376DD4, 0xA2633907, 0x0B387DA2, 0x6D81470C, 0x3C5C60AC,
    0xA5571801, 0x154C97B9, 0x68533236, 0x304276D6, 0x9B533108, 0x154A96B7, 0x7C9B400B, 0x3E756FAE, 0xAF5D1301,
    0x1D59B4BF, 0x53432C38, 0x2F487DCC, 0x8A4A2406, 0x1F5DB0C8, 0x90B55110, 0x408B7FAA, 0xB76D1503, 0x286ACCBE,
    0x43312030, 0x2B4C82BA, 0x77431607, 0x2B70C7D5, 0xA6B95B13, 0x409C93A6, 0xB87D1D08, 0x367FE1C1, 0x3C261629,
    0x2A508AAB, 0x69410C0C, 0x3986DDDB, 0xB5AE6316, 0x40A0A7A1, 0xAA7D2610, 0x4596F1CD, 0x47281E36, 0x365C97A3,
    0x63450713, 0x499DF0D8, 0xB49E721A, 0x409AB59F, 0x8A662D1C, 0x57AEFBDF, 0x6B404456, 0x536EA49B, 0x6A4D061E,
    0x5CB6FCC6, 0x9A8E7F20, 0x428EBEA0, 0x623F2E2A, 0x69C6FFF0, 0x9A686569, 0x6F83AC92, 0x7F5D0B2A, 0x70CDFFB2,
    0x77848D29, 0x4787C4A0, 0x401D2E3E, 0x7ED9FFFC, 0xC48F7973, 0x8598AE86, 0x9A701339, 0x85E1FFA6, 0x5E859534,
    0x5189C99B, 0x2C0B3455, 0x92E9FFFA, 0xDCAB8071, 0x94ACAD7A, 0xB1882249, 0x9AF1FFB0, 0x6A8F9746, 0x6394CD8D,
    0x290C416F, 0xA5EEFFF4, 0xDCB46B6D, 0xA1BFAD77, 0xB6A43A58, 0xAAF8FFC8, 0x84959963, 0x7BA4CE78, 0x351A588E,
    0xB5E3F9F1, 0xCFAC6077, 0xABCFAC77, 0xA8C05A6A, 0xB2F3FFE1, 0xA3959471, 0x94B9D065, 0x473274A9, 0xBDCDECEF,
    0xC2A05F86, 0xBADDAC78, 0x92D87C7D, 0xAFDEFDF1, 0xBC8C8971, 0xA6D2D45A, 0x584B95BB, 0xC1B3D5ED, 0xB8956697,
    0xC5E9A670, 0x7AE6978F, 0xA4BEF0EF, 0xB9797360, 0xB1E8DD5D, 0x5D5FAFC7, 0xC49CB8E3, 0xAF8C78A5, 0xCBF19D5F,
    0x6AE5A6A3, 0x9398DBE7, 0xB46A5841, 0xB8F2E871, 0x586DC1CD, 0xC78C9DD5, 0xAA878CB1, 0xD8F89249, 0x63DCABB3,
    0x8576C5D8, 0xA95E4430, 0xC0EBEE91, 0x5378CACE, 0xC58087C5, 0xA4859EAE, 0xE1FD8A36, 0x60D0ACBD, 0x7765B9C5,
    0x9C563A2B, 0xCED7E7B4, 0x5484C7CC, 0xB66F7CBB, 0x9F81A898, 0xE3FF8D2E, 0x63C8B0BA, 0x6D69B8B0, 0x93573B2E,
    0xE0C2CED2, 0x6898C0C3, 0x97587EBC, 0x9D749570, 0xDEFF9D36, 0x67C8B4A8, 0x6682BD9B, 0x93643E37, 0xF0B4A8DE,
    0x86A9B6B0, 0x70448BBE, 0x99617545, 0xD1FFB84E, 0x70CAB48C, 0x64A4BD8D, 0x96763D41, 0xFAAC82DA, 0xA7B6AE9A,
    0x4D359AC0, 0x90494F27, 0xC0FFD675, 0x80CCAD6D, 0x63C1B681, 0x9C85374E, 0xFFA069C9, 0xC1BAA785, 0x3936A4B6,
    0x7D342E18, 0xA9FFEEA5, 0x9AC59F56, 0x60D0A873, 0x9288315E, 0xFB8669B6, 0xD0B6A473, 0x3C47A39A, 0x6228241B,
    0x8BFFF6CD, 0xB7BB8F47, 0x57CFA169, 0x77782C6B, 0xE56478AA, 0xD6AC9E64, 0x4E61977C, 0x4B232428, 0x6FFFEBE5,
    0xD0AF813C, 0x44C2A266, 0x5B61296E, 0xC04188A8, 0xD4A09051, 0x5D788B61, 0x3E202234, 0x58F9D7DF, 0xDEA27332,
    0x31AE9A6C, 0x3E4B2F62, 0x902688B3, 0xD0937A3F, 0x5D7D8B58, 0x37241F35, 0x46F2C5BF, 0xD7956528, 0x1E918E76,
    0x3442424A, 0x601774C3, 0xCB8F6630, 0x48698261, 0x333C2729, 0x3CECBF95, 0xC2885420, 0x11717B78, 0x4952673A,
    0x3D1153CD, 0xC994602F, 0x2D496F6D, 0x31674418, 0x32E7CA6C, 0xA77D4318, 0x09526672, 0x6B6F963E, 0x2B1036D0,
    0xCAA26E3C, 0x1B2A5A7B, 0x3798700F, 0x2BDFD94D, 0x8C773712, 0x043C606C, 0x9086B955, 0x281225C9, 0xC7AD8954,
    0x141B4085, 0x53CB9C10, 0x26D3E63A, 0x757A3B11, 0x0131666F, 0xAB87BA6A, 0x2E151FBF, 0xC1AEA16A, 0x1721388C,
    0x81ECBB17, 0x23C1EE30, 0x6688561E, 0x02317381, 0xA36A9566, 0x3B171FB9, 0xB5A5AF7A, 0x1B384395, 0xABFBC81D,
    0x20AAEB28, 0x61987838, 0x05358299, 0x85405D4E, 0x45181FB5, 0xA695B083, 0x1C55569C, 0xCEFFCF1E, 0x1A8CDA24,
    0x62A39755, 0x0A398FAE, 0x601A2A2C, 0x49161FB1, 0x9A8BAC8A, 0x23736DA0, 0xE0FFD61E, 0x136BAF23, 0x70ABAD6D,
    0x143D95BD, 0x41030D16, 0x41151DAA, 0x938BAA94, 0x2E8A8BA7, 0xE6FFD921, 0x0C4A7D2D, 0x7CACAB70, 0x244093C3,
    0x38020F11, 0x2F151CA3, 0x9293ABA1, 0x3995AAB7, 0xEDF7D924, 0x072F5842, 0x83AE9C66, 0x3F498EC7, 0x420D2812,
    0x1E151F9B, 0x989CB0B2, 0x4697C5CE, 0xF5F0D626, 0x061B435B, 0x85B18A5B, 0x5F568BCD, 0x54245213, 0x12172593,
    0x9FA1BAC0, 0x5291D4E1, 0xFAF0D123, 0x0711416F, 0x82B2765B, 0x84668FCB, 0x684D8212, 0x1318308A, 0xA3A2C2C6,
    0x5F88D3EE, 0xFEF6C81B, 0x0B104276, 0x85B06A72, 0xA97896C3, 0x7C81AC19, 0x24194083, 0xA2A0C6C4, 0x6A82CCF1,
    0xFFFFB910, 0x14173E77, 0x8BAE6992, 0xC6879BB4, 0x92B3C933, 0x3C1D4F7D, 0x9DA2CCBE, 0x7381C6E6, 0xFFFFB111,
    0x26233975, 0x92AF6DAF, 0xDB949AA3, 0xADDBDD64, 0x5927597B, 0x99AAD4B9, 0x7687C6D5, 0xFCFFB736, 0x432D3A78,
    0x98B371BD, 0xE5A0989E, 0xCCF2EAA0, 0x753C5C80, 0x9DB9E3BC, 0x7896CFBF, 0xF6FFCB72, 0x64323F81, 0x9CBC70B4,
    0xE3AC9EAD, 0xE6FBF6CF, 0x8B5C5C85, 0xA7C8F4C2, 0x7AA6D9A3, 0xF0FFE2A9, 0x8032448D, 0xA4C970A0, 0xDBB5AAC6,
    0xF7FEFDE7, 0xA3806187, 0xB0D6FFC9, 0x7FB5D686, 0xE7FFF0D2, 0x8D2F4E98, 0xABD7768D, 0xCFB9B4E1, 0xF8F8FFE7,
    0xB29B7089, 0xB7E4FFCD, 0x8CB8BF65, 0xD5FFF0D7, 0x8D34609D, 0xB4E48385, 0xC3BAB0F1, 0xE2E8FEDC, 0xB5A07A8D,
    0xBDEFFFD0, 0x9AAB9543, 0xB9FFE9C3, 0x80447497, 0xC0EF9C90, 0xBDB997E5, 0xC2CCFBD4, 0xAB8F7387, 0xC8F8FFD4,
    0xA4936324, 0x98FFE5B3, 0x6F577E8A, 0xCEFABCA8, 0xC0BC71C7, 0x9EADF4D2, 0x916D5D7B, 0xD4FEFFD6, 0xA575390F,
    0x76FFE4A6, 0x656A7F7D, 0xDDFFDABF, 0xC8BF4CA1, 0x8095E8CC, 0x744A3B66, 0xDAFFFFD6, 0x9D5B1E04, 0x5DFDDF9A,
    0x6075787A, 0xECFFF1CD, 0xCEC42E7C, 0x7087D6BF, 0x5A311F49, 0xD4FFFFD0, 0x8E4B1100, 0x50F7D892, 0x68767788,
    0xF6FFFDCE, 0xCDC31E65, 0x6E88C3A8, 0x4922153A, 0xC3FFFDC4, 0x7F410B03, 0x4BEED08B, 0x747682A0, 0xFDFFFEBF,
    0xBCB61456, 0x7792B18B, 0x3E19153D, 0xB5FFF8B2, 0x733B0908, 0x4DE0C487, 0x827797BC, 0xFFFFF8AB, 0x9E9B0E50,
    0x869E9F6E, 0x3714184D, 0xB5FFF09E, 0x67380C11, 0x56CFB285, 0x8F7EADD4, 0xFFFFED96, 0x78730A53, 0x9CA98F57,
    0x310F1C69, 0xC8FFE18A, 0x5D35161D, 0x64BC9E84, 0x978BBFE7, 0xFFFFDD81, 0x5348075A, 0xB5B07F48, 0x290A2088,
    0xE1FFCF75, 0x5335272B, 0x74AD877F, 0x9C9DCFF3, 0xFFFEC86E, 0x35260864, 0xC6B16F3E, 0x200422A6, 0xF8FCB95F,
    0x47373A3C, 0x86A36F73, 0x9FB0D9FA, 0xFFF7B15B, 0x21110E70, 0xCDAB6139, 0x160027C1, 0xFFF09F4C, 0x3B3A4B4D,
    0x989D5B5D, 0x9DB5D9FE, 0xFFEA994C, 0x1509177B, 0xC8A15C3C, 0x0E022BD1, 0xFFE1873B, 0x2F3E5460, 0xA8954F44,
    0x96A6CEFF, 0xFFD7823C, 0x0C0A2784, 0xB9956343, 0x0B0731DB, 0xFFCE722C, 0x22415672, 0xB58C4A31, 0x8A88BAFF,
    0xFAC56E2E, 0x060F398F, 0xA989764A, 0x0A0C3AE1, 0xFFB85F20, 0x17425787, 0xBF824826, 0x775FA3FF, 0xF1B66121,
    0x03164B98, 0x9A818E4A, 0x0A1040D4, 0xE8974D14, 0x11405495, 0xBB74401F, 0x603D86F1, 0xD7A35414, 0x02195694,
    0x8476943E, 0x171A46C5, 0xCC7D3D0C, 0x0D3E599E, 0xAE6C371C, 0x4A2D72E3, 0xC38F4C0E, 0x03205F96, 0x766A792A,
    0x242B4FB8, 0xB66A2E06, 0x0D3E66AA, 0x9B663322, 0x3B2D6CDD, 0xB47B450A, 0x062B6E9C, 0x6E705D17
};

static UNK_TYPE vertices1[] = {
    0x00420271, 0xFFBE0000, 0x060006C2, 0x3E52C2FF, 0x000002BC, 0x00000000, 0x07000800, 0x007800FF, 0x005D0271,
    0x00000000, 0x080006C2, 0x575200FF, 0x00BD01DB, 0xFFB20000, 0x07000419, 0x5E3FD9FF, 0x00BD01DB, 0x004E0000,
    0x09000419, 0x5E3F27FF, 0x01AF001B, 0x00000000, 0x08000005, 0x6B3500FF, 0x0131001B, 0x01310000, 0x0A000005,
    0x4C354CFF, 0x000002BC, 0x00000000, 0x09000800, 0x007800FF, 0x00420271, 0x00420000, 0x0A0006C2, 0x3E523EFF,
    0x004E01DB, 0x00BD0000, 0x0B000419, 0x273F5EFF, 0x0000001B, 0x01AF0000, 0x0C000005, 0x00356BFF, 0x000002BC,
    0x00000000, 0x0B000800, 0x007800FF, 0x00000271, 0x005D0000, 0x0C0006C2, 0x005257FF, 0xFFB201DB, 0x00BD0000,
    0x0D000419, 0xD93F5EFF, 0xFECF001B, 0x01310000, 0x0E000005, 0xB4354CFF, 0x000002BC, 0x00000000, 0x0D000800,
    0x007800FF, 0xFFBE0271, 0x00420000, 0x0E0006C2, 0xC2523EFF, 0xFF4301DB, 0x004E0000, 0x0F000419, 0xA23F27FF,
    0xFE51001B, 0x00000000, 0x10000005, 0x953500FF, 0xFFA30271, 0x00000000, 0x100006C2, 0xA95200FF, 0xFF4301DB,
    0xFFB20000, 0x11000419, 0xA23FD9FF, 0xFE51001B, 0x00000000, 0x00000005, 0x953500FF, 0xFF4301DB, 0xFFB20000,
    0x01000419, 0xA23FD9FF, 0xFECF001B, 0xFECF0000, 0x02000005, 0xB435B4FF, 0xFFA30271, 0x00000000, 0x000006C2,
    0xA95200FF, 0x000002BC, 0x00000000, 0x01000800, 0x007800FF, 0xFFBE0271, 0xFFBE0000, 0x020006C2, 0xC252C2FF,
    0xFFB201DB, 0xFF430000, 0x03000419, 0xD93FA2FF, 0x0000001B, 0xFE510000, 0x04000005, 0x003595FF, 0x000002BC,
    0x00000000, 0x03000800, 0x007800FF, 0x00000271, 0xFFA30000, 0x040006C2, 0x0052A9FF, 0x004E01DB, 0xFF430000,
    0x05000419, 0x273FA2FF,
};

static UNK_TYPE vertices2[] = {
    0x0000001B, 0xFE510000, 0x04000005, 0x003595FF, 0x004E01DB, 0xFF430000, 0x05000419, 0x273FA2FF, 0x0131001B,
    0xFECF0000, 0x06000005, 0x4C35B4FF, 0x00000271, 0xFFA30000, 0x040006C2, 0x0052A9FF, 0x000002BC, 0x00000000,
    0x05000800, 0x007800FF, 0x00420271, 0xFFBE0000, 0x060006C2, 0x3E52C2FF, 0x00BD01DB, 0xFFB20000, 0x07000419,
    0x5E3FD9FF, 0x01AF001B, 0x00000000, 0x08000005, 0x6B3500FF, 0xFFBE0271, 0x00420000, 0x060006C2, 0xC2523EFF,
    0x000002BC, 0x00000000, 0x07000800, 0x007800FF, 0xFFA30271, 0x00000000, 0x080006C2, 0xA95200FF,
};

static Gfx textureDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(texture1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, 1, 15),
    gsDPLoadMultiBlock(texture2, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_MIRROR | G_TX_WRAP, 5, 6, 1, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(Z_CMP | IM_RD | CVG_DST_SAVE | ZMODE_XLU | FORCE_BL |
                          GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1),
                      G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

static Gfx vertexDL[] = {
    gsSPVertex(vertices1, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 2, 7, 8, 0),
    gsSP2Triangles(2, 8, 4, 0, 4, 8, 9, 0),
    gsSP2Triangles(4, 9, 6, 0, 6, 9, 10, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 9, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(10, 13, 14, 0, 12, 15, 16, 0),
    gsSP2Triangles(12, 16, 13, 0, 13, 16, 17, 0),
    gsSP2Triangles(13, 17, 14, 0, 14, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 22, 0),
    gsSP2Triangles(22, 26, 27, 0, 22, 27, 23, 0),
    gsSP2Triangles(23, 27, 28, 0, 26, 29, 30, 0),
    gsSP2Triangles(26, 30, 27, 0, 27, 30, 31, 0),
    gsSP1Triangle(27, 31, 28, 0),
    gsSPVertex(vertices2, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 1, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 2, 0, 2, 6, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsSPEndDisplayList(),
};
