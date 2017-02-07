import json
import sys
import os

reload(sys)
sys.setdefaultencoding('utf-8')

struktura = dict()



def addFieldToParent(prop):
    fullname = prop["fullname"].split(".")
    if len(fullname) > 1:
        parent = fullname[len(fullname) - 2]
        if parent in struktura:
            struktura[parent].fields[fullname[len(fullname) - 1]] = struktura[str(prop["title"])]
        else:
            struktura[parent] = Klasa(None, None, None, None, dict(), None, None)
            struktura[parent].fields[fullname[len(fullname) - 1]] = struktura[str(prop["title"])]


def generateClass(prop):
    description = ""
    demo = ""
    title = ""
    typee = ""
    isParent = False
    defaults = None

    if "description" in prop:
        description = prop["description"]

    if "demo" in prop:
        demo = prop["demo"]

    if "returnType" in prop:
        typee = prop["returnType"]

    if "title" in prop:
        title = prop["title"]

    if "isParent" in prop:
        isParent = prop["isParent"]

    if "defaults" in prop:
        defaults = prop["defaults"]

    if title in struktura:
        k = struktura[title]
        k.update(description, demo, upperfirst(title), getType(typee), isParent, defaults)
    else:
        struktura[title] = Klasa(description, demo, upperfirst(title), getType(typee), dict(), isParent, defaults)


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
    for klasa in dictionary:
        if dictionary[klasa].fields:
            t = str(klasa)
            u = upperfirst(t)



            # name = "output/{0}.h".format(u)
            # if not os.path.exists("output"):
            #     os.makedirs("output")
            # st = formatToH(dictionary[klasa])
            # with open(name, "w") as h_file:
            #     h_file.write(st)
            # name = "output/{0}.m".format(u)
            st = formatToM(dictionary[klasa])
            # with open(name, "w") as m_file:
            #     m_file.write(st)


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
            return "[NSNumber numberWithInt:{0}".format(num(s))
        elif type(num(s)) is float:
            return "[NSNumber numberWithDouble:{0}".format(num(s))
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
        return "[NSString stringWithString: @\"{0}\"".format(s)
    elif typee == 'id':
        print "This is type id: {0} : {1}".format(s, typee)
    elif typee == 'Function':
        print "This is type function: {0} : {1}".format(s, typee)
    elif typee == 'NSMutableDictionary /* <NSString, NSString> */':
        txt = "@{"
        for key in s:
            txt += "\"{0}\" : @\"{1}\",".format(key, s[key])
        txt = txt[:-1]
        txt += "}"
        return txt
    else:
        print "Other: {0} = {1}".format(s, typee)





def formatToM(klasa):
    text = "#import \"{0}.h\"\n\n@implementation {1}\n\n".format(klasa.title, klasa.title)

    text += "-(instancetype)initWithParameters:"
    count = 0
    for field in klasa.fields:
        if count == 0:
            if klasa.fields[field].isParent:
                text += "({0} *){1}".format(klasa.fields[field].title, field)
            else:
                if klasa.fields[field].typee == "BOOL":
                    text += "({0}){1}".format(klasa.fields[field].typee, field)
                else:
                    text += "({0} *){1}".format(klasa.fields[field].typee, field)
            count += 1
        else:
            if klasa.fields[field].isParent:
                text += " {0}:({1} *){2}".format(field, klasa.fields[field].title, field)
            else:
                if klasa.fields[field].typee == "BOOL":
                    text += " {0}:({1}){2}".format(field, klasa.fields[field].typee, field)
                else:
                    text += " {0}:({1} *){2}".format(field, klasa.fields[field].typee, field)

    text += " {\n"
    text += "\tif(self = [super init]) {\n"
    for field in klasa.fields:
        text += "\t\tself.{0} = {1};\n".format(field, field)
    text += "\t\treturn self;\n"
    text += "\t} else {\n\t\treturn nil;\n\t}\n"
    text += "}\n\n"

    count = 0
    text += "-(instancetype)initWithDefaults:"
    for field in klasa.fields:
        if count == 0:
            if not klasa.fields[field].default:
                if klasa.fields[field].isParent:
                    text += "({0} *){1}".format(klasa.fields[field].title, field)
                else:
                    if klasa.fields[field].typee == "BOOL":
                        text += "({0}){1}".format(klasa.fields[field].typee, field)
                    else:
                        text += "({0} *){1}".format(klasa.fields[field].typee, field)
                count += 1
        else:
            if not klasa.fields[field].default:
                if klasa.fields[field].isParent:
                    text += " {0}:({1} *){2}".format(field, klasa.fields[field].title, field)
                else:
                    if klasa.fields[field].typee == "BOOL":
                        text += " {0}:({1}){2}".format(field, klasa.fields[field].typee, field)
                    else:
                        text += " {0}:({1} *){2}".format(field, klasa.fields[field].typee, field)
    text += " {\n"

    init = "\treturn [self initWithParameters:"
    count = 0
    for field in klasa.fields:
        if klasa.fields[field].default:
            createDefaultValue(klasa.fields[field].default, klasa.fields[field].typee)
        if count == 0:
            init += "{0}".format(field)
            count += 1
        else:
            init += " {0}:{1}".format(field, field)

    init += "]\n}\n"
    text += init
    text += "\n@end"
    return text


def formatToH(klasa):
    text = "#import <Foundation/Foundation.h>\n\n"
    text += "/**\n*  {0}\n*  {1}\n*/\n".format(klasa.description, klasa.demo)
    text += "@interface {0}: NSObject".format(klasa.title) + "\n"
    for field in klasa.fields:
        text += "\n\t/**\n\t*  {0}\n\t*  {1}\n\t*/\n".format(klasa.fields[field].description, klasa.fields[field].demo)
        if klasa.fields[field].isParent:
            text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(klasa.fields[field].title, field)
        else:
            if klasa.fields[field].typee == "BOOL":
                text += "\t@property(nonatomic, readwrite) {0} {1};\n".format(klasa.fields[field].typee, field)
            else:
                text += "\t@property(nonatomic, readwrite) {0} *{1};\n".format(klasa.fields[field].typee, field)
    text += "\n\t-(NSDictionary) getParams;\n"
    text += "@end"
    return text


class Klasa:
    def __init__(self, description, demo, title, typee, fields, isParent, default):
        self.description = description
        self.demo = demo
        self.title = title
        self.typee = typee
        self.fields = fields
        self.isParent = isParent
        self.default = default
        if self.default == "null" or self.default == "undefined":
            self.default = 'nil'

    def update(self, description, demo, title, typee, isParent, default):
        self.description = description
        self.demo = demo
        self.title = title
        self.typee = typee
        self.isParent = isParent
        self.default = default
        if self.default == "null" or self.default == "undefined":
            self.default = 'nil'


with open('HighchartsJSON') as data_file:
    data = json.load(data_file)

for field in data:
    if "title" in field and len(field["title"]) > 0:
        generateClass(field)
        if "parent" in field and field["parent"] != "":
            addFieldToParent(field)

createFiles(struktura)