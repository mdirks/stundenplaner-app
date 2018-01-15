import QtQuick 2.0
import QtQuick.XmlListModel 2.0


XmlListModel {
    query: "/woche/stunde"

    XmlRole { name: "title"; query: "@name/string()" }
    XmlRole { name: "tag"; query: "@tag/string()" }
    XmlRole { name: "nr"; query: "@nr/string()" }
    XmlRole { name: "sid"; query: "@id/string()" }
}

