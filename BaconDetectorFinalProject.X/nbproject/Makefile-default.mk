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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/ES_CheckEvents.c ../../../../../ECE118/src/ES_Framework.c ../../../../../ECE118/src/ES_KeyboardInput.c ../../../../../ECE118/src/ES_PostList.c ../../../../../ECE118/src/ES_Queue.c ../../../../../ECE118/src/ES_TattleTale.c ../../../../../ECE118/src/ES_Timers.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/roach.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c bosshog.c BosshogES_Main.c BosshogEventChecker.c BosshogHSM.c BosshogSubHSM.c EventService.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/roach.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o ${OBJECTDIR}/bosshog.o ${OBJECTDIR}/BosshogES_Main.o ${OBJECTDIR}/BosshogEventChecker.o ${OBJECTDIR}/BosshogHSM.o ${OBJECTDIR}/BosshogSubHSM.o ${OBJECTDIR}/EventService.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1990330219/AD.o.d ${OBJECTDIR}/_ext/1990330219/BOARD.o.d ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d ${OBJECTDIR}/_ext/1990330219/LED.o.d ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d ${OBJECTDIR}/_ext/1990330219/pwm.o.d ${OBJECTDIR}/_ext/1990330219/roach.o.d ${OBJECTDIR}/_ext/1990330219/serial.o.d ${OBJECTDIR}/_ext/1990330219/timers.o.d ${OBJECTDIR}/bosshog.o.d ${OBJECTDIR}/BosshogES_Main.o.d ${OBJECTDIR}/BosshogEventChecker.o.d ${OBJECTDIR}/BosshogHSM.o.d ${OBJECTDIR}/BosshogSubHSM.o.d ${OBJECTDIR}/EventService.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/roach.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o ${OBJECTDIR}/bosshog.o ${OBJECTDIR}/BosshogES_Main.o ${OBJECTDIR}/BosshogEventChecker.o ${OBJECTDIR}/BosshogHSM.o ${OBJECTDIR}/BosshogSubHSM.o ${OBJECTDIR}/EventService.o

# Source Files
SOURCEFILES=../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/ES_CheckEvents.c ../../../../../ECE118/src/ES_Framework.c ../../../../../ECE118/src/ES_KeyboardInput.c ../../../../../ECE118/src/ES_PostList.c ../../../../../ECE118/src/ES_Queue.c ../../../../../ECE118/src/ES_TattleTale.c ../../../../../ECE118/src/ES_Timers.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/roach.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c bosshog.c BosshogES_Main.c BosshogEventChecker.c BosshogHSM.c BosshogSubHSM.c EventService.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/582d13b3ea09c65b261d3803c35c8c2616b22ee2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/50686b8e9faef3c9d9fd10926261e31f58871664 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o: ../../../../../ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/314e10f62dc6983fa05f11fc74ceb83c8b7351f0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ../../../../../ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Framework.o: ../../../../../ECE118/src/ES_Framework.c  .generated_files/flags/default/393d2bd6f7ab72ab0d7a9a861fd33856c1cb2080 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ../../../../../ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o: ../../../../../ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/b249c6378b772d62297aa336354d11da2ca1545d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ../../../../../ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_PostList.o: ../../../../../ECE118/src/ES_PostList.c  .generated_files/flags/default/f763050e895b1d0637753204e8ed52580ad7b82b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ../../../../../ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Queue.o: ../../../../../ECE118/src/ES_Queue.c  .generated_files/flags/default/91f93298c6a7e380321b0c1d38f24e7e168cf3b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ../../../../../ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o: ../../../../../ECE118/src/ES_TattleTale.c  .generated_files/flags/default/99ab173fe35c367393b6178ae5beb263353c25b4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ../../../../../ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Timers.o: ../../../../../ECE118/src/ES_Timers.c  .generated_files/flags/default/dcf2d4bb6589ed9f054e4a5161f743ae216cb699 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ../../../../../ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/368c6ad27461a7baa8501b0037031716aaf4eccf .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/8bbc71b4f680cd8aaa850f682e0d36b80a77502d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/4720037968e07e51f52139372fd8fe504719a592 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/b68dddc3e6b030fbf2202085cc00a436c45615fa .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/roach.o: ../../../../../ECE118/src/roach.c  .generated_files/flags/default/43837ad9aed4739051af76bab8e8e473c22cebbf .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/roach.o.d" -o ${OBJECTDIR}/_ext/1990330219/roach.o ../../../../../ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/ab34e3d6042b90547006dc061b80ab8eb99d9e92 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/564e92d52ee16272adbb62e57d004f7ee75453e6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bosshog.o: bosshog.c  .generated_files/flags/default/e59d924aabf9dd0b05737c16fce18cbee9ea9751 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bosshog.o.d 
	@${RM} ${OBJECTDIR}/bosshog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/bosshog.o.d" -o ${OBJECTDIR}/bosshog.o bosshog.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogES_Main.o: BosshogES_Main.c  .generated_files/flags/default/a2e66323d9cc2a47f49f2adbd8acb62208afa090 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o.d 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/BosshogES_Main.o.d" -o ${OBJECTDIR}/BosshogES_Main.o BosshogES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogEventChecker.o: BosshogEventChecker.c  .generated_files/flags/default/ccddb06e80e4ce17ec016c293a1f47f9cb354ee5 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o.d 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/BosshogEventChecker.o.d" -o ${OBJECTDIR}/BosshogEventChecker.o BosshogEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogHSM.o: BosshogHSM.c  .generated_files/flags/default/7cf49505789e269a1d99f79f4980598e45a46e76 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/BosshogHSM.o.d" -o ${OBJECTDIR}/BosshogHSM.o BosshogHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogSubHSM.o: BosshogSubHSM.c  .generated_files/flags/default/249f2226c7be7ef391c8a7b7dc52fd47cb753fd5 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/BosshogSubHSM.o.d" -o ${OBJECTDIR}/BosshogSubHSM.o BosshogSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/EventService.o: EventService.c  .generated_files/flags/default/d71659ab1320b905b67e13f43f4d03f7374c62d0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EventService.o.d 
	@${RM} ${OBJECTDIR}/EventService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/EventService.o.d" -o ${OBJECTDIR}/EventService.o EventService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/ff4c8f79469b9987c27fdd7988d42a9969aefcb4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/bb3e7726bffed2a9f6abb71fc2ffba5176cf8f1d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o: ../../../../../ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/d829368d2aadc1b2760dbd8e7518b74cd44390b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ../../../../../ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Framework.o: ../../../../../ECE118/src/ES_Framework.c  .generated_files/flags/default/ac05858d0ae033cf634ccd07419e8b4fb28ded09 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ../../../../../ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o: ../../../../../ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/830c5a34a3fb7556d75caf54d2bd3cf20ec2f771 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ../../../../../ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_PostList.o: ../../../../../ECE118/src/ES_PostList.c  .generated_files/flags/default/5e36273339707530232f736c9a209bee2bd8fb38 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ../../../../../ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Queue.o: ../../../../../ECE118/src/ES_Queue.c  .generated_files/flags/default/d0ac28d9abb2d60de5d74cbe17c266e30a2cf472 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ../../../../../ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o: ../../../../../ECE118/src/ES_TattleTale.c  .generated_files/flags/default/7a50500c548338ef0ae6152e6419d544ffc09001 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ../../../../../ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Timers.o: ../../../../../ECE118/src/ES_Timers.c  .generated_files/flags/default/f491684dbe39ec41ec12b9058155d710e82e9708 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ../../../../../ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/19593776ae0d8b48d2afc72cc97e5e3bead5895a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/45a87e75b0b84e916c4672120aabfc14199c5d85 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/e1762273b47504e23cc7216f77fdbe669b443d2e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/81f5eb05c94a5340c4a023c343b58b9b1a21fa01 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/roach.o: ../../../../../ECE118/src/roach.c  .generated_files/flags/default/5cc191a79bbb2e2ee09db84f9385330224efeb4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/roach.o.d" -o ${OBJECTDIR}/_ext/1990330219/roach.o ../../../../../ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/6c828462cdc5f2ec07acd2e4d38bba9d76f77fc .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/ddade8180702edc63178a33b5edf56ab874d45fc .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bosshog.o: bosshog.c  .generated_files/flags/default/3040bb71f84346b05be03d3806c267cbc6e6eb7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bosshog.o.d 
	@${RM} ${OBJECTDIR}/bosshog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/bosshog.o.d" -o ${OBJECTDIR}/bosshog.o bosshog.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogES_Main.o: BosshogES_Main.c  .generated_files/flags/default/c06923593d0fe5b4b5cba8e8b329158a2f232dc8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o.d 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/BosshogES_Main.o.d" -o ${OBJECTDIR}/BosshogES_Main.o BosshogES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogEventChecker.o: BosshogEventChecker.c  .generated_files/flags/default/99a8a59745ddd11e23d75f9d0380a0fc25edabb7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o.d 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/BosshogEventChecker.o.d" -o ${OBJECTDIR}/BosshogEventChecker.o BosshogEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogHSM.o: BosshogHSM.c  .generated_files/flags/default/a2e9efd8eeee22929ab3f9ca9c76dbbc46c1fd94 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/BosshogHSM.o.d" -o ${OBJECTDIR}/BosshogHSM.o BosshogHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogSubHSM.o: BosshogSubHSM.c  .generated_files/flags/default/2f637626d3e766e5e72a6c5029e6ae1f0e68aadc .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/BosshogSubHSM.o.d" -o ${OBJECTDIR}/BosshogSubHSM.o BosshogSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/EventService.o: EventService.c  .generated_files/flags/default/b9696a77005911680222de4f5336e782a324edef .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EventService.o.d 
	@${RM} ${OBJECTDIR}/EventService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../../ECE118" -I"../../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/EventService.o.d" -o ${OBJECTDIR}/EventService.o EventService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
