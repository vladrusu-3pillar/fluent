extension Filter {
    public enum Comparison {
        case Equals, GreaterThan, LessThan, NotEquals, Like
    }
}

extension Filter.Comparison: CustomStringConvertible {
    public var description: String {
        switch self {
        case .Equals:
            return "="
        case .GreaterThan:
            return ">"
        case .LessThan:
            return "<"
        case .NotEquals:
            return "!="
        case .Like:
            return "LIKE"
        }
        
    }
}

extension Filter.Comparison {
    var sql: String {
        switch self {
        case .Equals:
            return "="
        case .NotEquals:
            return "!="
        case .GreaterThan:
            return ">"
        case .LessThan:
            return "<"
        case .Like:
            return "LIKE"
        }
    }
}