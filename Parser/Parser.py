#!/usr/bin/python

# *********************************************
# Created by Krzysztof Fryzlewicz, Marek Lipert
#            Ihnat Moisieiev
#                   of Spinney
#                 www.spinney.io
#   
# All commercial rights to this software belong to 
#                  Highsoft AS
#              www.highcharts.com

import json
import sys
import os
import re
from bs4 import BeautifulSoup, SoupStrainer

reload(sys)
sys.setdefaultencoding('utf-8')

structure = dict()
files = list()
bridge = set()
options = list()
classes = dict()
comments = dict()
types = dict()
filelicense = "/**\n* (c) 2009-2018 Highsoft AS\n*\n* License: www.highcharts.com/license\n" \
              "* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/\n" \
              "* In case of questions, please contact sales@highsoft.com\n*/\n\n"


class HIChartsClass:
    def __init__(self, name, data_type, description, demo, values, defaults, products, extends, exclude, info, parent):
        self.name = name
        self.data_type = data_type
        self.description = description
        self.demo = demo
        self.values = values
        self.defaults = defaults
        self.products = products
        self.extends = extends
        self.exclude = exclude
        self.properties = list()
        self.not_highcharts_properties = list()
        self.comment = None
        self.checkedExtends = False
        self.info = info
        self.parent = parent

        if self.description:
            self.comment = "/**\n* description: {0}\n".format(self.description)
            if self.demo:
                self.comment += "* demo: {0}".format(self.demo)
            if self.values:
                self.comment += "* accepted values: {0}\n".format(self.values)
            self.comment = clean_comment(self.comment)
            if self.defaults:
                self.comment += "* default: {0}\n".format(self.defaults)
            self.comment += "*/\n"

    def update(self, data_type, description, demo, values, defaults, products, extends, exclude):
        if self.data_type is None:
            self.data_type = data_type

        if self.description is None:
            self.description = description

        if self.demo is None:
            self.demo = demo

        if self.values is None:
            self.values = values

        if self.defaults is None:
            self.defaults = defaults

        if self.products is None:
            self.products = products

        if self.extends is None:
            self.extends = extends

        if self.exclude is None:
            self.exclude = exclude

        if self.description:
            self.comment = "/**\n* description: {0}\n".format(self.description)
            if self.demo:
                self.comment += "* demo: {0}".format(self.demo)
            if self.values:
                self.comment += "* accepted values: {0}\n".format(self.values)
            self.comment = clean_comment(self.comment)
            if self.defaults:
                self.comment += "* default: {0}\n".format(self.defaults)
            self.comment += "*/\n"

    def add_property(self, variable):
        self.properties.append(variable)

    def remove_property(self, variable):
        self.properties.remove(variable)

    def add_not_highcharts_property(self, variable):
        self.not_highcharts_properties.append(get_last(variable))


def clean_comment(comment):
    soup = BeautifulSoup(comment, 'html.parser')
    demos = list()
    for m in soup.find_all('a'):
        a = str(m)
        if a in comment:
            if 'href' in a:
                demo_link = m['href']
                demo_text = m.__dict__['next_element']
                if not demo_link.startswith("#"):
                    if demo_text in demos:
                        comment = comment.replace(a, "")
                        replaced_text = demos[-1] + "\n"
                        comment = comment.replace(replaced_text, demos[-1])
                    else:
                        demos.append(demo_text)
                        comment = comment.replace(a, demo_link + " : " + demo_text, 1)

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
        "Function": 'HIFunction',
        "Array<Number>": 'NSArray<NSNumber *>',
        "Array<Object>": 'NSArray',
        "Array": 'NSArray',
        "Array<String>": 'NSArray<NSString *>',
        "Boolean|Object": 'id /* Bool, id */',
        "String|Number": 'id /* NSString, NSNumber */',
        "Array<Array>": 'NSArray<NSArray *>',
        "CSSObject": 'NSDictionary /* <NSString, NSString> */',
        "Array<Color>": 'NSArray<HIColor *>',
        "Array<Object|Array|Number>": 'NSArray /* <Data, NSNumber, NSArray> */',
        "Array<String|Number>": 'NSArray /* <NSString, NSNumber> */',
        "Array<Object|Number>": 'NSArray /* <id, NSNumber> */',
        "Array<Object|Array>": 'NSArray',
        "Number|String": 'id /* NSNumber, NSString */',
        "String|HTMLElement": 'id',
        "Array<Array<Mixed>>": 'NSArray<NSArray *>',
        "String|Object": 'id /* NSString, id */',
        "Mixed": 'id',
        "Number|Boolean": 'NSNumber',
        "": 'id',
        "plotOptions.series.states": 'id',
        "Boolean|String": 'id /* Bool, NSString */',
        # nowe typy
        "Object|Boolean": 'id /* id, Bool */',
        "String|Array.<String>": 'id',
        "Array.<String>": 'NSArray<NSString *>',
        "function": 'HIFunction',
        "String|function": 'NSString',
        "Array.<Object>": 'NSArray',
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
        "String|undefined": 'NSString',
        "Array.<String>|Array.<Object>": 'NSArray',
        "String|Number|function": 'id /* NSString, NSNumber, Function */',
        "Array.<(Object|Array|Number)>": 'NSArray /* <Data, NSNumber, NSArray> */',
        "String|null": 'NSString',
        "Array.<Array<Mixed>>": 'NSArray<NSArray *>',
        "Array.<Array.<Mixed>>": 'NSArray<NSArray *>',
        "Object|Number": 'id /* id, NSNumber */',
        "umber": 'NSNumber',
        "function|null": 'HIFunction',
        #6.0.6
        "Undefined|Number": 'NSNumber'
    }[str(x)]


def upper_first(x):
    r = x[0].upper() + x[1:]
    return r


def get_last(x):
    last = ''
    n = x.split(".")
    last = n[len(n) - 1]
    if last == 'description':
        last = 'definition'
    return last


def create_name(source):
    name = source.split(".")[-1]
    return name


def create_h_file(name):
    source = structure[name]
    h = None
    if source.properties:
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
        m = format_to_m(name, source)
        if m:
            filename = "HIChartsClasses/HI{0}.m".format(upper_first(create_name(name)))
            with open(filename, "w") as m_file:
                m_file.write(m)


def added_new_properties(class_name, source):
    isUpdated = False
    isFirstMatch = True

    if class_name in classes:
        isFirstMatch = False
        class_properties = classes[class_name]
        for property in source.properties:
            isExists = False
            for class_property in class_properties:
                if get_last(property.name) == get_last(class_property.name):
                    isExists = True
            if not isExists:
                class_properties.append(property)
                isUpdated = True
        classes[class_name] = class_properties
    else:
        classes[class_name] = source.properties

    if not isUpdated and not isFirstMatch:
        return False

    return True


def field_in_parent(field, source):
    in_parent = False
    if source.extends:
        if source.extends == "series":
            extends_name = "plotOptions.series"
            for i in structure[extends_name].properties:
                if get_last(field.name) == get_last(i.name):
                    in_parent = True

        for i in structure[source.extends].properties:
            if get_last(field.name) == get_last(i.name):
                in_parent = True
    return in_parent


def format_to_h(name, source):
    imports = ""
    colorAdded = False
    functionAdded = False
    htext = ""

    class_name = "HI" + upper_first(create_name(name))

    if class_name in comments:
        htext += comments[class_name]
    elif source.comment:
        htext += source.comment
        x = name.split(".")
        if len(x) == 2 and x[0] == "plotOptions":
            pass
        else:
            comments[class_name] = source.comment

    if not added_new_properties(class_name, source):
        return None

    if source.extends is not None:
        imports += "#import \"{0}.h\"\n".format("HI" + upper_first(source.extends))
        htext += "@interface {0}: {1}\n\n".format(class_name, "HI" + upper_first(source.extends))
    else:
        htext += "@interface {0}: HIChartsJSONSerializable\n\n".format(class_name)

    bridge.add("#import \"{0}.h\"\n".format(class_name))

    for field in classes[class_name]:

        if field_in_parent(field, source):
            continue

        if field.comment:
            htext += "{0}".format(field.comment)
        if field.data_type:
            if "id" in str(get_type(field.data_type)) and "NSArray" not in str(get_type(field.data_type)) and not \
                    structure[
                        field.name].properties:
                type = "{0}".format(get_type(field.data_type))
                types[field.name] = type

                htext += "@property(nonatomic, readwrite) {0} {1};\n".format(type, get_last(field.name))

            elif "NSArray" in str(get_type(field.data_type)) and field.name.endswith(">.data"):
                type = "{0} *".format(get_type(field.data_type))
                types[field.name] = type

                htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))

            elif "NSArray" in str(get_type(field.data_type)) and structure[field.name].properties:
                type = "{0} <{1} *> *".format(get_type(field.data_type), "HI" + upper_first(
                                                                                          create_name(
                                                                                              field.name)))
                types[field.name] = type

                htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
                imports += "#import \"{0}.h\"\n".format("HI" + upper_first(create_name(field.name)))

            elif "NSArray" in str(get_type(field.data_type)):
                type = "{0} *".format(get_type(field.data_type))
                types[field.name] = type

                htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
            elif field.data_type == "Object":
                if structure[field.name].properties:
                    type = "{0} *".format("HI" + upper_first(create_name(field.name)))
                    types[field.name] = type

                    htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
                    imports += "#import \"{0}.h\"\n".format("HI" + upper_first(create_name(field.name)))
                else:
                    type = "id"
                    types[field.name] = type

                    htext += "@property(nonatomic, readwrite) {0} {1};\n".format(type, get_last(field.name))

            else:
                if get_type(field.data_type) == "HIColor" and not colorAdded:
                    colorAdded = True
                if get_type(field.data_type) == "HIFunction" and not functionAdded:
                    functionAdded = True
                if structure[field.name].properties:
                    type = "{0} *".format("HI" + upper_first(create_name(field.name)))
                    types[field.name] = type

                    htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
                    imports += "#import \"{0}.h\"\n".format("HI" + upper_first(create_name(field.name)))
                else:
                    type = "{0} *".format(get_type(field.data_type))
                    types[field.name] = type

                    htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
        else:
            if not field.data_type and not structure[field.name].properties:
                type = "id"
                types[field.name] = type

                htext += "@property(nonatomic, readwrite) {0} {1};\n".format(type, get_last(field.name))
            elif structure[field.name].properties:
                name = create_name(field.name)

                type = "{0} *".format("HI" + upper_first(name))
                types[field.name] = type

                htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
                imports += "#import \"{0}.h\"\n".format("HI" + upper_first(name))

    htext += "\n-(NSDictionary *)getParams;\n\n"
    htext += "@end\n"
    if imports == "":
        imports += "#import \"HIChartsJSONSerializable.h\"\n"
    if colorAdded:
        imports += "#import \"HIColor.h\"\n"
    if functionAdded:
        imports += "#import \"HIFunction.h\"\n"
    imports += "\n\n"
    return filelicense + imports + htext


def create_setter(field):
    setter_attribute = get_last(field.name)
    setter_type = re.sub('\s/(.?)+/', '', types[field.name])

    setter_text = "-(void)set{0}:({1}){2}".format(upper_first(setter_attribute), setter_type, setter_attribute) + " {\n"

    if 'NSArray' in setter_type:
        setter_text += "\t{0}oldValue = _{1};\n".format(setter_type, setter_attribute) + \
                        "\t_{0} = {0};\n".format(setter_attribute) + \
                       "\t[self updateArrayObject:oldValue newValue:{0} propertyName:@\"{0}\"];\n".format(setter_attribute)
    elif 'HI' in setter_type:
        setter_text += "\t{0}oldValue = _{1};\n".format(setter_type, setter_attribute) + \
                       "\tif(self.{0})".format(setter_attribute) + " {\n" + \
                       "\t\t[self removeObserver:self forKeyPath:@\"{0}.isUpdated\"];".format(setter_attribute) + "\n\t}\n" + \
                       "\t_{0} = {0};\n".format(setter_attribute) + \
                       "\t[self updateHIObject:oldValue newValue:{0} propertyName:@\"{0}\"];\n".format(setter_attribute)
    else:
        setter_text += "\t_{0} = {0};\n".format(setter_attribute) + \
                       "\t[self updateNSObject:@\"{0}\"];\n".format(setter_attribute)

    setter_text += "}"

    return setter_text


def format_to_m(name, source):
    class_name = "HI" + upper_first(create_name(name))

    mtext = "#import \"HIChartsJSONSerializableSubclass.h\"\n"
    mtext += "#import \"{0}.h\"\n\n".format(class_name)
    mtext += "@implementation {0}\n\n".format(class_name)

    if source.extends:
        mtext += "-(instancetype)init {\n\tif (self = [super init]) {" + \
                 "\n\t\tself.type = @\"{0}\";".format(create_name(name)) + \
                 "\n\t\treturn self;\n\t} else {\n\t\treturn nil;\n\t}\n}\n"
    else:
        mtext += "-(instancetype)init {\n\treturn [super init];\n}\n"
    getParams = "\n-(NSDictionary *)getParams\n{\n\tNSMutableDictionary *params =" \
                " [NSMutableDictionary dictionaryWithDictionary: "
    setters_text = "\n# pragma mark - Setters\n"
    if source.extends:
        getParams += "[super getParams]];\n"
    else:
        getParams += "@{}];\n"

    for field in classes[class_name]:

        if field_in_parent(field, source):
            pass
        else:
            getParams += "\tif (self.{0})".format(get_last(field.name)) + " {\n"
            if structure[field.name].data_type:
                data_type = structure[field.name].data_type
                if get_type(data_type) == 'HIFunction':
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getFunction];\n".format(get_last(field.name),
                                                                                       get_last(field.name))
                elif get_type(data_type) == 'HIColor':
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getData];\n".format(get_last(field.name),
                                                                                       get_last(field.name))
                elif get_type(data_type) == 'NSArray<HIColor *>':
                    getParams += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    getParams += "\t\tfor (HIColor *obj in self.{0})".format(get_last(field.name)) + " {\n"
                    getParams += "\t\t\t[array addObject:[obj getData]];\n".format(get_last(field.name))
                    getParams += "\t\t}\n"
                    getParams += "\t\tparams[@\"{0}\"] = array;\n".format(get_last(field.name))
                elif 'NSArray' in str(get_type(data_type)):
                    getParams += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    getParams += "\t\tfor (id obj in self.{0})".format(get_last(field.name)) + " {\n"
                    getParams += "\t\t\tif ([obj isKindOfClass: [HIChartsJSONSerializable class]])".format(
                        get_last(field.name)) + " {\n"
                    getParams += "\t\t\t\t[array addObject:[(HIChartsJSONSerializable *)obj getParams]];\n".format(
                        get_last(field.name))
                    getParams += "\t\t\t}\n"
                    getParams += "\t\t\telse {\n\t\t\t\t[array addObject: obj];\n"
                    getParams += "\t\t\t}\n"
                    getParams += "\t\t}\n"
                    getParams += "\t\tparams[@\"{0}\"] = array;\n".format(get_last(field.name))
                elif structure[field.name].properties:
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(get_last(field.name),
                                                                                         get_last(field.name))
                else:
                    getParams += "\t\tparams[@\"{0}\"] = self.{1};\n".format(get_last(field.name), get_last(field.name))
            elif structure[field.name].properties:
                getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(get_last(field.name),
                                                                                     get_last(field.name))
            getParams += "\t}\n"

            setters_text += "\n" + create_setter(field) + "\n"

    getParams += "\treturn params;\n"
    getParams += "}\n"
    mtext += getParams
    if setters_text != "\n# pragma mark - Setters\n":
        mtext += setters_text
    mtext += "\n@end"
    return mtext


def create_options_files():
    imports = "#import \"HIColor.h\"\n"
    htext = "@interface HIOptions: HIChartsJSONSerializable\n\n"
    mtext = "#import \"HIChartsJSONSerializableSubclass.h\"\n"
    mtext += "#import \"HIOptions.h\"\n\n@implementation HIOptions\n\n"
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
    setters_text = "\n# pragma mark - Setters\n"
    for field in options:
        if field.name != 'global' and field.name != 'lang':
            if field.comment:
                htext += "{0}".format(field.comment)
            if upper_first((create_name(field.name))) in files:
                imports += "#import \"HI{0}.h\"\n".format(upper_first(create_name(field.name)))
            if structure[field.name].data_type:
                if "id" in str(get_type(field.data_type)) and "NSArray" not in str(get_type(field.data_type)):
                    if structure[field.name].properties:
                        type = "{0} *".format("HI" + upper_first(create_name(field.name)))
                        types[field.name] = type

                        htext += "@property(nonatomic, readwrite) {0}{1};\n\n".format(type, get_last(field.name))
                    else:
                        type = "{0} ".format(get_type(field.data_type))
                        types[field.name] = type

                        htext += "@property(nonatomic, readwrite) {0}{1};\n\n".format(type, get_last(field.name))
                elif "NSArray" in str(get_type(field.data_type)) and field.properties:
                    type = "{0}<{1} *> *".format(get_type(field.data_type), "HI" + upper_first(create_name(field.name)))
                    types[field.name] = type

                    htext += "@property(nonatomic, readwrite) {0}{1};\n\n".format(type, get_last(field.name))
                else:
                    type = "{0} *".format(get_type(field.data_type))
                    types[field.name] = type

                    htext += "@property(nonatomic, readwrite) {0}{1};\n\n".format(type, get_last(field.name))
            else:
                type = "{0} *".format("HI" + upper_first(create_name(field.name)))
                types[field.name] = type

                htext += "@property(nonatomic, readwrite) {0}{1};\n\n".format(type, get_last(field.name))
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
                elif get_type(field.data_type) == 'HIFunction':
                    mtext += "\t\tparams[@\"{0}\"] = [self.{1} getFunction];\n".format(get_last(field.name),
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

            setters_text += "\n" + create_setter(field) + "\n"

    mtext += "\tif (self.additionalOptions) {\n\t\t[params addEntriesFromDictionary: self.additionalOptions];\n\t}\n\n"

    setters_text += "\n-(void)set{0}:({1}){2}".format("AdditionalOptions", "NSDictionary *", "additionalOptions") + " {\n" + \
                  "\t_{0} = {0};\n".format("additionalOptions") + \
                  "\t[self updateNSObject:@\"{0}\"];\n".format("additionalOptions") + \
                  "}\n"

    mtext += "\treturn params;\n"
    mtext += "}\n"
    mtext += setters_text
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
    text += "#import \"HIFunction.h\"\n"
    text += "#import \"HIOptions.h\"\n"
    with open("HIBridge.h", "w") as b:
        b.write(text)


def create_files_for_main_class(field):
    main = create_name(field)
    class_name = "HI" + upper_first(main)
    if main in structure and class_name not in classes:
        create_h_file(main)
        create_m_file(main)


def create_files():
    if not os.path.exists("HIChartsClasses"):
        os.makedirs("HIChartsClasses")
    for field in structure:
        create_files_for_main_class(field)
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


def get_documentation_name(name, isProperties, doubleLast = True):
    ret = str(name)
    ret = ret.replace("description", "definition")
    x = ret.split(".")
    if len(x) > 1:
        ret = x[0]
        if len(x) > 2:
            for i in range(1, len(x) - 1):
                ret += "-{0}".format(x[i])
        if doubleLast:
            if isProperties:
                ret += "-{0}".format(x[len(x) - 1])
            else:
                ret += "--{0}".format(x[len(x) - 1])
        else:
            ret += "-{0}".format(x[len(x) - 1])
    else:
        ret = x[0]
    return ret


def add_entry_to_documentation(documentation, field, source):
    entry = dict()
    name = get_last(field)
    returnType = ""
    isParent = False
    isProperties = False
    doclet = None

    if "doclet" in source.info:
        doclet = source.info["doclet"]

    if source.properties:
        isParent = True
        returnType = "HI" + upper_first(create_name(field))
    elif source.data_type:
        returnType = get_type(source.data_type)

    parent = None
    if source.parent:
        parent = source.parent

    if source.properties:
        isProperties = source.properties

    entry["_id"] = get_documentation_name(field, isProperties)
    entry["fullname"] = field.replace("description", "definition")
    entry["title"] = name.replace("description", "definition")
    if source.description and source.description != "":
        entry["description"] = source.description
    if source.demo:
        demo = ""
        lines = source.demo.splitlines()
        for line in lines:
            items = line.split(" : ")
            for item in items:
                if "https://" in item:
                    demo += "{}{}{}".format("<a href=\"", item, "\">")
                else:
                    demo += "{}{}".format(item.rstrip(), "</a>\n")
        entry["demo"] = demo
    if source.defaults:
        entry["defaults"] = source.defaults
    if source.values:
        entry["values"] = source.values
    if doclet and "since" in doclet:
        entry["since"] = doclet["since"]
    entry["deprecated"] = doclet["deprecated"] if doclet and "deprecated" in doclet else False
    if doclet and "see" in doclet:
        seeAlso = ""
        for see in doclet["see"]:
            m = re.search('\[(.+)\]\((.+)\)', see)
            if m:
                if seeAlso != "":
                    seeAlso += ", <a href=\"{}\">{}</a>".format(m.group(2), m.group(1))
                else:
                    seeAlso += "<p><a href=\"{}\">{}</a>".format(m.group(2), m.group(1))
            else:
                seeAlso += "<p>{}".format(see)
        if seeAlso != "":
            seeAlso += "</p>\n"
        entry["seeAlso"] = seeAlso
    if returnType != "":
        entry["returnType"] = returnType
    entry["isParent"] = isParent
    if parent:
        entry["parent"] = parent
    documentation.append(entry)


def add_to_documentation(documentation, field, parent):
    add_entry_to_documentation(documentation, field, structure[parent])
    if structure[parent].properties:
        for property in structure[parent].properties:
            if field != "series":
                children = "{0}.{1}".format(field, get_last(property.name))
                add_to_documentation(documentation, children, property.name)


def generate_documentation():
    documentation = list()

    for field in structure:
        add_to_documentation(documentation, field, field)

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


def merge_extended_properties(field):
    class_name = structure[field].name
    if structure[field].extends and not structure[field].checkedExtends:
        for extends in structure[field].extends.split(","):
            parent = structure[extends]
            structure[field].not_highcharts_properties += parent.not_highcharts_properties
            if parent.extends:
                merge_extended_properties(parent.name)
            for parent_property in parent.properties:
                property_name = "{0}.{1}".format(class_name, get_last(parent_property.name))
                isExist = False
                for property in structure[field].properties:
                    if property.name == property_name:
                        isExist = True
                        property.update(parent_property.data_type, parent_property.description, parent_property.demo,
                                        parent_property.values, parent_property.defaults, parent_property.products,
                                        parent_property.extends, parent_property.exclude)

                    if get_last(property.name) in parent.not_highcharts_properties:
                        if property.products:
                            if 'highcharts' not in property.products:
                                structure[field].remove_property(property)
                        else:
                            structure[field].remove_property(property)

                if structure[field].exclude:
                    if get_last(parent_property.name) not in structure[field].exclude and not isExist:
                        structure[field].add_property(parent_property)
                elif not isExist:
                    structure[field].add_property(parent_property)

    structure[field].checkedExtends = True
    structure[field].extends = None
    x = class_name.split(".")
    if len(x) == 2:
        if x[0] == "series" or x[0] == "plotOptions" and x[1] != "series":
            structure[field].extends = "series"


def create_class(node):
    source = node.info
    parent = node.parent
    data_type = None
    description = None
    demo = None
    values = None
    defaults = None
    products = None
    extends = None
    exclude = None
    if source:
        if "doclet" in source:
            doclet = source["doclet"]

            if "description" in doclet:
                description = doclet["description"]
                description = re.sub(r'`\s*(.*?)\s*`', r'\1', description)
                description = re.sub(r'(\[(.*?)\]\(#.*?\))', r'\2', description)
                description = description.replace("\r", "\n")

            if "values" in doclet and len(doclet["values"]) > 0:
                values = doclet["values"]

            if "defaultByProduct" in doclet:
                defaultByProduct = doclet["defaultByProduct"]
                if "highcharts" in defaultByProduct:
                    defaults = defaultByProduct["highcharts"]

            if "defaultvalue" in doclet:
                defaults = doclet["defaultvalue"].replace("\r", "\n")

            if "samples" in doclet:
                samples = doclet["samples"]
                demo = ""
                for sample in samples:
                    name = ""
                    value = ""
                    attr_products = None
                    for attr_sample in sample:
                        if attr_sample == "name":
                            name = sample[attr_sample]
                        elif attr_sample == "value":
                            value = sample[attr_sample]
                        elif attr_sample == "products":
                            attr_products = sample[attr_sample]
                    if attr_products is None or "highcharts" in attr_products:
                        demo += "https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/{0} : {1}\n".format(value, name)
                if demo == "":
                    demo = None

            if "type" in doclet:
                type = doclet["type"]
                if len(type["names"]) == 1:
                    data_type = type["names"][0]
                elif len(type["names"]) == 2:
                    data_type = type["names"][0] + "|" + type["names"][1]
                elif len(type["names"]) == 3:
                    data_type = type["names"][0] + "|" + type["names"][1] + "|" + type["names"][2]

            if "products" in doclet:
                products = doclet["products"]
                if 'highcharts' not in products:
                    if node.parent:
                        structure[node.parent].add_not_highcharts_property(node.name)
                    return None

            if "extends" in doclet:
                extends = doclet["extends"].replace("{", "").replace("}", "")

            if "exclude" in doclet:
                exclude = doclet["exclude"]

            if "deprecated" in doclet:
                if doclet["deprecated"]:
                    return None

        name = node.name
        if name == "id":
            name = "ID"
        elif name == "point":
            name = "HIPoint"
        elif name == "description":
            name = "definition"

        c = HIChartsClass(name, data_type, description, demo, values, defaults, products, extends, exclude, source, parent)
        return c


def add_to_structure(name, source, parent):
    if parent == None:
        if name != None and name != "" and name != "_meta":
            fullname = name
        else:
            return
    else:
        fullname = "{0}.{1}".format(parent, name)
        if structure[parent].exclude and name in structure[parent].exclude:
            return

    node = Node(fullname, parent, source)

    hi_class = create_class(node)

    if hi_class:
        structure[node.name] = hi_class

        if parent:
            if parent != "series":
                structure[parent].add_property(hi_class)
        else:
            options.append(hi_class)

        if "children" in source:
            childrens = source["children"]
            for children in childrens:
                add_to_structure(children, childrens[children], fullname)


def add_additions_to_series():
    with open('addition_to_series.js') as data_file:
        data = json.load(data_file)

    if "series" not in structure:
        structure["series"] = HIChartsClass("series", "", "General options for all series types.", None, None, None, ["highcharts"], None, None)

    for field in data:
        name = None
        data_type = None
        description = None
        demo = None
        values = None
        defaults = None
        products = None

        if "fullname" in field:
            name = field["fullname"]

        if "description" in field:
            description = field["description"]

        if "values" in field and len(field["values"]) > 0:
            values = field["values"]

        if "defaults" in field:
            defaults = field["defaults"]

        if "demo" in field:
            demo = field["demo"]

        if "returnType" in field:
            data_type = field["returnType"]

        if "products" in field:
            products = field["products"]

        if "parent" in field:
            parent = field["parent"]

        hi_class = HIChartsClass(name, data_type, description, demo, values, defaults, products, None, None, field, parent)

        if hi_class:
            structure[name] = hi_class

            if parent == "series":
                structure[parent].add_property(hi_class)


def create_structure():
    with open('tree.json') as data_file:
        data = json.load(data_file)

    for field in data:
        add_to_structure(field, data[field], None)

    add_additions_to_series()

    for field in structure:
        merge_extended_properties(field)


def main():
    create_structure()
    create_files()
    generate_documentation()


if __name__ == "__main__":
    main()
