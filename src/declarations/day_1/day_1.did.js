export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'days2sec' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'square' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'sum' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], []),
  });
};
export const init = ({ IDL }) => { return []; };
