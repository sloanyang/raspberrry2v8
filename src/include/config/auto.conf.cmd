deps_config := \
	src/arch/arm/Kconfig \
	src/Kconfig

src/include/config/auto.conf: \
	$(deps_config)

ifneq "$(SRCARCH)" "arm"
src/include/config/auto.conf: FORCE
endif

$(deps_config): ;
