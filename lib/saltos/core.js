
/**
 ____        _ _    ___  ____    _  _    ___
/ ___|  __ _| | |_ / _ \/ ___|  | || |  / _ \
\___ \ / _` | | __| | | \___ \  | || |_| | | |
 ___) | (_| | | |_| |_| |___) | |__   _| |_| |
|____/ \__,_|_|\__|\___/|____/     |_|(_)___/

SaltOS: Framework to develop Rich Internet Applications
Copyright (C) 2007-2023 by Josep Sanz Campderrós
More information in https://www.saltos.org or info@saltos.org

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

"use strict";

/**
 * Main object
 *
 * This object contains all SaltOS code
 */
var saltos = saltos || {};

/**
 * HTML builder
 *
 * This function allow to create an DOM fragment from a string that contains html code, can
 * work with one or two arguments:
 *
 * @type => the type used when create the container element
 * @html => contains the html code that you want to use as template
 *
 * The main use is only using the html argument and omiting the type, in this case, the
 * type used will be a div, but if you want to create a fragment of object, for example
 * as tr or td, you need to specify that the coontainer type used to create the objects
 * must to be a table or tr, is you don't specify the type, the div container creates
 * a breaked portion of the element and they don't works as expected because the DOM
 * builded is bad, you can see this problem in action when work with tables and try to
 * create separate portions of the table as trs or tds.
 */
saltos.html = function () {
    var type = "div";
    var html = "";
    if (arguments.length == 1) {
        html = arguments[0];
    }
    if (arguments.length == 2) {
        type = arguments[0];
        html = arguments[1];
    }
    var div = document.createElement(type);
    div.innerHTML = html.trim();
    div = saltos.optimize(div);
    return div;
};

/**
 * Optimizer object
 *
 * This function checks an object to see if only contains one children and
 * in this case, returns directly the children instead of the original object,
 * otherwise nothing to do and returns the original object
 *
 * @obj => the object to check and optimize
 */
saltos.optimize = function (obj) {
    if (obj.children.length == 1) {
        return obj.firstElementChild;
    }
    return obj;
}
