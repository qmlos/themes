/****************************************************************************
 * This file is part of Hawaii.
 *
 * Copyright (C) 2014-2015 Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
 *
 * Author(s):
 *    Pier Luigi Fiorini
 *
 * $BEGIN_LICENSE:GPL2+$
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * $END_LICENSE$
 ***************************************************************************/

import QtQuick 2.1
import QtQuick.Controls 1.0
import Hawaii.Themes 1.0 as Themes
import Hawaii.Controls 1.0 as Controls
import SddmComponents 2.0

ToolButton {
    activeFocusOnTab: true
    //iconName: "input-keyboard-symbolic"
    /////iconSize: Themes.Units.iconSizes.small
    //: Keyboard layout button text
    //~ Button to change keyboard layout
    text: keyboard.layouts[keyboard.currentLayout].shortName
    tooltip: qsTr("Change keyboard layout")
    visible: keyboard.layouts.count > 1
    onClicked: {
        var index = keyboard.currentLayout;
        if (index == (keyboard.layouts.count - 1))
            index = -1;
        keyboard.currentLayout = index + 1;
    }

    //: Keyboard layout button accessibility name
    //~ Button to change keyboard layout
    Accessible.name: qsTr("Switch layout")
}
