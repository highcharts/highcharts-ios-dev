import json
import sys
import os
import ast

reload(sys)
sys.setdefaultencoding('utf-8')

structure = dict()
options = list()


class HIClass:
    def __init__(self, description, demo, title, dataType, fields, isParent, default, extends):
        self.description = description
        self.demo = demo
        self.title = title
        self.dataType = dataType
        self.fields = fields
        self.isParent = isParent
        self.default = default
        self.extends = extends
        if self.default == "null" or self.default == "undefined":
            self.default = 'nil'

    def update(self, description, demo, title, dataType, isParent, default, extends):
        self.description = description
        self.demo = demo
        self.title = title
        self.dataType = dataType
        self.isParent = isParent
        self.default = default
        self.extends = extends
        if self.default == "null" or self.default == "undefined":
            self.default = 'nil'


def addFieldToParent(source):
    extends = None
    fullname = source["fullname"].split(".")
    if len(fullname) > 1:
        parent = fullname[len(fullname) - 2]
        x = parent.split("<")
        if len(x) > 1:
            x[1] = x[1][:-1]
            parent = x[1]
        if parent == "id":
            parent = "ID"
        if parent == "point":
            parent = "HIPoint"
        if parent == "description":
            parent = "definition"

        name = source["title"]
        x = name.split("<")
        if len(x) > 1:
            extends = x[0]
            x[1] = x[1][:-1]
            name = x[1]
        if name == "id":
            name = "ID"
        if name == "point":
            name = "HIPoint"
        if name == "description":
            name = "definition"
        if extends:
            name = extends

        if parent in structure:
            structure[parent].fields[name] = structure[name]
        else:
            structure[parent] = HIClass(None, None, None, None, dict(), None, None, extends)
            structure[parent].fields[name] = structure[name]


def generateClass(source):
    description = ""
    demo = ""
    title = ""
    dataType = ""
    isParent = False
    defaults = None
    extends = None

    if "description" in source:
        description = source["description"]
        if "values" in source and len(source["values"]) > 0:
            description += "\n\t*  Accepted values: {0}".format(source["values"])

    if "demo" in source:
        demo = source["demo"]

    if "returnType" in source:
        dataType = source["returnType"]

    if "title" in source:
        u = source["title"]
        x = u.split("<")
        if len(x) > 1:
            extends = x[0]
            x[1] = x[1][:-1]
            u = x[1]
        title = u
        if title == "id":
            title = "ID"
        if title == "point":
            title = "HIPoint"
        if title == "description":
            title = "definition"

    if "isParent" in source:
        isParent = source["isParent"]

    if "defaults" in source:
        defaults = source["defaults"]
        description += "\n\t*  Default value: {0}".format(defaults)

    if title in structure:
        k = structure[title]
        if not k.extends:
            k.update(description, demo, upperfirst(title), getType(dataType), isParent, defaults, extends)
    else:
        structure[title] = HIClass(description, demo, upperfirst(title), getType(dataType), dict(), isParent, defaults, extends)

    if "parent" not in source and not extends:
        options.append((str(title), getType(dataType)))


def upperfirst(x):
    return x[0].upper() + x[1:]


def getType(x):
    return {
        "Number": 'NSNumber',
        "Boolean": 'NSNumber', # /* Bool */
        "Color": 'HexColor',
        "String": 'NSString',
        "Object": 'id',
        "Function": 'NSString',
        "Array<Number>": 'NSMutableArray<NSNumber *>',
        "Array<Object>": 'NSMutableArray',
        "Array": 'NSMutableArray',
        "Array<String>": 'NSMutableArray<NSString *>',
        "Boolean|Object": "NSNumber", # /* Bool */
        "String|Number": 'NSString',
        "Array<Array>": 'NSMutableArray<NSArray *>',
        "CSSObject": 'NSMutableDictionary /* <NSString, NSString> */',
        "Array<Color>": 'NSMutableArray<HexColor *>',
        "Array<Object|Array|Number>": 'NSMutableArray /* <Data, NSNumber, NSArray> */',
        "Array<String|Number>": 'NSMutableArray<NSString *>',
        "Array<Object|Number>": 'NSMutableArray',
        "Array<Object|Array>": 'NSMutableArray',
        "Number|String": 'NSString',
        "String|HTMLElement": 'NSString',
        "Array<Array<Mixed>>": 'NSMutableArray<NSArray *>',
        "String|Object": 'NSString',
        "Mixed": 'id',
        "Number|Boolean": 'NSNumber',
        "": 'id',
        "plotOptions.series.states": 'NSMutableArray<States *>'
    }[str(x)]


def createFiles(dictionary):
    bridge = ""
    for k in dictionary:
        if dictionary[k].fields:
            t = str(k)
            u = upperfirst(t)
            x = u.split("<")
            if len(x) > 1:
                x[1] = x[1][:-1]
                x[1] = upperfirst(x[1])
                u = "{0}{1}".format(x[0], x[1])

            name = "HIChartsClasses/{0}.h".format(u)
            bridge += "#import \"{0}.h\"\n".format(u)
            if not os.path.exists("HIChartsClasses"):
                os.makedirs("HIChartsClasses")
            st = formatToH(dictionary[k])
            with open(name, "w") as h_file:
                h_file.write(st)
            name = "HIChartsClasses/{0}.m".format(u)
            st = formatToM(dictionary[k])
            with open(name, "w") as m_file:
                m_file.write(st)

    with open("HIBridge.h", "w") as bridge_file:
        bridge_file.write(bridge)
        bridge_file.write("#import \"HexColor.h\"")

    with open("HIChartsClasses/Options.h", "w") as optionsH_file:
        optionsH_file.write(createOptionsH())

    with open("HIChartsClasses/Options.m", "w") as optionsM_file:
        optionsM_file.write(createOptionsM())


def createOptionsH():
    text = "@interface Options: NSObject\n\n"
    imports = "#import <Foundation/Foundation.h>\n"
    for s in options:
        if s[1] == "id":
            imports += "#import \"{0}.h\"\n".format(upperfirst(s[0]))
            text += "\t@property(nonatomic, readwrite) {0} *{1};\n\n".format(upperfirst(s[0]), s[0])
        else:
            text += "\t@property(nonatomic, readwrite) {0} *{1};\n\n".format(s[1], s[0])
    text += "\t-(NSDictionary *)getParams;\n\n@end"
    imports += "\n\n\n"
    return imports + text


def createOptionsM():
    text = "#import \"Options.h\"\n\n@implementation Options\n\n-(instancetype)init {\n\treturn [super init];\n}\n\n" \
           "-(NSDictionary *) getParams\n{\n" \
           "\tNSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary: @{}];\n"
    for s in options:
        text += "\tif (self.{0})".format(s[0]) + " {\n"
        if s[1] == "id":
            text += "\t\tparams[@\"{0}\"] = [self.{0} getParams];\n".format(s[0])
        else:
            text += "\t\tparams[@\"{0}\"] = self.{0};\n".format(s[0])
        text += "\t}\n"
    text += "\treturn params;\n"
    text += "}\n\n@end"
    return text


def num(s):
    try:
        return int(s)
    except ValueError:
        try:
            return float(s)
        except ValueError:
            return None


def createDefaultValue(s, dataType):
    if dataType == 'NSNumber':
        if type(num(s)) is int:
            return "[NSNumber numberWithInt:{0}]".format(num(s))
        elif type(num(s)) is float:
            return "[NSNumber numberWithDouble:{0}]".format(num(s))
        else:
            return "nil"
    elif dataType == 'BOOL':
        if s == "true":
            return 'YES'
        else:
            return 'NO'
    elif dataType == 'HexColor':
        if s == "nil":
            return "nil"
        else:
            return "[[HexColor alloc] initWithString: @\"{0}\"]".format(s)
    elif dataType == 'NSString':
        if s == "nil":
            return "nil"
        else:
            x = s.replace("\"", "\\\"")
            return "@\"{0}\"".format(x)
    elif dataType == 'id':
        # NOT SURE
        return "{0}".format(s)
    elif dataType == 'Function':
        # NOT SURE
        return "{0}".format(s)
    elif dataType == 'NSMutableDictionary /* <NSString, NSString> */':
        txt = "[NSMutableDictionary dictionaryWithDictionary: @{"
        data = json.loads(s)
        for key in data:
            txt += "@\"{0}\" : @\"{1}\",".format(key, data[key])
        txt = txt[:-1]
        txt += "}]"
        return txt
    elif dataType == 'NSMutableArray<HexColor *>':
        x = ast.literal_eval(s)
        txt = "[NSMutableArray arrayWithObjects:"
        for i in x:
            txt += " [[HexColor alloc] initWithString: @\"{0}\"],".format(i)
        txt += " nil]"
        return txt
    elif dataType == 'NSMutableArray<NSString *>':
        t = s.replace("[", "")
        t = t.replace("]", "")
        t = t.replace(" ", "")
        t = t.split(",")
        txt = "[NSMutableArray arrayWithObjects:"
        for i in t:
            if i == 'null':
                txt += " @\"null\","
            else:
                txt += " @{0},".format(i)
        txt += " nil]"
        return txt
    elif dataType == 'NSMutableArray<NSNumber *>':
        t = str(s).replace("[", "")
        t = t.replace("]", "")
        t = t.replace(" ", "")
        t = t.split(",")
        txt = "[NSMutableArray arrayWithObjects:"
        for i in t:
            if type(num(i)) is int:
                txt += " [NSNumber numberWithInt:{0}],".format(num(i))
            elif type(num(i)) is float:
                txt += " [NSNumber numberWithDouble:{0}],".format(num(i))
            else:
                txt += " nil,"
        txt += " nil]"
        return txt
    else:
        print "Not supported yet: {0} = {1}".format(s, dataType)


def formatToM(k):
    text = "#import \"{0}.h\"\n\n@implementation {1}\n\n".format(k.title, k.title)

    text += "-(instancetype)init {\n\treturn [super init];\n}\n"
    if k.default:
        text += "-(instancetype)initWithDefaults {\n"
        text += "\tif (self = [super init]) {\n"
        for field in k.fields:
            if k.fields[field].default and not k.fields[field].fields:
                text += "\t\tself.{0} = {1};\n".format(field, createDefaultValue(k.fields[field].default, k.fields[field].dataType))
            elif k.fields[field].dataType == "BOOL" and not k.fields[field].fields:
                text += "\t\tself.{0} = NO;\n".format(field)
        text += "\t\treturn self;\n"
        text += "\t} else {\n\t\treturn nil;\n\t}\n"
        text += "}\n\n"

    getParams = "\n-(NSDictionary *) getParams\n{\n\tNSMutableDictionary *params = " \
                "[NSMutableDictionary dictionaryWithDictionary: "
    if k.extends:
        getParams += "[super getParams]];\n"
    else:
        getParams += "@{}];\n"

    for field in k.fields:
        if k.extends and field in structure[k.extends].fields:
            pass
        else:
            if k.fields[field].dataType == "BOOL" and not k.fields[field].fields:
                getParams += "\tif (self.{0})".format(field) + " {" + "\n\t\tparams[@\"{0}\"] = @\"true\";\n\t".format(field) + "}" #+\
                            #" else " + "{" + "\n\t\tparams[@\"{0}\"] = @\"false\";\n\t".format(field) + "}\n"
            else:
                getParams += "\tif (self.{0})".format(field) + " {\n"
                if k.fields[field].isParent and "NSMutable" not in k.fields[field].dataType:
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(field, field)
                else:
                    if k.fields[field].dataType == "HexColor":
                        getParams += "\t\tparams[@\"{0}\"] = [self.{1} getString];\n".format(field, field)
                    else:
                        getParams += "\t\tparams[@\"{0}\"] = self.{1};\n".format(field, field)
                getParams += "\t}\n"
    getParams += "\treturn params;\n"
    getParams += "}\n"
    text += getParams
    text += "\n@end"
    return text


def formatToH(k):
    imports = "#import <Foundation/Foundation.h>\n"
    colorAdded = False
    text = ""
    if k.extends:
        imports += "#import \"{0}.h\"\n".format(upperfirst(k.extends))

    text += "/**\n*  {0}\n*  {1}\n*/\n".format(k.description, k.demo)
    if k.extends:
        text += "@interface {0}: {1}\n".format(k.title, upperfirst(k.extends))
    else:
        text += "@interface {0}: NSObject\n".format(k.title)
    for field in k.fields:
        if k.fields[field].dataType == "HexColor" and not colorAdded:
            imports += "#import \"HexColor.h\"\n"
            colorAdded = True
        if k.extends:
            if field not in structure[k.extends].fields:
                text += "\n\t/**\n\t*  {0}\n\t*  {1}\n\t*/\n".format(k.fields[field].description, k.fields[field].demo)
                if k.fields[field].isParent:
                    imports += "#import \"{0}.h\"\n".format(upperfirst(field))
                    if k.fields[field].extends:
                        text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].extends, k.fields[field].extends)
                    else:
                        text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].title, field)
                else:
                    if k.fields[field].dataType == "BOOL" or k.fields[field].dataType == "id":
                        text += "\t@property(nonatomic, readwrite) {0} {1};\n".format(k.fields[field].dataType, field)
                    else:
                        text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].dataType, field)
        else:
            text += "\n\t/**\n\t*  {0}\n\t*  {1}\n\t*/\n".format(k.fields[field].description, k.fields[field].demo)
            if k.fields[field].isParent:
                imports += "#import \"{0}.h\"\n".format(upperfirst(field))
                if "NSMutable" in k.fields[field].dataType:
                    text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].dataType, field)
                else:
                    text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].title, field)
            else:
                if k.fields[field].dataType == "BOOL" or k.fields[field].dataType == "id":
                    text += "\t@property(nonatomic, readwrite) {0} {1};\n".format(k.fields[field].dataType, field)
                else:
                    text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].dataType, field)
    if k.default:
        text += "\n\t-(instancetype)initWithDefaults;\n"
    text += "\n\t-(NSDictionary *) getParams;\n"
    text += "@end"
    return imports + text


with open('HighchartsJSON') as data_file:
    data = json.load(data_file)

for field in data:
    if "title" in field and len(field["title"]) > 0 and "description" in field:
        generateClass(field)
        if "parent" in field and field["parent"] != "":
            addFieldToParent(field)

createFiles(structure)
