//
//  ViewController.h
//  AjComboBox
//
//  Created by Jasperit on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AJComboBox.h"

@interface ViewController : UIViewController <AJComboBoxDelegate>
{
    NSArray *arr;
}
@property (nonatomic, retain) AJComboBox *comboBox;
@end
