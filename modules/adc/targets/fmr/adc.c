#define __private_include__
#include <flipper/modules.h>
#include <flipper/fmr.h>

/* Declare the FMR reference for this module. */
struct _lf_module _adc_m = {
	"adc",
	"Provides access to the integrated analog to digital converter.",
	LF_VERSION,
	_adc_id
}, *_adc;

int adc_configure(void) {
	printf("Woo! ADCs rock!\n");
	return lf_success;
}
