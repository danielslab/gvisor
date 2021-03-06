// Copyright 2019 The gVisor Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

TEXT ·CPACREL1(SB),NOSPLIT,$0-8
	WORD $0xd5381041 	// MRS CPACR_EL1, R1
	MOVD R1, ret+0(FP)
	RET

TEXT ·FPCR(SB),NOSPLIT,$0-8
	WORD $0xd53b4201    	// MRS NZCV, R1
	MOVD R1, ret+0(FP)
	RET

TEXT ·GetFPSR(SB),NOSPLIT,$0-8
	WORD $0xd53b4421   	// MRS FPSR, R1
	MOVD R1, ret+0(FP)
	RET

TEXT ·FPCR(SB),NOSPLIT,$0-8
	MOVD addr+0(FP), R1
	WORD $0xd51b4201  	// MSR R1, NZCV
	RET

TEXT ·SetFPSR(SB),NOSPLIT,$0-8
	MOVD addr+0(FP), R1
	WORD $0xd51b4421   	// MSR R1, FPSR
	RET

TEXT ·SaveVRegs(SB),NOSPLIT,$0-8
	MOVD addr+0(FP), R0

	// Skip aarch64_ctx, fpsr, fpcr.
	FMOVD F0, 16*1(R0)
	FMOVD F1, 16*2(R0)
	FMOVD F2, 16*3(R0)
	FMOVD F3, 16*4(R0)
	FMOVD F4, 16*5(R0)
	FMOVD F5, 16*6(R0)
	FMOVD F6, 16*7(R0)
	FMOVD F7, 16*8(R0)
	FMOVD F8, 16*9(R0)
	FMOVD F9, 16*10(R0)
	FMOVD F10, 16*11(R0)
	FMOVD F11, 16*12(R0)
	FMOVD F12, 16*13(R0)
	FMOVD F13, 16*14(R0)
	FMOVD F14, 16*15(R0)
	FMOVD F15, 16*16(R0)
	FMOVD F16, 16*17(R0)
	FMOVD F17, 16*18(R0)
	FMOVD F18, 16*19(R0)
	FMOVD F19, 16*20(R0)
	FMOVD F20, 16*21(R0)
	FMOVD F21, 16*22(R0)
	FMOVD F22, 16*23(R0)
	FMOVD F23, 16*24(R0)
	FMOVD F24, 16*25(R0)
	FMOVD F25, 16*26(R0)
	FMOVD F26, 16*27(R0)
	FMOVD F27, 16*28(R0)
	FMOVD F28, 16*29(R0)
	FMOVD F29, 16*30(R0)
	FMOVD F30, 16*31(R0)
	FMOVD F31, 16*32(R0)
	ISB $15

	RET

TEXT ·LoadVRegs(SB),NOSPLIT,$0-8
	MOVD addr+0(FP), R0

	// Skip aarch64_ctx, fpsr, fpcr.
	FMOVD 16*1(R0), F0
	FMOVD 16*2(R0), F1
	FMOVD 16*3(R0), F2
	FMOVD 16*4(R0), F3
	FMOVD 16*5(R0), F4
	FMOVD 16*6(R0), F5
	FMOVD 16*7(R0), F6
	FMOVD 16*8(R0), F7
	FMOVD 16*9(R0), F8
	FMOVD 16*10(R0), F9
	FMOVD 16*11(R0), F10
	FMOVD 16*12(R0), F11
	FMOVD 16*13(R0), F12
	FMOVD 16*14(R0), F13
	FMOVD 16*15(R0), F14
	FMOVD 16*16(R0), F15
	FMOVD 16*17(R0), F16
	FMOVD 16*18(R0), F17
	FMOVD 16*19(R0), F18
	FMOVD 16*20(R0), F19
	FMOVD 16*21(R0), F20
	FMOVD 16*22(R0), F21
	FMOVD 16*23(R0), F22
	FMOVD 16*24(R0), F23
	FMOVD 16*25(R0), F24
	FMOVD 16*26(R0), F25
	FMOVD 16*27(R0), F26
	FMOVD 16*28(R0), F27
	FMOVD 16*29(R0), F28
	FMOVD 16*30(R0), F29
	FMOVD 16*31(R0), F30
	FMOVD 16*32(R0), F31
	ISB $15

	RET
