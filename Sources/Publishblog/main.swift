import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Publishblog: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://publishblog.github.io")!
    var name = "Publishblog"
    var description = "A description of Publishblog"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Publishblog().publish(withTheme: .foundation,
                          deployedUsing: .gitHub("publishblog/publishblog.github.io", useSSH: false))
