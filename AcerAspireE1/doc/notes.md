`intel_pstate` (default on Intel CPU-s?)
```
mbohun@linux-cr70:~> cpupower frequency-info
analyzing CPU 0:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: Not Available
  CPUs which need to have their frequency coordinated by software: Not Available
  maximum transition latency:  Cannot determine or is not supported.
  hardware limits: 800 MHz - 2.60 GHz
  available cpufreq governors: performance
  current policy: frequency should be within 800 MHz and 2.60 GHz.
                  The governor "powersave" may decide which speed to use
                  within this range.
  current CPU frequency: Unable to call hardware
  current CPU frequency: 879 MHz (asserted by call to kernel)
  boost state support:
    Supported: yes
    Active: yes
```

add `intel_pstate=disable` to grub2 / kernel boot args in order to use the `acpi_cpufreq` driver
```
mbohun@linux-cr70:~> cpupower frequency-info
analyzing CPU 0:
  driver: acpi-cpufreq
  CPUs which run at the same hardware frequency: Not Available
  CPUs which need to have their frequency coordinated by software: Not Available
  maximum transition latency: 10.0 us
  hardware limits: 759 MHz - 2.30 GHz
  available frequency steps:  2.30 GHz, 2.30 GHz, 2.20 GHz, 2.10 GHz, 2.00 GHz, 1.80 GHz, 1.70 GHz, 1.60 GHz, 1.50 GHz, 1.40 GHz, 1.30 GHz, 1.20 GHz, 1000 MHz, 900 MHz, 800 MHz, 759 MHz
  available cpufreq governors: ondemand performance schedutil
  current policy: frequency should be within 759 MHz and 2.30 GHz.
                  The governor "ondemand" may decide which speed to use
                  within this range.
  current CPU frequency: Unable to call hardware
  current CPU frequency: 1.32 GHz (asserted by call to kernel)
  boost state support:
    Supported: yes
    Active: yes
```

