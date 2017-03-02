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


class HIChartsClass:
    def __init__(self, name, dataType, description, demo, values, defaults):
        self.name = name
        self.dataType = dataType
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
            if self.defaults:
                self.comment += "* default: {0}\n".format(self.defaults)
            self.comment += "*/\n"
            self.comment = cleanComment(self.comment)

    def update(self, source):
        self.dataType = source.dataType
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
            if self.defaults:
                self.comment += "* default: {0}\n".format(self.defaults)
            self.comment += "*/\n"
            self.comment = cleanComment(self.comment)

    def addProperty(self, variable):
        self.properties.append(variable)


def cleanComment(comment):
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
    def addChild(self, child):
        self.children.append(child)

    def update(self, parent, info):
        self.parent = parent
        self.info = info


def getType(x):
    return {
        "Number": 'NSNumber',
        "Boolean": 'NSNumber /* Bool */',
        "Color": 'HIColor',
        "String": 'NSString',
        "Object": 'id',
        "Function": 'NSString /* Function */',
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
        "Array<String|Number>": 'NSArray<id> /* <NSString, NSNumber> */',
        "Array<Object|Number>": 'NSArray /* <id, NSNumber> */',
        "Array<Object|Array>": 'NSArray',
        "Number|String": 'id /* NSString, NSNumber */',
        "String|HTMLElement": 'NSString',
        "Array<Array<Mixed>>": 'NSArray<NSArray *>',
        "String|Object": 'id /* NSString, id */',
        "Mixed": 'id',
        "Number|Boolean": 'NSNumber',
        "": 'id',
        "plotOptions.series.states": 'NSArray'
    }[str(x)]


def upperfirst(x):
    r = x[0].upper() + x[1:]
    # if r == 'Point':
    #     r = 'HIPoint'
    return r


def lowerfirst(x):
    return x[0].lower() + x[1:]


def getLast(x):
    last = ''
    s = x.split("<")
    if len(s) > 1:
        n = s[1].split(".")
        last = n[len(n) - 1]
    else:
        n = s[0].split(".")
        last = n[len(n) - 1]
    if last == 'description':
        last = 'definition'
    return last


def searchForRepetitions():
    for key1 in structure:
        if not structure[key1].checked:
            search(key1)


def search(key1):
    duplicates = list()
    for key2 in structure:
        if key1 != key2:
            if getLast(structure[key1].name) == getLast(structure[key1].name):
                if structure[key1].dataType == structure[key2].dataType:
                    if len(structure[key1].properties) == len(structure[key2].properties):
                        if structure[key1].description == structure[key2].description:
                            if key1 != "xAxis.breaks" and key2 != "xAxis.breaks":
                                all = True
                                for p1 in structure[key1].properties:
                                    ok = False
                                    for p2 in structure[key2].properties:
                                        if getLast(p1.name) == getLast(p2.name):
                                            ok = True
                                    if not ok:
                                        all = False
                                if all:
                                    duplicates.append(key2)
    name = getLast(key1)
    if name in structure:
        x = key1.split(".")
        if len(x) > 1:
            name = x[len(x) - 2] + upperfirst(x[len(x) - 1])
        else:
            name = 'HI' + name
    # x = key1.split(".")
    # if len(x) > 1:
    #     name = x[len(x) - 2] + x[len(x) - 1]
    # else:
    #     name = getLast(key1)
    # if name in structure:
    #     name = 'HI' + name


    for i in duplicates:
        structure[i].checked = True
        structure[i].duplicate = True
        structure[i].group = name


def addToTree(source):
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
            tree[parent].addChild(node)
        else:
            p = Node(parent, None, None)
            tree[parent] = p
            tree[parent].addChild(node)


def printTree():
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


def createClass(node):
    source = node.info
    dataType = None
    description = None
    demo = None
    values = None
    defaults = None
    if source:
        if "description" in source:
            description = source["description"]

        if "values" in source and len(source["values"]) > 0:
            values = source["values"]

        if "default" in source:
            defaults = source["default"]

        if "demo" in source:
            demo = source["demo"]

        if "returnType" in source:
            dataType = source["returnType"]

        name = node.name
        if name == "id":
            name = "ID"
        elif name == "point":
            name = "HIPoint"
        elif name == "description":
            name = "definition"

        c = HIChartsClass(name, dataType, description, demo, values, defaults)
        return c


def createStructure():
    for node in tree:
        c = createClass(tree[node])
        if node in structure:
            structure[node].update(c)
        else:
            structure[node] = c
        if tree[node].children:
            if tree[node].parent:
                if tree[node].parent in structure:
                    structure[tree[node].parent].addProperty(c)
                else:
                    p = HIChartsClass(tree[node].parent, None, None, None, None, None)
                    structure[tree[node].parent] = p
                    structure[tree[node].parent].addProperty(c)
        elif tree[node].parent:
            if tree[node].parent in structure:
                structure[tree[node].parent].addProperty(c)
            else:
                p = HIChartsClass(tree[node].parent, None, None, None, None, None)
                structure[tree[node].parent] = p
                structure[tree[node].parent].addProperty(c)


def createName(source):
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
            name += upperfirst(i)
    return name


def createHFile(name):
    source = structure[name]
    h = None
    if source.properties:
        if source.group:
            if source.group not in groups:
                groups.append(source.group)
                h = formatToH(source.group, source)
                name = source.group
        else:
            h = formatToH(name, source)

        if h:
            filename = "HIChartsClasses/HI{0}.h".format(upperfirst(createName(name)))
            files.append(upperfirst(createName(name)))
            with open(filename, "w") as h_file:
                h_file.write(h)


def createMFile(name):
    source = structure[name]
    m = None
    if source.properties:
        if source.group:
            m = formatToM(source.group, source)
            name = source.group
        else:
            m = formatToM(name, source)

        if m:
            filename = "HIChartsClasses/HI{0}.m".format(upperfirst(createName(name)))
            with open(filename, "w") as m_file:
                m_file.write(m)


def formatToH(name, source):
    imports = ""
    colorAdded = False
    htext = ""
    if source.extends is not None:
        imports += "#import \"{0}.h\"\n".format("HI" + upperfirst(source.extends))
        if source.comment:
            htext += source.comment
        htext += "@interface {0}: {1}\n\n".format("HI" + upperfirst(createName(name)), "HI" + upperfirst(source.extends))
    else:
        if source.comment:
            htext += source.comment
        htext += "@interface {0}: HIChartsJSONSerializable\n\n".format("HI" + upperfirst(createName(name)))
    bridge.add("#import \"{0}.h\"\n".format("HI" + upperfirst(createName(name))))
    for field in source.properties:
        if source.extends:
            skip = False
            for i in structure[source.extends].properties:
                if getLast(field.name) == getLast(i.name):
                    skip = True
            if skip:
                continue
        if field.comment:
            htext += "{0}".format(field.comment)
        if field.dataType:
            if "id" in str(getType(field.dataType)) and "NSArray" not in str(getType(field.dataType)) and not structure[field.name].properties:
                htext += "@property(nonatomic, readwrite) id {0};\n".format(getLast(field.name))
            elif "NSArray" in str(getType(field.dataType)) and structure[field.name].properties:
                htext += "@property(nonatomic, readwrite) {0} <{1} *> *{2};\n".format(getType(field.dataType),
                                                                                      "HI" + upperfirst(
                                                                                            createName(field.name)),
                                                                                      getLast(field.name))
                imports += "#import \"{0}.h\"\n".format("HI" + upperfirst(createName(field.name)))
            elif "NSArray" in str(getType(field.dataType)):
                htext += "@property(nonatomic, readwrite) {0} *{1};\n".format(getType(field.dataType), getLast(field.name))
            elif field.dataType == "Object":
                if structure[field.name].properties:
                    htext += "@property(nonatomic, readwrite) {0} *{1};\n".format("HI" + upperfirst(createName(field.name)), getLast(field.name))
                    imports += "#import \"{0}.h\"\n".format("HI" + upperfirst(createName(field.name)))
                else:
                    htext += "@property(nonatomic, readwrite) id {0};\n".format(getLast(field.name))

            else:
                if getType(field.dataType) == "HIColor" and not colorAdded:
                    colorAdded = True
                if structure[field.name].properties:
                    htext += "@property(nonatomic, readwrite) {0} *{1};\n".format("HI" + upperfirst(createName(field.name)), getLast(field.name))
                    imports += "#import \"{0}.h\"\n".format("HI" + upperfirst(createName(field.name)))
                else:
                    htext += "@property(nonatomic, readwrite) {0} *{1};\n".format(getType(field.dataType), getLast(field.name))
        else:
            if not field.dataType and not structure[field.name].properties:
                htext += "@property(nonatomic, readwrite) id {0};\n".format(getLast(field.name))
            elif structure[field.name].properties:
                name = createName(field.name)
                htext += "@property(nonatomic, readwrite) {0} *{1};\n".format("HI" + upperfirst(name), getLast(field.name))
                imports += "#import \"{0}.h\"\n".format("HI" + upperfirst(name))

    htext += "\n-(NSDictionary *)getParams;\n\n"
    htext += "@end\n"
    if imports == "":
        imports += "#import \"HIChartsJSONSerializable.h\"\n"
    if colorAdded:
        imports += "#import \"HIColor.h\"\n"
    imports += "\n\n"
    return imports + htext


def formatToM(name, source):
    mtext = "#import \"{0}.h\"\n\n".format("HI" + upperfirst(createName(name)))
    mtext += "@implementation {0}\n\n".format("HI" + upperfirst(createName(name)))
    if source.extends:
        mtext += "-(instancetype)init {\n\tif (self = [super init]) {" +\
                 "\n\t\tself.type = @\"{0}\";".format(createName(name)) +\
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
            getParams += "\tif (self.{0})".format(getLast(field.name)) + " {\n"
            if structure[field.name].dataType:
                if getType(structure[field.name].dataType) == 'HIColor':
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getData];\n".format(getLast(field.name), getLast(field.name))
                elif getType(structure[field.name].dataType) == 'NSArray<HIColor *>':
                    getParams += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    getParams += "\t\tfor (HIColor *obj in self.{0})".format(getLast(field.name)) + " {\n"
                    getParams += "\t\t\t[array addObject:[obj getData]];\n".format(
                        getLast(field.name))
                    getParams += "\t\t}\n"
                    getParams += "\t\tparams[@\"{0}\"] = array;\n".format(getLast(field.name))
                elif 'NSArray' in str(getType(structure[field.name].dataType)):
                    getParams += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    getParams += "\t\tfor (id obj in self.{0})".format(getLast(field.name)) + " {\n"
                    getParams += "\t\t\tif ([obj isKindOfClass: [HIChartsJSONSerializable class]])".format(getLast(field.name)) + " {\n"
                    getParams += "\t\t\t\t[array addObject:[(HIChartsJSONSerializable *)obj getParams]];\n".format(getLast(field.name))
                    getParams += "\t\t\t}\n"
                    getParams += "\t\t\telse {\n\t\t\t\t[array addObject: obj];\n"
                    getParams += "\t\t\t}\n"
                    getParams += "\t\t}\n"
                    getParams += "\t\tparams[@\"{0}\"] = array;\n".format(getLast(field.name))
                elif structure[field.name].properties:
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(getLast(field.name), getLast(field.name))
                else:
                    getParams += "\t\tparams[@\"{0}\"] = self.{1};\n".format(getLast(field.name), getLast(field.name))
            elif structure[field.name].properties:
                getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(getLast(field.name), getLast(field.name))
            getParams += "\t}\n"
    getParams += "\treturn params;\n"
    getParams += "}\n"
    mtext += getParams
    mtext += "\n@end"
    return mtext


def createOptionsFiles():
    imports = "#import \"HIColor.h\"\n"
    htext = "@interface HIOptions: NSObject\n\n"
    mtext = "#import \"HIOptions.h\"\n\n@implementation HIOptions\n\n"
    mtext += "-(instancetype)init {\n\treturn [super init];\n}\n\n"
    mtext += "-(NSDictionary *)getParams {\n\tNSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];\n"
    for field in options:
        if field.name != 'global' and field.name != 'lang':
            if field.comment:
                htext += "{0}".format(field.comment)
            if upperfirst((createName(field.name))) in files:
                imports += "#import \"HI{0}.h\"\n".format(upperfirst(createName(field.name)))
            if structure[field.name].dataType:
                if "id" in str(getType(field.dataType)) and "NSArray" not in str(getType(field.dataType)):
                    if structure[field.name].properties:
                        htext += "@property(nonatomic, readwrite) {0} *{1};\n\n".format("HI" + upperfirst(createName(field.name)), getLast(field.name))
                    else:
                        htext += "@property(nonatomic, readwrite) id {0};\n\n".format(getLast(field.name))
                elif "NSArray" in str(getType(field.dataType)) and field.properties:
                    htext += "@property(nonatomic, readwrite) {0}<{1} *> *{2};\n\n".format(getType(field.dataType),
                                                                                           "HI" + upperfirst(createName(field.name)),
                                                                                           getLast(field.name))
                else:
                    htext += "@property(nonatomic, readwrite) {0} *{1};\n\n".format(getType(field.dataType),
                                                                                    getLast(field.name))
            else:
                htext += "@property(nonatomic, readwrite) {0} *{1};\n\n".format("HI" + upperfirst(createName(field.name)),
                                                                                getLast(field.name))
    htext += "\n\n-(NSDictionary *)getParams;\n\n"
    for field in options:
        if field.name != 'global' and field.name != "lang":
            mtext += "\tif (self.{0})".format(getLast(field.name)) + " {\n"

            if field.dataType:
                if getType(field.dataType) == 'HIColor':
                    mtext += "\t\tparams[@\"{0}\"] = [self.{1} getData];\n".format(getLast(field.name),
                                                                                         getLast(field.name))
                elif getType(field.dataType) == 'NSArray<HIColor *>':
                    mtext += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    mtext += "\t\tfor (HIColor *obj in self.{0})".format(getLast(field.name)) + " {\n"
                    mtext += "\t\t\t[array addObject:[obj getData]];\n".format(
                        getLast(field.name))
                    mtext += "\t\t}\n"
                    mtext += "\t\tparams[@\"{0}\"] = array;\n".format(getLast(field.name))
                elif "NSArray" in str(getType(field.dataType)):
                    mtext += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    mtext += "\t\tfor (id obj in self.{0})".format(getLast(field.name)) + " {\n"
                    mtext += "\t\t\tif ([obj isKindOfClass: [HIChartsJSONSerializable class]])".format(
                        getLast(field.name)) + " {\n"
                    mtext += "\t\t\t\t[array addObject:[(HIChartsJSONSerializable *)obj getParams]];\n".format(
                        getLast(field.name))
                    mtext += "\t\t\t}\n"
                    mtext += "\t\t\telse {\n\t\t\t\t[array addObject: obj];\n"
                    mtext += "\t\t\t}\n"
                    mtext += "\t\t}\n"
                    mtext += "\t\tparams[@\"{0}\"] = array;\n".format(getLast(field.name))
                elif structure[field.name].properties:
                    mtext += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(getLast(field.name),
                                                                                     getLast(field.name))
                else:
                    mtext += "\t\tparams[@\"{0}\"] = self.{1};\n".format(getLast(field.name), getLast(field.name))
            elif structure[field.name].properties:
                mtext += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(getLast(field.name), getLast(field.name))
            mtext += "\t}\n"
    mtext += "\treturn params;\n"
    mtext += "}\n"
    mtext += "\n@end"
    imports += "\n\n"
    htext += "\n@end\n"
    with open("HIChartsClasses/HIOptions.h", "w") as o:
        o.write(imports + htext)
    with open("HIChartsClasses/HIOptions.m", "w") as m:
        m.write(mtext)


def createBridgeFile():
    text = ""
    for field in bridge:
        text += field
    text += "#import \"HIColor.h\"\n"
    text += "#import \"HIOptions.h\"\n"
    with open("HIBridge.h", "w") as b:
        b.write(text)


def createFiles():
    if not os.path.exists("HIChartsClasses"):
        os.makedirs("HIChartsClasses")
    for field in structure:
        if len(field.split(".")) == 1 and len(field.split(">")) == 1:
            options.append(structure[field])
        createHFile(field)
        createMFile(field)
    createOptionsFiles()
    createBridgeFile()


def printStructure():
    for c in structure:
        text = "name: {0}, type: {1}, group: {3}, extends: {2}, props: ".format(c, structure[c].dataType, structure[c].extends, structure[c].group)
        for p in structure[c].properties:
            text += "{0} | ".format(p.name)
        print text


def getDocumentationName(name, doubleLast = True):
    ret = str(name)
    ret = ret.replace("description", "definition")
    x = ret.split("<")
    if len(x) > 1:
        x = x[1]
        x = x.replace(">", "")
    else:
        x = x[0]
    x = x.split(".")
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


def generateDocumentation():
    pass
    documentation = list()
    for field in structure:
        entry = dict()
        name = getLast(field).replace(">", "")
        returnType = ""
        isParent = False
        x = tree[field].info["fullname"].split("<")
        if len(x) > 1:
            x = x[1]
        else:
            x = x[0]
        x = x.replace(">", "")
        fullname = x
        if structure[field].properties:
            isParent = True
            returnType = "HI" + upperfirst(createName(field))
        elif structure[field].dataType:
            returnType = getType(structure[field].dataType)
        parent = None
        if tree[field].parent:
            parent = tree[field].parent
        elif name != "global" and name != "lang":
            parent = "options"
        entry["_id"] = getDocumentationName(field)
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
            entry["parent"] = getDocumentationName(parent, False)
        documentation.append(entry)
    entry = dict()
    entry["_id"] = "options"
    entry["fullname"] = "options"
    entry["title"] = "options"
    entry["description"] = ""
    entry["returnType"] = "HIOptions"
    entry["isParent"] = True
    entry["name"] = "options"
    documentation.append(entry)
    with open('APIDocs.json', 'w') as json_file:
        json.dump(documentation, json_file)


def main():
    with open('HighchartsJSON') as data_file:
        data = json.load(data_file)
    count = 0
    for field in data:
        count += 1
        addToTree(field)
    #printTree()
    createStructure()
    #searchForRepetitions()
    #printStructure()
    createFiles()
    generateDocumentation()

if __name__ == "__main__":
    main()
