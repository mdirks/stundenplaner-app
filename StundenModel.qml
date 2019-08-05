import QtQuick 2.0
import QtQuick.XmlListModel 2.0


XmlListModel {
    property int stundenId : 0
    //id: stundenModel
    //source: "file:///home/mopp/dev/stundenplaner-app/models/stunden.xml"
    source: "models/stunden.xml"

    query: "/woche/Stundenplaneintrag[@ID=" +stundenId + "]/Sitzplan/Platz"

    XmlRole { name: "Vorname"; query: "@Vorname/string()" }
    XmlRole { name: "Nachname"; query: "@Nachname/string()" }
    XmlRole { name: "xK"; query: "@x/string()" }
    XmlRole { name: "yK"; query: "@y/string()" }
}
