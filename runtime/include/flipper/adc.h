#ifndef __adc_h__
#define __adc_h__

/* Include all types and macros exposed by the Flipper Toolbox. */
#include <flipper.h>

/* Declare the virtual interface for this module. */
extern const struct _adc_interface {
	int (* configure)(void);
} adc;

/* Declare the _lf_module structure for this module. */
extern struct _lf_module _adc;

/* Declare the FMR overlay for this module. */
enum { _adc_configure };

/* Declare the prototypes for all of the functions within this module. */
int adc_configure(void);

#endif
