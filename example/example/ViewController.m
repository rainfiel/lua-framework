//
//  ViewController.m
//  example
//
//  Created by rainfiel on 15-2-13.
//  Copyright (c) 2015年 rainfiel. All rights reserved.
//

#import "ViewController.h"

static const char * startscript = "print([[hello world]])\n";
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);
	
	int err = luaL_loadstring(L, startscript);
	if (err) {
		NSLog(@"load string failed");
	} else {
		lua_pcall(L, 0, 0, 0);
	}
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
