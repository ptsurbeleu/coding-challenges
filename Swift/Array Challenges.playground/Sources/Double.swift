import Foundation

/// Miscellaneous extensions to keep the code as humand-friendly and readable as
/// possible.
extension Double {
    /// Returns the largest positive value. 
    public static var max: Double {
        get { return Double.greatestFiniteMagnitude }
    }
    
    /// Returns the smallest negative value.
    public static var min: Double {
        get { return -max }
    }
    
    /// Returns 0 value.
    public static var zero: Double {
        get { return 0 }
    }
}
