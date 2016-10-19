#define __private_include__
#include <flipper/fld.h>
#include <flipper/modules.h>

/* ~ Provide the definition for this standard module. ~ */
LF_MODULE(_fld, "fld", "Loads modules on the target device.", _fld_id);

int fld_configure(void) {
	return lf_success;
}

int fld_load(lf_id_t identifier) {
	return lf_success;
}
