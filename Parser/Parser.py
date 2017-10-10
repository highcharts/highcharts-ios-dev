#!/usr/bin/python

# ************************************************
# Created by Krzysztof Fryzlewicz and Marek Lipert
#                   of Spinney
#                 www.spinney.io
#   
# All commercial rights to this software belong to 
#                  Highsoft AS
#              www.highcharts.com

import json
import sys
import os
from bs4 import BeautifulSoup, SoupStrainer

reload(sys)
sys.setdefaultencoding('utf-8')

tree = dict()
structure = dict()
groups = list()
files = list()
bridge = set()
options = list()
filelicense = "/**\n* (c) 2009-2017 Highsoft AS\n*\n* License: www.highcharts.com/license\n" \
            "* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/\n" \
            "* In case of questions, please contact sales@highsoft.com\n*/\n\n"

class HIChartsClass:
    def __init__(self, name, data_type, description, demo, values, defaults):
        self.name = name
        self.data_type = data_type
        self.description = description
        self.demo = demo
        self.values = values
        self.defaults = defaults
        self.properties = list()
        self.extends = None
        self.comment = None
        self.checked = False
        self.duplicate = False
        self.group = None
        x = name.split(".")
        if len(x) == 1:
            x = name.split("<")
            if len(x) > 1:
                self.extends = x[0]
        if self.description:
            self.comment = "/**\n* description: {0}\n".format(self.description)
            if self.demo:
                self.comment += "* demo: {0}\n".format(self.demo)
            if self.values:
                self.comment += "* accepted values: {0}\n".format(self.values)
            self.comment = clean_comment(self.comment)
            if self.defaults:
                self.comment += "* default: {0}\n".format(self.defaults)
            self.comment += "*/\n"

    def update(self, source):
        self.data_type = source.data_type
        self.description = source.description
        self.demo = source.demo
        self.values = source.values
        self.defaults = source.defaults
        if self.description:
            self.comment = "/**\n* description: {0}\n".format(self.description)
            if self.demo:
                self.comment += "* demo: {0}\n".format(self.demo)
            if self.values:
                self.comment += "* accepted values: {0}\n".format(self.values)
            self.comment = clean_comment(self.comment)
            if self.defaults:
                self.comment += "* default: {0}\n".format(self.defaults)
            self.comment += "*/\n"

    def add_property(self, variable):
        self.properties.append(variable)


def clean_comment(comment):
    soup = BeautifulSoup(comment, 'html.parser')
    for m in soup.find_all('a'):
        if str(m) in comment:
            if not m['href'].startswith("#"):
                comment = comment.replace(str(m), m['href'] + " : " + m.__dict__['next_element'])
    soup = BeautifulSoup(comment, 'html.parser')
    comment = soup.get_text()
    return comment


class Node:
    def __init__(self, name, parent, info):
        self.name = name
        self.info = info
        self.children = list()
        self.parent = parent
    def add_child(self, child):
        self.children.append(child)

    def update(self, parent, info):
        self.parent = parent
        self.info = info

def get_type(x):
    return {
        "Number": 'NSNumber',
        "Boolean": 'NSNumber /* Bool */',
        "Color": 'HIColor',
        "String": 'NSString',
        "Object": 'id',
        "Function": 'NSString',
        "Array<Number>": 'NSArray<NSNumber *>',
        "Array<Object>": 'NSArray',
        "Array": 'NSArray',
        "Array<String>": 'NSArray<NSString *>',
        "Boolean|Object": 'id /* Bool, Object */',
        "String|Number": 'id /* NSString, NSNumber */',
        "Array<Array>": 'NSArray<NSArray *>',
        "CSSObject": 'NSDictionary /* <NSString, NSString> */',
        "Array<Color>": 'NSArray<HIColor *>',
        "Array<Object|Array|Number>": 'NSArray /* <Data, NSNumber, NSArray> */',
        "Array<String|Number>": 'NSArray /* <NSString, NSNumber> */',
        "Array<Object|Number>": 'NSArray /* <id, NSNumber> */',
        "Array<Object|Array>": 'NSArray',
        "Number|String": 'id /* NSString, NSNumber */',
        "String|HTMLElement": 'NSString',
        "Array<Array<Mixed>>": 'NSArray<NSArray *>',
        "String|Object": 'id /* NSString, id */',
        "Mixed": 'id',
        "Number|Boolean": 'NSNumber',
        "": 'id',
        "plotOptions.series.states": 'NSArray',
        "Boolean|String" : 'NSString',
        #nowe typy
        "Object|Boolean" : 'id',
        "String|Array.<String>" : 'id',
        "Array.<String>" : 'NSArray<NSString *>',
        "function": 'NSString',
        "String|function" : 'id',
        "Array.<Object>" : 'NSArray',
        "Array.<Number>": 'NSArray<NSNumber *>',
        "Array.<Array>": 'NSArray<NSArray *>',
        "Array.<Color>": 'NSArray<HIColor *>',
        "Array.<Object|Array|Number>": 'NSArray /* <Data, NSNumber, NSArray> */',
        "Array.<String|Number>": 'NSArray /* <NSString, NSNumber> */',
        "Array.<Object|Number>": 'NSArray',
        "Array.<Object|Array>": 'NSArray',
        "Array.<Array<Mixed>>": 'NSArray<NSArray *>',
        "Array.<(Object|Number)>": 'NSArray',
        "Array.<(String|Number)>": 'NSArray /* <NSString, NSNumber> */',
        "Array.<(Object|Array)>": 'NSArray',
        "String|Array.<Object>": 'NSString',
        "String|undefined" : 'NSString',
        "Array.<String>|Array.<Object>" : 'NSArray',
        "String|Number|function" : 'id /* NSString, NSNumber, Function */',
        "Array.<(Object|Array|Number)>": 'NSArray /* <Data, NSNumber, NSArray> */',
        "String|null" : 'NSString',
        "Array.<Array<Mixed>>": 'NSArray<NSArray *>',
        "Array.<Array.<Mixed>>": 'NSArray<NSArray *>',
        "Object|Number" : 'id',
        "umber": 'NSNumber',
        "function|null" : 'NSString'
    }[str(x)]


def upper_first(x):
    r = x[0].upper() + x[1:]
    # if r == 'Point':
    #     r = 'HIPoint'
    return r


def lower_first(x):
    return x[0].lower() + x[1:]


def get_last(x):
    last = ''
    s = x.split("<")
    if len(s) > 1:
        n = s[1].split(".")
        last = n[len(n) - 1].replace(">", "")
    else:
        n = s[0].split(".")
        last = n[len(n) - 1]
    if last == 'description':
        last = 'definition'
    return last


def search_for_repetitions():
    for key1 in structure:
        if not structure[key1].checked:
            search(key1)


def search(key1):
    duplicates = list()
    for key2 in structure:
        if key1 != key2:
            if get_last(structure[key1].name) == get_last(structure[key1].name):
                if structure[key1].data_type == structure[key2].data_type:
                    if len(structure[key1].properties) == len(structure[key2].properties):
                        if structure[key1].description == structure[key2].description:
                            if key1 != "xAxis.breaks" and key2 != "xAxis.breaks":
                                all = True
                                for p1 in structure[key1].properties:
                                    ok = False
                                    for p2 in structure[key2].properties:
                                        if get_last(p1.name) == get_last(p2.name):
                                            ok = True
                                    if not ok:
                                        all = False
                                if all:
                                    duplicates.append(key2)
    name = get_last(key1)
    if name in structure:
        x = key1.split(".")
        if len(x) > 1:
            name = x[len(x) - 2] + upper_first(x[len(x) - 1])
        else:
            name = 'HI' + name
            
    for i in duplicates:
        structure[i].checked = True
        structure[i].duplicate = True
        structure[i].group = name


def add_to_tree(source):
    fullname = source["fullname"]
    x = fullname.split(".")
    parent = None
    if len(x) > 1:
        if x[len(x)-1] == '':
            return
        else:
            x = x[:-1]
            parent = ".".join(x)

    node = Node(fullname, parent, source)

    if fullname in tree:
        tree[fullname].update(parent, source)
    else:
        tree[fullname] = node

    if parent is None:
        pass
    else:
        if parent in tree:
            tree[parent].add_child(node)
        else:
            p = Node(parent, None, None)
            tree[parent] = p
            tree[parent].add_child(node)


def print_tree():
    count = 0
    for node in tree:
        print "node: " + node
        if tree[node].parent:
            print "Parent: " + tree[node].parent
        else:
            print "noParent"
            count += 1
        if tree[node].info and "returnType" in tree[node].info:
            print "returnType: " + tree[node].info["returnType"]
        else:
            print tree[node].info
        if tree[node].children:
            print "Children: "
            for child in tree[node].children:
                print child.name + " | "
    print "Classes: " + str(count)


def num(s):
    try:
        return int(s)
    except ValueError:
        try:
            return float(s)
        except ValueError:
            return None


def create_class(node):
    source = node.info
    data_type = None
    description = None
    demo = None
    values = None
    defaults = None
    if source:
        if "description" in source:
            description = source["description"]

        if "values" in source and len(source["values"]) > 0:
            values = source["values"]

        if "defaults" in source:
            defaults = source["defaults"]

        if "demo" in source:
            demo = source["demo"]

        if "returnType" in source:
            data_type = source["returnType"]

        name = node.name
        if name == "id":
            name = "ID"
        elif name == "point":
            name = "HIPoint"
        elif name == "description":
            name = "definition"

        c = HIChartsClass(name, data_type, description, demo, values, defaults)
        return c


def create_structure():
    for node in tree:
        c = create_class(tree[node])
        if node in structure:
            structure[node].update(c)
        else:
            structure[node] = c
        if tree[node].children:
            if tree[node].parent:
                if tree[node].parent in structure:
                    structure[tree[node].parent].add_property(c)
                else:
                    p = HIChartsClass(tree[node].parent, None, None, None, None, None)
                    structure[tree[node].parent] = p
                    structure[tree[node].parent].add_property(c)
        elif tree[node].parent:
            if tree[node].parent in structure:
                structure[tree[node].parent].add_property(c)
            else:
                p = HIChartsClass(tree[node].parent, None, None, None, None, None)
                structure[tree[node].parent] = p
                structure[tree[node].parent].add_property(c)


def create_name(source):
    if source in structure and structure[source].group:
        source = structure[source].group

    name = source.split("<")
    if len(name) > 1:
        name = name[1]
        name = name.replace(">", "")
    else:
        name = name[0]
    x = name.split(".")
    name = ''
    count = 0
    for i in x:
        if count == 0:
            name += i
            count += 1
        else:
            name += upper_first(i)
    return name


def create_h_file(name):
    source = structure[name]
    h = None
    if source.properties:
        if source.group:
            if source.group not in groups:
                groups.append(source.group)
                h = format_to_h(source.group, source)
                name = source.group
        else:
            h = format_to_h(name, source)

        if h:
            filename = "HIChartsClasses/HI{0}.h".format(upper_first(create_name(name)))
            files.append(upper_first(create_name(name)))
            with open(filename, "w") as h_file:
                h_file.write(h)


def create_m_file(name):
    source = structure[name]
    m = None
    if source.properties:
        if source.group:
            m = format_to_m(source.group, source)
            name = source.group
        else:
            m = format_to_m(name, source)

        if m:
            filename = "HIChartsClasses/HI{0}.m".format(upper_first(create_name(name)))
            with open(filename, "w") as m_file:
                m_file.write(m)


def format_to_h(name, source):
    imports = ""
    colorAdded = False
    htext = ""
    if source.extends is not None:
        imports += "#import \"{0}.h\"\n".format("HI" + upper_first(source.extends))
        if source.comment:
            htext += source.comment
        htext += "@interface {0}: {1}\n\n".format("HI" + upper_first(create_name(name)), "HI" + upper_first(source.extends))
    else:
        if source.comment:
            htext += source.comment
        htext += "@interface {0}: HIChartsJSONSerializable\n\n".format("HI" + upper_first(create_name(name)))
    bridge.add("#import \"{0}.h\"\n".format("HI" + upper_first(create_name(name))))
    for field in source.properties:
        if source.extends:
            skip = False
            for i in structure[source.extends].properties:
                if get_last(field.name) == get_last(i.name):
                    skip = True
            if skip:
                continue
        if field.comment:
            htext += "{0}".format(field.comment)
        if field.data_type:
            if "id" in str(get_type(field.data_type)) and "NSArray" not in str(get_type(field.data_type)) and not structure[field.name].properties:
                htext += "@property(nonatomic, readwrite) {0} {1};\n".format(get_type(field.data_type), get_last(field.name))
            elif "NSArray" in str(get_type(field.data_type)) and structure[field.name].properties:
                htext += "@property(nonatomic, readwrite) {0} <{1} *> *{2};\n".format(get_type(field.data_type),
                                                                                      "HI" + upper_first(
                                                                                            create_name(field.name)),
                                                                                      get_last(field.name))
                imports += "#import \"{0}.h\"\n".format("HI" + upper_first(create_name(field.name)))
            elif "NSArray" in str(get_type(field.data_type)):
                htext += "@property(nonatomic, readwrite) {0} *{1};\n".format(get_type(field.data_type), get_last(field.name))
            elif field.data_type == "Object":
                if structure[field.name].properties:
                    htext += "@property(nonatomic, readwrite) {0} *{1};\n".format("HI" + upper_first(create_name(field.name)), get_last(field.name))
                    imports += "#import \"{0}.h\"\n".format("HI" + upper_first(create_name(field.name)))
                else:
                    htext += "@property(nonatomic, readwrite) id {0};\n".format(get_last(field.name))

            else:
                if get_type(field.data_type) == "HIColor" and not colorAdded:
                    colorAdded = True
                if structure[field.name].properties:
                    htext += "@property(nonatomic, readwrite) {0} *{1};\n".format("HI" + upper_first(create_name(field.name)), get_last(field.name))
                    imports += "#import \"{0}.h\"\n".format("HI" + upper_first(create_name(field.name)))
                else:
                    htext += "@property(nonatomic, readwrite) {0} *{1};\n".format(get_type(field.data_type), get_last(field.name))
        else:
            if not field.data_type and not structure[field.name].properties:
                htext += "@property(nonatomic, readwrite) id {0};\n".format(get_last(field.name))
            elif structure[field.name].properties:
                name = create_name(field.name)
                htext += "@property(nonatomic, readwrite) {0} *{1};\n".format("HI" + upper_first(name), get_last(field.name))
                imports += "#import \"{0}.h\"\n".format("HI" + upper_first(name))

    htext += "\n-(NSDictionary *)getParams;\n\n"
    htext += "@end\n"
    if imports == "":
        imports += "#import \"HIChartsJSONSerializable.h\"\n"
    if colorAdded:
        imports += "#import \"HIColor.h\"\n"
    imports += "\n\n"
    return filelicense + imports + htext


def format_to_m(name, source):
    mtext = "#import \"{0}.h\"\n\n".format("HI" + upper_first(create_name(name)))
    mtext += "@implementation {0}\n\n".format("HI" + upper_first(create_name(name)))
    if source.extends:
        mtext += "-(instancetype)init {\n\tif (self = [super init]) {" +\
                 "\n\t\tself.type = @\"{0}\";".format(create_name(name)) +\
                 "\n\t\treturn self;\n\t} else {\n\t\treturn nil;\n\t}\n}\n"
    else:
        mtext += "-(instancetype)init {\n\treturn [super init];\n}\n"
    getParams = "\n-(NSDictionary *)getParams\n{\n\tNSMutableDictionary *params =" \
                " [NSMutableDictionary dictionaryWithDictionary: "
    if source.extends:
        getParams += "[super getParams]];\n"
    else:
        getParams += "@{}];\n"

    for field in source.properties:
        if source.extends and field in structure[source.extends].properties:
            pass
        else:
            getParams += "\tif (self.{0})".format(get_last(field.name)) + " {\n"
            if structure[field.name].data_type:
                data_type = structure[field.name].data_type
                if data_type == 'Function':
                    getParams += """\t\tparams[@\"{0}\"] = [NSString stringWithFormat: @"__xx__%@__xx__", self.{1}];\n""".format(get_last(field.name), get_last(field.name))
                elif get_type(data_type) == 'HIColor':
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getData];\n".format(get_last(field.name), get_last(field.name))
                elif get_type(data_type) == 'NSArray<HIColor *>':
                    getParams += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    getParams += "\t\tfor (HIColor *obj in self.{0})".format(get_last(field.name)) + " {\n"
                    getParams += "\t\t\t[array addObject:[obj getData]];\n".format(
                        get_last(field.name))
                    getParams += "\t\t}\n"
                    getParams += "\t\tparams[@\"{0}\"] = array;\n".format(get_last(field.name))
                elif 'NSArray' in str(get_type(data_type)):
                    getParams += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    getParams += "\t\tfor (id obj in self.{0})".format(get_last(field.name)) + " {\n"
                    getParams += "\t\t\tif ([obj isKindOfClass: [HIChartsJSONSerializable class]])".format(get_last(field.name)) + " {\n"
                    getParams += "\t\t\t\t[array addObject:[(HIChartsJSONSerializable *)obj getParams]];\n".format(get_last(field.name))
                    getParams += "\t\t\t}\n"
                    getParams += "\t\t\telse {\n\t\t\t\t[array addObject: obj];\n"
                    getParams += "\t\t\t}\n"
                    getParams += "\t\t}\n"
                    getParams += "\t\tparams[@\"{0}\"] = array;\n".format(get_last(field.name))
                elif structure[field.name].properties:
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(get_last(field.name), get_last(field.name))
                else:
                    getParams += "\t\tparams[@\"{0}\"] = self.{1};\n".format(get_last(field.name), get_last(field.name))
            elif structure[field.name].properties:
                getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(get_last(field.name), get_last(field.name))
            getParams += "\t}\n"
    getParams += "\treturn params;\n"
    getParams += "}\n"
    mtext += getParams
    mtext += "\n@end"
    return mtext


def create_options_files():
    imports = "#import \"HIColor.h\"\n"
    htext = "@interface HIOptions: NSObject\n\n"
    mtext = "#import \"HIOptions.h\"\n\n@implementation HIOptions\n\n"
    mtext += "-(instancetype)init {\n\tif (self = [super init]) {\n" \
             "\t\tHICredits *credits = [[HICredits alloc]init];\n" \
             "\t\tcredits.enabled = @true;\n" \
             "\t\tcredits.text = @\"Highcharts iOS\";\n" \
             "\t\tcredits.href = @\"http://www.highcharts.com/blog/mobile/\";\n" \
             "\t\tself.credits = credits;\n" \
             "\t\treturn self;\n" \
             "\t}\n" \
             "\treturn nil;\n" \
             "}\n\n"
    mtext += "-(NSDictionary *)getParams {\n\tNSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];\n"
    for field in options:
        if field.name != 'global' and field.name != 'lang':
            if field.comment:
                htext += "{0}".format(field.comment)
            if upper_first((create_name(field.name))) in files:
                imports += "#import \"HI{0}.h\"\n".format(upper_first(create_name(field.name)))
            if structure[field.name].data_type:
                if "id" in str(get_type(field.data_type)) and "NSArray" not in str(get_type(field.data_type)):
                    if structure[field.name].properties:
                        htext += "@property(nonatomic, readwrite) {0} *{1};\n\n".format("HI" + upper_first(create_name(field.name)), get_last(field.name))
                    else:
                        htext += "@property(nonatomic, readwrite) {0} {1};\n\n".format(get_type(field.data_type), get_last(field.name))
                elif "NSArray" in str(get_type(field.data_type)) and field.properties:
                    htext += "@property(nonatomic, readwrite) {0}<{1} *> *{2};\n\n".format(get_type(field.data_type),
                                                                                           "HI" + upper_first(create_name(field.name)),
                                                                                           get_last(field.name))
                else:
                    htext += "@property(nonatomic, readwrite) {0} *{1};\n\n".format(get_type(field.data_type),
                                                                                    get_last(field.name))
            else:
                htext += "@property(nonatomic, readwrite) {0} *{1};\n\n".format("HI" + upper_first(create_name(field.name)),
                                                                                get_last(field.name))
    htext += "/**\n* Additional options that are not listed above but are accepted by API\n*/\n"
    htext += "@property(nonatomic, readwrite) NSDictionary *additionalOptions;\n"
    htext += "\n\n-(NSDictionary *)getParams;\n\n"
    for field in options:
        if field.name != 'global' and field.name != "lang":
            mtext += "\tif (self.{0})".format(get_last(field.name)) + " {\n"

            if field.data_type:
                if get_type(field.data_type) == 'HIColor':
                    mtext += "\t\tparams[@\"{0}\"] = [self.{1} getData];\n".format(get_last(field.name),
                                                                                         get_last(field.name))
                elif get_type(field.data_type) == 'NSArray<HIColor *>':
                    mtext += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    mtext += "\t\tfor (HIColor *obj in self.{0})".format(get_last(field.name)) + " {\n"
                    mtext += "\t\t\t[array addObject:[obj getData]];\n".format(
                        get_last(field.name))
                    mtext += "\t\t}\n"
                    mtext += "\t\tparams[@\"{0}\"] = array;\n".format(get_last(field.name))
                elif "NSArray" in str(get_type(field.data_type)):
                    mtext += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    mtext += "\t\tfor (id obj in self.{0})".format(get_last(field.name)) + " {\n"
                    mtext += "\t\t\tif ([obj isKindOfClass: [HIChartsJSONSerializable class]])".format(
                        get_last(field.name)) + " {\n"
                    mtext += "\t\t\t\t[array addObject:[(HIChartsJSONSerializable *)obj getParams]];\n".format(
                        get_last(field.name))
                    mtext += "\t\t\t}\n"
                    mtext += "\t\t\telse {\n\t\t\t\t[array addObject: obj];\n"
                    mtext += "\t\t\t}\n"
                    mtext += "\t\t}\n"
                    mtext += "\t\tparams[@\"{0}\"] = array;\n".format(get_last(field.name))
                elif structure[field.name].properties:
                    mtext += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(get_last(field.name),
                                                                                     get_last(field.name))
                else:
                    mtext += "\t\tparams[@\"{0}\"] = self.{1};\n".format(get_last(field.name), get_last(field.name))
            elif structure[field.name].properties:
                mtext += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(get_last(field.name), get_last(field.name))
            mtext += "\t}\n"
    mtext += "\tif (self.additionalOptions) {\n\t\t[params addEntriesFromDictionary: self.additionalOptions];\n\t}\n\n"
    mtext += "\treturn params;\n"
    mtext += "}\n"
    mtext += "\n@end"
    imports += "\n\n"
    htext += "\n@end\n"
    with open("HIChartsClasses/HIOptions.h", "w") as o:
        o.write(imports + htext)
    with open("HIChartsClasses/HIOptions.m", "w") as m:
        m.write(mtext)


def create_bridge_file():
    text = ""
    for field in bridge:
        text += field
    text += "#import \"HIColor.h\"\n"
    text += "#import \"HIOptions.h\"\n"
    with open("HIBridge.h", "w") as b:
        b.write(text)


def create_files():
    if not os.path.exists("HIChartsClasses"):
        os.makedirs("HIChartsClasses")
    for field in structure:
        if len(field.split(".")) == 1 and len(field.split(">")) == 1:
            options.append(structure[field])
        create_h_file(field)
        create_m_file(field)
    create_options_files()
    create_bridge_file()


def print_structure():
    for c in structure:
        text = "name: {0}, type: {1}, group: {3}, extends: {2}, props: ".format(c, structure[c].data_type, structure[c].extends, structure[c].group)
        for p in structure[c].properties:
            text += "{0} | ".format(p.name)
        print text


def get_documentation_name(name, doubleLast = True):
    # it is v1
    ret = str(name)
    ret = ret.replace("description", "definition")
    x = ret.split("<")

    # uncomment to get v2
    #if len(x) > 1:
     #   x = x[0] + "-" + x[1]
      #  x = x.replace(">", "")
    #else:
     #   x = x[0]
    #x = x.split(".")

    x = ret.split(".") # comment to get v2
    if len(x) > 1:
        ret = x[0]
        if len(x) > 2:
            for i in range(1, len(x) - 1):
                ret += "-{0}".format(x[i])
        if doubleLast:
            if structure[name].properties:
                ret += "-{0}".format(x[len(x) - 1])
            else:
                ret += "--{0}".format(x[len(x) - 1])
        else:
            ret += "-{0}".format(x[len(x) - 1])
    else:
        ret = x[0]
    return ret


def generate_documentation():
    documentation = list()
    for field in structure:
        entry = dict()
        name = get_last(field)
        if name == "global" or name == "lang":
            continue
        returnType = ""
        isParent = False
        fullname = tree[field].info["fullname"]
        if structure[field].properties:
            isParent = True
            returnType = "HI" + upper_first(create_name(field))
        elif structure[field].data_type:
            returnType = get_type(structure[field].data_type)
        parent = None
        if tree[field].parent:
            parent = tree[field].parent
            if parent == "global" or parent == "lang":
                continue
        entry["_id"] = get_documentation_name(field)
        entry["fullname"] = fullname.replace("description", "definition")
        entry["title"] = name.replace("description", "definition")
        if structure[field].description and structure[field].description != "":
            entry["description"] = structure[field].description
        if structure[field].demo:
            entry["demo"] = structure[field].demo
        if structure[field].defaults:
            entry["defaults"] = structure[field].defaults
        if structure[field].values:
            entry["values"] = structure[field].values
        if tree[field].info and "since" in tree[field].info:
            entry["since"] = tree[field].info["since"]
        entry["deprecated"] = tree[field].info["deprecated"] if tree[field].info and "deprecated" in tree[field].info else False
        if tree[field].info and "seeAlso" in tree[field].info:
            entry["seeAlso"] = tree[field].info["seeAlso"]
        if returnType != "":
            entry["returnType"] = returnType
        entry["isParent"] = isParent
        if parent:
            entry["parent"] = get_documentation_name(parent, False)
        documentation.append(entry)
    entry = dict()
    entry["_id"] = "options--additionalOptions"
    entry["fullname"] = "options.additionalOptions"
    entry["title"] = "additionalOptions"
    entry["description"] = "Additional options that are not listed but are accepted by API"
    entry["returnType"] = "NSDictionary"
    entry["isParent"] = False
    documentation.append(entry)
    with open('APIDocs.json', 'w') as json_file:
        json.dump(documentation, json_file)


def main():
    with open('HighchartsJSON') as data_file:
        data = json.load(data_file)
    count = 0
    for field in data:
        count += 1
        add_to_tree(field)
    #print_tree()
    create_structure()
    #search_for_repetitions()
    #print_structure()
    create_files()
    generate_documentation()

if __name__ == "__main__":
    main()
