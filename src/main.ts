declare function require(name: string): string;

import * as m from "mithril";
const s = require("./main.scss");

var root = document.body;
m.render(root, "Hello World");

