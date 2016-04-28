extension Filter {
    public enum Scope {
        case In, NotIn
    }
}

extension Filter.Scope: CustomStringConvertible {
    public var description: String {
        return self == .In ? "in" : "not in"
    }
}

extension Filter.Scope {
    var sql: String {
        switch self {
        case .In:
            return "IN"
        case .NotIn:
            return "NOT IN"
        }
    }
}
