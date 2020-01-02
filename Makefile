units := waves_osc biquad_del lfo_rev

.PHONY: all $(units)

all: $(units)

$(units):
	@make --directory=$@
