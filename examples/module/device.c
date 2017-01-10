#define __private_include__
#include <module/module.h>
#include <flipper/carbon/platforms/atsam4s16b.h>

int module_configure(void) {
    PIOA -> PIO_PER = PIO_PA0;
    PIOA -> PIO_OER = PIO_PA0;
    PIOA -> PIO_OWER = PIO_PA0;
    PIOA -> PIO_ODSR |= PIO_PA0;
    return lf_success;
}

void module_test(void) {

}