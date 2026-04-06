; Auto-generated RISC-V Assembly from VMEM
; Note: Original .vmem addresses are assumed to be word-indices.


; --- Address @00000020 (Byte Address: 0x00000080) ---
0x00000080:	auipc   	gp, 2               	# 00002197
0x00000084:	addi    	gp, gp, -0x6f0      	# 91018193
0x00000088:	lui     	sp, 0x108           	# 00108137
0x0000008C:	jal     	0x44                	# 044000EF
0x00000090:	j       	0                   	# 0000006F
0x00000094:	addi    	sp, sp, -0x20       	# FE010113
0x00000098:	sw      	s0, 0x1c(sp)        	# 00812E23
0x0000009C:	addi    	s0, sp, 0x20        	# 02010413
0x000000A0:	sw      	a0, -0x14(s0)       	# FEA42623
0x000000A4:	sw      	a1, -0x18(s0)       	# FEB42423
0x000000A8:	lw      	a4, -0x14(s0)       	# FEC42703
0x000000AC:	lw      	a5, -0x18(s0)       	# FE842783
0x000000B0:	bge     	a5, a4, 0xc         	# 00E7D663
0x000000B4:	lw      	a5, -0x14(s0)       	# FEC42783
0x000000B8:	j       	8                   	# 0080006F
0x000000BC:	lw      	a5, -0x18(s0)       	# FE842783
0x000000C0:	mv      	a0, a5              	# 00078513
0x000000C4:	lw      	s0, 0x1c(sp)        	# 01C12403
0x000000C8:	addi    	sp, sp, 0x20        	# 02010113
0x000000CC:	ret     	                    	# 00008067
0x000000D0:	addi    	sp, sp, -0x10       	# FF010113
0x000000D4:	sw      	ra, 0xc(sp)         	# 00112623
0x000000D8:	sw      	s0, 8(sp)           	# 00812423
0x000000DC:	addi    	s0, sp, 0x10        	# 01010413
0x000000E0:	lui     	a5, 0x101           	# 001017B7
0x000000E4:	addi    	a5, a5, 0x190       	# 19078793
0x000000E8:	lw      	a4, 0(a5)           	# 0007A703
0x000000EC:	lui     	a5, 0x101           	# 001017B7
0x000000F0:	addi    	a5, a5, 0x190       	# 19078793
0x000000F4:	lw      	a5, 4(a5)           	# 0047A783
0x000000F8:	mv      	a1, a5              	# 00078593
0x000000FC:	mv      	a0, a4              	# 00070513
0x00000100:	jal     	-0x6c               	# F95FF0EF
0x00000104:	mv      	a4, a0              	# 00050713
0x00000108:	sw      	a4, -0x7ec(gp)      	# 80E1AA23
0x0000010C:	lw      	a4, -0x7ec(gp)      	# 8141A703
0x00000110:	lui     	a5, 0x101           	# 001017B7
0x00000114:	addi    	a5, a5, 0x190       	# 19078793
0x00000118:	lw      	a5, 8(a5)           	# 0087A783
0x0000011C:	mv      	a1, a5              	# 00078593
0x00000120:	mv      	a0, a4              	# 00070513
0x00000124:	jal     	-0x90               	# F71FF0EF
0x00000128:	mv      	a4, a0              	# 00050713
0x0000012C:	sw      	a4, -0x7ec(gp)      	# 80E1AA23
0x00000130:	lw      	a4, -0x7ec(gp)      	# 8141A703
0x00000134:	lui     	a5, 0x101           	# 001017B7
0x00000138:	addi    	a5, a5, 0x190       	# 19078793
0x0000013C:	lw      	a5, 0xc(a5)         	# 00C7A783
0x00000140:	mv      	a1, a5              	# 00078593
0x00000144:	mv      	a0, a4              	# 00070513
0x00000148:	jal     	-0xb4               	# F4DFF0EF
0x0000014C:	mv      	a4, a0              	# 00050713
0x00000150:	sw      	a4, -0x7ec(gp)      	# 80E1AA23
0x00000154:	lw      	a4, -0x7ec(gp)      	# 8141A703
0x00000158:	lui     	a5, 0x101           	# 001017B7
0x0000015C:	addi    	a5, a5, 0x190       	# 19078793
0x00000160:	lw      	a5, 0x10(a5)        	# 0107A783
0x00000164:	mv      	a1, a5              	# 00078593
0x00000168:	mv      	a0, a4              	# 00070513
0x0000016C:	jal     	-0xd8               	# F29FF0EF
0x00000170:	mv      	a4, a0              	# 00050713
0x00000174:	sw      	a4, -0x7ec(gp)      	# 80E1AA23
0x00000178:	mv      	a5, zero            	# 00000793
0x0000017C:	mv      	a0, a5              	# 00078513
0x00000180:	lw      	ra, 0xc(sp)         	# 00C12083
0x00000184:	lw      	s0, 8(sp)           	# 00812403
0x00000188:	addi    	sp, sp, 0x10        	# 01010113
0x0000018C:	ret     	                    	# 00008067

; --- Address @00000464 (Byte Address: 0x00001190) ---
0x00001190:	fence   	unknown, unknown    	# 0000000F
0x00001194:	.word   	0x00000057            	# DATA
0x00001198:	.word   	0x0000002A            	# DATA
0x0000119C:	beqz    	zero, 0             	# 00000063
0x000011A0:	auipc   	zero, 0             	# 00000017

; --- Address @00000469 (Byte Address: 0x000011A4) ---
0x000011A4:	.word   	0xFFFFFFFF            	# DATA
