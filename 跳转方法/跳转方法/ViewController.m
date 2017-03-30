//
//  ViewController.m
//  跳转方法
//
//  Created by lcy on 17/3/29.
//  Copyright © 2017年 NanJing. All rights reserved.
//

#import "ViewController.h"
#import "NavigationMethodVC.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // segue
    // UITabBarController
    // UINavigationController
    // 
    
    
}

/*
 
 // segue跳转时：（老版本）
 // 使用导航栏压进新的控制器（push）
 // 模态的加载视图控制器（modal）
 // 自定义（custom）
 
 1.Show: 在master或detail区域展现内容，就单纯的把新的内容push到当前view controller stack的顶部
 2.Show Detail: 大致同Show，在detail区域展现内容，新的内容取代当前view controller stack的顶部
 3.Present Modally：模态展示内容
 4.Present as Popover：在当前的view上出现一个小窗口来展示内容，无处不在的“选中文字后出现 复制/翻译 按钮就是这个
 5.Custom：自定义的
 
 
 1.利用button组件，拖拽添加segue，直接运行就可以用。
 2.ViewController与ViewController之间，拖拽添加segue。
    不过，这种方法就需要在相应需要跳转的方法内写入代码:
    [self performSegueWithIdentifier:@"tosecond" sender:nil]; 
    手动去设置它的跳转。

 */

- (IBAction)SegueMethod:(id)sender {
    [self performSegueWithIdentifier:@"tosecond" sender:nil];
}

/*
 跳转到下一页面
 [self.navigationController pushViewController:newC animated:YES];
 
 返回上一页面
 [self.navigationController popViewControllerAnimated:YES]; 
 
 当有多次跳转发生并希望返回根控制器时,调用:
 [ self .navigationController popToRootViewControllerAnimated: YES ];  
 */
- (IBAction)navigationMethod:(id)sender {
    
    UIStoryboard * mainStoryBoard =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationMethodVC * vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"NavigationMethodVC"];
    [self.navigationController pushViewController:vc animated:YES];
}

/*
 
 方式四：利用 Modal 形式展示控制器
 [ self presentViewController:SVC animated: YES completion:nil];

 [ self dismissViewControllerAnimated: YES completion: nil ];
 
 
    虽然当前界面上展示在我们眼前的时twoview，但是window的根控制器仍然是FirstviewController，它并没有切换window的根控制器，而仅仅只是换了window上面显示的视图。
 
    当向下移除之后，只要调用了控制器的dismiss方法让窗口关闭，modal就释放了。
 
 
 
 */
- (IBAction)ModalMethod:(id)sender {
    UIStoryboard * mainStoryBoard =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationMethodVC * vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"NavigationMethodVC"];
    [self presentViewController:vc animated:YES completion:nil];
}




@end
