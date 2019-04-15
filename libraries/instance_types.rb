module OpsworksUtils
  INSTANCE_TYPES = {
      "t2.micro" => { :cpu => 1, :ram => 1, :storage => "EBS Only", :networking_performance => "Low to Moderate", :physical_processor => "Intel Xeon family", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },
      "t2.small" => { :cpu => 1, :ram => 2, :storage => "EBS Only", :networking_performance => "Low to Moderate", :physical_processor => "Intel Xeon family", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },
      "t2.medium" => { :cpu => 2, :ram => 4, :storage => "EBS Only", :networking_performance => "Low to Moderate", :physical_processor => "Intel Xeon family", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },
      "t2.large" => { :cpu => 2, :ram => 8, :storage => "EBS Only", :networking_performance => "Low to Moderate", :physical_processor => "Intel Xeon family", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },
      "t3.micro" => { :cpu => 2, :ram => 1, :storage => "EBS Only", :networking_performance => "Low to Moderate", :physical_processor => "Intel Xeon family", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false }
      "t3.small" => { :cpu => 2, :ram => 2, :storage => "EBS Only", :networking_performance => "Low to Moderate", :physical_processor => "Intel Xeon family", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },
      "t3.medium" => { :cpu => 2, :ram => 4, :storage => "EBS Only", :networking_performance => "Low to Moderate", :physical_processor => "Intel Xeon family", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },
      "t3.large" => { :cpu => 2, :ram => 8, :storage => "EBS Only", :networking_performance => "Low to Moderate", :physical_processor => "Intel Xeon family", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },


      "m3.medium" => { :cpu => 1, :ram => 3.75, :storage => "1 x 4 SSD", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2670 v2*", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },
      "m3.large" => { :cpu => 2, :ram => 7.5, :storage => "1 x 32 SSD", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2670 v2*", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => false },
      "m3.xlarge" => { :cpu => 4, :ram => 15, :storage => "2 x 40 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2670 v2*", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => false },
      "m3.2xlarge" => { :cpu => 8, :ram => 30, :storage => "2 x 80 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2670 v2*", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => false },
      "m4.large" => { :cpu => 2, :ram => 8, :storage => "EBS Only", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2676 v3*", :clock_speed => 2.4, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m4.xlarge" => { :cpu => 4, :ram => 16, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2676 v3*", :clock_speed => 2.4, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m4.2xlarge" => { :cpu => 8, :ram => 32, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2676 v3*", :clock_speed => 2.4, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m4.4xlarge" => { :cpu => 16, :ram => 64, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2676 v3*", :clock_speed => 2.4, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m4.10xlarge" => { :cpu => 40, :ram => 160, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2676 v3*", :clock_speed => 2.4, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m4.16xlarge" => { :cpu => 64, :ram => 256, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2686 v3*", :clock_speed => 2.3, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m5.large" => { :cpu => 2, :ram => 8, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon Platinum", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m5.xlarge" => { :cpu => 4, :ram => 16, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon Platinum", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m5.2xlarge" => { :cpu => 8, :ram => 32, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon Platinum", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m5.4xlarge" => { :cpu => 16, :ram => 64, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon Platinum", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m5.12xlarge" => { :cpu => 48, :ram => 192, :storage => "EBS Only", :networking_performance => "10 Gigabit", :physical_processor => "Intel Xeon Platinum", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "m5.24xlarge" => { :cpu => 96, :ram => 384, :storage => "EBS Only", :networking_performance => "25 Gigabit", :physical_processor => "Intel Xeon Platinum", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },

      "c5.large" => { cpu: 2, ram: 4, storage: 'EBS Only', networking_performance: 'Up to 10 Gbps', physical_processor: 'Intel Xeon Platinum', clock_speed: 3.0, intel_avx: true, intel_avx2: true, intel_avx_512: true, intel_turbo: true, ebs_opt: true, enhanced_networking: true },
      "c5.xlarge" => { cpu: 4, ram: 8, storage: 'EBS Only', networking_performance: 'Up to 10 Gbps', physical_processor: 'Intel Xeon Platinum', clock_speed: 3.0, intel_avx: true, intel_avx2: true, intel_avx_512: true, intel_turbo: true, ebs_opt: true, enhanced_networking: true },
      "c5.2xlarge" => { cpu: 8, ram: 16, storage: 'EBS Only', networking_performance: 'Up to 10 Gbps', physical_processor: 'Intel Xeon Platinum', clock_speed: 3.0, intel_avx: true, intel_avx2: true, intel_avx_512: true, intel_turbo: true, ebs_opt: true, enhanced_networking: true },
      "c5.4xlarge" => { cpu: 16, ram: 32, storage: 'EBS Only', networking_performance: 'Up to 10 Gpbs', physical_processor: 'Intel Xeon Platinum', clock_speed: 3.0, intel_avx: true, intel_avx2: true, intel_avx_512: true, intel_turbo: true, ebs_opt: true, enhanced_networking: true },
      "c5.9xlarge" => { cpu: 36, ram: 72, storage: 'EBS Only', networking_performance: '10 Gigabit', physical_processor: 'Intel Xeon Platinum', clock_speed: 3.0, intel_avx: true, intel_avx2: true, intel_avx_512: true, intel_turbo: true, ebs_opt: true, enhanced_networking: true },
      "c5.18xlarge" => { cpu: 72, ram: 144, storage: 'EBS Only', networking_performance: '25 Gigabit', physical_processor: 'Intel Xeon Platinum', clock_speed: 3.0, intel_avx: true, intel_avx2: true, intel_avx_512: true, intel_turbo: true, ebs_opt: true, enhanced_networking: true },

      "c4.large" => { :cpu => 2, :ram => 3.75, :storage => "EBS Only", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2666 v3", :clock_speed => 2.9, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "c4.xlarge" => { :cpu => 4, :ram => 7.5, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2666 v3", :clock_speed => 2.9, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "c4.2xlarge" => { :cpu => 8, :ram => 15, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2666 v3", :clock_speed => 2.9, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "c4.4xlarge" => { :cpu => 16, :ram => 30, :storage => "EBS Only", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2666 v3", :clock_speed => 2.9, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "c4.8xlarge" => { :cpu => 36, :ram => 60, :storage => "EBS Only", :networking_performance => "10 Gigabit", :physical_processor => "Intel Xeon E5-2666 v3", :clock_speed => 2.9, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "c3.large" => { :cpu => 2, :ram => 3.75, :storage => "2 x 16 SSD", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2680 v2", :clock_speed => 2.8, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => true },
      "c3.xlarge" => { :cpu => 4, :ram => 7.5, :storage => "2 x 40 SSD", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2680 v2", :clock_speed => 2.8, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "c3.2xlarge" => { :cpu => 8, :ram => 15, :storage => "2 x 80 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2680 v2", :clock_speed => 2.8, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "c3.4xlarge" => { :cpu => 16, :ram => 30, :storage => "2 x 160 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2680 v2", :clock_speed => 2.8, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "c3.8xlarge" => { :cpu => 32, :ram => 60, :storage => "2 x 320 SSD", :networking_performance => "10 Gigabit", :physical_processor => "Intel Xeon E5-2680 v2", :clock_speed => 2.8, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => true },
      "g2.2xlarge" => { :cpu => 8, :ram => 15, :storage => "1 x 60 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon  E5-2670", :clock_speed => 2.6, :intel_avx => false, :intel_avx2 => false, :intel_turbo => false, :ebs_opt => true, :enhanced_networking => false },
      "r3.large" => { :cpu => 2, :ram => 15.25, :storage => "1 x 32 SSD", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => true },
      "r3.xlarge" => { :cpu => 4, :ram => 30.5, :storage => "1 x 80 SSD", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "r3.2xlarge" => { :cpu => 8, :ram => 61, :storage => "1 x 160 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "r3.4xlarge" => { :cpu => 16, :ram => 122, :storage => "1 x 320 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "r3.8xlarge" => { :cpu => 32, :ram => 244, :storage => "2 x 320 SSD", :networking_performance => "10 Gigabit", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => true },
      "r4.large" => { :cpu => 2, :ram => 15.25, :storage => "EBS Only", :networking_performance => "Up to 10 Gigabit", :physical_processor => "Intel Xeon E5-2686 v4", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "r4.xlarge" => { :cpu => 4, :ram => 30.5, :storage => "EBS Only", :networking_performance => "Up to 10 Gigabit", :physical_processor => "Intel Xeon E5-2686 v4", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "r4.2xlarge" => { :cpu => 8, :ram => 61, :storage => "EBS Only", :networking_performance => "Up to 10 Gigabit", :physical_processor => "Intel Xeon E5-2686 v4", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "r4.4xlarge" => { :cpu => 16, :ram => 122, :storage => "EBS Only", :networking_performance => "Up to 10 Gigabit", :physical_processor => "Intel Xeon E5-2686 v4", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "r4.8xlarge" => { :cpu => 32, :ram => 244, :storage => "EBS Only", :networking_performance => "10 Gigabit", :physical_processor => "Intel Xeon E5-2686 v4", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "r4.16xlarge" => { :cpu => 64, :ram => 488, :storage => "EBS Only", :networking_performance => "20 Gigabit", :physical_processor => "Intel Xeon E5-2686 v4", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => true, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "i2.xlarge" => { :cpu => 4, :ram => 30.5, :storage => "1 x 800 SSD", :networking_performance => "Moderate", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "i2.2xlarge" => { :cpu => 8, :ram => 61, :storage => "2 x 800 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "i2.4xlarge" => { :cpu => 16, :ram => 122, :storage => "4 x 800 SSD", :networking_performance => "High", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => true, :enhanced_networking => true },
      "i2.8xlarge" => { :cpu => 32, :ram => 244, :storage => "8 x 800 SSD", :networking_performance => "10 Gigabit", :physical_processor => "Intel Xeon E5-2670 v2", :clock_speed => 2.5, :intel_avx => true, :intel_avx2 => false, :intel_turbo => true, :ebs_opt => false, :enhanced_networking => true },
      "hs1.8xlarge" => { :cpu => 16, :ram => 117, :storage => "24 x 2,000", :networking_performance => "10 Gigabit", :physical_processor => "Intel Xeon Family", :clock_speed => 2, :intel_avx => false, :intel_avx2 => false, :intel_turbo => false, :ebs_opt => false, :enhanced_networking => false },

      # Legacy
      "m1.small" => {:arch=>"32-bit or 64-bit", :cpu=>1, :ram=>1.7, :storage=>"1 x 160", :ebs_opt=>false, :networking_performance=>"Low"},
      "m1.medium" => {:arch=>"32-bit or 64-bit", :cpu=>1, :ram=>3.75, :storage=>"1 x 410", :ebs_opt=>false, :networking_performance=>"Moderate"},
      "m1.large" => {:arch=>"64-bit", :cpu=>2, :ram=>7.5, :storage=>"2 x 420", :ebs_opt=>true, :networking_performance=>"Moderate"},
      "m1.xlarge" => {:arch=>"64-bit", :cpu=>4, :ram=>15, :storage=>"4 x 420", :ebs_opt=>true, :networking_performance=>"High"},
      "c1.medium" => {:arch=>"32-bit or 64-bit", :cpu=>2, :ram=>1.7, :storage=>"1 x 350", :ebs_opt=>false, :networking_performance=>"Moderate"},
      "c1.xlarge" => {:arch=>"64-bit", :cpu=>8, :ram=>7, :storage=>"4 x 420", :ebs_opt=>true, :networking_performance=>"High"},
      "cc2.8xlarge" => {:arch=>"64-bit", :cpu=>32, :ram=>60.5, :storage=>"4 x 840", :ebs_opt=>false, :networking_performance=>"10 Gigabit"},
      "cg1.4xlarge" => {:arch=>"64-bit", :cpu=>16, :ram=>22.5, :storage=>"2 x 840", :ebs_opt=>false, :networking_performance=>"10 Gigabit"},
      "m2.xlarge" => {:arch=>"64-bit", :cpu=>2, :ram=>17.1, :storage=>"1 x 420", :ebs_opt=>false, :networking_performance=>"Moderate"},
      "m2.2xlarge" => {:arch=>"64-bit", :cpu=>4, :ram=>34.2, :storage=>"1 x 850", :ebs_opt=>true, :networking_performance=>"Moderate"},
      "m2.4xlarge" => {:arch=>"64-bit", :cpu=>8, :ram=>68.4, :storage=>"2 x 840", :ebs_opt=>true, :networking_performance=>"High"},
      "cr1.8xlarge" => {:arch=>"64-bit", :cpu=>32, :ram=>244, :storage=>"2 x 120 SSD", :ebs_opt=>false, :networking_performance=>"10 Gigabit"},
      "hi1.4xlarge" => {:arch=>"64-bit", :cpu=>16, :ram=>60.5, :storage=>"2 x 1,024 SSD", :ebs_opt=>false, :networking_performance=>"10 Gigabit"},
      "t1.micro" => {:arch=>"32-bit or 64-bit", :cpu=>1, :ram=>0.613, :storage=>"EBS Only", :ebs_opt=>false, :networking_performance=>"Very Low"}
  }

end
