/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t spes_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Redmi",
    .device = "spes",
    .marketname = "Redmi Note 11",
    .model = "Redmi Note 11 ",
    .build_fingerprint = "Redmi/spes_global/spes:11/RKQ1.211001.001/V13.0.9.0.RGCMIXM:user/release-keys",

    .nfc = false,
};

static const variant_info_t spesn_info = {
    .hwc_value = "",
    .sku_value = "k7tn",

    .brand = "Redmi",
    .device = "spesn",
    .marketname = "Redmi Note 11",
    .model = "Redmi Note 11",
    .build_fingerprint = "Redmi/spesn_global/spesn:11/RKQ1.211001.001/V13.0.9.0.RGCMIXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    spes_info,
    spesn_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
