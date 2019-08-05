##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Snake
ConfigurationName      :=Debug
WorkspacePath          :="C:/Users/Thomas Dion-Grondin/Documents/LearningC"
ProjectPath            :="C:/Users/Thomas Dion-Grondin/Documents/LearningC/Snake"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Thomas Dion-Grondin
Date                   :=04/08/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Snake.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/TDM-GCC-64/bin/g++.exe
CC       := C:/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
Objects0=$(IntermediateDirectory)/snake.c$(ObjectSuffix) $(IntermediateDirectory)/b_renderer.c$(ObjectSuffix) $(IntermediateDirectory)/engine.c$(ObjectSuffix) $(IntermediateDirectory)/main.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/snake.c$(ObjectSuffix): snake.c $(IntermediateDirectory)/snake.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Thomas Dion-Grondin/Documents/LearningC/Snake/snake.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/snake.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/snake.c$(DependSuffix): snake.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/snake.c$(ObjectSuffix) -MF$(IntermediateDirectory)/snake.c$(DependSuffix) -MM snake.c

$(IntermediateDirectory)/snake.c$(PreprocessSuffix): snake.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/snake.c$(PreprocessSuffix) snake.c

$(IntermediateDirectory)/b_renderer.c$(ObjectSuffix): b_renderer.c $(IntermediateDirectory)/b_renderer.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Thomas Dion-Grondin/Documents/LearningC/Snake/b_renderer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/b_renderer.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/b_renderer.c$(DependSuffix): b_renderer.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/b_renderer.c$(ObjectSuffix) -MF$(IntermediateDirectory)/b_renderer.c$(DependSuffix) -MM b_renderer.c

$(IntermediateDirectory)/b_renderer.c$(PreprocessSuffix): b_renderer.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/b_renderer.c$(PreprocessSuffix) b_renderer.c

$(IntermediateDirectory)/engine.c$(ObjectSuffix): engine.c $(IntermediateDirectory)/engine.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Thomas Dion-Grondin/Documents/LearningC/Snake/engine.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/engine.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/engine.c$(DependSuffix): engine.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/engine.c$(ObjectSuffix) -MF$(IntermediateDirectory)/engine.c$(DependSuffix) -MM engine.c

$(IntermediateDirectory)/engine.c$(PreprocessSuffix): engine.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/engine.c$(PreprocessSuffix) engine.c

$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Thomas Dion-Grondin/Documents/LearningC/Snake/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM main.c

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


