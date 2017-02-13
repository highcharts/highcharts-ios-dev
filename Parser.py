import json
import sys
import os
import ast
import pprint

reload(sys)
sys.setdefaultencoding('utf-8')

structure = dict()


class HIClass:
    def __init__(self, description, demo, title, typee, fields, isParent, default, extends):
        self.description = description
        self.demo = demo
        self.title = title
        self.typee = typee
        self.fields = fields
        self.isParent = isParent
        self.default = default
        self.extends = extends
        if self.default == "null" or self.default == "undefined":
            self.default = 'nil'

    def update(self, description, demo, title, typee, isParent, default, extends):
        self.description = description
        self.demo = demo
        self.title = title
        self.typee = typee
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

        name = source["title"]
        x = name.split("<")
        if len(x) > 1:
            extends = x[0]
            x[1] = x[1][:-1]
            name = x[1]
        if name == "id":
            name = "ID"
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
    typee = ""
    isParent = False
    defaults = None
    extends = None

    if "description" in source:
        description = source["description"]
        if "values" in source and len(source["values"]) > 0:
            description += "\n\t* Accepted values: {0}".format(source["values"])

    if "demo" in source:
        demo = source["demo"]

    if "returnType" in source:
        typee = source["returnType"]

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

    if "isParent" in source:
        isParent = source["isParent"]

    if "defaults" in source:
        defaults = source["defaults"]

    if title in structure:
        k = structure[title]
        if not k.extends:
            k.update(description, demo, upperfirst(title), getType(typee), isParent, defaults, extends)
    else:
        structure[title] = HIClass(description, demo, upperfirst(title), getType(typee), dict(), isParent, defaults, extends)


def upperfirst(x):
    return x[0].upper() + x[1:]


def getType(x):
    return {
        "Number": 'NSNumber',
        "Boolean": 'BOOL',
        "Color": 'HexColor',
        "String": 'NSString',
        "Object": 'id',
        "Function": 'Function',
        "Array<Number>": 'NSMutableArray<NSNumber *>',
        "Array<Object>": 'NSMutableArray<id *>',
        "Array": 'NSMutableArray<id *>',
        "Array<String>": 'NSMutableArray<NSString *>',
        "Boolean|Object": "BOOL",
        "String|Number": 'NSString',
        "Array<Array>": 'NSMutableArray<NSArray *>',
        "CSSObject": 'NSMutableDictionary /* <NSString, NSString> */',
        "Array<Color>": 'NSMutableArray<HexColor *>',
        "Array<Object|Array|Number>": 'NSMutableArray<NSArray<NSNumber*> *>',
        "Array<String|Number>": 'NSMutableArray<NSString *>',
        "Array<Object|Number>": 'NSMutableArray<NSNumber *>',
        "Array<Object|Array>": 'NSMutableArray<NSArray *>',
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



            name = "output/{0}.h".format(u)
            bridge += "#import \"{0}.h\"\n".format(u)
            if not os.path.exists("output"):
                os.makedirs("output")
            st = formatToH(dictionary[k])
            with open(name, "w") as h_file:
                h_file.write(st)
            name = "output/{0}.m".format(u)
            st = formatToM(dictionary[k])
            with open(name, "w") as m_file:
                m_file.write(st)

    with open("Bridge.h", "w") as bridge_file:
        bridge_file.write(bridge)


def num(s):
    try:
        return int(s)
    except ValueError:
        try:
            return float(s)
        except ValueError:
            return None


def createDefaultValue(s, typee):
    if typee == 'NSNumber':
        if type(num(s)) is int:
            return "[NSNumber numberWithInt:{0}]".format(num(s))
        elif type(num(s)) is float:
            return "[NSNumber numberWithDouble:{0}]".format(num(s))
        else:
            return "[NSNumber new]"
    elif typee == 'BOOL':
        if s == "true":
            return 'YES'
        else:
            return 'NO'
    elif typee == 'HexColor':
        if s == "nil":
            return "[HexColor new]"
        else:
            return "[HexColor colorWithString: \"{0}\"]".format(s)
    elif typee == 'NSString':
        if s == "nil":
            return "nil"
        else:
            return "[NSString stringWithString: @\"{0}\"]".format(s)
    elif typee == 'id':
        # NOT SURE
        return "{0}".format(s)
    elif typee == 'Function':
        # NOT SURE
        return "{0}".format(s)
    elif typee == 'NSMutableDictionary /* <NSString, NSString> */':
        txt = "@{"
        data = json.loads(s)
        for key in data:
            txt += "\"{0}\" : @\"{1}\",".format(key, data[key])
        txt = txt[:-1]
        txt += "}"
        return txt
    elif typee == 'NSMutableArray<HexColor *>':
        x = ast.literal_eval(s)
        txt = "[NSMutableArray arrayWithObjects:"
        for i in x:
            txt += " [HexColor colorWithString: \"{0}\"],".format(i)
        txt = txt[:-1]
        txt += "]"
        return txt
    elif typee == 'NSMutableArray<NSString *>':
        t = str(s).replace("[", "")
        t = t.replace("]", "")
        t = t.replace(" ", "")
        t = t.split(",")
        txt = "[NSMutableArray arrayWithObjects:"
        for i in t:
            if i == 'null':
                txt += " nil,"
            else:
                txt += "@\"{0}\"".format(i)
        txt = txt[:-1]
        txt += "]"
        return txt
    elif typee == 'NSMutableArray<NSNumber *>':
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
                txt += " [NSNumber new],"
        txt = txt[:-1]
        txt += "]"
        return txt
    else:
        print "Not supported yet: {0} = {1}".format(s, typee)


def formatToM(k):
    text = "#import \"{0}.h\"\n\n@implementation {1}\n\n".format(k.title, k.title)

    text += "-(instancetype)initWithParameters:"
    count = 0
    for field in k.fields:
        if count == 0:
            if k.fields[field].isParent:
                text += "({0} *){1}".format(k.fields[field].title, field)
            else:
                if k.fields[field].typee == "BOOL":
                    text += "({0}){1}".format(k.fields[field].typee, field)
                else:
                    text += "({0} *){1}".format(k.fields[field].typee, field)
            count += 1
        else:
            if k.fields[field].isParent:
                text += " {0}:({1} *){2}".format(field, k.fields[field].title, field)
            else:
                if k.fields[field].typee == "BOOL":
                    text += " {0}:({1}){2}".format(field, k.fields[field].typee, field)
                else:
                    text += " {0}:({1} *){2}".format(field, k.fields[field].typee, field)

    text += " {\n"
    text += "\tif(self = [super init]) {\n"
    for field in k.fields:
        text += "\t\tself.{0} = {1};\n".format(field, field)
    text += "\t\treturn self;\n"
    text += "\t} else {\n\t\treturn nil;\n\t}\n"
    text += "}\n\n"



    defaults = False
    for field in k.fields:
        if k.fields[field].default:
            defaults = True
            break

    if defaults:
        count = 0
        text += "-(instancetype)initWithDefaults:"
        for field in k.fields:
            if count == 0:
                if not k.fields[field].default:
                    if k.fields[field].isParent:
                        text += "({0} *){1}".format(k.fields[field].title, field)
                    else:
                        if k.fields[field].typee == "BOOL":
                            text += "({0}){1}".format(k.fields[field].typee, field)
                        else:
                            text += "({0} *){1}".format(k.fields[field].typee, field)
                    count += 1
            else:
                if not k.fields[field].default:
                    if k.fields[field].isParent:
                        text += " {0}:({1} *){2}".format(field, k.fields[field].title, field)
                    else:
                        if k.fields[field].typee == "BOOL":
                            text += " {0}:({1}){2}".format(field, k.fields[field].typee, field)
                        else:
                            text += " {0}:({1} *){2}".format(field, k.fields[field].typee, field)
        text += " {\n"
        init = "\treturn [self initWithParameters:"
        count = 0
        for field in k.fields:
            if k.fields[field].default:
                if count == 0:
                    init += " {0}".format(createDefaultValue(k.fields[field].default, k.fields[field].typee))
                    count += 1
                else:
                    init += " {0}:{1}".format(field, createDefaultValue(k.fields[field].default, k.fields[field].typee))
            else:
                if count == 0:
                    init += " {0}".format(field)
                    count += 1
                else:
                    init += " {0}:{1}".format(field, field)

        init += "]\n}\n"
        text += init

    getParams = "\n-(NSDictionary) getParams\n{\n\tNSMutableDictionary *params = " \
                "@[NSMutableDictionary dictionaryWithDictionary: @{}];\n"
    for field in k.fields:
        if k.fields[field].typee == "BOOL":
            getParams += "\tif ({0})".format(field) + "{" + "\n\t\tparams[@\"{0}\"] = @\"true\";\n\t".format(field) + "}" +\
                        " else " + "{" + "\n\t\tparams[@\"{0}\"] = @\"false\";\n\t".format(field) + "}\n"
        else:
            getParams += "\tif ({0})".format(field) + " {\n"
            if k.fields[field].isParent:
                getParams += "\t\tparams[@\"{0}\"] = {1}.getParams();\n".format(field, field)
            else:
                getParams += "\t\tparams[@\"{0}\"] = {1};\n".format(field, field)
            getParams += "\t}\n"

    getParams += "\treturn params;\n"
    getParams += "}\n"
    text += getParams
    text += "\n@end"
    return text


def formatToH(k):
    text = "#import <Foundation/Foundation.h>\n"
    if k.extends:
        text += "#import \"{0}.h\"\n".format(upperfirst(k.extends))

    text += "/**\n*  {0}\n*  {1}\n*/\n".format(k.description, k.demo)
    if k.extends:
        text += "@interface {0}: {1}\n".format(k.title, upperfirst(k.extends))
    else:
        text += "@interface {0}: NSObject\n".format(k.title)
    for field in k.fields:
        if k.extends:
            if not field in structure[k.extends].fields:
                text += "\n\t/**\n\t*  {0}\n\t*  {1}\n\t*/\n".format(k.fields[field].description, k.fields[field].demo)
                if k.fields[field].isParent:
                    if k.fields[field].extends:
                        text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].extends, k.fields[field].extends)
                    else:
                        text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].title, field)
                else:
                    if k.fields[field].typee == "BOOL":
                        text += "\t@property(nonatomic, readwrite) {0} {1};\n".format(k.fields[field].typee, field)
                    else:
                        text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].typee, field)
        else:
            text += "\n\t/**\n\t*  {0}\n\t*  {1}\n\t*/\n".format(k.fields[field].description, k.fields[field].demo)
            if k.fields[field].isParent:
                text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].title, field)
            else:
                if k.fields[field].typee == "BOOL":
                    text += "\t@property(nonatomic, readwrite) {0} {1};\n".format(k.fields[field].typee, field)
                else:
                    text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(k.fields[field].typee, field)
    text += "\n\t-(NSDictionary) getParams;\n"
    text += "@end"
    return text


with open('HighchartsJSON') as data_file:
    data = json.load(data_file)

for field in data:
    if "title" in field and len(field["title"]) > 0:
        generateClass(field)
        if "parent" in field and field["parent"] != "":
            addFieldToParent(field)

createFiles(structure)
