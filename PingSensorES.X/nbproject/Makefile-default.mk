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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PingSensorES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PingSensorES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=PingES_Main.c PingEventChecker.c PingFSM.c ../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/ES_CheckEvents.c ../../../../../ECE118/src/ES_Framework.c ../../../../../ECE118/src/ES_KeyboardInput.c ../../../../../ECE118/src/ES_PostList.c ../../../../../ECE118/src/ES_Queue.c ../../../../../ECE118/src/ES_TattleTale.c ../../../../../ECE118/src/ES_Timers.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/PingES_Main.o ${OBJECTDIR}/PingEventChecker.o ${OBJECTDIR}/PingFSM.o ${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/PingES_Main.o.d ${OBJECTDIR}/PingEventChecker.o.d ${OBJECTDIR}/PingFSM.o.d ${OBJECTDIR}/_ext/1990330219/AD.o.d ${OBJECTDIR}/_ext/1990330219/BOARD.o.d ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d ${OBJECTDIR}/_ext/1990330219/LED.o.d ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d ${OBJECTDIR}/_ext/1990330219/pwm.o.d ${OBJECTDIR}/_ext/1990330219/serial.o.d ${OBJECTDIR}/_ext/1990330219/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/PingES_Main.o ${OBJECTDIR}/PingEventChecker.o ${OBJECTDIR}/PingFSM.o ${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o

# Source Files
SOURCEFILES=PingES_Main.c PingEventChecker.c PingFSM.c ../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/ES_CheckEvents.c ../../../../../ECE118/src/ES_Framework.c ../../../../../ECE118/src/ES_KeyboardInput.c ../../../../../ECE118/src/ES_PostList.c ../../../../../ECE118/src/ES_Queue.c ../../../../../ECE118/src/ES_TattleTale.c ../../../../../ECE118/src/ES_Timers.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PingSensorES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\ECE118\bootloader320.ld"
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
${OBJECTDIR}/PingES_Main.o: PingES_Main.c  .generated_files/flags/default/ca35b39f96c3d72a94480e5a69093385c0122106 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingES_Main.o.d 
	@${RM} ${OBJECTDIR}/PingES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/PingES_Main.o.d" -o ${OBJECTDIR}/PingES_Main.o PingES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/PingEventChecker.o: PingEventChecker.c  .generated_files/flags/default/65ed112fac97df79a613effa8b5d07fe96629db1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingEventChecker.o.d 
	@${RM} ${OBJECTDIR}/PingEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/PingEventChecker.o.d" -o ${OBJECTDIR}/PingEventChecker.o PingEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/PingFSM.o: PingFSM.c  .generated_files/flags/default/c3fba3323d31ba9976396f5772d6e4a69e31c168 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingFSM.o.d 
	@${RM} ${OBJECTDIR}/PingFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/PingFSM.o.d" -o ${OBJECTDIR}/PingFSM.o PingFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/9642fade4d707736e8958b0ba46b9f0883961e16 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/9730866f4302c09158c6ab498ef9d73927fd2dc1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o: ../../../../../ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/293ef56a6d6fce593a012e2e7d36da94100ffa9d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ../../../../../ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Framework.o: ../../../../../ECE118/src/ES_Framework.c  .generated_files/flags/default/1a3bbfc84042fab6ab284fbe498491c4f2f57590 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ../../../../../ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o: ../../../../../ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/c148c6e50eb8825437f7374a87752cde65731975 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ../../../../../ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_PostList.o: ../../../../../ECE118/src/ES_PostList.c  .generated_files/flags/default/26ebc011de7a438e27a431e29c9528579d728d4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ../../../../../ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Queue.o: ../../../../../ECE118/src/ES_Queue.c  .generated_files/flags/default/f09989936bf105d43692398371f59f5339ac78a9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ../../../../../ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o: ../../../../../ECE118/src/ES_TattleTale.c  .generated_files/flags/default/71b40a03dfe8b947f02f0b44ab59cc08ea833193 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ../../../../../ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Timers.o: ../../../../../ECE118/src/ES_Timers.c  .generated_files/flags/default/4743b12b4388f6f80a97a9ba309f4b99cd90cbf8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ../../../../../ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/f79f1f7947d85064d11773d2725e14f2002ab4f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/d7824830f3cf41bc176e48be982de979103e7bdb .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/79c9b7682f0d2e69d840ef9de74a1cd32a8f541a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/ff1cc8fb4bc6ae4317c6b1b560adf1745c2eec67 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/96f5e532f0bd25790967249ea4e8661d7e16b2f1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/d6ed8404863eccab19211df8dcd166088227c162 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/PingES_Main.o: PingES_Main.c  .generated_files/flags/default/bdfa0a3727896f162fc72c223220db4169c0cb34 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingES_Main.o.d 
	@${RM} ${OBJECTDIR}/PingES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/PingES_Main.o.d" -o ${OBJECTDIR}/PingES_Main.o PingES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/PingEventChecker.o: PingEventChecker.c  .generated_files/flags/default/35e30c7eadd0c0284988dbe3b597c83827586c6b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingEventChecker.o.d 
	@${RM} ${OBJECTDIR}/PingEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/PingEventChecker.o.d" -o ${OBJECTDIR}/PingEventChecker.o PingEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/PingFSM.o: PingFSM.c  .generated_files/flags/default/1def0212a7e16ce254a8d61a1541e691290aeb85 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingFSM.o.d 
	@${RM} ${OBJECTDIR}/PingFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/PingFSM.o.d" -o ${OBJECTDIR}/PingFSM.o PingFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/f621c78a500ada795d71641663095d491171f5f3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/fdd6a4d552eed89aadae81b4a07a315e89967bf3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o: ../../../../../ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/69b715e569dd63f5202c7d5dc5ed178f75a42d4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ../../../../../ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Framework.o: ../../../../../ECE118/src/ES_Framework.c  .generated_files/flags/default/703b1eca73049968625663033e306d42b86c4b5d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ../../../../../ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o: ../../../../../ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/2eadb8e540a24c8573a1cc3dd718ad9e3b6c6c55 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ../../../../../ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_PostList.o: ../../../../../ECE118/src/ES_PostList.c  .generated_files/flags/default/b7d3b5315dd55fc9eba819390ee357617d0d636d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ../../../../../ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Queue.o: ../../../../../ECE118/src/ES_Queue.c  .generated_files/flags/default/510896d36472efcae0c3e366abe998367c5ccb12 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ../../../../../ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o: ../../../../../ECE118/src/ES_TattleTale.c  .generated_files/flags/default/38d95ac0cf43cae923f50f930ec09ecbdbb7bb7f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ../../../../../ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Timers.o: ../../../../../ECE118/src/ES_Timers.c  .generated_files/flags/default/18a7d43ef1c887bc6161830294f6f3f8b3779384 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ../../../../../ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/74664143393da39c9ab609e180b6ea0e45da229f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/f829b788b5c595a05332e1e106b9fee65e27cf14 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/ce37ffddaf506b9765c4aaf25ad1497e770e1f8a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/d700c480cdbaf7fb7704f3e78e724da6513ceb28 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/3bd3619f09533b4adaae8a2698a0dd91b63dc7b8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/48c8e654b17f35ac69ae81dc4cf9ac747673576d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PingSensorES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PingSensorES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PingSensorES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PingSensorES.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PingSensorES.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
