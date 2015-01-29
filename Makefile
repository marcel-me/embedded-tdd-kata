#---- Outputs ----#
COMPONENT_NAME = TddKata
#Set this to @ to keep the makefile quiet
SILENCE = @

#--- Inputs ----#
PROJECT_HOME_DIR = .
ifeq "$(CPPUTEST_HOME)" ""
    CPPUTEST_HOME = lib/cpputest
endif
CPP_PLATFORM = Gcc

SRC_DIRS = \
	src \
	src/* \

TEST_SRC_DIRS = \
	test \
	test/* \

MOCKS_SRC_DIRS = \

INCLUDE_DIRS =\
  $(CPPUTEST_HOME)/include/ \
  $(CPPUTEST_HOME)/include/Platforms/Gcc\
  include/

CPPUTEST_WARNINGFLAGS = -Wall -Werror -Wswitch-default
CPPUTEST_WARNINGFLAGS += -Wconversion -Wswitch-enum

include $(CPPUTEST_HOME)/build/MakefileWorker.mk