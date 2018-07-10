// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
internal enum L10n {

  internal enum Racedetails {
    /// Title
    internal static let title = L10n.tr("Strings", "raceDetails.title")

    internal enum Stats {
      /// Total CAL
      internal static let totalCal = L10n.tr("Strings", "raceDetails.stats.totalCal")
      /// Total KM
      internal static let totalDistanceKM = L10n.tr("Strings", "raceDetails.stats.totalDistanceKM")
      /// Total time
      internal static let totalTime = L10n.tr("Strings", "raceDetails.stats.totalTime")
    }

    internal enum Vechile {
      /// Airplane
      internal static let airplane = L10n.tr("Strings", "raceDetails.vechile.airplane")
      /// Bus
      internal static let bus = L10n.tr("Strings", "raceDetails.vechile.bus")
      /// Train
      internal static let train = L10n.tr("Strings", "raceDetails.vechile.train")
    }
  }

  internal enum Racelist {
    /// Races
    internal static let racesTitle = L10n.tr("Strings", "raceList.racesTitle")
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
