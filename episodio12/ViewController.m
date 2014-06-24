//
//  ViewController.m
//  episodio12
//
//  Created by Cesar Yañez on 05/06/14.
//  Copyright (c) 2014 Omnilife. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imagen;
@synthesize activityIndicator;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pulsarBotonCargarImagen:(id)sender {
    NSOperationQueue *queue = [NSOperationQueue new];
    NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(cargarImagen) object:nil];
    
    
    [queue addOperation:operation];
    
}
- (void) iniciarActivity{
	[self.activityIndicator startAnimating];
    [self.activityIndicator setHidden:NO];
}
- (void) finalizarActivity{
    [self.activityIndicator setHidden:YES];
    [self.activityIndicator stopAnimating];
}
- (void) cargarImagen {
    [self performSelectorOnMainThread:@selector(iniciarActivity) withObject:nil waitUntilDone:YES];
    //[self iniciarActivity];

    NSURL *url = [NSURL URLWithString:@"http://www.artrift.com/file/pic/photo/2011/03/MarioPons-mazinger-z.jpg"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [UIImage imageWithData:data];
    [self.imagen performSelectorOnMainThread:@selector(setImage:) withObject:img waitUntilDone:YES];
    //[self finalizarActivity];
    [self performSelectorOnMainThread:@selector(finalizarActivity) withObject:nil waitUntilDone:YES];
    
}

@end
