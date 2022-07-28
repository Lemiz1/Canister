
import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Cycles "mo:base/ExperimentalCycles";




shared actor class myCanister(){
    public type MyCanisterInterface = actor {
  transferCycles: shared (Nat, Principal) -> async (Bool);
  acceptCycles: shared() -> async (Bool);
};
    // Challenge 6 - In progress
    public func transfer(amount : Nat, to: Principal) : async Bool{
      if(amount < Cycles.balance()) {
        Cycles.add(amount);
        let canister : MyCanisterInterface = actor (Principal.toText(to));
        return await canister.acceptCycles();
      };
      return false;
    };

  
}   