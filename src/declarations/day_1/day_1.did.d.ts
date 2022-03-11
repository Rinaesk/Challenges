import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'clear_counter' : () => Promise<bigint>,
  'days2sec' : (arg_0: bigint) => Promise<bigint>,
  'divide' : (arg_0: bigint, arg_1: bigint) => Promise<boolean>,
  'inc' : (arg_0: bigint) => Promise<bigint>,
  'is_even' : (arg_0: bigint) => Promise<boolean>,
  'max' : (arg_0: Array<bigint>) => Promise<bigint>,
  'remove_from_array' : (
      arg_0: Array<bigint>,
      arg_1: bigint,
      arg_2: bigint,
    ) => Promise<Array<bigint>>,
  'square' : (arg_0: bigint) => Promise<bigint>,
  'sum' : (arg_0: bigint, arg_1: bigint) => Promise<bigint>,
  'sum_of_array' : (arg_0: Array<bigint>) => Promise<bigint>,
}
