class RouteHelper {
    static func showRouteInAppleMaps(toLatitude: CGFloat, toLongitude: CGFloat) {
        if let url = URL(string: "http://maps.apple.com/?saddr=Current%20Location&daddr=\(toLatitude),\(toLongitude)") {
            UIApplication.shared.open(url)
        }
    }

    static func showRouteInGoogleMaps(toLatitude: CGFloat, toLongitude: CGFloat) {
        if let url = URL(string: "comgooglemaps://?saddr=&daddr=\(toLatitude),\(toLongitude)") {
            UIApplication.shared.open(url)
        }
    }

    static func showRouteInYandexMaps(toLatitude: CGFloat, toLongitude: CGFloat) {
        if let url = URL(string: "yandexmaps://maps.yandex.ru/?rtext=\(toLatitude),\(toLongitude)") {
            UIApplication.shared.open(url)
        }
    }
}
