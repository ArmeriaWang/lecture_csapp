#include <stdio.h>
#include <string.h>

typedef unsigned float_bits;

float_bits float_denorm_zero(float_bits f) {
	unsigned sign = f >> 31;
	unsigned exp = f >> 23 & 0xFF;
	unsigned frac = f & 0x7FFFFF;
	if (exp == 0) {
		frac = 0;
	}
	return (sign << 31) | (exp << 23) | frac;
}

float_bits float_half(float_bits f) {
	unsigned sign = f >> 31;
	unsigned exp = f >> 23 & 0xFF;
	unsigned frac = f & 0x7FFFFF;

	if (exp == 0xFF) {
		return f;
	}
	else if (exp > 1) {
		exp -= 1;
	}
	else {
		if ((frac & 3) == 3) frac += 1;
		frac >>= 1;
		if (exp == 1) {
			exp = 0;
			frac += (1 << 22);
		}
	}
	return (sign << 31) | (exp << 23) | frac;
}

unsigned bit_origin, bit_mach, bit_arti;
float num_mach;

int main()
{
	bit_origin = -1U;
	while (1) {
		bit_origin++;
		memcpy(&num_mach, &bit_origin, 4);
		num_mach = num_mach * 0.5;

		memcpy(&bit_mach, &num_mach, 4);
		memcpy(&bit_arti, &bit_origin, 4);
		bit_arti = float_half(bit_arti);
		
        if ((bit_origin >> 23 & 0xFF) != 0xFF) {
			if (bit_arti != bit_mach) {
				printf("DIFF! bit_origin = %u %u %u\n", bit_origin, bit_arti, bit_mach);
			}
		}
		if (bit_origin == -1U) break;
	}

	return 0;
}

