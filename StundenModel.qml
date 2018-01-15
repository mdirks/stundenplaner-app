import QtQuick 2.0
import QtQuick.XmlListModel 2.0


XmlListModel {
    property int stundenId : 0
    //id: stundenModel
    source: "file:///home/mopp/dev/stundenplaner-app/models/stunden.xml"

    query: "/woche/stunde[@id=" +stundenId + "]/schueler"

    XmlRole { name: "name"; query: "@name/string()" }
}
