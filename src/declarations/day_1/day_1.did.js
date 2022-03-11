export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'clear_counter' : IDL.Func([], [IDL.Nat], []),
    'days2sec' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'divide' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Bool], []),
    'inc' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'is_even' : IDL.Func([IDL.Nat], [IDL.Bool], []),
    'max' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'remove_from_array' : IDL.Func(
        [IDL.Vec(IDL.Nat), IDL.Nat, IDL.Nat],
        [IDL.Vec(IDL.Nat)],
        [],
      ),
    'square' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'sum' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], []),
    'sum_of_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
  });
};
export const init = ({ IDL }) => { return []; };
