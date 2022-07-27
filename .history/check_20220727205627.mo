
import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Cycles "mo:base/ExperimentalCycles";
actor{
    public func balance() : async Nat {
        return(Cycles.balance())
    };
    public func message_available() : async Nat {
        return(Cycles.available())
    };
    
    public func transfer(amount : Nat) : async Nat{
      Cycles.accept(amount);
    };

    public func add(amount : Nat) : async Nat{
      Cycles.add(amount);
      return(amount);
    };

}   