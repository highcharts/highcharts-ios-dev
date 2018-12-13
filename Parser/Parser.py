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
import copy
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
unknown_types_tree = set()
series_description = ""
series_data_description = ""
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
        self.kind = ""

        if self.description:
            self.comment = clean_comment(self.description)
            if self.values:
                self.comment += "\n**Accepted values:** `{0}`.\n".format(self.values)
            if self.defaults:
                self.comment += "\n**Defaults to** `{0}`.\n".format(self.defaults)
            if self.demo:
                self.comment += "\n**Try it**\n\n{0}".format(self.demo)
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
            self.comment = clean_comment(self.description)
            if self.values:
                self.comment += "\n**Accepted values:** `{0}`.\n".format(self.values)
            if self.defaults:
                self.comment += "\n**Defaults to** `{0}`.\n".format(self.defaults)
            if self.demo:
                self.comment += "\n**Try it**\n\n{0}".format(self.demo)
            self.comment += "*/\n"

    def add_property(self, variable):
        self.properties.append(variable)

    def remove_property(self, variable):
        self.properties.remove(variable)

    def add_not_highcharts_property(self, variable):
        self.not_highcharts_properties.append(get_last(variable))


def clean_comment(comment):
    comment = comment.replace('\n', ' ').replace('  ', ' ').replace('.  ', '. ').replace('(//code.highcharts.com/', '(https://code.highcharts.com/').replace('[code.highcharts.com/', '[https://code.highcharts.com/')
    comment = re.sub('(\(|\[)[\w\.*/ *: *\-*]+[\.\-/_]\s+[\w\.*/ *: *\- *]+(\)|\])', lambda s: s.group(0).replace(' ', ''), comment)
    comment = re.sub('\[(.+?)\]\((.+?)\)', lambda s: s.group(0) if s.group(2).startswith("http") else s.group(0).replace(s.group(0), '`{}`'.format(s.group(1))), comment)
    comment = re.sub('\((.+?)\)\[(.+?)\]', r'[\1](\2)', comment)
    comment = comment.replace('`<', '__x__').replace('>`', '__y__')
    soup = BeautifulSoup(comment, 'html.parser')
    comment = soup.get_text().replace('__x__', '`<').replace('__y__', '>`')
    comment = "/**\n{0}\n".format(comment)
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

hc_types = {
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
        "Array<Object|Array|Number>": 'NSArray /* <id, NSNumber, NSArray> */',
        "Array<String|Number>": 'NSArray /* <NSString, NSNumber> */',
        "Array<Object|Number>": 'NSArray /* <id, NSNumber> */',
        "Array<Object|Array>": 'NSArray',
        "Number|String": 'id /* NSNumber, NSString */',
        "String|HTMLElement": 'NSString',
        "Array<Array<Mixed>>": 'NSArray<NSArray *>',
        "String|Object": 'id /* NSString, id */',
        "Mixed": 'id',
        "Number|Boolean": 'NSNumber',
        "": 'id',
        "Boolean|String": 'id /* Bool, NSString */',
        # nowe typy
        "Object|Boolean": 'id /* id, Bool */',
        "String|Array.<String>": 'NSArray<NSString *>',
        "Array.<String>": 'NSArray<NSString *>',
        "function": 'HIFunction',
        "Array.<Object>": 'NSArray',
        "Array.<Number>": 'NSArray<NSNumber *>',
        "Array.<Array>": 'NSArray<NSArray *>',
        "Array.<Color>": 'NSArray<HIColor *>',
        "Array.<Object|Array|Number>": 'NSArray /* <id, NSNumber, NSArray> */',
        "Array.<String|Number>": 'NSArray /* <NSString, NSNumber> */',
        "Array.<Object|Number>": 'NSArray /* <id, NSNumber> */',
        "Array.<Object|Array>": 'NSArray /* <id, NSArray> */',
        "Array.<Array<Mixed>>": 'NSArray<NSArray *>',
        "Array.<(Object|Number)>": 'NSArray /* <id, NSNumber> */',
        "Array.<(String|Number)>": 'NSArray /* <NSString, NSNumber> */',
        "Array.<(Object|Array)>": 'NSArray /* <id, NSArray> */',
        "String|undefined": 'NSString',
        "Array.<String>|Array.<Object>": 'NSArray /* <NSString, id> */',
        "String|Number|function": 'id /* NSString, NSNumber, Function */',
        "Array.<(Object|Array|Number)>": 'NSArray /* <id, NSNumber, NSArray> */',
        "String|null": 'NSString',
        "Array.<Array.<Mixed>>": 'NSArray<NSArray *>',
        "function|null": 'HIFunction',
        #6.0.6
        "Undefined|Number": 'NSNumber',
        #6.1.0
        "Bool": 'NSNumber /* Bool */',
        #6.1.1
        "AnimationOptions|Boolean": 'HIAnimationOptionsObject',
        "Boolean|AnimationOptions": 'HIAnimationOptionsObject',
        "Array.<number>": 'NSArray<NSNumber *>',
        # 6.1.2
        "number": 'NSNumber',
        "string": 'NSString',
        "boolean": 'NSNumber /* Bool */',
        "*" : 'id',
        "Array.<*>": 'NSArray',
        "Array.<Array.<(string|Array.<number>)>>":'NSArray<NSArray *>',
        "Array.<string>": 'NSArray<NSString *>',
        "null|number|string": 'id /* NSNumber, NSString */',
        "object": 'id',
        "Number|String|function": 'id /* NSNumber, NSString, Function */',
        "Array.<Object>|Array.<String>": 'NSArray /* <id, NSString> */',
        "null|number": 'NSNumber',
        "Array.<number>|number": 'NSArray<NSNumber *>',
        "Boolean|Number": 'NSNumber',
        "number|string": 'id /* NSNumber, NSString */',
        #6.1.4
        "boolean|*": 'id /* Bool, id */',
        "number|string|null": 'id /* NSNumber, NSString */',
        "boolean|string": 'id /* Bool, NSString */',
        "number|null": 'NSNumber',
        "number|Array.<number>": 'NSArray<NSNumber *>',
        "string|number" : 'id /* NSString, NSNumber */',
        #6.2.0
        "Array.<(number|string|null)>": 'NSArray /* <NSNumber, NSString> */',
        "string|null": 'NSString',
        "Array.<Array.<number, string>>": 'NSArray<NSArray *> /* <NSNumber, NSString> */',
        # tree_namespace
        "number|undefined": 'NSNumber',
        "Array.<(number|string)>": 'NSArray /* <NSNumber, NSString> */',
        "false": 'NSNumber /* Bool */',
        "undefined" : 'id',
        "null" : 'id',
        "Object|undefined": 'id',
        "false|Highcharts.XAxisCrosshairOptions|Highcharts.YAxisCrosshairOptions": 'id',
        "Array.<Point>": 'NSArray',
        "string|Array.<(number|string)>": 'NSArray /* <NSNumber, NSString> */',
        "Highcharts.Dictionary.<function()>": 'NSDictionary',
        "Highcharts.Dictionary.<(boolean|number|string)>": 'NSDictionary',
        "Highcharts.Dictionary.<string>": 'NSDictionary /* <NSString, NSString> */',
        # tree
        "Highcharts.PlotSeriesDataLabelsOptions": 'id',
        "Highcharts.Options": 'NSDictionary',
        "boolean|Highcharts.ShadowOptionsObject": 'NSNumber /* Bool */',
        "string|Highcharts.SVGDOMElement": 'NSString',
        "boolean|Highcharts.CSSObject": 'NSNumber /* Bool */',
        #color fixes
        "Highcharts.ColorString": 'HIColor',
        "Highcharts.ColorString|null": 'HIColor',
        #7.0.0
        "string|global.HTMLElement": 'NSString',
        "Array.<Highcharts.Dictionary.<number>>": 'NSArray',
        "Array.<Array.<*>>": 'NSArray<NSArray *>',
        "string|Highcharts.GradientColorObject|Highcharts.PatternObject": 'HIColor',
        "Highcharts.FormatterCallbackFunction.<Highcharts.TooltipFormatterContextObject>": 'HIFunction',
        "Highcharts.Dictionary.<*>": 'NSDictionary',
        "Array.<Array.<string, (Array.<number>|null)>>": 'NSArray<NSArray *>',
        "string|Highcharts.GradientColorObject": 'HIColor',
        "string|MockPointOptions": 'NSString',
        "Array.<(string|number)>": 'NSArray /* <NSString, NSNumber> */',
        "Highcharts.FormatterCallbackFunction.<Highcharts.SeriesDataLabelsFormatterContextObject>": 'HIFunction',
        "Annotation.ControlPoint.Options": 'id',
        "Highcharts.FormatterCallbackFunction.<object>": 'HIFunction',
        "boolean|null": 'NSNumber /* Bool */',
        "false|number": 'NSNumber',
        "String|function": 'NSString',
        "*|Array.<*>": 'NSArray',
        "function|undefined": 'HIFunction',
        "string|undefined": 'NSString',
        "Highcharts.GradientColorObject": 'HIColor',
        # tree-namespace
        "Array.<Array.<number, string>>|undefined": 'NSArray<NSArray *>',
        "string|*": 'NSString',
        "Array.<*>|undefined": 'NSArray',
        "boolean|undefined": 'NSNumber /* Bool */',
        "Array.<number>|undefined": 'NSArray<NSNumber *>',
        "object|undefined": 'id',
        "boolean|*|undefined": 'NSNumber /* Bool */',
        "string|Array.<(number|string)>|undefined": 'NSArray /* <NSNumber, NSString> */',
        "Array<number>": 'NSArray<NSNumber *>',
        "boolean|Array.<*>|undefined": 'id',
        "Array.<function()>|undefined": 'NSArray<HIFunction *>',
        "*|undefined": 'id',
        "Highcharts.Dictionary.<number>": 'NSDictionary',
        "Object|*": 'id',
    }

def get_type(x):
    return hc_types[str(x)]

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


def removeDuplicates(listofElements):
    uniqueList = []

    for elem in listofElements:
        if elem not in uniqueList:
            uniqueList.append(elem)

    return uniqueList

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
                    if not class_property.properties and property.properties:
                        class_property.properties = property.properties
                        isUpdated = True
                    if class_property.data_type is None and property.data_type is not None:
                        class_property.data_type = property.data_type
                        isUpdated = True
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
    import_hi_set = set()
    import_hi_string = ""
    description = None
    htext = ""

    class_name = "HI" + upper_first(create_name(name))

    if source.extends == 'series':
        description = series_description.replace('#series_name#', get_last(name)) # markdown description dla poszczegolnych serii dla dokumentacji iOS
    elif class_name in comments:
        description = comments[class_name]
    elif source.comment:
        description = source.comment
        x = name.split(".")
        if len(x) == 2 and x[0] == "plotOptions":
            pass
        else:
            comments[class_name] = source.comment

    htext += description if description else "/**\n */\n"

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
            htext += "{0}".format(field.comment) if field.name != 'series.data' else series_data_description
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

            elif "NSArray" in str(get_type(field.data_type)) and structure[field.name].properties and 'HI' not in get_type(field.data_type):
                type = "{0} <{1} *> *".format(get_type(field.data_type), "HI" + upper_first(
                                                                                          create_name(
                                                                                              field.name)))
                types[field.name] = type

                htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
                imports += "#import \"{0}.h\"\n".format("HI" + upper_first(create_name(field.name)))

            elif "NSArray" in str(get_type(field.data_type)):
                type = "{0} *".format(get_type(field.data_type))
                types[field.name] = type

                hi_match = re.search(r'<(HI[A-Z]{1}[a-z]+) \*>', type)
                if hi_match:
                    import_hi_set.add(hi_match.group(1))

                htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
            elif field.data_type == "Object" or field.data_type == "object":
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
                if structure[field.name].properties and 'HI' not in get_type(field.data_type):
                    type = "{0} *".format("HI" + upper_first(create_name(field.name)))
                    types[field.name] = type

                    htext += "@property(nonatomic, readwrite) {0}{1};\n".format(type, get_last(field.name))
                    imports += "#import \"{0}.h\"\n".format("HI" + upper_first(create_name(field.name)))
                else:
                    type = "{0} *".format(get_type(field.data_type))
                    types[field.name] = type

                    if 'HI' in type:
                        import_hi_set.add(get_type(field.data_type))

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

    htext += "\n-(NSDictionary *)getParams;\n"
    htext += "\n@end\n"
    htext = htext.replace('*default;', '*defaults;')

    if class_name == 'HILang':
        htext = prepare_lang_class(htext) # iOS Lang class

    for mathch in import_hi_set:
        import_hi_string += "#import \"" + mathch + ".h\"\n"

    if 'HIColor' in import_hi_set:
        import_hi_set.remove('HIColor')
    if 'HIFunction' in import_hi_set:
        import_hi_set.remove('HIFunction')

    if imports == "" and len(import_hi_set) == 0:
        imports += "#import \"HIChartsJSONSerializable.h\"\n"
    imports += import_hi_string

    imports += "\n\n"
    return filelicense + imports + htext


def prepare_lang_class(text): # iOS Lang class
    text = text.replace('*/\n@property(nonatomic, readwrite) NSString *downloadCSV;',
                          '\n**Defaults to** `Share CSV`.\n*/\n@property(nonatomic, readwrite) NSString *downloadCSV;')
    text = text.replace('`Download PNG image`', '`Share image`')
    text = text.replace('`Download PDF document`', '`Share PDF`')
    text = text.replace('`Download JPEG image`', '`Share image`')
    text = text.replace('NSString *contextButtonTitle;',
                          'NSString *contextButtonTitle;\n/**\nExporting module only. The text for the disabling menu button.\n\n**Defaults to** `Cancel`.\n*/\n@property(nonatomic, readwrite) NSString *cancelButtonTitle;')
    return text


def create_setter(field):
    setter_attribute = re.sub(r'\bdefault\b', 'defaults', get_last(field.name))
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
    copyParamName = "copy" + upper_first(create_name(name))

    mtext = "#import \"HIChartsJSONSerializableSubclass.h\"\n"
    mtext += "#import \"{0}.h\"\n\n".format(class_name)
    mtext += "@implementation {0}\n\n".format(class_name)

    if source.extends:
        mtext += "-(instancetype)init {\n\tif (self = [super init]) {" + \
                 "\n\t\tself.type = @\"{0}\";".format(create_name(name)) + \
                 "\n\t\treturn self;\n\t} else {\n\t\treturn nil;\n\t}\n}\n"
    else:
        mtext += "-(instancetype)init {\n\treturn [super init];\n}\n"
    copyWithZones = "\n-(id)copyWithZone:(NSZone *)zone {\n\t[super copyWithZone:zone];" + "\n\t{0} *{1} = [[{0} allocWithZone: zone] init];\n".format(class_name, copyParamName)
    getParams = "\n-(NSDictionary *)getParams\n{\n\tNSMutableDictionary *params =" \
                " [NSMutableDictionary dictionaryWithDictionary: "
    setters_text = "\n# pragma mark - Setters\n"
    if source.extends:
        getParams += "[super getParams]];\n"
    else:
        getParams += "@{}];\n"

    for field in classes[class_name]:
        variableName = re.sub(r'\bdefault\b', 'defaults', get_last(field.name))
        copyWithZones += "\t{0}.{1} = [self.{1} copyWithZone: zone];\n".format(copyParamName, variableName)

        if field_in_parent(field, source):
            pass
        else:
            getParams += "\tif (self.{0})".format(variableName) + " {\n"
            if structure[field.name].data_type:
                data_type = structure[field.name].data_type
                if get_type(data_type) == 'HIFunction':
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getFunction];\n".format(re.sub(r'\bdefaults\b', 'default', variableName),
                                                                                           variableName)
                elif get_type(data_type) == 'HIColor':
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getData];\n".format(re.sub(r'\bdefaults\b', 'default', variableName),
                                                                                       variableName)
                elif get_type(data_type) == 'NSArray<HIColor *>':
                    getParams += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    getParams += "\t\tfor (HIColor *obj in self.{0})".format(variableName) + " {\n"
                    getParams += "\t\t\t[array addObject:[obj getData]];\n".format(variableName)
                    getParams += "\t\t}\n"
                    getParams += "\t\tparams[@\"{0}\"] = array;\n".format(re.sub(r'\bdefaults\b', 'default', variableName))
                elif 'NSArray' in str(get_type(data_type)):
                    getParams += "\t\tNSMutableArray *array = [[NSMutableArray alloc] init];\n"
                    getParams += "\t\tfor (id obj in self.{0})".format(variableName) + " {\n"
                    getParams += "\t\t\tif ([obj isKindOfClass: [HIChartsJSONSerializable class]])".format(
                        variableName) + " {\n"
                    getParams += "\t\t\t\t[array addObject:[(HIChartsJSONSerializable *)obj getParams]];\n".format(
                        variableName)
                    getParams += "\t\t\t}\n"
                    getParams += "\t\t\telse {\n\t\t\t\t[array addObject: obj];\n"
                    getParams += "\t\t\t}\n"
                    getParams += "\t\t}\n"
                    getParams += "\t\tparams[@\"{0}\"] = array;\n".format(re.sub(r'\bdefaults\b', 'default', variableName))
                elif structure[field.name].properties or 'HI' in get_type(field.data_type):
                    getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(re.sub(r'\bdefaults\b', 'default', variableName),
                                                                                         variableName)
                else:
                    getParams += "\t\tparams[@\"{0}\"] = self.{1};\n".format(re.sub(r'\bdefaults\b', 'default', variableName), variableName)
            elif structure[field.name].properties:
                getParams += "\t\tparams[@\"{0}\"] = [self.{1} getParams];\n".format(re.sub(r'\bdefaults\b', 'default', variableName),
                                                                                     variableName)
            getParams += "\t}\n"

            setters_text += "\n" + create_setter(field) + "\n"

    copyWithZones += "\treturn {};\n".format(copyParamName)
    copyWithZones += "}\n"
    getParams += "\treturn params;\n"
    getParams += "}\n"
    mtext += copyWithZones
    mtext += getParams
    if setters_text != "\n# pragma mark - Setters\n":
        mtext += setters_text
    mtext += "\n@end"
    return mtext


def create_options_files():
    imports = "#import \"HIColor.h\"\n"
    description = "/**\n */\n"
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
                htext += "{0}".format(field.comment) if field.name != 'series' else "/**\nSeries options for specific data and the data itself. In TypeScript you have to cast the series options to specific series types, to get all possible options for a series.\n*/\n"
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
    htext += "\n-(NSDictionary *)getParams;\n"
    copyWithZones = "\n-(id)copyWithZone:(NSZone *)zone {\n\t[super copyWithZone:zone];" + "\n\tHIOptions *copyOptions = [[HIOptions allocWithZone: zone] init];\n"
    for field in options:
        if field.name != 'global' and field.name != "lang":
            mtext += "\tif (self.{0})".format(get_last(field.name)) + " {\n"
            copyWithZones += "\tcopyOptions.{0} = [self.{0} copyWithZone: zone];\n".format(get_last(field.name))

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

    copyWithZones += "\treturn copyOptions;\n}\n"

    mtext += "\treturn params;\n"
    mtext += "}\n"
    mtext += copyWithZones
    mtext += setters_text
    mtext += "\n@end"
    imports += "\n\n"
    htext += "\n@end\n"
    with open("HIChartsClasses/HIOptions.h", "w") as o:
        o.write(imports + description + htext)
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
        # text = "name: {0}, type: {1}, group: {3}, extends: {2}, props: ".format(c, structure[c].data_type, structure[c].extends, structure[c].group)
        text = "name: {0}, type: {1}, props: ".format(c, structure[c].data_type)
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

new_types_from_namespace = set()

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
                description = doclet["description"] if node.name != 'series' else "General options for all series types."

                # description = re.sub(r'`\s*(.*?)\s*`', r'\1', description)
                # description = re.sub(r'(\[(.*?)\]\(#.*?\))', r'\2', description)
                # description = description.replace("\r", "\n")

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
                        demo += "* [{0}](https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/{1})\n".format(name, value)
                if demo == "":
                    demo = None

            if "type" in doclet:
                type = doclet["type"]

                if "names" in type:
                    types = type["names"]

                    for ind, curr_type in enumerate(types):
                        if '\"' in curr_type:
                            types[ind] = 'string'
                        elif 'Highcharts.Dictionary.<Highcharts.' in curr_type:
                            types[ind] = "Object"

                    types = removeDuplicates(types)

                    data_type = '|'.join(types)

                    if 'Highcharts.' in data_type and data_type not in hc_types:
                        new_types_from_namespace.add(data_type)
                        data_type = type_from_namespace(data_type)

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

    with open('series_description.txt', 'r') as text: # markdown description for iOS docs
        global series_description
        series_description = text.read() + '\n'
    with open('series_data_description.txt', 'r') as text: # markdown description for iOS docs
        global series_data_description
        series_data_description = text.read() + '\n'

    if "series" not in structure:
        structure["series"] = HIChartsClass("series", "Array.<Object>", "General options for all series types.", None, None, None, ["highcharts"], None, None)

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


#-----------------------------------------------------------------------------------------------------
# --------------NAMESPACE PARSER----------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------


namespace_structure = dict()
namespace_types = dict()
default_type = "*"
unknown_type_namespace = set()


def print_namespace_structure():
    for c in namespace_structure:
        text = "name: {0}, type: {1}, kind: {2}, props: ".format(c, namespace_structure[c].data_type, namespace_structure[c].kind)
        for p in namespace_structure[c].properties:
            text += "{0} | ".format(p.name)
        print text


def create_namespace_class(node):
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
    kind = ""

    if ".[key:string]" in node.name:
        return None

    if source:
        if "doclet" in source:
            doclet = source["doclet"]

            if "description" in doclet:
                description = doclet["description"]

            if "kind" in doclet:
                kind = doclet["kind"]

            if "values" in doclet and len(doclet["values"]) > 0:
                values = doclet["values"]

            if "defaultvalue" in doclet:
                defaults = doclet["defaultvalue"].replace("\r", "\n")

            if "types" in doclet:
                types = doclet["types"]

                for ind, type in enumerate(types):
                    if '\"' in type:
                        types[ind] = 'string'
                    elif 'Highcharts.Dictionary.<Highcharts.' in type:
                        types[ind] = "Object"

                types = removeDuplicates(types)

                data_type = '|'.join(types)

                namespace_types[node.name] = data_type
            else:
                namespace_types[node.name] = "*"

            if "products" in doclet:
                products = doclet["products"]

            if "isDeprecated" in doclet:
                if doclet["isDeprecated"]:
                    return None

        c = HIChartsClass(node.name, data_type, description, demo, values, defaults, products, extends, exclude, source, parent)
        c.kind = kind
        return c


def create_namespace_structure():
    with open('tree-namespace.json') as data_file:
        data = json.load(data_file)

    for field in data:
        if field == "children":
            for child in data[field]:
                if child["doclet"]["name"] == "Highcharts":
                    add_to_namespace_structure("Highcharts", child, None)

    for field in namespace_structure:
        change_namespace_types(field)


def add_to_namespace_structure(name, source, parent):
    if parent:
        fullname = "{0}.{1}".format(parent, name)
    else:
        fullname = name

    node = Node(fullname, parent, source)

    hi_class = create_namespace_class(node)

    if hi_class:
        namespace_structure[node.name] = hi_class

        if parent:
            namespace_structure[parent].add_property(hi_class)

        if "children" in source:
            childrens = source["children"]
            for children in childrens:
                if children["doclet"]["name"]:
                    add_to_namespace_structure(get_last(children["doclet"]["name"]), children, fullname)


def change_namespace_types(name):
    field = namespace_structure[name]
    new_type = get_namespace_type(name)
    if new_type:
        field.data_type = new_type

    for child in field.properties:
        change_namespace_types(child.name)


def rec_copy_from_namespace(name):
    if name not in structure and name in namespace_structure:
        field = namespace_structure[name]
        structure[field.name] = field
        for prop in field.properties:
            rec_copy_from_namespace(prop.name)
            if prop.data_type:
                types = prop.data_type.split("|")
                for type in types:
                    rec_copy_from_namespace(type)


def get_namespace_array_type(type):
    hc_match = re.search(r'Array.*(Highcharts\.[a-zA-Z]+)', type)
    while hc_match:
        temp = hc_match.group(1)
        while temp in namespace_types:
            temp = namespace_types[temp]

        if temp.startswith('Array'):
            temp = get_namespace_array_type(temp)
        elif temp in namespace_structure:
            field = namespace_structure[temp]
            if field.kind == 'class':
                temp = 'Object'
            else:
                unknown_type_namespace.add('A: ' + temp)
                temp = default_type
        elif temp not in hc_types:
            unknown_type_namespace.add('A: ' + temp)
            temp = default_type
        type = type.replace(hc_match.group(1), temp)
        hc_match = re.search(r'Array.*(Highcharts\.[a-zA-Z]+)', type)

    same_match = re.search(r'Array.*\((.*?)\|(.*?)(\)|\|)', type)
    while same_match:
        if same_match.group(1) == same_match.group(2):
            type = type.replace(same_match.group(1) + '|' + same_match.group(2), same_match.group(1))
            same_match = re.search(r'Array.*\((.*?)\|(.*?)(\)|\|)', type)
        else:
            break

    type = re.sub(r'Array\.<(\(((\w+|\*)\.*\w*)\))>', lambda s: s.group(0).replace('(', '').replace(')', ''), type)
    return type


def get_namespace_type(name):
    if name in namespace_types:
        if '<(' in namespace_types[name] and ')>' in namespace_types[name]:
            types = [namespace_types[name]]
        else:
            types = namespace_types[name].split('|')

        for index, type in enumerate(types):
            type = get_namespace_array_type(type)

            while type in namespace_types:
                type = namespace_types[type]

            if type.startswith('Array'):
                type = get_namespace_array_type(type)
            elif '<(' not in type and ')>' not in type and len(type.split('|')) > 1:
                splitted = type.split('|')
                for ind, sp in enumerate(splitted):
                    new = get_namespace_type(sp)
                    if new:
                        sp = new
                    splitted[ind] = sp
                type = '|'.join(splitted)
            elif type in namespace_structure:
                if namespace_structure[type].kind == "class":
                    type = 'Object'
                else:
                    unknown_type_namespace.add(type)
                    type = default_type
            elif not type in hc_types:
                unknown_type_namespace.add(type)
                type = default_type

            types[index] = type

        types = removeDuplicates(types)

        new_type = '|'.join(types)

        if not new_type in hc_types:
            unknown_type_namespace.add(new_type)
            new_type = default_type

        return new_type
    else:
        return None


def find_namespace_array_type(type):
    hc_match = re.search(r'Array.*(Highcharts\.[a-zA-Z]+)', type)
    while hc_match:
        temp = hc_match.group(1)

        if temp in namespace_structure:
            rec_copy_from_namespace(temp)
            if namespace_structure[temp].data_type != "*":
                temp = namespace_structure[temp].data_type
            else:
                temp = 'HI.' + get_last(temp)
        else:
            print temp + " not in namespace structure!"
            temp = "*"

        if temp.startswith('Array'):
            temp = find_namespace_array_type(temp)

        type = type.replace(hc_match.group(1), temp)
        hc_match = re.search(r'Array.*(Highcharts\.[a-zA-Z]+)', type)

    same_match = re.search(r'Array.*\((.*?)\|(.*?)(\)|\|)', type)
    while same_match:
        if same_match.group(1) == same_match.group(2):
            type = type.replace(same_match.group(1) + "|" + same_match.group(2), same_match.group(1))
            same_match = re.search(r'Array.*\((.*?)\|(.*?)(\)|\|)', type)
        else:
            break

    type = re.sub(r'Array\.<(\(((\w+|\*)\.*\w*)\))>', lambda s: s.group(0).replace('(', '').replace(')', ''), type)
    return type


def find_namespace_type(name):
    if '<(' in name and ')>' in name:
        types = [name]
    else:
        types = name.split('|')

    for index, type in enumerate(types):
        type = find_namespace_array_type(type)

        if type in namespace_structure:
            rec_copy_from_namespace(type)
            if namespace_structure[type].data_type != "*":
                type = namespace_structure[type].data_type
            else:
                type = 'HI.' + get_last(type)

        if type.startswith('Array'):
            type = find_namespace_array_type(type)
        elif '<(' not in type and ')>' not in type and len(type.split('|')) > 1:
            splitted = type.split('|')
            for ind, sp in enumerate(splitted):
                splitted[ind] = find_namespace_type(sp)
            type = '|'.join(splitted)

        types[index] = type

    types = removeDuplicates(types)

    new_type = '|'.join(types)

    return new_type


def type_from_namespace(type):
    new_type = find_namespace_type(type).replace('HI.', 'Highcharts.')

    if new_type not in hc_types:
        if new_type.startswith('Array.'):
            hc_match = re.search(r'Array\.<(Highcharts\.[a-zA-Z]+)>', new_type)
            if hc_match:
                temp = hc_match.group(1)
                if temp in namespace_structure:
                    print "Added type from namespace : " + new_type + ", value: " + 'NSArray<{} *>'.format('HI' + get_last(temp))
                    hc_types[new_type] = 'NSArray<{} *>'.format('HI' + get_last(temp))

        elif new_type in namespace_structure:
            print "Added type from namespace : " + new_type + ", value: " + "HI" + get_last(new_type)
            hc_types[new_type] = 'HI' + get_last(new_type)
        elif 'Highcharts.AnimationOptionsObject' in new_type or 'Highcharts.AnimationObject' in new_type:
            hc_types[new_type] = 'HIAnimationOptionsObject'

    if new_type not in hc_types:
        unknown_type = type
        if unknown_type != new_type:
            unknown_type = new_type + ' (original type: ' + type + ')'
        unknown_types_tree.add(unknown_type)

    return new_type


def print_unknown_namespace_types():
    print "Unknown namespace types:"
    for type in unknown_type_namespace:
        print type
    print "- - - - - - - - - - - - - - - - - - - - - - - - - - -  \n\n"


def print_unknown_tree_types():
    print "Unknown tree types:"
    for type in unknown_types_tree:
        print type
    print "- - - - - - - - - - - - - - - - - - - - - - - - - - -  \n\n"


def main():
    create_namespace_structure()
    #print_namespace_structure()

    print_unknown_namespace_types()

    create_structure()

    #print_structure()

    print_unknown_tree_types()

    create_files()
    # generate_documentation()

if __name__ == "__main__":
    main()

