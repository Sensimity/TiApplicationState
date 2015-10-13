/**
 * TiApplicationState
 *
 * Created by Your Name
 * Copyright (c) 2015 Your Company. All rights reserved.
 */

#import "ComSensimityTiapplicationstateModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation ComSensimityTiapplicationstateModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"62ac71fd-09e4-4cce-afb8-83d45b1e4442";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.sensimity.tiapplicationstate";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma Public APIs

-(id)state
{
	if ([[UIApplication sharedApplication] applicationState] == UIApplicationStateActive) {
        
        return @"active";
        
    }
    else if([[UIApplication sharedApplication] applicationState] == UIApplicationStateInactive)
    {
        return @"inactive";
        
    }
    else if([[UIApplication sharedApplication] applicationState] == UIApplicationStateBackground)
    {
        return @"background";
    }
}


@end
