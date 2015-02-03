# opsworks-utils cookbook

Useful utilities for cooking in AWS OpsWorks.

# Requirements

Supports OpsWorks with Chef 11.4 and 11.10.

# Usage

Declare and resolve this cookbook as a dependency.

# Attributes

None.

# Recipes

None.

# Libraries

## Instance Types

`OpsworksUtils::INSTANCE_TYPES` is a hash of instance type information.  It is useful for determining cpu, ram, etc given a instance type name.

```
> OpsworksUtils::INSTANCE_TYPES["c3.large"]
  => {:cpu=>2, :ram=>3.75, :storage=>"2 x 16 SSD", :networking_performance=>"Moderate", :physical_processor=>"Intel Xeon E5-2680 v2", :clock_speed=>2.8, :intel_avx=>true, :intel_avx2=>false, :intel_turbo=>true, :ebs_opt=>false, :enhanced_networking=>true}
> OpsworksUtils::INSTANCE_TYPES["m1.small"]
  => {:arch=>"32-bit or 64-bit", :cpu=>1, :ram=>1.7, :storage=>"1 x 160", :ebs_opt=>false, :networking_performance=>"Low"}
```

# Author

Author:: Sport Ngin (<platform-ops@sportngin.com>)
