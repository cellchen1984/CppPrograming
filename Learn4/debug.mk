.PHONY:all clean

CC = g++ 
CFLAGS = -Wall -g

SRC_PATH = ./src
OBJ_PATH = ./Debug
INCLUDE_PATH = ./
LIB_PATH = /opt/lib

SRC_FILES = $(wildcard $(SRC_PATH)/*.cpp)
OBJ_FILES = $(SRC_FILES:$(SRC_PATH)/%.cpp=$(OBJ_PATH)/%.o)
INCLUDE_PARAM = 
LIB_PARAM = $(foreach LIB_VAR, $(LIB_PATH), -L$(LIB_VAR))
INCLUDE_PARAM = $(foreach INCLUDE_VAR, $(INCLUDE_PATH), -I$(INCLUDE_VAR))

TARGET = Sizeof

all:$(TARGET)

$(TARGET):$(OBJ_FILES)
	$(CC) $(CFLAGS) $(LIB_PARAM) $^ -o $@
	
$(OBJ_PATH)/%.o:$(SRC_PATH)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@
	
clean:
	rm -f $(OBJ_FILES) $(TARGET)


