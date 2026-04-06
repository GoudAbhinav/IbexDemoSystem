; Auto-generated RISC-V Assembly from VMEM
; Note: Original .vmem addresses are assumed to be word-indices.


; --- Address @00000020 (Byte Address: 0x00000080) ---
0x00000080:	auipc   	gp, 2               	# 00002197
0x00000084:	addi    	gp, gp, -0x6dc      	# 92418193
0x00000088:	lui     	sp, 0x108           	# 00108137
0x0000008C:	jal     	8                   	# 008000EF
0x00000090:	j       	0                   	# 0000006F
0x00000094:	addi    	sp, sp, -0x20       	# FE010113
0x00000098:	sw      	s0, 0x1c(sp)        	# 00812E23
0x0000009C:	addi    	s0, sp, 0x20        	# 02010413
0x000000A0:	sw      	zero, -0x14(s0)     	# FE042623
0x000000A4:	j       	0xe0                	# 0E00006F
0x000000A8:	sw      	zero, -0x18(s0)     	# FE042423
0x000000AC:	j       	0xb8                	# 0B80006F
0x000000B0:	lui     	a5, 0x101           	# 001017B7
0x000000B4:	addi    	a4, a5, 0x1a4       	# 1A478713
0x000000B8:	lw      	a5, -0x18(s0)       	# FE842783
0x000000BC:	slli    	a5, a5, 2           	# 00279793
0x000000C0:	add     	a5, a4, a5          	# 00F707B3
0x000000C4:	lw      	a4, 0(a5)           	# 0007A703
0x000000C8:	lw      	a5, -0x18(s0)       	# FE842783
0x000000CC:	addi    	a5, a5, 1           	# 00178793
0x000000D0:	lui     	a3, 0x101           	# 001016B7
0x000000D4:	addi    	a3, a3, 0x1a4       	# 1A468693
0x000000D8:	slli    	a5, a5, 2           	# 00279793
0x000000DC:	add     	a5, a3, a5          	# 00F687B3
0x000000E0:	lw      	a5, 0(a5)           	# 0007A783
0x000000E4:	bge     	a5, a4, 0x74        	# 06E7DA63
0x000000E8:	lui     	a5, 0x101           	# 001017B7
0x000000EC:	addi    	a4, a5, 0x1a4       	# 1A478713
0x000000F0:	lw      	a5, -0x18(s0)       	# FE842783
0x000000F4:	slli    	a5, a5, 2           	# 00279793
0x000000F8:	add     	a5, a4, a5          	# 00F707B3
0x000000FC:	lw      	a5, 0(a5)           	# 0007A783
0x00000100:	sw      	a5, -0x1c(s0)       	# FEF42223
0x00000104:	lw      	a5, -0x18(s0)       	# FE842783
0x00000108:	addi    	a5, a5, 1           	# 00178793
0x0000010C:	lui     	a4, 0x101           	# 00101737
0x00000110:	addi    	a4, a4, 0x1a4       	# 1A470713
0x00000114:	slli    	a5, a5, 2           	# 00279793
0x00000118:	add     	a5, a4, a5          	# 00F707B3
0x0000011C:	lw      	a4, 0(a5)           	# 0007A703
0x00000120:	lui     	a5, 0x101           	# 001017B7
0x00000124:	addi    	a3, a5, 0x1a4       	# 1A478693
0x00000128:	lw      	a5, -0x18(s0)       	# FE842783
0x0000012C:	slli    	a5, a5, 2           	# 00279793
0x00000130:	add     	a5, a3, a5          	# 00F687B3
0x00000134:	sw      	a4, 0(a5)           	# 00E7A023
0x00000138:	lw      	a5, -0x18(s0)       	# FE842783
0x0000013C:	addi    	a5, a5, 1           	# 00178793
0x00000140:	lui     	a4, 0x101           	# 00101737
0x00000144:	addi    	a4, a4, 0x1a4       	# 1A470713
0x00000148:	slli    	a5, a5, 2           	# 00279793
0x0000014C:	add     	a5, a4, a5          	# 00F707B3
0x00000150:	lw      	a4, -0x1c(s0)       	# FE442703
0x00000154:	sw      	a4, 0(a5)           	# 00E7A023
0x00000158:	lw      	a5, -0x18(s0)       	# FE842783
0x0000015C:	addi    	a5, a5, 1           	# 00178793
0x00000160:	sw      	a5, -0x18(s0)       	# FEF42423
0x00000164:	lw      	a5, -0x14(s0)       	# FEC42783
0x00000168:	addi    	a4, zero, 4         	# 00400713
0x0000016C:	sub     	a4, a4, a5          	# 40F70733
0x00000170:	lw      	a5, -0x18(s0)       	# FE842783
0x00000174:	bltu    	a5, a4, -0xc4       	# F2E7EEE3
0x00000178:	lw      	a5, -0x14(s0)       	# FEC42783
0x0000017C:	addi    	a5, a5, 1           	# 00178793
0x00000180:	sw      	a5, -0x14(s0)       	# FEF42623
0x00000184:	lw      	a4, -0x14(s0)       	# FEC42703
0x00000188:	addi    	a5, zero, 4         	# 00400793
0x0000018C:	bgeu    	a5, a4, -0xe4       	# F0E7FEE3
0x00000190:	mv      	a5, zero            	# 00000793
0x00000194:	mv      	a0, a5              	# 00078513
0x00000198:	lw      	s0, 0x1c(sp)        	# 01C12403
0x0000019C:	addi    	sp, sp, 0x20        	# 02010113
0x000001A0:	ret     	                    	# 00008067

; --- Address @00000469 (Byte Address: 0x000011A4) ---
0x000011A4:	.word   	0x00000006            	# DATA
0x000011A8:	.word   	0x00000004            	# DATA
0x000011AC:	.word   	0x00000008            	# DATA
0x000011B0:	lb      	zero, 0(zero)       	# 00000003
0x000011B4:	.word   	0x00000005            	# DATA
