//
//  MMInit.m
//  BandIt
//
//  Created by Kelly Huberty on 8/19/12.
//
//

#import "MMInit.h"
#import "MMDebug.h"

static NSMutableDictionary * mmIDAssignments;


NSString *nameGetter(id self, SEL _cmd) {
    
    //NSString * var = [mmIDAssignments objectForKey:self];
    
    
    /*
    Ivar ivar = class_getInstanceVariable(NSClassFromString(@"UIResponder"), "_mmID");
    id var = object_getIvar(self, ivar);
    */
     
     //MMLog(@"getNAme : %@", var);
    
     return nil;
}

void nameSetter(id self, SEL _cmd, NSString *newName) {
    //Ivar ivar = class_getInstanceVariable(NSClassFromString(@"UIResponder"), "_mmID");
    //id oldName = object_getIvar(self, ivar);
    
    //[mmIDAssignments setValue:newName forKey:self];
    
    //MMLog(@"setNAme : %@", newName);
    //object_setIvar(self, ivar, [newName copy]);
}

@implementation MMInit

static NSDictionary * controlPropertyMap;
static NSDictionary * controlNameMap;

+(void)start{
    /*
    mmIDAssignments = [[NSMutableDictionary alloc]init];
    
    objc_property_attribute_t type = { "T", "@\"NSString\"" };
    objc_property_attribute_t ownership = { "C", "" }; // C = copy
    //objc_property_attribute_t backingivar  = { "V", "_mmID" };
    objc_property_attribute_t attrs[] = { type, ownership };
    
    class_addProperty(NSClassFromString(@"UIResponder"),
                      "mmID",
                      attrs,
                      3);
    class_addMethod(NSClassFromString(@"UIResponder"), @selector(mmID), (IMP)nameGetter, "@@:");
    class_addMethod(NSClassFromString(@"UIResponder"), @selector(setMmID:), (IMP)nameSetter, "v@:@");
    
    */
    //NSLog(@" UIResponder : %@", [[[UIResponder alloc]init] description]);
    
//    unsigned int numberOfProperties = 0;
//    objc_property_t *propertyArray = class_copyPropertyList([UIResponder class], &numberOfProperties);
//    for (NSUInteger i = 0; i < numberOfProperties; i++) {
//        objc_property_t property = propertyArray[i];
//        NSString *name = [[NSString alloc] initWithUTF8String:property_getName(property)];
//        NSLog(@"Property %@", name);
//    }
//    free(propertyArray);
    
    //UIView * ctrl = [[UIView alloc]init];
    
    //[ctrl setValue:@"blah" forKey:@"mmID"];
    
    
    //NSLog(@"value for key %@",[ctrl valueForKey:@"mmID"]);
    
    
    [MMDebug loadDebugMode];
    [MMInit loadControlMaps];
}


+(void)loadControlMaps{
    

    
    
    
    
    
    
}


+(void)createDefaultControlMaps{
    
    
    
    
    
    
    
}





@end
