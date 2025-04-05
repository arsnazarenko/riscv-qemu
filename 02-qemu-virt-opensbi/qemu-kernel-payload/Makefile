CROSS_PREFIX ?= riscv64-unknown-linux-gnu-
AS = $(CROSS_PREFIX)as
LD = $(CROSS_PREFIX)ld
AS_FLAGS = -march=rv64i -mabi=lp64 
LS = infinite_loop.ld
BUILD_DIR = ./build

all: payload
payload: $(BUILD_DIR)/infinite_loop

$(BUILD_DIR)/%: $(BUILD_DIR)/%.o
	$(LD) $^ -T $(LS) -o $@ 

$(BUILD_DIR)/%.o: %.S
	@mkdir -p $(BUILD_DIR)
	$(AS) $(AS_FLAGS) -o $@ -c $^

clean: 
	@rm -rf $(BUILD_DIR)

opensbi: 
.PHONY: all clean payload
