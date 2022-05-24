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
FINAL_IMAGE=${DISTDIR}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=bosshog.c BosshogES_Main.c BosshogHSM.c BosshogSubHSM.c EventService.c BosshogEventChecker.c BosshogTimers.c ../../../../../../../ECE118/src/AD.c ../../../../../../../ECE118/src/BOARD.c ../../../../../../../ECE118/src/ES_CheckEvents.c ../../../../../../../ECE118/src/ES_Framework.c ../../../../../../../ECE118/src/ES_KeyboardInput.c ../../../../../../../ECE118/src/ES_PostList.c ../../../../../../../ECE118/src/ES_Queue.c ../../../../../../../ECE118/src/ES_TattleTale.c ../../../../../../../ECE118/src/ES_Timers.c ../../../../../../../ECE118/src/IO_Ports.c ../../../../../../../ECE118/src/LED.c ../../../../../../../ECE118/src/RC_Servo.c ../../../../../../../ECE118/src/pwm.c ../../../../../../../ECE118/src/serial.c ../../../../../../../ECE118/src/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/bosshog.o ${OBJECTDIR}/BosshogES_Main.o ${OBJECTDIR}/BosshogHSM.o ${OBJECTDIR}/BosshogSubHSM.o ${OBJECTDIR}/EventService.o ${OBJECTDIR}/BosshogEventChecker.o ${OBJECTDIR}/BosshogTimers.o ${OBJECTDIR}/_ext/387295499/AD.o ${OBJECTDIR}/_ext/387295499/BOARD.o ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o ${OBJECTDIR}/_ext/387295499/ES_Framework.o ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o ${OBJECTDIR}/_ext/387295499/ES_PostList.o ${OBJECTDIR}/_ext/387295499/ES_Queue.o ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o ${OBJECTDIR}/_ext/387295499/ES_Timers.o ${OBJECTDIR}/_ext/387295499/IO_Ports.o ${OBJECTDIR}/_ext/387295499/LED.o ${OBJECTDIR}/_ext/387295499/RC_Servo.o ${OBJECTDIR}/_ext/387295499/pwm.o ${OBJECTDIR}/_ext/387295499/serial.o ${OBJECTDIR}/_ext/387295499/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/bosshog.o.d ${OBJECTDIR}/BosshogES_Main.o.d ${OBJECTDIR}/BosshogHSM.o.d ${OBJECTDIR}/BosshogSubHSM.o.d ${OBJECTDIR}/EventService.o.d ${OBJECTDIR}/BosshogEventChecker.o.d ${OBJECTDIR}/BosshogTimers.o.d ${OBJECTDIR}/_ext/387295499/AD.o.d ${OBJECTDIR}/_ext/387295499/BOARD.o.d ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/387295499/ES_Framework.o.d ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/387295499/ES_PostList.o.d ${OBJECTDIR}/_ext/387295499/ES_Queue.o.d ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o.d ${OBJECTDIR}/_ext/387295499/ES_Timers.o.d ${OBJECTDIR}/_ext/387295499/IO_Ports.o.d ${OBJECTDIR}/_ext/387295499/LED.o.d ${OBJECTDIR}/_ext/387295499/RC_Servo.o.d ${OBJECTDIR}/_ext/387295499/pwm.o.d ${OBJECTDIR}/_ext/387295499/serial.o.d ${OBJECTDIR}/_ext/387295499/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/bosshog.o ${OBJECTDIR}/BosshogES_Main.o ${OBJECTDIR}/BosshogHSM.o ${OBJECTDIR}/BosshogSubHSM.o ${OBJECTDIR}/EventService.o ${OBJECTDIR}/BosshogEventChecker.o ${OBJECTDIR}/BosshogTimers.o ${OBJECTDIR}/_ext/387295499/AD.o ${OBJECTDIR}/_ext/387295499/BOARD.o ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o ${OBJECTDIR}/_ext/387295499/ES_Framework.o ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o ${OBJECTDIR}/_ext/387295499/ES_PostList.o ${OBJECTDIR}/_ext/387295499/ES_Queue.o ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o ${OBJECTDIR}/_ext/387295499/ES_Timers.o ${OBJECTDIR}/_ext/387295499/IO_Ports.o ${OBJECTDIR}/_ext/387295499/LED.o ${OBJECTDIR}/_ext/387295499/RC_Servo.o ${OBJECTDIR}/_ext/387295499/pwm.o ${OBJECTDIR}/_ext/387295499/serial.o ${OBJECTDIR}/_ext/387295499/timers.o

# Source Files
SOURCEFILES=bosshog.c BosshogES_Main.c BosshogHSM.c BosshogSubHSM.c EventService.c BosshogEventChecker.c BosshogTimers.c ../../../../../../../ECE118/src/AD.c ../../../../../../../ECE118/src/BOARD.c ../../../../../../../ECE118/src/ES_CheckEvents.c ../../../../../../../ECE118/src/ES_Framework.c ../../../../../../../ECE118/src/ES_KeyboardInput.c ../../../../../../../ECE118/src/ES_PostList.c ../../../../../../../ECE118/src/ES_Queue.c ../../../../../../../ECE118/src/ES_TattleTale.c ../../../../../../../ECE118/src/ES_Timers.c ../../../../../../../ECE118/src/IO_Ports.c ../../../../../../../ECE118/src/LED.c ../../../../../../../ECE118/src/RC_Servo.c ../../../../../../../ECE118/src/pwm.c ../../../../../../../ECE118/src/serial.c ../../../../../../../ECE118/src/timers.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\..\..\..\ECE118\bootloader320.ld"
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
${OBJECTDIR}/bosshog.o: bosshog.c  .generated_files/flags/default/cad453f456fc365ca8015b563a63c60199ca1d7e .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bosshog.o.d 
	@${RM} ${OBJECTDIR}/bosshog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/bosshog.o.d" -o ${OBJECTDIR}/bosshog.o bosshog.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogES_Main.o: BosshogES_Main.c  .generated_files/flags/default/216b8b43f2bbaaac5317eab9e9e564c7c95577d3 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o.d 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogES_Main.o.d" -o ${OBJECTDIR}/BosshogES_Main.o BosshogES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogHSM.o: BosshogHSM.c  .generated_files/flags/default/e71213d7046e2369ff27c3efeb718d43d26d5bf3 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogHSM.o.d" -o ${OBJECTDIR}/BosshogHSM.o BosshogHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogSubHSM.o: BosshogSubHSM.c  .generated_files/flags/default/66ec3d282af40523d11b451d99b22920c3ffd577 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogSubHSM.o.d" -o ${OBJECTDIR}/BosshogSubHSM.o BosshogSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/EventService.o: EventService.c  .generated_files/flags/default/902b86ece4a879d6fcccbc802a334d9a8b07938a .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EventService.o.d 
	@${RM} ${OBJECTDIR}/EventService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/EventService.o.d" -o ${OBJECTDIR}/EventService.o EventService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogEventChecker.o: BosshogEventChecker.c  .generated_files/flags/default/d2060dbcf1fddb110c7cde54b69844032d976e48 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o.d 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogEventChecker.o.d" -o ${OBJECTDIR}/BosshogEventChecker.o BosshogEventChecker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogTimers.o: BosshogTimers.c  .generated_files/flags/default/a15baecb2b5c769af04c4bfce2202fdf32340dae .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogTimers.o.d 
	@${RM} ${OBJECTDIR}/BosshogTimers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogTimers.o.d" -o ${OBJECTDIR}/BosshogTimers.o BosshogTimers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/AD.o: ../../../../../../../ECE118/src/AD.c  .generated_files/flags/default/9050ec09132fd7a614470225e353c1deeffd5fdc .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/AD.o.d" -o ${OBJECTDIR}/_ext/387295499/AD.o ../../../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/BOARD.o: ../../../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/8f6cc1b41f7dcaa9cdbe76bd6ef41537a4527b5e .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/BOARD.o.d" -o ${OBJECTDIR}/_ext/387295499/BOARD.o ../../../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o: ../../../../../../../ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/3327dec793752a82078b7602a79de582c8277080 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o ../../../../../../../ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_Framework.o: ../../../../../../../ECE118/src/ES_Framework.c  .generated_files/flags/default/3f720c465ab46353e3c1e2761d1925fa84c6a9da .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_Framework.o ../../../../../../../ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o: ../../../../../../../ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/a71126aa14a777c37534662134a9e2777891c433 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o ../../../../../../../ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_PostList.o: ../../../../../../../ECE118/src/ES_PostList.c  .generated_files/flags/default/770fad0574bfe586860fb47c657e883edd82592a .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_PostList.o ../../../../../../../ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_Queue.o: ../../../../../../../ECE118/src/ES_Queue.c  .generated_files/flags/default/242e6deaee599d9a7e5c4731d4f3edbd8a7c6328 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_Queue.o ../../../../../../../ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_TattleTale.o: ../../../../../../../ECE118/src/ES_TattleTale.c  .generated_files/flags/default/5174d1984eb36bf9b5d948ca5bba23a17693f958 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o ../../../../../../../ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_Timers.o: ../../../../../../../ECE118/src/ES_Timers.c  .generated_files/flags/default/fe54a5025bd3b3f9181afda060816b2457e478ea .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_Timers.o ../../../../../../../ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/IO_Ports.o: ../../../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/8794ccaa6b37b42f8898a0342ec679562c6c5cae .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/387295499/IO_Ports.o ../../../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/LED.o: ../../../../../../../ECE118/src/LED.c  .generated_files/flags/default/8fcd1e5c6da8ddcafa0d5ddd38ecef180ff43bd2 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/LED.o.d" -o ${OBJECTDIR}/_ext/387295499/LED.o ../../../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/RC_Servo.o: ../../../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/b6275245dc4dcdc3eec7cbf47e186df1946be93e .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/387295499/RC_Servo.o ../../../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/pwm.o: ../../../../../../../ECE118/src/pwm.c  .generated_files/flags/default/dc12e763061e385ff476c1c51d24d076d5fbd020 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/pwm.o.d" -o ${OBJECTDIR}/_ext/387295499/pwm.o ../../../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/serial.o: ../../../../../../../ECE118/src/serial.c  .generated_files/flags/default/17314ae549ea985bb82ccf8fe782c7802ecd5045 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/serial.o.d" -o ${OBJECTDIR}/_ext/387295499/serial.o ../../../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/timers.o: ../../../../../../../ECE118/src/timers.c  .generated_files/flags/default/de9d1f677abd4033aed5bbb30382042a91bd228a .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/timers.o.d" -o ${OBJECTDIR}/_ext/387295499/timers.o ../../../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/bosshog.o: bosshog.c  .generated_files/flags/default/c3f6603bfa72a13323ba2a32ec4d9935b5d5fb1f .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bosshog.o.d 
	@${RM} ${OBJECTDIR}/bosshog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/bosshog.o.d" -o ${OBJECTDIR}/bosshog.o bosshog.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogES_Main.o: BosshogES_Main.c  .generated_files/flags/default/a8ee04ac5d78db0ff4573501a8232dee2d44ffe8 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o.d 
	@${RM} ${OBJECTDIR}/BosshogES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogES_Main.o.d" -o ${OBJECTDIR}/BosshogES_Main.o BosshogES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogHSM.o: BosshogHSM.c  .generated_files/flags/default/e9f195a9d5fbdf8345da8b729df50bb6dd91f3fc .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogHSM.o.d" -o ${OBJECTDIR}/BosshogHSM.o BosshogHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogSubHSM.o: BosshogSubHSM.c  .generated_files/flags/default/bcb0267abb5d48246f09c0ed2a169cd74ba57ce .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o.d 
	@${RM} ${OBJECTDIR}/BosshogSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogSubHSM.o.d" -o ${OBJECTDIR}/BosshogSubHSM.o BosshogSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/EventService.o: EventService.c  .generated_files/flags/default/f80e4c1ed6670b643f7dab969d680f0089b265cd .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EventService.o.d 
	@${RM} ${OBJECTDIR}/EventService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/EventService.o.d" -o ${OBJECTDIR}/EventService.o EventService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogEventChecker.o: BosshogEventChecker.c  .generated_files/flags/default/d9ec55d0760a777dc06153a7085e602db801d08 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o.d 
	@${RM} ${OBJECTDIR}/BosshogEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogEventChecker.o.d" -o ${OBJECTDIR}/BosshogEventChecker.o BosshogEventChecker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BosshogTimers.o: BosshogTimers.c  .generated_files/flags/default/8d32586264d4e0d335c9632ba8ed477b8426c6cb .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BosshogTimers.o.d 
	@${RM} ${OBJECTDIR}/BosshogTimers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/BosshogTimers.o.d" -o ${OBJECTDIR}/BosshogTimers.o BosshogTimers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/AD.o: ../../../../../../../ECE118/src/AD.c  .generated_files/flags/default/8c8a28693b898b02e544368c383fce9e4113b242 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/AD.o.d" -o ${OBJECTDIR}/_ext/387295499/AD.o ../../../../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/BOARD.o: ../../../../../../../ECE118/src/BOARD.c  .generated_files/flags/default/6630026cb61108bd5c9c1f5548149b6dba43c2d .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/BOARD.o.d" -o ${OBJECTDIR}/_ext/387295499/BOARD.o ../../../../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o: ../../../../../../../ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/53482a12ce0cfd8365be2082d954b26ee451d6dc .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_CheckEvents.o ../../../../../../../ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_Framework.o: ../../../../../../../ECE118/src/ES_Framework.c  .generated_files/flags/default/d609869f42a85d519cab4e1bf11266cc3fe1501 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_Framework.o ../../../../../../../ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o: ../../../../../../../ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/66c0e828879f17f6c50ef934803d60d229a49486 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_KeyboardInput.o ../../../../../../../ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_PostList.o: ../../../../../../../ECE118/src/ES_PostList.c  .generated_files/flags/default/1c44608bfb260a8c9cd235216ecaff8da8425ff4 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_PostList.o ../../../../../../../ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_Queue.o: ../../../../../../../ECE118/src/ES_Queue.c  .generated_files/flags/default/5e012d85bd204b92ed993646e0bcec03a1a1d462 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_Queue.o ../../../../../../../ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_TattleTale.o: ../../../../../../../ECE118/src/ES_TattleTale.c  .generated_files/flags/default/cdfb8cbda084f617dc98e0880dca2005d4e87289 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_TattleTale.o ../../../../../../../ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/ES_Timers.o: ../../../../../../../ECE118/src/ES_Timers.c  .generated_files/flags/default/a1347c6c79e5697449b3757660081bd262c71459 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/387295499/ES_Timers.o ../../../../../../../ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/IO_Ports.o: ../../../../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/72a6256c8ff5b337d672228737dfb305cdf3372b .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/387295499/IO_Ports.o ../../../../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/LED.o: ../../../../../../../ECE118/src/LED.c  .generated_files/flags/default/6ac297bf19ef2a5e3371815931df45ab0bf9d45b .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/LED.o.d" -o ${OBJECTDIR}/_ext/387295499/LED.o ../../../../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/RC_Servo.o: ../../../../../../../ECE118/src/RC_Servo.c  .generated_files/flags/default/c88c7c3ca9ea5dbba150f152c9edd2baf6235459 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/387295499/RC_Servo.o ../../../../../../../ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/pwm.o: ../../../../../../../ECE118/src/pwm.c  .generated_files/flags/default/e16ace4d4533454d19d89da04bdf0ae24c9902e0 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/pwm.o.d" -o ${OBJECTDIR}/_ext/387295499/pwm.o ../../../../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/serial.o: ../../../../../../../ECE118/src/serial.c  .generated_files/flags/default/b071518136830f78c54caa35513b61fd619de1e6 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/serial.o.d" -o ${OBJECTDIR}/_ext/387295499/serial.o ../../../../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/387295499/timers.o: ../../../../../../../ECE118/src/timers.c  .generated_files/flags/default/819f6cfcbc1b56a8f33a7cf14754a4ddbda0cfa .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/387295499" 
	@${RM} ${OBJECTDIR}/_ext/387295499/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/387295499/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"C:/ECE118" -I"C:/ECE118/include" -I"C:/Users/sindurka/MPLABXProjects/ECE118FinalProject/BaconDetectorFinalProject.X" -MP -MMD -MF "${OBJECTDIR}/_ext/387295499/timers.o.d" -o ${OBJECTDIR}/_ext/387295499/timers.o ../../../../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../../../../ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../../../../ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/BaconDetectorFinalProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
