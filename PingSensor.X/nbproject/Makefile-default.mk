#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=PingSensorMain.c ../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/PingSensorMain.o ${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/PingSensorMain.o.d ${OBJECTDIR}/_ext/1990330219/AD.o.d ${OBJECTDIR}/_ext/1990330219/BOARD.o.d ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d ${OBJECTDIR}/_ext/1990330219/LED.o.d ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d ${OBJECTDIR}/_ext/1990330219/pwm.o.d ${OBJECTDIR}/_ext/1990330219/serial.o.d ${OBJECTDIR}/_ext/1990330219/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/PingSensorMain.o ${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o

# Source Files
SOURCEFILES=PingSensorMain.c ../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\..\ECE118\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/PingSensorMain.o: PingSensorMain.c  .generated_files/flags/default/c9cc09e9ba64fed5d3172aed7e7c4243a22a968e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingSensorMain.o.d 
	@${RM} ${OBJECTDIR}/PingSensorMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/PingSensorMain.o.d" -o ${OBJECTDIR}/PingSensorMain.o PingSensorMain.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/f37522d422ad1dd9972d40f8d9315fd4f356b5c1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/ae5d8f6c4408c20e5273da8f2af65b93632cc4ce .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/3fde27a6086c36e82d3322a6906b8d25441e3bd7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/7f0dc958ad0d382bdb162026f2b91d64937f6c73 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/d68c5796c99f5bff74062b9b9a03db02a7524baf .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/18594ecd15250a9e14097f888da2f4b2319b5644 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/42f66dc70cc702b66ee5cf623477dffa6a9e6b37 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/a2276eda4cf5f4b209e3b3f47dd2ee2b96588bd3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/PingSensorMain.o: PingSensorMain.c  .generated_files/flags/default/3246f23ac3ed12c0fd93b499ff1113adc3f0edcb .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingSensorMain.o.d 
	@${RM} ${OBJECTDIR}/PingSensorMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/PingSensorMain.o.d" -o ${OBJECTDIR}/PingSensorMain.o PingSensorMain.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/d5d84d6a1e4a8e5d7df3e459b4337a89384082b1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/cca518dd766c8b8207ab714f17c986f2e682d727 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/acf090aad65632499a2caeee93ccac64faa3d535 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/de09f9c28676b074a70fb66377cef52ac76eef17 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/ebf3378445f251c53dcf509e80661ba2a00e869e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/95e0937af6daf178835597a7eb800eb5185fc19f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/3ab20c2a0174e222cebd5c35bcdf3c780303bc35 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/f6ec8abaf3601f5df2bf8dff102d29fe2dad363f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118/include" -I"../../../../../ECE118" -I"../PingSensorES.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
