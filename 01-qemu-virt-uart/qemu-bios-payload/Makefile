CROSS_PREFIX ?= riscv64-unknown-linux-gnu-
AS = $(CROSS_PREFIX)as
LD = $(CROSS_PREFIX)ld
AS_FLAGS = -march=rv64i -mabi=lp64 
LS = bios.ld
BUILD_DIR = ./build

all: payload
payload: $(BUILD_DIR)/hello

$(BUILD_DIR)/%: $(BUILD_DIR)/%.o
	$(LD) $^ -T $(LS) -o $@ 

$(BUILD_DIR)/%.o: %.S
	@mkdir -p $(BUILD_DIR)
	$(AS) $(AS_FLAGS) -o $@ -c $^

clean: 
	@rm -rf $(BUILD_DIR)

.PHONY: all clean payload
