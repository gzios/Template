//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"
#import "GZNavitionController.h"
@interface ___FILEBASENAME___ ()

@end

@implementation ___FILEBASENAME___


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewControllers];
}
- (void)addChildViewControllers
{
#warning  添加 被TabBarCtl 控制的视图控制器 名称
    //视图控制器名称
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"GZBaseViewController",@"GZBaseViewController",@"GZBaseViewController",@"GZBaseViewController",@"GZBaseViewController"]];
#warning Set TabBarItem Nomal Icon Name
    //    NSArray *imgArray = @[@"TabBar_home_23x23_",@"TabBar_gift_23x23_",@"TabBar_category_23x23_",@"TabBar_me_boy_23x23_"];
    NSArray *imgArray = @[@"home", @"category", @"center", @"cart", @"mine"];
    
#warning Set TabBarItem selected Icon Name
    NSArray *selectImageArray = @[@"TabBar_home_23x23_selected",@"TabBar_gift_23x23_selected",@"TabBar_category_23x23_selected",@"TabBar_me_boy_23x23_selected"];
#warning Set TabBarItem title
    NSArray *titles = @[@"test1",@"test2",@"test3",@"test4",@"test4"];
    for(int i =0;i<array.count;i++)
    {
        UIViewController *vc = [[NSClassFromString(array[i]) alloc] init];
        GZNavitionController *nav = [[GZNavitionController alloc] initWithRootViewController:vc];
        vc.title = titles[i];
        nav.tabBarItem.title = titles[i];
        nav.tabBarItem.image = [IMG(imgArray[i]) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //        nav.tabBarItem.selectedImage = [IMG(selectImageArray[i]) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        nav.tabBarItem.badgeValue = @"99+";
        nav.tabBarItem.selectedImage =[[UIImage imageNamed:[imgArray[i] stringByAppendingString:@"_selected"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [array replaceObjectAtIndex:i withObject:nav];
    }
    self.viewControllers = array;
    self.tabBar.tintColor = MAIN_COLOR;}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
