# VHDL Counter with Potential Issues

This repository demonstrates a simple VHDL counter with a potential overflow issue and race condition vulnerability. The original code lacks robust handling of these situations.  The `fixed_counter.vhdl` file provides a corrected version.

## Bug Description

The `buggy_counter.vhdl` file contains a counter that increments on each clock edge until it reaches 15. Then it resets to 0. However, this implementation doesn't explicitly handle potential race conditions that could occur if the reset signal (`rst`) changes at the same time as the clock edge.  Moreover,  the reset logic could be improved for clarity and robustness.

## Solution

The `fixed_counter.vhdl` file addresses the issue by making the reset signal a higher priority and using a more robust reset mechanism. This ensures that the counter always resets correctly, regardless of timing conditions.   The updated code also enhances readability.

## How to Use

1.  Simulate both `buggy_counter.vhdl` and `fixed_counter.vhdl` using a VHDL simulator (e.g., ModelSim, GHDL) to observe the differences in behavior.
2.  Test with various input sequences, including scenarios where the reset signal changes near the clock edge, to verify the corrected behavior of the improved counter.