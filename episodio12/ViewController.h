//
//  ViewController.h
//  episodio12
//
//  Created by Cesar Yañez on 05/06/14.
//  Copyright (c) 2014 Omnilife. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
- (IBAction)pulsarBotonCargarImagen:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
