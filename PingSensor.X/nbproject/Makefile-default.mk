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
SOURCEFILES_QUOTED_IF_SPACED=../../../../ECE118/src/AD.c ../../../../ECE118/src/BOARD.c ../../../../ECE118/src/IO_Ports.c ../../../../ECE118/src/LED.c ../../../../ECE118/src/pwm.c ../../../../ECE118/src/serial.c ../../../../ECE118/src/timers.c PingSensorMain.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/515026074/AD.o ${OBJECTDIR}/_ext/515026074/BOARD.o ${OBJECTDIR}/_ext/515026074/IO_Ports.o ${OBJECTDIR}/_ext/515026074/LED.o ${OBJECTDIR}/_ext/515026074/pwm.o ${OBJECTDIR}/_ext/515026074/serial.o ${OBJECTDIR}/_ext/515026074/timers.o ${OBJECTDIR}/PingSensorMain.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/515026074/AD.o.d ${OBJECTDIR}/_ext/515026074/BOARD.o.d ${OBJECTDIR}/_ext/515026074/IO_Ports.o.d ${OBJECTDIR}/_ext/515026074/LED.o.d ${OBJECTDIR}/_ext/515026074/pwm.o.d ${OBJECTDIR}/_ext/515026074/serial.o.d ${OBJECTDIR}/_ext/515026074/timers.o.d ${OBJECTDIR}/PingSensorMain.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/515026074/AD.o ${OBJECTDIR}/_ext/515026074/BOARD.o ${OBJECTDIR}/_ext/515026074/IO_Ports.o ${OBJECTDIR}/_ext/515026074/LED.o ${OBJECTDIR}/_ext/515026074/pwm.o ${OBJECTDIR}/_ext/515026074/serial.o ${OBJECTDIR}/_ext/515026074/timers.o ${OBJECTDIR}/PingSensorMain.o

# Source Files
SOURCEFILES=../../../../ECE118/src/AD.c ../../../../ECE118/src/BOARD.c ../../../../ECE118/src/IO_Ports.c ../../../../ECE118/src/LED.c ../../../../ECE118/src/pwm.c ../../../../ECE118/src/serial.c ../../../../ECE118/src/timers.c PingSensorMain.c



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
${OBJECTDIR}/_ext/515026074/AD.o: ../../../../ECE118/src/AD.c  .generated_files/flags/default/9642fade4d707736e8958b0ba46b9f0883961e16 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/AD.o.d" -o ${OBJECTDIR}/_ext/515026074/AD.o ../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/BOARD.o: ../../../../ECE118/src/BOARD.c  .generated_files/flags/default/9730866f4302c09158c6ab498ef9d73927fd2dc1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/BOARD.o.d" -o ${OBJECTDIR}/_ext/515026074/BOARD.o ../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/IO_Ports.o: ../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/f79f1f7947d85064d11773d2725e14f2002ab4f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/515026074/IO_Ports.o ../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/LED.o: ../../../../ECE118/src/LED.c  .generated_files/flags/default/d7824830f3cf41bc176e48be982de979103e7bdb .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/LED.o.d" -o ${OBJECTDIR}/_ext/515026074/LED.o ../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/pwm.o: ../../../../ECE118/src/pwm.c  .generated_files/flags/default/ff1cc8fb4bc6ae4317c6b1b560adf1745c2eec67 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/pwm.o.d" -o ${OBJECTDIR}/_ext/515026074/pwm.o ../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/serial.o: ../../../../ECE118/src/serial.c  .generated_files/flags/default/96f5e532f0bd25790967249ea4e8661d7e16b2f1 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/serial.o.d" -o ${OBJECTDIR}/_ext/515026074/serial.o ../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/timers.o: ../../../../ECE118/src/timers.c  .generated_files/flags/default/d6ed8404863eccab19211df8dcd166088227c162 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/timers.o.d" -o ${OBJECTDIR}/_ext/515026074/timers.o ../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/PingSensorMain.o: PingSensorMain.c  .generated_files/flags/default/f724980730e75a3f3d22298ec57cc0f77dec7a6b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingSensorMain.o.d 
	@${RM} ${OBJECTDIR}/PingSensorMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/PingSensorMain.o.d" -o ${OBJECTDIR}/PingSensorMain.o PingSensorMain.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/515026074/AD.o: ../../../../ECE118/src/AD.c  .generated_files/flags/default/f621c78a500ada795d71641663095d491171f5f3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/AD.o.d" -o ${OBJECTDIR}/_ext/515026074/AD.o ../../../../ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/BOARD.o: ../../../../ECE118/src/BOARD.c  .generated_files/flags/default/fdd6a4d552eed89aadae81b4a07a315e89967bf3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/BOARD.o.d" -o ${OBJECTDIR}/_ext/515026074/BOARD.o ../../../../ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/IO_Ports.o: ../../../../ECE118/src/IO_Ports.c  .generated_files/flags/default/74664143393da39c9ab609e180b6ea0e45da229f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/515026074/IO_Ports.o ../../../../ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/LED.o: ../../../../ECE118/src/LED.c  .generated_files/flags/default/f829b788b5c595a05332e1e106b9fee65e27cf14 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/LED.o.d" -o ${OBJECTDIR}/_ext/515026074/LED.o ../../../../ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/pwm.o: ../../../../ECE118/src/pwm.c  .generated_files/flags/default/d700c480cdbaf7fb7704f3e78e724da6513ceb28 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/pwm.o.d" -o ${OBJECTDIR}/_ext/515026074/pwm.o ../../../../ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/serial.o: ../../../../ECE118/src/serial.c  .generated_files/flags/default/3bd3619f09533b4adaae8a2698a0dd91b63dc7b8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/serial.o.d" -o ${OBJECTDIR}/_ext/515026074/serial.o ../../../../ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/515026074/timers.o: ../../../../ECE118/src/timers.c  .generated_files/flags/default/48c8e654b17f35ac69ae81dc4cf9ac747673576d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/515026074" 
	@${RM} ${OBJECTDIR}/_ext/515026074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/515026074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/515026074/timers.o.d" -o ${OBJECTDIR}/_ext/515026074/timers.o ../../../../ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/PingSensorMain.o: PingSensorMain.c  .generated_files/flags/default/147100f2fdd8072b0477b8ea50e9921762d599d2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingSensorMain.o.d 
	@${RM} ${OBJECTDIR}/PingSensorMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../../../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/PingSensorMain.o.d" -o ${OBJECTDIR}/PingSensorMain.o PingSensorMain.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PingSensor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../ECE118/bootloader320.ld
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
