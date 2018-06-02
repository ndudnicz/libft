#include <stdlib.h>

#include "libftasm.h"

void*
ft_calloc(
	size_t const size
) {
	void *const	ptr = malloc(size);

	if (ptr == NULL)
	{
		return (NULL);
	}
	else
	{
		return (ft_memset(ptr, 0, size));
	}
}
