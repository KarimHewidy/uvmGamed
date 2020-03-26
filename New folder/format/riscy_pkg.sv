package riscy_package;
   import uvm_pkg::*;
`include "uvm_macros.svh"
      typedef enum logic[31:0] {
                                LSB=32'bxxxxxxxxxxxxxxxxx000xxxxx0000011,
LSH=32'bxxxxxxxxxxxxxxxxx001xxxxx0000011,
LUB=32'bxxxxxxxxxxxxxxxxx100xxxxx0000011,
LUH=32'bxxxxxxxxxxxxxxxxx101xxxxx0000011,
LW= 32'bxxxxxxxxxxxxxxxxx010xxxxx0000011,
LUW=32'bxxxxxxxxxxxxxxxxx110xxxxx0000011,
LDW=32'bxxxxxxxxxxxxxxxxx000xxxxx0000011,
LSBfAs=32'b0000000xxxxxxxxxx111xxxxx0000011,
LSHfAs=32'b0001000xxxxxxxxxx111xxxxx0000011,
LUBfAs=32'b0100000xxxxxxxxxx111xxxxx0000011,
LUHfAs=32'b0010100xxxxxxxxxx111xxxxx0000011,
LWfAs=32'b0010000xxxxxxxxxx111xxxxx0000011,
LDfAs=32'b00000000000000000000000000010011,
LFR=32'bxxxxxxxxxxxxxxxxx010xxxxx0000111,
LDFR=32'bxxxxxxxxxxxxxxxxx011xxxxx0000111,
LFSR=32'b00000000000000000000000000010011,
LCR=32'b00000000000000000000000000010011,
LDCR=32'b00000000000000000000000000010011,
LCSR=32'b00000000000000000000000000010011,
lmorfsm=32'b00000000000000000000000000010011,
lmfps=32'b00000000000000000000000000010011,
lmorPfsm=32'b00000000000000000000000000010011,
SB=32'bxxxxxxxxxxxxxxxxx000xxxxx0100011,
SBiAs=32'b00000000000000000000000000010011,
SH=32'bxxxxxxxxxxxxxxxxx001xxxxx0100011,
SHiAs=32'b00000000000000000000000000010011,
SW=32'bxxxxxxxxxxxxxxxxx010xxxxx0100011,
SWiAs=32'b00000000000000000000000000010011,
SD=32'bxxxxxxxxxxxxxxxxx011xxxxx0100011,
SDiAs=32'b00000000000000000000000000010011,
SF=32'b00000000000000000000000000010011,
SDF=32'b00000000000000000000000000010011,
SFSR=32'b00000000000000000000000000010011,
SDFdQ=32'b00000000000000000000000000010011,
SC=32'b00000000000000000000000000010011,
SDC=32'b00000000000000000000000000010011,
SCSR=32'b00000000000000000000000000010011,
SDCdQ=32'b00000000000000000000000000010011,
Sm=32'b00000000000000000000000000010011,
SBr=32'b00000000000000000000000000010011,
ALUB=32'b00000000000000000000000000010011,
ALUBas=32'b00000000000000000000000000010011,
SRwM=32'b00000000000000000000000000010011,
Sabbram=32'b00000000000000000000000000010011,
SRwMas=32'b00000000000000000000000000010011,
M=32'b0000001xxxxxxxxxx000xxxxx0110011,
UIM=32'b00000000000000000000000000010011,
UIMi=32'b00000000000000000000000000010011,
UIMami=32'b00000000000000000000000000010011,
UIMiami=32'b00000000000000000000000000010011,
SIM=32'b00000000000000000000000000010011,
SIMi=32'b00000000000000000000000000010011,
SIMami=32'b00000000000000000000000000010011,
SIMiami=32'b00000000000000000000000000010011,
Mh=32'b0000001xxxxxxxxxx010xxxxx0110011,
Mhs=32'b0000001xxxxxxxxxx010xxxxx0110011,
Mhu=32'b0000001xxxxxxxxxx011xxxxx0110011,
MA=32'b00000000000000000000000000010011,
UId=32'b0000001xxxxxxxxxx101xxxxx0110011,
UIdi=32'b00000000000000000000000000010011,
UIdami=32'b00000000000000000000000000010011,
UIdiami=32'b00000000000000000000000000010011,
SId=32'b0000001xxxxxxxxxx100xxxxx0110011,
SIdi=32'b00000000000000000000000000010011,
SIdami=32'b00000000000000000000000000010011,
SIdiami=32'b00000000000000000000000000010011,
Rem=32'b0000001xxxxxxxxxx110xxxxx0110011,
Ru=32'b0000001xxxxxxxxxx110xxxxx0110011,
A=32'b0000000xxxxxxxxxx000xxxxx0110011,
Ai=32'bxxxxxxxxxxxxxxxxx000xxxxx0010011,
Aami=32'b00000000000000000000000000010011,
Aiami=32'b00000000000000000000000000010011,
Awc=32'b00000000000000000000000000010011,
Aiwc=32'b00000000000000000000000000010011,
Awcami=32'b00000000000000000000000000010011,
Aiwcami=32'b00000000000000000000000000010011,
TAami=32'b00000000000000000000000000010011,
TAiami=32'b00000000000000000000000000010011,
TAmiatoo=32'b00000000000000000000000000010011,
TAimiatoo=32'b00000000000000000000000000010011,
CN=32'b00000000000000000000000000010011,
C=32'b00000000000000000000000000010011,
S=32'b0100000xxxxxxxxxx000xxxxx0110011,
Sim=32'b00000000000000000000000000010011,
Sami=32'b00000000000000000000000000010011,
Siami=32'b00000000000000000000000000010011,
Rs=32'b00000000000000000000000000010011,
Swc=32'b00000000000000000000000000010011,
Siwc=32'b00000000000000000000000000010011,
Swcami=32'b00000000000000000000000000010011,
Siwcami=32'b00000000000000000000000000010011,
Rswc=32'b00000000000000000000000000010011,
Tsami=32'b00000000000000000000000000010011,
Tsiami=32'b00000000000000000000000000010011,
Tsmiatoo=32'b00000000000000000000000000010011,
Tsimiatoo=32'b00000000000000000000000000010011,
BwA=32'b0000000xxxxxxxxxx111xxxxx0110011,
BAI=32'bxxxxxxxxxxxxxxxxx111xxxxx0010011,
BAamti=32'b00000000000000000000000000010011,
BAIamti=32'b00000000000000000000000000010011,
BAwc=32'b00000000000000000000000000010011,
BAIwc=32'b00000000000000000000000000010011,
BAwcami=32'b00000000000000000000000000010011,
BAIwcami=32'b00000000000000000000000000010011,
BX=32'b0000000xxxxxxxxxx100xxxxx0110011,
BXI=32'bxxxxxxxxxxxxxxxxx100xxxxx0010011,
BXamti=32'b00000000000000000000000000010011,
BXIamti=32'b00000000000000000000000000010011,
BXwc=32'b00000000000000000000000000010011,
BXIwc=32'b00000000000000000000000000010011,
BXwcami=32'b00000000000000000000000000010011,
BXIwcami=32'b00000000000000000000000000010011,
BO=32'b0000000xxxxxxxxxx110xxxxx0110011,
BOI=32'bxxxxxxxxxxxxxxxxx110xxxxx0010011,
BOamti=32'b00000000000000000000000000010011,
BOIamti=32'b00000000000000000000000000010011,
BOwc=32'b00000000000000000000000000010011,
BOIwc=32'b00000000000000000000000000010011,
BOwcami=32'b00000000000000000000000000010011,
BOIwcami=32'b00000000000000000000000000010011,
Sll=32'b0000000xxxxxxxxxx001xxxxx0110011,
Srl=32'b0000000xxxxxxxxxx101xxxxx0110011,
Sra=32'b0100000xxxxxxxxxx101xxxxx0110011,
Slli=32'b000000xxxxxxxxxxx001xxxxx0010011,
Srli=32'b000000xxxxxxxxxxx101xxxxx0010011,
Srai=32'b010000xxxxxxxxxxx101xxxxx0010011,
JaL=32'bxxxxxxxxxxxxxxxxxxxxxxxxx1101111,
JaLr=32'bxxxxxxxxxxxxxxxxx000xxxxx1100111,
RfT=32'b00000000000000000000000000010011,
CaL=32'b00000000000000000000000000010011,
BN=32'b00000000000000000000000000010011,
BA=32'b00000000000000000000000000010011,
BTA=32'b00000000000000000000000000010011,
BAL=32'b00000000000000000000000000010011,
Bie=32'bxxxxxxxxxxxxxxxxx000xxxxx1100011,
//Bine=
Bigtoe=32'bxxxxxxxxxxxxxxxxx101xxxxx1100011,
Biltoe=32'bxxxxxxxxxxxxxxxxx100xxxxx1100011,
Bigtoeu=32'bxxxxxxxxxxxxxxxxx111xxxxx1100011,
Biltoeu=32'bxxxxxxxxxxxxxxxxx110xxxxx1100011,
Biei=32'bxxxxxxxxxxxxxxxxx010xxxxx1100011,
Binei=32'bxxxxxxxxxxxxxxxxx011xxxxx1100011,
BoG=32'b00000000000000000000000000010011,
BoLoE=32'b00000000000000000000000000010011,
BoL=32'b00000000000000000000000000010011,
BoGU=32'b00000000000000000000000000010011,
BoCSLtU=32'b00000000000000000000000000010011,
BoP=32'b00000000000000000000000000010011,
BoN=32'b00000000000000000000000000010011,
BoOC=32'b00000000000000000000000000010011,
BoOS=32'b00000000000000000000000000010011,
BoCCC=32'b00000000000000000000000000010011,
Sh2b=32'b00000000000000000000000000010011,
Sav=32'b00000000000000000000000000010011,
Si=32'b00000000000000000000000000010011,
R=32'b00000000000000000000000000010011,
Ri=32'b00000000000000000000000000010011,
Mtrfc=32'b00000000000000000000000000010011,
Mtcfr=32'b00000000000000000000000000010011,
Mn=32'b00000000000000000000000000010011,
Mov=32'b00000000000000000000000000010011,
RY=32'b00000000000000000000000000010011,
RP=32'b00000000000000000000000000010011,
Rw=32'b00000000000000000000000000010011,
Rt=32'b00000000000000000000000000010011,
Ra=32'b00000000000000000000000000010011,
WfrtY=32'b00000000000000000000000000010011,
WfitY=32'b00000000000000000000000000010011,
Wfrtp=32'b00000000000000000000000000010011,
Wfitp=32'b00000000000000000000000000010011,
Wfrtw=32'b00000000000000000000000000010011,
Wfitw=32'b00000000000000000000000000010011,
Wfrtt=32'b00000000000000000000000000010011,
Wfitt=32'b00000000000000000000000000010011,
Swi=32'b00000000000000000000000000010011,
N=32'b00000000000000000000000000010011,
CO1=32'b00000000000000000000000000010011,
CO2=32'b00000000000000000000000000010011,
TA=32'b00000000000000000000000000010011,
TN=32'b00000000000000000000000000010011,
ToNE=32'b00000000000000000000000000010011,
ToE=32'b00000000000000000000000000010011,
ToG=32'b00000000000000000000000000010011,
ToLoE=32'b00000000000000000000000000010011,
ToGoE=32'b00000000000000000000000000010011,
ToL=32'b00000000000000000000000000010011,
ToGU=32'b00000000000000000000000000010011,
ToLoEU=32'b00000000000000000000000000010011,
ToCCGtoEU=32'b00000000000000000000000000010011,
ToCSLTU=32'b00000000000000000000000000010011,
ToP=32'b00000000000000000000000000010011,
ToN=32'b00000000000000000000000000010011,
ToOC=32'b00000000000000000000000000010011,
ToOS=32'b00000000000000000000000000010011,
Ui=32'b00000000000000000000000000010011,
Fim=32'b00000000000000000000000000010011

                            } opcode;
  
  function GUVM_sequence_item get_format (logic [31:0] inst);
	riscy_transaction ay;
	GUVM_sequence_item k;
	k = new("k");
   ay = new("ay");
	ay.opcode = inst[6:0];
		case (ay.opcode)
			7'b0110111,7'b0010111 :
					begin 
						//U-type
						ay.immb31_12 = inst[31:12];
						ay.rd = kinst[11:7];
					end
			7'b1101111 :
					begin 
						//J-type
						ay.immb20 = inst[31];
						ay.immb10_1 = inst[30:21];
						ay.immb11 = inst[20];
						ay.immb19_12 = inst[19:12];
						ay.rd = inst[11:7];
					end
			7'b1100111,7'b0000011 :
					begin
						//I-type
						ay.immb11_0 = inst[31:20];
						ay.rs1 = inst[19:15];
						ay.funct3 = inst[14:12];
						ay.rd = inst[11:7];
					end
			7'b0010011:
					begin
						if ( (inst[14:12] == 3'b001) || (inst[14:12] == 3'b101))
							begin
								//I-type-shift
								ay.funct7 = inst[31:25];
								ay.shamt = inst[24:20];
								ay.rs1 = inst[19:15];
								ay.funct3 = inst[14:12];
								ay.rd = inst[11:7];
							end
						else
							begin
								//I-type
								ay.immb11_0 = inst[31:20];
								ay.rs1 = inst[19:15];
								ay.funct3 = inst[14:12];
								ay.rd = inst[11:7];
							end
					end
			7'b0001111:
					begin
						//I-type-fence
						ay.pred = inst[27:24];
						ay.succ = inst[23:20];
					end
			7'b1110011 :
					begin
						//I-type-csr
						ay.csr = inst[31:20];
						ay.rs1 = inst[19:15];
						ay.funct3 = inst[14:12];
						ay.rd = inst[11:7];
					end
			7'b1100011 :
					begin
						//B-type
						ay.rs1 = inst[19:15];
						ay.funct3 = inst[14:12];
						ay.immb12 = inst[31];
						ay.immb10_5 = inst[30:25];
						ay.rs2 = inst[24:20];
						ay.immb4_1 = inst[11:8];
						ay.immb11 = inst[7];
					end
			7'b0100011 :
					begin
						//S-type
						ay.immb11_5 = inst[31:25];
						ay.rs2 = inst[24:20];
						ay.rs1 = inst[19:15];
						ay.funct3 = inst[14:12];
						ay.immb4_0 = inst[11:7];

					end
			7'b0110011 :
					begin
						//R-type
						ay.funct7 = inst[31:25];
						ay.rs2 = inst[24:20];
						ay.rs1 = inst[19:15];
						ay.funct3 = inst[14:12];
						ay.rd = inst[11:7];
					end
			end		
		if (!($cast(ay,k))) 
			$fatal(1,"failed to cast transaction to leon's transaction"); 
		return k;
	endfunction 
	
endpackage