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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/ES_CheckEvents.c ../../../../../ECE118/src/ES_Framework.c ../../../../../ECE118/src/ES_KeyboardInput.c ../../../../../ECE118/src/ES_PostList.c ../../../../../ECE118/src/ES_Queue.c ../../../../../ECE118/src/ES_TattleTale.c ../../../../../ECE118/src/ES_Timers.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/roach.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c bosshog.c BosshogES_Main.c BosshogHSM.c BosshogSubHSM.c EventService.c BosshogEventChecker.c BosshogTimers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/roach.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o ${OBJECTDIR}/bosshog.o ${OBJECTDIR}/BosshogES_Main.o ${OBJECTDIR}/BosshogHSM.o ${OBJECTDIR}/BosshogSubHSM.o ${OBJECTDIR}/EventService.o ${OBJECTDIR}/BosshogEventChecker.o ${OBJECTDIR}/BosshogTimers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1990330219/AD.o.d ${OBJECTDIR}/_ext/1990330219/BOARD.o.d ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d ${OBJECTDIR}/_ext/1990330219/LED.o.d ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d ${OBJECTDIR}/_ext/1990330219/pwm.o.d ${OBJECTDIR}/_ext/1990330219/roach.o.d ${OBJECTDIR}/_ext/1990330219/serial.o.d ${OBJECTDIR}/_ext/1990330219/timers.o.d ${OBJECTDIR}/bosshog.o.d ${OBJECTDIR}/BosshogES_Main.o.d ${OBJECTDIR}/BosshogHSM.o.d ${OBJECTDIR}/BosshogSubHSM.o.d ${OBJECTDIR}/EventService.o.d ${OBJECTDIR}/BosshogEventChecker.o.d ${OBJECTDIR}/BosshogTimers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1990330219/AD.o ${OBJECTDIR}/_ext/1990330219/BOARD.o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ${OBJECTDIR}/_ext/1990330219/LED.o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ${OBJECTDIR}/_ext/1990330219/pwm.o ${OBJECTDIR}/_ext/1990330219/roach.o ${OBJECTDIR}/_ext/1990330219/serial.o ${OBJECTDIR}/_ext/1990330219/timers.o ${OBJECTDIR}/bosshog.o ${OBJECTDIR}/BosshogES_Main.o ${OBJECTDIR}/BosshogHSM.o ${OBJECTDIR}/BosshogSubHSM.o ${OBJECTDIR}/EventService.o ${OBJECTDIR}/BosshogEventChecker.o ${OBJECTDIR}/BosshogTimers.o

# Source Files
SOURCEFILES=../../../../../ECE118/src/AD.c ../../../../../ECE118/src/BOARD.c ../../../../../ECE118/src/ES_CheckEvents.c ../../../../../ECE118/src/ES_Framework.c ../../../../../ECE118/src/ES_KeyboardInput.c ../../../../../ECE118/src/ES_PostList.c ../../../../../ECE118/src/ES_Queue.c ../../../../../ECE118/src/ES_TattleTale.c ../../../../../ECE118/src/ES_Timers.c ../../../../../ECE118/src/IO_Ports.c ../../../../../ECE118/src/LED.c ../../../../../ECE118/src/RC_Servo.c ../../../../../ECE118/src/pwm.c ../../../../../ECE118/src/roach.c ../../../../../ECE118/src/serial.c ../../../../../ECE118/src/timers.c bosshog.c BosshogES_Main.c BosshogHSM.c BosshogSubHSM.c EventService.c BosshogEventChecker.c BosshogTimers.c



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
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/9fd65ea3804b55a97c54de78680b97a01bc4ade7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/f9f7a6c313a652ca58979379f1f70489a34c45f5 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o: ../../../../../ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/94465465eba08fdc2460941fb834a2fd76c6c540 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ../../../../../ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Framework.o: ../../../../../ECE118/src/ES_Framework.c  .generated_files/flags/default/c02dd919426cdbaf365b849574d890a9bd8559c7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ../../../../../ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o: ../../../../../ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/49bd1b05728df10863d6d77cdfc58b3ce350f436 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ../../../../../ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_PostList.o: ../../../../../ECE118/src/ES_PostList.c  .generated_files/flags/default/74ed0a9eff8e184f0aeaff0d1241e2d33a17cf9a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ../../../../../ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Queue.o: ../../../../../ECE118/src/ES_Queue.c  .generated_files/flags/default/23cef0b132553dda1518d5ce6a8e89ddf0a60ab9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ../../../../../ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o: ../../../../../ECE118/src/ES_TattleTale.c  .generated_files/flags/default/5f0eb0a45f1c7c03792b16bf0e374f292ea96809 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ../../../../../ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Timers.o: ../../../../../ECE118/src/ES_Timers.c  .generated_files/flags/default/853ff630118e1c48385c3a668f9010709009aac9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ../../../../../ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/61a460a06863a39ad32a9bb97bee6ff71deef47e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/c87ef54e44ce67aa679233c42ccd8144cf287a7f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/9e3a8d7674e553a242d6c2d44e6dcd5f1fd75576 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/e128269a893da25c6a127551440f801553e71fbd .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/roach.o: ../../../../../ECE118/src/roach.c  .generated_files/flags/default/5a5b8af8f36479972b1cad283e9936862b36ede9 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/roach.o.d" -o ${OBJECTDIR}/_ext/1990330219/roach.o ../../../../../ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/28f557e82547528f76dfcdbe11034bd4f7991512 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/61edceaaf81d0328323de4d81f7e28b0b0fcb58b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bosshog.o: bosshog.c  .generated_files/flags/default/fb47d8f708ed4ede29f1e749aae94f9a01d0cb01 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bosshog.o.d 
	@${RM} ${OBJECTDIR}/bosshog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/bosshog.o.d" -o ${OBJECTDIR}/bosshog.o bosshog.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogES_Main.o: BosshogES_Main.c  .generated_files/flags/default/e0e53d38688fcc05cbe59af941917d8cdaae0298 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o.d 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogES_Main.o.d" -o ${OBJECTDIR}/BosshogES_Main.o BosshogES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogHSM.o: BosshogHSM.c  .generated_files/flags/default/f0844c36113a180f943ad0bd90f9e65c8686a59b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogHSM.o.d" -o ${OBJECTDIR}/BosshogHSM.o BosshogHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogSubHSM.o: BosshogSubHSM.c  .generated_files/flags/default/bc01061d78aac952179e6213de29814ca22eb7bb .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogSubHSM.o.d" -o ${OBJECTDIR}/BosshogSubHSM.o BosshogSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/EventService.o: EventService.c  .generated_files/flags/default/9d55a6f3c32917afbb88813e7f1b8ea1a4225717 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EventService.o.d 
	@${RM} ${OBJECTDIR}/EventService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/EventService.o.d" -o ${OBJECTDIR}/EventService.o EventService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogEventChecker.o: BosshogEventChecker.c  .generated_files/flags/default/97808fe8ce387f36e466897c2a792a6ae818d0dc .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o.d 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogEventChecker.o.d" -o ${OBJECTDIR}/BosshogEventChecker.o BosshogEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogTimers.o: BosshogTimers.c  .generated_files/flags/default/889db3b0803c7a2f09adf7b7b495bf39f74e4fd0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogTimers.o.d 
	@${RM} ${OBJECTDIR}/BosshogTimers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogTimers.o.d" -o ${OBJECTDIR}/BosshogTimers.o BosshogTimers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1990330219/AD.o: ../../../../../ECE118/src/AD.c  .generated_files/flags/default/416be187f15ee106d32550472ab174fd4eb1112b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/AD.o.d" -o ${OBJECTDIR}/_ext/1990330219/AD.o ../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/BOARD.o: ../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/9fc897f78bbb85c1f7843278361ce41e8d18788e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/BOARD.o.d" -o ${OBJECTDIR}/_ext/1990330219/BOARD.o ../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o: ../../../../../ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/71ca3944be2d05f05c54b8c501380e690390d6c8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_CheckEvents.o ../../../../../ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Framework.o: ../../../../../ECE118/src/ES_Framework.c  .generated_files/flags/default/8203a5e2ceb9f4badb4200ea081156b9ea0ef733 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Framework.o ../../../../../ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o: ../../../../../ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/20734439e4bed1571f160fd499fc2175dff849a2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_KeyboardInput.o ../../../../../ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_PostList.o: ../../../../../ECE118/src/ES_PostList.c  .generated_files/flags/default/b48b38b35c1ece6c968c13993398a4771dafd439 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_PostList.o ../../../../../ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Queue.o: ../../../../../ECE118/src/ES_Queue.c  .generated_files/flags/default/c9801ef5c775651bd2c84a3192ca2896e0714178 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Queue.o ../../../../../ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o: ../../../../../ECE118/src/ES_TattleTale.c  .generated_files/flags/default/f03ba588369fcc65216b66ca74d1b2e03e2de2cd .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_TattleTale.o ../../../../../ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/ES_Timers.o: ../../../../../ECE118/src/ES_Timers.c  .generated_files/flags/default/72db0d68e81a10e901b8585a2b736aec79031536 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/ES_Timers.o ../../../../../ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/IO_Ports.o: ../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/3ae30d785ddb3d93168fcb5b09c0d165b4b29b8f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1990330219/IO_Ports.o ../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/LED.o: ../../../../../ECE118/src/LED.c  .generated_files/flags/default/edfbd92068c3b85ce3f88975b337f5dcf48f5568 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/LED.o.d" -o ${OBJECTDIR}/_ext/1990330219/LED.o ../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/RC_Servo.o: ../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/3353bd8b7ffa3550ce00b676eebc36130c437ef7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1990330219/RC_Servo.o ../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/pwm.o: ../../../../../ECE118/src/pwm.c  .generated_files/flags/default/e010bdd196f1f8c7eba24f2c382a0d0a86263df8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/pwm.o.d" -o ${OBJECTDIR}/_ext/1990330219/pwm.o ../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/roach.o: ../../../../../ECE118/src/roach.c  .generated_files/flags/default/a4019462cfc247e3a80580e160c7d7f00577efda .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/roach.o.d" -o ${OBJECTDIR}/_ext/1990330219/roach.o ../../../../../ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/serial.o: ../../../../../ECE118/src/serial.c  .generated_files/flags/default/f418671312318524f833166eafe07eeaeeb7162 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/serial.o.d" -o ${OBJECTDIR}/_ext/1990330219/serial.o ../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1990330219/timers.o: ../../../../../ECE118/src/timers.c  .generated_files/flags/default/1359a3603287e968250017837bfec0ab599749e0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1990330219" 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1990330219/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/1990330219/timers.o.d" -o ${OBJECTDIR}/_ext/1990330219/timers.o ../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bosshog.o: bosshog.c  .generated_files/flags/default/d798829dd6d16e1f1cb745ec95c1885e05204df0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bosshog.o.d 
	@${RM} ${OBJECTDIR}/bosshog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/bosshog.o.d" -o ${OBJECTDIR}/bosshog.o bosshog.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogES_Main.o: BosshogES_Main.c  .generated_files/flags/default/8f4186d38108a7406f07a72d2c5fa8804ad577ee .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o.d 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogES_Main.o.d" -o ${OBJECTDIR}/BosshogES_Main.o BosshogES_Main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogHSM.o: BosshogHSM.c  .generated_files/flags/default/e5b134b238f2342b7969d885566e6236b73da7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogHSM.o.d" -o ${OBJECTDIR}/BosshogHSM.o BosshogHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogSubHSM.o: BosshogSubHSM.c  .generated_files/flags/default/573fb42a07454fb37892a9f373b480e58bb616b0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogSubHSM.o.d" -o ${OBJECTDIR}/BosshogSubHSM.o BosshogSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/EventService.o: EventService.c  .generated_files/flags/default/f958adaf0cf94845cdc7d10365a8bb8966ee5217 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EventService.o.d 
	@${RM} ${OBJECTDIR}/EventService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/EventService.o.d" -o ${OBJECTDIR}/EventService.o EventService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogEventChecker.o: BosshogEventChecker.c  .generated_files/flags/default/ff908046fccead4e28da4001317d02cf2ff5e940 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o.d 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogEventChecker.o.d" -o ${OBJECTDIR}/BosshogEventChecker.o BosshogEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogTimers.o: BosshogTimers.c  .generated_files/flags/default/a745319833afb2283d7967ed62c84e35b8ed8e3d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogTimers.o.d 
	@${RM} ${OBJECTDIR}/BosshogTimers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogTimers.o.d" -o ${OBJECTDIR}/BosshogTimers.o BosshogTimers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
