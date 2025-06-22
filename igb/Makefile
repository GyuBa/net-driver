# Makefile
# make clean
# make -C /lib/modules/$(uname -r)/build M=$PWD modules
obj-m := igb.o

igb-objs := igb_main.o igb_ethtool.o e1000_82575.o \
            e1000_mac.o e1000_nvm.o e1000_phy.o e1000_mbx.o \
            e1000_i210.o igb_ptp.o igb_hwmon.o igb_xsk.o

KDIR := /lib/modules/$(shell uname -r)/build
PWD  := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

