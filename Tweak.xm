@interface SpringBoard
	-(NSArray *)_rootViewControllers;
@end

%hook SpringBoard

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	%orig;
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Challenge #1" message:@"Hello World!" preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {}];
	[alert addAction:defaultAction];
	[[self _rootViewControllers][1] presentViewController:alert animated:YES completion:nil];
}
%end
