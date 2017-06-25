################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Testing.cpp 

C_SRCS += \
../IOPins.c \
../LCDChars.c \
../LCDInterface.c \
../ShiftRegister.c \
../TetrisLogic.c \
../Timing.c 

ASM_SRCS += \
../TetrisLogic.asm \
../Timing.asm 

OBJS += \
./IOPins.o \
./LCDChars.o \
./LCDInterface.o \
./ShiftRegister.o \
./Testing.o \
./TetrisLogic.o \
./Timing.o 

C_DEPS += \
./IOPins.d \
./LCDChars.d \
./LCDInterface.d \
./ShiftRegister.d \
./TetrisLogic.d \
./Timing.d 

CPP_DEPS += \
./Testing.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


